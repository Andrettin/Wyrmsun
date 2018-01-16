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
--      (c) Copyright 2016-2018 by Andrettin
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
	Faction = "derro-tribe",
	Description = "Derro workers labor silently in their underground caves. Despite their lack of combat training, the sight of one of them still makes travelers wary: the axes used by these laborers to split wood could soon be splitting necks instead.",
	Image = {"file", "gnome/units/deep_gnomish_worker_gray_hair.png", "size", {72, 72}},
	Icon = "icon-derro-worker",
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	BasicDamage = 6, -- +1 damage
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "iron",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "mithril",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_lumber_gray_hair.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "limestone",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "jewelry",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "furniture",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "leather",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "diamonds",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		},
		{
			"resource-id", "emeralds",
			"file-when-loaded", "gnome/units/deep_gnomish_worker_with_gold_gray_hair.png"
		}
	}
} )

DefineUnitType("unit-derro-thug", {
	Name = "Thug",
	Parent = "unit-gnomish-recruit",
	Civilization = "gnome",
	Faction = "derro-tribe",
	Description = "Derro thugs are addicted to a brew made of poisonous mushrooms, which also drive them insane. They use this concoction to enter a battle rage, allowing them to keep on fighting with horrendous injuries as they slice and cackle with maddening glee.",
	Image = {"file", "gnome/units/deep_gnomish_recruit_gray_hair.png", "size", {72, 72}},
	Icon = "icon-derro-thug",
	BasicDamage = 11, Evasion = 10, -- +2 damage, -1 evasion
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	ButtonKey = "t",
	ButtonHint = "Train ~!Thug"
} )

DefineUnitType("unit-derro-executioner", {
	Name = "Executioner",
	Parent = "unit-gnomish-duelist",
	Civilization = "gnome",
	Faction = "derro-tribe",
	Description = "The poisonous mushroom brew which gives common Derro swordsmen their battlerage exacts a heavy price. The more it is drunk, the more the user's sanity is damaged. The most promising and vicious Derro swordsmen are taken by magisters for a harsh recovery process. Indeed, at the end of it their madness seems gone. But so is much of their personality, leaving little more than a husk, subservient to the magisters' commands.",
	Image = {"file", "gnome/units/deep_gnomish_recruit_gray_hair.png", "size", {72, 72}},
	Icon = "icon-derro-executioner",
	BasicDamage = 12, Evasion = 11, Armor = 3, -- +2 damage, -2 evasion, +1 armor
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1
} )

DefineUnitType("unit-derro-shadowguard", {
	Name = "Shadowguard",
	Parent = "unit-gnomish-master-at-arms",
	Civilization = "gnome",
	Faction = "derro-tribe",
	Description = "The executioners who prove their skill at arms and start to show a glimmer of morbid cunning are taken by the magisters to receive further training and indoctrination. They are painfully infused with ancient magics that wrack and empower the subjects' body, if they survive the rite. They then become the hidden hand of the Derro clergy, the shadowguards. The few who have fought against a shadowguard and lived often end up half-crazed, telling fantastical stories of dancing shadows.",
	Image = {"file", "gnome/units/deep_gnomish_recruit_gray_hair.png", "size", {72, 72}},
	Icon = "icon-derro-shadowguard",
	BasicDamage = 14, Evasion = 13, Armor = 3, -- +2 damage, -2 evasion, +1 armor
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1
} )

-- Derro Magisters (Herbalist) - "Derro magisters are feared for their mastery of ancient magics, calling upon the primal forces of the earth with profane incantations. Legends speak of derro conjurers unleashing a host of slimes, or encasing their enemies within prisons of solid rock. Magisters are the ruling elite of Derro society, with a magical hand and a silver tongue."