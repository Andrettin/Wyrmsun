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

Units = {
	"unit-dwarven-town-hall", "unit-dwarven-mushroom-farm", "unit-dwarven-barracks",
	"unit-dwarven-lumber-mill", "unit-dwarven-smith",
	"unit-dwarven-sentry-tower", "unit-dwarven-guard-tower",
	"unit-dwarven-miner", "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-scout",
	"unit-dwarven-ballista", "unit-dwarven-gryphon-rider",
	"upgrade-dwarven-broad-axe", "upgrade-dwarven-great-axe", "upgrade-dwarven-shield-1", "upgrade-dwarven-shield-2",
	"upgrade-dwarven-throwing-axe-1", "upgrade-dwarven-throwing-axe-2", "upgrade-dwarven-ballista-bolt-1", "upgrade-dwarven-ballista-bolt-2",
	"unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks",
	"unit-gnomish-worker", "unit-gnomish-recruit",
	"unit-goblin-town-hall", "unit-goblin-mess-hall", "unit-goblin-farm", "unit-goblin-lumber-mill", "unit-goblin-smith",
	"unit-goblin-worker", "unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-war-machine",
	"unit-elven-swordsman",
	"unit-orc-spearthrower", "unit-orc-sea-orc", "unit-orc-shaman",
	"unit-gryphon", "unit-wyrm",
	"unit-hero-rugnur", "unit-hero-baglur", "unit-hero-thursagan", "unit-hero-durstorn",
	"unit-hero-greebo"
}

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
--	swamp = "neutral/units/rat.png"
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
	Variations = {
	{
		"variation-id", "dark-gray-fur"
	},
	{
		"variation-id", "light-gray-fur",
		"file", "neutral/units/rat_light_gray_fur.png"
	},
	{
		"variation-id", "black-fur",
		"file", "neutral/units/rat_black_fur.png"
	}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "critter-acknowledge",
--		"ready", "critter-ready",
--		"help", "critter-help",
		"dead", "rat-dead" }
} )

DefineUnitType("unit-gryphon", { Name = "Gryphon",
	Description = "Amongst the beasts which dwell in the dwarven homeworld of Nidavellir are the gryphons. Although many can be seen in the wild, dwarves have been domesticating gryphons for aeons. It is unknown if the wild gryphons are the descendants of gryphons who avoided domestication, or if descend from gryphons escaped from captivity who managed to survive on their own. Not coincidentally, the Gryphon Mountain is the greatest nesting area for wild gryphons.",
	Image = {"file", "neutral/units/gryphon.png", "size", {100, 100}},
	DrawLevel = 45,
	Animations = "animations-gryphon", Icon = "icon-gryphon",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 14,
	HitPoints = 90,
	DrawLevel = 60,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
	Armor = 0, BasicDamage = 9, PiercingDamage = 3, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 65,
	Points = 150,
	Demand = 1,
	Type = "fly",
--	ShadowFly = {Value = 1, Enable = true}, -- deactivated the shadow because it was appearing on top of the unit
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	AirUnit = true,
	DetectCloak = true,
	RandomMovementProbability = 1,
	organic = true,
	Coward = false,
	Variations = {
		{
			"variation-id", "brown-feathers"
		},
		{
			"variation-id", "blue-feathers",
			"file", "neutral/units/gryphon_blue_feathers.png",
			"icon", "icon-gryphon-blue-feathers"
		},
		{
			"variation-id", "gray-feathers",
			"file", "neutral/units/gryphon_gray_feathers.png",
			"icon", "icon-gryphon-gray-feathers"
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "critter-acknowledge",
		"ready", "gryphon-ready",
--		"help", "critter-help",
		"dead", "gryphon-dead" }
} )

DefineUnitType("unit-wyrm", { Name = "Wyrm",
	Image = {"file", "neutral/units/wyrm.png", "size", {110, 108}},
	Animations = "animations-wyrm", Icon = "icon-dwarven-axefighter",
	Costs = {"time", 250, "gold", 2500},
	Speed = 10,
	HitPoints = 150,
	DrawLevel = 40,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
	Armor = 10, BasicDamage = 24, PiercingDamage = 12, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 65,
	BasePoints = 300,
	Demand = 1,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	LandUnit = true,
	organic = true,
	SelectableByRectangle = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "critter-acknowledge",
--		"ready", "critter-ready",
--		"help", "critter-help",
		"dead", "drake-dead" }
} )

--UnitTypeFiles["unit-gold-mine"] = {
--	swamp = "tilesets/swamp/neutral/buildings/gold_mine.png"
--}

DefineUnitType("unit-gold-mine", { Name = gold_mine_name,
	Description = "Gold is a crucial metal for most societies, as it serves as a means of exchange with which a myriad of goods and services can be bought.",
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
	{ "distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-town-hall"},
	"distance", { Distance = 3, DistanceType = ">", Type = "unit-gnomish-town-hall"},
	"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-town-hall"}}
	},

	GivesResource = "gold", CanHarvest = true,
	Sounds = {
		"selected", "gold-mine-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
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
	{ "distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-town-hall"},
	"distance", { Distance = 3, DistanceType = ">", Type = "unit-gnomish-town-hall"},
	"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-town-hall"}}
	},

	GivesResource = "coal", CanHarvest = true,
	Sounds = {
		"selected", "gold-mine-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building destroyed"} } )

DefineUnitType("unit-wood-pile", { Name = "Wood Pile",
	Image = {"file", "neutral/buildings/wood_pile.png", "size", {43, 43}},
	Animations = "animations-decoration", Icon = "icon-wood-pile",
	NeutralMinimapColor = {128, 0, 0},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
--	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	GivesResource = "lumber", CanHarvest = true,
	Sounds = {
--		"selected", "gold-mine-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
--		"dead", "building destroyed"
	} } )

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
	Variations = {
	{
		"variation-id", "red"
	},
	{
		"variation-id", "orange"
	},
	{
		"variation-id", "green"
	},
	{
		"variation-id", "yellow"
	}
	},
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
	Variations = {
	{
		"variation-id", "red"
	},
	{
		"variation-id", "orange"
	},
	{
		"variation-id", "green"
	},
	{
		"variation-id", "yellow"
	}
	},
	Sounds = {} }
)

UnitTypeFiles["unit-flowers"] = {
	cave = "tilesets/swamp/neutral/decorations/flowers.png",
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
	cave = "tilesets/swamp/neutral/decorations/large_flower.png",
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
	cave = "tilesets/swamp/neutral/decorations/fern.png",
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
	Animations = "animations-building", Icon = "icon-wyrm-skeleton",
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
	Variations = {
		{
			"variation-id", "non-horned"
		},
		{
			"variation-id", "horned",
			"file", "neutral/decorations/wyrm_skeleton_horned.png"
		}
	},
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
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building destroyed"} }
)

DefineUnitType("unit-stairs", { Name = "Stairs",
	Image = {"file", "neutral/buildings/stairs.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration", Icon = "icon-stairs",
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

DefineUnitType("unit-outer-wall-decoration", { Name = "Outer Wall Decoration",
	Image = {"file", "neutral/decorations/outer_wall_decoration.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration", Icon = "icon-outer-wall-decoration",
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

DefineUnitType("unit-inner-wall-decoration", { Name = "Inner Wall Decoration",
	Image = {"file", "neutral/decorations/inner_wall_decoration.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration", Icon = "icon-inner-wall-decoration",
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

DefineUnitType("unit-floor-decoration", { Name = "Floor Decoration",
	Image = {"file", "neutral/decorations/floor_decoration.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration", Icon = "icon-floor-decoration",
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

DefineUnitType("unit-dwarven-dead-body", { Name = "Dead Body",
	Image = {"file", "neutral/units/dwarven_corpse.png", "size", {72, 72}},
	Animations = "animations-dwarven-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Sounds = {} } )

DefineUnitType("unit-gnomish-dead-body", { Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_and_goblin_corpses.png", "size", {72, 72}},
	Animations = "animations-gnomish-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Sounds = {} } )

DefineUnitType("unit-goblin-dead-body", { Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_and_goblin_corpses.png", "size", {72, 72}},
	Animations = "animations-goblin-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Sounds = {} } )

--DefineUnitType("unit-dead-sea-body", { Name = "Dead Body",
--	Image = {"file", "neutral/units/corpses.png", "size", {72, 72}},
--	Animations = "animations-dead-sea-body", Icon = "icon-dwarven-miner",
--	Speed = 0,
--	HitPoints = 255,
--	DrawLevel = 30,
--	TileSize = {2, 2}, BoxSize = {31, 31},
--	SightRange = 1,
--	BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
--	Priority = 0,
--	Type = "naval",
--	Vanishes = true,
--	Sounds = {} } )

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
	Item = true,
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
--	GivesResource = "gold", CanHarvest = true,
	NumDirections = 1,	
	Item = true,
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
	Sounds = {
		"selected", "click",
		"dead", "building destroyed"} } )

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
	Sounds = {
		"selected", "click",
		"dead", "building destroyed"} } )

DefineUnitType("unit-barrel", { Name = "Barrel",
	Image = {"file", "neutral/items/barrel.png", "size", {32, 32}},
	Animations = "animations-barrel", Icon = "icon-barrel",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Sounds = {
		"selected", "click",
		"dead", "building destroyed"} } )

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
	Item = true,
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
	Item = true,
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
	Item = true,
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
	Item = true, 
	Sounds = {} } )

DefineUnitType("unit-gryphon-feather", { Name = "Gryphon Feather",
	Image = {"file", "neutral/items/gryphon_feather.png", "size", {28, 26}},
	Animations = "animations-gold-sack", Icon = "icon-gryphon-feather",
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
	Item = true,
	Sounds = {} } )

--UnitTypeFiles["unit-destroyed-1x1-place"] = {
--	swamp = "tilesets/swamp/neutral/buildings/destroyed_site.png"
--}

--DefineUnitType("unit-destroyed-1x1-place", { Name = "Destroyed 1x1 Place",
--	Image = {"size", {32, 32}},
--	Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
--	Speed = 0,
--	HitPoints = 255,
--	DrawLevel = 10,
--	TileSize = {1, 1}, BoxSize = {31, 31},
--	SightRange = 2,
--	BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
--	Priority = 0,
--	Type = "land",
--	Building = true, VisibleUnderFog = true,
--	Vanishes = true,
--	Sounds = {} } )


UnitTypeFiles["unit-destroyed-2x2-place"] = {
	cave = "tilesets/swamp/neutral/buildings/destroyed_site.png",
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
	cave = "tilesets/swamp/neutral/buildings/destroyed_site.png",
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
--	swamp = "tilesets/swamp/neutral/buildings/destroyed_site.png"
--}

--DefineUnitType("unit-destroyed-3x3-place-water", { Name = "Destroyed 3x3 Place Water",
--	Image = {"size", {64, 64}},
--	Animations = "animations-destroyed-place-water", Icon = "icon-dwarven-miner",
--	Speed = 0,
--	HitPoints = 255,
--	DrawLevel = 10,
--	TileSize = {3, 3}, BoxSize = {95, 95},
--	SightRange = 0,
--	BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
--	Priority = 0,
--	Type = "naval",
--	Building = true, VisibleUnderFog = true,
--	Vanishes = true,
--	Sounds = {} } )

UnitTypeFiles["unit-destroyed-4x4-place"] = {
	cave = "tilesets/swamp/neutral/buildings/destroyed_site.png",
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

-- Other civilizations' units

DefineUnitType("unit-human-lumber-mill", { Name = lumber_mill_name,
	Image = {"file", "human/buildings/lumber_mill.png", "size", {96, 96}},
	NeutralMinimapColor = {192, 192, 192},
	Animations = "animations-building", Icon = "icon-human-lumber-mill",
	Costs = {"time", 150, "gold", 600, "lumber", 450},
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
--		"acknowledge", "elven-lumber-mill-acknowledge",
--		"ready", "elven-lumber-mill-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"} } )

DefineUnitType("unit-elven-swordsman", { Name = "Elven Swordsman",
	Class = "infantry",
	Civilization = "elf",
	Description = "Elves are not warlike by nature, but in times of need, their natural grace and agility serve them well, as does their skillful craftsmanship. An elf can grasp the basics of swordsmanship in a time uncannily short by the standards of other races, and put them to effective use on the battlefield.",
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-elven-swordsman",
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
--	Corpse = "unit-dwarven-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	LandUnit = true,
	organic = true,
	SelectableByRectangle = true,
	Sounds = {
--		"selected", "basic-dwarf-voices-selected-group",
--		"acknowledge", "basic-dwarf-voices-acknowledge",
--		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
--		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-orc-spearthrower", { Name = "Orc Spearthrower",
	Class = "archer",
	Civilization = "orc",
	Description = "Amongst orcs, throwing spears are often regarded as a cowardly weapon; but even orcs, especially youths and those of slight build, are pragmatic enough to use them in spite of this. Orcish spearthrowers are seldom well equipped, and have no semblance of training. Even as poorly handled as they are, their weapons can still be quite deadly, and the wielders thereof rarely march alone.",
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-dwarven-scout", Icon = "icon-orc-spearthrower",
	Costs = {"time", 70, "gold", 500, "lumber", 50},
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
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"ready", "dwarven-scout-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"} } )

DefineUnitType("unit-orc-sea-orc", { Name = "Sea Orc",
	Class = "marine-infantry",
	Civilization = "orc",
	Description = "While often viewed as inferior to their land-loving counterparts, Sea Orcs represent a great leap for all orcs as they have adapted to aquatic environments. With their curved swords they are competent warriors, although their poor fighting skills on land do represent a strategic weakness.",
	Background = "In the Battle for Wesnoth, sea orcs appear in \"the Bay of Pearls\" scenario of the Heir to the Throne campaign.",
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-orc-sea-orc",
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
--	Corpse = "unit-dwarven-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	LandUnit = true,
	organic = true,
	SelectableByRectangle = true,
	Sounds = {
--		"selected", "basic-dwarf-voices-selected-group",
--		"acknowledge", "basic-dwarf-voices-acknowledge",
--		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
--		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-orc-shaman", { Name = "Orc Shaman",
	Class = "priest",
	Civilization = "orc",
	Description = "Orc shamans are the guardians of orcish magic. Respected among orcish tribes, they form the Orcish Council, which makes important decisions for the whole orcish community and arbitrates the many conflicts that arise between tribes of this argumentative race.",
	Background = "In the Battle for Wesnoth, orcish shamans play an important role in the story of the Son of the Black Eye campaign.",
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-orc-shaman",
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
--	Corpse = "unit-dwarven-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	LandUnit = true,
	organic = true,
	SelectableByRectangle = true,
	Sounds = {
--		"selected", "basic-dwarf-voices-selected-group",
--		"acknowledge", "basic-dwarf-voices-acknowledge",
--		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
--		"dead", "basic-dwarf-voices-dead"
	}
} )

-- initialize the grand strategy unit variable
GrandStrategyUnits = {}
GrandStrategyBuildings = {}
GrandStrategyHeroes = {}

-- Load the different civilizations
Load("scripts/dwarf/units.lua")
Load("scripts/gnome/units.lua")
Load("scripts/goblin/units.lua")

DefineUnitType("unit-human-wall", { Name = "Wall",
	Image = {"file", "neutral/buildings/glyph.png", "size", {32, 32}},
	Animations = "animations-building", Icon = "icon-human-lumber-mill",
	Costs = {"time", 30, "gold", 20, "lumber", 10},
	Construction = "construction-wall",
	Speed = 0,
	HitPoints = 40,
	DrawLevel = 39,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 0, AnnoyComputerFactor = 45,
	Points = 1,
--	Corpse = "unit-destroyed-1x1-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Sounds = {
--		"selected", "human-wall-selected",
--		"acknowledge", "human-wall-acknowledge",
--		"ready", "human-wall-ready",
--		"help", "basic human voices help 2",
		"dead", "building destroyed"} } )

-- Hardcoded unit-types, moved from Stratagus to games
UnitTypeHumanWall = UnitTypeByIdent("unit-human-wall");






GrandStrategyUnits["Gryphon"] = {
	Name = GetUnitTypeName("unit-gryphon") .. "s",
	UnitType = "unit-gryphon",
	Icon = "neutral/icons/gryphon.png",
	Civilization = "neutral",
	Type = "Predator",
	Costs = {
	},
	X = 0,
	Y = 0,
	RequiredBuildings = { },
	InterfaceState = ""
}
