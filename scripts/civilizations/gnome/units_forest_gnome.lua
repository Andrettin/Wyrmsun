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

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-forest-gnomish-worker", {
	Parent = "unit-gnomish-worker",
	Civilization = "gnome",
	Faction = "Sagan Tribe",
	SkinColor = "light-green",
	HairColor = "green",
	Variations = {
		{
			"variation-id", "blond-hair",
			"hair-color", "blond",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "dark-blond-hair",
			"hair-color", "dark-blond",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"hair-color", "gray"
		},
		{
			"variation-id", "green-hair",
			"upgrade-forbidden", "upgrade-old"
		}
	}
} )

DefineUnitType("unit-forest-gnomish-recruit", {
	Parent = "unit-gnomish-recruit",
	Civilization = "gnome",
	Faction = "Sagan Tribe",
	SkinColor = "light-green",
	HairColor = "green",
	Variations = {
		{
			"variation-id", "blond-hair",
			"hair-color", "blond",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "dark-blond-hair",
			"hair-color", "dark-blond",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"hair-color", "gray",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "green-hair",
			"hair-color", "green",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "blond-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "blond",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "dark-blond-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "dark-blond",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "gray",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "green-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "green",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm",
			"file", "gnome/units/right_arm_warrior.png",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm-slash",
			"file", "gnome/units/right_arm_warrior_slash.png",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "sword",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "hammer",
			"file", "gnome/units/hammer_warrior.png",
			"item-equipped", "unit-hammer"
		},
		{
			"layer", "weapon",
			"variation-id", "mining-pick",
			"file", "gnome/units/mining_pick_warrior.png",
			"item-equipped", "unit-mining-pick"
		}
	}
} )

DefineUnitType("unit-forest-gnomish-duelist", {
	Parent = "unit-gnomish-duelist",
	Civilization = "gnome",
	Faction = "Sagan Tribe",
	SkinColor = "light-green",
	HairColor = "green",
	Variations = {
		{
			"variation-id", "blond-hair",
			"hair-color", "blond",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "dark-blond-hair",
			"hair-color", "dark-blond",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"hair-color", "gray",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "green-hair",
			"hair-color", "green",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "blond-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "blond",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "dark-blond-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "dark-blond",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "gray",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "green-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "green",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm",
			"file", "gnome/units/right_arm_warrior.png",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm-slash",
			"file", "gnome/units/right_arm_warrior_slash.png",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "sword",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "hammer",
			"file", "gnome/units/hammer_warrior.png",
			"item-equipped", "unit-hammer"
		},
		{
			"layer", "weapon",
			"variation-id", "mining-pick",
			"file", "gnome/units/mining_pick_warrior.png",
			"item-equipped", "unit-mining-pick"
		}
	}
} )

DefineUnitType("unit-forest-gnomish-master-at-arms", {
	Parent = "unit-gnomish-master-at-arms",
	Civilization = "gnome",
	Faction = "Sagan Tribe",
	SkinColor = "light-green",
	HairColor = "green",
	Variations = {
		{
			"variation-id", "blond-hair",
			"hair-color", "blond",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "dark-blond-hair",
			"hair-color", "dark-blond",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"hair-color", "gray",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "green-hair",
			"hair-color", "green",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "blond-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "blond",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "dark-blond-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "dark-blond",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "gray",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "green-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
			"hair-color", "green",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm",
			"file", "gnome/units/right_arm_warrior.png",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm-slash",
			"file", "gnome/units/right_arm_warrior_slash.png",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "sword",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "hammer",
			"file", "gnome/units/hammer_warrior.png",
			"item-equipped", "unit-hammer"
		},
		{
			"layer", "weapon",
			"variation-id", "mining-pick",
			"file", "gnome/units/mining_pick_warrior.png",
			"item-equipped", "unit-mining-pick"
		}
	}
} )

DefineUnitType("unit-forest-gnomish-herbalist", {
	Parent = "unit-gnomish-herbalist",
	Civilization = "gnome",
	Faction = "Sagan Tribe",
	SkinColor = "light-green",
	HairColor = "gray",
	Variations = {
		{
			"variation-id", "gray-hair"
		},
		{
			"variation-id", "blond-hair",
			"hair-color", "blond",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "dark-blond-hair",
			"hair-color", "dark-blond",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "green-hair",
			"hair-color", "green",
			"upgrade-forbidden", "upgrade-old"
		}
	}
} )
