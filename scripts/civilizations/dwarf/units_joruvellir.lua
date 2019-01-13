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
--      (c) Copyright 2016-2019 by Andrettin
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

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-joruvellir-scout", {
	Parent = "unit-dwarven-scout",
	Civilization = "dwarf",
	Faction = "goldhoof-clan",
	Icon = "icon-joruvellir-scout-black-hair",
	Variations = {
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/dwarven_scout_black_hair.png",
			"icon", "icon-joruvellir-scout-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 16
		},
		{
			"variation-id", "black-hair-beardless",
			"file", "dwarf/units/dwarven_scout_black_hair_beardless.png",
			"icon", "icon-joruvellir-scout-black-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "orange-hair",
			"file", "dwarf/units/dwarven_scout.png",
			"icon", "icon-joruvellir-scout-orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "orange-hair-beardless",
			"file", "dwarf/units/dwarven_scout_beardless.png",
			"icon", "icon-joruvellir-scout-orange-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-joruvellir-scout-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "blond-hair-beardless",
			"file", "dwarf/units/dwarven_scout_blond_hair_beardless.png",
			"icon", "icon-joruvellir-scout-blond-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/dwarven_scout_brown_hair.png",
			"icon", "icon-joruvellir-scout-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "brown-hair-beardless",
			"file", "dwarf/units/dwarven_scout_brown_hair_beardless.png",
			"icon", "icon-joruvellir-scout-brown-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-joruvellir-scout-gray-hair",
			"weight", 2
		},
		{
			"variation-id", "gray-hair-beardless",
			"file", "dwarf/units/dwarven_scout_gray_hair_beardless.png",
			"icon", "icon-joruvellir-scout-gray-hair-beardless",
			"weight", 1
		},
		{
			"variation-id", "hairless",
			"file", "dwarf/units/dwarven_scout_brown_hair_beardless.png",
			"icon", "icon-joruvellir-scout-hairless",
			"weight", 1
		}
	}
} )

DefineUnitType("unit-joruvellir-pathfinder", {
	Parent = "unit-dwarven-pathfinder",
	Civilization = "dwarf",
	Faction = "goldhoof-clan",
	Icon = "icon-joruvellir-pathfinder-black-hair",
	Variations = {
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/dwarven_scout_black_hair.png",
			"icon", "icon-joruvellir-pathfinder-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 16
		},
		{
			"variation-id", "black-hair-beardless",
			"file", "dwarf/units/dwarven_scout_black_hair_beardless.png",
			"icon", "icon-joruvellir-pathfinder-black-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "orange-hair",
			"file", "dwarf/units/dwarven_scout.png",
			"icon", "icon-joruvellir-pathfinder-orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "orange-hair-beardless",
			"file", "dwarf/units/dwarven_scout_beardless.png",
			"icon", "icon-joruvellir-pathfinder-orange-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-joruvellir-pathfinder-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "blond-hair-beardless",
			"file", "dwarf/units/dwarven_scout_blond_hair_beardless.png",
			"icon", "icon-joruvellir-pathfinder-blond-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/dwarven_scout_brown_hair.png",
			"icon", "icon-joruvellir-pathfinder-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "brown-hair-beardless",
			"file", "dwarf/units/dwarven_scout_brown_hair_beardless.png",
			"icon", "icon-joruvellir-pathfinder-brown-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-joruvellir-pathfinder-gray-hair",
			"weight", 2
		},
		{
			"variation-id", "gray-hair-beardless",
			"file", "dwarf/units/dwarven_scout_gray_hair_beardless.png",
			"icon", "icon-joruvellir-pathfinder-gray-hair-beardless",
			"weight", 1
		},
		{
			"variation-id", "hairless",
			"file", "dwarf/units/dwarven_scout_brown_hair_beardless.png",
			"icon", "icon-joruvellir-pathfinder-hairless",
			"weight", 1
		}
	}
} )

DefineUnitType("unit-joruvellir-explorer", {
	Parent = "unit-dwarven-explorer",
	Civilization = "dwarf",
	Faction = "goldhoof-clan",
	Icon = "icon-joruvellir-explorer-black-hair",
	Variations = {
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/dwarven_scout_black_hair.png",
			"icon", "icon-joruvellir-explorer-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 16
		},
		{
			"variation-id", "black-hair-beardless",
			"file", "dwarf/units/dwarven_scout_black_hair_beardless.png",
			"icon", "icon-joruvellir-explorer-black-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "orange-hair",
			"file", "dwarf/units/dwarven_scout.png",
			"icon", "icon-joruvellir-explorer-orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "orange-hair-beardless",
			"file", "dwarf/units/dwarven_scout_beardless.png",
			"icon", "icon-joruvellir-explorer-orange-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-joruvellir-explorer-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "blond-hair-beardless",
			"file", "dwarf/units/dwarven_scout_blond_hair_beardless.png",
			"icon", "icon-joruvellir-explorer-blond-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/dwarven_scout_brown_hair.png",
			"icon", "icon-joruvellir-explorer-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "brown-hair-beardless",
			"file", "dwarf/units/dwarven_scout_brown_hair_beardless.png",
			"icon", "icon-joruvellir-explorer-brown-hair-beardless",
			"upgrade-forbidden", "upgrade-old",
			"weight", 1
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-joruvellir-explorer-gray-hair",
			"weight", 2
		},
		{
			"variation-id", "gray-hair-beardless",
			"file", "dwarf/units/dwarven_scout_gray_hair_beardless.png",
			"icon", "icon-joruvellir-explorer-gray-hair-beardless",
			"weight", 1
		},
		{
			"variation-id", "hairless",
			"file", "dwarf/units/dwarven_scout_brown_hair_beardless.png",
			"icon", "icon-joruvellir-explorer-hairless",
			"weight", 1
		}
	}
} )

DefineUnitType("unit-joruvellir-yale-rider", {
	Parent = "unit-dwarven-yale-rider",
	Civilization = "dwarf",
	Faction = "goldhoof-clan",
	Icon = "icon-joruvellir-yale-rider-black-hair",
	BasicDamage = 13, -- +1 Damage
	Points = 80, -- +5 points
	Variations = {
		{
			"variation-id", "black-hair-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_brown_fur.png",
			"icon", "icon-joruvellir-yale-rider-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "black-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_gray_brown_fur.png",
			"icon", "icon-joruvellir-yale-rider-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "blond-hair-brown-fur",
			"file", "dwarf/units/yale_rider_blond_hair_brown_fur.png",
			"icon", "icon-joruvellir-yale-rider-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair-brown-fur",
			"file", "dwarf/units/yale_rider_brown_hair_brown_fur.png",
			"icon", "icon-joruvellir-yale-rider-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair-white-fur",
			"file", "dwarf/units/yale_rider_brown_hair_white_fur.png",
			"icon", "icon-joruvellir-yale-rider-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_gray_hair_gray_brown_fur.png",
			"icon", "icon-joruvellir-yale-rider-gray-hair",
			"weight", 1
		},
		{
			"variation-id", "orange-hair-brown-fur",
			"file", "dwarf/units/yale_rider_orange_hair_brown_fur.png",
			"icon", "icon-joruvellir-yale-rider-orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "orange-hair-white-fur",
			"file", "dwarf/units/yale_rider_orange_hair_white_fur.png",
			"icon", "icon-joruvellir-yale-rider-orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		}
	}
} )

DefineUnitType("unit-joruvellir-yale-lord", {
	Parent = "unit-dwarven-yale-lord",
	Civilization = "dwarf",
	Faction = "goldhoof-clan",
	Icon = "icon-joruvellir-yale-lord-black-hair",
	BasicDamage = 15, -- +1 Damage
	Points = 105, -- +5 points
	Variations = {
		{
			"variation-id", "black-hair-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_brown_fur.png",
			"icon", "icon-joruvellir-yale-lord-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "black-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_gray_brown_fur.png",
			"icon", "icon-joruvellir-yale-lord-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 8
		},
		{
			"variation-id", "blond-hair-brown-fur",
			"file", "dwarf/units/yale_rider_blond_hair_brown_fur.png",
			"icon", "icon-joruvellir-yale-lord-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair-brown-fur",
			"file", "dwarf/units/yale_rider_brown_hair_brown_fur.png",
			"icon", "icon-joruvellir-yale-lord-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair-white-fur",
			"file", "dwarf/units/yale_rider_brown_hair_white_fur.png",
			"icon", "icon-joruvellir-yale-lord-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_gray_hair_gray_brown_fur.png",
			"icon", "icon-joruvellir-yale-lord-gray-hair",
			"weight", 1
		},
		{
			"variation-id", "orange-hair-brown-fur",
			"file", "dwarf/units/yale_rider_orange_hair_brown_fur.png",
			"icon", "icon-joruvellir-yale-lord-orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "orange-hair-white-fur",
			"file", "dwarf/units/yale_rider_orange_hair_white_fur.png",
			"icon", "icon-joruvellir-yale-lord-orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		}
	}
} )

DefineUnitType("unit-joruvellir-yale-pen", {
	Parent = "unit-dwarven-yale-pen",
	Civilization = "dwarf",
	Faction = "goldhoof-clan",
	Image = {"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_yale_pen.png", "size", {96, 96}},
	Shadow = {"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_yale_pen_shadow.png", "size", {96, 96}},
	Icon = "icon-joruvellir-yale-pen",
--	Costs = {"time", 135, "copper", 900, "lumber", 540, "stone", 270} -- 10% cheaper
	Variations = {
		{
			"variation-id", "yale-pen",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "yale-pen-snow-winter",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_yale_pen_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "yale-pen-snow",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_yale_pen_snow.png",
			"terrain", "snow"
		}
	},
} )
