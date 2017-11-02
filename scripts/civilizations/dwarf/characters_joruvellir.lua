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
--      (c) Copyright 2017 by Andrettin
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

DefineCharacter("draupnir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 7-8.
	Name = "Draupnir",
	Gender = "male",
	Type = "unit-joruvellir-explorer",
	Civilization = "dwarf",
	Faction = "goldhoof-clan",
	Description = "The chieftain of the Goldhoof clan, Draupnir led his people to their new homes in Joruvellir.",
	Background = "In Norse mythology, Draupnir is the first dwarf mentioned in the ~<Voluspo~> to have migrated from the rocks to Joruvellir. His name means \"dropper\".",
	Trait = "upgrade-dextrous",
	Date = -2800,
	ForbiddenUpgrades = {"unit-dwarven-gryphon-rider"},
	Deities = {"thor", "tyr"},
	HistoricalLocations = {
		-2800, "nidavellir", {706, 222}
	},
	HistoricalTitles = {
		"head-of-state", -2800, -2800 + 30, "goldhoof-clan"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "goldhoof-clan" or GetPlayerData(trigger_player, "Faction") == "joruvellir") then
			return true
		end
		return false
	end
})

DefineCharacter("eikinskjaldi", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 7-8.
	Name = "Eikinskjaldi",
	Gender = "male",
	Type = "unit-dwarven-guard",
	Civilization = "dwarf",
	Faction = "goldhoof-clan",
	Description = "Eikinskjaldi was one of the Goldhoof dwarves who moved from Svarinshaug to Joruvellir under the leadership of Draupnir. His descendants formed their own clan in the desert sands he had moved to.",
	Background = "In Norse mythology, Eikinskjaldi is one of the dwarves mentioned in the ~<Voluspo~> to have migrated from the rocks to Joruvellir. His name means \"oaken shield\".",
	Trait = "upgrade-resilient",
	Date = -2800,
	Deities = {"odin", "tyr"},
	HistoricalLocations = {
		-2800, "nidavellir", {706, 222}
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "goldhoof-clan" or GetPlayerData(trigger_player, "Faction") == "eikinskjaldi-clan" or GetPlayerData(trigger_player, "Faction") == "joruvellir") then
			return true
		end
		return false
	end
})

DefineCharacter("frosti", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 7-8.
	Name = "Frosti",
	Gender = "male",
	Type = "unit-joruvellir-yale-rider",
	Civilization = "dwarf",
	Faction = "goldhoof-clan",
	Description = "Frosti was one of the Goldhoof dwarves who moved from Svarinshaug to Joruvellir under the leadership of Draupnir.",
	Background = "In Norse mythology, Eikinskjaldi is one of the dwarves mentioned in the ~<Voluspo~> to have migrated from the rocks to Joruvellir.",
	Trait = "upgrade-resilient",
	Date = -2800,
	Deities = {"odin", "tyr"},
	HistoricalLocations = {
		-2800, "nidavellir", {706, 222}
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "goldhoof-clan" or GetPlayerData(trigger_player, "Faction") == "joruvellir") then
			return true
		end
		return false
	end
})
