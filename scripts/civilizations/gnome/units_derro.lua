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

DefineUnitType("unit-derro-worker", {
	Parent = "unit-gnomish-worker",
	Civilization = "gnome",
	Faction = "Derro Tribe",
	Description = "Derro workers labor silently in their underground caves. Despite their lack of combat training, the sight of one of them still makes travelers wary: the axes used by these laborers to split wood could soon be splitting necks instead.",
	SkinColor = "pale-blue",
	HairColor = "gray",
	Icon = "icon-derro-worker",
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	BasicDamage = 6 -- +1 damage
} )

DefineUnitType("unit-derro-thug", {
	Name = _("Thug"),
	Parent = "unit-gnomish-recruit",
	Civilization = "gnome",
	Faction = "Derro Tribe",
	Description = "Derro thugs are addicted to a brew made of poisonous mushrooms, which also drive them insane. They use this concoction to enter a battle rage, allowing them to keep on fighting with horrendous injuries as they slice and cackle with maddening glee.",
	SkinColor = "pale-blue",
	HairColor = "gray",
	Icon = "icon-derro-thug",
	BasicDamage = 11, Evasion = 10, -- +2 damage, -1 evasion
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	ButtonKey = "t",
	ButtonHint = _("Train ~!Thug"),
	Variations = {
		{
			"variation-id", "thrust",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "slash",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
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

DefineUnitType("unit-derro-executioner", {
	Name = _("Executioner"),
	Parent = "unit-gnomish-duelist",
	Civilization = "gnome",
	Faction = "Derro Tribe",
	Description = "The poisonous mushroom brew which gives common Derro swordsmen their battlerage exacts a heavy price. The more it is drunk, the more the user's sanity is damaged. The most promising and vicious Derro swordsmen are taken by magisters for a harsh recovery process. Indeed, at the end of it their madness seems gone. But so is much of their personality, leaving little more than a husk, subservient to the magisters' commands.",
	SkinColor = "pale-blue",
	HairColor = "gray",
	Icon = "icon-derro-executioner",
	BasicDamage = 12, Evasion = 11, Armor = 3, -- +2 damage, -2 evasion, +1 armor
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Variations = {
		{
			"variation-id", "thrust",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "slash",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/hair_warrior_slash.png",
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

-- Derro Magisters (Herbalist) - "Derro magisters are feared for their mastery of ancient magics, calling upon the primal forces of the earth with profane incantations. Legends speak of derro conjurers unleashing a host of slimes, or encasing their enemies within prisons of solid rock. Magisters are the ruling elite of Derro society, with a magical hand and a silver tongue."