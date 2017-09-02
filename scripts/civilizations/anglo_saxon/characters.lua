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
	Civilization = "anglo-saxon",
	Faction = "deira",
	DeathDate = 588, -- died
	Background = "Aelle is the first known king of Deira.",
	HistoricalTitles = {
		"head-of-state", 0, 588, "deira" -- first recorded king of Deira
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
	Civilization = "anglo-saxon",
	Faction = "bernicia",
	Date = 547, -- became king of Bernicia
	HistoricalTitles = {
		"head-of-state", 547, 0, "bernicia" -- first king of Bernicia
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
	Civilization = "anglo-saxon",
	Faction = "bernicia", -- his father was king of Bernicia
	Father = "ida",
	HistoricalTitles = {
--		"head-of-state", 0, 0, "bernicia" -- presumably, since his father was king of Bernicia
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
	Civilization = "anglo-saxon",
	Faction = "bernicia",
	Date = 588, -- according to tradition, Æthelric acquired the kingdom of Deira upon Ælle's death in 588 AD
	Father = "ida", -- the source says that his son Æthelfrith was grandson of Ida
	HistoricalTitles = {
		"head-of-state", 588, 0, "bernicia", -- king of Bernicia
		"head-of-state", 588, 0, "deira" -- according to tradition, Æthelric acquired the kingdom of Deira upon Ælle's death in 588 AD
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "bernicia" or GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
})

DefineCharacter("aethelfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75, 78.
	Name = "Aethelfrith", -- "Æthelfrith"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "bernicia",
	Date = 593, -- beginning of reign
	DeathDate = 616, -- died in battle against Rædwald
	ViolentDeath = true,
	Father = "aethelric",
	Description = "Aethelfrith was the king of Bernicia between 593 and 616. He simultaneously ruled over Deira, and is famed for his defeat of the Britons at Chester. Aethelfrith came to a tragic end at the hands of Raedwald of East Anglia in 616, being killed in battle.",
	HistoricalTitles = {
		"head-of-state", 593, 616, "bernicia", -- king of Bernicia
		"head-of-state", 593, 616, "deira"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "bernicia" or GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
	-- married the daughter of the Deiran king Ælle
	-- at some point between 613 and 616, he defeated the Britons at Chester; before the battle of Chester, Æthelfrith's warriors killed a group of British monks who stemmed from the monastery of Bangor Iscoed, and had come to pray for the Briton forces; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77-78
})

DefineCharacter("ceawlin", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Ceawlin",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "wessex",
	HistoricalTitles = {
		"head-of-state", 0, 0, "wessex" -- king of Wessex
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("edwin-of-deira", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-81, 113, 116.
	Name = "Edwin",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "deira",
	Father = "aelle",
	Date = 616, -- in 616 Rædwald of East Anglia (with whom Edwin had taken refuge), fought and won against Æthelfrith of Bernicia to support Edwin's claim to the Deiran throne
	DeathDate = {632, 10, 12}, -- died on the 12th of October 632 in battle against Cadwallon of Gwynedd, at Hatfield
	ViolentDeath = true,
	-- married Æthelberg in 625
	HistoricalTitles = {
		"head-of-state", 616, 632, "bernicia",
		"head-of-state", 616, 632, "deira" -- was the heir to Deira, but also became the king of Bernicia after the battle against Æthelfrith in 616
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira" or GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("raedwald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-79.
	Name = "Raedwald", -- "Rædwald"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "east-anglia",
	Date = 616, -- in the summer or early fall of 616, Rædwald (supporting Edwin's claim to the Deiran throne; Edwin had taken refuge with him) engaged in a battle against Æthelfrith of Bernicia, with the location being at the southern border of Deira, where the Idle river crosses with the Lincoln-Doncaster Roman road
	HistoricalTitles = {
		"head-of-state", 616, 0, "east-anglia" -- king of East Anglia
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
	Civilization = "anglo-saxon",
	Faction = "deira",
	Description = "Lilla was a thegn of Edwin of Deira. He saved his lord's life by stopping an assassin from Wessex just as he was about to strike Edwin.",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira" or GetPlayerData(trigger_player, "Faction") == "bernicia") then -- Edwin also ruled over Bernicia
			return true
		end
		return false
	end
})

DefineCharacter("aethelberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 79, 105, 112.
	Name = "Aethelberht", -- "Æthelberht"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "kent",
	-- his daughter married Edwin of Deira
	-- married Bertha of Paris before 588
	DeathDate = 616,
	HistoricalTitles = {
		"head-of-state", 597, 616, "kent" -- was king of Kent in 597
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent") then
			return true
		end
		return false
	end
})

DefineCharacter("saberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 109.
	Name = "Saberht",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "essex",
	HistoricalTitles = {
		"head-of-state", 604, 0, "essex" -- was king of Essex in 604
	},
	-- son of king Æthelberht of Kent's sister
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "essex") then
			return true
		end
		return false
	end
})

DefineCharacter("aethelberg", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 113.
	Name = "Aethelberg", -- "Æthelberg"
	Gender = "female",
	Type = "unit-teuton-swordsman",
	Civilization = "anglo-saxon",
	Faction = "kent",
	Father = "aethelberht",
	Deities = {"christian-god"},
	-- married king Edwin of Northumbria in 625
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent") then
			return true
		end
		return false
	end
})

DefineCharacter("birinus", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 117-118.
	Name = "Birinus",
	Gender = "male",
	Type = "unit-teuton-priest", -- priest, and first bishop in Wessex
	Civilization = "anglo-saxon",
	Faction = "wessex",
	Date = 635, -- baptized the West Saxon king Cynegils in 635
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("hereric", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Name = "Hereric",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "anglo-saxon",
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
	Civilization = "anglo-saxon",
	Faction = "deira",
	Father = "edwin-of-deira",
	DeathDate = 632, -- died in 632 in battle against Cadwallon of Gwynedd
	ViolentDeath = true,
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "deira" or GetPlayerData(trigger_player, "Faction") == "bernicia") then -- Edwin also ruled over Bernicia
			return true
		end
		return false
	end
})

DefineCharacter("penda", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 39, 75, 80-81, 83-84, 120.
	Name = "Penda",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "mercia",
	Date = 632, -- in 632, Penda (still a noble belonging to the Mercian royal house with no throne) allied himself Cadwallon of Gwynedd against Edwin of Deira
	DeathDate = 654, -- died fighting against Oswiu of Bernicia; died in the autumn of 654
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 632, 654, "mercia" -- became king of Mercia in 632 after Edwin's demise
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
	Civilization = "anglo-saxon",
	Faction = "deira",
	Date = 632,
	DeathDate = 633, -- died fighting against Cadwallon in the summer of 633
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 632, 633, "deira" -- king of Deira from Edwin's death to 633
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
	Civilization = "anglo-saxon",
	Faction = "bernicia",
	Father = "aethelfrith",
	Date = 632,
	DeathDate = 633, -- killed in 633 while visiting Cadwallon to sue for peace
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 632, 633, "bernicia" -- king of Bernicia from Edwin's death to 633
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
	Civilization = "anglo-saxon",
	Faction = "bernicia",
	Father = "eanfrith",
	HistoricalTitles = {
		"head-of-state", 632, 633, "pict-tribe" -- was king of the Picts
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
	Civilization = "anglo-saxon",
	Faction = "bernicia",
	Father = "aethelfrith", -- he was a brother of Eanfrith's, so presumably also a son of Æthelfrith
	Date = 633, -- destroyed Cadwallon at Rowley Burn (south of Hexham) in 633, becoming king of both Bernicia and Deira
	DeathDate = 641, -- defeated and killed by Penda of Mercia at Maserfelth (likely Oswestry in Shropshire) on the 5h of August 641
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 633, 641, "bernicia",
		"head-of-state", 633, 641, "deira"
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
	Civilization = "anglo-saxon",
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
	Civilization = "anglo-saxon",
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
	Civilization = "anglo-saxon",
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
	Civilization = "anglo-saxon",
	Faction = "deira",
	Father = "edwin-of-deira"
	-- married to Oswiu, brother of Oswald of Bernicia
})

DefineCharacter("oswiu", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 81-85.
	Name = "Oswiu",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Father = "aethelfrith", -- he was a brother of Oswald's, so also of Eanfrith's, and as such likely also a son of Æthelfrith
	Date = 641,
	DeathDate = 670,
	Background = "Oswiu unified the kingdoms of Bernicia and Deira into Northumbria in 654 AD.",
	HistoricalTitles = {
		"head-of-state", 641, 654, "bernicia", -- became king of Bernicia on the death of his brother Oswald
		"head-of-state", 654, 670, "northumbria" -- Northumbria unified in 654
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

DefineCharacter("cynegils", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 81, 118.
	Name = "Cynegils",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "wessex",
	Date = 635, -- was already king when he was baptized in 635 by Birinus
	HistoricalTitles = {
		"head-of-state", 635, 0, "wessex" -- king of Wessex
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("eadbald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 112-113.
	Name = "Eadbald",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "kent",
	Father = "aethelberht",
	-- son of Bertha of Paris
	DeathDate = 640, -- reign ended
	HistoricalTitles = {
		"head-of-state", 616, 640, "kent" -- became king of Kent in 616, and ceased to be king in 640
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent") then
			return true
		end
		return false
	end
})

DefineCharacter("eorcenberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 113.
	Name = "Eorcenberht",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "kent",
	Father = "eadbald",
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 640, 0, "kent"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent") then
			return true
		end
		return false
	end
})

DefineCharacter("oswine", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 82-83.
	Name = "Oswine",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "deira",
	Father = "osric",
	Date = 641,
	DeathDate = 651, -- died as a result of Oswiu of Bernicia's invasion of Deira in 651 AD
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 641, 651, "deira" -- became king of Deira on the death of Oswald of Bernicia
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
	Civilization = "anglo-saxon",
	Faction = "deira",
	Father = "oswald-of-bernicia",
	Date = 651,
	HistoricalTitles = {
		"head-of-state", 651, 0, "deira" -- was chosen by the Deirans as their king upon the demise of Oswine; he was under the protection of Penda of Mercia (apparently) from his accession
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
	Civilization = "anglo-saxon",
	Faction = "east-anglia",
	Date = 654,
	DeathDate = 654, -- in 654 went with Penda to attack Oswiu of Bernicia, resulting in Æthelhere's death
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 654, 654, "east-anglia" -- king of East Anglia; in 654 went with Penda to attack Oswiu of Bernicia, resulting in Æthelhere's death
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
	Civilization = "anglo-saxon",
	Faction = "essex",
	HistoricalTitles = {
		"head-of-state", 0, 0, "essex" -- king of Essex
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "essex") then
			return true
		end
		return false
	end
})

DefineCharacter("cenwalh", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 84, 118.
	Name = "Cenwalh",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "wessex",
	Father = "cynegils", -- second son of Cynegils
	DeathDate = 645, -- reign ended
	HistoricalTitles = {
		"head-of-state", 0, 645, "wessex" -- king of Wessex; was driven from his kingdom by Penda's Mercia in 645
	},
	-- remained pagan as late as 645, though he was later converted to Christianity
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
	-- was forced into exile from his lands by Penda of Mercia
})

DefineCharacter("cuthbert-of-lindisfarne", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 126, 138-139.
	Name = "Cuthbert",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 651, -- became a novice in Melrose in 651
	-- moved to Lindisfarne in 664
	-- was elected bishop of Hexham in 684, being consecrated on the 26th of March 685
	-- retired from the world in 687
	DeathDate = {687, 3, 20}, -- died on 687.3.20
	-- became a saint
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria" or GetPlayerData(trigger_player, "Faction") == "bernicia") then
			return true
		end
		return false
	end
})

DefineCharacter("peada", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 84, 120.
	Name = "Peada", -- king of the Middle Angles
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "middle-anglia",
	Father = "penda",
	Date = 653, -- was ruling the Middle Angles in 653 when he was baptized
	DeathDate = 656, -- murdered in the spring of 656
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 654, 656, "middle-anglia"
	},
	-- was given the Mercian territories south of the Trent after Penda's fall, at which point he was already king of the Middle Angles
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "middle-anglia") then
			return true
		end
		return false
	end
	-- married Alhflæd, the daughter of Oswiu of Bernicia, in 653
})

DefineCharacter("alhflaed", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 120.
	Name = "Alhflaed", -- "Alhflæd"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Father = "oswiu", -- Oswiu of Bernicia
	Date = 653, -- married Peada in 653
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("deusdedit", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 130.
	Name = "Deusdedit",
	Gender = "male",
	Type = "unit-teuton-priest", -- archbishop
	Civilization = "anglo-saxon",
	Faction = "kent",
	Date = 654, -- became archbishop of Canterbury in the spring of 654
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent" or GetPlayerData(trigger_player, "Faction") == "englaland") then
			return true
		end
		return false
	end
})

DefineCharacter("wulfhere", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 34, 84-85.
	Name = "Wulfhere",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "mercia",
	Father = "penda",
	Date = 657, -- beginning of reign
	DeathDate = 674, -- died
	HistoricalTitles = {
		"head-of-state", 657, 674, "mercia" -- became king of Mercia in 657; died in 674
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

DefineCharacter("wine", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 122.
	Name = "Wine",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "anglo-saxon",
	Faction = "wessex",
	Date = 660, -- became bishop of Winchester around 660
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("hild-of-streoneshalh", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 123.
	Name = "Hild",
	Gender = "female",
	Type = "unit-teuton-priest",
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 663, -- was abbess of a monastery in Streoneshalh, in Northumbria, in 663
	Deities = {"christian-god"},
	-- was related to king Oswiu of Northumbria
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("wilfrid", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 123, 135-139, 143-145.
	Name = "Wilfrid",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "anglo-saxon",
	Faction = "northumbria", -- from Northumbria
	Date = 663, -- participated in a synod in Streoneshalh, in Northumbria, in 663
	-- predominated over the whole Northumbrian church in the 669-677 period
	-- expelled from Northumbria in 677
	-- was restored to his see in York in 679.10 by Rome, but this decision was not obeyed in Northumbria
	-- in 681 he found refuge in Sussex
	-- was allowed to return to Northumbria in 686, having his residence at Ripon
	-- administered the see of Lindisfarne after Cuthbert died in 687.3
	-- expelled from Northumbria again in 691, due to his ambition to once more predominate over the entirety of the Northumbrian church, moving to Mercia
	DeathDate = 709, -- died in 709 at Oundle
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria" or GetPlayerData(trigger_player, "Faction") == "sussex") then
			return true
		end
		return false
	end
})

DefineCharacter("egbert-of-kent", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 130.
	Name = "Egbert",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "kent",
	Date = 667, -- was king of Kent as of 667
	HistoricalTitles = {
		"head-of-state", 667, 0, "kent" -- was king of Kent as of 667
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent") then
			return true
		end
		return false
	end
})

DefineCharacter("wighard", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 130.
	Name = "Wighard",
	Gender = "male",
	Type = "unit-teuton-priest", -- archbishop
	Civilization = "anglo-saxon",
	Faction = "kent",
	Date = 667, -- became archbishop of Canterbury in 667
	DeathDate = 667, -- died very soon after becoming archbishop, when he was sent to Rome to be consecrated, and died of plague
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent" or GetPlayerData(trigger_player, "Faction") == "englaland") then
			return true
		end
		return false
	end
})

DefineCharacter("leuthere", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 132-134.
	Name = "Leuthere",
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop
	Civilization = "anglo-saxon",
	Faction = "wessex",
	Date = 670, -- became bishop of Winchester in 670 (consecrated by archbishop Theodore of Canterbury)
	DeathDate = 676, -- succeeded by Hæddi as bishop of Winchester in 676
	-- nephew of Agilbert
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("ecgfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 85, 88.
	Name = "Ecgfrith",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Father = "oswiu",
	Date = 674, -- defeated Wulfhere of Mercia's invasion of Northumbria in 674
	DeathDate = {685, 5, 20}, -- died in the 20th of May 685 at Duin Nechtain / Nechtanesmere while leading a raid against the Picts under their king Bruide
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 674, 685, "northumbria" -- king of Northumbria
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

DefineCharacter("haeddi", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 134.
	Name = "Haeddi", -- "Hæddi"
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop
	Civilization = "anglo-saxon",
	Faction = "wessex",
	Date = 676, -- became bishop of Winchester in 676, succeeding Leuthere
	-- friend of archbishop Theodore of Canterbury
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("bosa", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 135-136, 139.
	Name = "Bosa",
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 677, -- became bishop of Deira (with seat in York) in 677
	DeathDate = 705, -- died in 705
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria" or GetPlayerData(trigger_player, "Faction") == "deira") then
			return true
		end
		return false
	end
})

DefineCharacter("eata", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 135-136, 139.
	Name = "Eata",
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 677, -- became bishop of Bernicia in 677
	DeathDate = 686, -- died just before Wilfrid's return to Northumbria in 686
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria" or GetPlayerData(trigger_player, "Faction") == "bernicia") then
			return true
		end
		return false
	end
})

DefineCharacter("beornhaeth", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
	Name = "Beornhaeth", -- "Beornhæth"; Northumbrian ealdorman, quelled a Pictish rebellion with Ecgfrith of Northumbria
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- ealdorman
	Civilization = "anglo-saxon",
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
	Civilization = "anglo-saxon",
	Faction = "mercia",
	Father = "penda", -- presumably, since he was Wulfhere of Mercia's brother
	Date = 678, -- defeated Ecgfrith of Northumbria in a battle close to the Trent river in 678
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "mercia") then
			return true
		end
		return false
	end
})

DefineCharacter("aethelwalh", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 137-138.
	Name = "Aethelwalh", -- "Æthelwalh"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "sussex",
	Date = 681, -- was king of the South Saxons as of 681
	DeathDate = 686, -- died in 686, having been killed by Cædwalla
	HistoricalTitles = {
		"head-of-state", 681, 686, "sussex"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "sussex") then
			return true
		end
		return false
	end
})

DefineCharacter("tunberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 138.
	Name = "Tunberht",
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	DeathDate = 684, -- was deposed as bishop of Hexham in 684
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria" or GetPlayerData(trigger_player, "Faction") == "bernicia") then
			return true
		end
		return false
	end
})

DefineCharacter("berhtwald-of-mercia", { -- probably not the same Berhtwald as the archbishop of Canterbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 151.
	Name = "Berhtwald",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "anglo-saxon",
	Faction = "mercia",
	-- nephew of king Æthelred of Mercia
	Date = 685, -- gave forty hides to abbot Aldhelm in 685
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "mercia") then
			return true
		end
		return false
	end
})

DefineCharacter("aldfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 88, 144.
	Name = "Aldfrith",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Father = "oswiu",
	Date = {685, 5, 20},
	DeathDate = 704, -- died on 704.12
	HistoricalTitles = {
		"head-of-state", {685, 5, 20}, 704, "northumbria" -- succeeded his brother Ecgfrith as king of Northumbria on 685.5.20
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("caedwalla", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 137-138.
	Name = "Caedwalla", -- "Cædwalla"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "anglo-saxon",
	Faction = "wessex", -- West Saxon exile
	Date = 686, -- killed king Aethelwalh of Sussex in 686
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("john-of-beverley", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 139.
	Name = "John",
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 686, -- succeeded Eata as bishop of Hexham
	-- moved to York in 705
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("berhtwald", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 142, 145.
	Name = "Berhtwald",
	Gender = "male",
	Type = "unit-teuton-priest", -- abbot, and later archbishop
	Civilization = "anglo-saxon",
	Faction = "kent",
	Date = {692, 7, 1}, -- became archbishop of Canterbury on 692.7.1, having previously been abbot of Reculver
	DeathDate = 731, -- died in 731
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent" or GetPlayerData(trigger_player, "Faction") == "englaland") then
			return true
		end
		return false
	end
})

DefineCharacter("wihtred", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
	Name = "Wihtred",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "kent",
	Date = 695,
	HistoricalTitles = {
		"head-of-state", 695, 0, "kent" -- king of Kent as of 695
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent") then
			return true
		end
		return false
	end
})

DefineCharacter("osred", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 91.
	Name = "Osred",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Father = "aldfrith",
	Trait = "upgrade-cruel", -- described as wild, irreligious and tyrannical to his noble subjects
	Date = 697, -- began to rule in 705, when he was eight years old
	DeathDate = 716, -- murdered in 716
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 705, 716, "northumbria" -- king of Northumbria; began to rule in 705
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("waldhere", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
	Name = "Waldhere",
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop
	Civilization = "anglo-saxon",
	Faction = "essex",
	Date = 704, -- was bishop of London as of 704/705
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "middlesex" or GetPlayerData(trigger_player, "Faction") == "essex") then
			return true
		end
		return false
	end
})

DefineCharacter("cenred", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 142.
	Name = "Cenred",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "mercia",
	Date = 704,
	HistoricalTitles = {
		"head-of-state", 704, 0, "mercia" -- king of Mercia as of 704/705
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "mercia") then
			return true
		end
		return false
	end
})

DefineCharacter("aldhelm", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 89, 142, 151; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 98.
	Name = "Aldhelm",
	Gender = "male",
	Type = "unit-teuton-priest", -- abbot, and later bishop
	Civilization = "anglo-saxon",
	Faction = "wessex",
	Date = 685, -- received forty hides from Berhtwald in 685
	-- became bishop at Sherborne in 705, having previously been abbot of Malmesbury
	DeathDate = 709, -- died in 709/710
	Deities = {"christian-god"},
	 -- composed the "Helleborus" riddle
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("acca", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 151.
	Name = "Acca",
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	-- was bishop of Hexham
	DeathDate = 740, -- died in 740
	Deities = {"christian-god"},
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
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 711, -- defeated a Pictish army in the Scottish central plain in 711
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
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 729,
	DeathDate = 737,
	HistoricalTitles = {
		"head-of-state", 729, 737, "northumbria" -- was king of Northumbria between 729 and 737
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("tatwine", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 145.
	Name = "Tatwine",
	Gender = "male",
	Type = "unit-teuton-priest", -- abbot, and later archbishop
	Civilization = "anglo-saxon",
	Faction = "kent", -- archbishop of Canterbury, but was a Mercian abbot
	Date = 731, -- succeeded Behrtwald as archbishop of Canterbury after he had died in 731
	DeathDate = 734, -- died in 734
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent" or GetPlayerData(trigger_player, "Faction") == "mercia" or GetPlayerData(trigger_player, "Faction") == "englaland") then
			return true
		end
		return false
	end
})

DefineCharacter("bede", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 34.
	Name = "Bede",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "anglo-saxon",
	Faction = "angle-tribe", -- so that the name will be added to the name generation correctly
	-- from which part of England?
	Date = 731, -- wrote "Historia Ecclesiastica Venerabilis Bedae" around 731 AD
	Deities = {"christian-god"},
	AuthoredWorks = {"upgrade-work-historia-ecclesiastica-venerabilis-bedae"}
})

DefineCharacter("eadberht", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
	Name = "Eadberht",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 737,
	HistoricalTitles = {
		"head-of-state", 737, 758, "northumbria" -- succeeded Ceolwulf as king of Northumbria, withdrew from public life in 758, becoming a clerk under his brother Egbert, the archbishop of York
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
	Civilization = "anglo-saxon",
	Faction = "mercia",
	HistoricalTitles = {
		"head-of-state", 0, 0, "mercia" -- was king of Mercia
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
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Father = "aldfrith",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("egbert", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 92, 145.
	Name = "Egbert",
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop, and later archbishop
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Deities = {"christian-god"},
	-- was Eadberht of Northumbria's brother
	Date = 735, -- became archbishop of York in 735, having been previously bishop of York
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
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Father = "eadberht",
	DeathDate = 758, -- killed by his retainers in the summer of 758
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
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 759,
	HistoricalTitles = {
		"head-of-state", 759, 765, "northumbria" -- became king of Northumbria in 759, lost the throne to Alhred six years later
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
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 765,
	DeathDate = 774, -- end of reign
	HistoricalTitles = {
		"head-of-state", 765, 774, "northumbria" -- king of Northumbria between 765 and 774; in 774 lost the throne by a formal act of the nobility and his own household
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
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Father = "aethelwald-moll",
	Date = 774,
	DeathDate = 796, -- murdered
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 774, 779, "northumbria", -- became king of Northumbria after Alhred was deposed, was expelled in 779 from Northumbria by Ælfwald
		"head-of-state", 789, 796, "northumbria" -- was restored to the throne within a year after Ælfwald's reign ended
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
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 779, -- expelled Æthelred Moll from Northumbria
	DeathDate = 788,
	HistoricalTitles = {
		"head-of-state", 779, 788, "northumbria" -- king of Northumbria between 779 and 788
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
	Civilization = "anglo-saxon",
	Faction = "mercia",
	Date = 792,
	HistoricalTitles = {
		"head-of-state", 792, 0, "mercia" -- was king of Mercia in 792 when Æthelred Moll married a daughter of his
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
	Civilization = "anglo-saxon",
	Faction = "francia",
	Deities = {"christian-god"},
	Date = 782, -- moved from England to the court of Charlemagne
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
	Civilization = "anglo-saxon",
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
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Date = 801,
	DeathDate = 810, -- died
	HistoricalTitles = {
		"head-of-state", 801, 808, "northumbria", -- was king of Northumbia in 801 when he invaded Mercia; in the spring of 808 he was expelled from Northumbria
		"head-of-state", 808, 810, "northumbria" -- was restored as king in the same year of being expelled, with the support of Charlemagne and Pope Leo III; died in or before 810
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
	Civilization = "anglo-saxon",
	Faction = "mercia",
	Date = 801,
	HistoricalTitles = {
		"head-of-state", 801, 0, "mercia" -- was king of Mercia in 801 when Eardwulf of Northumbria invaded it
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
	Civilization = "anglo-saxon",
	Faction = "northumbria",
	Father = "eardwulf",
	Date = 810,
	DeathDate = 840,
	HistoricalTitles = {
		"head-of-state", 810, 840, "northumbria" -- succeeded Eardwulf as king of Northumbria, and ruled for thirty years
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "northumbria") then
			return true
		end
		return false
	end
})

DefineCharacter("wulfred", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 36.
	Name = "Wulfred",
	Gender = "male",
	Type = "unit-teuton-priest", -- archbishop of Canterbury
	Civilization = "anglo-saxon",
	Faction = "kent",
	Deities = {"christian-god"},
	Date = 811, -- archbishop of Canterbury in 811
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "kent" or GetPlayerData(trigger_player, "Faction") == "englaland") then
			return true
		end
		return false
	end
})

DefineCharacter("egbert-of-wessex", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 95.
	Name = "Egbert",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "wessex",
	Date = 829,
	HistoricalTitles = {
		"head-of-state", 829, 0, "wessex" -- was king of Wessex in 829 when Eanred of Northumbria submitted to him
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("swithun", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 147.
	Name = "Swithun",
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop
	Civilization = "anglo-saxon",
	Faction = "wessex",
	Date = 858, -- was bishop at Winchester as of 858
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "wessex") then
			return true
		end
		return false
	end
})

DefineCharacter("aethelbald-of-wessex", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 147.
	Name = "Aethelbald", -- "Æthelbald"
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "anglo-saxon",
	Faction = "wessex",
	Date = 858,
	HistoricalTitles = {
		"head-of-state", 858, 0, "wessex" -- was king of Wessex as of 858
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
	Civilization = "anglo-saxon",
	Date = 1002 -- massacred the Danes in 1002
})

DefineCharacter("nicolas-breakspear", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 126.
	Name = "Nicolas", -- son of a peasant employed in the Benedictine monastery of Saint Albans in Hertfordshire; was educated by the monks there; later became a cardinal and was sent on a mission to Norway to settle the Church there; was elected Pope in 1154 AD under the title of Hadrian IV
	ExtraName = "Breakspear", -- I assume this isn't his family name, but a nickname or something of the sort
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "anglo-saxon", -- English?
	Faction = "england",
	Deities = {"christian-god"},
	Date = 1154, -- elected Pope
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "england") then
			return true
		end
		return false
	end
})
--]]
