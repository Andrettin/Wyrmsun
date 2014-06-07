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
--      units.ccl - Define the goblin unit-types.
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

DefineUnitType("unit-goblin-worker", { Name = "Goblin Worker",
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
--  Corpse = "unit-human-dead-body",
  Type = "land",
  RightMouseAction = "harvest",
  CanAttack = true, RepairRange = 1,
  CanTargetLand = true,
  LandUnit = true,
  Coward = true,
  CanGatherResources = {
   {"file-when-loaded", "goblin/units/goblin_worker_with_gold.png",
    "resource-id", "gold",
--    "harvest-from-outside",
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
  Sounds = {
    "selected", "basic-goblin-voices-selected-group",
    "acknowledge", "basic-goblin-voices-acknowledge",
    "ready", "goblin-worker-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-goblin-voices-dead"} } )

DefineUnitType("unit-goblin-spearman", { Name = "Goblin Impaler",
  Image = {"file", "goblin/units/goblin_spearman.png", "size", {72, 72}},
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
    "selected", "basic-goblin-voices-selected-group",
    "acknowledge", "basic-goblin-voices-acknowledge",
    "ready", "goblin-impaler-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-goblin-voices-dead"} } )

DefineUnitType("unit-goblin-archer", { Name = "Goblin Archer",
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
--  Corpse = "unit-human-dead-body",
  Type = "land",
  RightMouseAction = "attack",
  CanAttack = true,
  CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
  LandUnit = true,
  organic = true,
  SelectableByRectangle = true,
  CanCastSpell = {"spell-unarmed-attack", "spell-learn-critical-strike"},
  Sounds = {
    "selected", "basic-goblin-voices-selected-group",
    "acknowledge", "basic-goblin-voices-acknowledge",
    "ready", "goblin-archer-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-goblin-voices-dead"} } )

DefineUnitType("unit-hero-greebo", { Name = "Greebo",
  Image = {"file", "goblin/units/goblin_swordsman.png", "size", {72, 72}},
  Animations = "animations-goblin-swordsman", Icon = "icon-goblin-swordsman",
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
    "selected", "basic-goblin-voices-selected-group",
    "acknowledge", "basic-goblin-voices-acknowledge",
    "ready", "goblin-impaler-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "basic-goblin-voices-dead"} } )

DefineUnitType("unit-goblin-banner", { Name = "Goblin Banner",
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
  Sounds = {
--    "selected", "click",
--    "acknowledge", "gold-mine-acknowledge",
--    "ready", "gold-mine-ready",
--    "help", "gold-mine-help",
    "dead", "building destroyed"} }
)
