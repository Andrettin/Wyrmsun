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
--      (c) Copyright 2015-2017 by Andrettin
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

DefineCharacter("hraudung", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 59.
	Name = "Hraudung", -- king of the Goths in the Lay of Grimnir
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "goth-tribe",
	Deities = {"odin", "tyr"}
})

DefineCharacter("agnar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 59-60.
	Name = "Agnar", -- Hraudung's eldest son in the Lay of Grimnir, who was sent away in a boat by his brother Geirrod, but eventually found his way to a cave where he mated with a giantess
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "goth-tribe",
	Father = "hraudung",
	Deities = {"odin", "hel"}
})

DefineCharacter("geirrod", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 59-60, 64.
	Name = "Geirrod", -- Hraudung's younger son in the Lay of Grimnir, who sent his brother Agnar away and then became king (Hraudung had died while they were away); died by falling on his own sword
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "goth-tribe",
	Trait = "upgrade-cruel", -- was a cruel, tyrannical ruler; had sudden fits of anger; nevertheless, was generous and welcoming of guests
	Father = "hraudung",
	Deities = {"odin", "tyr"}
})

DefineCharacter("agnar-ii", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 60-61, 64.
	Name = "Agnar", -- Geirrod's son, named after Geirrod's brother; ruled for a long time after succeeding Geirrod
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "goth-tribe",
	Trait = "upgrade-compassionate", -- when Grimnir (Odin in disguise) suffered, Agnar suffered with him; gave Grimnir a horn with drink
	Father = "geirrod",
	Deities = {"odin", "tyr"}
})

DefineCharacter("airmanareiks", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 225-226, 536, 552; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 22; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18.
	Name = "Airmanareiks", -- king of the East Goths; also known as Ermanaric or Ermanarich; known as Ermenrich in High German; known as Jormunrek in the Norse myths; in Norse tradition, slew his own sons; in the Norse myths married with Sigurd's daughter Svanhild and slew her (it would, however, have been impossible for Sigurd to be a contemporary of Gundahar/Gunnar and his daughter and Ermanaric have married); in the Dietrich saga, was the uncle of Dietrich who expelled him from his possessions (he could not have been a contemporary of Dietrich/Theodoric, however)
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "ostrogoth-tribe",
	Trait = "upgrade-cruel", -- described as generous, cruel, wrathful, faithless, savage; Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, p. xxx.
	DeathDate = 376, -- died
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 0, 376, "ostrogoth-tribe"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "ostrogoth-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("frithareiks", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 26.
	-- son of Ermenrich (= Airmanareiks) in the Dietrich Saga; in the saga he was taken prisoner by Dietrich, but he couldn't have been a contemporary of Dietrich if he was a son of Airmanareiks
	Name = "Frithareiks", -- "Friþareiks"; in the saga his name is "Friedrich"; this is a tentative rendering of the name in Gothic, based on the cognates of the components of the original German name
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "ostrogoth-tribe",
	Father = "airmanareiks",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "ostrogoth-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("walamer-amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
	Name = "Walamer", -- king of the Ostrogoths; invaded Illyria in 462 AD
	FamilyName = "Amelung",
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "ostrogoth-tribe",
	Date = 453, -- ruled over the Ostrogoths when Attila died and his Hunnic empire collapsed in 453 AD
	DeathDate = 472, -- died
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 453, 472, "ostrogoth-tribe"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "ostrogoth-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("theodemer-amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 6-7.
	Name = "Theodemer", -- brother of Walamer
	FamilyName = "Amelung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "ostrogoth-tribe",
	Date = 472,
	DeathDate = 474, -- died
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 472, 474, "ostrogoth-tribe" -- by 472 AD Theodemer has become king of the Ostrogoths; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 6-7.
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "ostrogoth-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("widemer-amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
	Name = "Widemer", -- brother of Walamer
	FamilyName = "Amelung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "ostrogoth-tribe",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "ostrogoth-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("thiudareiks-amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 6-7, 9.
	-- king of the Ostrogoths; Dietrich von Bern in the German sagas; was given as a hostage by Walamer to the Romans, and thus stayed for 10 years (until 472 AD) in the Byzantine court; his religion was Arian Christianity
	Name = "Thiudareiks", -- "Þiudareiks"; tentative rendering of the name in Gothic, based on the cognates of the German version of the name, "Dietrich"; also known as "Theoderic"
	FamilyName = "Amelung",
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "ostrogoth-tribe",
	Date = 454, -- born (was 8 years old in 462 AD)
	DeathDate = 526, -- died; he was put in a magnificent marble tomb in Ravenna
	Father = "theodemer-amelung",
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 474, 526, "ostrogoth-tribe" -- In 474 AD the Ostrogoths left Pannonia to settle in Macedonia under the aegis of the Eastern Roman Emperor, and in that same year Theodemer died, being succeeded by Theoderic; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 7.
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "ostrogoth-tribe" or GetPlayerData(trigger_player, "Faction") == "ostrogothia") then
			return true
		end
		return false
	end
})

DefineCharacter("odoacer", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 7-9.
	Name = "Odoacer",
	Gender = "male",
	Type = "unit-gothic-horse-lord",
	Civilization = "goth",
	Date = 480, -- Odoacer deposed Romulus Augustus in 480 AD, going then on to rule Italy as an independent king
	DeathDate = 493, -- was put to death by Theoderic in 493 AD
	ViolentDeath = true,
	Deities = {"christian-god"}
})

DefineCharacter("tufa", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 8-9.
	Name = "Tufa", -- follower of Odoacer who deserted to Theoderic in or just after 489 AD, only to return his allegiance to Odoacer afterwards, betraying Theoderic
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Date = 489,
	DeathDate = 493, -- was probably put to death by Theoderic in 493 AD when the defenders of Ravenna (including Odoacer) were
	Deities = {"christian-god"}
})

DefineCharacter("vulfshardus", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 28-29, 63.
	-- follower of Dietrich (= Theoderic, gothic king) in the Dietrich Saga; hot-headed (source pp. 28-29); young and ever thirsting for the fray (source p. 63)
	Name = "Vulfshardus", -- in the saga his name is "Wolfhart"; this is a tentative rendering of the name in Gothic, based on the cognates of the original German name
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "ostrogoth-tribe",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "ostrogoth-tribe" or GetPlayerData(trigger_player, "Faction") == "ostrogothia") then
			return true
		end
		return false
	end
})

DefineCharacter("brunichilde", { -- daughter of the Visigothic king Athanagild; refined, attractive, good-mannered, intelligent and socially affable; became Brünhild in the myths; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, pp. 328, 330.
	Name = "Brunichilde",
	Gender = "female",
	Type = "unit-gothic-horse-rider",
	Civilization = "goth",
	Faction = "visigothia",
	Trait = "upgrade-intelligent",
	DeathDate = 613, -- died in 613
	Deities = {"christian-god"},
	-- in the Norse myths, Brynhild requested Gotthorm to kill Sigurd; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 226.
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "visigoth-tribe" or GetPlayerData(trigger_player, "Faction") == "visigothia") then
			return true
		end
		return false
	end
})

Load("scripts/civilizations/goth/characters_burgundian.lua")
