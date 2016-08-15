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

DefineMapTemplate("caverns-of-chaincolt-city", { -- From Battle for Wesnoth: The Sceptre of Fire
	Name = "Caverns of Chaincolt City",
	MainTemplate = "nidavellir",
	Width = 26,
	Height = 26,
	TerrainFile = "scripts/map_templates/caverns_of_chaincolt_city.map",
	OverlayTerrainFile = "scripts/map_templates/caverns_of_chaincolt_city_overlay.map",
	ExternalGeneratedTerrains = {
		"rockbound-cave-floor", "medium",
		"cave-wall", "high"
	},
	PlayerLocationGeneratedResources = {
		"unit-gold-deposit", 1,
		"unit-wood-pile", 16
	}
})

-- Situation as of The Sceptre of Fire (which begins 25 YW)

--[[
SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-stronghold", "", {11, 11}, 25) -- main stronghold of Rugnur's clan

-- villages
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {1, 7}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {1, 17}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {2, 18}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {3, 7}, 25)
SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {3, 15}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {3, 17}, 25)
SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {4, 8}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {5, 15}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {6, 7}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {7, 11}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {9, 8}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {9, 14}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {11, 18}, 25)
SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {11, 20}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {12, 22}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {13, 8}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {13, 14}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {13, 17}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {13, 19}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {14, 21}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {15, 11}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {17, 13}, 25)
SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {17, 15}, 25)
SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {18, 6}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {18, 8}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {18, 17}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {19, 16}, 25)
--SetMapTemplateUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "", {20, 6}, 25)
--]]