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
--      (c) Copyright 2014 by Andre Novellino Gouvêa
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
	Class = "worker",
	Civilization = "germanic",
	Description = _("Hardworking and robust, buras are the lifeblood of germanic society, tending the fields and performing most of the manual labor required."),
	Quote = _("\"He began to grow, | and to gain in strength, / Oxen he ruled, | and plows made ready, / Houses he built, | and barns he fashioned, / Carts he made, | and the plow he managed.\" - Rigsthula"),
	Background = _("\"Bûra\" is the Proto-Germanic word for \"peasant\" or \"farmer\"."),
	Image = {"file", "germanic/units/worker.png", "size", {72, 72}},
	Animations = "animations-dwarven-miner", Icon = "icon-germanic-worker",
	Costs = {"time", 45, "gold", 400},
	Speed = 10,
	HitPoints = 30,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
	AutoRepairRange = 4,
	BasicDamage = 3, PiercingDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 50,
	BasePoints = 30,
	Demand = 1,
	Corpse = "unit-dwarven-dead-body",
	Type = "land",
	RightMouseAction = "harvest",
	CanAttack = true, RepairRange = 1,
	CanTargetLand = true,
	LandUnit = true,
	Coward = true,
	CanGatherResources = {
	 {"file-when-loaded", "germanic/units/worker_with_gold.png",
		"resource-id", "gold",
--		"harvest-from-outside",
		"resource-capacity", 100,
		"wait-at-resource", 150,
		"wait-at-depot", 150},
	 {"file-when-loaded", "germanic/units/worker_with_lumber.png",
		"resource-id", "lumber",
		"harvest-from-outside",
		"resource-capacity", 100,
		"resource-step", 2,
		"wait-at-resource", 24,
		"wait-at-depot", 150,
		"terrain-harvester"}
	},
	organic = true,
	SelectableByRectangle = true,
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
--		"ready", "dwarven-miner-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )
		
DefineUnitType("unit-germanic-warrior", { Name = _("Erala"), -- Erala = "Warrior" in Proto-Germanic, according to the "Wortschatz der Germanischen Spracheinheit" by August Fick
	Class = "infantry",
	Civilization = "germanic",
	Quote = _("\"His spear he shook, | his shield he brandished, / His horse he spurred, | with his sword he hewed; / Wars he raised, | and reddened the field, / Warriors slew he, | and land he won.\" - Rigsthula"),
--	Quote = _("\"Soon grew up | the sons of Jarl, / Beasts they tamed, | and bucklers rounded, / Shafts they fashioned, | and spears they shook.\" - Rigsthula"),
	Background = _("\"Erala\" is the Proto-Germanic word for \"warrior\"."),
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-axefighter",
	Costs = {"time", 60, "gold", 600},
	Speed = 10,
	HitPoints = 60,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
	Armor = 2, BasicDamage = 6, PiercingDamage = 3, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	BasePoints = 50,
	Demand = 1,
	Corpse = "unit-dwarven-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	LandUnit = true,
	organic = true,
	SelectableByRectangle = true,
	CanCastSpell = {"spell-learn-critical-strike"},
	Sounds = {
		"selected", "click",
--		"acknowledge", "basic-dwarf-voices-acknowledge",
--		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"}
} )

DefineUnitType("unit-germanic-town-hall", { Name = _("Chieftain's Hall"),
	Class = "town-hall",
	Civilization = "germanic",
	Description = _("The chieftain's hall serves both as the dwelling of a germanic tribe's chieftain and as the center of its political life."),
	Image = {"file", "germanic/buildings/town_hall.png", "size", {128, 128}},
	Animations = "animations-germanic-town-hall", Icon = "icon-germanic-town-hall",
	Costs = {"time", 255, "gold", 1200, "lumber", 800},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-germanic-town-hall",
	Speed = 0,
	HitPoints = 1200,
	DrawLevel = 20,
	TileSize = {4, 4}, BoxSize = {126, 126},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 35, AnnoyComputerFactor = 45,
	Points = 200,
	Supply = 1,
	Corpse = "unit-destroyed-4x4-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true, Center = true, LumberImprove = true,
	BuildingRules = {
		{ "distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-mine"},
		"distance", { Distance = 3, DistanceType = ">", Type = "unit-coal-mine"} }
	},
	CanStore = {"lumber", "gold", "coal"},
	Sounds = {
		"selected", "town-hall-selected",
--		"acknowledge", "town-hall-acknowledge",
--		"ready", "town-hall-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"} } )

DefineUnitType("unit-germanic-farm", { Name = _("Farm"),
	Class = "farm",
	Civilization = "germanic",
	Description = _("Farms are essential for supporting a settlement's population."),
	Background = _("The bronze age predecessors of the germanic peoples had a variety of plants and animals in their farms. Wheat, millet and peas figured among the crops planted, while the most common animals were sheep and pigs. The animals bred then were generally smaller than their modern counterparts, but they were sturdier."),
	Image = {"file", "germanic/buildings/farm.png", "size", {64, 64}},
	Animations = "animations-building", Icon = "icon-germanic-farm",
	Costs = {"time", 100, "gold", 500, "lumber", 250},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 400,
	DrawLevel = 20,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 20, AnnoyComputerFactor = 45,
	Points = 100,
	Supply = 4,
	Corpse = "unit-destroyed-2x2-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "farm-acknowledge",
--		"ready", "farm-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"} } )

DefineUnitType("unit-germanic-barracks", { Name = _("War Lodge"),
	Class = "barracks",
	Civilization = "germanic",
	Description = _("The germanic war lodge serves as a gathering place for the tribe's warriors."),
	Image = {"file", "germanic/buildings/barracks.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-germanic-barracks",
	Costs = {"time", 200, "gold", 700, "lumber", 450},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 800,
	DrawLevel = 20,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 35,
	Points = 160,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "barracks-acknowledge",
--		"ready", "barracks-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"} } )

DefineUnitType("unit-germanic-carpenters-shop", { Name = _("Carpenter's Shop"),
	Class = "lumber-mill",
	Civilization = "germanic",
--	Description = _("Dwarven culture places a great emphasis on handling stone and metal, to the detriment of woodworking. Nevertheless, the lumber mill employs a number of dwarven artisans skilled in woodworking, who strive to improve methods of lumber production and the scouts' throwing axes."),
--	Background = _("In Germanic mythology, one instance related to dwarven woodwork to be found is the crafting of the ship Skidbladnir and the throwing spear Gungnir by the sons of Ivaldi. Skidbladnir is mentioned in the ~<Grimnismol~>."),
	Image = {"file", "germanic/buildings/carpenters_shop.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-germanic-carpenters-shop",
	Costs = {"time", 150, "gold", 600, "lumber", 450},
	TechnologyPointCost = 1,
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	ImproveProduction = {"lumber", 25},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 600,
	DrawLevel = 20,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 25, AnnoyComputerFactor = 15,
	Points = 150,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true, LumberImprove = true,
	CanStore = {"lumber"},
	Sounds = {
		"selected", "lumber-mill-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
--		"ready", "dwarven-lumber-mill-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"} } )
