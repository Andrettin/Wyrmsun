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
--      (c) Copyright 2017-2019 by Andrettin
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

DefineCharacter("ambiorix", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
	Name = "Ambiorix",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "gaul",
	Faction = "eburones-tribe",
	StartDate = -54,
	HistoricalTitles = {
		"head-of-state", -54, 0, "eburones-tribe" -- was chieftain of the Eburones tribe in 54 BC (together with Cativolcus)
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "eburones-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("cativolcus", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223, 225.
	Name = "Cativolcus",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "gaul",
	Faction = "eburones-tribe",
	StartDate = -54,
	DeathDate = -53, -- poisoned himself after the Romans devastated the lands of his people
	ViolentDeath = true,
	Trait = "upgrade-old",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "eburones-tribe") then
			return true
		end
		return false
	end
	-- was chieftain of the Eburones tribe in 54 BC (together with Ambiorix)
})

DefineCharacter("indutiomarus", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 224.
	Name = "Indutiomarus",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "gaul",
	Faction = "treviri-tribe",
	StartDate = -54,
	HistoricalTitles = {
		"head-of-state", -54, 0, "treviri-tribe" -- was chieftain of the Treviri in 54 BC
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "treviri-tribe") then
			return true
		end
		return false
	end
})