--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2016 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

DefineCharacter("Ælle", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Ælle",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York",
	DeathYear = 588, -- died
	HistoricalTitles = {
		"head-of-state", 0, 588, "teuton", "Deira" -- first recorded king of Deira
	}
})

DefineCharacter("Ida", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Ida",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Bernicia",
	ProvinceOfOrigin = "Northumberland",
	Year = 547, -- became king of Bernicia
	HistoricalTitles = {
		"head-of-state", 547, 0, "teuton", "Bernicia" -- first king of Bernicia
	}
})

DefineCharacter("Theodric", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Theodric", -- in his age, the Anglo-Saxons suffered a siege in Holy Island for three days
	NameElements = {
		"compound", "prefix", "old-english", "noun", "Þéod", -- presumably
--		"compound", "suffix", "old-english", -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Bernicia",
	ProvinceOfOrigin = "Northumberland",
	Father = "Ida",
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Bernicia" -- presumably, since his father was king of Bernicia
	}
})

DefineCharacter("Æthelric", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75-76.
	Name = "Æthelric",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Bernicia",
	ProvinceOfOrigin = "Northumberland",
	Year = 588, -- according to tradition, Æthelric acquired the kingdom of Deira upon Ælle's death in 588 AD
	Father = "Ida", -- the source says that his son Æthelfrith was grandson of Ida
	HistoricalTitles = {
		"head-of-state", 588, 0, "teuton", "Bernicia", -- king of Bernicia
		"head-of-state", 588, 0, "teuton", "Deira" -- according to tradition, Æthelric acquired the kingdom of Deira upon Ælle's death in 588 AD
	}
})

DefineCharacter("Æthelfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75, 78.
	Name = "Æthelfrith",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Bernicia",
	ProvinceOfOrigin = "Northumberland",
	Year = 593, -- beginning of reign
	DeathYear = 616, -- died in battle against Rædwald
	ViolentDeath = true,
	Father = "Æthelric",
	Description = _("Aethelfrith was the king of Bernicia between 593 and 616. He simultaneously ruled over Deira, and is famed for his defeat of the Britons at Chester. Aethelfrith came to a tragic end at the hands of Raedwald of East Anglia in 616, being killed in battle."),
	HistoricalTitles = {
		"head-of-state", 593, 616, "teuton", "Bernicia", -- king of Bernicia
		"head-of-state", 593, 616, "teuton", "Deira"
	}
	-- married the daughter of the Deiran king Ælle
	-- at some point between 613 and 616, he defeated the Britons at Chester; before the battle of Chester, Æthelfrith's warriors killed a group of British monks who stemmed from the monastery of Bangor Iscoed, and had come to pray for the Briton forces; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77-78
	-- at some point between 613 and 616, he defeated the Britons at Chester; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77-78
})

DefineCharacter("Ceawlin", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Ceawlin",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Wessex",
	ProvinceOfOrigin = "Wessex",
	DateReferenceCharacter = "Æthelfrith", -- contemporary of Æthelfrith of Bernicia
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Wessex"
	}
})

DefineCharacter("Edwin", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-81.
	Name = "Edwin",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York",
	Father = "Ælle",
	Year = 616, -- in 616 Rædwald of East Anglia (with whom Edwin had taken refuge), fought and won against Æthelfrith of Bernicia to support Edwin's claim to the Deiran throne
	DeathYear = 632, -- died in 632 in battle against Cadwallon of Gwynedd
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 616, 632, "teuton", "Bernicia",
		"head-of-state", 616, 632, "teuton", "Deira" -- was the heir to Deira, but also became the king of Bernicia after the battle against Æthelfrith in 616
	}
})

DefineCharacter("Rædwald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-79.
	Name = "Rædwald",
	NameElements = {
		"compound", "prefix", "old-english", "noun", "Ræ̂d", -- presumably
--		"compound", "suffix", "old-english", -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "East Anglia",
	ProvinceOfOrigin = "East Anglia",
	Year = 616, -- in the summer or early fall of 616, Rædwald (supporting Edwin's claim to the Deiran throne; Edwin had taken refuge with him) engaged in a battle against Æthelfrith of Bernicia, with the location being at the southern border of Deira, where the Idle river crosses with the Lincoln-Doncaster Roman road
	HistoricalTitles = {
		"head-of-state", 616, 0, "teuton", "East Anglia"
	}
})

DefineCharacter("Lilla", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 79.
	Name = "Lilla",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York", -- presumably
	DateReferenceCharacter = "Edwin",
	Description = _("Lilla was a thegn of Edwin of Deira. He saved his lord's life by stopping an assassin from Wessex just as he was about to strike Edwin.")
})

DefineCharacter("Æthelberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 79.
	Name = "Æthelberht",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Kent",
	ProvinceOfOrigin = "Kent",
	DateReferenceCharacter = "Edwin", -- contemporary of Edwin, but probably not of the same generation, since his daughter married Edwin
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Kent"
	}
})

DefineCharacter("Hereric", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Name = "Hereric",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York", -- was the son of a nephew of Edwin's, so presumably from Deira
	DateReferenceCharacter = "Æthelfrith" -- was exiled by Æthelfrith of Bernicia
	-- was poisoned and died during his stay as an exile with Certic of Elmet
})

DefineCharacter("Osfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 80-81.
	Name = "Osfrith",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York",
	Father = "Edwin",
	DeathYear = 632, -- died in 632 in battle against Cadwallon of Gwynedd
	ViolentDeath = true
})

DefineCharacter("Penda", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75, 80-81, 83-84.
	Name = "Penda",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Mercia",
	ProvinceOfOrigin = "Mercia",
	Year = 632, -- in 632, Penda (still a noble belonging to the Mercian royal house with no throne) allied himself Cadwallon of Gwynedd against Edwin of Deira
	DeathYear = 654, -- died fighting against Oswiu of Bernicia
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 632, 654, "teuton", "Mercia" -- became king of Mercia in 632 after Edwin's demise
	}
	-- attacked Oswiu of Bernicia in 654 with thirty "legions"
})

DefineCharacter("Osric", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Osric",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York",
	DateReferenceCharacter = "Edwin", -- was a cousin of Edwin's
	Year = 632,
	DeathYear = 633, -- died fighting against Cadwallon in the summer of 633
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 632, 633, "teuton", "Deira" -- king of Deira from Edwin's death to 633
	}
})

DefineCharacter("Eanfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Eanfrith",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Bernicia",
	ProvinceOfOrigin = "Northumberland",
	Father = "Æthelfrith",
	Year = 632,
	DeathYear = 633, -- killed in 633 while visiting Cadwallon to sue for peace
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 632, 633, "teuton", "Bernicia" -- king of Bernicia from Edwin's death to 633
	}
})

DefineCharacter("Talorcan", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 87.
	Name = "Talorcan",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Bernicia",
	ProvinceOfOrigin = "Northumberland",
	Father = "Eanfrith",
	HistoricalTitles = {
		"head-of-state", 632, 633, "celt", "Pict Tribe" -- was king of the Picts
	}
})

DefineCharacter("Oswald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 81-82.
	Name = "Oswald",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Bernicia",
	ProvinceOfOrigin = "Northumberland",
	Father = "Æthelfrith", -- he was a brother of Eanfrith's, so presumably also a son of Æthelfrith
	Year = 633, -- destroyed Cadwallon at Rowley Burn (south of Hexham) in 633, becoming king of both Bernicia and Deira
	DeathYear = 641, -- defeated and killed by Penda of Mercia at Maserfelth (likely Oswestry in Shropshire) on the 5h of August 641
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 633, 641, "teuton", "Bernicia",
		"head-of-state", 633, 641, "teuton", "Deira"
	}
	-- married the daughter of Cynegils of Wessex
})

DefineCharacter("Eadfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Eadfrith",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York",
	Father = "Edwin"
	-- gave himself up to Penda, who killed him
})

DefineCharacter("Wuscfrea", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Wuscfrea",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York",
	Father = "Edwin"
})

DefineCharacter("Yffi", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Yffi",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York",
	DateReferenceCharacter = "Wuscfrea" -- grandson of Edwin, so using Edwin's infant son Wuscfrea as the date reference character is relatively close
})

DefineCharacter("Eanflæd", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Eanflæd",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York",
	Father = "Edwin"
	-- married to Oswiu, brother of Oswald of Bernicia
})

DefineCharacter("Oswiu", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 81-85.
	Name = "Oswiu",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Bernicia",
	ProvinceOfOrigin = "Northumberland",
	Father = "Æthelfrith", -- he was a brother of Oswald's, so presumably also of Eanfrith's, and as such likely also a son of Æthelfrith
	Year = 641,
	DeathYear = 670,
	HistoricalTitles = {
		"head-of-state", 641, 654, "teuton", "Bernicia", -- became king of Bernicia on the death of his brother Oswald
		"head-of-state", 654, 670, "teuton", "Northumbria" -- Northumbria unified in 654
	}
	-- married to Eanflæd, daughter of Edwin of Deira
	-- fought and won against Penda in the battle of the Winwæd (a stream, somewhere around Leeds) in 654
})

DefineCharacter("Cynegils", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Cynegils",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Wessex",
	ProvinceOfOrigin = "Wessex",
	DateReferenceCharacter = "Oswald", -- contemporary of Oswald of Bernicia
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Wessex" -- king of Wessex
	}
})

DefineCharacter("Oswine", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 82-83.
	Name = "Oswine",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York",
	Father = "Osric",
	Year = 641,
	DeathYear = 651, -- died as a result of Oswiu of Bernicia's invasion of Deira in 651 AD
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 641, 651, "teuton", "Deira" -- became king of Deira on the death of Oswald of Bernicia
	}
})

DefineCharacter("Æthelwald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 83.
	Name = "Æthelwald",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "Northumberland", -- presumably, since he was a son of Oswald of Bernicia
	Father = "Oswald",
	Year = 651,
	HistoricalTitles = {
		"head-of-state", 651, 0, "teuton", "Deira" -- was chosen by the Deirans as their king upon the demise of Oswine; he was under the protection of Penda of Mercia (apparently) from his accession
	}
})

DefineCharacter("Æthelhere", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 83-84.
	Name = "Æthelhere",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "East Anglia",
	ProvinceOfOrigin = "East Anglia",
	Year = 654,
	DeathYear = 654, -- in 654 went with Penda to attack Oswiu of Bernicia, resulting in Æthelhere's death
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 654, 654, "teuton", "East Anglia" -- king of East Anglia; in 654 went with Penda to attack Oswiu of Bernicia, resulting in Æthelhere's death
	}
})

DefineCharacter("Sigeberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
	Name = "Sigeberht",
	NameElements = {
		"compound", "prefix", "old-english", "noun", "Sige", -- presumably
--		"compound", "suffix", "old-english", -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Essex",
	ProvinceOfOrigin = "Essex",
	DateReferenceCharacter = "Oswiu", -- friend of Oswiu of Bernicia
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Essex" -- king of Essex
	}
})

DefineCharacter("Cenwalh", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
	Name = "Cenwalh",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Wessex",
	ProvinceOfOrigin = "Wessex",
	DateReferenceCharacter = "Penda", -- was forced into exile from his lands by Penda of Mercia
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Wessex" -- king of Wessex
	}
})

DefineCharacter("Peada", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
	Name = "Peada", -- king of the Middle Angles
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Middle Anglia",
	ProvinceOfOrigin = "Mercia", -- presumably, since his father was ruler of that realm
	Father = "Penda",
	Year = 654, -- was given the Mercian territories south of the Trent after Penda's fall, at which point he was already king of the Middle Angles
	DeathYear = 656, -- murdered in the spring of 656
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 654, 656, "teuton", "Middle Anglia"
	}
	-- married the daughter of Oswiu of Bernicia
})

DefineCharacter("Wulfhere", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 84-85.
	Name = "Wulfhere",
	NameElements = {
		"compound", "prefix", "old-english", "noun", "Wulf", -- presumably
--		"compound", "suffix", "old-english", -- ?
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Mercia",
	ProvinceOfOrigin = "Mercia",
	Father = "Penda",
	Year = 657, -- beginning of reign
	HistoricalTitles = {
		"head-of-state", 657, 0, "teuton", "Mercia" -- became king of Mercia in 657
	}
	-- became overlord of the kings of Essex in 665
	-- invaded Northumbria in 674, possessing an army gathered from all Anglo-Saxon kingdoms south of the Humber
})

DefineCharacter("Ecgfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 85, 88.
	Name = "Ecgfrith",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Father = "Oswiu",
	Year = 674, -- defeated Wulfhere of Mercia's invasion of Northumbria in 674
	DeathYear = 685, -- died in the 20th of May 685 at Duin Nechtain / Nechtanesmere while leading a raid against the Picts under their king Bruide
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 674, 685, "teuton", "Northumbria"
	}
	-- was defeated in 678 by Æthelred, Wulfhere's brother, in a battle close to the Trent river
	-- in 684 had an army sent to Ireland against the kingdom of Meath
})

DefineCharacter("Beornhæth", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
	Name = "Beornhæth", -- Northumbrian ealdorman, quelled a Pictish rebellion with Ecgfrith of Northumbria
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	DateReferenceCharacter = "Ecgfrith" -- was a contemporary of Ecgfrith's
})

DefineCharacter("Æthelred", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 85.
	Name = "Æthelred",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Mercia",
	ProvinceOfOrigin = "Mercia",
	Father = "Penda", -- presumably, since he was Wulfhere of Mercia's brother
	Year = 678 -- defeated Ecgfrith of Northumbria in a battle close to the Trent river in 678
})

DefineCharacter("Aldfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
	Name = "Aldfrith",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Father = "Oswiu",
	Year = 685,
	DeathYear = 704, -- end of reign
	HistoricalTitles = {
		"head-of-state", 685, 704, "teuton", "Northumbria" -- succeeded his brother Ecgfrith as king of Northumbria
	}
})

DefineCharacter("Aldhelm", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 89; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 98.
	Name = "Aldhelm", -- abbot of Malmesbury, composed the "Helleborus" riddle
	NameElements = {
--		"compound", "prefix", "old-english", -- ?
		"compound", "suffix", "old-english", "noun", "Helm" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be something more appropriate for the composer of a riddle?
	Civilization = "teuton",
	Faction = "Wessex",
	ProvinceOfOrigin = "Wessex",
	DeathYear = 709 -- died in 709/710
})

DefineCharacter("Osred", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 91.
	Name = "Osred",
	Trait = "upgrade-cruel", -- described as wild, irreligious and tyrannical to his noble subjects
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Father = "Aldfrith",
	Year = 697, -- began to rule in 705, when he was eight years old
	DeathYear = 716, -- murdered in 716
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 705, 716, "teuton", "Northumbria" -- began to rule in 705
	}
})

DefineCharacter("Beorhtfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
	Name = "Beorhtfrith", -- Northumbrian ealdorman
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Year = 711 -- defeated a Pictish army in the Scottish central plain in 711
})

DefineCharacter("Ceolwulf", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 91.
	Name = "Ceolwulf",
	NameElements = {
--		"compound", "prefix", "old-english", -- ?
		"compound", "suffix", "old-english", "noun", "Wulf" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Year = 729,
	DeathYear = 737,
	HistoricalTitles = {
		"head-of-state", 729, 737, "teuton", "Northumbria" -- was king of Northumbria between 729 and 737
	}
})

DefineCharacter("Bede", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 34.
	Name = "Bede",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Essex",
	ProvinceOfOrigin = "Essex", -- in England, so let's put in London's province
	Year = 731, -- wrote "Historia Ecclesiastica Venerabilis Bedae" around 731 AD
	AuthoredWorks = {"upgrade-work-historia-ecclesiastica-venerabilis-bedae"}
})

DefineCharacter("Eadberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Eadberht",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Year = 737,
	HistoricalTitles = {
		"head-of-state", 737, 758, "teuton", "Northumbria" -- succeeded Ceolwulf as king of Northumbria, withdrew from public life in 758, becoming a clerk under his brother Egbert, the archbishop of York
	}
	-- conquered Kyle and other areas from Strathclyde in 750
	-- allied with the Picts in 756 and attacked Alcluith
})

DefineCharacter("Æthelbald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Æthelbald",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Mercia",
	ProvinceOfOrigin = "Mercia",
	DateReferenceCharacter = "Eadberht", -- was a contemporary of Eadberht's
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Mercia" -- was king of Mercia
	}
})

DefineCharacter("Offa", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Offa",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Father = "Aldfrith"
})

DefineCharacter("Egbert", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Egbert", -- archbishop of York
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be a priest
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	DateReferenceCharacter = "Eadberht", -- was Eadberht's brother
})

DefineCharacter("Oswulf", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Oswulf",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Father = "Eadberht",
	DeathYear = 758 -- killed by his retainers in the summer of 758
})

DefineCharacter("Æthelwald Moll", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Æthelwald",
	FamilyName = "Moll",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Year = 759,
	HistoricalTitles = {
		"head-of-state", 759, 765, "teuton", "Northumbria" -- became king of Northumbria in 759, lost the throne to Alhred six years later
	}
})

DefineCharacter("Alhred", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 90, 92-93.
	Name = "Alhred", -- descendant of Ida
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Year = 765,
	DeathYear = 774, -- end of reign
	HistoricalTitles = {
		"head-of-state", 765, 774, "teuton", "Northumbria" -- king of Northumbria between 765 and 774; in 774 lost the throne by a formal act of the nobility and his own household
	}
})

DefineCharacter("Æthelred Moll", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 93-94.
	Name = "Æthelred",
	FamilyName = "Moll",
	Trait = "upgrade-cruel", -- treacherous and merciless
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Father = "Æthelwald Moll",
	Year = 774,
	DeathYear = 796, -- murdered
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 774, 779, "teuton", "Northumbria", -- became king of Northumbria after Alhred was deposed, was expelled in 779 from Northumbria by Ælfwald
		"head-of-state", 789, 796, "teuton", "Northumbria" -- was restored to the throne within a year after Ælfwald's reign ended
	}
	-- married a daughter of Offa, king of Mercia, in 792
})

DefineCharacter("Ælfwald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 90, 93.
	Name = "Ælfwald", -- grandson of Eadberht
	NameElements = {
		"compound", "prefix", "old-english", "noun", "Ælf", -- presumably
--		"compound", "suffix", "old-english", -- ?
	},
	Trait = "upgrade-pious", -- considered just and pious
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Year = 779, -- expelled Æthelred Moll from Northumbria
	DeathYear = 788,
	HistoricalTitles = {
		"head-of-state", 779, 788, "teuton", "Northumbria" -- king of Northumbria between 779 and 788
	}
})

DefineCharacter("Offa of Mercia", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 93.
	Name = "Offa",
	ExtraName = "of Mercia",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Mercia",
	ProvinceOfOrigin = "Mercia",
	Year = 792,
	HistoricalTitles = {
		"head-of-state", 792, 0, "teuton", "Mercia" -- was king of Mercia in 792 when Æthelred Moll married a daughter of his
	}
})

DefineCharacter("Alcuin", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 90.
	Name = "Alcuin", -- Northumbrian scholar who made the school of York famous
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be a unit type more appropriate for a scholar
	Civilization = "teuton",
	Faction = "Deira",
	ProvinceOfOrigin = "York", -- presumably
	Year = 782 -- moved from England to the court of Charlemagne
})

DefineCharacter("Torhtmund", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 90.
	Name = "Torhtmund", -- Minister of the Northumbrian king Æthelred Moll, Torhtmund killed the king's murderer
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	DateReferenceCharacter = "Alcuin" -- was introduced by Alcuin to Charlemagne
})

DefineCharacter("Eardwulf", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 94-95.
	Name = "Eardwulf",
	NameElements = {
--		"compound", "prefix", "old-english", -- ?
		"compound", "suffix", "old-english", "noun", "Wulf" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Year = 801,
	DeathYear = 810, -- died
	HistoricalTitles = {
		"head-of-state", 801, 808, "teuton", "Northumbria", -- was king of Northumbia in 801 when he invaded Mercia; in the spring of 808 he was expelled from Northumbria
		"head-of-state", 808, 810, "teuton", "Northumbria" -- was restored as king in the same year of being expelled, with the support of Charlemagne and Pope Leo III; died in or before 810
	}
})

DefineCharacter("Cenwulf", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 94.
	Name = "Cenwulf",
	NameElements = {
		"compound", "prefix", "old-english", "noun", "Cên", -- presumably
		"compound", "suffix", "old-english", "noun", "Wulf" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Mercia",
	ProvinceOfOrigin = "Mercia",
	Year = 801,
	HistoricalTitles = {
		"head-of-state", 801, 0, "teuton", "Mercia" -- was king of Mercia in 801 when Eardwulf of Northumbria invaded it
	}
})

DefineCharacter("Eanred", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 95.
	Name = "Eanred",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Northumbria",
	ProvinceOfOrigin = "Northumberland", -- Northumbrian, so let's place him here
	Father = "Eardwulf",
	Year = 810,
	DeathYear = 840,
	HistoricalTitles = {
		"head-of-state", 810, 840, "teuton", "Northumbria" -- succeeded Eardwulf as king of Northumbria, and ruled for thirty years
	}
})

DefineCharacter("Egbert of Wessex", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 95.
	Name = "Egbert",
	ExtraName = "of Wessex",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Wessex",
	ProvinceOfOrigin = "Wessex",
	Year = 829,
	HistoricalTitles = {
		"head-of-state", 829, 0, "teuton", "Wessex" -- was king of Mercia in 829 when Eanred of Northumbria submitted to him
	}
})

DefineCharacter("Ethelred", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 127.
	Name = "Ethelred", -- did the massacre of the Danes in 1002 AD
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton", -- should be English?
	ProvinceOfOrigin = "Essex", -- presumably in England, so let's put in London's province
	Year = 1002 -- massacred the Danes
})

DefineCharacter("Nicolas Breakspear", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 126.
	Name = "Nicolas", -- son of a peasant employed in the Benedictine monastery of Saint Albans in Hertfordshire; was educated by the monks there; later became a cardinal and was sent on a mission to Norway to settle the Church there; was elected Pope in 1154 AD under the title of Hadrian IV
	ExtraName = "Breakspear", -- I assume this isn't his family name, but a nickname or something of the sort?
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "teuton", -- should be English
	ProvinceOfOrigin = "Essex", -- Hertfordshire (since his father worked there, he's probably from there)
	Year = 1154 -- elected Pope
})
