# Copy .md files and Attachments folder contents from each source subfolder
# flat into the Obsidian notes folder (not the subfolders themselves).
$ErrorActionPreference = "Stop"

$Source = "C:\Users\remid\Downloads\arkaste\arkaste"
$Dest = "C:\Users\remid\Documents\Obsidian Vault\5etools\_campaigns\arkaste\notes"

if (-not (Test-Path -LiteralPath $Source)) {
    throw "Source folder missing: $Source"
}
if (-not (Test-Path -LiteralPath $Dest)) {
    New-Item -ItemType Directory -Path $Dest | Out-Null
}

# Remove earlier mistaken per-note subfolders under notes (same names as source).
Get-ChildItem -LiteralPath $Source -Directory | ForEach-Object {
    $wrong = Join-Path $Dest $_.Name
    if (Test-Path -LiteralPath $wrong) {
        Remove-Item -LiteralPath $wrong -Recurse -Force
    }
}

$attDest = Join-Path $Dest "Attachments"
if (-not (Test-Path -LiteralPath $attDest)) {
    New-Item -ItemType Directory -Path $attDest | Out-Null
}

$folderCount = 0
$mdCount = 0
$attachmentsCount = 0
$attachmentFiles = 0

Get-ChildItem -LiteralPath $Source -Directory | ForEach-Object {
    $srcDir = $_
    $folderCount++

    $mds = @(Get-ChildItem -LiteralPath $srcDir.FullName -File -Filter "*.md")
    foreach ($md in $mds) {
        Copy-Item -LiteralPath $md.FullName -Destination (Join-Path $Dest $md.Name) -Force
        $mdCount++
    }

    $attSrc = Get-ChildItem -LiteralPath $srcDir.FullName -Directory |
        Where-Object { $_.Name -ieq "Attachments" } |
        Select-Object -First 1
    $attCopied = $false
    if ($null -ne $attSrc) {
        $files = @(Get-ChildItem -LiteralPath $attSrc.FullName -Force)
        foreach ($item in $files) {
            Copy-Item -LiteralPath $item.FullName -Destination $attDest -Recurse -Force
            if (-not $item.PSIsContainer) {
                $attachmentFiles++
            }
        }
        $attachmentsCount++
        $attCopied = $true
    }

    Write-Host ("{0}: {1} md, Attachments={2}" -f $srcDir.Name, $mds.Count, $attCopied)
}

Write-Host ""
Write-Host ("Done. folders={0} md={1} attachmentsFolders={2} attachmentFiles={3}" -f $folderCount, $mdCount, $attachmentsCount, $attachmentFiles)
Write-Host "Dest: $Dest"
