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
  Image = {"file", "goblin/units/goblin_swordsman.png", "size", {72, 72}},
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
  StartingLevel = 2,
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

DefineUnitType("unit-goblin-banner", { Name = "Goblin Banner",
  Image = {"file", "goblin/decorations/goblin_banner.png", "size", {32, 32}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-decoration", Icon = "icon-goblin-banner",
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
