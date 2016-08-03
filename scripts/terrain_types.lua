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
	SolidGraphics = {"terrain/dirt/dirt_1.png", "terrain/dirt/dirt_2.png", "terrain/dirt/dirt_3.png"}
})

DefineTerrainType("mud", {
	Name = "Mud"
})

DefineTerrainType("rockbound-cave-floor", {
	Name = "Rockbound Cave Floor"
})

DefineTerrainType("cave-floor", {
	Name = "Cave Floor",
	Buildable = true,
	BorderTerrains = {"rockbound-cave-floor"}
})

DefineTerrainType("dry-mud", {
	Name = "Dry Mud",
	Buildable = true,
	BorderTerrains = {"mud"}
})

DefineTerrainType("grass", {
	Name = "Grass",
	Buildable = true,
	BorderTerrains = {"dirt"},
	SolidGraphics = {"terrain/grass/grass_1.png", "terrain/grass/grass_2.png", "terrain/grass/grass_3.png"}
})

DefineTerrainType("shallow-water", {
	Name = "Shallow Water",
	BorderTerrains = {"dirt", "mud", "rockbound-cave-floor"}
})

DefineTerrainType("floor", {
	Name = "Floor",
	Buildable = true,
	BorderTerrains = {"rockbound-cave-floor"}
})

DefineTerrainType("rug", {
	Name = "Rug",
	Buildable = true,
	BorderTerrains = {"floor"}
})

DefineTerrainType("dungeon-wall", {
	Name = "Dungeon Wall",
	Buildable = true,
	DefaultBaseTerrain = "floor",
	Overlay = true
})

DefineTerrainType("cave-wall", {
	Name = "Cave Wall",
	DefaultBaseTerrain = "rockbound-cave-floor",
	Overlay = true
})

DefineTerrainType("rock", {
	Name = "Rock",
	DefaultBaseTerrain = "dirt",
	Overlay = true
})

DefineTerrainType("swamp-rock", {
	Name = "Rock (Swamp)",
	DefaultBaseTerrain = "mud",
	Overlay = true,
	SolidGraphics = {"terrain/rock/rock_1.png", "terrain/rock/rock_2.png", "terrain/rock/rock_3.png"}
})

DefineTerrainType("fairlimbed-tree", {
	Name = "Fairlimbed Tree",
	DefaultBaseTerrain = "grass",
	Overlay = true
})

DefineTerrainType("flamefood-tree", {
	Name = "Flamefood Tree",
	DefaultBaseTerrain = "dry-mud",
	Overlay = true
})

DefineTerrainType("pine-tree", {
	Name = "Pine Tree",
	DefaultBaseTerrain = "grass",
	Overlay = true,
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
})
