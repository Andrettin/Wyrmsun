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

DefineUnitType("unit-teuton-worker", { Name = _("Bura"), -- Bûra = "Bauer" in Proto-Germanic, according to the "Wortschatz der Germanischen Spracheinheit" by August Fick; another possibility of a name is "Theva", "Thrahila" or "Thregila", all of which mean "Knecht" or "Thrall"
	Parent = "unit-template-worker",
	Civilization = "teuton",
	Description = _("Hardworking and robust, buras are the lifeblood of germanic society, tending the fields and performing most of the manual labor required."),
	Quote = _("\"He began to grow, | and to gain in strength, / Oxen he ruled, | and plows made ready, / Houses he built, | and barns he fashioned, / Carts he made, | and the plow he managed.\" - Rigsthula"),
	Background = _("\"Bûra\" is the Proto-Germanic word for \"peasant\" or \"farmer\"."),
	Image = {"file", "germanic/units/worker.png", "size", {72, 72}},
	Animations = "animations-germanic-worker", Icon = "icon-germanic-worker",
	Corpse = "unit-human-dead-body",
	NightSightRangeMalus = 1,
	CanGatherResources = {
		{
			"file-when-loaded", "germanic/units/worker_with_gold.png",
			"resource-id", "gold",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 3,
			"wait-at-depot", 150
		},
		{
			"file-when-loaded", "germanic/units/worker_with_gold.png",
			"resource-id", "silver",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 3,
			"wait-at-depot", 150,
			"final-resource", "gold",
			"final-resource-conversion-rate", 50
		},
		{
			"file-when-loaded", "germanic/units/worker_with_gold.png",
			"resource-id", "copper",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 3,
			"wait-at-depot", 150,
			"final-resource", "gold",
			"final-resource-conversion-rate", 25
		},
		{
			"file-when-loaded", "germanic/units/worker_with_lumber.png",
			"resource-id", "lumber",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 24,
			"wait-at-depot", 150
		},
		{
			"file-when-loaded", "germanic/units/worker_with_gold.png",
			"resource-id", "stone",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 24,
			"wait-at-depot", 150
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
	Image = {"file", "teuton/units/saxon_swordsman.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-teuton-swordsman",
	Corpse = "unit-human-dead-body",
	NightSightRangeMalus = 1,
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

DefineUnitType("unit-teuton-archer", { Name = _("Skutan"),
	Parent = "unit-template-archer",
	Civilization = "teuton",
	Description = _("These warriors specialize in the art of archery, which they employ against their enemies with great lethality."),
	Quote = _("\"Within two gazed | in each other's eyes, / Fathir and Mothir, | and played with their fingers; / There sat the house-lord, | wound strings for the bow, / Shafts he fashioned, | and bows he shaped.\" - Rigsthula"),
	Background = _("\"Skutan\" is the Proto-Germanic word for \"archer\"."),
	Image = {"file", "germanic/units/archer.png", "size", {72, 72}},
	Animations = "animations-goblin-archer", Icon = "icon-germanic-archer",
	Missile = "missile-arrow",
	Corpse = "unit-human-dead-body",
	NightSightRangeMalus = 1,
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
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "dagger-attack",
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
	Sounds = {
		"selected", "click",
--		"acknowledge", "ballista-acknowledge",
--		"ready", "dwarven-ballista-ready",
		"help", "basic-teuton-voices-help",
		"dead", "explosion"
	}
} )

DefineUnitType("unit-teuton-old-man", { Name = _("Old Man"),
	Parent = "unit-teuton-swordsman",
	Class = "",
	Image = {"file", "teuton/units/old_man.png", "size", {72, 72}},
	Animations = "animations-germanic-worker", Icon = "icon-old-man",
	HitPoints = 40,
	BasicDamage = 6,
	Corpse = "unit-human-dead-body",
	Variations = {},
	NightSightRangeMalus = 1,
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

DefineUnitType("unit-teuton-town-hall", { Name = _("Rathaus"),
	Parent = "unit-template-town-hall",
	Civilization = "teuton",
	Description = _("The rathaus, or town hall, is the political center of teuton settlements."),
	Image = {"file", "teuton/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "teuton/buildings/town_hall_shadow.png", "size", {128, 128}},
	Animations = "animations-building", Icon = "icon-teuton-town-hall",
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
--	Description = _("Farms are essential for supporting a settlement's population."),
--	Background = _("The bronze age predecessors of the germanic peoples had a variety of plants and animals in their farms. Wheat, millet and peas figured among the crops planted, while the most common animals were sheep and pigs. The animals bred by them were generally smaller than their modern counterparts, but they were sturdier."),
	Image = {"file", "germanic/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "germanic/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-germanic-farm",
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
	Animations = "animations-building", Icon = "icon-teuton-barracks",
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
	Image = {"file", "germanic/buildings/smithy.png", "size", {96, 96}},
	Icon = "icon-germanic-smithy",
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
	TechnologyPointCost = 1,
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
	TechnologyPointCost = 1,
	Sounds = {
		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-hero-marbod", { Name = _("Krieger"),
	Parent = "unit-teuton-swordsman",
	Class = "",
	DefaultName = "Marbod",
	Civilization = "teuton",
	Description = _("A young chieftain of the Marcomanni, Marbod aspires to forge a realm for his tribe capable of withstanding the test of time."),
	Image = {"file", "teuton/units/suebi_warrior.png", "size", {72, 72}},
	HairImage = {"file", "teuton/units/suebi_warrior_hair.png"},
	PantsImage = {"file", "human/units/pants.png"},
	Shadow = {"file", "teuton/units/suebi_warrior_shadow.png", "size", {72, 72}},
	Icon = "icon-marbod",
	Hero = true,
	Gender = 1,
	Variations = {}
} )

