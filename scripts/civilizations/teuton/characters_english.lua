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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineCharacter("aelle", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Aelle", -- "Ælle"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "deira",
	DeathYear = 588, -- died
	HistoricalTitles = {
		"head-of-state", 0, 588, "teuton", "deira" -- first recorded king of Deira
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
})

DefineCharacter("ida", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Ida",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "bernicia",
	Year = 547, -- became king of Bernicia
	HistoricalTitles = {
		"head-of-state", 547, 0, "teuton", "bernicia" -- first king of Bernicia
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "bernicia") then
			return true
		end
		return false
	end
})

DefineCharacter("theodric-of-bernicia", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Theodric", -- in his age, the Anglo-Saxons suffered a siege in Holy Island for three days
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "bernicia", -- his father was king of Bernicia
	Father = "ida",
	HistoricalTitles = {
--		"head-of-state", 0, 0, "teuton", "bernicia" -- presumably, since his father was king of Bernicia
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "bernicia") then
			return true
		end
		return false
	end
})

DefineCharacter("aethelric", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75-76.
	Name = "Aethelric", -- "Æthelric"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "bernicia",
	Year = 588, -- according to tradition, Æthelric acquired the kingdom of Deira upon Ælle's death in 588 AD
	Father = "ida", -- the source says that his son Æthelfrith was grandson of Ida
	HistoricalTitles = {
		"head-of-state", 588, 0, "teuton", "bernicia", -- king of Bernicia
		"head-of-state", 588, 0, "teuton", "deira" -- according to tradition, Æthelric acquired the kingdom of Deira upon Ælle's death in 588 AD
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "bernicia" or GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
})

DefineCharacter("aethelfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75, 78.
	Name = "aethelfrith", -- "Æthelfrith"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "bernicia",
	Year = 593, -- beginning of reign
	DeathYear = 616, -- died in battle against Rædwald
	ViolentDeath = true,
	Father = "aethelric",
	Description = "Aethelfrith was the king of Bernicia between 593 and 616. He simultaneously ruled over Deira, and is famed for his defeat of the Britons at Chester. Aethelfrith came to a tragic end at the hands of Raedwald of East Anglia in 616, being killed in battle.",
	HistoricalTitles = {
		"head-of-state", 593, 616, "teuton", "bernicia", -- king of Bernicia
		"head-of-state", 593, 616, "teuton", "deira"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "bernicia" or GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
	-- married the daughter of the Deiran king Ælle
	-- at some point between 613 and 616, he defeated the Britons at Chester; before the battle of Chester, Æthelfrith's warriors killed a group of British monks who stemmed from the monastery of Bangor Iscoed, and had come to pray for the Briton forces; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77-78
	-- at some point between 613 and 616, he defeated the Britons at Chester; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77-78
})

DefineCharacter("ceawlin", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Ceawlin",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "wessex",
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "wessex" -- king of Wessex
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("edwin-of-deira", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-81.
	Name = "Edwin",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "deira",
	Father = "aelle",
	Year = 616, -- in 616 Rædwald of East Anglia (with whom Edwin had taken refuge), fought and won against Æthelfrith of Bernicia to support Edwin's claim to the Deiran throne
	DeathYear = 632, -- died in 632 in battle against Cadwallon of Gwynedd
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 616, 632, "teuton", "bernicia",
		"head-of-state", 616, 632, "teuton", "deira" -- was the heir to Deira, but also became the king of Bernicia after the battle against Æthelfrith in 616
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira" or GetPlayerData(trigger_player, "Faction") == "bernicia") then
			return true
		end
		return false
	end
})

DefineCharacter("raedwald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-79.
	Name = "Raedwald", -- "Rædwald"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "east-anglia",
	Year = 616, -- in the summer or early fall of 616, Rædwald (supporting Edwin's claim to the Deiran throne; Edwin had taken refuge with him) engaged in a battle against Æthelfrith of Bernicia, with the location being at the southern border of Deira, where the Idle river crosses with the Lincoln-Doncaster Roman road
	HistoricalTitles = {
		"head-of-state", 616, 0, "teuton", "east-anglia" -- king of East Anglia
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "east-anglia") then
			return true
		end
		return false
	end
})

DefineCharacter("lilla", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 79.
	Name = "Lilla",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- thegn
	Civilization = "teuton",
	Faction = "deira",
	Description = "Lilla was a thegn of Edwin of Deira. He saved his lord's life by stopping an assassin from Wessex just as he was about to strike Edwin.",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira" or GetPlayerData(trigger_player, "Faction") == "bernicia") then -- Edwin also ruled over Bernicia
			return true
		end
		return false
	end
})

DefineCharacter("aethelberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 79.
	Name = "Aethelberht", -- "Æthelberht"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "kent",
	-- his daughter married Edwin of Deira
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "kent" -- king of Kent
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent") then
			return true
		end
		return false
	end
})

DefineCharacter("hereric", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Name = "Hereric",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "deira", -- presumably
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira" or GetPlayerData(trigger_player, "Faction") == "bernicia") then -- Edwin also ruled over Bernicia
			return true
		end
		return false
	end
	-- was the son of a nephew of Edwin of Deira's
	-- was exiled by Æthelfrith of Bernicia
	-- was poisoned and died during his stay as an exile with Certic of Elmet
})

DefineCharacter("osfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 80-81.
	Name = "Osfrith",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "deira",
	Father = "edwin-of-deira",
	DeathYear = 632, -- died in 632 in battle against Cadwallon of Gwynedd
	ViolentDeath = true,
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira" or GetPlayerData(trigger_player, "Faction") == "bernicia") then -- Edwin also ruled over Bernicia
			return true
		end
		return false
	end
})

DefineCharacter("penda", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75, 80-81, 83-84.
	Name = "Penda",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "mercia",
	Year = 632, -- in 632, Penda (still a noble belonging to the Mercian royal house with no throne) allied himself Cadwallon of Gwynedd against Edwin of Deira
	DeathYear = 654, -- died fighting against Oswiu of Bernicia
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 632, 654, "teuton", "mercia" -- became king of Mercia in 632 after Edwin's demise
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "mercia") then
			return true
		end
		return false
	end
	-- attacked Oswiu of Bernicia in 654 with thirty "legions"
})

DefineCharacter("osric", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Osric",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "deira",
	Year = 632,
	DeathYear = 633, -- died fighting against Cadwallon in the summer of 633
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 632, 633, "teuton", "deira" -- king of Deira from Edwin's death to 633
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
})

DefineCharacter("eanfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Eanfrith",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "bernicia",
	Father = "aethelfrith",
	Year = 632,
	DeathYear = 633, -- killed in 633 while visiting Cadwallon to sue for peace
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 632, 633, "teuton", "bernicia" -- king of Bernicia from Edwin's death to 633
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "bernicia") then
			return true
		end
		return false
	end
})

DefineCharacter("talorcan", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 87.
	Name = "Talorcan",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "bernicia",
	Father = "eanfrith",
	HistoricalTitles = {
		"head-of-state", 632, 633, "celt", "pict-tribe" -- was king of the Picts
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "bernicia") then
			return true
		end
		return false
	end
})

DefineCharacter("oswald-of-bernicia", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 81-82.
	Name = "Oswald",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "bernicia",
	Father = "aethelfrith", -- he was a brother of Eanfrith's, so presumably also a son of Æthelfrith
	Year = 633, -- destroyed Cadwallon at Rowley Burn (south of Hexham) in 633, becoming king of both Bernicia and Deira
	DeathYear = 641, -- defeated and killed by Penda of Mercia at Maserfelth (likely Oswestry in Shropshire) on the 5h of August 641
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 633, 641, "teuton", "bernicia",
		"head-of-state", 633, 641, "teuton", "deira"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "bernicia" or GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
	-- married the daughter of Cynegils of Wessex
})

DefineCharacter("eadfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Eadfrith",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "deira",
	Father = "edwin-of-deira",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
	-- gave himself up to Penda, who killed him
})

DefineCharacter("wuscfrea", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Wuscfrea",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "deira",
	Father = "edwin-of-deira",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
})

DefineCharacter("yffi", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Yffi",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "deira",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
	-- grandson of Edwin of Deira
})

DefineCharacter("eanflaed", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Eanflaed", -- "Eanflæd"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton",
	Faction = "deira",
	Father = "edwin-of-deira"
	-- married to Oswiu, brother of Oswald of Bernicia
})

DefineCharacter("oswiu", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 81-85.
	Name = "Oswiu",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Father = "aethelfrith", -- he was a brother of Oswald's, so also of Eanfrith's, and as such likely also a son of Æthelfrith
	Year = 641,
	DeathYear = 670,
	HistoricalTitles = {
		"head-of-state", 641, 654, "teuton", "bernicia", -- became king of Bernicia on the death of his brother Oswald
		"head-of-state", 654, 670, "teuton", "northumbria" -- Northumbria unified in 654
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "bernicia" or GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
	-- married to Eanflæd, daughter of Edwin of Deira
	-- fought and won against Penda in the battle of the Winwæd (a stream, somewhere around Leeds) in 654
})

DefineCharacter("cynegils", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Cynegils",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "wessex",
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "wessex" -- king of Wessex
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("oswine", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 82-83.
	Name = "Oswine",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "deira",
	Father = "osric",
	Year = 641,
	DeathYear = 651, -- died as a result of Oswiu of Bernicia's invasion of Deira in 651 AD
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 641, 651, "teuton", "deira" -- became king of Deira on the death of Oswald of Bernicia
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
})

DefineCharacter("aethelwald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 83.
	Name = "Aethelwald", -- "Æthelwald"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "deira",
	Father = "oswald-of-bernicia",
	Year = 651,
	HistoricalTitles = {
		"head-of-state", 651, 0, "teuton", "deira" -- was chosen by the Deirans as their king upon the demise of Oswine; he was under the protection of Penda of Mercia (apparently) from his accession
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
})

DefineCharacter("aethelhere", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 83-84.
	Name = "Aethelhere", -- "Æthelhere"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "east-anglia",
	Year = 654,
	DeathYear = 654, -- in 654 went with Penda to attack Oswiu of Bernicia, resulting in Æthelhere's death
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 654, 654, "teuton", "east-anglia" -- king of East Anglia; in 654 went with Penda to attack Oswiu of Bernicia, resulting in Æthelhere's death
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "east-anglia") then
			return true
		end
		return false
	end
})

DefineCharacter("sigeberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
	Name = "Sigeberht",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "essex",
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "essex" -- king of Essex
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "essex") then
			return true
		end
		return false
	end
})

DefineCharacter("cenwalh", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
	Name = "Cenwalh",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "wessex",
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "wessex" -- king of Wessex
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
	-- was forced into exile from his lands by Penda of Mercia
})

DefineCharacter("peada", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
	Name = "Peada", -- king of the Middle Angles
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "middle-anglia",
	Father = "penda",
	Year = 654, -- was given the Mercian territories south of the Trent after Penda's fall, at which point he was already king of the Middle Angles
	DeathYear = 656, -- murdered in the spring of 656
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 654, 656, "teuton", "middle-anglia"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "middle-anglia") then
			return true
		end
		return false
	end
	-- married the daughter of Oswiu of Bernicia
})

DefineCharacter("wulfhere", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 84-85.
	Name = "Wulfhere",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "mercia",
	Father = "penda",
	Year = 657, -- beginning of reign
	HistoricalTitles = {
		"head-of-state", 657, 0, "teuton", "mercia" -- became king of Mercia in 657
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "mercia") then
			return true
		end
		return false
	end
	-- became overlord of the kings of Essex in 665
	-- invaded Northumbria in 674, possessing an army gathered from all Anglo-Saxon kingdoms south of the Humber
})

DefineCharacter("ecgfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 85, 88.
	Name = "Ecgfrith",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Father = "oswiu",
	Year = 674, -- defeated Wulfhere of Mercia's invasion of Northumbria in 674
	DeathYear = 685, -- died in the 20th of May 685 at Duin Nechtain / Nechtanesmere while leading a raid against the Picts under their king Bruide
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 674, 685, "teuton", "northumbria" -- king of Northumbria
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
	-- was defeated in 678 by Æthelred, Wulfhere's brother, in a battle close to the Trent river
	-- in 684 had an army sent to Ireland against the kingdom of Meath
})

DefineCharacter("beornhaeth", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
	Name = "Beornhaeth", -- "Beornhæth"; Northumbrian ealdorman, quelled a Pictish rebellion with Ecgfrith of Northumbria
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- ealdorman
	Civilization = "teuton",
	Faction = "northumbria",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("aethelred-of-mercia", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 85.
	Name = "Aethelred", -- "Æthelred"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "mercia",
	Father = "penda", -- presumably, since he was Wulfhere of Mercia's brother
	Year = 678, -- defeated Ecgfrith of Northumbria in a battle close to the Trent river in 678
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "mercia") then
			return true
		end
		return false
	end
})

DefineCharacter("aldfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
	Name = "Aldfrith",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Father = "oswiu",
	Year = 685,
	DeathYear = 704, -- end of reign
	HistoricalTitles = {
		"head-of-state", 685, 704, "teuton", "northumbria" -- succeeded his brother Ecgfrith as king of Northumbria
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("aldhelm", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 89; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 98.
	Name = "Aldhelm", -- abbot of Malmesbury, composed the "Helleborus" riddle
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "teuton",
	Faction = "wessex",
	DeathYear = 709, -- died in 709/710
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("osred", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 91.
	Name = "Osred",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Father = "aldfrith",
	Trait = "upgrade-cruel", -- described as wild, irreligious and tyrannical to his noble subjects
	Year = 697, -- began to rule in 705, when he was eight years old
	DeathYear = 716, -- murdered in 716
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 705, 716, "teuton", "northumbria" -- king of Northumbria; began to rule in 705
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("beorhtfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
	Name = "Beorhtfrith", -- Northumbrian ealdorman
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- ealdorman
	Civilization = "teuton",
	Faction = "northumbria",
	Year = 711, -- defeated a Pictish army in the Scottish central plain in 711
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("ceolwulf", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 91.
	Name = "Ceolwulf",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Year = 729,
	DeathYear = 737,
	HistoricalTitles = {
		"head-of-state", 729, 737, "teuton", "northumbria" -- was king of Northumbria between 729 and 737
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("bede", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 34.
	Name = "Bede",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "teuton",
	Faction = "angle-tribe", -- so that the name will be added to the name generation correctly
	-- from which part of England?
	Year = 731, -- wrote "Historia Ecclesiastica Venerabilis Bedae" around 731 AD
	AuthoredWorks = {"upgrade-work-historia-ecclesiastica-venerabilis-bedae"}
})

DefineCharacter("eadberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Eadberht",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Year = 737,
	HistoricalTitles = {
		"head-of-state", 737, 758, "teuton", "northumbria" -- succeeded Ceolwulf as king of Northumbria, withdrew from public life in 758, becoming a clerk under his brother Egbert, the archbishop of York
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
	-- conquered Kyle and other areas from Strathclyde in 750
	-- allied with the Picts in 756 and attacked Alcluith
})

DefineCharacter("aethelbald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Aethelbald", -- "Æthelbald"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "mercia",
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "mercia" -- was king of Mercia
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "mercia") then
			return true
		end
		return false
	end
})

DefineCharacter("offa-of-northumbria", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Offa",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "northumbria",
	Father = "aldfrith",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("egbert", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Egbert", -- archbishop of York
	Gender = "male",
	Type = "unit-teuton-priest", -- archbishop
	Civilization = "teuton",
	Faction = "northumbria",
	-- was Eadberht of Northumbria's brother
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("oswulf", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Oswulf",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "northumbria",
	Father = "eadberht",
	DeathYear = 758, -- killed by his retainers in the summer of 758
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("aethelwald-moll", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Aethelwald", -- "Æthelwald"
	FamilyName = "Moll",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Year = 759,
	HistoricalTitles = {
		"head-of-state", 759, 765, "teuton", "northumbria" -- became king of Northumbria in 759, lost the throne to Alhred six years later
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("alhred", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 90, 92-93.
	Name = "Alhred", -- descendant of Ida of Bernicia
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Year = 765,
	DeathYear = 774, -- end of reign
	HistoricalTitles = {
		"head-of-state", 765, 774, "teuton", "northumbria" -- king of Northumbria between 765 and 774; in 774 lost the throne by a formal act of the nobility and his own household
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("aethelred-moll", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 93-94.
	Name = "Aethelred", -- "Æthelred"
	FamilyName = "Moll",
	Trait = "upgrade-cruel", -- treacherous and merciless
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Father = "aethelwald-moll",
	Year = 774,
	DeathYear = 796, -- murdered
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 774, 779, "teuton", "northumbria", -- became king of Northumbria after Alhred was deposed, was expelled in 779 from Northumbria by Ælfwald
		"head-of-state", 789, 796, "teuton", "northumbria" -- was restored to the throne within a year after Ælfwald's reign ended
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
	-- married a daughter of Offa, king of Mercia, in 792
})

DefineCharacter("aelfwald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 90, 93.
	Name = "Aelfwald", -- "Ælfwald"; grandson of Eadberht
	Trait = "upgrade-pious", -- considered just and pious
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Year = 779, -- expelled Æthelred Moll from Northumbria
	DeathYear = 788,
	HistoricalTitles = {
		"head-of-state", 779, 788, "teuton", "northumbria" -- king of Northumbria between 779 and 788
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("offa-of-mercia", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 93.
	Name = "Offa",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "mercia",
	Year = 792,
	HistoricalTitles = {
		"head-of-state", 792, 0, "teuton", "mercia" -- was king of Mercia in 792 when Æthelred Moll married a daughter of his
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "mercia") then
			return true
		end
		return false
	end
})

DefineCharacter("alcuin", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 90.
	Name = "Alcuin", -- Northumbrian scholar who made the school of York famous
	Gender = "male",
	Type = "unit-teuton-priest", -- correct?
	Civilization = "teuton",
	Faction = "northumbria",
	Year = 782, -- moved from England to the court of Charlemagne
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("torhtmund", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 90.
	Name = "Torhtmund", -- Minister of the Northumbrian king Æthelred Moll, Torhtmund killed the king's murderer
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "northumbria",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
	-- was introduced by Alcuin to Charlemagne
})

DefineCharacter("eardwulf", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 94-95.
	Name = "Eardwulf",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Year = 801,
	DeathYear = 810, -- died
	HistoricalTitles = {
		"head-of-state", 801, 808, "teuton", "northumbria", -- was king of Northumbia in 801 when he invaded Mercia; in the spring of 808 he was expelled from Northumbria
		"head-of-state", 808, 810, "teuton", "northumbria" -- was restored as king in the same year of being expelled, with the support of Charlemagne and Pope Leo III; died in or before 810
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("cenwulf", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 94.
	Name = "Cenwulf",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "mercia",
	Year = 801,
	HistoricalTitles = {
		"head-of-state", 801, 0, "teuton", "mercia" -- was king of Mercia in 801 when Eardwulf of Northumbria invaded it
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "mercia") then
			return true
		end
		return false
	end
})

DefineCharacter("eanred", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 95.
	Name = "Eanred",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "northumbria",
	Father = "eardwulf",
	Year = 810,
	DeathYear = 840,
	HistoricalTitles = {
		"head-of-state", 810, 840, "teuton", "northumbria" -- succeeded Eardwulf as king of Northumbria, and ruled for thirty years
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("egbert-of-wessex", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 95.
	Name = "Egbert",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	Faction = "wessex",
	Year = 829,
	HistoricalTitles = {
		"head-of-state", 829, 0, "teuton", "wessex" -- was king of Mercia in 829 when Eanred of Northumbria submitted to him
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

--[[
DefineCharacter("ethelred", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 127.
	Name = "Ethelred", -- did the massacre of the Danes in 1002 AD
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Year = 1002 -- massacred the Danes in 1002
})
--]]

DefineCharacter("nicolas-breakspear", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 126.
	Name = "Nicolas", -- son of a peasant employed in the Benedictine monastery of Saint Albans in Hertfordshire; was educated by the monks there; later became a cardinal and was sent on a mission to Norway to settle the Church there; was elected Pope in 1154 AD under the title of Hadrian IV
	ExtraName = "Breakspear", -- I assume this isn't his family name, but a nickname or something of the sort
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "teuton",
	Faction = "england",
	Year = 1154, -- elected Pope
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "england") then
			return true
		end
		return false
	end
})