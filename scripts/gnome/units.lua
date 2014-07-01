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
--      units.ccl - Define the gnomish unit-types.
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

DefineUnitType("unit-gnomish-worker", { Name = "Gnomish Scavenger",
  Image = {"file", "gnome/units/gnomish_worker.png", "size", {72, 72}},
  DrawLevel = 19,
  Animations = "animations-gnomish-worker", Icon = "icon-gnomish-worker",
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
--  Corpse = "unit-human-dead-body",
  Type = "land",
  RightMouseAction = "harvest",
  CanAttack = true, RepairRange = 1,
  CanTargetLand = true,
  LandUnit = true,
  Coward = true,
  CanGatherResources = {
   {"file-when-loaded", "gnome/units/gnomish_worker_with_gold.png",
    "resource-id", "gold",
--    "harvest-from-outside",
    "resource-capacity", 100,
    "wait-at-resource", 150,
    "wait-at-depot", 150},
   {"file-when-loaded", "gnome/units/gnomish_worker_with_lumber.png",
    "resource-id", "wood",
    "resource-capacity", 100,
    "resource-step", 2,
    "wait-at-resource", 24,
    "wait-at-depot", 150,
    "terrain-harvester"}},
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "basic-dwarf-voices-acknowledge",
--    "ready", "basic-dwarf-voices-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-gnomish-recruit", { Name = gnomish_recruit_name,
  Image = {"file", "gnome/units/gnomish_recruit.png", "size", {72, 72}},
  Animations = "animations-gnomish-recruit", Icon = "icon-gnomish-recruit",
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
--    Corpse = "unit-human-dead-body",
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
--    "acknowledge", "basic-dwarf-voices-acknowledge",
--    "ready", "basic-dwarf-voices-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-gnomish-caravan", { Name = gnomish_caravan_name,
  Image = {"file", "gnome/units/gnomish_caravan.png", "size", {64, 64}},
  Animations = "animations-gnomish-caravan", Icon = "icon-gnomish-caravan",
  Costs = {"time", 250, "gold", 900, "wood", 300},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Speed = 5,
  HitPoints = 110,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  Priority = 70,
  Points = 100,
  Demand = 1,
  Type = "land",
  Coward = true,
  RightMouseAction = "move",
  SelectableByRectangle = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "ballista-acknowledge",
--    "ready", "ballista-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "explosion"} } )

DefineUnitType("unit-gnomish-town-hall", { Name = "Town Hall",
  Image = {"file", "gnome/buildings/town_hall.png", "size", {128, 128}},
  Animations = "animations-building", Icon = "icon-gnomish-town-hall",
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
--    "acknowledge", "town-hall-acknowledge",
--    "ready", "town-hall-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )

DefineUnitType("unit-gnomish-farm", { Name = "Farm",
  Image = {"file", "gnome/buildings/farm.png", "size", {64, 64}},
  Animations = "animations-farm", Icon = "icon-gnomish-farm",
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
--    "acknowledge", "farm-acknowledge",
--    "ready", "farm-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )

DefineUnitType("unit-gnomish-barracks", { Name = "Barracks",
  Image = {"file", "gnome/buildings/barracks.png", "size", {96, 96}},
  Animations = "animations-building", Icon = "icon-gnomish-barracks",
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
--    "acknowledge", "barracks-acknowledge",
--    "ready", "barracks-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )








GrandStrategyUnits["GnomishRecruit"] = {
	Name = GetUnitTypeName("unit-gnomish-recruit") .. "s",
	UnitType = "unit-gnomish-recruit",
	Icon = "gnome/icons/gnomish_recruit.png",
	Civilization = "gnome",
	Type = "Infantry",
	Costs = {
		Gold = 600
	},
	X = 0,
	Y = 0,
	RequiredBuildings = { "GnomishBarracks" },
	InterfaceState = "Barracks"
}

-- GS buildings
GrandStrategyBuildings["GnomishTownHall"] = {
	Name = GetUnitTypeName("unit-gnomish-town-hall"),
	UnitType = "unit-gnomish-town-hall",
	Icon = "tilesets/swamp/gnome/icons/town_hall.png",
	Civilization = "gnome",
	Type = "Town Hall",
	Costs = {
		Gold = 1200,
		Lumber = 800
	},
	X = 0,
	Y = -2
}

GrandStrategyBuildings["GnomishBarracks"] = {
	Name = GetUnitTypeName("unit-gnomish-barracks"),
	UnitType = "unit-gnomish-barracks",
	Icon = "tilesets/swamp/gnome/icons/barracks.png",
	Civilization = "gnome",
	Type = "Barracks",
	Costs = {
		Gold = 700,
		Lumber = 450
	},
	X = 1,
	Y = -2,
	RequiredBuildings = { "GnomishTownHall" }
}
