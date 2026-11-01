---
statblock: true
layout: "Basic 5e Layout"
name: "Eldritch Lich"
size: "Medium"
type: "undead"
alignment: "Neutral Evil"
ac: 17
hp: "165 (22d8 + 66)"
speed: "30 ft., fly 30 ft."
stats: [11, 18, 16, 19, 14, 12]
saves:
  int: "+9"
  wis: "+7"
skillsaves:
  arcana: "+14"
  perception: "+7"
senses: "truesight 120ft., passive Perception 17"
passive: 17
languages: "Common, Deep Speech, telepathy 120 ft."
damage_resistances: "necrotic; poison"
condition_immunities: "charmed, exhaustion, frightened, paralyzed, poisoned"
cr: 15
image: "atlas-vtt/assets/Eldritch_Lich_1792010807391_3f6ve1.webp"
5etools_id: "eldritch lich|MCV1SC"
traits:
  - name: "Far Realm Parasite"
    desc: "Inside the lich's torso dwells a wormlike parasite that contains the lich's soul. When the lich dies, it implodes into the parasite, which then vanishes into the Far Realm. In 2d4 days, the parasite causes the lich to reappear within 1d4 miles of where it died. If the lich died inside a magic circle cast to contain Undead, the lich instead reappears as an otyugh with all the lich's memories."
  - name: "Legendary Resistance (4/Day)"
    desc: "If the lich fails a saving throw, it can choose to succeed instead."
  - name: "Unusual Nature"
    desc: "The lich doesn't need air, food, drink, or sleep."
  - name: "Spellcasting"
    desc: "The lich casts one of the following spells, using Intelligence as the spellcasting ability (spell save DC 17): At will: detect magic, mage hand, prestidigitation 2e/day: dispel magic, hunger of Hadar, lightning bolt 1e/day: arcane eye, dimension door, plane shift (self only)"
actions:
  - name: "Multiattack"
    desc: "The lich makes one Parasitic Tentacle attack or uses Spellcasting. The lich also uses Psychic Whisper twice."
  - name: "Parasitic Tentacle"
    desc: "Melee Weapon Attack: +9 to hit, reach 10 ft., one creature. Hit:25 (6d6 + 4) piercing damage plus 25 (6d6 + 4) necrotic damage. The target must succeed on a DC 17 Constitution saving throw or be poisoned. The poisoned target can repeat the save at the end of each of its turns, ending the effect on itself on a success. The third time the target fails the save, the target dies and dissolves into a gibbering mouther that obeys the lich and uses the target's initiative."
  - name: "Psychic Whisper"
    desc: "The lich targets one creature it can see within 120 feet of itself. The target must succeed on a DC 17 Wisdom saving throw or take 25 (6d6 + 4) psychic damage and be stunned until the end of the lich's next turn as incomprehensible whispers fill the target's mind."
reactions:
  - name: "Far Realm Step"
    desc: "Immediately after taking damage, the lich, along with any equipment it is wearing or carrying, magically teleports up to 60 feet to an unoccupied space it can see."
---

Imported from 5e.tools (MCV1SC).
