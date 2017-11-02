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

DefineCharacter("alboin", { -- king of the Lombards (from 560 to 572); Source: "Medieval Warfare IV.6", 2013, p. 8.
	Name = "Alboin",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- king
	Civilization = "teuton",
	Faction = "lombardy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "lombardy") then
			return true
		end
		return false
	end
})

DefineCharacter("gisulf", { -- Lombardic duke and nephew of Alboin (king of the Lombards); Source: "Medieval Warfare IV.6", 2013, p. 8.
	Name = "Gisulf",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- duke
	Civilization = "teuton",
	Faction = "lombardy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "lombardy") then
			return true
		end
		return false
	end
})

DefineCharacter("authari", { -- king of the Lombards (from 584 to 590); Source: "Medieval Warfare IV.6", 2013, p. 16.
	Name = "Authari",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- king
	Civilization = "teuton",
	Faction = "lombardy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "lombardy") then
			return true
		end
		return false
	end
})

DefineCharacter("agilulf", { -- king of the Lombards (from 591 to 616); Source: "Medieval Warfare IV.6", 2013, p. 18.
	Name = "Agilulf",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- king
	Civilization = "teuton",
	Faction = "lombardy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "lombardy") then
			return true
		end
		return false
	end
})

DefineCharacter("perctarit", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 136.
	Name = "Perctarit",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- king
	Civilization = "teuton",
	Faction = "lombardy",
	Date = 678, -- was king of the Lombards as of 678
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "lombardy") then
			return true
		end
		return false
	end
})

DefineCharacter("liudprand", { -- given by Medieval Warfare as "Liutprand", and by Archibald Lewis as "Liudprand"; king of the Lombards (from 712 to 744); Source: "Medieval Warfare IV.6", 2013, p. 9; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 400.
	Name = "Liudprand",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- king
	Civilization = "teuton",
	Faction = "lombardy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "lombardy") then
			return true
		end
		return false
	end
})

DefineCharacter("aistulf", { -- king of the Lombards (from 749 to 756); Source: "Medieval Warfare IV.6", 2013, p. 9.
	Name = "Aistulf",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- king
	Civilization = "teuton",
	Faction = "lombardy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "lombardy") then
			return true
		end
		return false
	end
})

DefineCharacter("desiderius", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Desiderius",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- king
	Civilization = "teuton",
	Faction = "lombardy",
	Date = 772, -- was king of the Lombards in 772, when Carloman the Younger Carolingian's wife fled to his court
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 772, 0, "lombardy" -- was king of the Lombards in 772, when Carloman the Younger Carolingian's wife fled to his court
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "lombardy") then
			return true
		end
		return false
	end
})

DefineCharacter("arichis", { -- Lombard duke of Benevento; Source: "Medieval Warfare IV.6", 2013, p. 18.
	Name = "Arichis",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- duke
	Civilization = "teuton",
	Faction = "lombardy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "lombardy") then
			return true
		end
		return false
	end
})

DefineCharacter("ariulf", { -- Lombard duke of Spoleto; Source: "Medieval Warfare IV.6", 2013, p. 18.
	Name = "Ariulf",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- duke
	Civilization = "teuton",
	Faction = "lombardy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "lombardy") then
			return true
		end
		return false
	end
})

DefineCharacter("nordulf", { -- Lombard mercenary who after years of service obtained the title of patrician from the Byzantines; Source: "Medieval Warfare IV.6", 2013, p. 18.
	Name = "Nordulf",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman",
	Civilization = "teuton",
	Faction = "lombardy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "lombardy") then
			return true
		end
		return false
	end
})
