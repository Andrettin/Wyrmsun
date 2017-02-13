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

DefineMapTemplate("earth", {
	Name = "Earth",
	World = "Earth",
	Width = 8192,
	Height = 4096,
	TerrainFile = "scripts/map_templates/earth.map",
	GeneratedTerrains = {
		"rock", "low",
		"grass", "extremely-high",
		"dirt", "medium",
		"pine-tree", "high"
	},
	GeneratedNeutralUnits = {
		"unit-bee", 64,
		"unit-fly", 64,
		"unit-bug", 64,
		"unit-worm", 64,
		"unit-snail", 64,
		"unit-slug", 64,
		"unit-frog", 64,
		"unit-bird", 64,
		"unit-crow", 64,
		"unit-rat", 64,
		"unit-goat", 32,
		"unit-boar", 32,
		"unit-horse", 16,
		"unit-wolf", 32,
--		"unit-mercenary-camp", 4
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 8
	}
})

--SetMapTemplateLayerConnector("earth", "unit-portal", {-1, -1}, "Asgard")

EarthStartX = 4022
EarthStartY = 667

-- Alps (some rock seeds to make it more likely that the game will generate rocks there)
SetMapTemplateTileTerrain("earth", "rock", 4084, 982)
SetMapTemplateTileTerrain("earth", "rock", 4084, 983)
SetMapTemplateTileTerrain("earth", "rock", 4085, 981)
SetMapTemplateTileTerrain("earth", "rock", 4085, 982)
SetMapTemplateTileTerrain("earth", "rock", 4085, 983)
SetMapTemplateTileTerrain("earth", "rock", 4086, 981)
SetMapTemplateTileTerrain("earth", "rock", 4086, 982)
SetMapTemplateTileTerrain("earth", "rock", 4086, 983)
SetMapTemplateTileTerrain("earth", "rock", 4087, 980)
SetMapTemplateTileTerrain("earth", "rock", 4087, 981)
SetMapTemplateTileTerrain("earth", "rock", 4087, 983)
SetMapTemplateTileTerrain("earth", "rock", 4088, 980)
SetMapTemplateTileTerrain("earth", "rock", 4088, 983)
SetMapTemplateTileTerrain("earth", "rock", 4089, 983)
SetMapTemplateTileTerrain("earth", "rock", 4090, 983)
SetMapTemplateTileTerrain("earth", "rock", 4091, 976)
SetMapTemplateTileTerrain("earth", "rock", 4092, 976)
SetMapTemplateTileTerrain("earth", "rock", 4092, 977)
SetMapTemplateTileTerrain("earth", "rock", 4092, 978)
SetMapTemplateTileTerrain("earth", "rock", 4092, 979)
SetMapTemplateTileTerrain("earth", "rock", 4093, 977)
SetMapTemplateTileTerrain("earth", "rock", 4093, 978)
SetMapTemplateTileTerrain("earth", "rock", 4093, 979)
SetMapTemplateTileTerrain("earth", "rock", 4094, 979)
SetMapTemplateTileTerrain("earth", "rock", 4094, 980)
SetMapTemplateTileTerrain("earth", "rock", 4095, 979)
SetMapTemplateTileTerrain("earth", "rock", 4096, 979)
SetMapTemplateTileTerrain("earth", "rock", 4118, 975)
SetMapTemplateTileTerrain("earth", "rock", 4118, 976)
SetMapTemplateTileTerrain("earth", "rock", 4118, 977)
SetMapTemplateTileTerrain("earth", "rock", 4119, 976)
SetMapTemplateTileTerrain("earth", "rock", 4119, 977)
SetMapTemplateTileTerrain("earth", "rock", 4120, 975)
SetMapTemplateTileTerrain("earth", "rock", 4120, 976)
SetMapTemplateTileTerrain("earth", "rock", 4121, 975)
SetMapTemplateTileTerrain("earth", "rock", 4121, 976)
SetMapTemplateTileTerrain("earth", "rock", 4122, 976)
SetMapTemplateTileTerrain("earth", "rock", 4128, 976)
SetMapTemplateTileTerrain("earth", "rock", 4129, 975)
SetMapTemplateTileTerrain("earth", "rock", 4129, 976)
SetMapTemplateTileTerrain("earth", "rock", 4146, 993)
SetMapTemplateTileTerrain("earth", "rock", 4149, 967)
SetMapTemplateTileTerrain("earth", "rock", 4150, 967)
SetMapTemplateTileTerrain("earth", "rock", 4154, 993)
SetMapTemplateTileTerrain("earth", "rock", 4159, 963)

Load("scripts/map_templates/earth/asia_minor.lua")
Load("scripts/map_templates/earth/austria.lua")
Load("scripts/map_templates/earth/bohemia.lua")
Load("scripts/map_templates/earth/croatia.lua")
Load("scripts/map_templates/earth/denmark.lua")
Load("scripts/map_templates/earth/france.lua")
Load("scripts/map_templates/earth/germany.lua")
Load("scripts/map_templates/earth/gotland.lua")
Load("scripts/map_templates/earth/great_britain.lua")
Load("scripts/map_templates/earth/greece.lua")
Load("scripts/map_templates/earth/ireland.lua")
Load("scripts/map_templates/earth/italy.lua")
Load("scripts/map_templates/earth/netherlands.lua")
Load("scripts/map_templates/earth/north_africa.lua")
Load("scripts/map_templates/earth/portugal.lua")
Load("scripts/map_templates/earth/romania.lua")
Load("scripts/map_templates/earth/slovakia.lua")
Load("scripts/map_templates/earth/spain.lua")
Load("scripts/map_templates/earth/sweden.lua")
Load("scripts/map_templates/earth/switzerland.lua")