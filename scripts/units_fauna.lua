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
--      (c) Copyright 2016-2022 by Andrettin
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

DefineUnitType("unit-template-fauna-unit", {
	Name = "Fauna Unit",
	Parent = "unit-template-unit",
	Template = true,
	NeutralMinimapColor = {192, 192, 192},
	Intelligence = 2,
	Charisma = 2,
	Organic = true,
	Fauna = true,
	Mana = {Enable = false, Max = 0, Value = 0, Increase = 1},
	Traits = {"upgrade-clumsy", "upgrade-dextrous", "upgrade-dim", "upgrade-keen", "upgrade-limping", "upgrade-mighty", "upgrade-near-sighted", "upgrade-old", "upgrade-quick", "upgrade-reckless", "upgrade-resilient", "upgrade-slow", "upgrade-strong", "upgrade-weak"}
})

DefineUnitType("unit-template-diminutive-fauna-unit", {
	Name = "Diminutive Fauna Unit",
	Parent = "unit-template-fauna-unit",
	Template = true,
	TileSize = {1, 1}, BoxSize = {16, 16},
	HitPoints = 1,
	BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Diminutive = true,
	Priority = 1,
	Points = 1,
	BoardSize = 0,
})

DefineUnitType("unit-bee", {
	Name = "Bee",
	Parent = "unit-template-diminutive-fauna-unit",
	Species = "bee",
	Image = {"file", "neutral/units/bee.png", "size", {6, 6}},
	Animations = "animations-bee", Icon = "icon-gryphon",
	Strength = 1,
	Dexterity = 14,
	Intelligence = 1,
	Charisma = 1,
	Speed = 3,
	DrawLevel = 44,
	SightRange = 2,
	Domain = "air_low",
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 50,
	Coward = true,
	Insect = true,
	Herbivore = true,
	PierceDamage = true,
	HiddenInEditor = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bird-selected",
--		"ready", "bird-selected",
--		"dead", "bird-dead",
		"hit", "dart-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-fly", {
	Name = "Fly",
	Parent = "unit-template-diminutive-fauna-unit",
	Species = "fly",
	Image = {"file", "neutral/units/fly.png", "size", {6, 6}},
	Animations = "animations-bee", Icon = "icon-gryphon",
	Strength = 1,
	Intelligence = 1,
	Charisma = 1,
	Speed = 3,
	DrawLevel = 44,
	SightRange = 2,
	Domain = "air_low",
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 50,
	Coward = true,
	Insect = true,
	Detritivore = true,	
	PierceDamage = true,
	HiddenInEditor = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bird-selected",
--		"ready", "bird-selected",
--		"dead", "bird-dead",
--		"hit", "dart-attack",
--		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-bug", {
	Name = "Bug",
	Parent = "unit-template-diminutive-fauna-unit",
	Species = "bug",
	Image = {"file", "neutral/units/bug.png", "size", {6, 6}},
	Animations = "animations-bee", Icon = "icon-gryphon",
	Strength = 1,
	Intelligence = 1,
	Charisma = 1,
	Speed = 3,
	DrawLevel = 39,
	SightRange = 2,
	Domain = "land",
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 50,
	Coward = true,
	Insect = true,
	Herbivore = true,
	HiddenInEditor = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bird-selected",
--		"ready", "bird-selected",
--		"dead", "bird-dead",
--		"hit", "dart-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-worm", {
	Name = "Worm",
	Parent = "unit-template-diminutive-fauna-unit",
	Species = "worm",
	Image = {"file", "neutral/units/worm.png", "size", {72, 72}},
	Animations = "animations-worm", Icon = "icon-rat",
	Strength = 1,
	Intelligence = 1,
	Charisma = 1,
	Speed = 3,
	DrawLevel = 39,
	SightRange = 2,
	Domain = "land",
	IsNotSelectable = true,
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	Coward = true,
	Insect = true,
	Herbivore = true,
	Detritivore = true,
	HiddenInEditor = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bird-selected",
--		"ready", "bird-selected",
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss"
	}
} )

DefineUnitType("unit-snail", {
	Name = "Snail",
	Parent = "unit-template-fauna-unit",
	Species = "snail",
	Image = {"file", "neutral/units/snail.png", "size", {32, 32}},
	Animations = "animations-snail", Icon = "icon-rat",
	Strength = 1,
	Intelligence = 1,
	Charisma = 1,
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 39,
	TileSize = {1, 1}, BoxSize = {16, 16},
	SightRange = 2,
	BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Priority = 5,
	Points = 1,
	Demand = 1,
	Domain = "land",
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 1,
	Coward = true,
	Insect = true,
	Herbivore = true,
	Detritivore = true,
	HiddenInEditor = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bird-selected",
--		"ready", "bird-selected",
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss"
	}
} )

DefineUnitType("unit-slug", {
	Name = "Slug",
	Parent = "unit-template-fauna-unit",
	Species = "slug",
	Image = {"file", "neutral/units/slug.png", "size", {32, 32}},
	Animations = "animations-slug", Icon = "icon-rat",
	Strength = 1,
	Intelligence = 1,
	Charisma = 1,
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 39,
	TileSize = {1, 1}, BoxSize = {16, 16},
	SightRange = 2,
	BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Priority = 5,
	Points = 1,
	Demand = 1,
	Domain = "land",
	IsNotSelectable = true,
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	Coward = true,
	Insect = true,
	Herbivore = true,
	Detritivore = true,
	HiddenInEditor = true,
	Variations = {
		{
			"variation-id", "brown",
			"file", "neutral/units/slug_brown.png"
		},
		{
			"variation-id", "green"
		},
		--[[
		{
			"variation-id", "teal",
			"file", "neutral/units/slug_teal.png"
		}
		--]]
		{
			"variation-id", "yellow",
			"file", "neutral/units/slug_yellow.png"
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "bird-selected",
--		"ready", "bird-selected",
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss"
	}
} )

DefineUnitType("unit-snigill", {
	Name = "Baby Snigill",
	Parent = "unit-template-fauna-unit",
	Species = "snigill",
	Image = {"file", "neutral/units/snail_blue_purple_shell.png", "size", {32, 32}},
	Animations = "animations-snail", Icon = "icon-rat",
	Strength = 1,
	Intelligence = 1,
	Charisma = 1,
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 39,
	TileSize = {1, 1}, BoxSize = {16, 16},
	SightRange = 2,
	BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Priority = 5,
	Points = 1,
	Demand = 1,
	Domain = "land",
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 1,
	Coward = true,
	Insect = true,
	Herbivore = true,
	Detritivore = true,
	HiddenInEditor = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bird-selected",
--		"ready", "bird-selected",
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss"
	}
} )

DefineUnitType("unit-frog", {
	Name = "Frog",
	Parent = "unit-template-fauna-unit",
	Species = "frog",
	Description = "Frogs are amphibians who eat insects.",
	Image = {"file", "graphics/neutral/units/frog.png", "size", {18, 18}},
	Animations = "animations-frog",
	Icon = "frog_green",
	Speed = 4,
	HitPoints = 5,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 3,
	Armor = 0, BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Priority = 5,
	Points = 2,
	Demand = 1,
	Domain = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 1,
	Flesh = true,
	Insectivore = true,
	Variations = {
		{
			"variation-id", "green"
		},
		{
			"variation-id", "teal",
			"file", "graphics/neutral/units/frog_teal.png",
			"icon", "frog_teal"
		},
		{
			"variation-id", "brown",
			"file", "graphics/neutral/units/frog_brown.png",
			"icon", "frog_brown"
		},
		{
			"variation-id", "blue",
			"file", "graphics/neutral/units/frog_blue.png",
			"icon", "frog_blue"
		},
		{
			"variation-id", "purple",
			"file", "graphics/neutral/units/frog_purple.png",
			"icon", "frog_purple"
		},
		{
			"variation-id", "red",
			"file", "graphics/neutral/units/frog_red.png",
			"icon", "frog_red"
		},
		{
			"variation-id", "yellow",
			"file", "graphics/neutral/units/frog_yellow.png",
			"icon", "frog_yellow"
		}
	},
	Sounds = {
		"selected", "frog-ribbit",
		"ready", "frog-ribbit",
		"acknowledge", "frog-ribbit",
		"dead", "squishy-hit",
		"idle", "frog-ribbit",
		"miss", "frog-tongue",
		"hit", "frog-tongue"
	  }
} )

DefineUnitType("unit-adelobasileus-cromptoni", {
	Name = "Adelobasileus",
	Parent = "unit-template-fauna-unit",
	Species = "adelobasileus-cromptoni",
	Description = "The Adelobasileus was one of the earliest mammal-like animals to have lived, and is possibly a common ancestor of all mammals. It lived in trees, and its diet consisted of insects.",
	Image = {"file", "neutral/units/rat_light_gray_fur_short_tail.png", "size", {72, 72}},
	Animations = "animations-rat", Icon = "icon-adelobasileus-cromptoni",
	Strength = 2, -- same as the rat
	Dexterity = 15, -- same as the rat
	Intelligence = 2, -- same as the rat
	Charisma = 2, -- same as the rat
	Speed = 8,
	HitPoints = 5,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 3,
	BasicDamage = 1, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 14,
	Evasion = 15,
	Priority = 7,
	Points = 1,
	Demand = 1,
	Domain = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 3,
	Flesh = true,
	Insectivore = true,
	PierceDamage = true,
	Coward = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "critter-acknowledge",
--		"ready", "critter-ready",
		"dead", "rat-dead",
		"hit", "bite-attack",
		"miss", "attack-miss",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-galerix-exilis", {
	Name = "Galerix",
	Parent = "unit-template-fauna-unit",
	Species = "galerix-exilis",
	Description = "The Galerix was an ancient small mammal who lived off insects.",
	Image = {"file", "neutral/units/rat_light_gray_fur_short_tail.png", "size", {72, 72}},
	Animations = "animations-rat", Icon = "icon-galerix-exilis",
	Strength = 2, -- same as the rat
	Dexterity = 15, -- same as the rat
	Intelligence = 2, -- same as the rat
	Charisma = 2, -- same as the rat
	Speed = 8,
	HitPoints = 5,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 3,
	BasicDamage = 1, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 14,
	Evasion = 15,
	Priority = 7,
	Points = 1,
	Demand = 1,
	Domain = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 3,
	Flesh = true,
	Insectivore = true,
	PierceDamage = true,
	Coward = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "critter-acknowledge",
--		"ready", "critter-ready",
		"dead", "rat-dead",
		"hit", "bite-attack",
		"miss", "attack-miss",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

--[[
DefineUnitType("unit-megacricetodon-collongensis", {
	Name = "Megacricetodon",
	Parent = "unit-template-fauna-unit",
	Species = "megacricetodon-collongensis",
	Description = "The Megacricetodon was a prehistoric rodent who lived in Europe. It was omnivore, and ate mostly insects.",
	Image = {"file", "neutral/units/rat_light_gray_fur.png", "size", {72, 72}},
	Animations = "animations-rat", Icon = "icon-megacricetodon-collongensis",
	Strength = 2, -- same as the rat
	Dexterity = 15, -- same as the rat
	Intelligence = 2, -- same as the rat
	Charisma = 2, -- same as the rat
	Speed = 8,
	HitPoints = 5,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 3,
	BasicDamage = 1, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 14,
	Evasion = 15,
	Priority = 7,
	Points = 1,
	Demand = 1,
	Domain = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 3,
	Flesh = true,
	Insectivore = true,
	PierceDamage = true,
	Coward = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "critter-acknowledge",
--		"ready", "critter-ready",
		"dead", "rat-dead",
		"hit", "bite-attack",
		"miss", "attack-miss",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )
--]]

DefineUnitType("unit-rat", {
	Name = "Rat",
	Parent = "unit-template-fauna-unit",
	Species = "rat",
	Description = "Rats are rodents of medium size and long tails. They usually live in forests or within human dwellings. They are often reviled due to carrying diseases.",
	Image = {"file", "neutral/units/rat.png", "size", {72, 72}},
	Animations = "animations-rat", Icon = "icon-rat",
	Strength = 2,
	Dexterity = 15,
	Intelligence = 2,
	Charisma = 2,
	Speed = 8,
	HitPoints = 5,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 3,
	BasicDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 15,
	Evasion = 15,
	Priority = 10,
	Points = 1,
	Demand = 1,
	Domain = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 3,
	Flesh = true,
	Carnivore = true,
	PierceDamage = true,
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
		"dead", "rat-dead",
		"hit", "bite-attack",
		"miss", "attack-miss",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-gryphon", {
	Name = "Gryphon",
	Parent = "unit-template-fauna-unit",
	Species = "gryphon",
	Description = "Gryphons dwell in the dwarven homeworld of Nidavellir, predating smaller animals such as yales. Although many gryphons can be seen in the wild, dwarves have been domesticating the beasts for aeons, riding them into battle. The Gryphon Mountain is the greatest nesting area for wild gryphons.",
	Quote = "\"What's this? Gryphons in my castle? Remove the beasts!\" - Relgorn, Chieftain of the <a href='faction:norlund_clan'>Norlund Clan</a>",
	Image = {"file", "neutral/units/gryphon.png", "size", {100, 100}},
	Animations = "animations-gryphon", Icon = "icon-gryphon",
	Strength = 18,
	Dexterity = 15,
	Intelligence = 5,
	Charisma = 8,
	Speed = 14,
	HitPoints = 90,
	DrawLevel = 60,
	TileSize = {2, 2}, BoxSize = {64, 64},
	SightRange = 6,
	Armor = 0, BasicDamage = 12, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 65,
	Points = 150,
	Demand = 2,
	Domain = "air",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 12,
	Predator = true,
	PeopleAversion = true,
	Flesh = true,
	Carnivore = true,
	PierceDamage = true,
	Variations = {
		--[[
		{
			"variation-id", "young",
--			"file", "neutral/units/gryphon_young.png",
			"frame-size", {50, 50},
			"upgrade-required", "upgrade-gryphon-child"
		},
		--]]
		{
			"variation-id", "brown-feathers"
--			"upgrade-forbidden", "upgrade-gryphon-child"
		},
		{
			"variation-id", "blue-feathers",
			"file", "neutral/units/gryphon_blue_feathers.png",
			"icon", "icon-gryphon-blue-feathers"
--			"upgrade-forbidden", "upgrade-gryphon-child"
		},
		{
			"variation-id", "gray-feathers",
			"file", "neutral/units/gryphon_gray_feathers.png",
			"icon", "icon-gryphon-gray-feathers"
--			"upgrade-forbidden", "upgrade-gryphon-child"
		}
	},
	Sounds = {
		"selected", "gryphon-ready",
		"acknowledge", "gryphon-ready",
		"ready", "gryphon-ready",
		"idle", "gryphon-ready",
		"dead", "gryphon-dead",
		"hit", "claw-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-slime", {
	Name = "Slime",
	Parent = "unit-template-fauna-unit",
	Species = "slime",
	Description = "Slimes are amorphous organic beings which can be found throughout the dark plains and caves of Nidavellir. Little is known about their composition, except that they are acidic to the touch.",
	Image = {"file", "neutral/units/slime_small.png", "size", {32, 32}},
	Animations = "animations-slime", Icon = "icon-slime",
	Strength = 12,
	Dexterity = 2,
	Intelligence = 1,
	Charisma = 1,
	Speed = 3,
	HitPoints = 30,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {32, 32},
	Armor = 10,
	SightRange = 3,
	AcidDamage = 5, Missile = "missile-none",
	Accuracy = 8,
	Evasion = 1,
	MaxAttackRange = 1,
	Priority = 37,
	Points = 20,
	Demand = 1,
	Domain = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	PeopleAversion = true,
	Slime = true,
	Detritivore = true,	
	Carnivore = true,	
	BluntDamage = true,
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow"}, -- slimes have a more limited selection of traits, since they have a rather different biology
	Variations = {
		{
			"variation-id", "green",
			"file", "neutral/units/slime_baby.png",
			"frame-size", {16, 16},
			"upgrade-required", "upgrade-child"
		},
		{
			"variation-id", "red",
			"file", "neutral/units/slime_baby_red.png",
			"icon", "icon-slime-red",
			"frame-size", {16, 16},
			"upgrade-required", "upgrade-child"
		},
		{
			"variation-id", "brown",
			"file", "neutral/units/slime_baby_brown.png",
			"icon", "icon-slime-brown",
			"frame-size", {16, 16},
			"upgrade-required", "upgrade-child"
		},
		{
			"variation-id", "blue",
			"file", "neutral/units/slime_baby_blue.png",
			"icon", "icon-slime-blue",
			"frame-size", {16, 16},
			"upgrade-required", "upgrade-child"
		},
		{
			"variation-id", "teal",
			"file", "neutral/units/slime_baby_teal.png",
			"icon", "icon-slime-teal",
			"frame-size", {16, 16},
			"upgrade-required", "upgrade-child"
		},
		{
			"variation-id", "green",
			"upgrade-forbidden", "upgrade-child"
		},
		{
			"variation-id", "red",
			"file", "neutral/units/slime_small_red.png",
			"icon", "icon-slime-red",
			"upgrade-forbidden", "upgrade-child"
		},
		{
			"variation-id", "brown",
			"file", "neutral/units/slime_small_brown.png",
			"icon", "icon-slime-brown",
			"upgrade-forbidden", "upgrade-child"
		},
		{
			"variation-id", "blue",
			"file", "neutral/units/slime_small_blue.png",
			"icon", "icon-slime-blue",
			"upgrade-forbidden", "upgrade-child"
		},
		{
			"variation-id", "teal",
			"file", "neutral/units/slime_small_teal.png",
			"icon", "icon-slime-teal",
			"upgrade-forbidden", "upgrade-child"
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "critter-acknowledge",
--		"ready", "critter-ready",
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-bird", {
	Name = "Bird",
	Parent = "unit-template-fauna-unit",
	Species = "bird",
	Image = {"file", "neutral/units/bird_brown.png", "size", {32, 32}},
	Animations = "animations-bird", Icon = "icon-gryphon",
	Strength = 1,
	Dexterity = 15,
	Intelligence = 3,
	Charisma = 6,
	Speed = 14,
	HitPoints = 5,
	DrawLevel = 45,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 5,
	BasicDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Domain = "air",
	IsNotSelectable = true,
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 50,
	RandomMovementDistance = 12,
	Coward = true,
	Flesh = true,
	Insectivore = true,
	PierceDamage = true,
	HiddenInEditor = true,
	Variations = {
		{
			"variation-id", "brown"
		},
		{
			"variation-id", "gray",
			"file", "neutral/units/bird_gray.png"
		},
		{
			"variation-id", "white",
			"file", "neutral/units/bird_white.png"
		}
	},
	Sounds = {
		"selected", "bird-selected",
		"acknowledge", "bird-selected",
		"ready", "bird-selected",
		"idle", "bird-selected",
		"dead", "bird-dead",
		"hit", "claw-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-crow", {
	Name = "Crow",
	Parent = "unit-template-fauna-unit",
	Species = "crow",
	Description = "Crows are carrion-eating birds.",
	Image = {"file", "neutral/units/bird_black.png", "size", {32, 32}},
	Animations = "animations-bird",
	Icon = "crow",
	Strength = 1,
	Dexterity = 15,
	Intelligence = 3,
	Charisma = 6,
	Speed = 14,
	HitPoints = 5,
	DrawLevel = 45,
	TileSize = {1, 1}, BoxSize = {32, 32},
	SightRange = 5,
	BasicDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Domain = "air",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 50,
	RandomMovementDistance = 12,
	Coward = true,
	Flesh = true,
	Insectivore = true,
	Detritivore = true,	
	PierceDamage = true,
	Sounds = {
		"selected", "crow-selected",
		"acknowledge", "crow-selected",
		"ready", "crow-selected",
		"idle", "crow-selected",
		"dead", "bird-dead",
		"hit", "claw-attack",
		"miss", "attack-miss"
	}
} )
