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

SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-stronghold", "Norlund Clan", {11, 11}, 25) -- main stronghold of Rugnur's clan

-- villages
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {1, 7}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {1, 17}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {2, 18}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {3, 7}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {3, 15}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {3, 17}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {4, 8}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {5, 15}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {6, 7}, 25)
--SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {7, 11}, 25)
--SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {9, 8}, 25)
--SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {9, 14}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {11, 18}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {11, 20}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {12, 22}, 25)
--SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {13, 8}, 25)
--SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {13, 14}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {13, 17}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {13, 19}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {14, 21}, 25)
--SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {15, 11}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {17, 13}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {17, 15}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {18, 6}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {18, 8}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {18, 17}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {19, 16}, 25)
SetMapTemplateHistoricalUnit("caverns-of-chaincolt-city", "unit-dwarven-mushroom-farm", "Norlund Clan", {20, 6}, 25)
