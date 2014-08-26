--			 _________ __								 __
--			/	 _____//	|_____________ _/	|______		 ____	__ __	______
--			\_____	\\	 __\_	__ \__	\\	 __\__	\	 / ___\|	|	\/	___/
--			/				\|	|	|	| \// __ \|	|	/ __ \_/ /_/	>	|	/\___ \
--		 /_______	/|__|	|__|	(____	/__| (____	/\___	/|____//____	>
--						 \/									\/					\//_____/						\/
--	______________________													 ______________________
--												T H E	 W A R	 B E G I N S
--				 Stratagus - A free fantasy real time strategy game engine
--
--			units.ccl - Define the goblin unit-types.
--
--			(c) Copyright 2014 by Andre Novellino Gouvêa
--
--			This program is free software; you can redistribute it and/or modify
--			it under the terms of the GNU General Public License as published by
--			the Free Software Foundation; either version 2 of the License, or
--			(at your option) any later version.
--
--			This program is distributed in the hope that it will be useful,
--			but WITHOUT ANY WARRANTY; without even the implied warranty of
--			MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
--			GNU General Public License for more details.
--
--			You should have received a copy of the GNU General Public License
--			along with this program; if not, write to the Free Software
--			Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA	02111-1307	USA
--

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-goblin-worker", { Name = "Goblin Worker",
	Class = "worker",
	Civilization = "goblin",
	Description = "Goblin workers do not live an enviable life. Those that have the opportunity seek to become warriors instead, a position in which they can obtain much better food and everyday commodities by raiding.",
	Image = {"file", "goblin/units/goblin_worker.png", "size", {72, 72}},
	DrawLevel = 19,
	Animations = "animations-gnomish-worker", Icon = "icon-goblin-worker",
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
	Corpse = "unit-goblin-dead-body",
	Type = "land",
	RightMouseAction = "harvest",
	CanAttack = true, RepairRange = 1,
	CanTargetLand = true,
	LandUnit = true,
	Coward = true,
	CanGatherResources = {
	 {"file-when-loaded", "goblin/units/goblin_worker_with_gold.png",
		"resource-id", "gold",
--		"harvest-from-outside",
		"resource-capacity", 100,
		"wait-at-resource", 150,
		"wait-at-depot", 150},
	 {"file-when-loaded", "goblin/units/goblin_worker_with_lumber.png",
		"resource-id", "wood",
		"resource-capacity", 100,
		"resource-step", 2,
		"wait-at-resource", 24,
		"wait-at-depot", 150,
		"terrain-harvester"}},
	organic = true,
	SelectableByRectangle = true,
	Variations = {
	{
		"variation-id", "bald"
	},
	{
		"variation-id", "spiky-hair"
	}
	},
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"ready", "goblin-worker-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-goblin-voices-dead"} } )

DefineUnitType("unit-goblin-spearman", { Name = "Goblin Impaler",
	Class = "infantry",
	Civilization = "goblin",
	Image = {"file", "goblin/units/goblin_spearman.png", "size", {72, 72}},
	Description = "Due to their small size, the goblin infantry soldiers use the spear as their weapon of choice, as with it they can target their enemies' vital points, relying less on their lackluster strength.",
	Animations = "animations-goblin-spearman", Icon = "icon-goblin-spearman",
	Costs = {"time", 60, "gold", 600},
	Speed = 10,
	HitPoints = 50,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
	Armor = 2, BasicDamage = 3, PiercingDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	BasePoints = 50,
	Demand = 1,
	Corpse = "unit-goblin-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	LandUnit = true,
	organic = true,
	SelectableByRectangle = true,
	CanCastSpell = {"spell-learn-critical-strike"},
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"ready", "goblin-impaler-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-goblin-voices-dead"} } )

DefineUnitType("unit-goblin-archer", { Name = "Goblin Archer",
	Class = "archer",
	Civilization = "goblin",
	Description = "Swift and deadly, the goblin archers hone above all the art of the ambush. Wary of being caught unprepared, they carry daggers with them, should an enemy get too close.",
	Image = {"file", "goblin/units/goblin_archer.png", "size", {72, 72}},
	Animations = "animations-goblin-archer", Icon = "icon-goblin-archer",
	Costs = {"time", 70, "gold", 500, "wood", 50},
	Speed = 10,
	HitPoints = 35,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {33, 33},
	SightRange = 5, ComputerReactionRange = 7, PersonReactionRange = 5,
	BasicDamage = 0, PiercingDamage = 9, Missile = "missile-arrow",
	MaxAttackRange = 4,
	Priority = 55,
	Points = 60,
	Demand = 1,
	Corpse = "unit-goblin-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	LandUnit = true,
	organic = true,
	SelectableByRectangle = true,
	CanCastSpell = {"spell-secondary-melee-attack", "spell-learn-critical-strike"},
	AutoCastActive = {"spell-secondary-melee-attack"},
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"ready", "goblin-archer-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-goblin-voices-dead"} } )

DefineUnitType("unit-goblin-war-machine", { Name = "War Machine",
	Class = "siege-engine",
	Civilization = "goblin",
	Description = "One recurring element of the goblin architectural style is the use of bones. With their siege weapons, it is no different: the goblin war machine displays a wyrm skull on its front, and the beast's ribs on its sides. This siege weapon has the marks of goblin craftsmanship, combining brilliant plans and excellent initiative with lack of patience to perfect the machine and make it achieve its full potential. The machine can hold its own even against warriors skilled in hand-to-hand combat, as the goblins within it won't hesitate to pierce them with their spears. This comes at a cost, however, as cramming a catapult and a couple of goblins in such a relatively small space reduces the structural integrity of the siege weapon. The use of wyrm bones in the construction of the war machine is considered to be something of a profanation by kobolds, who worship the ancient beasts as their progenitors.",
	Image = {"file", "goblin/units/goblin_war_machine.png", "size", {72, 72}},
	Animations = "animations-goblin-war-machine", Icon = "icon-goblin-war-machine",
	Costs = {"time", 250, "gold", 900, "wood", 300},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "wood", 1},
	Speed = 5,
	HitPoints = 90,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {63, 63},
	SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
	BasicDamage = 80, PiercingDamage = 0, Missile = "missile-catapult-flaming-rock",
	MinAttackRange = 2, MaxAttackRange = 8,
	Priority = 70,
	BasePoints = 100,
	Demand = 1,
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	RightMouseAction = "attack",
	CanGroundAttack = true,
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true,
	SelectableByRectangle = true,
	CanCastSpell = {"spell-war-machine-spear-attack"},
	AutoCastActive = {"spell-war-machine-spear-attack"},
	Sounds = {
		"selected", "click",
--		"acknowledge", "ballista-acknowledge",
--		"ready", "dwarven-ballista-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "explosion"
} } )

DefineUnitType("unit-goblin-town-hall", { Name = "Town Hall",
	Class = "town-hall",
	Civilization = "goblin",
	Description = "The town hall is the center of a goblin settlement's life.",
	Image = {"file", "goblin/buildings/town_hall.png", "size", {128, 128}},
	Animations = "animations-building", Icon = "icon-goblin-town-hall",
	Costs = {"time", 255, "gold", 1200, "wood", 800},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "wood", 1},
	Construction = "construction-land",
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
	Building = true, VisibleUnderFog = true, Center = true, WoodImprove = true,
	BuildingRules = {
		{ "distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-mine"},
		"distance", { Distance = 3, DistanceType = ">", Type = "unit-coal-mine"} }
	},
	CanStore = {"wood", "gold", "coal"},
	Sounds = {
		"selected", "town-hall-selected",
--		"acknowledge", "town-hall-acknowledge",
--		"ready", "town-hall-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"} } )

DefineUnitType("unit-goblin-farm", { Name = "Farm",
	Class = "farm",
	Civilization = "goblin",
	Description = "Goblin farms provide sustenance for their settlements. Contrary to the dwarves, goblins tend to plant roots, rather than mushrooms.",
	Image = {"file", "goblin/buildings/farm.png", "size", {64, 64}},
	Animations = "animations-farm", Icon = "icon-goblin-farm",
	NeutralMinimapColor = {192, 192, 192},
	Costs = {"time", 100, "gold", 500, "wood", 250},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "wood", 1},
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

DefineUnitType("unit-goblin-mess-hall", { Name = "Mess Hall",
	Class = "barracks",
	Civilization = "goblin",
	Description = "The mess hall is where the goblin warriors gather to hone their skills and to plan raids on other settlements.",
	Image = {"file", "goblin/buildings/mess_hall.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-goblin-mess-hall",
	Costs = {"time", 200, "gold", 700, "wood", 450},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "wood", 1},
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

DefineUnitType("unit-goblin-lumber-mill", { Name = "Lumber Mill",
	Class = "lumber-mill",
	Civilization = "goblin",
	Description = "Although exhibiting a crude exterior, the goblin lumber mills carry saws as technologically advanced as that of other societies",
	Image = {"file", "goblin/buildings/lumber_mill.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-goblin-lumber-mill",
	Costs = {"time", 150, "gold", 600, "wood", 450},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "wood", 1},
	ImproveProduction = {"wood", 25},
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
	Building = true, VisibleUnderFog = true, WoodImprove = true,
	CanStore = {"wood"},
	Sounds = {
		"selected", "lumber-mill-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
--		"ready", "dwarven-lumber-mill-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"} } )

DefineUnitType("unit-goblin-smith", { Name = "Fugla Forge",
	Class = "smith",
	Civilization = "goblin",
	Description = "Goblins construct their forges out of the skulls of massive birds found on Nidavellir.",
	Background = "The name 'Fugla' was taken from the Proto-Germanic language (the reconstructed ancestor to all Germanic languages), and means 'bird'.",
	Image = {"file", "goblin/buildings/smith.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-goblin-smith",
--	Costs = {"time", 200, "gold", 800, "wood", 450, "oil", 100},
	Costs = {"time", 200, "gold", 900, "wood", 500},
	RepairHp = 4,
--	RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
	RepairCosts = {"gold", 1, "wood", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 775,
	DrawLevel = 20,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 15, AnnoyComputerFactor = 20,
	Points = 170,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Sounds = {
--		"selected", "lumber-mill-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
--		"ready", "dwarven-lumber-mill-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"} } )

DefineUnitType("unit-hero-greebo", { Name = "Greebo",
	Civilization = "goblin",
	Image = {"file", "goblin/units/goblin_swordsman.png", "size", {72, 72}},
	Animations = "animations-goblin-swordsman", Icon = "icon-greebo",
	Costs = {"time", 0, "gold", 5250},
	Speed = 10,
	HitPoints = 85,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
	Armor = 2, BasicDamage = 4, PiercingDamage = 8, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	BasePoints = 50,
	Demand = 1,
	StartingLevel = 1,
	Corpse = "unit-goblin-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	LandUnit = true,
	organic = true,
	SelectableByRectangle = true,
	CanCastSpell = {"spell-learn-critical-strike"},
	Sounds = {
		"selected", "basic-goblin-voices-selected-group",
		"acknowledge", "basic-goblin-voices-acknowledge",
		"ready", "goblin-impaler-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-goblin-voices-dead"} } )

DefineUnitType("unit-goblin-banner", { Name = "Goblin Banner",
	Civilization = "goblin",
	Image = {"file", "goblin/decorations/goblin_banner.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-goblin-banner", Icon = "icon-goblin-banner",
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	VisibleUnderFog = true,
	IsNotSelectable = true,
	Building = true,
	Variations = {
	{
		"variation-id", "no-skull"
	},
	{
		"variation-id", "skull"
	}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building destroyed"} }
)






GrandStrategyUnits["GoblinImpaler"] = {
	Name = GetUnitTypeName("unit-goblin-spearman") .. "s",
	UnitType = "unit-goblin-spearman",
	Icon = "goblin/icons/goblin_spearman.png",
	Civilization = "goblin",
	Type = "Infantry",
	Costs = {
		Gold = 600
	},
	Upkeep = 25,
	X = 0,
	Y = 0,
	RequiredBuildings = { "GoblinMessHall" },
	InterfaceState = "Barracks"
}

GrandStrategyUnits["GoblinArcher"] = {
	Name = GetUnitTypeName("unit-goblin-archer") .. "s",
	UnitType = "unit-goblin-archer",
	Icon = "goblin/icons/goblin_archer.png",
	Civilization = "goblin",
	Type = "Archer",
	Costs = {
		Gold = 500,
		Lumber = 50
	},
	Upkeep = 25,
	X = 1,
	Y = 0,
	RequiredBuildings = { "GoblinMessHall", "GoblinLumberMill" },
	InterfaceState = "Barracks"
}

GrandStrategyUnits["GoblinWarMachine"] = {
	Name = GetUnitTypeName("unit-goblin-war-machine") .. "s",
	UnitType = "unit-goblin-war-machine",
	Icon = "goblin/icons/goblin_war_machine.png",
	Civilization = "goblin",
	Type = "Catapult",
	Costs = {
		Gold = 900,
		Lumber = 300
	},
	Upkeep = 50,
	X = 2,
	Y = 0,
	RequiredBuildings = { "GoblinMessHall", "GoblinLumberMill", "GoblinSmith" },
	InterfaceState = "Barracks"
}


-- GS buildings
GrandStrategyBuildings["GoblinTownHall"] = {
	Name = GetUnitTypeName("unit-goblin-town-hall"),
	UnitType = "unit-goblin-town-hall",
	Icon = "goblin/icons/town_hall.png",
	Civilization = "goblin",
	Type = "Town Hall",
	Costs = {
		Gold = 1200,
		Lumber = 800
	},
	X = 0,
	Y = -2
}

GrandStrategyBuildings["GoblinMessHall"] = {
	Name = GetUnitTypeName("unit-goblin-mess-hall"),
	UnitType = "unit-goblin-mess-hall",
	Icon = "goblin/icons/mess_hall.png",
	Civilization = "goblin",
	Type = "Barracks",
	Costs = {
		Gold = 700,
		Lumber = 450
	},
	X = 1,
	Y = -2,
	RequiredBuildings = { "GoblinTownHall" }
}

GrandStrategyBuildings["GoblinLumberMill"] = {
	Name = GetUnitTypeName("unit-goblin-lumber-mill"),
	UnitType = "unit-goblin-lumber-mill",
	Icon = "goblin/icons/lumber_mill.png",
	Civilization = "goblin",
	Type = "Lumber Mill",
	Costs = {
		Gold = 600,
		Lumber = 450
	},
	X = 2,
	Y = -2,
	RequiredBuildings = { "GoblinTownHall" }
}

GrandStrategyBuildings["GoblinSmith"] = {
	Name = GetUnitTypeName("unit-goblin-smith"),
	UnitType = "unit-goblin-smith",
	Icon = "goblin/icons/smith.png",
	Civilization = "goblin",
	Type = "Smith",
	Costs = {
		Gold = 900,
		Lumber = 500
	},
	X = 0,
	Y = -1,
	RequiredBuildings = { "GoblinTownHall" }
}
