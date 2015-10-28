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
--      grand_strategy_terrain_types.lua - Defines the terrain types for the grand strategy mode.
--
--      (c) Copyright 2015 by Andrettin
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

DefineWorldMapTerrainTypes(
	"terrain-type", {
		"name", "Plains",
		"tag", "plains",
		"variations", 5
	},
	"terrain-type", {
		"name", "Dark Plains",
		"tag", "dark_plains",
		"variations", 5
	},
	"terrain-type", {
		"name", "Hills",
		"tag", "hills",
		"base-tile", "Plains",
		"has-transitions", true,
		"variations", 5
	},
	"terrain-type", {
		"name", "Mountains",
		"tag", "mountains",
		"base-tile", "Plains",
		"has-transitions", true,
		"variations", 1
	},
	"terrain-type", {
		"name", "Water",
		"tag", "ocean",
		"base-tile", "Plains",
		"water", true,
		"has-transitions", true,
		"variations", 4
	},
	"terrain-type", {
		"name", "Conifer Forest",
		"tag", "conifer_forest",
		"base-tile", "Plains",
		"has-transitions", true,
		"variations", 2
	},
	"terrain-type", {
		"name", "Scrub Forest",
		"tag", "scrub_forest",
		"base-tile", "Plains",
		"variations", 4
	}
)

SetResourceGrandStrategyBuildingTerrainSpecificGraphic("gold", "Mountains", true)
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("silver", "Mountains", true)
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("copper", "Mountains", true)
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("lumber", "Conifer Forest", true) -- has to be placed here, rather than in the resources.lua file, because terrain types are loaded after resources
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("stone", "Mountains", true)
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("mushrooms", "Hills", true)
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("mushrooms", "Mountains", true)