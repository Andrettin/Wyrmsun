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
	Description = _("Hardworking and robust, buras are the lifeblood of Germanic society, tending the fields and performing most of the manual labor required."),
	Quote = _("\"He began to grow, | and to gain in strength, / Oxen he ruled, | and plows made ready, / Houses he built, | and barns he fashioned, / Carts he made, | and the plow he managed.\" - Rigsthula"),
	Background = _("\"Bûra\" is the Proto-Germanic word for \"peasant\" or \"farmer\"."),
	Image = {"file", "germanic/units/worker.png", "size", {72, 72}},
	Animations = "animations-worker", Icon = "icon-germanic-worker",
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClass = "mace",
	BluntDamage = true,
	AiDrops = {"unit-cheese", "unit-carrots"},
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
	LayerImages = {
		{"layer", "hair", "file", "human/units/blond_hair_warrior.png"},
		{"layer", "left-arm", "file", "human/units/human_left_arm.png"},
		{"layer", "right-arm", "file", "human/units/human_right_arm.png"},
		{"layer", "clothing", "file", "germanic/units/coat_warrior.png"},
		{"layer", "clothing-left-arm", "file", "germanic/units/coat_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "germanic/units/coat_right_arm.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "shoes", "file", "human/units/shoes.png"},
		{"layer", "weapon", "file", "germanic/units/broad_bronze_sword.png"},
		{"layer", "helmet", "file", "germanic/units/bronze_helmet.png"}
	},
	Animations = "animations-melee-unit-new", Icon = "icon-germanic-warrior",
	Costs = {"time", 50, "gold", 600},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClass = "sword",
	HackDamage = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-glacial", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-quenching", "upgrade-item-prefix-vicious", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-victory"}, -- allow more affixes than normal for the unit's level, to compensate for the unit not being upgradeable
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"layer-file", "hair", "human/units/brown_hair_warrior.png",
			"icon", "icon-germanic-warrior-brown-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"layer-file", "hair", "human/units/gray_hair_warrior.png",
			"icon", "icon-germanic-warrior-gray-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield"
		},
		{
			"variation-id", "red-hair",
			"layer-file", "hair", "human/units/red_hair_warrior.png",
			"icon", "icon-germanic-warrior-red-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"layer-file", "hair", "human/units/brown_hair_warrior.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"icon", "icon-germanic-warrior-brown-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"layer-file", "hair", "human/units/gray_hair_warrior.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"icon", "icon-germanic-warrior-gray-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield"
		},
		{
			"variation-id", "red-hair",
			"layer-file", "hair", "human/units/red_hair_warrior.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"icon", "icon-germanic-warrior-red-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
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
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-germanic-spearman", { Name = _("Spearman"),
	Parent = "unit-template-spearman",
	Civilization = "germanic",
--	Description = _("Germanic tribes are known for their fierceness in combat, and these sword-wielding warriors act accordingly."),
--	Quote = _("\"His spear he shook, | his shield he brandished, / His horse he spurred, | with his sword he hewed; / Wars he raised, | and reddened the field, / Warriors slew he, | and land he won.\" - Rigsthula"),
	Quote = _("\"Soon grew up | the sons of Jarl, / Beasts they tamed, | and bucklers rounded, / Shafts they fashioned, | and spears they shook.\" - Rigsthula"),
--	Background = _("\"Erala\" is the Proto-Germanic word for \"warrior\"."),
	Image = {"file", "human/units/human_body.png", "size", {72, 72}},
	Shadow = {"file", "human/units/human_shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/blond_hair_warrior.png"},
		{"layer", "left-arm", "file", "human/units/human_left_arm.png"},
		{"layer", "right-arm", "file", "human/units/human_right_arm_spear.png"},
		{"layer", "clothing", "file", "germanic/units/coat.png"},
		{"layer", "clothing-left-arm", "file", "germanic/units/coat_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "germanic/units/coat_right_arm_spear.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "shoes", "file", "human/units/shoes.png"},
		{"layer", "weapon", "file", "human/units/spear.png"},
	},
	Animations = "animations-melee-unit-new", Icon = "icon-germanic-warrior",
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	AiDrops = {"unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-glacial", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-quenching", "upgrade-item-prefix-vicious", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-flame", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-victory"}, -- allow more affixes than normal for the unit's level, to compensate for the unit not being upgradeable
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"layer-file", "hair", "human/units/brown_hair_warrior.png",
			"icon", "icon-germanic-warrior-brown-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"layer-file", "hair", "human/units/gray_hair_warrior.png",
			"icon", "icon-germanic-warrior-gray-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield"
		},
		{
			"variation-id", "red-hair",
			"layer-file", "hair", "human/units/red_hair_warrior.png",
			"icon", "icon-germanic-warrior-red-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"layer-file", "hair", "human/units/brown_hair_warrior.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"icon", "icon-germanic-warrior-brown-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"layer-file", "hair", "human/units/gray_hair_warrior.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"icon", "icon-germanic-warrior-gray-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield"
		},
		{
			"variation-id", "red-hair",
			"layer-file", "hair", "human/units/red_hair_warrior.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"icon", "icon-germanic-warrior-red-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead"
	}
} )

DefineUnitType("unit-germanic-archer", { Name = _("Skutan"),
	Parent = "unit-template-archer",
	Civilization = "germanic",
	Description = _("These warriors specialize in the art of archery, which they employ against their enemies with great lethality."),
	Quote = _("\"Within two gazed | in each other's eyes, / Fathir and Mothir, | and played with their fingers; / There sat the house-lord, | wound strings for the bow, / Shafts he fashioned, | and bows he shaped.\" - Rigsthula"),
	Background = _("\"Skutan\" is the Proto-Germanic word for \"archer\"."),
	Image = {"file", "human/units/human_body_archer.png", "size", {72, 72}},
	Shadow = {"file", "human/units/human_shadow_archer.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/red_hair_archer.png"},
		{"layer", "left-arm", "file", "human/units/human_left_arm_archer.png"},
		{"layer", "right-arm", "file", "human/units/human_right_arm_archer.png"},
		{"layer", "clothing", "file", "germanic/units/coat_archer.png"},
		{"layer", "clothing-left-arm", "file", "germanic/units/coat_left_arm_archer.png"},
		{"layer", "clothing-right-arm", "file", "germanic/units/coat_right_arm_archer.png"},
		{"layer", "pants", "file", "human/units/pants_archer.png"},
		{"layer", "shoes", "file", "human/units/shoes_archer.png"},
		{"layer", "weapon", "file", "human/units/bow_and_bronze_knife.png"},
		{"layer", "helmet", "file", "germanic/units/wool_hat_archer.png"},
		{"layer", "backpack", "file", "human/units/quiver.png"}
	},
	Animations = "animations-goblin-archer", Icon = "icon-germanic-archer",
	Missile = "missile-arrow",
	Corpse = "unit-human-dead-body",
	TechnologyPointCost = 1,
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	BonusAgainstAir = 50,
	WeaponClass = "bow",
	PierceDamage = true,
	AiDrops = {"unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"layer-file", "hair", "human/units/gray_hair_archer.png",
			"icon", "icon-germanic-archer-gray-hair"
		},
		{
			"variation-id", "blond-hair",
			"layer-file", "hair", "human/units/blond_hair_archer.png",
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
