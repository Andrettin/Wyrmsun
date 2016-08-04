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

DefineTerrainType("dirt", {
	Name = "Dirt",
	Flags = {"land", "no-building", "dirt"},
	Graphics = "terrain/dirt.png",
	SolidTiles = {0, 1, 2}
})

DefineTerrainType("mud", {
	Name = "Mud",
	Flags = {"land", "no-building", "mud"},
	BorderTerrains = {"dirt"},
--	SolidGraphics = {"terrain/mud/mud_1.png", "terrain/mud/mud_2.png", "terrain/mud/mud_3.png"}
})

DefineTerrainType("rockbound-cave-floor", {
	Name = "Rockbound Cave Floor",
	Flags = {"land", "no-building", "gravel"}
})

DefineTerrainType("cave-floor", {
	Name = "Cave Floor",
	Buildable = true,
	Flags = {"land", "stone-floor"},
	BorderTerrains = {"rockbound-cave-floor"}
})

DefineTerrainType("dry-mud", {
	Name = "Dry Mud",
	Buildable = true,
	Flags = {"land", "mud"},
	BorderTerrains = {"mud"},
	Graphics = "terrain/dry_mud.png",
	SolidTiles = {17, 20, 23},
	TransitionTiles = {
		"any", "north", 1,
		"any", "north", 4,
		"any", "north", 7,
		"any", "south", 33,
		"any", "south", 36,
		"any", "south", 39,
		"any", "west", 16,
		"any", "west", 19,
		"any", "west", 22,
		"any", "east", 18,
		"any", "east", 21,
		"any", "east", 24,
		"any", "northwest-outer", 0,
		"any", "northwest-outer", 3,
		"any", "northeast-outer", 2,
		"any", "northeast-outer", 5,
		"any", "southwest-outer", 32,
		"any", "southwest-outer", 35,
		"any", "southeast-outer", 34,
		"any", "southeast-outer", 37,
		"any", "northwest-inner", 48,
		"any", "northwest-inner", 50,
		"any", "northeast-inner", 49,
		"any", "northeast-inner", 51,
		"any", "southwest-inner", 64,
		"any", "southwest-inner", 66,
		"any", "southeast-inner", 65,
		"any", "southeast-inner", 67
	}
})

DefineTerrainType("grass", {
	Name = "Grass",
	Buildable = true,
	Flags = {"land", "grass"},
	BorderTerrains = {"dirt"},
	Graphics = "terrain/grass.png",
	SolidTiles = {1, 2, 3},
	TransitionTiles = {
		"any", "north", 28,
		"any", "north", 30,
		"any", "north", 32,
		"any", "south", 22,
		"any", "south", 24,
		"any", "south", 26,
		"any", "west", 29,
		"any", "west", 31,
		"any", "west", 33,
		"any", "east", 21,
		"any", "east", 23,
		"any", "east", 25,
		"any", "northwest-outer", 35,
		"any", "northwest-outer", 37,
		"any", "northwest-outer", 39,
		"any", "northeast-outer", 36,
		"any", "northeast-outer", 38,
		"any", "northeast-outer", 40,
		"any", "southwest-outer", 42,
		"any", "southwest-outer", 44,
		"any", "southwest-outer", 46,
		"any", "southeast-outer", 43,
		"any", "southeast-outer", 45,
		"any", "southeast-outer", 47,
		"any", "northwest-inner", 15,
		"any", "northwest-inner", 17,
		"any", "northwest-inner", 19,
		"any", "northeast-inner", 14,
		"any", "northeast-inner", 16,
		"any", "northeast-inner", 18,
		"any", "southwest-inner", 8,
		"any", "southwest-inner", 10,
		"any", "southwest-inner", 12,
		"any", "southeast-inner", 7,
		"any", "southeast-inner", 9,
		"any", "southeast-inner", 11
	}
})

DefineTerrainType("shallow-water", {
	Name = "Shallow Water",
	Flags = {"water"},
	BorderTerrains = {"dirt", "mud", "rockbound-cave-floor", "cave-floor"}
})

DefineTerrainType("floor", {
	Name = "Floor",
	Buildable = true,
	Flags = {"land", "stone-floor"},
	BorderTerrains = {"rockbound-cave-floor"}
})

DefineTerrainType("rug", {
	Name = "Rug",
	Buildable = true,
	Flags = {"land", "grass"},
	BorderTerrains = {"floor"}
})

DefineTerrainType("dungeon-wall", {
	Name = "Dungeon Wall",
	Buildable = true,
	BaseTerrains = {"floor"},
	Overlay = true,
	Flags = {"land", "wall", "unpassable", "air-unpassable"}
})

DefineTerrainType("cave-wall", {
	Name = "Cave Wall",
	BaseTerrains = {"rockbound-cave-floor"},
	Overlay = true,
	Flags = {"land", "rock", "unpassable", "air-unpassable"}
})

DefineTerrainType("rock", {
	Name = "Rock",
	BaseTerrains = {"dirt", "mud"},
	Overlay = true,
	Flags = {"land", "rock", "unpassable"},
--	SolidGraphics = {"terrain/rock/rock_1.png", "terrain/rock/rock_2.png", "terrain/rock/rock_3.png"}
})

DefineTerrainType("rock-swamp", {
	Name = "Rock",
	BaseTerrains = {"mud"},
	Overlay = true,
	Flags = {"land", "rock", "unpassable"},
--	SolidGraphics = {"terrain/rock/rock_1.png", "terrain/rock/rock_2.png", "terrain/rock/rock_3.png"}
})

DefineTerrainType("fairlimbed-tree", {
	Name = "Fairlimbed Tree",
	BaseTerrains = {"grass"},
	Overlay = true,
	Flags = {"land", "forest", "unpassable"}
})

DefineTerrainType("flamefood-tree", {
	Name = "Flamefood Tree",
	BaseTerrains = {"dry-mud"},
	Overlay = true,
	Flags = {"land", "forest", "unpassable"}
})

DefineTerrainType("pine-tree", {
	Name = "Pine Tree",
	BaseTerrains = {"grass"},
	Overlay = true,
	Flags = {"land", "forest", "unpassable"},
	--[[
	SolidGraphics = {"terrain/pine_tree/pine_tree.png"},
	TransitionGraphics = {
		"any", "north", "terrain/pine_tree/pine_tree_north.png",
		"any", "south", "terrain/pine_tree/pine_tree_south.png",
		"any", "west", "terrain/pine_tree/pine_tree_west.png",
		"any", "east", "terrain/pine_tree/pine_tree_east.png",
		"any", "northwest-outer", "terrain/pine_tree/pine_tree_northwest_outer.png",
		"any", "northeast-outer", "terrain/pine_tree/pine_tree_northeast_outer.png",
		"any", "southwest-outer", "terrain/pine_tree/pine_tree_southwest_outer.png",
		"any", "southeast-outer", "terrain/pine_tree/pine_tree_southeast_outer.png",
		"any", "northwest-inner", "terrain/pine_tree/pine_tree_northwest_inner.png",
		"any", "northeast-inner", "terrain/pine_tree/pine_tree_northeast_inner.png",
		"any", "southwest-inner", "terrain/pine_tree/pine_tree_southwest_inner.png",
		"any", "southeast-inner", "terrain/pine_tree/pine_tree_southeast_inner.png"
	}
	--]]
})
