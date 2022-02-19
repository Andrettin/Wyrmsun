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
--      (c) Copyright 1998-2022 by Lutz Sammer, Jimmy Salmon and Andrettin
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

if (OldDefineUnitType == nil) then
	OldDefineUnitType = DefineUnitType
end

function DefineUnitType(unit_type, data)
	if (data.Parent ~= nil) then
		OldDefineUnitType(unit_type, {Parent = data.Parent})
		data.Parent = nil
	end
	
	OldDefineUnitType(unit_type, data)
end

-- Load the animations for the units.
Load("scripts/anim.lua")

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--
DefineUnitType("unit-template-unit", {
	Name = "Unit",
	Template = true,
	TileSize = {1, 1}, BoxSize = {32, 32}, -- default tile and box size
	Animations = "animations-melee-unit-new",
	DrawLevel = 40,
	SelectableByRectangle = true,
	ButtonPopup = "popup_unit"
})

DefineUnitType("unit-template-building", {
	Name = "Building",
	Template = true,
	TileSize = {2, 2}, BoxSize = {64, 64}, -- default tile and box size
	Animations = "animations-building",
	DrawLevel = 30,
	SightRange = 2,
	Building = true,
	VisibleUnderFog = true,
	SelectableByRectangle = true,
	SalvageFactor = 75,
	ButtonLevel = "build-structure-level",
	ButtonPopup = "popup_building"
})

DefineUnitType("unit-template-sapient-unit", {
	Name = "Sapient Unit",
	Parent = "unit-template-unit",
	Template = true,
	PopulationCost = 10000,
	NeutralMinimapColor = {192, 192, 192},
	Strength = 10,
	Dexterity = 10,
	Intelligence = 10,
	Charisma = 10,
	Organic = true,
	Mana = {Enable = false, Max = 0, Value = 0, Increase = 1},
	Traits = {"upgrade-ambitious", "upgrade-clumsy", "upgrade-cruel", "upgrade-dextrous", "upgrade-dim", "upgrade-dutiful", "upgrade-genius", "upgrade-intelligent", "upgrade-keen", "upgrade-limping", "upgrade-mighty", "upgrade-near-sighted", "upgrade-old", "upgrade-pious", "upgrade-quick", "upgrade-reckless", "upgrade-resilient", "upgrade-slow", "upgrade-strong", "upgrade-weak", "upgrade-wise"}
})

Load("scripts/items.lua")
Load("scripts/units_fauna.lua")

DefineUnitType("unit-minecart", {
	Name = "Minecart",
	Parent = "unit-template-unit",
	Class = "minecart",
	Civilization = "neutral",
	Description = "Minecarts are useful to gather resources from mines in greater bulk.",
	Image = {"file", "teuton/units/minecart.png", "size", {64, 64}},
	Animations = "animations-minecart", Icon = "icon-teuton-minecart",
	Costs = {"time", 60, "copper", 300, "lumber", 300},
	PopulationCost = 10000,
	PopulationClass = "workers",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Speed = 2,
	HitPoints = 110,
	TileSize = {1, 1}, BoxSize = {42, 42},
	SightRange = 4,
	MaxAttackRange = 1,
	Priority = 55,
	Points = 50,
	Demand = 1,
	SalvageFactor = 75,
	Domain = "land",
	Coward = true,
	RightMouseAction = "harvest",
	RailSpeedBonus = 5,
	RequirementsString = "Engineering",
	ButtonKey = "c",
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "teuton/units/minecart_with_gold.png",
			"resource-capacity", 200,
			"resource-step", 6,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "teuton/units/minecart_with_silver.png",
			"resource-capacity", 200,
			"resource-step", 6,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "teuton/units/minecart_with_copper.png",
			"resource-capacity", 200,
			"resource-step", 6,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "iron",
			"file-when-loaded", "teuton/units/minecart_with_iron.png",
			"resource-capacity", 200,
			"resource-step", 6,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "mithril",
			"file-when-loaded", "teuton/units/minecart_with_silver.png",
			"resource-capacity", 200,
			"resource-step", 6,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "teuton/units/minecart_with_coal.png",
			"resource-capacity", 200,
			"resource-step", 6,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "diamonds",
			"file-when-loaded", "teuton/units/minecart_with_silver.png",
			"resource-capacity", 200,
			"resource-step", 6,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "emeralds",
			"file-when-loaded", "teuton/units/minecart_with_gold.png",
			"resource-capacity", 200,
			"resource-step", 6,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		}
	},
	Sounds = {
		"selected", "gold-mine-selected",
		"ready", "minecart",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves",
		"dead", "explosion"
	}
} )

DefineUnitType("unit-caravan", {
	Name = "Caravan",
	Parent = "unit-template-unit",
	Class = "caravan",
	Civilization = "neutral",
	Description = "Caravans are used by various different cultures to perform commerce.",
	Image = {"file", "neutral/units/caravan.png", "size", {64, 64}},
	Animations = "animations-gnomish-caravan", Icon = "icon-caravan",
	Costs = {"time", 250, "copper", 900, "lumber", 900},
	PopulationCost = 10000,
	PopulationClass = "workers",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Speed = 5,
	HitPoints = 110,
	TileSize = {1, 1}, BoxSize = {64, 64},
	SightRange = 4,
	Priority = 55,
	Points = 50,
	Demand = 1,
	Domain = "land",
	Coward = true,
	RightMouseAction = "harvest",
	MaxOnBoard = 2,
	Missile = "missile-none",
	CanTransport = {"Building", "false", "GroundAttack", "false", "Fauna", "false", "SaveCargo", "false", "Mounted", "false"}, -- forbidding ground attack as an ugly way of making ballistas not be able to enter the transporter; and forbidding "SaveCargo" is an ugly way of making caravans not be able to enter other caravans
	AttackFromTransporter = true,
	SaveCargo = true,
	Trader = true,
	CanGatherResources = {
		{
			"resource-id", "trade",
			"resource-capacity", 400,
			"resource-step", 4,
			"wait-at-resource", 6,
			"wait-at-depot", 150
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "explosion",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-grass", "step-leaves",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
	}
} )

--DefineUnitType("unit-destroyed-1x1-place", { Name = "Destroyed 1x1 Place",
--	Image = {"size", {32, 32}},
--	Animations = "animations-destroyed-place", Icon = "dwarven_miner",
--	HitPoints = 255,
--	DrawLevel = 10,
--	TileSize = {1, 1}, BoxSize = {32, 32},
--	SightRange = 2,
--	Missile = "missile-none",
--	Priority = 0,
--	Domain = "land",
--	Building = true, VisibleUnderFog = true,
--	Vanishes = true,
--	Sounds = {} } )

DefineUnitType("unit-destroyed-2x2-place", {
	Name = "Destroyed 2x2 Place",
	Image = {"file", "neutral/buildings/destroyed_site.png", "size", {64, 64}},
	Animations = "animations-destroyed-place", Icon = "dwarven_miner",
	HitPoints = 255,
	DrawLevel = 10,
	TileSize = {2, 2}, BoxSize = {64, 64},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	Building = true, VisibleUnderFog = true,
	Vanishes = true,
	Sounds = {}
})

DefineUnitType("unit-destroyed-3x3-place", {
	Name = "Destroyed 3x3 Place",
	Image = {"file", "neutral/buildings/destroyed_site.png", "size", {64, 64}},
	Animations = "animations-destroyed-place", Icon = "dwarven_miner",
	HitPoints = 255,
	DrawLevel = 10,
	TileSize = {3, 3}, BoxSize = {96, 96},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	Building = true, VisibleUnderFog = true,
	Vanishes = true,
	Sounds = {}
})

--DefineUnitType("unit-destroyed-3x3-place-water", { Name = "Destroyed 3x3 Place Water",
--	Image = {"size", {64, 64}},
--	Animations = "animations-destroyed-place-water", Icon = "dwarven_miner",
--	HitPoints = 255,
--	DrawLevel = 10,
--	TileSize = {3, 3}, BoxSize = {96, 96},
--	SightRange = 0,
--	Missile = "missile-none",
--	Priority = 0,
--	Domain = "water",
--	Building = true, VisibleUnderFog = true,
--	Vanishes = true,
--	Sounds = {} } )

DefineUnitType("unit-destroyed-4x4-place", {
	Name = "Destroyed 4x4 Place",
	Image = {"file", "neutral/buildings/destroyed_site.png", "size", {64, 64}},
	Animations = "animations-destroyed-place", Icon = "dwarven_miner",
	HitPoints = 255,
	DrawLevel = 10,
	TileSize = {4, 4}, BoxSize = {128, 128},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	Building = true, VisibleUnderFog = true,
	Vanishes = true,
	Sounds = {}
})

DefineUnitType("unit-template-base-deposit", {
	Name = "Deposit",
	Parent = "unit-template-building",
	Template = true,
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	Construction = "land_building_simple",
	HitPoints = 25500,
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	TileSize = {3, 3}, BoxSize = {96, 96},
	Armor = 20, Missile = "missile-none",
	Priority = 0,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	StartingResources = {50000},
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	BuildingRules = {
		"and", {
			"distance", { Distance = 3, DistanceType = ">", Type = "unit_settlement_site" },
			"distance", { Distance = 3, DistanceType = ">", Class = "town_hall" },
			"distance", { Distance = 3, DistanceType = ">", Class = "stronghold" },
			"distance", { Distance = 3, DistanceType = ">", Class = "fortress" }
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-base-mine", {
	Name = "Mine",
	Parent = "unit-template-building",
	Template = true,
	Animations = "animations-active-building",
	NeutralMinimapColor = {255, 255, 0},
	Construction = "resource_building",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	HitPoints = 650,
	TileSize = {3, 3}, BoxSize = {96, 96},
--	Armor = 20, Missile = "missile-none",
	Armor = 5, Missile = "missile-none",
	Priority = 20, AnnoyComputerFactor = 20,
	Points = 160,
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	BuilderOutside = true,
	CanHarvest = true,
	MaxHarvesters = 10,
	BurnPercent = 50,
	BurnDamageRate = 1,
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "click",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-deposit", {
	Name = "Deposit",
	Parent = "unit-template-base-deposit",
	Template = true,
	Affixes = {"upgrade-item-prefix-dwindling", "upgrade-item-prefix-replenishing", "upgrade-item-suffix-of-replenishment"},
	Sounds = {
		"selected", "gold-mine-selected"
	}
} )

DefineUnitType("unit-template-mine", {
	Name = "Mine",
	Parent = "unit-template-base-mine",
	Template = true,
	Affixes = {"upgrade-item-prefix-dwindling", "upgrade-item-prefix-replenishing", "upgrade-item-suffix-of-replenishment"},
	Sounds = {
		"selected", "gold-mine-selected"
	}
} )

DefineUnitType("unit-gold-mine", {
	Name = "Gold Mine",
	Parent = "unit-template-mine",
	Class = "gold_mine",
	Civilization = "neutral",
	Description = "Gold is a crucial metal for most societies, as it serves both as a durable stock of value, and as a means of exchange with which a myriad of goods and services can be traded for.",
	Notes = "Gold is converted to copper at a 400% ratio.",
	Image = {"file", "buildings/neutral/gold_mine.png", "size", {96, 96}},
	Icon = "icon-gold-mine",
--	Costs = {"time", 200, "copper", 700, "lumber", 450},
	Costs = {"time", 200, "lumber", 2050},
	BuildingRules = { "and", { "ontop", { Type = "unit_gold_deposit", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	GivesResource = "gold",
	ButtonKey = "g",
	BuildingRulesString = "Must be built on top of a Gold Deposit",
	Variations = {
		{
			"variation-id", "gold-mine",
			"upgrade-forbidden", "upgrade-engineering",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "gold-mine-snow-winter",
			"file", "buildings/neutral/gold_mine_snow.png",
			"upgrade-forbidden", "upgrade-engineering",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "gold-mine-snow",
			"file", "buildings/neutral/gold_mine_snow.png",
			"upgrade-forbidden", "upgrade-engineering",
			"terrain", "snow"
		},
		{
			"variation-id", "rail-gold-mine",
			"file", "buildings/neutral/gold_mine_rail.png",
			"upgrade-required", "upgrade-engineering",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "rail-gold-mine-snow-winter",
			"file", "buildings/neutral/gold_mine_rail_snow.png",
			"upgrade-required", "upgrade-engineering",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "rail-gold-mine-snow",
			"file", "buildings/neutral/gold_mine_rail_snow.png",
			"upgrade-required", "upgrade-engineering",
			"terrain", "snow"
		}
	}
} )

DefineUnitType("unit-silver-mine", {
	Name = "Silver Mine",
	Parent = "unit-template-mine",
	Class = "silver_mine",
	Civilization = "neutral",
	Description = "Silver is a crucial metal for most societies, as it serves both as a durable stock of value, and as a means of exchange with which a myriad of goods and services can be traded for. Although not as valuable as gold, silver is still a highly sought-after metal.",
	Notes = "Silver is converted to copper at a 200% ratio.",
	Image = {"file", "neutral/buildings/silver_mine.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/silver_mine_shadow.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/silver_mine_light.png"},
	Icon = "icon-silver-mine",
	Costs = {"time", 200, "lumber", 2050},
	BuildingRules = { "and", { "ontop", { Type = "unit_silver_deposit", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	GivesResource = "silver",
	ButtonKey = "v",
	BuildingRulesString = "Must be built on top of a Silver Deposit",
	Variations = {
		{
			"variation-id", "silver-mine",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "silver-mine-snow-winter",
			"file", "buildings/neutral/silver_mine_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "silver-mine-snow",
			"file", "buildings/neutral/silver_mine_snow.png",
			"terrain", "snow"
		}
	}
} )

DefineUnitType("unit_copper_mine", {
	BuildingRules = { "and", { "ontop", { Type = "unit_copper_deposit", ReplaceOnDie = true, ReplaceOnBuild = true } } }
} )

DefineUnitType("unit_iron_mine", {
	BuildingRules = { "and", { "ontop", { Type = "unit_iron_deposit", ReplaceOnDie = true, ReplaceOnBuild = true } } }
} )

DefineUnitType("unit-mithril-mine", {
	Name = "Mithril Mine",
	Parent = "unit-template-mine",
	Class = "mithril_mine",
	Civilization = "neutral",
	Description = "Of the inhabited worlds, mithril is only found in Nidavellir, and even there it is an exceedingly rare metal. Both lighter and more resistant than iron, mithril is highly sought-after for crafting weapons and armor, though its enormous expense ensures that only very few can afford it.",
	Notes = "Mithril is converted to copper at a 800% ratio.",
	Image = {"file", "neutral/buildings/mithril_mine.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/mithril_mine_shadow.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/mithril_mine_light.png"},
	Icon = "icon-mithril-mine",
	Costs = {"time", 200, "lumber", 2050},
	BuildingRules = { "and", { "ontop", { Type = "unit_mithril_deposit", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	GivesResource = "mithril",
	BuildingRulesString = "Must be built on top of a Mithril Deposit",
	RequirementsString = "Ironworking",
	ButtonKey = "m",
	Variations = {
		{
			"variation-id", "mithril-mine",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "mithril-mine-snow-winter",
			"file", "buildings/neutral/mithril_mine_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "mithril-mine-snow",
			"file", "buildings/neutral/mithril_mine_snow.png",
			"terrain", "snow"
		}
	}
} )

DefineUnitType("unit-coal-mine", {
	Name = "Coal Mine",
	Parent = "unit-template-mine",
	Class = "coal_mine",
	Civilization = "neutral",
	Description = "Coal is a valuable heating material.",
	Notes = "Coal is a quest objective resource.",
	Image = {"file", "neutral/buildings/coal_mine.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/coal_mine_shadow.png", "size", {96, 96}},
	Icon = "icon-coal-mine",
	Costs = {"time", 200, "lumber", 2050},
	BuildingRules = { "and", { "ontop", { Type = "unit_coal_deposit", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	GivesResource = "coal",
	BuildingRulesString = "Must be built on top of a Coal Deposit",
	ButtonKey = "c",
	Variations = {
		{
			"variation-id", "coal-mine",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "coal-mine-snow-winter",
			"file", "buildings/neutral/coal_mine_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "coal-mine-snow",
			"file", "buildings/neutral/coal_mine_snow.png",
			"terrain", "snow"
		}
	}
} )

DefineUnitType("unit-diamond-deposit", {
	Name = "Diamond Deposit",
	Parent = "unit-template-deposit",
	--Description = "Diamond deposits contain deep sources of diamonds, which can be gainfully mined after the proper infrastructure is put into place.",
	--Notes = "Diamonds are converted to copper at a 800% ratio.",
	Image = {"file", "neutral/buildings/diamond_deposit.png", "size", {96, 96}},
	Icon = "icon-diamond-deposit",
	GivesResource = "diamonds"
} )

DefineUnitType("unit-diamond-mine", {
	Name = "Diamond Mine",
	Parent = "unit-template-mine",
	Class = "diamond_mine",
	Civilization = "neutral",
	--Description = "Diamonds are highly valuable gems, so that the discovery of deposits containing them will quickly result in the construction of a mine.",
	--Notes = "Diamonds are converted to copper at a 800% ratio.",
	Image = {"file", "neutral/buildings/diamond_mine.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/copper_mine_shadow.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/copper_mine_light.png"},
	Icon = "icon-diamond-mine",
	Costs = {"time", 200, "lumber", 2050},
	BuildingRules = { "and", { "ontop", { Type = "unit-diamond-deposit", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	GivesResource = "diamonds",
	BuildingRulesString = "Must be built on top of a Diamond Deposit",
	ButtonKey = "d"
} )

DefineUnitType("unit-emerald-deposit", {
	Name = "Emerald Deposit",
	Parent = "unit-template-deposit",
	--Description = "Emerald deposits contain deep sources of emeralds, which can be gainfully mined after the proper infrastructure is put into place.",
	--Notes = "Emeralds are converted to copper at a 600% ratio.",
	Image = {"file", "neutral/buildings/emerald_deposit.png", "size", {96, 96}},
	Shadow = {"file", "buildings/neutral/gold_deposit_shadow.png", "size", {96, 96}},
	Icon = "icon-emerald-deposit",
	GivesResource = "emeralds"
} )

DefineUnitType("unit-emerald-mine", {
	Name = "Emerald Mine",
	Parent = "unit-template-mine",
	Class = "emerald_mine",
	Civilization = "neutral",
	--Description = "Emeralds are valuable gems, and can be mined for high profits.",
	--Notes = "Emeralds are converted to copper at a 600% ratio.",
	Image = {"file", "neutral/buildings/emerald_mine.png", "size", {96, 96}},
	Shadow = {"file", "buildings/neutral/gold_mine_shadow.png", "size", {96, 96}},
	LightImage = {"file", "buildings/neutral/gold_mine_light.png"},
	Icon = "icon-emerald-mine",
	Costs = {"time", 200, "lumber", 2050},
	BuildingRules = { "and", { "ontop", { Type = "unit-emerald-deposit", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	GivesResource = "emeralds",
	BuildingRulesString = "Must be built on top of an Emerald Deposit",
	ButtonKey = "e"
} )

DefineUnitType("unit-diamond-rock", {
	Name = "Diamond Rock",
	Image = {"file", "neutral/buildings/diamond_rock_1.png", "size", {43, 43}},
	Animations = "animations-building", Icon = "icon-diamond-rock",
	Offset = {0, -2},
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	HitPoints = 25500,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
	Domain = "land",
	StartingResources = {1000},
	NumDirections = 1,
	Building = false, VisibleUnderFog = true,
	GivesResource = "diamonds", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/buildings/diamond_rock_2.png"
		},
		{
			"variation-id", "3",
			"file", "neutral/buildings/diamond_rock_3.png"
		},
		{
			"variation-id", "4",
			"file", "neutral/buildings/diamond_rock_4.png"
		}
	},
	Sounds = {
		"selected", "metal-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-emerald-rock", {
	Name = "Emerald Rock",
	Image = {"file", "neutral/buildings/emerald_rock_1.png", "size", {43, 43}},
	Shadow = {"file", "neutral/buildings/gold_rock_1_shadow.png", "size", {43, 43}},
	Animations = "animations-building", Icon = "icon-emerald-rock",
	Offset = {0, -2},
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	HitPoints = 25500,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
	Domain = "land",
	StartingResources = {1000},
	NumDirections = 1,
	Building = false, VisibleUnderFog = true,
	GivesResource = "emeralds", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/buildings/emerald_rock_2.png",
			"shadow-file", "neutral/buildings/gold_rock_2_shadow.png"
		},
		{
			"variation-id", "3",
			"file", "neutral/buildings/emerald_rock_3.png",
			"shadow-file", "neutral/buildings/gold_rock_3_shadow.png"
		},
		{
			"variation-id", "4",
			"file", "neutral/buildings/emerald_rock_4.png",
			"shadow-file", "neutral/buildings/gold_rock_4_shadow.png"
		}
	},
	Sounds = {
		"selected", "metal-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-wood-pile", {
	Name = "Wood Pile",
	Image = {"file", "neutral/buildings/wood_pile_1.png", "size", {43, 43}},
	Animations = "animations-building", Icon = "icon_lumber",
	NeutralMinimapColor = {165, 42, 42},
	Costs = {"time", 150},
	HitPoints = 25500,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {36, 36},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
	Domain = "land",
	StartingResources = {400},
	NumDirections = 1,
	Building = false, VisibleUnderFog = true,
	GivesResource = "lumber", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/buildings/wood_pile_2.png"
		},
		{
			"variation-id", "3",
			"file", "neutral/buildings/wood_pile_3.png"
		},
		{
			"variation-id", "4",
			"file", "neutral/buildings/wood_pile_4.png"
		}
	},
	Sounds = {
		"selected", "tree-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-stone-pile", {
	Name = "Stone Pile",
	Image = {"file", "neutral/buildings/stone_pile.png", "size", {43, 43}},
	Animations = "animations-decoration", Icon = "icon_stone",
	NeutralMinimapColor = {92, 92, 92},
	Costs = {"time", 150},
	HitPoints = 25500,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {36, 36},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
	Domain = "land",
--	StartingResources = {200, 400},
	StartingResources = {400},
	NumDirections = 1,
	Building = false, VisibleUnderFog = true,
	GivesResource = "stone", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1",
			"resource-min", 201
		},
		{
			"variation-id", "2",
			"resource-min", 201
		},
		{
			"variation-id", "3",
			"resource-min", 201
		},
		{
			"variation-id", "4",
			"resource-min", 201
		},
		{
			"variation-id", "small-1",
			"resource-max", 200
		},
		{
			"variation-id", "small-2",
			"resource-max", 200
		},
		{
			"variation-id", "small-3",
			"resource-max", 200
		},
		{
			"variation-id", "small-4",
			"resource-max", 200
		}
	},
	Sounds = {
		"selected", "click"
	}
} )

DefineUnitType("unit-template-lair", {
	Name = "Lair",
	Parent = "unit-template-base-deposit",
	Template = true,
	Inexhaustible = true,
	HitPoints = 800
} )

DefineUnitType("unit-template-hunting-lodge", {
	Name = "Hunting Lodge",
	Parent = "unit-template-base-mine",
	Template = true,
	Inexhaustible = true,
	MaxHarvesters = 3
} )

DefineUnitType("unit-yale-hunting-lodge", {
	Name = "Yale Hunting Lodge",
	Parent = "unit-template-hunting-lodge",
	Class = "yale_hunting_lodge",
	Civilization = "neutral",
	Description = "Before the development of farming, the dwarves of Nidavellir hunted and foraged to survive. Yales were one of the principal animals hunted by them, providing food for nourishment and leather for clothing.",
	Image = {"file", "neutral/buildings/yale_hunting_lodge.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/yale_hunting_lodge_shadow.png", "size", {96, 96}},
	Icon = "icon-yale-hunting-lodge",
	Costs = {"time", 200, "lumber", 2050},
	Supply = 6,
	BuildingRules = { "and", { "ontop", { Type = "unit_yale_cave", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	GivesResource = "leather",
	BuildingRulesString = "Must be built on top of a Yale Cave",
	ButtonKey = "y",
	Variations = {
		{
			"variation-id", "yale-hunting-lodge",
			"upgrade-forbidden", "upgrade-dwarven-civilization",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "yale-hunting-lodge-snow-winter",
			"file", "buildings/neutral/yale_hunting_lodge_snow.png",
			"upgrade-forbidden", "upgrade-dwarven-civilization",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "yale-hunting-lodge-snow",
			"file", "buildings/neutral/yale_hunting_lodge_snow.png",
			"upgrade-forbidden", "upgrade-dwarven-civilization",
			"terrain", "snow"
		},
		{
			"variation-id", "dwarven-yale-hunting-lodge",
			"file", "dwarf/buildings/yale_hunting_lodge.png",
			"icon", "icon-dwarven-yale-hunting-lodge",
			"upgrade-required", "upgrade-dwarven-civilization",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "dwarven-yale-hunting-lodge-snow-winter",
			"file", "dwarf/buildings/yale_hunting_lodge_snow.png",
			"icon", "icon-dwarven-yale-hunting-lodge",
			"upgrade-required", "upgrade-dwarven-civilization",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "dwarven-yale-hunting-lodge-snow",
			"file", "dwarf/buildings/yale_hunting_lodge_snow.png",
			"icon", "icon-dwarven-yale-hunting-lodge",
			"upgrade-required", "upgrade-dwarven-civilization",
			"terrain", "snow"
		}
	},
	Sounds = {
		"selected", "yale-pen-selected"
	}
} )

DefineUnitType("unit-tree-stump", {
	Name = "Tree Stump",
	Image = {"file", "neutral/buildings/tree_stump.png", "size", {72, 72}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-tree-stump", Icon = "icon-tree-stump",
	HitPoints = 20,
	DrawLevel = 30,
	TileSize = {2, 2}, BoxSize = {64, 64},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Domain = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	MaxOnBoard = 1,
	CanTransport = {"Organic", "only", "Mounted", "false"},
	SaveCargo = true,
	StartingResources = {200},
	GivesResource = "lumber", CanHarvest = true,
	HarvestFromOutside = true,
	Building = true,
	RightMouseAction = "rally_point",
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/buildings/tree_stump_2.png"
		},
		{
			"variation-id", "3",
			"file", "neutral/buildings/tree_stump_3.png"
		},
		{
			"variation-id", "4",
			"file", "neutral/buildings/tree_stump_4.png"
		},
		{
			"variation-id", "5",
			"file", "neutral/buildings/tree_stump_5.png"
		}
	},
	Sounds = {
		"selected", "tree-selected",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
--		"ready", "dwarven-sentry-tower-ready",
--		"help", "basic-dwarf-voices-help",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-hole", {
	Name = "Hole",
	Image = {"file", "tilesets/cave/neutral/buildings/hole.png", "size", {64, 64}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-tree-stump", Icon = "icon-hole",
	HitPoints = 50,
	DrawLevel = 30,
	TileSize = {2, 2}, BoxSize = {64, 64},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Domain = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	MaxOnBoard = 1,
	CanTransport = {"Organic", "only", "Mounted", "false"},
	SaveCargo = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
--		"ready", "dwarven-sentry-tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-cavern-entrance", {
	Name = "Cavern Entrance",
	Image = {"file", "buildings/neutral/cavern_entrance.png", "size", {96, 96}},
	Shadow = {"file", "buildings/neutral/cavern_entrance_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-cavern-entrance",
	Description = "Cavern entrances connect different surface levels.",
	NeutralMinimapColor = {128, 128, 0},
	Costs = {"time", 150},
	HitPoints = 25500,
	DrawLevel = 35,
	TileSize = {3, 3}, BoxSize = {96, 96},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	Indestructible = true,
	Building = true,
	Variations = {
		{
			"variation-id", "gray",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "gray-snow-winter",
			"file", "buildings/neutral/cavern_entrance_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "gray-snow",
			"file", "buildings/neutral/cavern_entrance_snow.png",
			"terrain", "snow"
		},
		{
			"variation-id", "brown",
			"file", "buildings/neutral/cavern_entrance_brown.png",
			"icon", "icon-cavern-entrance-brown",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "brown-snow-winter",
			"file", "buildings/neutral/cavern_entrance_brown_snow.png",
			"icon", "icon-cavern-entrance-brown",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "brown-snow",
			"file", "buildings/neutral/cavern_entrance_brown_snow.png",
			"icon", "icon-cavern-entrance-brown",
			"terrain", "snow"
		}
	},
	Sounds = {
		"selected", "click"
	}
} )

DefineUnitType("unit-portal", {
	Name = "Portal",
	Image = {"file", "neutral/buildings/portal_frame.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/portal.png"},
	Animations = "animations-portal", Icon = "icon-portal",
	Description = "Portals establish a link between different worlds, though they are invisible to all but those who have attuned themselves to that which is magical.",
	NeutralMinimapColor = {128, 128, 0},
	Costs = {"time", 150},
	HitPoints = 0,
	DrawLevel = 10,
	TileSize = {3, 3}, BoxSize = {96, 96},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
--	VisibleUnderFog = true,
	Indestructible = true,
	Building = true,
	Ethereal = true,
	NonSolid = true,
	Sounds = {
		"selected", "click"
	}
} )

DefineUnitType("unit-water-portal", {
	Name = "Portal",
	Image = {"file", "neutral/buildings/portal_frame.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/portal.png"},
	Animations = "animations-portal", Icon = "icon-portal",
	NeutralMinimapColor = {128, 128, 0},
	Costs = {"time", 150},
	HitPoints = 0,
	DrawLevel = 10,
	TileSize = {3, 3}, BoxSize = {96, 96},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
	Domain = "water",
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
--	VisibleUnderFog = true,
	Indestructible = true,
	Ethereal = true,
	NonSolid = true,
	Sounds = {
		"selected", "click"
	}
} )

function InitializeMushroom(unit)
	SetUnitVariable(unit, "LifeStage", (SyncRand(13) + 1))
end

DefineUnitType("unit-mushroom", {
	Name = "Mushroom",
	Image = {"file", "neutral/decorations/mushroom.png", "size", {32, 32}},
	Animations = "animations-mushroom-patch", Icon = "icon-mushroom",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	OnInit = InitializeMushroom,
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
	Sounds = {}
})

function InitializeMushroomPatch(unit)
	SetUnitVariable(unit, "LifeStage", (SyncRand(13) + 1))
end

DefineUnitType("unit-mushroom-patch", {
	Name = "Mushroom Patch",
	Image = {"file", "neutral/decorations/mushrooms.png", "size", {32, 32}},
	Animations = "animations-mushroom-patch", Icon = "icon-mushroom",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	OnInit = InitializeMushroomPatch,
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
	Sounds = {}
})

DefineUnitType("unit-flowers", {
	Name = "Flowers",
	Image = {"file", "neutral/decorations/flowers.png", "size", {32, 32}},
	Animations = "animations-building", Icon = "icon-flowers",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Vegetable = true,
	Variations = {
		{
			"variation-id", "forest",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "dirt",
			"terrain", "snow"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/flowers_swamp_1.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/flowers_swamp_2.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/flowers_swamp_3.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		}
	},
	Sounds = {}
} )

DefineUnitType("unit-large-flower", {
	Name = "Large Flower",
	Image = {"file", "neutral/decorations/large_flower_1.png", "size", {32, 32}},
	Animations = "animations-building", Icon = "icon-large-flower",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Vegetable = true,
	Variations = {
		{
			"variation-id", "forest",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "dirt",
			"terrain", "snow"
		},
		{
			"variation-id", "forest",
			"file", "neutral/decorations/large_flower_2.png",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "dirt",
			"terrain", "snow"
		},
		{
			"variation-id", "forest",
			"file", "neutral/decorations/large_flower_3.png",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "dirt",
			"terrain", "snow"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_1.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_2.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_3.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_4.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_5.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_6.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_7.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_8.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_9.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_10.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_11.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/large_flower_swamp_12.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		}
	},
	Sounds = {}
} )

DefineUnitType("unit-fern", { Name = "Fern",
	Image = {"file", "neutral/decorations/fern.png", "size", {48, 48}},
	Animations = "animations-building", Icon = "icon-fern",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Vegetable = true,
	Variations = {
		{
			"variation-id", "forest",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "dirt",
			"terrain", "snow"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/fern_swamp_1.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/fern_swamp_2.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/fern_swamp_3.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		},
		{
			"variation-id", "swamp",
			"file", "neutral/decorations/fern_swamp_4.png",
			"terrain", "dry-mud",
			"terrain", "mud",
			"terrain", "cave-floor",
			"terrain", "rockbound-cave-floor"
		}
	},
	Sounds = {}
} )

DefineUnitType("unit-twigs", {
	Name = "Twigs",
	Image = {"file", "neutral/decorations/twigs.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-twigs",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		},
		{
			"variation-id", "6"
		},
		{
			"variation-id", "7"
		},
		{
			"variation-id", "8"
		},
		{
			"variation-id", "9"
		},
		{
			"variation-id", "10"
		},
		{
			"variation-id", "11"
		},
		{
			"variation-id", "12"
		},
		{
			"variation-id", "13"
		},
		{
			"variation-id", "14"
		},
		{
			"variation-id", "15"
		},
		{
			"variation-id", "16"
		},
		{
			"variation-id", "17"
		},
		{
			"variation-id", "18"
		},
		{
			"variation-id", "19"
		},
		{
			"variation-id", "20"
		},
		{
			"variation-id", "21"
		},
		{
			"variation-id", "22"
		},
		{
			"variation-id", "23"
		},
		{
			"variation-id", "24"
		},
		{
			"variation-id", "25"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-log", {
	Name = "Log",
	Image = {"file", "neutral/decorations/log.png", "size", {56, 56}},
	Animations = "animations-decoration-old", Icon = "icon-log",
	NeutralMinimapColor = {165, 42, 42},
	HitPoints = 20,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,
	VisibleUnderFog = true,
	StartingResources = {400},
	GivesResource = "lumber", CanHarvest = true,
	HarvestFromOutside = true,
	Sounds = {
		"selected", "tree-selected"
	}
})

DefineUnitType("unit-bones", { Name = "Bones",
	Image = {"file", "neutral/decorations/bones.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-bones",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-wyrm-skeleton", {
	Name = "Wyrm Skeleton",
	Image = {"file", "neutral/decorations/wyrm_skeleton.png", "size", {128, 32}},
	Animations = "animations-building", Icon = "icon-wyrm-skeleton",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {4, 1}, BoxSize = {128, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
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
	Animations = "animations-decoration", Icon = "icon-small-rocks",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Gravel = true, -- makes them play the gravel step sound when stepped upon
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		},
		{
			"variation-id", "6"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-stalagmites", {
	Name = "Stalagmites",
	Image = {"file", "neutral/decorations/stalagmites.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-stalagmites",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		}
	},
	Sounds = {} }
)

function VolcanicCraterSpit(unit) -- this is called every second
	OrderUnit(GetUnitVariable(unit, "Player"), GetUnitVariable(unit, "Ident"), {GetUnitVariable(unit, "PosX"), GetUnitVariable(unit, "PosY")}, GetUnitVariable(unit, "MapLayer"), nil, nil, "stop")
	if (GetCurrentQuest() ~= "the-wyrm") then
		if (SyncRand(10) == 0) then -- one chance in thirty to happen (that is, this is going to happen on average once every half minute)
			if (SyncRand(2) == 0) then
				local target_x = GetUnitVariable(unit,"PosX") + SyncRand(GetUnitVariable(unit,"AttackRange") + GetUnitTypeData(GetUnitVariable(unit, "Ident"), "TileWidth") + GetUnitVariable(unit,"AttackRange")) - GetUnitVariable(unit,"AttackRange")
				local target_y = GetUnitVariable(unit,"PosY") + SyncRand(GetUnitVariable(unit,"AttackRange") + GetUnitTypeData(GetUnitVariable(unit, "Ident"), "TileHeight") + GetUnitVariable(unit,"AttackRange")) - GetUnitVariable(unit,"AttackRange")
				OrderUnit(GetUnitVariable(unit, "Player"), GetUnitVariable(unit, "Ident"), {GetUnitVariable(unit, "PosX"), GetUnitVariable(unit, "PosY")}, GetUnitVariable(unit, "MapLayer"), {target_x, target_y}, GetUnitVariable(unit, "MapLayer"), "attack-ground")
			else
				if (GetNumUnitsAt(PlayerNumNeutral, "unit-miasma", {0, 0}, {MaxMapWidth, MaxMapHeight}, GetUnitVariable(unit, "MapLayer")) < GetNumUnitsAt(PlayerNumNeutral, "unit-volcanic-crater", {0, 0}, {MaxMapWidth, MaxMapHeight}, GetUnitVariable(unit, "MapLayer"))) then
					CreateUnit("unit-miasma", PlayerNumNeutral, {GetUnitVariable(unit, "PosX"), GetUnitVariable(unit, "PosY")}, GetUnitVariable(unit, "MapLayer"))
				end
			end
		end
	end
end

DefineUnitType("unit-volcanic-crater", {
	Name = "Volcanic Crater",
	Image = {"file", "neutral/decorations/volcanic_crater.png", "size", {64, 64}},
	Animations = "animations-volcanic-crater", Icon = "icon-volcanic-crater",
	HitPoints = 0,
	DrawLevel = 30,
	TileSize = {2, 2}, BoxSize = {64, 64},
	SightRange = 0,
	FireDamage = 80, Missile = "missile-flaming-catapult-rock",
	Priority = 0,
	Domain = "land",
	MaxAttackRange = 2,
	GroundAttack = true,
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true,
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Accuracy = 0,
	OnEachSecond = VolcanicCraterSpit,
	Sounds = {} }
)

DefineUnitType("unit-glyph", {
	Name = "Glyph",
	Image = {"file", "neutral/buildings/glyph.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration", Icon = "icon-glyph",
	HitPoints = 0,
	DrawLevel = 4,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NonSolid = true,
	NumDirections = 1,
	Indestructible = true,
	Building = true,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		},
		{
			"variation-id", "6"
		},
		{
			"variation-id", "7"
		},
		{
			"variation-id", "8"
		},
		{
			"variation-id", "9"
		},
		{
			"variation-id", "10"
		},
		{
			"variation-id", "11"
		},
		{
			"variation-id", "12"
		},
		{
			"variation-id", "13"
		},
		{
			"variation-id", "14"
		},
		{
			"variation-id", "15"
		},
		{
			"variation-id", "16"
		},
		{
			"variation-id", "17"
		},
		{
			"variation-id", "18"
		},
		{
			"variation-id", "19"
		},
		{
			"variation-id", "20"
		},
		{
			"variation-id", "21"
		},
		{
			"variation-id", "22"
		},
		{
			"variation-id", "23"
		},
		{
			"variation-id", "24"
		}
	},
	Sounds = {
		"selected", "click",
		"used", "magic-holy",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
		"dead", "building-destroyed"
	}
})

DefineUnitType("unit-stairs", {
	Name = "Stairs",
	Image = {"file", "neutral/buildings/stairs.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration", Icon = "icon-stairs",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	NonSolid = true, 
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-door", {
	Name = "Door",
	Image = {"file", "tilesets/dungeon/neutral/decorations/door_left.png", "size", {32, 32}},
	Animations = "animations-door", Icon = "icon-door",
	NeutralMinimapColor = {128, 128, 0},
	HitPoints = 10,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	Obstacle = true,
	AirUnpassable = true,
	Variations = {
		{
			"variation-id", "left"
		},
		{
			"variation-id", "right",
			"file", "tilesets/dungeon/neutral/decorations/door_right.png"
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
})

DefineUnitType("unit-shelf", {
	Name = "Shelf",
	Image = {"file", "neutral/decorations/shelf.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-shelf",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	NonSolid = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-outer-wall-decoration", { Name = "Outer Wall Decoration",
	Image = {"file", "neutral/decorations/outer_wall_decoration.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-outer-wall-decoration",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	NonSolid = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-inner-wall-decoration", { Name = "Inner Wall Decoration",
	Image = {"file", "neutral/decorations/inner_wall_decoration.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-inner-wall-decoration",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	NonSolid = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-floor-decoration", { Name = "Floor Decoration",
	Image = {"file", "neutral/decorations/floor_decoration.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-floor-decoration",
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		}
	},
	Sounds = {} }
)

DefineUnitType("unit-dwarven-dead-body", {
	Name = "Dead Body",
	Image = {"file", "neutral/units/dwarven_corpse.png", "size", {72, 72}},
	Animations = "animations-dead-body", Icon = "dwarven_miner",
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-gnomish-dead-body", {
	Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
	Animations = "animations-gnomish-dead-body", Icon = "dwarven_miner",
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-goblin-dead-body", {
	Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
	Animations = "animations-goblin-dead-body", Icon = "dwarven_miner",
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-human-dead-body", {
	Name = "Dead Body",
	Image = {"file", "neutral/units/human_corpse.png", "size", {72, 72}},
	Animations = "animations-dead-body", Icon = "dwarven_miner",
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-kobold-dead-body", {
	Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
	Animations = "animations-kobold-dead-body", Icon = "dwarven_miner",
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-troll-dead-body", {
	Name = "Dead Body",
	Image = {"file", "troll/units/corpse.png", "size", {72, 72}},
	Animations = "animations-dead-body", Icon = "dwarven_miner",
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

--DefineUnitType("unit-dead-sea-body", { Name = "Dead Body",
--	Image = {"file", "neutral/units/corpses.png", "size", {72, 72}},
--	Animations = "animations-dead-sea-body", Icon = "dwarven_miner",
--	HitPoints = 255,
--	DrawLevel = 30,
--	TileSize = {2, 2}, BoxSize = {32, 32},
--	SightRange = 1,
--	Missile = "missile-none",
--	Priority = 0,
--	Domain = "water",
--	Vanishes = true,
--	Sounds = {} } )

DefineUnitType("unit-scepter-of-fire", {
	Name = "Scepter of Fire",
	Image = {"file", "neutral/items/scepter.png", "size", {32, 32}},
	Animations = "animations-item", Icon = "icon-scepter",
	NeutralMinimapColor = {255, 255, 0},
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,	
	Item = true,
	Sounds = {
		"selected", "click",
		"used", "gold-coins"
	} 
} )

DefineUnitType("unit-gold-coins", {
	Name = "Gold Coins",
	Image = {"file", "neutral/items/gold_coins.png", "size", {12, 13}},
	Animations = "animations-item", Icon = "icon-gold-coins",
	NeutralMinimapColor = {255, 255, 0},
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,	
	PowerUp = true,
	GivesResource = "gold",
	StartingResources = {5},
	Sounds = {
		"selected", "click",
		"used", "gold-coins"
	} 
} )

DefineUnitType("unit-gold-sack", {
	Name = "Gold Sack",
	Image = {"file", "neutral/items/gold_sack.png", "size", {16, 14}},
	Animations = "animations-item", Icon = "icon-gold-sack",
	NeutralMinimapColor = {255, 255, 0},
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
--	GivesResource = "gold", CanHarvest = true,
	NumDirections = 1,	
	PowerUp = true,
	GivesResource = "gold",
	StartingResources = {100},
	Sounds = {
		"selected", "click",
		"used", "gold-coins"
	} 
} )

DefineUnitType("unit-gold-chest", {
	Name = "Chest",
	Image = {"file", "neutral/items/chest.png", "size", {32, 32}},
	Animations = "animations-gold-chest", Icon = "icon-chest",
	NeutralMinimapColor = {255, 255, 0},
	HitPoints = 100,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,	
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"} } )

DefineUnitType("unit-gold-and-gems-chest", {
	Name = "Chest",
	Image = {"file", "neutral/items/chest.png", "size", {32, 32}},
	Animations = "animations-gold-and-gems-chest", Icon = "icon-chest",
	NeutralMinimapColor = {255, 255, 0},
	HitPoints = 100,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,	
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"} } )

DefineUnitType("unit-alchemy-bench", {
	Name = "Alchemy Bench",
	Image = {"file", "neutral/items/alchemy_bench.png", "size", {32, 32}},
	Animations = "animations-alchemy-bench", Icon = "icon-alchemy-bench",
	NeutralMinimapColor = {128, 128, 0},
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,
	ExplodeWhenKilled = "missile-explosion",
	DeathExplosion = DeathExplosion,
	Obstacle = true,
	VisibleUnderFog = true,
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-table", {
	Name = "Table",
	Image = {"file", "neutral/decorations/table.png", "size", {32, 32}},
	Animations = "animations-table", Icon = "icon-table",
	NeutralMinimapColor = {128, 128, 0},
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,
	Obstacle = true,
	VisibleUnderFog = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		},
		{
			"variation-id", "6"
		},
		{
			"variation-id", "7"
		},
		{
			"variation-id", "8"
		},
		{
			"variation-id", "9"
		},
		{
			"variation-id", "10"
		},
		{
			"variation-id", "11"
		},
		{
			"variation-id", "12"
		},
		{
			"variation-id", "13"
		},
		{
			"variation-id", "14"
		},
		{
			"variation-id", "15"
		},
		{
			"variation-id", "16"
		},
		{
			"variation-id", "17"
		},
		{
			"variation-id", "18"
		},
		{
			"variation-id", "19"
		},
		{
			"variation-id", "20"
		},
		{
			"variation-id", "21"
		},
		{
			"variation-id", "22"
		},
		{
			"variation-id", "23"
		},
		{
			"variation-id", "24"
		},
		{
			"variation-id", "25"
		},
		{
			"variation-id", "26"
		},
		{
			"variation-id", "27"
		},
		{
			"variation-id", "28"
		},
		{
			"variation-id", "29"
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-chair", {
	Name = "Chair",
	Image = {"file", "neutral/decorations/chair.png", "size", {32, 32}},
	Animations = "animations-chair", Icon = "icon-furniture",
	NeutralMinimapColor = {128, 128, 0},
	HitPoints = 3,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,
	Obstacle = true,
	VisibleUnderFog = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-bed", {
	Name = "Bed",
	Image = {"file", "neutral/decorations/bed.png", "size", {32, 32}},
	Animations = "animations-bed", Icon = "icon-bed",
	NeutralMinimapColor = {128, 128, 0},
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,
	Obstacle = true,
	VisibleUnderFog = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-potion-of-decay", {
	Name = "Potion of Decay",
	Image = {"file", "neutral/items/potion_blue.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-blue-potion",
	NeutralMinimapColor = {255, 255, 0},
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,	
	PowerUp = true,
	HitPointHealing = -15,
	Sounds = {
		"selected", "click",
		"used", "potion"
	} 
} )

DefineUnitType("unit-potion-of-slowness", {
	Name = "Potion of Slowness",
	Image = {"file", "neutral/items/potion_purple.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-purple-potion",
	NeutralMinimapColor = {255, 255, 0},
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,	
	PowerUp = true,
	Slows = true,
	Sounds = {
		"selected", "click",
		"used", "potion"
	} 
} )

DefineUnitType("unit-barrel", {
	Name = "Barrel",
	Image = {"file", "neutral/items/barrel.png", "size", {32, 32}},
	Animations = "animations-barrel", Icon = "icon-barrel",
	NeutralMinimapColor = {128, 128, 0},
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,
	Drops = {"unit-potion-of-healing", "unit_potion_of_mana"},
	VisibleUnderFog = true,
	Obstacle = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/items/barrel_2.png"
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-explosive-barrel", {
	Name = "Explosive Barrel",
	Image = {"file", "neutral/items/explosive_barrel.png", "size", {32, 32}},
	Animations = "animations-barrel", Icon = "icon-barrel",
	NeutralMinimapColor = {128, 128, 0},
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,
	VisibleUnderFog = true,
	Obstacle = true,
	ExplodeWhenKilled = "missile-explosion",
	DeathExplosion = DeathExplosion,
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-gryphon-feather", {
	Name = "Gryphon Feather",
	Image = {"file", "neutral/items/gryphon_feather.png", "size", {28, 26}},
	Animations = "animations-item", Icon = "icon-gryphon-feather",
	NeutralMinimapColor = {255, 255, 0},
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,	
	Item = true,
	Sounds = {}
} )

DefineUnitType("unit-caltrops", {
	Name = "Caltrops",
	Image = {"file", "neutral/items/caltrops.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-caltrops",
	NeutralMinimapColor = {255, 255, 0},
	HitPoints = 10,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	PiercingDamage = 10, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,	
	Trap = true,
	PierceDamage = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2"
		},
		{
			"variation-id", "3"
		},
		{
			"variation-id", "4"
		},
		{
			"variation-id", "5"
		},
		{
			"variation-id", "6"
		}
	},
	Sounds = {
		"selected", "click"
	} 
} )

DefineUnitType("unit-trap", {
	Name = "Trap",
	Image = {"file", "neutral/items/trap.png", "size", {32, 32}},
	Animations = "animations-trap", Icon = "icon-trap",
	NeutralMinimapColor = {255, 255, 0},
	HitPoints = 15,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	PiercingDamage = 15, Missile = "missile-none",
	Priority = 0,
	Domain = "land",
	NumDirections = 1,	
	Trap = true,
	PierceDamage = true,
	Sounds = {
		"selected", "click",
		"hit", "axe-attack"
	} 
} )

DefineUnitType("unit-roaming-fog", {
	Name = "Roaming Fog",
	Image = {"file", "neutral/decorations/roaming_fog.png", "size", {498, 277}},
	Animations = "animations-roaming-fog", Icon = "icon-roaming-fog",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 45,
	TileSize = {15, 8}, BoxSize = {498, 278},
	SightRange = 1,
	Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Domain = "air",
	IsNotSelectable = true,
	RightMouseAction = "move",
	RandomMovementProbability = 100,
	NumDirections = 1,
	Diminutive = true, 
	Transparency = 50,
	Decoration = true,
	Indestructible = true,
	VisibleUnderFog = false,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bat-selected",
--		"ready", "bat-selected",
--		"dead", "rat-dead"
	}
} )

DefineUnitType("unit-roaming-fog-small", {
	Name = "Roaming Fog",
	Image = {"file", "neutral/decorations/roaming_fog_small.png", "size", {256, 171}},
	Animations = "animations-roaming-fog", Icon = "icon-roaming-fog",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 45,
	TileSize = {8, 5}, BoxSize = {256, 172},
	SightRange = 1,
	Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Domain = "air",
	IsNotSelectable = true,
	RightMouseAction = "move",
	RandomMovementProbability = 100,
	NumDirections = 1,
	Diminutive = true, 
	Transparency = 50,
	Decoration = true,
	Indestructible = true,
	VisibleUnderFog = false,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bat-selected",
--		"ready", "bat-selected",
--		"dead", "rat-dead"
	}
} )

DefineUnitType("unit-miasma", {
	Name = "Miasma",
	Image = {"file", "neutral/decorations/miasma.png", "size", {128, 128}},
	Animations = "animations-roaming-fog", Icon = "icon-miasma",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 30, -- miasma lives for 30 seconds
	DrawLevel = 45,
	TileSize = {4, 4}, BoxSize = {128, 128},
	SightRange = 1,
	Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Domain = "air",
	IsNotSelectable = true,
	RightMouseAction = "move",
	RandomMovementProbability = 100,
	NumDirections = 1,
	Diminutive = true,
	Transparency = 50,
	Decoration = true,
	Indestructible = true,
	VisibleUnderFog = false,
	RegenerationRate = -1,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bat-selected",
--		"ready", "bat-selected",
--		"dead", "rat-dead"
	}
} )

DefineUnitType("unit-revealer", {
	Name = "Revealer",
	Animations = "animations-building", Icon = "icon-eagle-eye",
	HitPoints = 1,
	TileSize = {1, 1}, BoxSize = {1, 1},
	SightRange = 12,
	Missile = "missile-none",
	Priority = 0,
	DecayRate = 1,
	Domain = "air",
	VisibleUnderFog = true,
	NonSolid = true,
	Revealer = true,
	DetectCloak = true,
	HiddenInEditor = true,
	Sounds = {}
} )

DefineUnitType("unit-ethereal-revealer", {
	Name = "Ethereal Revealer",
	Animations = "animations-building", Icon = "icon-eagle-eye",
	HitPoints = 1,
	TileSize = {1, 1}, BoxSize = {1, 1},
	SightRange = 12,
	Missile = "missile-none",
	Priority = 0,
	DecayRate = 1,
	Domain = "air",
	VisibleUnderFog = true,
	NonSolid = true,
	Revealer = true,
	DetectCloak = true,
	HiddenInEditor = true,
	EtherealVision = 1,
	Sounds = {}
} )

-- Template Units

DefineUnitType("unit-template-worker", {
	Name = "Worker",
	Parent = "unit-template-sapient-unit",
	Class = "worker",
	Template = true,
	Costs = {"time", 45, "copper", 400},
	PopulationClass = "workers",
	Speed = 10,
	HitPoints = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 4,
	AutoRepairRange = 4,
	BasicDamage = 5, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 8,
	Evasion = 9,
	Priority = 50,
	Points = 30,
	Demand = 1,
	Gender = "male",
	Domain = "land",
	RightMouseAction = "harvest",
	CanAttack = true, RepairRange = 1,
	CanTargetLand = true,
	Coward = true,
	Flesh = true,
	ButtonPos = 1,
	ButtonKey = "w",
	AiDrops = {"unit-christmas-hat"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "silver",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "copper",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "iron",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "mithril",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "lumber",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "stone",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "limestone",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "coal",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "jewelry",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "furniture",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "leather",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "diamonds",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		},
		{
			"resource-id", "emeralds",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 12,
			"wait-at-depot", 150
		}
	},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-skilled-miner", {
	Name = "Skilled Miner",
	Parent = "unit-template-worker",
	Class = "skilled_miner",
	Template = true,
	Costs = {"copper", 600},
	PopulationClass = "skilled_miners",
	HitPoints = 40,
	BasicDamage = 6,
	Accuracy = 9,
	Points = 45,
	Level = 2,
	CopperGatheringBonus = 2,
	SilverGatheringBonus = 2,
	GoldGatheringBonus = 2,
	IronGatheringBonus = 2,
	MithrilGatheringBonus = 2,
	CoalGatheringBonus = 2,
	GemsGatheringBonus = 2
} )

DefineUnitType("unit-template-expert-miner", {
	Name = "Expert Miner",
	Parent = "unit-template-skilled-miner",
	Class = "expert_miner",
	Template = true,
	Costs = {"copper", 900},
	PopulationClass = "expert_miners",
	HitPoints = 50,
	BasicDamage = 7,
	Accuracy = 10,
	Points = 60,
	Level = 3,
	Inventory = true,
	CopperGatheringBonus = 4,
	SilverGatheringBonus = 4,
	GoldGatheringBonus = 4,
	IronGatheringBonus = 4,
	MithrilGatheringBonus = 4,
	CoalGatheringBonus = 4,
	GemsGatheringBonus = 4
} )

DefineUnitType("unit-template-journeyman-smith", {
	Name = "Journeyman Smith",
	Parent = "unit-template-worker",
	Class = "journeyman_smith",
	Template = true,
	Costs = {"copper", 600},
	PopulationClass = "journeyman_smiths",
	HitPoints = 55,
	BasicDamage = 9,
	Armor = 2,
	Accuracy = 10,
	Evasion = 10,
	Points = 55,
	Level = 2,
	JewelryGatheringBonus = 2,
	Coward = false,
	Mana = {Enable = true, Max = 150, Value = 150, Increase = 1}
} )

DefineUnitType("unit-template-master-smith", {
	Name = "Master Smith",
	Parent = "unit-template-journeyman-smith",
	Class = "master_smith",
	Template = true,
	Costs = {"copper", 900},
	PopulationClass = "master_smiths",
	HitPoints = 65,
	BasicDamage = 10,
	Points = 70,
	Level = 3,
	Inventory = true,
	JewelryGatheringBonus = 4,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1}
} )

DefineUnitType("unit-template-grandmaster-smith", {
	Name = "Grandmaster Smith",
	Parent = "unit-template-master-smith",
	Class = "grandmaster_smith",
	Template = true,
	Costs = {"copper", 1350},
	HitPoints = 75,
	BasicDamage = 12,
	Points = 85,
	Level = 4,
	JewelryGatheringBonus = 6,
	Mana = {Enable = true, Max = 300, Value = 300, Increase = 1}
} )

DefineUnitType("unit-template-militia", {
	Name = "Militia",
	Parent = "unit-template-sapient-unit",
	Class = "militia",
	Template = true,
	PopulationClass = "workers",
	Speed = 10,
	HitPoints = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 4,
	Armor = 1, BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 50,
	Points = 30,
	Demand = 1,
	Gender = "male",
	Domain = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	Flesh = true,
	AiDrops = {"unit-christmas-hat"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-grass", "step-leaves",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone"
	}
} )

DefineUnitType("unit-template-merchant", {
	Name = "Merchant",
	Parent = "unit-template-sapient-unit",
	Class = "merchant",
	Template = true,
	PopulationClass = "workers",
	Strength = 10,
	Dexterity = 11,
	Intelligence = 12,
	Charisma = 12,
	Speed = 10,
	HitPoints = 45,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 4,
	BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 12,
	Priority = 50,
	Points = 75,
	Demand = 1,
	Gender = "male",
	Domain = "land",
	RightMouseAction = "harvest",
	CanAttack = true,
	CanTargetLand = true,
	Coward = true,
	Flesh = true,
	ButtonPos = 1,
	ButtonKey = "m",
	Trader = true,
	AiDrops = {"unit-christmas-hat"},
	CanGatherResources = {
		{
			"resource-id", "trade",
			"resource-capacity", 100,
			"resource-step", 4,
			"wait-at-resource", 6,
			"wait-at-depot", 150
		}
	},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-heroic-merchant", {
	Name = "Heroic Merchant",
	Parent = "unit-template-merchant",
	Class = "heroic_merchant",
	Template = true,
	Costs = {"time", 120, "copper", 1200},
	Strength = 10,
	Dexterity = 12,
	Intelligence = 13,
	Charisma = 14,
	HitPoints = 60,
	BasicDamage = 7,
	Evasion = 14,
	Points = 90,
	Level = 3,
	LeadershipAura = 1,
	Inventory = true,
	CanGatherResources = {
		{
			"resource-id", "trade",
			"resource-step", 8
		}
	}
} )

DefineUnitType("unit-template-infantry", {
	Name = "Infantry",
	Parent = "unit-template-sapient-unit",
	Class = "infantry",
	Template = true,
	Costs = {"time", 60, "copper", 600},
	PopulationClass = "soldiers",
	Strength = 11,
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 60,
	Points = 50,
	Demand = 1,
	Gender = "male",
	Domain = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	Flesh = true,
	NeutralHostile = true,
	CanCastSpell = {"spell-stun"},
	AutoCastActive = {"spell-stun"},
	ButtonPos = 1,
	AiDrops = {"unit_helmet", "unit-christmas-hat"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-veteran-infantry", {
	Name = "Veteran Infantry",
	Parent = "unit-template-infantry",
	Class = "veteran_infantry",
	Template = true,
	Costs = {"time", 90, "copper", 900},
	Strength = 12,
	Dexterity = 12,
	Intelligence = 11,
	Charisma = 11,
	HitPoints = 75,
	BasicDamage = 10,
	Points = 75,
	Level = 2,
	Domain = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	AiDrops = {"unit-horn", "unit-amulet", "unit-ring"}
})

DefineUnitType("unit-template-heroic-infantry", {
	Name = "Heroic Infantry",
	Parent = "unit-template-veteran-infantry",
	Class = "heroic_infantry",
	Template = true,
	Costs = {"time", 120, "copper", 1200},
	Strength = 13,
	Dexterity = 12,
	Intelligence = 12,
	Charisma = 12,
	HitPoints = 90,
	BasicDamage = 12,
	Points = 100,
	Level = 3,
	Domain = "land",
	RightMouseAction = "attack",
	Inventory = true,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	AiDrops = {"unit_crown"}
})

DefineUnitType("unit-template-spearman", {
	Name = "Spearman",
	Parent = "unit-template-infantry",
	Class = "spearman",
	Template = true,
	Costs = {"time", 50, "copper", 400, "lumber", 100},
	BasicDamage = 6, -- reduced damage, since it is cheaper, and because it has a bonus against mounted units
	BonusAgainstMounted = 100,
	Armor = 1,
	WeaponClasses = {"spear"},
	PierceDamage = true,
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	ButtonPos = 2,
	Sounds = {
		"hit", "spear-attack",
		"miss", "spear-miss"
	}
})

DefineUnitType("unit-template-veteran-spearman", {
	Name = "Veteran Spearman",
	Parent = "unit-template-spearman",
	Class = "veteran_spearman",
	Template = true,
	Costs = {"time", 75, "copper", 600, "lumber", 150},
	Strength = 12,
	Dexterity = 12,
	Intelligence = 11,
	Charisma = 11,
	HitPoints = 75,
	BasicDamage = 8,
	Points = 75,
	Level = 2,
	AiDrops = {"unit-horn", "unit-amulet", "unit-ring"}
})

DefineUnitType("unit-template-heroic-spearman", {
	Name = "Heroic Spearman",
	Parent = "unit-template-veteran-spearman",
	Class = "heroic_spearman",
	Template = true,
	Costs = {"time", 100, "copper", 800, "lumber", 200},
	Strength = 13,
	Dexterity = 12,
	Intelligence = 12,
	Charisma = 12,
	HitPoints = 90,
	BasicDamage = 9,
	Points = 100,
	Level = 3,
	Inventory = true,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	AiDrops = {"unit_crown"}
})

DefineUnitType("unit-template-archer", {
	Name = "Shooter",
	Parent = "unit-template-sapient-unit",
	Class = "shooter",
	Template = true,
	Costs = {"time", 70, "copper", 500, "lumber", 150},
	PopulationClass = "soldiers",
	Dexterity = 11,
	Speed = 10,
	HitPoints = 40,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 6,
	BasicDamage = 9,
	Missile = "missile-arrow",
	FireMissile = "missile-flaming-arrow",
	MaxAttackRange = 5,
	Accuracy = 10,
	Evasion = 10,
	Priority = 55,
	Points = 60,
	Demand = 1,
	Gender = "male",
	Domain = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	Flesh = true,
	AttackFromTransporter = true,
	NeutralHostile = true,
	ButtonPos = 3,
	RequirementsString = "Lumber Mill",
	AiDrops = {"unit_helmet", "unit-christmas-hat"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-veteran-shooter", {
	Name = "Veteran Shooter",
	Parent = "unit-template-archer",
	Class = "veteran_shooter",
	Template = true,
	Costs = {"time", 105, "copper", 750, "lumber", 225},
	Strength = 11,
	Dexterity = 12,
	Intelligence = 11,
	Charisma = 11,
	HitPoints = 50,
	BasicDamage = 10,
	Accuracy = 11,
	Points = 90,
	Level = 2,
	AiDrops = {"unit-horn", "unit-amulet", "unit-ring"}
} )

DefineUnitType("unit-template-heroic-shooter", {
	Name = "Heroic Shooter",
	Parent = "unit-template-veteran-shooter",
	Class = "heroic_shooter",
	Template = true,
	Costs = {"time", 140, "copper", 1000, "lumber", 300},
	Strength = 12,
	Dexterity = 13,
	Intelligence = 12,
	Charisma = 12,
	HitPoints = 60,
	BasicDamage = 11,
	Accuracy = 12,
	Points = 120,
	Level = 3,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	Inventory = true,
	CanCastSpell = {"spell-precise-shot"},
	AutoCastActive = {"spell-precise-shot"},
	AiDrops = {"unit_crown"}
} )

DefineUnitType("unit-template-javelineer", {
	Name = "Javelineer",
	Parent = "unit-template-archer",
	Template = true,
	BasicDamage = 11, -- +2 damage
	MaxAttackRange = 4, -- -1 range
	PierceDamage = true,
	WeaponClasses = {"javelin"},
} )

DefineUnitType("unit-template-gunpowder-infantry", {
	Name = "Gunpowder Infantry",
	Parent = "unit-template-archer",
	Class = "gunpowder_infantry",
	Template = true,
	Costs = {"time", 70, "copper", 800, "lumber", 0},
	BasicDamage = 18,
	Missile = "missile-bullet",
	FireMissile = "missile-bullet",
	MaxAttackRange = 4,
	Accuracy = 7,
	Priority = 55,
	Points = 95,
	PierceDamage = true,
	WeaponClasses = {"gun"},
	Mana = {Enable = true, Max = 75, Value = 75, Increase = 1},
	CanCastSpell = {"spell-precise-shot"},
	AutoCastActive = {"spell-precise-shot"},
	Gender = "male",
	ButtonKey = "p",
	RequirementsString = "Smithy and Gunpowder"
} )

DefineUnitType("unit-template-thief", {
	Name = "Thief",
	Parent = "unit-template-sapient-unit",
	Class = "thief",
	Template = true,
	Costs = {"time", 45, "copper", 400},
	PopulationClass = "workers",
	Dexterity = 11,
	Intelligence = 11,
	Charisma = 11,
	Speed = 10,
	HitPoints = 40,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 4,
	BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Backstab = 100,
	Accuracy = 12,
	Evasion = 12,
	Mugging = 50,
	Priority = 50,
	Points = 30,
	Demand = 1,
	Gender = "male",
	Domain = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	Flesh = true,
	HiddenOwnership = true,
	NeutralHostile = true,
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	AiDrops = {"unit-christmas-hat"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-cavalry", {
	Name = "Cavalry",
	Parent = "unit-template-sapient-unit",
	Class = "cavalry",
	Template = true,
	Costs = {"time", 90, "copper", 900},
	PopulationClass = "soldiers",
	Strength = 12,
	Dexterity = 11,
	Intelligence = 11,
	Charisma = 11,
	Speed = 13,
	HitPoints = 75,
	TileSize = {1, 1}, BoxSize = {42, 42},
	SightRange = 4,
	Armor = 2, BasicDamage = 10, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 9,
	ChargeBonus = 5,
	Priority = 63,
	Points = 75,
	Demand = 2,
	Gender = "male",
	Level = 2,
	Domain = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	Mounted = true,
	Flesh = true,
	NeutralHostile = true,
	Mana = {Enable = true, Max = 150, Value = 150, Increase = 1},
	ButtonPos = 4,
	AiDrops = {"unit_helmet", "unit-christmas-hat", "unit-horn", "unit-amulet", "unit-ring"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-heroic-cavalry", {
	Name = "Heroic Cavalry",
	Parent = "unit-template-cavalry",
	Class = "heroic_cavalry",
	Template = true,
	Costs = {"time", 120, "copper", 1200},
	Strength = 13,
	Dexterity = 12,
	Intelligence = 12,
	Charisma = 12,
	HitPoints = 90,
	BasicDamage = 12,
	Points = 100,
	Level = 3,
	Inventory = true,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	CanCastSpell = {"spell-stun"},
	AutoCastActive = {"spell-stun"},
	AiDrops = {"unit_crown"}
} )

DefineUnitType("unit-template-desert-cavalry", {
	Name = "Desert Cavalry",
	Parent = "unit-template-cavalry",
	Class = "desert_cavalry",
	Template = true,
	Speed = 12,
	DehydrationImmunity = 1
} )

DefineUnitType("unit-template-heroic-desert-cavalry", {
	Name = "Heroic Desert Cavalry",
	Parent = "unit-template-heroic-cavalry",
	Class = "heroic_desert_cavalry",
	Template = true,
	Costs = {"time", 120, "copper", 1200},
	Speed = 12,
	DehydrationImmunity = 1
} )

DefineUnitType("unit-template-spear-cavalry", {
	Name = "Spear Cavalry",
	Parent = "unit-template-sapient-unit",
	Class = "spear_cavalry",
	Template = true,
	Costs = {"time", 90, "copper", 900},
	PopulationClass = "soldiers",
	Strength = 12,
	Dexterity = 11,
	Intelligence = 11,
	Charisma = 11,
	Speed = 13,
	HitPoints = 75,
	TileSize = {1, 1}, BoxSize = {42, 42},
	SightRange = 4,
	Armor = 2, BasicDamage = 8, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 9,
	ChargeBonus = 10,
	Priority = 63,
	Points = 75,
	Demand = 2,
	Gender = "male",
	Level = 2,
	Domain = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	Mounted = true,
	Flesh = true,
	NeutralHostile = true,
	Mana = {Enable = true, Max = 150, Value = 150, Increase = 1},
	ButtonPos = 4,
	AiDrops = {"unit_helmet", "unit-christmas-hat", "unit-horn", "unit-amulet", "unit-ring"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-heroic-spear-cavalry", {
	Name = "Heroic Spear Cavalry",
	Parent = "unit-template-spear-cavalry",
	Class = "heroic_spear_cavalry",
	Template = true,
	Costs = {"time", 120, "copper", 1200},
	Strength = 13,
	Dexterity = 12,
	Intelligence = 12,
	Charisma = 12,
	HitPoints = 90,
	BasicDamage = 10,
	Points = 100,
	Level = 3,
	Inventory = true,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	CanCastSpell = {"spell-stun"},
	AutoCastActive = {"spell-stun"},
	AiDrops = {"unit_crown"}
} )

DefineUnitType("unit-template-priest", {
	Name = "Priest",
	Parent = "unit-template-sapient-unit",
	Class = "priest",
	Template = true,
	Costs = {"time", 80, "copper", 700},
	PopulationClass = "priests",
	Intelligence = 12,
	Charisma = 12,
	Speed = 8,
	HitPoints = 40,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 9,
	BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 8,
	Evasion = 8,
	Priority = 70,
	Points = 60,
	Demand = 1,
	Gender = "male",
	Domain = "land",
	RightMouseAction = "attack",
	Coward = true,
	CanAttack = true,
	CanTargetLand = true,
	Flesh = true,
	NeutralHostile = true,
	Mana = {Enable = true, Max = 190, Value = 190, Increase = 1},
	ButtonPos = 1,
	RequirementsString = "Any Deity or Religion",
	AiDrops = {"unit-christmas-hat", "unit_crown", "unit-amulet", "unit-ring", "unit-scroll", "unit-book"},
	DropSpells = {"spell-detachment", "spell-forgetfulness", "spell-retraining"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-veteran-priest", {
	Name = "Veteran Priest",
	Parent = "unit-template-priest",
	Class = "veteran_priest",
	Template = true,
	Costs = {"time", 120, "copper", 1050},
	Intelligence = 13,
	Charisma = 13,
	HitPoints = 50,
	Points = 90,
	Level = 2,
	Mana = {Enable = true, Max = 380, Value = 380, Increase = 1}
} )

DefineUnitType("unit-template-high-priest", {
	Name = "High Priest",
	Parent = "unit-template-veteran-priest",
	Class = "high_priest",
	Template = true,
	Costs = {"time", 160, "copper", 1400},
	Intelligence = 14,
	Charisma = 14,
	HitPoints = 60,
	Points = 120,
	Level = 3,
	Mana = {Enable = true, Max = 570, Value = 570, Increase = 1}
} )

DefineUnitType("unit_template_mage", {
	Name = "Mage",
	Parent = "unit-template-sapient-unit",
	Class = "mage",
	Template = true,
	Costs = {"time", 90, "copper", 900},
	Intelligence = 14,
	Speed = 8,
	HitPoints = 40,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 9,
	BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 8,
	Evasion = 8,
	Priority = 70,
	Points = 60,
	Demand = 1,
	Gender = "male",
	Domain = "land",
	RightMouseAction = "attack",
	Coward = true,
	CanAttack = true,
	CanTargetLand = true,
	Flesh = true,
	NeutralHostile = true,
	Mana = {Enable = true, Max = 190, Value = 190, Increase = 1},
	ButtonPos = 1,
	AiDrops = {"unit-christmas-hat", "unit_crown", "unit-amulet", "unit-ring", "unit-scroll", "unit-book"},
	DropSpells = {"spell-detachment", "spell-forgetfulness", "spell-retraining"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit_template_veteran_mage", {
	Name = "Veteran Mage",
	Parent = "unit_template_mage",
	Class = "veteran_mage",
	Template = true,
	Costs = {"time", 120, "copper", 1050},
	Intelligence = 16,
	HitPoints = 50,
	Points = 90,
	Level = 2,
	Mana = {Enable = true, Max = 380, Value = 380, Increase = 1}
} )

DefineUnitType("unit_template_archmage", {
	Name = "Archmage",
	Parent = "unit_template_veteran_mage",
	Class = "archmage",
	Template = true,
	Costs = {"time", 160, "copper", 1400},
	Intelligence = 18,
	HitPoints = 60,
	Points = 120,
	Level = 3,
	Mana = {Enable = true, Max = 570, Value = 570, Increase = 1}
} )

DefineUnitType("unit_template_geomancer", {
	Name = "Geomancer",
	Parent = "unit_template_mage",
	Class = "geomancer",
	Template = true
} )

DefineUnitType("unit-template-flying-rider", {
	Name = "Flying Rider",
	Parent = "unit-template-sapient-unit",
	Class = "flying_rider",
	Template = true,
	Costs = {"time", 250, "copper", 1750, "lumber", 750},
	PopulationClass = "soldiers",
	Strength = 12,
	Dexterity = 13,
	Intelligence = 12,
	Charisma = 12,
	Speed = 14,
	HitPoints = 100,
	DrawLevel = 60,
	TileSize = {2, 2}, BoxSize = {64, 64},
	SightRange = 6,
	BasicDamage = 12, Missile = "missile-arrow",
	MaxAttackRange = 5,
	Accuracy = 10,
	Evasion = 10,
	Priority = 65,
	Points = 100,
	Level = 3,
	Demand = 2,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	Gender = "male",
	Domain = "air",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	DetectCloak = true,
	Flesh = true,
	Mounted = true,
	Inventory = true,
	NeutralHostile = true,
	CanCastSpell = {"spell-precise-shot"},
	AutoCastActive = {"spell-precise-shot"},
	ButtonPos = 6,
	AiDrops = {"unit_helmet", "unit-christmas-hat", "unit-horn", "unit_crown", "unit-amulet", "unit-ring"},
	Sounds = {
	}
} )

DefineUnitType("unit-template-siege-engine", {
	Name = "Siege Engine",
	Parent = "unit-template-unit",
	Class = "siege_engine",
	Template = true,
	Costs = {"time", 250, "copper", 900, "lumber", 900},
	PopulationCost = 10000,
	PopulationClass = "soldiers",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Speed = 5,
	HitPoints = 110,
	TileSize = {1, 1}, BoxSize = {64, 64},
	SightRange = 9,
--	BasicDamage = 75,
	BasicDamage = 60,
	Missile = "missile-catapult-sandstone-rock",
	FireMissile = "missile-flaming-catapult-rock",
	MinAttackRange = 2, MaxAttackRange = 8,
	Accuracy = 8,
	Evasion = 2,
	Priority = 70,
	Points = 100,
	Demand = 2,
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	RightMouseAction = "attack",
	GroundAttack = true,
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true,
	NoFriendlyFire = true, -- don't attack a target if friendly units would get hurt too
	NeutralHostile = true,
	ButtonPos = 5,
	RequirementsString = "Lumber Mill, Smithy and Engineering",
	Sounds = {
		"selected", "click",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
})

DefineUnitType("unit-template-catapult", {
	Name = "Catapult",
	Parent = "unit-template-siege-engine",
	Template = true,
	Accuracy = 7,
	Missile = "missile-catapult-sandstone-rock",
	FireMissile = "missile-flaming-catapult-rock",
	BonusAgainstBuildings = 25
})

DefineUnitType("unit-template-ballista", {
	Name = "Ballista",
	Parent = "unit-template-siege-engine",
	Template = true
})

DefineUnitType("unit-template-ship", {
	Name = "Ship",
	Parent = "unit-template-unit",
	Template = true,
	PopulationCost = 10000,
	PopulationClass = "sailors",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
--	Corpse = "unit-dead-sea-body",
	Domain = "water",
	Sounds = {
		"selected", "ship-selected",
		"ready", "ship-selected",
		"acknowledge", "ship-move",
		"dead", "ship-destroyed"
	}
})

DefineUnitType("unit-template-space-ship", {
	Name = "Space Ship",
	Parent = "unit-template-unit",
	Template = true,
	PopulationCost = 10000,
	PopulationClass = "sailors",
	DrawLevel = 60,
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
--	Corpse = "unit-dead-sea-body",
	Domain = "space",
	Sounds = {
		"selected", "ship-selected",
		"ready", "ship-selected",
--		"acknowledge", "ship-move",
		"dead", "ship-destroyed"
	}
})

DefineUnitType("unit-template-transport-ship", {
	Name = "Transport",
	Parent = "unit-template-ship",
	Class = "transport_ship",
	Template = true,
	Animations = "animations-transport-ship", 
	Costs = {"time", 70, "copper", 600, "lumber", 2100},
	Speed = 8,
	HitPoints = 150,
	MaxOnBoard = 4,
	TileSize = {2, 2}, BoxSize = {64, 64},
	SightRange = 4,
	Armor = 5,
	Missile = "missile-none",
	MaxAttackRange = 1,
	GarrisonedRangeBonus = 1,
	Evasion = 5,
	Priority = 70, AnnoyComputerFactor = 15,
	Points = 40,
	Demand = 2,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	RightMouseAction = "harvest",
	CanTransport = {"LandUnit", "only"},
	SideAttack = true,
	CanDock = true,
	AttackFromTransporter = true,
	Trader = true,
	ButtonKey = "t",
	RequirementsString = "Lumber Mill",
	Affixes = {"upgrade_item_prefix_frail", "upgrade_item_prefix_impregnable", "upgrade_item_prefix_sturdy", "upgrade_item_prefix_vulnerable", "upgrade_item_suffix_of_frailty", "upgrade_item_suffix_of_slowness", "upgrade_item_suffix_of_speed", "upgrade_item_suffix_of_swiftness", "upgrade_item_suffix_of_vulnerability"},
	CanGatherResources = {
		{
			"resource-id", "trade",
			"resource-capacity", 600,
			"resource-step", 4,
			"wait-at-resource", 6,
			"wait-at-depot", 150
		}
	}
})

DefineUnitType("unit-template-siege-warship", {
	Name = "Siege Warship",
	Parent = "unit-template-ship",
	Class = "siege_warship",
	Template = true,
	Animations = "animations-siege-warship", 
	Costs = {"time", 90, "copper", 700, "lumber", 3150},
	Speed = 8,
	HitPoints = 100,
	TileSize = {2, 2}, BoxSize = {64, 64},
	SightRange = 8,
	Armor = 10,
	BasicDamage = 35,
	Missile = "missile-catapult-sandstone-rock",
	FireMissile = "missile-flaming-catapult-rock",
	MaxAttackRange = 4,
	Accuracy = 8,
	Evasion = 5,
	Priority = 65, AnnoyComputerFactor = 20,
	Points = 130,
	Demand = 2,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	RightMouseAction = "attack",
	SideAttack = true,
	CanAttack = true,
	CanDock = true,
	GroundAttack = true,
	NoFriendlyFire = true, -- don't attack a target if friendly units would get hurt too
	NeutralHostile = true,
	RequirementsString = "Lumber Mill, Smithy and Engineering",
	Sounds = {
		"fire-missile", "catapult-attack"
	}
})

DefineUnitType("unit-template-town-hall", {
	Name = "Town Hall",
	Parent = "unit-template-building",
	Class = "town_hall",
	Template = true,
	Costs = {"time", 255, "copper", 1200, "lumber", 2400},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "town_hall",
	HitPoints = 1000, -- 1200 with masonry
	TileSize = {4, 4}, BoxSize = {128, 128},
	SightRange = 5,
	Armor = 5, Missile = "missile-none",
	Priority = 35, AnnoyComputerFactor = 45,
	Points = 200,
	Supply = 5,
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	TownHall = true,
	MetalImprove = true, LumberImprove = true, StoneImprove = true,
	BuilderOutside = true,
	RecruitHeroes = true,
	IncreasesLuxuryDemand = true,
	CanStore = {"copper", "silver", "gold", "iron", "mithril", "lumber", "stone", "limestone", "coal", "jewelry", "furniture", "leather", "diamonds", "emeralds"},
	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally_point",
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 1,
	ButtonKey = "h",
	ResourceDemand = {"jewelry", 5, "furniture", 5, "leather", 5},
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-christmas-hat", "unit_crown", "unit-amulet", "unit-ring", "unit-scroll", "unit-book"}, -- worker-related items, as well as those we would expect a center of administration to have
	DropSpells = {"spell-detachment", "spell-forgetfulness", "spell-retraining"},
	BuildingRulesString = "Must be built on a Settlement Site",
	BuildingRules = {
		"and", {
			"ontop", { Type = "unit_settlement_site", ReplaceOnDie = true, ReplaceOnBuild = true }
		}
	},
	Sounds = {
		"selected", "town-hall-selected",
--		"acknowledge", "town-hall-acknowledge",
		"ready", "town-hall-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-stronghold", {
	Name = "Stronghold",
	Parent = "unit-template-town-hall",
	Class = "stronghold",
	Template = true,
	Animations = "animations-stronghold",
	Costs = {"time", 200, "copper", 2000, "lumber", 2100, "stone", 1500},
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	HitPoints = 1167, -- 1400 with masonry
	SightRange = 8,
	BasicDamage = 9,
	MaxAttackRange = 6,
	GarrisonedRangeBonus = 1,
	Accuracy = 10,
	Missile = "missile-arrow",
	FireMissile = "missile-flaming-arrow",
	Priority = 37, AnnoyComputerFactor = 40,
	Points = 600,
	MaxOnBoard = 3,
	CanTransport = {"LandUnit", "only", "Organic", "only", "Fauna", "false"},
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	AttackFromTransporter = true,
	SaveCargo = true,
	PierceDamage = true,
	ButtonLevelForTransporter = "garrison-level",
	ButtonKey = "h",
	Drops = {"unit-stone-pile"},
	AiDrops = {"unit_helmet"}, -- worker-related items, as well as those we would expect a center of administration to have; and military ones, since this is a stronghold
	Affixes = {"upgrade-item-suffix-of-the-colossus"},
	RequirementsString = "Barracks and Masonry",
	Sounds = {
		"selected", "fortress-selected",
--		"acknowledge", "town-hall-acknowledge",
		"ready", "fortress-ready",
--		"help", "basic-dwarf-voices-help",
		"fire-missile", "bow"
	}
} )

DefineUnitType("unit-template-farm", {
	Name = "Farm",
	Parent = "unit-template-building",
	Class = "farm",
	Template = true,
	NeutralMinimapColor = {192, 192, 192},
	Costs = {"time", 100, "copper", 500, "lumber", 750},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "minor_building_site",
	HitPoints = 334, -- 400 with masonry
	TileSize = {2, 2}, BoxSize = {64, 64},
	Armor = 5, Missile = "missile-none",
	Priority = 20, AnnoyComputerFactor = 45,
	Points = 100,
	Supply = 4,
--	HydratingAura = 1,
	ExplodeWhenKilled = "missile-explosion",
	Drops = {"unit-cheese", "unit-carrots", "unit_meat", "unit-wood-pile"},
	Domain = "land",
	BuilderOutside = true,
	IncreasesLuxuryDemand = true,
	NeutralHostile = true, -- so that factions will attack neutral farms
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 2,
	ButtonKey = "f",
	ResourceDemand = {"furniture", 1, "leather", 1},
	BuildingRules = { "and", { "ontop", { Type = "unit_minor_building_site", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	BuildingRulesString = "Must be built on top of a Minor Building Site",
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "farm-selected",
--		"acknowledge", "farm-acknowledge",
		"ready", "farm-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-barracks", {
	Name = "Barracks",
	Parent = "unit-template-building",
	Class = "barracks",
	Template = true,
	NeutralMinimapColor = {192, 192, 192},
	Costs = {"time", 200, "copper", 700, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "land_building",
	HitPoints = 667, -- 800 with masonry
	TileSize = {3, 3}, BoxSize = {96, 96},
	Armor = 5, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 35,
	Points = 160,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	BuilderOutside = true,
	IncreasesLuxuryDemand = true,
	GarrisonTraining = true,
	NeutralHostile = true,
	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally_point",
	CostModifier = 25,
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 3,
	ButtonKey = "b",
	EmploymentType = "soldiering",
	EmploymentCapacity = 40000,
	ResourceDemand = {"furniture", 3, "leather", 3},
	AiDrops = {"unit-club"},
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "barracks-selected",
--		"acknowledge", "barracks-acknowledge",
		"ready", "barracks-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-lumber-mill", {
	Name = "Lumber Mill",
	Parent = "unit-template-building",
	Class = "lumber_mill",
	Template = true,
	NeutralMinimapColor = {192, 192, 192},
	Costs = {"time", 150, "copper", 600, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	ImproveProduction = {"lumber", 25},
	Construction = "land_building",
	HitPoints = 500, -- 600 with masonry
	TileSize = {3, 3}, BoxSize = {96, 96},
	Armor = 5, Missile = "missile-none",
	Priority = 25, AnnoyComputerFactor = 15,
	Points = 150,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	LumberImprove = true,
	CanStore = {"lumber"},
	BuilderOutside = true,
	CanHarvest = true, -- cannot produce a resource inherently, but can produce furniture through a button
	Inexhaustible = true,
	IncreasesLuxuryDemand = true,
	NeutralHostile = true,
	MaxHarvesters = 5,
	Drops = {"unit-wood-pile"},
	CostModifier = 25,
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonKey = "l",
	ResourceDemand = {"jewelry", 1, "furniture", 3, "leather", 3},
	BuildingRulesString = "Cannot be built close to town halls",
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	BuildingRules = {
		"and", {
			"distance", { Distance = 3, DistanceType = ">", Type = "unit_settlement_site" },
			"distance", { Distance = 3, DistanceType = ">", Class = "town_hall" },
			"distance", { Distance = 3, DistanceType = ">", Class = "stronghold" },
			"distance", { Distance = 3, DistanceType = ">", Class = "fortress" }
		}
	},
	Sounds = {
		"selected", "lumber-mill-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "storehouse-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-smithy", {
	Name = "Smithy",
	Parent = "unit-template-building",
	Class = "smithy",
	Template = true,
	NeutralMinimapColor = {192, 192, 192},
--	Costs = {"time", 200, "copper", 800, "lumber", 450, "oil", 100},
	Costs = {"time", 200, "copper", 800, "lumber", 1650},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "land_building_active",
	Animations = "animations-active-building",
	HitPoints = 646, -- 775 with masonry
	TileSize = {3, 3}, BoxSize = {96, 96},
	Armor = 5, Missile = "missile-none",
	Priority = 15, AnnoyComputerFactor = 20,
	Points = 170,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	BuilderOutside = true,
	MetalImprove = true,
	CanHarvest = true, -- cannot produce a resource inherently, but can produce jewelry through a button
	Inexhaustible = true,
	IncreasesLuxuryDemand = true,
	NeutralHostile = true,
	MaxHarvesters = 5,
	CanStore = {"copper", "silver", "gold", "iron", "mithril", "coal", "diamonds", "emeralds"},
	Drops = {"unit-wood-pile"},
	CostModifier = 25,
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonKey = "s",
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-club", "unit_helmet", "unit_crown", "unit-amulet", "unit-ring"},
	ResourceDemand = {"jewelry", 1, "furniture", 3, "leather", 3},
	BuildingRulesString = "Cannot be built close to town halls or mines",
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	BuildingRules = {
		"and", {
			"distance", { Distance = 3, DistanceType = ">", Type = "unit_settlement_site" },
			"distance", { Distance = 3, DistanceType = ">", Class = "town_hall" },
			"distance", { Distance = 3, DistanceType = ">", Class = "stronghold" },
			"distance", { Distance = 3, DistanceType = ">", Class = "fortress" },

			"distance", { Distance = 3, DistanceType = ">", Type = "unit_gold_deposit" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-mine" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit_silver_deposit" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-silver-mine" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit_copper_deposit" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit_copper_mine" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit_iron_deposit" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit_iron_mine" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit_mithril_deposit" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-mithril-mine" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit_coal_deposit" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-coal-mine" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-diamond-deposit" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-diamond-mine" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-emerald-deposit" },
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-emerald-mine" },
		}
	},
	Sounds = {
		"selected", "smithy-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "smithy-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-masons-shop", {
	Name = "Mason's Shop",
	Parent = "unit-template-building",
	Class = "masons_shop",
	Template = true,
	Costs = {"time", 150, "copper", 600, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	ImproveProduction = {"stone", 25},
	Construction = "land_building",
	HitPoints = 500, -- 600 with masonry
	TileSize = {3, 3}, BoxSize = {96, 96},
	Armor = 5, Missile = "missile-none",
	Priority = 25, AnnoyComputerFactor = 15,
	Points = 150,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	StoneImprove = true,
	CanStore = {"stone"},
	BuilderOutside = true,
	IncreasesLuxuryDemand = true,
	MaxHarvesters = 5,
	Drops = {"unit-wood-pile", "unit-stone-pile"},
	CostModifier = 25,
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonKey = "n",
	ResourceDemand = {"jewelry", 1, "furniture", 3, "leather", 3},
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "storehouse-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "storehouse-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-stables", {
	Name = "Stables",
	Parent = "unit-template-building",
	Class = "stables",
	Template = true,
	Costs = {"time", 150, "copper", 1000, "lumber", 900},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "land_building",
	HitPoints = 417, -- 500 with masonry
	TileSize = {3, 3}, BoxSize = {96, 96},
	Armor = 5, Missile = "missile-none",
	Priority = 15, AnnoyComputerFactor = 15,
	Points = 210,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	BuilderOutside = true,
	IncreasesLuxuryDemand = true,
	Drops = {"unit-wood-pile"},
	CostModifier = 25,
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonKey = "e",
	ResourceDemand = {"furniture", 1, "leather", 3},
	RequirementsString = "Lumber Mill",
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "stables-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "stables-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-temple", {
	Name = "Temple",
	Parent = "unit-template-building",
	Class = "temple",
	Template = true,
	Costs = {"time", 175, "copper", 900, "lumber", 1500},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "building_site",
	HitPoints = 584, -- 700 with masonry
	TileSize = {3, 3}, BoxSize = {96, 96},
	Armor = 5, Missile = "missile-none",
	Priority = 15, AnnoyComputerFactor = 35,
	Points = 240,
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	BuilderOutside = true,
	IncreasesLuxuryDemand = true,
	RightMouseAction = "rally_point",
	Drops = {"unit-wood-pile"},
	CostModifier = 25,
	BurnPercent = 50,
	BurnDamageRate = 1,
	RegenerationAura = 1,
	ButtonKey = "p",
	EmploymentType = "preaching",
	EmploymentCapacity = 40000,
	UnitStock = {"unit-potion-of-healing", 6},
	ResourceDemand = {"jewelry", 4, "furniture", 4, "leather", 4},
	RequirementsString = "Lumber Mill",
	BuildingRules = { "and", { "ontop", { Type = "unit_building_site", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	BuildingRulesString = "Must be built on top of a Building Site",
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	AiDrops = {"unit_crown", "unit-amulet", "unit-ring", "unit-scroll", "unit-book", "unit-potion-of-healing", "unit_potion_of_mana", "unit-elixir-of-dexterity", "unit-elixir-of-intelligence", "unit-elixir-of-strength", "unit-elixir-of-vitality"},
	DropSpells = {"spell-detachment", "spell-forgetfulness", "spell-retraining"},
	Sounds = {
		"selected", "temple-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "temple-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-university", {
	Name = "University",
	Parent = "unit-template-building",
	Class = "university",
	Template = true,
	Costs = {"time", 175, "copper", 900, "lumber", 1500},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "building_site",
	HitPoints = 584, -- 700 with masonry
	TileSize = {3, 3}, BoxSize = {96, 96},
	Armor = 5, Missile = "missile-none",
	Priority = 15, AnnoyComputerFactor = 35,
	Points = 240,
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	BuilderOutside = true,
	IncreasesLuxuryDemand = true,
	RightMouseAction = "rally_point",
	Drops = {"unit-wood-pile"},
	CostModifier = 25,
	BurnPercent = 50,
	BurnDamageRate = 1,
	ResourceDemand = {"jewelry", 4, "furniture", 4, "leather", 4},
	RequirementsString = "Lumber Mill",
	ButtonKey = "u",
	BuildingRules = { "and", { "ontop", { Type = "unit_building_site", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	BuildingRulesString = "Must be built on top of a Building Site",
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	AiDrops = {"unit-amulet", "unit-ring", "unit-scroll", "unit-book", "unit-potion-of-healing", "unit_potion_of_mana", "unit-elixir-of-dexterity", "unit-elixir-of-intelligence", "unit-elixir-of-strength", "unit-elixir-of-vitality"},
	DropSpells = {"spell-detachment", "spell-forgetfulness", "spell-retraining"},
	Sounds = {
		"selected", "temple-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "temple-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-watch-tower", {
	Name = "Watch Tower",
	Parent = "unit-template-building",
	Class = "watch_tower",
	Template = true,
	NeutralMinimapColor = {192, 192, 192},
	Costs = {"time", 60, "copper", 550, "lumber", 300, "stone", 300},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	Construction = "minor_building_site",
	HitPoints = 167, -- 200 with masonry
	TileSize = {2, 2}, BoxSize = {64, 64},
	SightRange = 8,
	Armor = 5, Missile = "missile-none",
	Priority = 55, AnnoyComputerFactor = 50,
	Points = 95,
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	DetectCloak = true,
	MaxOnBoard = 1,
	CanTransport = {"LandUnit", "only", "Organic", "only", "Fauna", "false"},
	AttackFromTransporter = true,
	SaveCargo = true,
	BuilderOutside = true,
	NeutralHostile = true,
	Drops = {"unit-wood-pile", "unit-stone-pile"},
--	RightMouseAction = "attack",
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonKey = "t",
	BuildingRules = { "and", { "ontop", { Type = "unit_minor_building_site", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	BuildingRulesString = "Must be built on top of a Minor Building Site",
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-the-colossus", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "tower-selected",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
		"ready", "tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-guard-tower", {
	Name = "Guard Tower",
	Parent = "unit-template-building",
	Class = "guard_tower",
	Template = true,
	NeutralMinimapColor = {192, 192, 192},
	Animations = "animations-guard-tower",
	Costs = {"time", 140, "copper", 500, "lumber", 225, "stone", 225},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	Construction = "minor_building_site",
	HitPoints = 217, -- 260 with masonry
	TileSize = {2, 2}, BoxSize = {64, 64},
	SightRange = 8,
	Armor = 5,
	BasicDamage = 9,
	MaxAttackRange = 6,
	Accuracy = 10,
	GarrisonedRangeBonus = 1,
	Missile = "missile-arrow",
	FireMissile = "missile-flaming-arrow",
	Priority = 50, AnnoyComputerFactor = 60,
	Points = 200,
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	DetectCloak = true,
	MaxOnBoard = 1,
	CanTransport = {"LandUnit", "only", "Organic", "only", "Fauna", "false"},
	AttackFromTransporter = true,
	SaveCargo = true,
	PierceDamage = true,
	NeutralHostile = true,
	Drops = {"unit-wood-pile", "unit-stone-pile"},
	BurnPercent = 50,
	BurnDamageRate = 1,
	RequirementsString = "Lumber Mill and Masonry",
	BuildingRules = { "and", { "ontop", { Type = "unit_minor_building_site", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	BuildingRulesString = "Must be built on top of a Minor Building Site",
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-the-colossus", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "tower-selected",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
		"ready", "tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed",
		"fire-missile", "bow"
	}
} )

DefineUnitType("unit-template-heavy-tower", {
	Name = "Heavy Tower",
	Parent = "unit-template-building",
	Class = "heavy_tower",
	Template = true,
	NeutralMinimapColor = {192, 192, 192},
	Animations = "animations-heavy-tower",
	Costs = {"time", 190, "copper", 1000, "lumber", 450, "stone", 450},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	Construction = "minor_building_site",
	HitPoints = 267, -- 320 with masonry
	TileSize = {2, 2}, BoxSize = {64, 64},
	SightRange = 8,
	Armor = 5,
	BasicDamage = 40,
	MinAttackRange = 2,	MaxAttackRange = 7,
	Accuracy = 8,
	Missile = "missile-catapult-sandstone-rock",
	FireMissile = "missile-flaming-catapult-rock",
	Priority = 60, AnnoyComputerFactor = 70,
	Points = 250,
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true,
	DetectCloak = true,
	NeutralHostile = true,
	Drops = {"unit-wood-pile", "unit-stone-pile"},
	BurnPercent = 50,
	BurnDamageRate = 1,
	RequirementsString = "Lumber Mill, Smithy, Engineering and Masonry",
	BuildingRules = { "and", { "ontop", { Type = "unit_minor_building_site", ReplaceOnDie = true, ReplaceOnBuild = true } } },
	BuildingRulesString = "Must be built on top of a Minor Building Site",
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-the-colossus", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "tower-selected",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
		"ready", "tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed",
		"fire-missile", "catapult-attack"
	}
} )

DefineUnitType("unit-template-cannon-tower", {
	Name = "Cannon Tower",
	Parent = "unit-template-heavy-tower",
	Class = "cannon_tower",
	Template = true,
	BasicDamage = 65,
	Accuracy = 9,
	Missile = "missile-cannon-ball",
	FireMissile = "missile-cannon-ball",
	Points = 300,
	BluntDamage = true,
	RequirementsString = "Lumber Mill, Smithy, Masonry, Engineering and Gunpowder",
	Sounds = {
		"fire-missile", "dragonstick"
	}
} )

DefineUnitType("unit-template-market", {
	Name = "Market",
	Parent = "unit-template-building",
	Class = "market",
	Template = true,
	NeutralMinimapColor = {192, 192, 192},
	Costs = {"time", 200, "copper", 800, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "land_building",
	HitPoints = 917, -- 1100 with masonry
	TileSize = {3, 3}, BoxSize = {96, 96},
	Armor = 5, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 20,
	Points = 170,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	BuilderOutside = true,
	Market = true,
	IncreasesLuxuryDemand = true,
	GivesResource = "trade",
	CanStore = {"trade"},
	CanHarvest = true,
	Inexhaustible = true,
	StartingResources = {1000},
	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally_point",
	CostModifier = 25,
	BurnPercent = 50,
	BurnDamageRate = 1,
	TradeCost = 30,
	ButtonKey = "m",
	NeutralHostile = true, -- so that factions will attack neutral markets
	ResourceDemand = {"jewelry", 3, "furniture", 3, "leather", 3},
	RequirementsString = "Lumber Mill",
	BuildingRulesString = "Cannot be built close to other markets",
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	SoldUnits = {"unit-hammer", "unit-mining-pick", "unit-club", "unit-short-spear", "unit-long-spear", "unit-pike", "unit-hand-cannon", "unit-horn", "unit_helmet", "unit-christmas-hat", "unit_crown", "unit-amulet", "unit-ring", "unit-scroll", "unit-book", "unit-cheese", "unit-carrots", "unit_meat", "unit-potion-of-healing", "unit_potion_of_mana", "unit-elixir-of-dexterity", "unit-elixir-of-intelligence", "unit-elixir-of-strength", "unit-elixir-of-vitality"},
	AiDrops = {"unit-christmas-hat", "unit_crown", "unit-amulet", "unit-ring"},
	DropSpells = {"spell-detachment", "spell-forgetfulness", "spell-retraining"},
	BuildingRules = {
		"and", {
			"distance", { Distance = 3, DistanceType = ">", Class = "market" }
		}
	},
	Sounds = {
		"selected", "market-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "market-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-dock", {
	Name = "Dock",
	Parent = "unit-template-building",
	Class = "dock",
	Template = true,
	Costs = {"time", 200, "copper", 800, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "dock",
	HitPoints = 917, -- 1100 with masonry
	TileSize = {3, 3}, BoxSize = {96, 96},
	Armor = 5, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 20,
	Points = 170,
--	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	BuilderOutside = true,
	ShoreBuilding = true,
	GivesResource = "trade",
	CanStore = {"trade", "oil"},
	CanHarvest = true,
	Inexhaustible = true,
	IncreasesLuxuryDemand = true,
	StartingResources = {1000},
--	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally_point",
	CostModifier = 25,
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonKey = "d",
	EmploymentType = "sailoring",
	EmploymentCapacity = 40000,
	ResourceDemand = {"jewelry", 3, "furniture", 3, "leather", 3},
	RequirementsString = "Lumber Mill",
	BuildingRulesString = "Cannot be built close to other docks",
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	BuildingRules = {
		"and", {
			"distance", { Distance = 3, DistanceType = ">", Class = "dock" }
		}
	},
	Sounds = {
		"selected", "dock-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "dock-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-palisade", {
	Name = "Palisade",
	Class = "palisade",
	Template = true,
	Animations = "animations-building",
	Costs = {"time", 30, "copper", 20, "lumber", 30},
	Construction = "land_building_1x1",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	HitPoints = 100,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 0, AnnoyComputerFactor = 45,
	Points = 1,
--	Corpse = "unit-destroyed-1x1-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	Building = true, VisibleUnderFog = true, Wall = true,
	BuilderOutside = true,
	HiddenInEditor = true,
	ButtonKey = "p",
	Sounds = {
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-wall", {
	Name = "Wall",
	Class = "wall",
	Template = true,
	Animations = "animations-building",
	Costs = {"time", 30, "copper", 40, "stone", 60},
	Construction = "land_building_1x1",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "stone", 1},
	HitPoints = 200,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0, AnnoyComputerFactor = 45,
	Points = 1,
--	Corpse = "unit-destroyed-1x1-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	Building = true, VisibleUnderFog = true, Wall = true,
	BuilderOutside = true,
	HiddenInEditor = true,
	RequirementsString = "Masonry",
	ButtonKey = "w",
	Sounds = {
		"dead", "building-destroyed"
	}
} )

-- Load the different civilizations
Load("scripts/civilizations/celt/units.lua")
Load("scripts/civilizations/dwarf/units.lua")
Load("scripts/civilizations/elf/units.lua")
Load("scripts/civilizations/ettin/units.lua")
Load("scripts/civilizations/frankish/units.lua")
Load("scripts/civilizations/germanic/units.lua")
Load("scripts/civilizations/gnome/units.lua")
Load("scripts/civilizations/goblin/units.lua")
Load("scripts/civilizations/goth/units.lua")
Load("scripts/civilizations/kobold/units.lua")
Load("scripts/civilizations/suebi/units.lua")
Load("scripts/civilizations/teuton/units.lua")
Load("scripts/civilizations/norse/units.lua")
Load("scripts/civilizations/latin/units.lua")
Load("scripts/civilizations/slav/units.lua")

-- Other civilizations' units

DefineUnitType("unit-orc-sea-orc", {
	Name = "Sea Orc",
	Parent = "unit-template-unit",
	Class = "marine_infantry",
	Civilization = "orc",
--	Description = "While often viewed as inferior to their land-loving counterparts, sea orcs represent a great leap for all orcs as they have adapted to aquatic environments. These orcs use their ships to raid the coasts of the Eelhome Sea. With their curved swords they are competent warriors, although their poor fighting skills on land do represent a strategic weakness.",
--	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-orc-sea-orc",
	Costs = {"time", 60, "copper", 600},
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	Points = 50,
	Demand = 1,
--	Corpse = "unit-dwarven-dead-body",
	Domain = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	WeaponClasses = {"sword", "thrusting_sword"},
	HackDamage = true,
	HiddenInEditor = true,
	Sounds = {
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-orc-shaman", {
	Name = "Shaman",
	Parent = "unit-template-unit",
	Class = "priest",
	--Civilization = "orc",
--	Description = "Orc shamans are the guardians of orcish magic. Respected among orcish tribes, they form the Orcish Council, which makes important decisions for the whole orcish community and arbitrates the many conflicts that arise between tribes of this argumentative race.",
--	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-orc-shaman",
	Costs = {"time", 60, "copper", 600},
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	Points = 50,
	Demand = 1,
--	Corpse = "unit-dwarven-dead-body",
	Domain = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	BluntDamage = true,
	HiddenInEditor = true
} )

DefineUnitType("unit-water-elemental", {
	Name = "Water Elemental",
	Parent = "unit-template-unit",
--	Description = "These creatures inhabit the primordial water world of Nun. Although in many respects they act like a living being, they seem to be nearly entirely made out of water, putting in doubt just what they really are.",
--	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-water-elemental",
	Costs = {"time", 70, "copper", 500, "lumber", 150},
	Speed = 8,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {36, 36},
	SightRange = 3,
	BasicDamage = 12, Missile = "missile-none",
	MaxAttackRange = 3,
	Priority = 63,
	Points = 100,
	Demand = 1,
	Domain = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	HiddenInEditor = true,
	Sounds = {
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss"
	}
} )

DefineUnitType("unit-long-swordsman", {
	Name = "Long Swordsman",
	Parent = "unit-template-unit",
	Image = {"file", "neutral/units/long_swordsman.png", "size", {72, 72}},
	Animations = "animations-static-npc", Icon = "icon-long-swordsman",
	Costs = {"time", 60, "copper", 600},
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	Points = 50,
	Demand = 1,
	Corpse = "unit-human-dead-body",
	Domain = "land",
--	RightMouseAction = "attack",
	CanAttack = false, -- since it doesn't have attack animations as of now
--	CanTargetLand = true,
	Indestructible = true, -- because it doesn't have death animations
	WeaponClasses = {"sword"},
	HackDamage = true,
	NumDirections = 1,
	HiddenInEditor = true,
	Sounds = {
		"selected", "click",
		"dead", "basic-human-voices-dead"
	}
} )

-- define the mercenary camp after the rest because it refers to unit types of the civilizations
DefineUnitType("unit-mercenary-camp", {
	Name = "Mercenary Camp",
	Parent = "unit-template-building",
	Civilization = "neutral",
	Class = "mercenary_camp",
	Description = "This camp houses a number of mercenary groups, who offer their talents for hire.",
	Image = {"file", "neutral/buildings/mercenary_camp.png", "size", {96, 99}},
	Shadow = {"file", "neutral/buildings/mercenary_camp_shadow.png", "size", {96, 99}},
	NeutralMinimapColor = {192, 192, 192},
	Animations = "animations-mercenary-camp", Icon = "icon-mercenary-camp",
	Costs = {"time", 200, "copper", 700, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	Construction = "land_building",
	HitPoints = 800,
	TileSize = {3, 3}, BoxSize = {96, 96},
	Armor = 20, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 35,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally_point",
	BurnPercent = 50,
	BurnDamageRate = 1,
	RecruitHeroes = true,
	UnitStock = {
		"unit-dwarven-axefighter", 4, "unit-surghan-mercenary-axefighter", 4, "unit-dwarven-guard", 4, "unit-dwarven-scout", 3, "unit-joruvellir-scout", 3, "unit-dwarven-thunderer", 3, "unit-dwarven-yale-rider", 2, "unit-joruvellir-yale-rider", 2, "unit-dwarven-ballista", 1, "unit_dwarven_gryphon_rider", 1,
		"unit_goblin_thief", 6, "unit-goblin-swordsman", 4, "unit-goblin-spearman", 4, "unit-goblin-archer", 3, "unit-goblin-gunpowder-infantry", 3, "unit-goblin-war-machine", 1, "unit-goblin-glider", 1,
		"unit-kobold-footpad", 4,
		"unit-ettin", 1,
		"unit-latin-legionary", 4, "unit-latin-javelineer", 3,
		"unit-norse-swordsman", 4,
		"unit-orc-spearthrower", 3,
		"unit-slavic-swordsman", 4,
		"unit-troll-warrior", 2
	},
	Affixes = {"upgrade_prefix_frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Variations = {
		{
			"variation-id", "mercenary-camp",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "mercenary-camp-snow-winter",
			"file", "buildings/neutral/mercenary_camp_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "semi_dry_grass",
			"terrain", "dry_grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "mercenary-camp-snow",
			"file", "buildings/neutral/mercenary_camp_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "barracks-acknowledge",
--		"ready", "barracks-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-dungeon-wall", {
	Name = "Dungeon Wall",
	TerrainType = "dungeon-wall",
	Image = {"file", "neutral/buildings/glyph.png", "size", {32, 32}},
	Animations = "animations-building", Icon = "icon-english-lumber-mill",
	Costs = {"time", 30, "copper", 40, "stone", 60},
	Construction = "land_building_1x1",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	HitPoints = 200,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0, AnnoyComputerFactor = 45,
	Points = 1,
--	Corpse = "unit-destroyed-1x1-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	Indestructible = true, Building = true, VisibleUnderFog = true, Wall = true,
	BuilderOutside = true,
	HiddenInEditor = true,
	Sounds = {
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-road", {
	Name = "Road",
	Civilization = "neutral",
	Class = "road",
	Description = "The construction of roads allows trade caravans - and armies - to more efficiently move from one point to another.",
	TerrainType = "road",
	Image = {"file", "neutral/buildings/road.png", "size", {32, 32}},
	Animations = "animations-building", Icon = "icon-road",
	Costs = {"time", 30, "copper", 20, "lumber", 15, "stone", 15},
	Construction = "land_building_1x1",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	HitPoints = 40,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	SpeedBonus = 1,
	Priority = 0, AnnoyComputerFactor = 45,
	Points = 1,
--	Corpse = "unit-destroyed-1x1-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	Building = true, VisibleUnderFog = true,
	BuilderOutside = true,
	HiddenInEditor = true,
	RequirementsString = "Masonry",
	ButtonKey = "o",
	Sounds = {
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-railroad", {
	Name = "Railroad",
	Civilization = "neutral",
	Class = "railroad",
	Description = "Railways allow the usage of certain vehicles - such as minecarts.\n\nNote: Railroads grant their speed bonus to all land units, not just rail units.",
	TerrainType = "railroad",
	Image = {"file", "neutral/buildings/railroad.png", "size", {32, 32}},
	Shadow = {"file", "neutral/buildings/railroad_shadow.png", "size", {32, 32}},
	Animations = "animations-building", Icon = "icon-railroad",
	Costs = {"time", 30, "copper", 350, "lumber", 150},
	Construction = "land_building_1x1",
	RepairHp = 4,
	RepairCosts = {"copper", 1, "lumber", 1},
	HitPoints = 40,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	SpeedBonus = 1,
	Priority = 0, AnnoyComputerFactor = 45,
	Points = 1,
--	Corpse = "unit-destroyed-1x1-place",
	ExplodeWhenKilled = "missile-explosion",
	Domain = "land",
	Building = true, VisibleUnderFog = true,
	BuilderOutside = true,
	HiddenInEditor = true,
	RequirementsString = "Engineering",
	ButtonKey = "r",
	Sounds = {
		"dead", "building-destroyed"
	}
} )

SetSettlementSiteUnit("unit_settlement_site")
