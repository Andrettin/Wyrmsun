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
	Animations = "animations-dwarven-miner", Icon = "icon-germanic-worker",
	Corpse = "unit-human-dead-body",
	CanGatherResources = {
		{
			"file-when-loaded", "germanic/units/worker_with_gold.png",
			"resource-id", "gold",
--			"harvest-from-outside",
			"resource-capacity", 100,
			"wait-at-resource", 150,
			"wait-at-depot", 150
		},
		{
			"file-when-loaded", "germanic/units/worker_with_lumber.png",
			"resource-id", "lumber",
			"harvest-from-outside",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 24,
			"wait-at-depot", 150,
			"terrain-harvester"
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "dwarven-miner-acknowledge",
--		"ready", "dwarven-miner-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-swordsman", { Name = _("Erala"),
	Parent = "unit-template-infantry",
	Civilization = "teuton",
	Description = _("Germanic tribes are known for their fierceness in combat, and these sword-wielding warriors act accordingly."),
	Quote = _("\"His spear he shook, | his shield he brandished, / His horse he spurred, | with his sword he hewed; / Wars he raised, | and reddened the field, / Warriors slew he, | and land he won.\" - Rigsthula"),
--	Quote = _("\"Soon grew up | the sons of Jarl, / Beasts they tamed, | and bucklers rounded, / Shafts they fashioned, | and spears they shook.\" - Rigsthula"),
	Background = _("\"Erala\" is the Proto-Germanic word for \"warrior\"."),
	Image = {"file", "germanic/units/warrior.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-germanic-warrior",
	Corpse = "unit-human-dead-body",
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"file", "germanic/units/warrior_brown_hair.png",
			"icon", "icon-germanic-warrior-brown-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "germanic/units/warrior_gray_hair.png",
			"icon", "icon-germanic-warrior-gray-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-required", "upgrade-old"
		},
		{
			"variation-id", "red-hair",
			"file", "germanic/units/warrior_red_hair.png",
			"icon", "icon-germanic-warrior-red-hair",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "germanic/units/warrior_bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"file", "germanic/units/warrior_brown_hair_bronze_shield.png",
			"icon", "icon-germanic-warrior-brown-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "germanic/units/warrior_gray_hair_bronze_shield.png",
			"icon", "icon-germanic-warrior-gray-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-required", "upgrade-old"
		},
		{
			"variation-id", "red-hair",
			"file", "germanic/units/warrior_red_hair_bronze_shield.png",
			"icon", "icon-germanic-warrior-red-hair",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-old"
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "basic-dwarf-voices-acknowledge",
--		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
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
	CanCastSpell = {"spell-dagger-attack"},
	AutoCastActive = {"spell-dagger-attack"},
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
		"selected", "click",
--		"acknowledge", "basic-dwarf-voices-acknowledge",
--		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-human-voices-dead"}
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
--		"help", "basic-dwarf-voices-help",
		"dead", "explosion"
	}
} )

DefineUnitType("unit-teuton-town-hall", { Name = _("Rathaus"),
	Parent = "unit-template-town-hall",
	Civilization = "teuton",
	Description = _("The rathaus, or town hall, is the political center of teuton settlements."),
	Image = {"file", "teuton/buildings/town_hall.png", "size", {128, 128}},
	Animations = "animations-building", Icon = "icon-teuton-town-hall",
	Variations = {
		{
			"variation-id", "town-hall",
			"file", "germanic/buildings/town_hall.png",
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
	}
} )

DefineUnitType("unit-teuton-stronghold", { Name = _("Burg"),
	Parent = "unit-template-stronghold",
	Civilization = "teuton",
	Description = _("These tall and sturdy structures are built on strategic positions, allowing for easier control and protection of its environs."),
	Image = {"file", "teuton/buildings/stronghold.png", "size", {128, 128}},
	Icon = "icon-teuton-stronghold",
	TechnologyPointCost = 1
} )

DefineUnitType("unit-teuton-farm", { Name = _("Farm"),
	Parent = "unit-template-farm",
	Civilization = "teuton",
--	Description = _("Farms are essential for supporting a settlement's population."),
--	Background = _("The bronze age predecessors of the germanic peoples had a variety of plants and animals in their farms. Wheat, millet and peas figured among the crops planted, while the most common animals were sheep and pigs. The animals bred by them were generally smaller than their modern counterparts, but they were sturdier."),
	Image = {"file", "germanic/buildings/farm.png", "size", {64, 64}},
	Animations = "animations-farm", Icon = "icon-germanic-farm"
} )

DefineUnitType("unit-teuton-barracks", { Name = _("Barracks"),
	Parent = "unit-template-barracks",
	Civilization = "teuton",
--	Description = _("The germanic war lodge serves as a gathering place for the tribe's warriors."),
	Image = {"file", "germanic/buildings/barracks.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-germanic-barracks",
	Variations = {
		{
			"variation-id", "barracks",
			"type-name", "War Lodge",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "barracks",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	}
} )

DefineUnitType("unit-teuton-lumber-mill", { Name = _("Lumber Mill"),
	Parent = "unit-template-lumber-mill",
	Civilization = "teuton",
	Description = _("A lumber mill provides a settlement with more advanced methods for processing timber, and it is also in this structure where woodworkers seek to improve arrows and construction techniques."),
	Image = {"file", "teuton/buildings/lumber_mill.png", "size", {96, 96}},
	Icon = "icon-teuton-lumber-mill",
	Variations = {
		{
			"variation-id", "lumber-mill",
			"file", "germanic/buildings/carpenters_shop.png",
			"icon", "icon-germanic-carpenters-shop",
			"type-name", "Carpenter's Shop",
			"upgrade-forbidden", "upgrade-teuton-masonry"
		},
		{
			"variation-id", "lumber-mill",
			"upgrade-required", "upgrade-teuton-masonry"
		}
	}
} )

DefineUnitType("unit-teuton-smithy", { Name = _("Smithy"),
	Parent = "unit-template-smithy",
	Civilization = "teuton",
--	Description = _("It is in these smithies that germanic craftsmen prepare and seek to continuously improve the arms warriors will wield into battle."),
	Image = {"file", "germanic/buildings/smithy.png", "size", {96, 96}},
	Icon = "icon-germanic-smithy"
} )

DefineUnitType("unit-teuton-watch-tower", { Name = _("Watch Tower"),
	Parent = "unit-template-watch-tower",
	Civilization = "teuton",
	Description = _("These timber-made towers are built in frontier regions, keeping watch of possible attackers."),
	Image = {"file", "teuton/buildings/watch_tower.png", "size", {64, 64}},
	Icon = "icon-teuton-watch-tower",
	TechnologyPointCost = 1
} )

DefineUnitType("unit-teuton-guard-tower", { Name = _("Guard Tower"),
	Parent = "unit-template-guard-tower",
	Civilization = "teuton",
	Description = _("Solid stone towers are an essential addition to any fortified position of strategic importance, allowing archers to shoot from a vantage position."),
	Image = {"file", "teuton/buildings/guard_tower.png", "size", {64, 64}},
	Icon = "icon-teuton-guard-tower",
	TechnologyPointCost = 1
} )
