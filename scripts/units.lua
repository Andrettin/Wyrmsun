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
--      units.lua - Define the used unit-types.
--
--      (c) Copyright 1998-2005 by Lutz Sammer and Jimmy Salmon
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

UnitTypeFiles = {}

-- Load the animations for the units.
Load("scripts/anim.lua")

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--
DefineUnitType("unit-nothing-22", { Name = "Nothing 22",
  Animations = "animations-building", Icon = "icon-cancel",
  Speed = 99,
  HitPoints = 10,
  DrawLevel = 0,
  TileSize = {0, 0}, BoxSize = {0, 0},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Sounds = {} } )

DefineUnitType("unit-nothing-24", { Name = "Nothing 24",
  Animations = "animations-building", Icon = "icon-cancel",
  Costs = {"time", 60, "gold", 400},
  Speed = 99,
  HitPoints = 60,
  DrawLevel = 10,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 4, ComputerReactionRange = 20, PersonReactionRange = 10,
  Armor = 2, BasicDamage = 9, PiercingDamage = 1, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 40,
  Type = "naval",
  SeaUnit = true,
  SelectableByRectangle = true,
  Sounds = {} } )

DefineUnitType("unit-nothing-25", { Name = "Nothing 25",
  Animations = "animations-building", Icon = "icon-cancel",
  Costs = {"time", 60, "gold", 400},
  Speed = 99,
  HitPoints = 60,
  DrawLevel = 10,
  TileSize = {1, 1}, BoxSize = {63, 63},
  SightRange = 4, ComputerReactionRange = 20, PersonReactionRange = 10,
  Armor = 2, BasicDamage = 9, PiercingDamage = 1, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 40,
  Type = "naval",
  SeaUnit = true,
  SelectableByRectangle = true,
  Sounds = {} } )

DefineUnitType("unit-nothing-30", { Name = "Nothing 30",
  Animations = "animations-building", Icon = "icon-cancel",
  Speed = 99,
  HitPoints = 0,
  Indestructible = 1,
  DrawLevel = 10,
  TileSize = {0, 0}, BoxSize = {0, 0},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Sounds = {} } )

DefineUnitType("unit-nothing-36", { Name = "Nothing 36",
  Animations = "animations-building", Icon = "icon-cancel",
  Speed = 99,
  HitPoints = 0,
  Indestructible = 1,
  DrawLevel = 10,
  TileSize = {0, 0}, BoxSize = {0, 0},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Sounds = {} } )

--UnitTypeFiles["unit-critter"] = {
--  wasteland = "neutral/units/rat.png"
--}

DefineUnitType("unit-critter", { Name = "Critter",
  Image = {"file", "neutral/units/rat.png", "size", {72, 72}},
  Animations = "animations-rat", Icon = "icon-rat",
  NeutralMinimapColor = {192, 192, 192},
  Speed = 3,
  HitPoints = 5,
  DrawLevel = 35,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 2, ComputerReactionRange = 20, PersonReactionRange = 10,
  BasicDamage = 80, PiercingDamage = 0,
--  Missile = "missile-critter-explosion",
  MaxAttackRange = 1,
  Priority = 37,
  Points = 1,
  Demand = 1,
  Type = "land",
  RightMouseAction = "move",
  CanTargetLand = true,
  LandUnit = true,
  RandomMovementProbability = 5,
--  ClicksToExplode = 10,
  organic = true,
  Coward = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "critter-acknowledge",
--    "ready", "critter-ready",
    "help", "critter-help",
    "dead", "rat-dead" }
} )


--UnitTypeFiles["unit-gold-mine"] = {
--  wasteland = "tilesets/wasteland/neutral/buildings/gold_mine.png"
--}

DefineUnitType("unit-gold-mine", { Name = gold_mine_name,
  Image = {"file", "neutral/buildings/gold_mine.png", "size", {96, 96}},
  Animations = "animations-gold-mine", Icon = "icon-gold-mine",
  NeutralMinimapColor = {255, 255, 0},
  Costs = {"time", 150},
  Construction = "construction-land2",
  Speed = 0,
  HitPoints = 25500,
  DrawLevel = 40,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 1,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Corpse = "unit-destroyed-3x3-place",
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true,
  BuildingRules = {
	{ "distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-town-hall"}}
  },

  GivesResource = "gold", CanHarvest = true,
  Sounds = {
    "selected", "gold-mine-selected",
--    "acknowledge", "gold-mine-acknowledge",
--    "ready", "gold-mine-ready",
    "help", "gold-mine-help",
    "dead", "building destroyed"} } )

--DefineUnitType("unit-human-dead-body", { Name = "Dead Body",
--  Image = {"file", "neutral/units/corpses.png", "size", {72, 72}},
--  Animations = "animations-human-dead-body", Icon = "icon-dwarven-miner",
--  Speed = 0,
--  HitPoints = 255,
--  DrawLevel = 30,
--  TileSize = {1, 1}, BoxSize = {31, 31},
--  SightRange = 1,
--  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
--  Priority = 0,
--  Type = "land",
--  Vanishes = true,
--  Sounds = {} } )

--DefineUnitType("unit-dead-sea-body", { Name = "Dead Body",
--  Image = {"file", "neutral/units/corpses.png", "size", {72, 72}},
--  Animations = "animations-dead-sea-body", Icon = "icon-dwarven-miner",
--  Speed = 0,
--  HitPoints = 255,
--  DrawLevel = 30,
--  TileSize = {2, 2}, BoxSize = {31, 31},
--  SightRange = 1,
--  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
--  Priority = 0,
--  Type = "naval",
--  Vanishes = true,
--  Sounds = {} } )


--UnitTypeFiles["unit-destroyed-1x1-place"] = {
--  wasteland = "tilesets/wasteland/neutral/buildings/destroyed_site.png"
--}

--DefineUnitType("unit-destroyed-1x1-place", { Name = "Destroyed 1x1 Place",
--  Image = {"size", {32, 32}},
--  Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
--  Speed = 0,
--  HitPoints = 255,
--  DrawLevel = 10,
--  TileSize = {1, 1}, BoxSize = {31, 31},
--  SightRange = 2,
--  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
--  Priority = 0,
--  Type = "land",
--  Building = true, VisibleUnderFog = true,
--  Vanishes = true,
--  Sounds = {} } )


UnitTypeFiles["unit-destroyed-2x2-place"] = {
  forest = "tilesets/wasteland/neutral/buildings/destroyed_site.png",
  wasteland = "tilesets/wasteland/neutral/buildings/destroyed_site.png",
}

DefineUnitType("unit-destroyed-2x2-place", { Name = "Destroyed 2x2 Place",
  Image = {"size", {64, 64}},
  Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {2, 2}, BoxSize = {63, 63},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )


UnitTypeFiles["unit-destroyed-3x3-place"] = {
  forest = "tilesets/wasteland/neutral/buildings/destroyed_site.png",
  wasteland = "tilesets/wasteland/neutral/buildings/destroyed_site.png"
}

DefineUnitType("unit-destroyed-3x3-place", { Name = "Destroyed 3x3 Place",
  Image = {"size", {64, 64}},
  Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {3, 3}, BoxSize = {95, 95},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )

--UnitTypeFiles["unit-destroyed-3x3-place-water"] = {
--  wasteland = "tilesets/wasteland/neutral/buildings/destroyed_site.png"
--}

--DefineUnitType("unit-destroyed-3x3-place-water", { Name = "Destroyed 3x3 Place Water",
--  Image = {"size", {64, 64}},
--  Animations = "animations-destroyed-place-water", Icon = "icon-dwarven-miner",
--  Speed = 0,
--  HitPoints = 255,
--  DrawLevel = 10,
--  TileSize = {3, 3}, BoxSize = {95, 95},
--  SightRange = 0,
--  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
--  Priority = 0,
--  Type = "naval",
--  Building = true, VisibleUnderFog = true,
--  Vanishes = true,
--  Sounds = {} } )

UnitTypeFiles["unit-destroyed-4x4-place"] = {
  forest = "tilesets/wasteland/neutral/buildings/destroyed_site.png",
  wasteland = "tilesets/wasteland/neutral/buildings/destroyed_site.png"
}

DefineUnitType("unit-destroyed-4x4-place", { Name = "Destroyed 4x4 Place",
  Image = {"size", {64, 64}},
  Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
  Speed = 0,
  HitPoints = 255,
  DrawLevel = 10,
  TileSize = {4, 4}, BoxSize = {127, 127},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Vanishes = true,
  Sounds = {} } )

DefineUnitType("unit-revealer", { Name = "Dummy unit",
  Animations = "animations-building", Icon = "icon-dwarven-shield-1",
  Speed = 0,
  HitPoints = 1,
  TileSize = {1, 1}, BoxSize = {1, 1},
  SightRange = 12,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  DecayRate = 1,
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Revealer = true,
  DetectCloak = true,
  Sounds = {} } )

-- Gnomish units

DefineUnitType("unit-gnomish-worker", { Name = "Gnomish Worker",
  Image = {"file", "neutral/units/gnomish_worker.png", "size", {72, 72}},
  DrawLevel = 19,
  Animations = "animations-gnomish-worker", Icon = "icon-dwarven-miner",
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
   {"file-when-loaded", "neutral/units/gnomish_worker_with_gold.png",
    "resource-id", "gold",
--    "harvest-from-outside",
    "resource-capacity", 100,
    "wait-at-resource", 150,
    "wait-at-depot", 150},
   {"file-when-loaded", "neutral/units/gnomish_worker_with_lumber.png",
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
    "help", "basic-dwarf-voices-help",
    "dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-gnomish-recruit", { Name = gnomish_recruit_name,
  Image = {"file", "neutral/units/gnomish_recruit.png", "size", {72, 72}},
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

DefineUnitType("unit-gnomish-caravan", { Name = gnomish_caravan_name,
  Image = {"file", "neutral/units/gnomish_caravan.png", "size", {64, 64}},
  Animations = "animations-gnomish-caravan", Icon = "icon-gnomish-caravan",
  Costs = {"time", 250, "gold", 900, "wood", 300},
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
    "help", "basic-dwarf-voices-help",
    "dead", "explosion"} } )

DefineUnitType("unit-goblin-spearman", { Name = "Goblin Impaler",
  Image = {"file", "neutral/units/goblin_spearman.png", "size", {72, 72}},
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
--    "acknowledge", "basic-goblin-voices-acknowledge",
--    "ready", "basic-goblin-voices-ready",
    "help", "basic-dwarf-voices-help",
    "dead", "basic-goblin-voices-dead"} } )

DefineUnitType("unit-greebo", { Name = "Greebo",
  Image = {"file", "neutral/units/goblin_swordsman.png", "size", {72, 72}},
  Animations = "animations-goblin-spearman", Icon = "icon-goblin-swordsman",
  Costs = {"time", 60, "gold", 600},
  Speed = 10,
  HitPoints = 100,
  DrawLevel = 40,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 5, ComputerReactionRange = 7, PersonReactionRange = 5,
  Armor = 2, BasicDamage = 3, PiercingDamage = 6, Missile = "missile-none",
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
--    "acknowledge", "basic-goblin-voices-acknowledge",
--    "ready", "basic-goblin-voices-ready",
    "help", "basic-dwarf-voices-help",
    "dead", "basic-goblin-voices-dead"} } )

UnitTypeFiles["unit-human-lumber-mill"] = {
  forest = "human/buildings/lumber_mill.png",
  wasteland = "human/buildings/lumber_mill.png"
}

DefineUnitType("unit-human-lumber-mill", { Name = lumber_mill_name,
  Image = {"size", {96, 96}},
  Animations = "animations-building", Icon = "icon-human-lumber-mill",
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
  Building = true, VisibleUnderFog = true,
  CanStore = {"wood"},
  Sounds = {
    "selected", "human-lumber-mill-selected",
--    "acknowledge", "elven-lumber-mill-acknowledge",
--    "ready", "elven-lumber-mill-ready",
    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )


-- Load the different civilizations
Load("scripts/dwarf/units.lua")
