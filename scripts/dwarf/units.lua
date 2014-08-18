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
--      units.ccl - Define the dwarven unit-types.
--
--      (c) Copyright 2013-2014 by Andre Novellino Gouvêa
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

DefineUnitType("unit-dwarven-miner", { Name = dwarven_miner_name,
  Image = {"file", "dwarf/units/miner.png", "size", {72, 72}},
  Animations = "animations-dwarven-miner", Icon = "icon-dwarven-miner",
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
   {"file-when-loaded", "dwarf/units/miner_with_gold.png",
    "resource-id", "gold",
--    "harvest-from-outside",
    "resource-capacity", 100,
    "wait-at-resource", 120,
    "wait-at-depot", 150},
   {"file-when-loaded", "dwarf/units/miner_with_lumber.png",
    "resource-id", "wood",
    "harvest-from-outside",
    "resource-capacity", 100,
    "resource-step", 2,
    "wait-at-resource", 29,
    "wait-at-depot", 150,
    "terrain-harvester"},
   {"file-when-loaded", "dwarf/units/miner_with_coal.png",
    "resource-id", "coal",
    "resource-capacity", 100,
    "wait-at-resource", 120,
    "wait-at-depot", 150}
  },
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "dwarven-miner-acknowledge",
    "ready", "dwarven-miner-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-dwarven-axefighter", { Name = dwarven_axefighter_name,
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
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Variations = {
	{
		"variation-id", "red-hair"
	},
	{
		"variation-id", "gray-hair",
		"file", "dwarf/units/dwarven_axefighter_gray_hair.png",
		"icon", "icon-dwarven-axefighter-gray-hair"
	},
	{
		"variation-id", "orange-hair",
		"file", "dwarf/units/dwarven_axefighter_orange_hair.png"
	},
	{
		"variation-id", "blond-hair",
		"file", "dwarf/units/dwarven_axefighter_blond_hair.png",
		"icon", "icon-dwarven-axefighter-blond-hair"
	},
	{
		"variation-id", "black-hair",
		"file", "dwarf/units/dwarven_axefighter_black_hair.png",
		"icon", "icon-dwarven-axefighter-black-hair"
	},
	{
		"variation-id", "brown-hair",
		"file", "dwarf/units/dwarven_axefighter_brown_hair.png",
		"icon", "icon-dwarven-axefighter-brown-hair"
	}
  },
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-axefighter-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-dwarven-steelclad", { Name = "Steelclad",
  Image = {"file", "dwarf/units/dwarven_steelclad.png", "size", {72, 72}},
  Animations = "animations-dwarven-steelclad", Icon = "icon-dwarven-steelclad",
  Costs = {"time", 0},
  Speed = 10,
  HitPoints = 75,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
  Armor = 4, BasicDamage = 6, PiercingDamage = 3, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 60,
  BasePoints = 75,
  Demand = 1,
  StartingLevel = 2,
  Corpse = "unit-dwarven-dead-body",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Variations = {
	{
		"variation-id", "red-hair"
	},
	{
		"variation-id", "gray-hair",
		"file", "dwarf/units/dwarven_steelclad_gray_hair.png",
		"icon", "icon-dwarven-steelclad-gray-hair"
	},
	{
		"variation-id", "orange-hair",
		"file", "dwarf/units/dwarven_steelclad_orange_hair.png"
	},
	{
		"variation-id", "blond-hair",
		"file", "dwarf/units/dwarven_steelclad_blond_hair.png",
		"icon", "icon-dwarven-steelclad-blond-hair"
	},
	{
		"variation-id", "black-hair",
		"file", "dwarf/units/dwarven_steelclad_black_hair.png",
		"icon", "icon-dwarven-steelclad-black-hair"
	},
	{
		"variation-id", "brown-hair",
		"file", "dwarf/units/dwarven_steelclad_brown_hair.png",
		"icon", "icon-dwarven-steelclad-brown-hair"
	}
  },
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-steelclad-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-dwarven-thane", { Name = "Thane",
  Image = {"file", "dwarf/units/thane.png", "size", {72, 72}},
  Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-thane",
  Costs = {"time", 0},
  Speed = 10,
  HitPoints = 90,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
  Armor = 6, BasicDamage = 6, PiercingDamage = 3, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 60,
  BasePoints = 100,
  Demand = 1,
  StartingLevel = 3,
  Corpse = "unit-dwarven-dead-body",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Variations = {
	{
		"variation-id", "red-hair"
	},
	{
		"variation-id", "gray-hair",
		"file", "dwarf/units/thane_gray_hair.png",
		"icon", "icon-dwarven-thane-gray-hair"
	},
	{
		"variation-id", "orange-hair",
		"file", "dwarf/units/thane_orange_hair.png"
	},
	{
		"variation-id", "blond-hair",
		"file", "dwarf/units/thane_blond_hair.png",
		"icon", "icon-dwarven-thane-blond-hair"
	},
	{
		"variation-id", "black-hair",
		"file", "dwarf/units/thane_black_hair.png",
		"icon", "icon-dwarven-thane-black-hair"
	},
	{
		"variation-id", "brown-hair",
		"file", "dwarf/units/thane_brown_hair.png",
		"icon", "icon-dwarven-thane-brown-hair"
	}
  },
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-steelclad-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-dwarven-scout", { Name = "Scout",
  Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
  Animations = "animations-dwarven-scout", Icon = "icon-dwarven-scout",
  Costs = {"time", 70, "gold", 500, "wood", 50},
  Speed = 10,
  HitPoints = 40,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 5, ComputerReactionRange = 7, PersonReactionRange = 5,
  BasicDamage = 3, PiercingDamage = 6, Missile = "missile-throwing-axe",
  MaxAttackRange = 4,
  Priority = 55,
  BasePoints = 60,
  Demand = 1,
  Corpse = "unit-dwarven-dead-body",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  CanCastSpell = {"spell-learn-critical-strike"},
  Variations = {
	{
		"variation-id", "orange-hair-short-beard"
	},
	{
		"variation-id", "orange-hair-braided-beard",
		"icon", "icon-dwarven-scout-braided-beard"
	},
	{
		"variation-id", "blond-hair-short-beard",
		"file", "dwarf/units/dwarven_scout_blond_hair.png",
		"icon", "icon-dwarven-scout-blond-hair"
	},
	{
		"variation-id", "blond-hair-braided-beard",
		"file", "dwarf/units/dwarven_scout_blond_hair.png",
		"icon", "icon-dwarven-scout-blond-hair-braided-beard"
	},
	{
		"variation-id", "gray-hair-short-beard",
		"file", "dwarf/units/dwarven_scout_gray_hair.png",
		"icon", "icon-dwarven-scout-gray-hair"
	},
	{
		"variation-id", "gray-hair-braided-beard",
		"file", "dwarf/units/dwarven_scout_gray_hair.png",
		"icon", "icon-dwarven-scout-gray-hair-braided-beard"
	}
  },
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-scout-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-dwarven-ballista", { Name = "Ballista",
  Image = {"file", "dwarf/units/dwarven_ballista.png", "size", {64, 64}},
  Animations = "animations-dwarven-ballista", Icon = "icon-dwarven-ballista",
  Costs = {"time", 250, "gold", 900, "wood", 300},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Speed = 5,
  HitPoints = 110,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  BasicDamage = 80, PiercingDamage = 0, Missile = "missile-dwarven-ballista-bolt",
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
  Sounds = {
    "selected", "click",
--    "acknowledge", "ballista-acknowledge",
    "ready", "dwarven-ballista-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "explosion"
} } )

DefineUnitType("unit-dwarven-gryphon-rider", { Name = "Gryphon Rider",
  Image = {"file", "dwarf/units/gryphon_rider.png", "size", {100, 100}},
  DrawLevel = 45,
  Animations = "animations-dwarven-gryphon-rider", Icon = "icon-dwarven-gryphon-rider",
  Costs = {"time", 250, "gold", 1750, "wood", 750},
  Speed = 10,
  HitPoints = 100,
  DrawLevel = 60,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
  Armor = 0, BasicDamage = 4, PiercingDamage = 8, Missile = "missile-throwing-axe",
  MaxAttackRange = 4,
  Priority = 65,
  Points = 150,
  Demand = 1,
  Type = "fly",
--  ShadowFly = {Value = 1, Enable = true}, -- deactivated the shadow because it was appearing on top of the unit
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  AirUnit = true,
  DetectCloak = true,
  organic = true,
  SelectableByRectangle = true,
  CanCastSpell = {"spell-learn-critical-strike"},
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-gryphon-rider-ready",
--    "help", "critter-help",
    "dead", "gryphon-dead"
} } )

DefineUnitType("unit-dwarven-town-hall", { Name = dwarven_town_hall_name,
  Image = {"file", "dwarf/buildings/town_hall.png", "size", {128, 128}},
  Animations = "animations-building", Icon = "icon-dwarven-town-hall",
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

DefineUnitType("unit-dwarven-mushroom-farm", { Name = dwarven_mushroom_farm_name,
  Image = {"file", "dwarf/buildings/mushroom_farm.png", "size", {64, 64}},
  Animations = "animations-building", Icon = "icon-dwarven-mushroom-farm",
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

DefineUnitType("unit-dwarven-barracks", { Name = dwarven_barracks_name,
  Image = {"file", "dwarf/buildings/barracks.png", "size", {96, 96}},
  Animations = "animations-building", Icon = "icon-dwarven-barracks",
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

DefineUnitType("unit-dwarven-lumber-mill", { Name = "Lumber Mill",
  Image = {"file", "dwarf/buildings/lumber_mill.png", "size", {96, 96}},
  Animations = "animations-building", Icon = "icon-dwarven-lumber-mill",
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
--    "acknowledge", "dwarven-lumber-mill-acknowledge",
--    "ready", "dwarven-lumber-mill-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )

DefineUnitType("unit-dwarven-blacksmith", { Name = "Blacksmith",
  Image = {"file", "dwarf/buildings/blacksmith.png", "size", {96, 96}},
  Animations = "animations-building", Icon = "icon-dwarven-blacksmith",
--  Costs = {"time", 200, "gold", 800, "wood", 450, "oil", 100},
  Costs = {"time", 200, "gold", 900, "wood", 500},
  RepairHp = 4,
--  RepairCosts = {"gold", 1, "wood", 1, "oil", 1},
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
--    "selected", "lumber-mill-selected",
--    "acknowledge", "dwarven-lumber-mill-acknowledge",
--    "ready", "dwarven-lumber-mill-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )

DefineUnitType("unit-dwarven-sentry-tower", { Name = "Sentry Tower",
  Image = {"file", "dwarf/buildings/sentry_tower.png", "size", {64, 64}},
  Animations = "animations-building", Icon = "icon-dwarven-sentry-tower",
  Costs = {"time", 60, "gold", 550, "wood", 200},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 100,
  DrawLevel = 20,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 9,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 55, AnnoyComputerFactor = 50,
  Points = 95,
  Corpse = "unit-destroyed-2x2-place",
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  Building = true, VisibleUnderFog = true,
  DetectCloak = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "dwarven-sentry-tower-acknowledge",
--    "ready", "dwarven-sentry-tower-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )

DefineUnitType("unit-dwarven-guard-tower", { Name = "Guard Tower",
  Image = {"file", "dwarf/buildings/guard_tower.png", "size", {64, 64}},
  Animations = "animations-dwarven-guard-tower", Icon = "icon-dwarven-guard-tower",
  Costs = {"time", 140, "gold", 500, "wood", 150},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-land",
  Speed = 0,
  HitPoints = 130,
  DrawLevel = 40,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 6, PersonReactionRange = 6,
  Armor = 20, BasicDamage = 4, PiercingDamage = 12, Missile = "missile-throwing-axe",
  MaxAttackRange = 6,
  Priority = 40, AnnoyComputerFactor = 50,
  Points = 200,
  Corpse = "unit-destroyed-2x2-place",
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  Building = true, VisibleUnderFog = true,
  DetectCloak = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "dwarven-sentry-tower-acknowledge",
--    "ready", "dwarven-sentry-tower-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )

DefineUnitType("unit-surghan-mercenary-steelclad", { Name = "Surghan Mercenary",
  Image = {"file", "dwarf/units/dwarven_steelclad.png", "size", {72, 72}},
  Animations = "animations-dwarven-steelclad", Icon = "icon-surghan-mercenary-steelclad",
  Costs = {"time", 0},
  Speed = GetUnitTypeData("unit-dwarven-steelclad", "Speed"),
  HitPoints = GetUnitTypeData("unit-dwarven-steelclad", "HitPoints"),
  DrawLevel = GetUnitTypeData("unit-dwarven-steelclad", "DrawLevel"),
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = GetUnitTypeData("unit-dwarven-steelclad", "SightRange"),
  ComputerReactionRange = GetUnitTypeData("unit-dwarven-steelclad", "ComputerReactionRange"),
  PersonReactionRange = GetUnitTypeData("unit-dwarven-steelclad", "PersonReactionRange"),
  Armor = GetUnitTypeData("unit-dwarven-steelclad", "Armor"),
  BasicDamage = GetUnitTypeData("unit-dwarven-steelclad", "BasicDamage"),
  PiercingDamage = GetUnitTypeData("unit-dwarven-steelclad", "PiercingDamage"),
  Missile = GetUnitTypeData("unit-dwarven-steelclad", "Missile"),
  MaxAttackRange = GetUnitTypeData("unit-dwarven-steelclad", "MaxAttackRange"),
  Priority = GetUnitTypeData("unit-dwarven-steelclad", "Priority"),
  BasePoints = GetUnitTypeData("unit-dwarven-steelclad", "BasePoints"),
  Demand = GetUnitTypeData("unit-dwarven-steelclad", "Demand"),
  StartingLevel = GetUnitTypeData("unit-dwarven-steelclad", "StartingLevel"),
  Corpse = GetUnitTypeData("unit-dwarven-steelclad", "Corpse"),
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = GetUnitTypeData("unit-dwarven-steelclad", "CanAttack"),
  CanTargetLand = true,
  LandUnit = GetUnitTypeData("unit-dwarven-steelclad", "LandUnit"),
  organic = GetUnitTypeData("unit-dwarven-steelclad", "organic"),
  SelectableByRectangle = GetUnitTypeData("unit-dwarven-steelclad", "SelectableByRectangle"),
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-steelclad-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-surghan-mercenary-thane", { Name = "Surghan Mercenary",
  Image = {"file", "dwarf/units/thane.png", "size", {72, 72}},
  Animations = "animations-dwarven-axefighter", Icon = "icon-surghan-mercenary-thane",
  Costs = {"time", 0},
  Speed = GetUnitTypeData("unit-dwarven-thane", "Speed"),
  HitPoints = GetUnitTypeData("unit-dwarven-thane", "HitPoints"),
  DrawLevel = GetUnitTypeData("unit-dwarven-thane", "DrawLevel"),
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = GetUnitTypeData("unit-dwarven-thane", "SightRange"),
  ComputerReactionRange = GetUnitTypeData("unit-dwarven-thane", "ComputerReactionRange"),
  PersonReactionRange = GetUnitTypeData("unit-dwarven-thane", "PersonReactionRange"),
  Armor = GetUnitTypeData("unit-dwarven-thane", "Armor"),
  BasicDamage = GetUnitTypeData("unit-dwarven-thane", "BasicDamage"),
  PiercingDamage = GetUnitTypeData("unit-dwarven-thane", "PiercingDamage"),
  Missile = GetUnitTypeData("unit-dwarven-thane", "Missile"),
  MaxAttackRange = GetUnitTypeData("unit-dwarven-thane", "MaxAttackRange"),
  Priority = GetUnitTypeData("unit-dwarven-thane", "Priority"),
  BasePoints = GetUnitTypeData("unit-dwarven-thane", "BasePoints"),
  Demand = GetUnitTypeData("unit-dwarven-thane", "Demand"),
  StartingLevel = GetUnitTypeData("unit-dwarven-thane", "StartingLevel"),
  Corpse = GetUnitTypeData("unit-dwarven-thane", "Corpse"),
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = GetUnitTypeData("unit-dwarven-thane", "CanAttack"),
  CanTargetLand = true,
  LandUnit = GetUnitTypeData("unit-dwarven-thane", "LandUnit"),
  organic = GetUnitTypeData("unit-dwarven-thane", "organic"),
  SelectableByRectangle = GetUnitTypeData("unit-dwarven-thane", "SelectableByRectangle"),
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-steelclad-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-hero-rugnur", { Name = "Rugnur",
  Image = {"file", "dwarf/units/rugnur.png", "size", {72, 72}},
  Animations = "animations-dwarven-axefighter", Icon = "icon-rugnur",
  Costs = {"time", 0},
  Speed = GetUnitTypeData("unit-dwarven-axefighter", "Speed"),
  HitPoints = GetUnitTypeData("unit-dwarven-axefighter", "HitPoints"),
  DrawLevel = GetUnitTypeData("unit-dwarven-axefighter", "DrawLevel"),
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = GetUnitTypeData("unit-dwarven-axefighter", "SightRange"),
  ComputerReactionRange = GetUnitTypeData("unit-dwarven-axefighter", "ComputerReactionRange"),
  PersonReactionRange = GetUnitTypeData("unit-dwarven-axefighter", "PersonReactionRange"),
  Armor = GetUnitTypeData("unit-dwarven-axefighter", "Armor"),
  BasicDamage = GetUnitTypeData("unit-dwarven-axefighter", "BasicDamage"),
  PiercingDamage = GetUnitTypeData("unit-dwarven-axefighter", "PiercingDamage"),
  Missile = GetUnitTypeData("unit-dwarven-axefighter", "Missile"),
  MaxAttackRange = GetUnitTypeData("unit-dwarven-axefighter", "MaxAttackRange"),
  Priority = GetUnitTypeData("unit-dwarven-axefighter", "Priority"),
  BasePoints = GetUnitTypeData("unit-dwarven-axefighter", "BasePoints"),
  Demand = GetUnitTypeData("unit-dwarven-axefighter", "Demand"),
  Corpse = GetUnitTypeData("unit-dwarven-axefighter", "Corpse"),
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = GetUnitTypeData("unit-dwarven-axefighter", "CanAttack"),
  CanTargetLand = true,
  LandUnit = GetUnitTypeData("unit-dwarven-axefighter", "LandUnit"),
  organic = GetUnitTypeData("unit-dwarven-axefighter", "organic"),
  SelectableByRectangle = GetUnitTypeData("unit-dwarven-axefighter", "SelectableByRectangle"),
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-axefighter-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-hero-rugnur-steelclad", { Name = "Rugnur",
  Image = {"file", "dwarf/units/dwarven_steelclad_brown_hair.png", "size", {72, 72}},
  Animations = "animations-dwarven-steelclad", Icon = "icon-rugnur",
  Costs = {"time", 0},
  Speed = GetUnitTypeData("unit-dwarven-steelclad", "Speed"),
  HitPoints = GetUnitTypeData("unit-dwarven-steelclad", "HitPoints"),
  DrawLevel = GetUnitTypeData("unit-dwarven-steelclad", "DrawLevel"),
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = GetUnitTypeData("unit-dwarven-steelclad", "SightRange"),
  ComputerReactionRange = GetUnitTypeData("unit-dwarven-steelclad", "ComputerReactionRange"),
  PersonReactionRange = GetUnitTypeData("unit-dwarven-steelclad", "PersonReactionRange"),
  Armor = GetUnitTypeData("unit-dwarven-steelclad", "Armor"),
  BasicDamage = GetUnitTypeData("unit-dwarven-steelclad", "BasicDamage"),
  PiercingDamage = GetUnitTypeData("unit-dwarven-steelclad", "PiercingDamage"),
  Missile = GetUnitTypeData("unit-dwarven-steelclad", "Missile"),
  MaxAttackRange = GetUnitTypeData("unit-dwarven-steelclad", "MaxAttackRange"),
  Priority = GetUnitTypeData("unit-dwarven-steelclad", "Priority"),
  BasePoints = GetUnitTypeData("unit-dwarven-steelclad", "BasePoints"),
  Demand = GetUnitTypeData("unit-dwarven-steelclad", "Demand"),
  StartingLevel = GetUnitTypeData("unit-dwarven-steelclad", "StartingLevel"),
  Corpse = GetUnitTypeData("unit-dwarven-steelclad", "Corpse"),
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = GetUnitTypeData("unit-dwarven-steelclad", "CanAttack"),
  CanTargetLand = true,
  LandUnit = GetUnitTypeData("unit-dwarven-steelclad", "LandUnit"),
  organic = GetUnitTypeData("unit-dwarven-steelclad", "organic"),
  SelectableByRectangle = GetUnitTypeData("unit-dwarven-steelclad", "SelectableByRectangle"),
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-steelclad-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-hero-rugnur-thane", { Name = "Rugnur",
  Image = {"file", "dwarf/units/thane_brown_hair.png", "size", {72, 72}},
  Animations = "animations-dwarven-axefighter", Icon = "icon-rugnur-older",
  Costs = {"time", 0},
  Speed = GetUnitTypeData("unit-dwarven-thane", "Speed"),
  HitPoints = GetUnitTypeData("unit-dwarven-thane", "HitPoints"),
  DrawLevel = GetUnitTypeData("unit-dwarven-thane", "DrawLevel"),
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = GetUnitTypeData("unit-dwarven-thane", "SightRange"),
  ComputerReactionRange = GetUnitTypeData("unit-dwarven-thane", "ComputerReactionRange"),
  PersonReactionRange = GetUnitTypeData("unit-dwarven-thane", "PersonReactionRange"),
  Armor = GetUnitTypeData("unit-dwarven-thane", "Armor"),
  BasicDamage = GetUnitTypeData("unit-dwarven-thane", "BasicDamage"),
  PiercingDamage = GetUnitTypeData("unit-dwarven-thane", "PiercingDamage"),
  Missile = GetUnitTypeData("unit-dwarven-thane", "Missile"),
  MaxAttackRange = GetUnitTypeData("unit-dwarven-thane", "MaxAttackRange"),
  Priority = GetUnitTypeData("unit-dwarven-thane", "Priority"),
  BasePoints = GetUnitTypeData("unit-dwarven-thane", "BasePoints"),
  Demand = GetUnitTypeData("unit-dwarven-thane", "Demand"),
  StartingLevel = GetUnitTypeData("unit-dwarven-thane", "StartingLevel"),
  Corpse = GetUnitTypeData("unit-dwarven-thane", "Corpse"),
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = GetUnitTypeData("unit-dwarven-thane", "CanAttack"),
  CanTargetLand = true,
  LandUnit = GetUnitTypeData("unit-dwarven-thane", "LandUnit"),
  organic = GetUnitTypeData("unit-dwarven-thane", "organic"),
  SelectableByRectangle = GetUnitTypeData("unit-dwarven-thane", "SelectableByRectangle"),
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-steelclad-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-hero-baglur", { Name = "Baglur",
  Image = {"file", "dwarf/units/dwarven_steelclad_gray_hair.png", "size", {72, 72}},
  Animations = "animations-dwarven-steelclad", Icon = "icon-baglur",
  Costs = {"time", 0},
  Speed = GetUnitTypeData("unit-dwarven-steelclad", "Speed"),
  HitPoints = GetUnitTypeData("unit-dwarven-steelclad", "HitPoints"),
  DrawLevel = GetUnitTypeData("unit-dwarven-steelclad", "DrawLevel"),
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = GetUnitTypeData("unit-dwarven-steelclad", "SightRange"),
  ComputerReactionRange = GetUnitTypeData("unit-dwarven-steelclad", "ComputerReactionRange"),
  PersonReactionRange = GetUnitTypeData("unit-dwarven-steelclad", "PersonReactionRange"),
  Armor = GetUnitTypeData("unit-dwarven-steelclad", "Armor"),
  BasicDamage = GetUnitTypeData("unit-dwarven-steelclad", "BasicDamage"),
  PiercingDamage = GetUnitTypeData("unit-dwarven-steelclad", "PiercingDamage"),
  Missile = GetUnitTypeData("unit-dwarven-steelclad", "Missile"),
  MaxAttackRange = GetUnitTypeData("unit-dwarven-steelclad", "MaxAttackRange"),
  Priority = GetUnitTypeData("unit-dwarven-steelclad", "Priority"),
  BasePoints = GetUnitTypeData("unit-dwarven-steelclad", "BasePoints"),
  Demand = GetUnitTypeData("unit-dwarven-steelclad", "Demand"),
  StartingLevel = GetUnitTypeData("unit-dwarven-steelclad", "StartingLevel"),
  Corpse = GetUnitTypeData("unit-dwarven-steelclad", "Corpse"),
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = GetUnitTypeData("unit-dwarven-steelclad", "CanAttack"),
  CanTargetLand = true,
  LandUnit = GetUnitTypeData("unit-dwarven-steelclad", "LandUnit"),
  organic = GetUnitTypeData("unit-dwarven-steelclad", "organic"),
  SelectableByRectangle = GetUnitTypeData("unit-dwarven-steelclad", "SelectableByRectangle"),
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-steelclad-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-hero-baglur-thane", { Name = "Baglur",
  Image = {"file", "dwarf/units/thane_gray_hair.png", "size", {72, 72}},
  Animations = "animations-dwarven-axefighter", Icon = "icon-baglur",
  Costs = {"time", 0},
  Speed = GetUnitTypeData("unit-dwarven-thane", "Speed"),
  HitPoints = GetUnitTypeData("unit-dwarven-thane", "HitPoints"),
  DrawLevel = GetUnitTypeData("unit-dwarven-thane", "DrawLevel"),
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = GetUnitTypeData("unit-dwarven-thane", "SightRange"),
  ComputerReactionRange = GetUnitTypeData("unit-dwarven-thane", "ComputerReactionRange"),
  PersonReactionRange = GetUnitTypeData("unit-dwarven-thane", "PersonReactionRange"),
  Armor = GetUnitTypeData("unit-dwarven-thane", "Armor"),
  BasicDamage = GetUnitTypeData("unit-dwarven-thane", "BasicDamage"),
  PiercingDamage = GetUnitTypeData("unit-dwarven-thane", "PiercingDamage"),
  Missile = GetUnitTypeData("unit-dwarven-thane", "Missile"),
  MaxAttackRange = GetUnitTypeData("unit-dwarven-thane", "MaxAttackRange"),
  Priority = GetUnitTypeData("unit-dwarven-thane", "Priority"),
  BasePoints = GetUnitTypeData("unit-dwarven-thane", "BasePoints"),
  Demand = GetUnitTypeData("unit-dwarven-thane", "Demand"),
  StartingLevel = GetUnitTypeData("unit-dwarven-thane", "StartingLevel"),
  Corpse = GetUnitTypeData("unit-dwarven-thane", "Corpse"),
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = GetUnitTypeData("unit-dwarven-thane", "CanAttack"),
  CanTargetLand = true,
  LandUnit = GetUnitTypeData("unit-dwarven-thane", "LandUnit"),
  organic = GetUnitTypeData("unit-dwarven-thane", "organic"),
  SelectableByRectangle = GetUnitTypeData("unit-dwarven-thane", "SelectableByRectangle"),
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-steelclad-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-hero-thursagan", { Name = "Thursagan",
  Image = {"file", "dwarf/units/thane_gray_hair.png", "size", {72, 72}},
  Animations = "animations-dwarven-axefighter", Icon = "icon-thursagan",
  Costs = {"time", 0},
  Speed = GetUnitTypeData("unit-dwarven-thane", "Speed"),
  HitPoints = GetUnitTypeData("unit-dwarven-thane", "HitPoints"),
  DrawLevel = GetUnitTypeData("unit-dwarven-thane", "DrawLevel"),
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = GetUnitTypeData("unit-dwarven-thane", "SightRange"),
  ComputerReactionRange = GetUnitTypeData("unit-dwarven-thane", "ComputerReactionRange"),
  PersonReactionRange = GetUnitTypeData("unit-dwarven-thane", "PersonReactionRange"),
  Armor = GetUnitTypeData("unit-dwarven-thane", "Armor"),
  BasicDamage = GetUnitTypeData("unit-dwarven-thane", "BasicDamage"),
  PiercingDamage = GetUnitTypeData("unit-dwarven-thane", "PiercingDamage"),
  Missile = GetUnitTypeData("unit-dwarven-thane", "Missile"),
  MaxAttackRange = GetUnitTypeData("unit-dwarven-thane", "MaxAttackRange"),
  Priority = GetUnitTypeData("unit-dwarven-thane", "Priority"),
  BasePoints = GetUnitTypeData("unit-dwarven-thane", "BasePoints"),
  Demand = GetUnitTypeData("unit-dwarven-thane", "Demand"),
  StartingLevel = GetUnitTypeData("unit-dwarven-thane", "StartingLevel"),
  Corpse = GetUnitTypeData("unit-dwarven-thane", "Corpse"),
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = GetUnitTypeData("unit-dwarven-thane", "CanAttack"),
  CanTargetLand = true,
  LandUnit = GetUnitTypeData("unit-dwarven-thane", "LandUnit"),
  organic = GetUnitTypeData("unit-dwarven-thane", "organic"),
  SelectableByRectangle = GetUnitTypeData("unit-dwarven-thane", "SelectableByRectangle"),
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-steelclad-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-hero-durstorn", { Name = "Durstorn",
  Image = {"file", "dwarf/units/thane_brown_hair.png", "size", {72, 72}},
  Animations = "animations-dwarven-axefighter", Icon = "icon-durstorn",
  Costs = {"time", 0},
  Speed = GetUnitTypeData("unit-dwarven-thane", "Speed"),
  HitPoints = GetUnitTypeData("unit-dwarven-thane", "HitPoints"),
  DrawLevel = GetUnitTypeData("unit-dwarven-thane", "DrawLevel"),
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = GetUnitTypeData("unit-dwarven-thane", "SightRange"),
  ComputerReactionRange = GetUnitTypeData("unit-dwarven-thane", "ComputerReactionRange"),
  PersonReactionRange = GetUnitTypeData("unit-dwarven-thane", "PersonReactionRange"),
  Armor = GetUnitTypeData("unit-dwarven-thane", "Armor"),
  BasicDamage = GetUnitTypeData("unit-dwarven-thane", "BasicDamage"),
  PiercingDamage = GetUnitTypeData("unit-dwarven-thane", "PiercingDamage"),
  Missile = GetUnitTypeData("unit-dwarven-thane", "Missile"),
  MaxAttackRange = GetUnitTypeData("unit-dwarven-thane", "MaxAttackRange"),
  Priority = GetUnitTypeData("unit-dwarven-thane", "Priority"),
  BasePoints = GetUnitTypeData("unit-dwarven-thane", "BasePoints"),
  Demand = GetUnitTypeData("unit-dwarven-thane", "Demand"),
  StartingLevel = GetUnitTypeData("unit-dwarven-thane", "StartingLevel"),
  Corpse = GetUnitTypeData("unit-dwarven-thane", "Corpse"),
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = GetUnitTypeData("unit-dwarven-thane", "CanAttack"),
  CanTargetLand = true,
  LandUnit = GetUnitTypeData("unit-dwarven-thane", "LandUnit"),
  organic = GetUnitTypeData("unit-dwarven-thane", "organic"),
  SelectableByRectangle = GetUnitTypeData("unit-dwarven-thane", "SelectableByRectangle"),
  CanCastSpell = {"spell-learn-axe-mastery", "spell-learn-critical-strike"},
  Sounds = {
    "selected", "basic-dwarf-voices-selected-group",
    "acknowledge", "basic-dwarf-voices-acknowledge",
    "ready", "dwarven-steelclad-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )




-- define the units for the grand strategy mode (cost is defined here again because it may differ from the unit's RTS cost, as the grand strategy mode can contain more resource types

GrandStrategyUnits["DwarvenAxefighter"] = {
	Name = GetUnitTypeName("unit-dwarven-axefighter") .. "s",
	UnitType = "unit-dwarven-axefighter",
	Icon = "dwarf/icons/dwarven_axefighter.png",
	Civilization = "dwarf",
	Type = "Infantry",
	Costs = {
		Gold = 600
	},
	Upkeep = 25,
	X = 0,
	Y = 0,
	RequiredBuildings = { "DwarvenWarHall" },
	InterfaceState = "Barracks"
}

GrandStrategyUnits["DwarvenSteelclad"] = {
	Name = GetUnitTypeName("unit-dwarven-steelclad") .. "s",
	UnitType = "unit-dwarven-steelclad",
	Icon = "dwarf/icons/dwarven_steelclad.png",
	Civilization = "dwarf",
	Type = "Veteran Infantry",
	Costs = {
		Gold = 600
	},
	Upkeep = 25,
	X = 0,
	Y = 0,
	RequiredBuildings = { "DwarvenWarHall" },
	InterfaceState = "",
	AdvancesFrom = "DwarvenAxefighter"
}

GrandStrategyUnits["DwarvenThane"] = {
	Name = GetUnitTypeName("unit-dwarven-thane") .. "s",
	UnitType = "unit-dwarven-thane",
	Icon = "dwarf/icons/dwarven_steelclad.png",
	Civilization = "dwarf",
	Type = "Heroic Infantry",
	Costs = {
		Gold = 600
	},
	Upkeep = 25,
	X = 0,
	Y = 0,
	RequiredBuildings = { "DwarvenWarHall" },
	InterfaceState = "",
	AdvancesFrom = "DwarvenSteelclad"
}

GrandStrategyUnits["DwarvenScout"] = {
	Name = GetUnitTypeName("unit-dwarven-scout") .. "s",
	UnitType = "unit-dwarven-scout",
	Icon = "dwarf/icons/dwarven_scout.png",
	Civilization = "dwarf",
	Type = "Archer",
	Costs = {
		Gold = 500,
		Lumber = 50
	},
	Upkeep = 25,
	X = 1,
	Y = 0,
	RequiredBuildings = { "DwarvenWarHall", "DwarvenLumberMill" },
	InterfaceState = "Barracks"
}

GrandStrategyUnits["DwarvenBallista"] = {
	Name = GetUnitTypeName("unit-dwarven-ballista") .. "s",
	UnitType = "unit-dwarven-ballista",
	Icon = "tilesets/swamp/dwarf/icons/dwarven_ballista.png",
	Civilization = "dwarf",
	Type = "Catapult",
	Costs = {
		Gold = 900,
		Lumber = 300
	},
	Upkeep = 50,
	X = 2,
	Y = 0,
	RequiredBuildings = { "DwarvenWarHall", "DwarvenLumberMill", "DwarvenBlacksmith" },
	InterfaceState = "Barracks"
}

GrandStrategyUnits["DwarvenGryphonRider"] = {
	Name = GetUnitTypeName("unit-dwarven-gryphon-rider") .. "s",
	UnitType = "unit-dwarven-gryphon-rider",
	Icon = "dwarf/icons/gryphon_rider.png",
	Civilization = "dwarf",
	Type = "Flying Rider",
	Costs = {
		Gold = 1750,
		Lumber = 750
	},
	Upkeep = 50,
	X = 0,
	Y = 1,
	RequiredBuildings = { "DwarvenWarHall" },
	InterfaceState = "Aviary"
}

-- GS buildings
GrandStrategyBuildings["DwarvenMeadHall"] = {
	Name = GetUnitTypeName("unit-dwarven-town-hall"),
	UnitType = "unit-dwarven-town-hall",
	Icon = "dwarf/icons/town_hall.png",
	Civilization = "dwarf",
	Type = "Town Hall",
	Costs = {
		Gold = 1200,
		Lumber = 800
	},
	X = 0,
	Y = -2
}

GrandStrategyBuildings["DwarvenWarHall"] = {
	Name = GetUnitTypeName("unit-dwarven-barracks"),
	UnitType = "unit-dwarven-barracks",
	Icon = "dwarf/icons/barracks.png",
	Civilization = "dwarf",
	Type = "Barracks",
	Costs = {
		Gold = 700,
		Lumber = 450
	},
	X = 1,
	Y = -2,
	RequiredBuildings = { "DwarvenMeadHall" }
}

GrandStrategyBuildings["DwarvenLumberMill"] = {
	Name = GetUnitTypeName("unit-dwarven-lumber-mill"),
	UnitType = "unit-dwarven-lumber-mill",
	Icon = "tilesets/swamp/dwarf/icons/lumber_mill.png",
	Civilization = "dwarf",
	Type = "Lumber Mill",
	Costs = {
		Gold = 600,
		Lumber = 450
	},
	X = 2,
	Y = -2,
	RequiredBuildings = { "DwarvenMeadHall" }
}

GrandStrategyBuildings["DwarvenBlacksmith"] = {
	Name = GetUnitTypeName("unit-dwarven-blacksmith"),
	UnitType = "unit-dwarven-blacksmith",
	Icon = "dwarf/icons/blacksmith.png",
	Civilization = "dwarf",
	Type = "Blacksmith",
	Costs = {
		Gold = 900,
		Lumber = 500
	},
	X = 0,
	Y = -1,
	RequiredBuildings = { "DwarvenMeadHall" }
}

GrandStrategyHeroes["Rugnur"] = {
	Name = GetUnitTypeName("unit-hero-rugnur"),
	UnitType = "unit-hero-rugnur",
	Icon = "dwarf/icons/rugnur.png",
	Civilization = "dwarf",
	Year = 25,
	DeathYear = 40
}

GrandStrategyHeroes["Baglur"] = {
	Name = GetUnitTypeName("unit-hero-baglur"),
	UnitType = "unit-hero-baglur",
	Icon = "dwarf/icons/baglur.png",
	Civilization = "dwarf",
	Year = 25, -- should be earlier than that, but we have no notice of when he entered service or gained notability
	DeathYear = 40
}

GrandStrategyHeroes["Thursagan"] = {
	Name = GetUnitTypeName("unit-hero-thursagan"),
	UnitType = "unit-hero-thursagan",
	Icon = "dwarf/icons/thursagan.png",
	Civilization = "dwarf",
	Year = 25, -- should be earlier than that, but we have no notice of when he entered service or gained notability
	DeathYear = 40
}