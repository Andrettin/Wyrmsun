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
--  swamp = "neutral/units/rat.png"
--}

DefineUnitType("unit-critter", { Name = "Critter",
  Image = {"file", "neutral/units/rat.png", "size", {72, 72}},
  Animations = "animations-rat", Icon = "icon-rat",
  NeutralMinimapColor = {192, 192, 192},
  Speed = 3,
  HitPoints = 5,
  DrawLevel = 35,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 2, ComputerReactionRange = 1, PersonReactionRange = 1,
  BasicDamage = 1, PiercingDamage = 2, Missile = "missile-none",
  MaxAttackRange = 1,
  Priority = 37,
  Points = 1,
  Demand = 1,
  Type = "land",
  RightMouseAction = "move",
  CanAttack = true,
  CanTargetLand = true,
  LandUnit = true,
  RandomMovementProbability = 5,
  organic = true,
  Coward = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "critter-acknowledge",
--    "ready", "critter-ready",
--    "help", "critter-help",
    "dead", "rat-dead" }
} )


--UnitTypeFiles["unit-gold-mine"] = {
--  swamp = "tilesets/swamp/neutral/buildings/gold_mine.png"
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
--    "help", "gold-mine-help",
    "dead", "building destroyed"} } )

DefineUnitType("unit-coal-mine", { Name = "Coal Mine",
  Image = {"file", "neutral/buildings/coal_mine.png", "size", {96, 96}},
  Animations = "animations-gold-mine", Icon = "icon-coal-mine",
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
	{ "distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-town-hall"}},
	{ "distance", { Distance = 3, DistanceType = ">", Type = "unit-gnomish-town-hall"}}
  },

  GivesResource = "coal", CanHarvest = true,
  Sounds = {
    "selected", "gold-mine-selected",
--    "acknowledge", "gold-mine-acknowledge",
--    "ready", "gold-mine-ready",
--    "help", "gold-mine-help",
    "dead", "building destroyed"} } )

DefineUnitType("unit-mushroom", { Name = "Mushroom",
  Image = {"file", "neutral/decorations/mushroom.png", "size", {32, 32}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-mushroom-patch", Icon = "icon-mushroom",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  IsNotSelectable = true,
  Decoration = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  NonSolid = true, 
  Sounds = {} }
)

DefineUnitType("unit-mushroom-patch", { Name = "Mushroom Patch",
  Image = {"file", "neutral/decorations/mushrooms.png", "size", {32, 32}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-mushroom-patch", Icon = "icon-mushroom",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  IsNotSelectable = true,
  Decoration = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  NonSolid = true, 
  Sounds = {} }
)

UnitTypeFiles["unit-flowers"] = {
	dungeon = "tilesets/swamp/neutral/decorations/flowers.png",
	forest = "tilesets/forest/neutral/decorations/flowers.png",
	swamp = "tilesets/swamp/neutral/decorations/flowers.png"
}

DefineUnitType("unit-flowers", { Name = "Flowers",
  Image = {"size", {32, 32}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-decoration", Icon = "icon-flowers",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  IsNotSelectable = true,
  Decoration = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  NonSolid = true, 
  Sounds = {} }
)

UnitTypeFiles["unit-large-flower"] = {
	dungeon = "tilesets/swamp/neutral/decorations/large_flower.png",
	forest = "tilesets/forest/neutral/decorations/large_flower.png",
	swamp = "tilesets/swamp/neutral/decorations/large_flower.png"
}

DefineUnitType("unit-large-flower", { Name = "Large Flower",
  Image = {"size", {32, 32}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-decoration", Icon = "icon-large-flower",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  IsNotSelectable = true,
  Decoration = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  NonSolid = true, 
  Sounds = {} }
)

UnitTypeFiles["unit-fern"] = {
	dungeon = "tilesets/swamp/neutral/decorations/fern.png",
	forest = "tilesets/forest/neutral/decorations/fern.png",
	swamp = "tilesets/swamp/neutral/decorations/fern.png"
}

DefineUnitType("unit-fern", { Name = "Fern",
  Image = {"size", {48, 48}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-decoration", Icon = "icon-fern",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  IsNotSelectable = true,
  Decoration = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  NonSolid = true, 
  Sounds = {} }
)

DefineUnitType("unit-twigs", { Name = "Twigs",
  Image = {"file", "neutral/decorations/twigs.png", "size", {32, 32}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-decoration", Icon = "icon-twigs",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  IsNotSelectable = true,
  Decoration = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  NonSolid = true, 
  Sounds = {} }
)

DefineUnitType("unit-log", { Name = "Log",
  Image = {"file", "neutral/decorations/log.png", "size", {56, 56}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-decoration", Icon = "icon-log",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  IsNotSelectable = true,
  Decoration = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  Sounds = {} }
)

DefineUnitType("unit-bones", { Name = "Bones",
  Image = {"file", "neutral/decorations/bones.png", "size", {32, 32}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-decoration", Icon = "icon-bones",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  IsNotSelectable = true,
  Decoration = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  NonSolid = true, 
  Sounds = {} }
)

DefineUnitType("unit-wyrm-skeleton", { Name = "Wyrm Skeleton",
  Image = {"file", "neutral/decorations/wyrm_skeleton.png", "size", {128, 32}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-decoration", Icon = "icon-wyrm-skeleton",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {4, 1}, BoxSize = {127, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  IsNotSelectable = true,
  Decoration = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  Sounds = {} }
)

DefineUnitType("unit-small-rocks", { Name = "Small Rocks",
  Image = {"file", "neutral/decorations/small_rocks.png", "size", {32, 32}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-decoration", Icon = "icon-small-rocks",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  IsNotSelectable = true,
  Decoration = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  NonSolid = true, 
  Sounds = {} }
)

DefineUnitType("unit-glyph", { Name = "Glyph",
  Image = {"file", "neutral/buildings/glyph.png", "size", {32, 32}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-decoration", Icon = "icon-glyph",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  Building = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  Sounds = {
    "selected", "click",
--    "acknowledge", "gold-mine-acknowledge",
--    "ready", "gold-mine-ready",
--    "help", "gold-mine-help",
    "dead", "building destroyed"} }
)

DefineUnitType("unit-stairs", { Name = "Stairs",
  Image = {"file", "neutral/buildings/stairs.png", "size", {32, 32}},
  NeutralMinimapColor = {128, 128, 0},
  Animations = "animations-decoration", Icon = "icon-bones",
  Speed = 0,
  HitPoints = 0,
  DrawLevel = 5,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 0,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  IsNotSelectable = true,
  Decoration = true,
  NumDirections = 1,
  Indestructible = 1,
  VisibleUnderFog = true,
  NonSolid = true, 
  Sounds = {} }
)

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

DefineUnitType("unit-gold-coins", { Name = "Gold Coins",
  Image = {"file", "neutral/items/gold_coins.png", "size", {12, 13}},
  Animations = "animations-gold-sack", Icon = "icon-gold-coins",
  NeutralMinimapColor = {255, 255, 0},
  Speed = 0,
  HitPoints = 1,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  NumDirections = 1,  
  NonSolid = true, 
  Sounds = {} } )

DefineUnitType("unit-gold-sack", { Name = "Gold Sack",
  Image = {"file", "neutral/items/gold_sack.png", "size", {16, 14}},
  Animations = "animations-gold-sack", Icon = "icon-gold-sack",
  NeutralMinimapColor = {255, 255, 0},
  Speed = 0,
  HitPoints = 1,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
--  GivesResource = "gold", CanHarvest = true,
  NumDirections = 1,  
  NonSolid = true, 
  Sounds = {} } )

DefineUnitType("unit-gold-chest", { Name = "Chest",
  Image = {"file", "neutral/items/chest.png", "size", {32, 32}},
  Animations = "animations-gold-chest", Icon = "icon-chest",
  NeutralMinimapColor = {255, 255, 0},
  Speed = 0,
  HitPoints = 100,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  NumDirections = 1,  
  Sounds = {} } )

DefineUnitType("unit-gold-and-gems-chest", { Name = "Chest",
  Image = {"file", "neutral/items/chest.png", "size", {32, 32}},
  Animations = "animations-gold-and-gems-chest", Icon = "icon-chest",
  NeutralMinimapColor = {255, 255, 0},
  Speed = 0,
  HitPoints = 100,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  NumDirections = 1,  
  Sounds = {} } )

DefineUnitType("unit-potion-of-healing", { Name = "Potion of Healing",
  Image = {"file", "neutral/items/potion.png", "size", {16, 16}},
  Animations = "animations-red-potion", Icon = "icon-red-potion",
  NeutralMinimapColor = {255, 255, 0},
  Speed = 0,
  HitPoints = 1,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  NumDirections = 1,  
  NonSolid = true, 
  Sounds = {} } )

DefineUnitType("unit-potion-of-decay", { Name = "Potion of Decay",
  Image = {"file", "neutral/items/potion.png", "size", {16, 16}},
  Animations = "animations-blue-potion", Icon = "icon-blue-potion",
  NeutralMinimapColor = {255, 255, 0},
  Speed = 0,
  HitPoints = 1,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  NumDirections = 1,  
  NonSolid = true, 
  Sounds = {} } )

DefineUnitType("unit-cheese", { Name = "Cheese",
  Image = {"file", "neutral/items/cheese.png", "size", {15, 12}},
  Animations = "animations-gold-sack", Icon = "icon-cheese",
  NeutralMinimapColor = {255, 255, 0},
  Speed = 0,
  HitPoints = 1,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  NumDirections = 1,  
  NonSolid = true, 
  Sounds = {} } )

DefineUnitType("unit-carrots", { Name = "Carrots",
  Image = {"file", "neutral/items/carrots.png", "size", {18, 12}},
  Animations = "animations-gold-sack", Icon = "icon-carrots",
  NeutralMinimapColor = {255, 255, 0},
  Speed = 0,
  HitPoints = 1,
  DrawLevel = 30,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0,
  Type = "land",
  NumDirections = 1,  
  NonSolid = true, 
  Sounds = {} } )

--UnitTypeFiles["unit-destroyed-1x1-place"] = {
--  swamp = "tilesets/swamp/neutral/buildings/destroyed_site.png"
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
  dungeon = "tilesets/swamp/neutral/buildings/destroyed_site.png",
  forest = "tilesets/swamp/neutral/buildings/destroyed_site.png",
  swamp = "tilesets/swamp/neutral/buildings/destroyed_site.png",
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
  dungeon = "tilesets/swamp/neutral/buildings/destroyed_site.png",
  forest = "tilesets/swamp/neutral/buildings/destroyed_site.png",
  swamp = "tilesets/swamp/neutral/buildings/destroyed_site.png"
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
--  swamp = "tilesets/swamp/neutral/buildings/destroyed_site.png"
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
  dungeon = "tilesets/swamp/neutral/buildings/destroyed_site.png",
  forest = "tilesets/swamp/neutral/buildings/destroyed_site.png",
  swamp = "tilesets/swamp/neutral/buildings/destroyed_site.png"
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

-- Human units

DefineUnitType("unit-human-lumber-mill", { Name = lumber_mill_name,
  Image = {"file", "human/buildings/lumber_mill.png", "size", {96, 96}},
  NeutralMinimapColor = {192, 192, 192},
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
    "selected", "lumber-mill-selected",
--    "acknowledge", "elven-lumber-mill-acknowledge",
--    "ready", "elven-lumber-mill-ready",
--    "help", "basic-dwarf-voices-help",
    "dead", "building destroyed"} } )


-- Load the different civilizations
Load("scripts/dwarf/units.lua")
Load("scripts/gnome/units.lua")
Load("scripts/goblin/units.lua")

DefineUnitType("unit-human-wall", { Name = "Wall",
  Image = {"file", "neutral/buildings/glyph.png", "size", {32, 32}},
  Animations = "animations-building", Icon = "icon-human-lumber-mill",
  Costs = {"time", 30, "gold", 20, "wood", 10},
  Construction = "construction-wall",
  Speed = 0,
  HitPoints = 40,
  DrawLevel = 39,
  TileSize = {1, 1}, BoxSize = {31, 31},
  SightRange = 1,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 0, AnnoyComputerFactor = 45,
  Points = 1,
--  Corpse = "unit-destroyed-1x1-place",
  ExplodeWhenKilled = "missile-explosion",
  Type = "land",
  Building = true, VisibleUnderFog = true,
  Sounds = {
--    "selected", "human-wall-selected",
--    "acknowledge", "human-wall-acknowledge",
--    "ready", "human-wall-ready",
--    "help", "basic human voices help 2",
    "dead", "building destroyed"} } )

-- Hardcoded unit-types, moved from Stratagus to games
UnitTypeHumanWall = UnitTypeByIdent("unit-human-wall");
