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

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

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
} )
