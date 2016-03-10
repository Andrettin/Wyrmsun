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
--      (c) Copyright 2015-2016 by Andrettin
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

DefineWorldMapTerrainType("Plains", {
	Tag = "plains",
	Variations = 5
})

DefineWorldMapTerrainType("Dark Plains", {
	Tag = "dark_plains",
	Variations = 5
})

DefineWorldMapTerrainType("Hills", {
	Tag = "hills",
	BaseTile = "Plains",
	HasTransitions = true,
	Variations = 5
})

DefineWorldMapTerrainType("Mountains", {
	Tag = "mountains",
	BaseTile = "Plains",
	HasTransitions = true,
	Variations = 1
})

DefineWorldMapTerrainType("Water", {
	Tag = "ocean",
	BaseTile = "Plains",
	Water = true,
	HasTransitions = true,
	Variations = 4
})

DefineWorldMapTerrainType("Conifer Forest", {
	Tag = "conifer_forest",
	BaseTile = "Plains",
	HasTransitions = true,
	Variations = 2
})

DefineWorldMapTerrainType("Scrub Forest", {
	Tag = "scrub_forest",
	BaseTile = "Plains",
	Variations = 4
})

SetResourceGrandStrategyBuildingTerrainSpecificGraphic("gold", "Mountains", true)
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("silver", "Mountains", true)
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("copper", "Mountains", true)
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("lumber", "Conifer Forest", true) -- has to be placed here, rather than in the resources.lua file, because terrain types are loaded after resources
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("stone", "Mountains", true)
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("mushrooms", "Hills", true)
SetResourceGrandStrategyBuildingTerrainSpecificGraphic("mushrooms", "Mountains", true)