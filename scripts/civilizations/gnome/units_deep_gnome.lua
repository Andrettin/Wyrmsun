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
--      (c) Copyright 2016-2021 by Andrettin
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

DefineUnitType("unit-deep-gnomish-recruit", {
	Parent = "unit-gnomish-recruit",
	Civilization = "gnome",
	Faction = "acthnic_tribe",
	Image = {"file", "gnome/units/deep_gnomish_recruit_red_hair.png", "size", {72, 72}},
	Icon = "icon-deep-gnomish-recruit-red-hair",
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "green-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"icon", "icon-deep-gnomish-recruit-blond-hair",
			"file", "gnome/units/deep_gnomish_recruit_blond_hair.png"
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-deep-gnomish-recruit-gray-hair",
			"file", "gnome/units/deep_gnomish_recruit_gray_hair.png"
		},
		{
			"variation-id", "green-hair",
			"upgrade-forbidden", "upgrade-old",
			"icon", "icon-deep-gnomish-recruit-green-hair",
			"file", "gnome/units/deep_gnomish_recruit_green_hair.png"
		}
	}
} )

DefineUnitType("unit-deep-gnomish-duelist", {
	Parent = "unit-gnomish-duelist",
	Civilization = "gnome",
	Faction = "acthnic_tribe",
	Image = {"file", "gnome/units/deep_gnomish_recruit_red_hair.png", "size", {72, 72}},
	Icon = "icon-deep-gnomish-duelist-red-hair",
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "green-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"icon", "icon-deep-gnomish-duelist-blond-hair",
			"file", "gnome/units/deep_gnomish_recruit_blond_hair.png"
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-deep-gnomish-duelist-gray-hair",
			"file", "gnome/units/deep_gnomish_recruit_gray_hair.png"
		},
		{
			"variation-id", "green-hair",
			"upgrade-forbidden", "upgrade-old",
			"icon", "icon-deep-gnomish-duelist-green-hair",
			"file", "gnome/units/deep_gnomish_recruit_green_hair.png"
		}
	}
} )

DefineUnitType("unit-deep-gnomish-master-at-arms", {
	Parent = "unit-gnomish-master-at-arms",
	Civilization = "gnome",
	Faction = "acthnic_tribe",
	Image = {"file", "gnome/units/deep_gnomish_recruit_red_hair.png", "size", {72, 72}},
	Icon = "icon-deep-gnomish-master-at-arms-red-hair",
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "green-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"icon", "icon-deep-gnomish-master-at-arms-blond-hair",
			"file", "gnome/units/deep_gnomish_recruit_blond_hair.png"
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-deep-gnomish-master-at-arms-gray-hair",
			"file", "gnome/units/deep_gnomish_recruit_gray_hair.png"
		},
		{
			"variation-id", "green-hair",
			"upgrade-forbidden", "upgrade-old",
			"icon", "icon-deep-gnomish-master-at-arms-green-hair",
			"file", "gnome/units/deep_gnomish_recruit_green_hair.png"
		}
	}
} )

DefineUnitType("unit-deep-gnomish-herbalist", {
	Parent = "unit-gnomish-herbalist",
	Civilization = "gnome",
	Faction = "acthnic_tribe",
	Image = {"file", "gnome/units/deep_gnomish_herbalist_gray_hair.png", "size", {72, 72}},
	Icon = "icon-deep-gnomish-herbalist-gray-hair",
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Variations = {
		{
			"variation-id", "gray-hair"
		},
		{
			"variation-id", "green-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"icon", "icon-deep-gnomish-herbalist-blond-hair",
			"file", "gnome/units/deep_gnomish_herbalist_blond_hair.png"
		},
		{
			"variation-id", "green-hair",
			"upgrade-forbidden", "upgrade-old",
			"icon", "icon-deep-gnomish-herbalist-green-hair",
			"file", "gnome/units/deep_gnomish_herbalist_green_hair.png"
		},
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old",
			"icon", "icon-deep-gnomish-herbalist-red-hair",
			"file", "gnome/units/deep_gnomish_herbalist_red_hair.png"
		}
	}
} )
