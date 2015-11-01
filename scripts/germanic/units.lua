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
--      units.ccl - Defines the germanic unit-types.
--
--      (c) Copyright 2014-2015 by Andrettin
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

DefineUnitType("unit-germanic-worker", { Name = _("Bura"), -- Bûra = "Bauer" in Proto-Germanic, according to the "Wortschatz der Germanischen Spracheinheit" by August Fick; another possibility of a name is "Theva", "Thrahila" or "Thregila", all of which mean "Knecht" or "Thrall"
	Parent = "unit-template-worker",
	Civilization = "germanic",
	Description = _("Hardworking and robust, buras are the lifeblood of germanic society, tending the fields and performing most of the manual labor required."),
	Quote = _("\"He began to grow, | and to gain in strength, / Oxen he ruled, | and plows made ready, / Houses he built, | and barns he fashioned, / Carts he made, | and the plow he managed.\" - Rigsthula"),
	Background = _("\"Bûra\" is the Proto-Germanic word for \"peasant\" or \"farmer\"."),
	Image = {"file", "germanic/units/worker.png", "size", {72, 72}},
	Animations = "animations-worker", Icon = "icon-germanic-worker",
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	BluntDamage = true,
	CanGatherResources = {
		{
			"resource-id", "gold", -- this needs to be on top
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "germanic/units/worker_with_lumber.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		}
	},
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-germanic-warrior", { Name = _("Erala"), -- Erala = "Warrior" in Proto-Germanic, according to the "Wortschatz der Germanischen Spracheinheit" by August Fick
	Parent = "unit-template-infantry",
	Civilization = "germanic",
	Description = _("Germanic tribes are known for their fierceness in combat, and these sword-wielding warriors act accordingly."),
	Quote = _("\"His spear he shook, | his shield he brandished, / His horse he spurred, | with his sword he hewed; / Wars he raised, | and reddened the field, / Warriors slew he, | and land he won.\" - Rigsthula"),
--	Quote = _("\"Soon grew up | the sons of Jarl, / Beasts they tamed, | and bucklers rounded, / Shafts they fashioned, | and spears they shook.\" - Rigsthula"),
	Background = _("\"Erala\" is the Proto-Germanic word for \"warrior\"."),
	Image = {"file", "human/units/human_body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/human_shadow.png", "size", {72, 72}},
	HairImage = {"file", "human/units/blond_hair_warrior.png"},
	LeftArmImage = {"file", "human/units/human_left_arm.png"},
	RightArmImage = {"file", "human/units/human_right_arm.png"},
	ClothingImage = {"file", "germanic/units/coat_warrior.png"},
	ClothingLeftArmImage = {"file", "germanic/units/coat_left_arm.png"},
	ClothingRightArmImage = {"file", "germanic/units/coat_right_arm.png"},
	PantsImage = {"file", "human/units/pants.png"},
	ShoesImage = {"file", "human/units/shoes.png"},
	WeaponImage = {"file", "germanic/units/broad_bronze_sword.png"},
	HelmetImage = {"file", "germanic/units/bronze_helmet.png"},
	Animations = "animations-melee-unit-new", Icon = "icon-germanic-warrior",
	Costs = {"time", 50, "gold", 600},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	HackDamage = true,
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"hair-file", "human/units/brown_hair_warrior.png",
			"icon", "icon-germanic-warrior-brown-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"hair-file", "human/units/gray_hair_warrior.png",
			"icon", "icon-germanic-warrior-gray-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-required", "upgrade-old"
		},
		{
			"variation-id", "red-hair",
			"hair-file", "human/units/red_hair_warrior.png",
			"icon", "icon-germanic-warrior-red-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"left-arm-file", "human/units/human_left_arm_shield.png",
			"shield-file", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"hair-file", "human/units/brown_hair_warrior.png",
			"left-arm-file", "human/units/human_left_arm_shield.png",
			"shield-file", "germanic/units/bronze_shield.png",
			"icon", "icon-germanic-warrior-brown-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"hair-file", "human/units/gray_hair_warrior.png",
			"left-arm-file", "human/units/human_left_arm_shield.png",
			"shield-file", "germanic/units/bronze_shield.png",
			"icon", "icon-germanic-warrior-gray-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-required", "upgrade-old"
		},
		{
			"variation-id", "red-hair",
			"hair-file", "human/units/red_hair_warrior.png",
			"left-arm-file", "human/units/human_left_arm_shield.png",
			"shield-file", "germanic/units/bronze_shield.png",
			"icon", "icon-germanic-warrior-red-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		}
	},
	ShieldAnimation = {
		{
			"frame", 0,
			"overlay-frame", 0
		},
		{
			"frame", 1,
			"overlay-frame", 2,
			"x-offset", -6,
			"y-offset", -4
		},
		{
			"frame", 2,
			"overlay-frame", 2
		},
		{
			"frame", 3,
			"overlay-frame", 3
		},
		{
			"frame", 4,
			"overlay-frame", 4
		},
		{
			"frame", 5,
			"overlay-frame", 5
		},
		{
			"frame", 6,
			"overlay-frame", 6
		},
		{
			"frame", 7,
			"overlay-frame", 2,
			"x-offset", -3,
			"y-offset", -1
		},
		{
			"frame", 8,
			"overlay-frame", 8
		},
		{
			"frame", 9,
			"overlay-frame", 9
		},
		{
			"frame", 10,
			"overlay-frame", 11,
			"x-offset", -1,
			"y-offset", 6
		},
		{
			"frame", 11,
			"overlay-frame", 11
		},
		{
			"frame", 12,
			"overlay-frame", 2,
			"x-offset", -1,
			"y-offset", -1
		},
		{
			"frame", 13,
			"overlay-frame", 8,
			"x-offset", 2,
			"y-offset", -1
		},
		{
			"frame", 14,
			"overlay-frame", 9,
			"x-offset", -1,
			"y-offset", 1
		},
		{
			"frame", 15,
			"overlay-frame", 0,
			"x-offset", 1,
			"y-offset", -3
		},
		{
			"frame", 16,
			"overlay-frame", 2,
			"x-offset", -5,
			"y-offset", -6
		},
		{
			"frame", 17,
			"overlay-frame", 3,
			"x-offset", -2,
			"y-offset", 1
		},
		{
			"frame", 18,
			"overlay-frame", 18
		},
		{
			"frame", 19,
			"overlay-frame", 4,
			"x-offset", -2,
			"y-offset", 1
		},
		{
			"frame", 20,
			"overlay-frame", 0,
			"y-offset", -2
		},
		{
			"frame", 21,
			"overlay-frame", 2,
			"x-offset", -4,
			"y-offset", -6
		},
		{
			"frame", 22,
			"overlay-frame", 2,
			"x-offset", 2,
			"y-offset", -1
		},
		{
			"frame", 23,
			"overlay-frame", 23
		},
		{
			"frame", 24,
			"overlay-frame", 4,
			"x-offset", -1,
			"y-offset", 1
		},
		{
			"frame", 25,
			"overlay-frame", 0
		},
		{
			"frame", 26,
			"overlay-frame", 2,
			"x-offset", -6,
			"y-offset", -4
		},
		{
			"frame", 27,
			"overlay-frame", 2
		},
		{
			"frame", 28,
			"overlay-frame", 3
		},
		{
			"frame", 29,
			"overlay-frame", 4
		},
		{
			"frame", 30,
			"overlay-frame", 0,
			"x-offset", 2,
			"y-offset", -3
		},
		{
			"frame", 31,
			"overlay-frame", 2,
			"x-offset", -4,
			"y-offset", -7
		},
		{
			"frame", 32,
			"overlay-frame", 3,
			"x-offset", -1,
			"y-offset", -2
		},
		{
			"frame", 33,
			"overlay-frame", 3,
			"x-offset", 3
		},
		{
			"frame", 34,
			"overlay-frame", 4,
			"x-offset", 4,
			"y-offset", -2
		},
		{
			"frame", 35,
			"overlay-frame", 0,
			"y-offset", -2
		},
		{
			"frame", 36,
			"overlay-frame", 2,
			"x-offset", -5,
			"y-offset", -6
		},
		{
			"frame", 37,
			"overlay-frame", 2,
			"x-offset", 4,
			"y-offset", -3
		},
		{
			"frame", 38,
			"overlay-frame", 8,
			"x-offset", 6,
			"y-offset", -1
		},
		{
			"frame", 39,
			"overlay-frame", 4,
			"x-offset", -2
		},
		{
			"frame", 40,
			"overlay-frame", 40
		},
		{
			"frame", 41,
			"overlay-frame", 11,
			"x-offset", 2,
			"y-offset", -2
		},
		{
			"frame", 42,
			"overlay-frame", 2,
			"x-offset", 3,
			"y-offset", -2
		},
		{
			"frame", 43,
			"overlay-frame", 8,
			"x-offset", 5,
			"y-offset", -1
		},
		{
			"frame", 44,
			"overlay-frame", 4,
			"y-offset", 1
		},
		{
			"frame", 45,
			"overlay-frame", 6,
			"x-offset", -1,
			"y-offset", 3
		},
		{
			"frame", 46,
			"overlay-frame", 6,
			"x-offset", 2,
			"y-offset", -2
		},
		{
			"frame", 47,
			"overlay-frame", 2,
			"x-offset", 2
		},
		{
			"frame", 48,
			"overlay-frame", 8,
			"x-offset", 3
		},
		{
			"frame", 49,
			"overlay-frame", 9,
			"y-offset", 4
		},
		{
			"frame", 50,
			"overlay-frame", 51
		},
		{
			"frame", 51,
			"overlay-frame", 51
		},
		{
			"frame", 52,
			"overlay-frame", 51
		},
		{
			"frame", 53,
			"overlay-frame", 53
		},
		{
			"frame", 54,
			"overlay-frame", 53
		},
		{
			"frame", 55,
			"overlay-frame", 56
		},
		{
			"frame", 56,
			"overlay-frame", 56
		},
		{
			"frame", 57,
			"overlay-frame", 56
		},
		{
			"frame", 58,
			"overlay-frame", 58
		},
		{
			"frame", 59,
			"overlay-frame", 58
		},
		{
			"frame", 60,
			"overlay-frame", 61
		},
		{
			"frame", 61,
			"overlay-frame", 61
		},
		{
			"frame", 62,
			"overlay-frame", 61
		},
		{
			"frame", 63,
			"overlay-frame", 63
		},
		{
			"frame", 64,
			"overlay-frame", 63
		}
	},
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-germanic-archer", { Name = _("Skutan"),
	Parent = "unit-template-archer",
	Civilization = "germanic",
	Description = _("These warriors specialize in the art of archery, which they employ against their enemies with great lethality."),
	Quote = _("\"Within two gazed | in each other's eyes, / Fathir and Mothir, | and played with their fingers; / There sat the house-lord, | wound strings for the bow, / Shafts he fashioned, | and bows he shaped.\" - Rigsthula"),
	Background = _("\"Skutan\" is the Proto-Germanic word for \"archer\"."),
	Image = {"file", "germanic/units/archer.png", "size", {72, 72}},
	Animations = "animations-goblin-archer", Icon = "icon-germanic-archer",
	Missile = "missile-arrow",
	Corpse = "unit-human-dead-body",
	TechnologyPointCost = 1,
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	BonusAgainstAir = 50,
	PierceDamage = true,
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "germanic/units/archer_gray_hair.png",
			"icon", "icon-germanic-archer-gray-hair",
			"upgrade-required", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "germanic/units/archer_blond_hair.png",
			"icon", "icon-germanic-archer-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-germanic-old-man", { Name = _("Old Man"),
	Parent = "unit-germanic-warrior",
	Class = "",
	Image = {"file", "germanic/units/old_man.png", "size", {72, 72}},
	Animations = "animations-worker", Icon = "icon-old-man",
	HitPoints = 40,
	BasicDamage = 6,
	Corpse = "unit-human-dead-body",
	Variations = {},
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	HackDamage = true,
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-germanic-town-hall", { Name = _("Chieftain's Hall"),
	Parent = "unit-template-town-hall",
	Civilization = "germanic",
	Description = _("The chieftain's hall serves both as the dwelling of a germanic tribe's chieftain and as the center of its political life."),
	Image = {"file", "germanic/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "germanic/buildings/town_hall_shadow.png", "size", {128, 128}},
	Animations = "animations-germanic-town-hall", Icon = "icon-germanic-town-hall",
	Construction = "construction-germanic-town-hall",
	Sounds = {
		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-germanic-farm", { Name = _("Farm"),
	Parent = "unit-template-farm",
	Civilization = "germanic",
	Description = _("Farms are essential for supporting a settlement's population."),
	Background = _("The bronze age predecessors of the germanic peoples had a variety of plants and animals in their farms. Wheat, millet and peas figured among the crops planted, while the most common animals were sheep and pigs. The animals bred by them were generally smaller than their modern counterparts, but they were sturdier."),
	Image = {"file", "germanic/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "germanic/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-germanic-farm",
	Sounds = {
		"selected", "corral-selected",
		"ready", "corral-ready",
		"help", "basic-germanic-voices-help-town",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-germanic-barracks", { Name = _("War Lodge"),
	Parent = "unit-template-barracks",
	Civilization = "germanic",
	Description = _("The germanic war lodge serves as a gathering place for the tribe's warriors."),
	Image = {"file", "germanic/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "germanic/buildings/barracks_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-germanic-barracks",
	Sounds = {
		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-germanic-carpenters-shop", { Name = _("Carpenter's Shop"),
	Parent = "unit-template-lumber-mill",
	Civilization = "germanic",
	Description = _("Germanic carpenters work hard to provide settlements with all their woodworking needs."),
	Image = {"file", "germanic/buildings/carpenters_shop.png", "size", {96, 96}},
	Shadow = {"file", "germanic/buildings/carpenters_shop_shadow.png", "size", {96, 96}},
	Icon = "icon-germanic-carpenters-shop",
	TechnologyPointCost = 1,
	Sounds = {
		"help", "basic-germanic-voices-help-town"
	}
} )

DefineUnitType("unit-germanic-smithy", { Name = _("Smithy"),
	Parent = "unit-template-smithy",
	Civilization = "germanic",
	Description = _("It is in these smithies that germanic craftsmen prepare and seek to continuously improve the arms warriors will wield into battle."),
	Image = {"file", "germanic/buildings/smithy.png", "size", {96, 96}},
	Shadow = {"file", "germanic/buildings/smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-germanic-smithy",
	TechnologyPointCost = 1,
	Sounds = {
		"help", "basic-germanic-voices-help-town"
	}
} )
