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
--      (c) Copyright 2015-2018 by Andrettin
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

DefineCharacter("athanagild", { -- Visigothic king; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Athanagild",
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "visigothia",
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 0, 0, "visigothia"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "visigoth-tribe" or GetPlayerData(trigger_player, "Faction") == "visigothia") then
			return true
		end
		return false
	end
})

DefineCharacter("brunichilde", { -- Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, pp. 328, 330.
	Name = "Brunichilde",
	Gender = "female",
	Type = "unit-gothic-horse-rider",
	Civilization = "goth",
	Faction = "visigothia",
	Trait = "upgrade-intelligent", -- described as refined, attractive, good-mannered, intelligent and socially affable
	DeathDate = 613, -- died in 613
	Deities = {"christian-god"},
	Father = "athanagild", -- daughter of the Visigothic king Athanagild
	-- became Brünhild in the myths
	-- in the Norse myths, Brynhild requested Gotthorm to kill Sigurd; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 226.
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "visigoth-tribe" or GetPlayerData(trigger_player, "Faction") == "visigothia") then
			return true
		end
		return false
	end
})

DefineCharacter("gailswintha", { -- Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, pp. 328-329.
	Name = "Gailswintha",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "goth",
	Faction = "visigothia",
	Deities = {"christian-god"},
	Father = "athanagild", -- daughter of the Visigothic king Athanagild
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "visigoth-tribe" or GetPlayerData(trigger_player, "Faction") == "visigothia") then
			return true
		end
		return false
	end
})

DefineCharacter("witiza", { -- Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 400.
	Name = "Witiza",
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "visigothia",
	Deities = {"christian-god"},
	Date = 700, -- reign began
	DeathDate = 710, -- reign ended
	HistoricalTitles = {
		"head-of-state", 700, 710, "visigothia" -- Visigothic king, reigning 700-710
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "visigoth-tribe" or GetPlayerData(trigger_player, "Faction") == "visigothia") then
			return true
		end
		return false
	end
})
