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
--      units.ccl - Defines the teuton (west germanic) unit-types.
--
--      (c) Copyright 2015 by Andrettin
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

DefineUnitType("unit-teuton-worker", { Name = _("Bura"),
	Parent = "unit-template-worker",
	Civilization = "teuton",
--	Description = _("Hardworking and robust, buras are the lifeblood of germanic society, tending the fields and performing most of the manual labor required."),
--	Quote = _("\"He began to grow, | and to gain in strength, / Oxen he ruled, | and plows made ready, / Houses he built, | and barns he fashioned, / Carts he made, | and the plow he managed.\" - Rigsthula"),
--	Background = _("\"Bûra\" is the Proto-Germanic word for \"peasant\" or \"farmer\"."),
	Image = {"file", "germanic/units/worker.png", "size", {72, 72}},
	Animations = "animations-worker", Icon = "icon-germanic-worker",
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	BluntDamage = true,
	CanGatherResources = {
		{
			"resource-id", "gold",
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
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "teuton-bauer-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-swordsman", { Name = _("Krieger"),
	Parent = "unit-template-infantry",
	Civilization = "teuton",
	Description = _("The dauntless West Germanic swordsmen ravage the battlefield with their longswords, being second to few other warriors in combat."),
	Background = _("\"Krieger\" is the German word for \"warrior\"."),
	Image = {"file", "human/units/human_body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/human_shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/red_hair_warrior.png"},
		{"layer", "left-arm", "file", "human/units/human_left_arm.png"},
		{"layer", "right-arm", "file", "human/units/human_right_arm.png"},
		{"layer", "clothing", "file", "teuton/units/chainmail.png"},
		{"layer", "clothing-left-arm", "file", "teuton/units/chainmail_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "teuton/units/chainmail_right_arm.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "shoes", "file", "teuton/units/leather_shoes.png"},
		{"layer", "helmet", "file", "teuton/units/iron_helm.png"},
		{"layer", "weapon", "file", "teuton/units/long_iron_sword.png"}
	},
	Animations = "animations-melee-unit-new", Icon = "icon-teuton-swordsman",
	Costs = {"time", 50, "gold", 600},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	HackDamage = true,
	Variations = {
		{
			"variation-id", "red-hair", -- no shield, bronze sword
			"layer-file", "weapon", "germanic/units/broad_bronze_sword.png",
			"upgrade-forbidden", "upgrade-teuton-spatha",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield"
		},
		{
			"variation-id", "red-hair", -- bronze shield, bronze sword
			"layer-file", "weapon", "germanic/units/broad_bronze_sword.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"upgrade-forbidden", "upgrade-teuton-spatha",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield"
		},
		{
			"variation-id", "red-hair", -- iron shield, bronze sword
			"layer-file", "weapon", "germanic/units/broad_bronze_sword.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "teuton/units/saxon_shield.png",
			"upgrade-forbidden", "upgrade-teuton-spatha",
			"upgrade-required", "upgrade-teuton-iron-shield"
		},
		{
			"variation-id", "red-hair", -- no shield, long iron sword
			"layer-file", "weapon", "teuton/units/long_iron_sword.png",
			"upgrade-required", "upgrade-teuton-spatha",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield"
		},
		{
			"variation-id", "red-hair", -- bronze shield, long iron sword
			"layer-file", "weapon", "teuton/units/long_iron_sword.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-teuton-spatha",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield"
		},
		{
			"variation-id", "red-hair", -- iron shield, long iron sword
			"layer-file", "weapon", "teuton/units/long_iron_sword.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "teuton/units/saxon_shield.png",
			"upgrade-required", "upgrade-teuton-spatha",
			"upgrade-required", "upgrade-teuton-iron-shield"
		}
	},
	Sounds = {
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-suebi-swordsman", { Name = _("Krieger"),
	Parent = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Suebi Tribe",
--	Description = _("Little armored but intensely courageous, the Suebi swordsmen are fierce opponents in battle."),
--	Background = _("\"Krieger\" is the German word for \"warrior\"."),
	Description = "",
	Background = "",
	Image = {"file", "human/units/human_body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/human_shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "teuton/units/suebi_hair.png"},
		{"layer", "left-arm", "file", "human/units/human_left_arm.png"},
		{"layer", "right-arm", "file", "human/units/human_right_arm.png"},
		{"layer", "clothing", "file", "human/units/leather_strap.png"},
		{"layer", "clothing-left-arm", "file", ""},
		{"layer", "clothing-right-arm", "file", ""},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "shoes", "file", "teuton/units/leather_shoes.png"},
		{"layer", "helmet", "file", ""},
		{"layer", "weapon", "file", "teuton/units/long_iron_sword.png"}
	},
	Icon = "icon-teuton-swordsman",
	Armor = 0, BasicDamage = 11, Accuracy = 12, -- -2 armor, +2 damage, +2 accuracy
	Points = 60, -- +10 points
	Variations = {
		{
			"variation-id", "blond-hair", -- no shield, bronze sword
			"layer-file", "weapon", "germanic/units/broad_bronze_sword.png",
			"upgrade-forbidden", "upgrade-teuton-spatha",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield"
		},
		{
			"variation-id", "blond-hair", -- bronze shield, bronze sword
			"layer-file", "weapon", "germanic/units/broad_bronze_sword.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"upgrade-forbidden", "upgrade-teuton-spatha",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield"
		},
		{
			"variation-id", "blond-hair", -- iron shield, bronze sword
			"layer-file", "weapon", "germanic/units/broad_bronze_sword.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "teuton/units/suebi_shield.png",
			"upgrade-forbidden", "upgrade-teuton-spatha",
			"upgrade-required", "upgrade-teuton-iron-shield",
			"shield-animation", SuebiShieldAnimation
		},
		{
			"variation-id", "blond-hair", -- no shield, long iron sword
			"layer-file", "weapon", "teuton/units/long_iron_sword.png",
			"upgrade-required", "upgrade-teuton-spatha",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield"
		},
		{
			"variation-id", "blond-hair", -- bronze shield, long iron sword
			"layer-file", "weapon", "teuton/units/long_iron_sword.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-teuton-spatha",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield"
		},
		{
			"variation-id", "blond-hair", -- iron shield, long iron sword
			"layer-file", "weapon", "teuton/units/long_iron_sword.png",
			"layer-file", "left-arm", "human/units/human_left_arm_shield.png",
			"layer-file", "shield", "teuton/units/suebi_shield.png",
			"upgrade-required", "upgrade-teuton-spatha",
			"upgrade-required", "upgrade-teuton-iron-shield",
			"shield-animation", SuebiShieldAnimation
		}
	}
} )

DefineUnitType("unit-teuton-archer", { Name = _("Skutan"),
	Parent = "unit-template-archer",
	Civilization = "teuton",
--	Description = _("These warriors specialize in the art of archery, which they employ against their enemies with great lethality."),
--	Quote = _("\"Within two gazed | in each other's eyes, / Fathir and Mothir, | and played with their fingers; / There sat the house-lord, | wound strings for the bow, / Shafts he fashioned, | and bows he shaped.\" - Rigsthula"),
--	Background = _("\"Skutan\" is the Proto-Germanic word for \"archer\"."),
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
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-ritter", { Name = _("Ritter"),
	Parent = "unit-template-cavalry",
	Civilization = "teuton",
	Description = _("The Teutons excel in mounted combat. Their well-armored and trained heavy cavalry strikes fear in the hearts of their enemies whenever they are seen upon the battlefield."),
	Background = _("\"Ritter\" is the German word for \"knight\"."),
	Image = {"file", "teuton/units/ritter.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-teuton-ritter",
	Armor = 3, BasicDamage = 13, -- +1 armor, +1 damage
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	HackDamage = true,
	Corpse = "unit-human-dead-body",
	Sounds = {
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-catapult", { Name = _("Catapult"),
	Parent = "unit-template-siege-engine",
	Civilization = "teuton",
	Description = _("These engines of war can be of great use in battering enemy fortifications."),
	Image = {"file", "teuton/units/catapult.png", "size", {72, 72}},
	Animations = "animations-teuton-catapult", Icon = "icon-teuton-catapult",
	Missile = "missile-catapult-flaming-rock",
	BluntDamage = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "ballista-acknowledge",
--		"ready", "dwarven-ballista-ready",
		"help", "basic-teuton-voices-help",
		"dead", "explosion"
	}
} )

DefineUnitType("unit-teuton-town-hall", { Name = _("Rathaus"),
	Parent = "unit-template-town-hall",
	Civilization = "teuton",
	Description = _("The rathaus, or town hall, is the political center of teuton settlements."),
	Image = {"file", "teuton/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "teuton/buildings/town_hall_shadow.png", "size", {128, 128}},
	Icon = "icon-teuton-town-hall",
	Variations = {
		{
			"variation-id", "town-hall",
			"file", "germanic/buildings/town_hall.png",
			"shadow-file", "germanic/buildings/town_hall_shadow.png",
			"icon", "icon-germanic-town-hall",
			"animations", "animations-germanic-town-hall",
			"construction", "construction-germanic-town-hall",
			"type-name", "Chieftain's Hall",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "town-hall",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	},
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-stronghold", { Name = _("Burg"),
	Parent = "unit-template-stronghold",
	Civilization = "teuton",
	Description = _("These tall and sturdy structures are built on strategic positions, allowing for easier control and protection of their environs."),
	Image = {"file", "teuton/buildings/stronghold.png", "size", {128, 128}},
	Shadow = {"file", "teuton/buildings/stronghold_shadow.png", "size", {128, 128}},
	Icon = "icon-teuton-stronghold",
	TechnologyPointCost = 1,
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-farm", { Name = _("Farm"),
	Parent = "unit-template-farm",
	Civilization = "teuton",
	Description = _("Farms are essential for supporting a settlement's population."),
	Image = {"file", "teuton/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "teuton/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-teuton-farm",
	Variations = {
		{
			"variation-id", "farm",
			"file", "germanic/buildings/farm.png",
			"shadow-file", "germanic/buildings/farm_shadow.png",
			"icon", "icon-germanic-farm",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "farm",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	},
	Sounds = {
		"selected", "corral-selected",
		"ready", "corral-ready",
		"help", "basic-teuton-voices-help-town",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-teuton-barracks", { Name = _("Barracks"),
	Parent = "unit-template-barracks",
	Civilization = "teuton",
--	Description = _("The germanic war lodge serves as a gathering place for the tribe's warriors."),
	Image = {"file", "teuton/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/barracks_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-barracks",
	Variations = {
		{
			"variation-id", "barracks",
			"type-name", "War Lodge",
			"file", "germanic/buildings/barracks.png",
			"shadow-file", "germanic/buildings/barracks_shadow.png",
			"icon", "icon-germanic-barracks",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "barracks",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	},
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-lumber-mill", { Name = _("Lumber Mill"),
	Parent = "unit-template-lumber-mill",
	Civilization = "teuton",
	Description = _("A lumber mill provides a settlement with more advanced methods for processing timber, and it is also in this structure where woodworkers seek to improve arrows and construction techniques."),
	Image = {"file", "teuton/buildings/lumber_mill.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/lumber_mill_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-lumber-mill",
	Variations = {
		{
			"variation-id", "lumber-mill",
			"file", "germanic/buildings/carpenters_shop.png",
			"shadow-file", "germanic/buildings/carpenters_shop_shadow.png",
			"icon", "icon-germanic-carpenters-shop",
			"type-name", "Carpenter's Shop",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "lumber-mill",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	},
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-smithy", { Name = _("Smithy"),
	Parent = "unit-template-smithy",
	Civilization = "teuton",
	Description = _("It is in these smithies that teuton craftsmen prepare and seek to continuously improve the arms warriors will wield into battle."),
	Image = {"file", "teuton/buildings/smithy.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-smithy",
	Variations = {
		{
			"variation-id", "smithy",
			"file", "germanic/buildings/smithy.png",
			"shadow-file", "germanic/buildings/smithy_shadow.png",
			"icon", "icon-germanic-smithy",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "smithy",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	},
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-stables", { Name = _("Stables"),
	Parent = "unit-template-stables",
	Civilization = "teuton",
	Description = _("The fierce Teutons are renowned for their heavy cavalry. Any military center of import will have stables to provide the well-bred horses such forces require."),
	Image = {"file", "teuton/buildings/stables.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/stables_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-stables",
	TechnologyPointCost = 1,
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-watch-tower", { Name = _("Watch Tower"),
	Parent = "unit-template-watch-tower",
	Civilization = "teuton",
	Description = _("These timber-made towers are built in frontier regions, keeping watch of possible attackers."),
	Image = {"file", "teuton/buildings/watch_tower.png", "size", {64, 64}},
	Shadow = {"file", "teuton/buildings/watch_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-teuton-watch-tower",
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-guard-tower", { Name = _("Guard Tower"),
	Parent = "unit-template-guard-tower",
	Civilization = "teuton",
	Description = _("Solid stone towers are an essential addition to any fortified position of strategic importance, allowing archers to shoot from a vantage position."),
	Image = {"file", "teuton/buildings/guard_tower.png", "size", {64, 64}},
	Shadow = {"file", "teuton/buildings/guard_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-teuton-guard-tower",
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-dock", { Name = _("Dock"),
	Parent = "unit-template-dock",
	Civilization = "teuton",
	Description = _("Shipbuilding is an ancient craft in the Teuton shores. Already in antiquity they constructed sturdy ships, capable of assaulting the vulnerable coasts to the west. During medieval times, their shipbuilding flourished even further, as the Hanseatic League dominated commerce in the Baltic and North Seas."),
	Image = {"file", "teuton/buildings/dock.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/dock_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-teuton-dock",
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )
