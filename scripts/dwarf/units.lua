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
  DrawLevel = 19,
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
  Points = 30,
  Demand = 1,
--  Corpse = "unit-human-dead-body",
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
    "resource-capacity", 100,
    "resource-step", 2,
    "wait-at-resource", 29,
    "wait-at-depot", 150,
    "terrain-harvester"}},
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "basic-dwarf-voices-acknowledge",
--    "ready", "basic-dwarf-voices-ready",
    "help", "basic-dwarf-voices-help",
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
  Points = 50,
  Demand = 1,
--    Corpse = "unit-human-dead-body",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "basic-dwarf-voices-acknowledge",
--    "ready", "basic-dwarf-voices-ready",
    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-dwarven-steelclad", { Name = "Steelclad",
  Image = {"file", "dwarf/units/dwarven_steelclad.png", "size", {72, 72}},
  Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-steelclad",
  Costs = {"time", 60, "gold", 600},
  Speed = 10,
  HitPoints = 75,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
  Armor = 2, BasicDamage = 6, PiercingDamage = 3, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 60,
  Points = 50,
  Demand = 1,
--    Corpse = "unit-human-dead-body",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
--    "selected", "basic-dwarf-voices-selected",
--    "acknowledge", "basic-dwarf-voices-acknowledge",
--    "ready", "basic-dwarf-voices-ready",
    "help", "basic-dwarf-voices-help",
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
  Points = 60,
  Demand = 1,
--    Corpse = "unit-human-dead-body",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "basic-dwarf-voices-acknowledge",
--    "ready", "basic-dwarf-voices-ready",
    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-dwarven-ballista", { Name = "Ballista",
  Image = {"file", "dwarf/units/dwarven_ballista.png", "size", {64, 64}},
  Animations = "animations-dwarven-ballista", Icon = "icon-dwarven-ballista",
  Costs = {"time", 250, "gold", 900, "wood", 300},
  Speed = 5,
  HitPoints = 110,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
  BasicDamage = 80, PiercingDamage = 0, Missile = "missile-dwarven-ballista-bolt",
  MinAttackRange = 2, MaxAttackRange = 8,
  Priority = 70,
  Points = 100,
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
--    "ready", "ballista-ready",
    "help", "basic-dwarf-voices-help",
    "dead", "explosion"
} } )

UnitTypeFiles["unit-dwarven-town-hall"] = {
  forest = "dwarf/buildings/town_hall.png",
  wasteland = "dwarf/buildings/town_hall.png"
}

DefineUnitType("unit-dwarven-town-hall", { Name = dwarven_town_hall_name,
  Image = {"size", {128, 128}},
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
  Building = true, VisibleUnderFog = true,
  BuildingRules = { { "distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-mine"}
					}
				  },
  CanStore = {"wood", "gold"},
  Sounds = {
    "selected", "town-hall-selected",
--    "acknowledge", "town-hall-acknowledge",
--    "ready", "town-hall-ready",
    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )

UnitTypeFiles["unit-dwarven-mushroom-farm"] = {
  forest = "dwarf/buildings/mushroom_farm.png",
  wasteland = "dwarf/buildings/mushroom_farm.png"
}

DefineUnitType("unit-dwarven-mushroom-farm", { Name = dwarven_mushroom_farm_name,
  Image = {"size", {64, 64}},
  Animations = "animations-building", Icon = "icon-dwarven-mushroom-farm",
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
    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )

UnitTypeFiles["unit-dwarven-barracks"] = {
  forest = "dwarf/buildings/barracks.png",
  wasteland = "dwarf/buildings/barracks.png"
}

DefineUnitType("unit-dwarven-barracks", { Name = dwarven_barracks_name,
  Image = {"size", {96, 96}},
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
    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )

DefineUnitType("unit-rugnur", { Name = "Rugnur",
  Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
  Animations = "animations-rugnur", Icon = "icon-rugnur",
  Costs = {"time", 60, "gold", 600},
  Speed = 10,
  HitPoints = 120,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 5, ComputerReactionRange = 7, PersonReactionRange = 5,
  Armor = 2, BasicDamage = 6, PiercingDamage = 3, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 60,
  Points = 50,
  Demand = 1,
--    Corpse = "unit-human-dead-body",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "basic-dwarf-voices-acknowledge",
--    "ready", "basic-dwarf-voices-ready",
    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-rugnur-older", { Name = "Rugnur",
  Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
  Animations = "animations-rugnur", Icon = "icon-rugnur-older",
  Costs = {"time", 60, "gold", 600},
  Speed = 10,
  HitPoints = 220,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
  Armor = 8, BasicDamage = 15, PiercingDamage = 6, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 60,
  Points = 50,
  Demand = 1,
--    Corpse = "unit-human-dead-body",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "basic-dwarf-voices-acknowledge",
--    "ready", "basic-dwarf-voices-ready",
    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )
