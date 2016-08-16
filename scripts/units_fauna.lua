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
--      (c) Copyright 2016 by Andrettin
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
	Name = _("Fauna Unit"),
	Parent = "unit-template-unit",
	NeutralMinimapColor = {192, 192, 192},
	Intelligence = 2,
	Charisma = 2,
	organic = true,
	Fauna = true,
	SelectableByRectangle = false,
	Evolution = {Enable = true, Max = 300, Value = 0, Increase = 1},
	Traits = {"upgrade-clumsy", "upgrade-dextrous", "upgrade-dim", "upgrade-keen", "upgrade-limping", "upgrade-mighty", "upgrade-near-sighted", "upgrade-old", "upgrade-quick", "upgrade-reckless", "upgrade-resilient", "upgrade-slow", "upgrade-strong", "upgrade-weak"}
})

DefineUnitType("unit-template-diminutive-fauna-unit", {
	Name = _("Diminutive Fauna Unit"),
	Parent = "unit-template-fauna-unit",
	TileSize = {1, 1}, BoxSize = {15, 15},
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

DefineUnitType("unit-bee", { Name = _("Bee"),
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
	Type = "fly-low",
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
--		"help", "critter-help",
--		"dead", "bird-dead",
		"hit", "dart-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-fly", { Name = _("Fly"),
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
	Type = "fly-low",
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
--		"help", "critter-help",
--		"dead", "bird-dead",
--		"hit", "dart-attack",
--		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-bug", { Name = _("Bug"),
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
	Type = "land",
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
--		"help", "critter-help",
--		"dead", "bird-dead",
--		"hit", "dart-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-worm", { Name = _("Worm"),
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
	Type = "land",
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
--		"help", "critter-help",
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss"
	}
} )

DefineUnitType("unit-snail", { Name = _("Snail"),
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
	TileSize = {1, 1}, BoxSize = {15, 15},
	SightRange = 2,
	BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Priority = 5,
	Points = 1,
	Demand = 1,
	Type = "land",
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
--		"help", "critter-help",
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss"
	}
} )

DefineUnitType("unit-slug", { Name = _("Slug"),
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
	TileSize = {1, 1}, BoxSize = {15, 15},
	SightRange = 2,
	BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Priority = 5,
	Points = 1,
	Demand = 1,
	Type = "land",
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
--		"help", "critter-help",
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss"
	}
} )

DefineUnitType("unit-snigill", { Name = _("Baby Snigill"),
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
	TileSize = {1, 1}, BoxSize = {15, 15},
	SightRange = 2,
	BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Priority = 5,
	Points = 1,
	Demand = 1,
	Type = "land",
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
--		"help", "critter-help",
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss"
	}
} )

DefineUnitType("unit-frog", { Name = _("Frog"),
	Parent = "unit-template-fauna-unit",
	Species = "frog",
	--Description = _("Frog"),
	--Background = _(" A \"Frog\" is a kind of \"Amphibian\"."),
	Image = {"file", "graphics/neutral/units/frog.png", "size", {18, 18}},
	Animations = "animations-frog", Icon = "icon-slime",
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
	Type = "land",
	IsNotSelectable = true,
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 1,
	Flesh = true,
	Insectivore = true,
	HiddenInEditor = true,
	Variations = {
		{
			"variation-id", "green"
		},
		{
			"variation-id", "teal",
			"file", "graphics/neutral/units/frog_teal.png"
		},
		{
			"variation-id", "brown",
			"file", "graphics/neutral/units/frog_brown.png"
		},
		{
			"variation-id", "blue",
			"file", "graphics/neutral/units/frog_blue.png"
		},
		{
			"variation-id", "purple",
			"file", "graphics/neutral/units/frog_purple.png"
		},
		{
			"variation-id", "red",
			"file", "graphics/neutral/units/frog_red.png"
		},
		{
			"variation-id", "yellow",
			"file", "graphics/neutral/units/frog_yellow.png"
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
	Class = "arboreal-insectivore",
	Description = _("The Adelobasileus was one of the earliest mammal-like animals to have lived, and is possibly a common ancestor of all mammals. It lived in trees, and its diet consisted of insects."),
	Image = {"file", "neutral/units/rat_light_gray_fur_short_tail.png", "size", {72, 72}},
	Animations = "animations-rat", Icon = "icon-adelobasileus-cromptoni",
	Strength = 2, -- same as the rat
	Dexterity = 15, -- same as the rat
	Intelligence = 2, -- same as the rat
	Charisma = 2, -- same as the rat
	Speed = 8,
	HitPoints = 5,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 3,
	BasicDamage = 1, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 14,
	Evasion = 15,
	Priority = 7,
	Points = 1,
	Demand = 1,
	Type = "land",
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
--		"help", "critter-help",
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

DefineUnitType("unit-rat", {
	Name = "Rat",
	Parent = "unit-template-fauna-unit",
	Species = "rat",
	Class = "vermin",
	Description = _("Rats are rodents of medium size and long tails. They usually live in forests or within human dwellings. They are often reviled due to carrying diseases."),
	Image = {"file", "neutral/units/rat.png", "size", {72, 72}},
	Animations = "animations-rat", Icon = "icon-rat",
	Strength = 2,
	Dexterity = 15,
	Intelligence = 2,
	Charisma = 2,
	Speed = 8,
	HitPoints = 5,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 3,
	BasicDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 15,
	Evasion = 15,
	Priority = 10,
	Points = 1,
	Demand = 1,
	Type = "land",
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
--		"help", "critter-help",
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

DefineUnitType("unit-squirrel", {
	Name = "Squirrel",
	Parent = "unit-rat",
	Species = "squirrel",
	Strength = 2, -- same as the rat
	Dexterity = 15, -- same as the rat
	Intelligence = 2, -- same as the rat
	Charisma = 2, -- same as the rat
	HiddenInEditor = true
})

DefineUnitType("unit-horse", {
	Name = "Horse",
	Parent = "unit-template-fauna-unit",
	Species = "horse",
	Class = "grazer",
	Description = _("Horses are valuable for their speed as well as their endurance, making excellent mounts. The creatures were a vital component of any army, and was an essential part of the lifestyle of the peoples of the Eurasian steppes."),
	Quote = _("\"Glath and Gyllir, Gler and Skeithbrimir,\nSilfrintopp and Sinir,\nGisl and Falhofnir, Golltopp and Lettfeti,\nOn these steeds the gods shall go\nWhen dooms to give each day they ride\nTo the ash-tree Yggdrasil.\"\n- Grimnismol (Grimnir)"), -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
	Image = {"file", "neutral/units/horse_brown_skin_brown_hair_brown_eyes.png", "size", {72, 72}},
	Animations = "animations-yale", Icon = "icon-horse",
	Strength = 14,
	Dexterity = 13,
	Intelligence = 2,
	Charisma = 6,
	Speed = 13,
	HitPoints = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 37,
	Points = 15,
	Demand = 1,
	Type = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	RandomMovementDistance = 6,
	Flesh = true,
	Herbivore = true,
	Excrement = "unit-yale-excrement",
	BluntDamage = true,
	Coward = true,
	Variations = {
		{
			"variation-id", "brown-skin-brown-hair-brown-eyes"
		},
		{
			"variation-id", "brown-skin-tan-hair-brown-eyes",
			"file", "neutral/units/horse_brown_skin_tan_hair_brown_eyes.png"
		},
		{
			"variation-id", "black-skin-brown-hair-brown-eyes",
			"file", "neutral/units/horse_black_skin_brown_hair_brown_eyes.png"
		},
		{
			"variation-id", "brown-skin-tan-hair-blue-eyes",
			"file", "neutral/units/horse_brown_skin_tan_hair_blue_eyes.png"
		}
	},
	Sounds = {
		"selected", "horse-selected",
		"acknowledge", "horse-idle",
		"attack", "horse-attack",
		"idle", "horse-idle",
		"ready", "horse-idle",
--		"help", "critter-help",
		"dead", "horse-dead",
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

DefineUnitType("unit-unicorn", {
	Name = "Unicorn",
	Parent = "unit-template-fauna-unit",
	Species = "unicorn",
	Class = "grazer",
	Description = _("Unicorns inhabit the woods of Alfheim, frequently being used by elves as mounts."),
	Image = {"file", "neutral/units/unicorn.png", "size", {72, 72}},
	Animations = "animations-yale", Icon = "icon-unicorn",
	Strength = 20,
	Dexterity = 17,
	Intelligence = 2, -- same as a horse
	Charisma = 6, -- same as a horse
	Speed = 13,
	HitPoints = 45, -- more resilient than a horse, +15 hit points
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 4, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 12, -- more dextrous than a horse
	Evasion = 12, -- more dextrous than a horse
	Priority = 37,
	Points = 25,
	Demand = 1,
	Type = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	RandomMovementDistance = 6,
	Flesh = true,
	Herbivore = true,
	Excrement = "unit-yale-excrement",
	PiercingDamage = true,
	Sounds = {
		"selected", "horse-selected",
		"acknowledge", "horse-idle",
		"attack", "horse-attack",
		"idle", "horse-idle",
		"ready", "horse-idle",
--		"help", "critter-help",
		"dead", "horse-dead",
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

DefineUnitType("unit-yale", {
	Name = "Yale",
	Parent = "unit-template-fauna-unit",
	Species = "yale",
	Class = "grazer",
	Description = _("Yales are caprid creatures who inhabit Nidavellir. They have sturdy, golden tusks and horns, and their fur is covered by golden spots. Dwarves often use them as mounts or as beasts of carry."),
	Image = {"file", "neutral/units/yale.png", "size", {72, 72}},
	Animations = "animations-yale", Icon = "icon-yale",
	Strength = 12, -- somewhat weaker than the horse
	Dexterity = 13, -- same as the horse
	Intelligence = 2, -- same as the horse
	Charisma = 6, -- same as the horse
	Speed = 13,
	HitPoints = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 3, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 37,
	Points = 15,
	Demand = 1,
	Type = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	RandomMovementDistance = 6,
	PeopleAversion = true,
	Flesh = true,
	Herbivore = true,
	Excrement = "unit-yale-excrement",
	BluntDamage = true,
	Variations = {
		{
--			"variation-id", "brown-fur",
			"variation-id", "child",
			"file", "neutral/units/yale_young.png",
			"frame-size", {54, 54},
			"upgrade-required", "upgrade-child"
		},
		{
			"variation-id", "brown-fur",
			"icon", "icon-yale",
			"upgrade-forbidden", "upgrade-child"
		},
		{
			"variation-id", "gray-brown-fur",
			"file", "neutral/units/yale_gray_brown_fur.png",
			"icon", "icon-yale-gray-brown-fur",
			"upgrade-forbidden", "upgrade-child"
		},
		{
			"variation-id", "gray-fur",
			"file", "neutral/units/yale_gray_fur.png",
			"icon", "icon-yale-gray-fur",
			"upgrade-forbidden", "upgrade-child"
		},
		{
			"variation-id", "white-fur",
			"file", "neutral/units/yale_white_fur.png",
			"icon", "icon-yale-white-fur",
			"upgrade-forbidden", "upgrade-child"
		}
	},
	Sounds = {
		"selected", "yale-selected",
		"acknowledge", "yale-acknowledge",
		"idle", "yale-acknowledge",
		"ready", "yale-selected",
--		"help", "critter-help",
		"dead", "yale-dead",
		"hit", "club-attack",
		"miss", "attack-miss",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-goat", {
	Name = "Goat",
	Parent = "unit-yale",
	Species = "goat",
	Class = "grazer",
	HiddenInEditor = true
})

DefineUnitType("unit-gryphon", {
	Name = _("Gryphon"),
	Parent = "unit-template-fauna-unit",
	Species = "gryphon",
	Class = "flying-predator",
	Description = _("Gryphons dwell in the dwarven homeworld of Nidavellir, predating smaller animals such as yales. Although many gryphons can be seen in the wild, dwarves have been domesticating the beasts for aeons, riding them into battle. The Gryphon Mountain is the greatest nesting area for wild gryphons."),
	Quote = _("\"What's this? Gryphons in my castle? Remove the beasts!\" - Relgorn, Chieftain of the Norlund Clan"),
	Image = {"file", "neutral/units/gryphon.png", "size", {100, 100}},
	Animations = "animations-gryphon", Icon = "icon-gryphon",
	Strength = 18,
	Dexterity = 15,
	Intelligence = 5,
	Charisma = 8,
	Speed = 14,
	HitPoints = 90,
	DrawLevel = 60,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 6,
	Armor = 0, BasicDamage = 12, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 65,
	Points = 150,
	Demand = 2,
	Type = "fly",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 12,
	Predator = true,
	PeopleAversion = true,
	Flesh = true,
	Carnivore = true,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
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
--		"help", "critter-help",
		"dead", "gryphon-dead",
		"hit", "claw-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-wyrm", {
	Name = _("Wyrm"),
	Parent = "unit-template-fauna-unit",
	Species = "wyrm",
	Class = "large-predator",
	Description = _("These enormous creatures dwell in Nidavellir's underground, living off the meat of animals and intelligent beings alike. Wyrms are as territorial as they are rare, and will attack any that they perceive as a threat. Kobolds worship these beasts, believing them to be their ancestors. Some tribes go as far as living near a wyrm's lair, keeping it harmless by maintaining a low profile and feeding it well - sometimes even with offerings of kobolds."),
	Quote = _("\"More wyrms there are beneath the ash\nThan an unwise ape would think;\nGoin and Moin, Grafvitnir's sons,\nGrabak and Grafvolluth,\nOfnir and Svafnir shall ever, methinks,\nGnaw at the twigs of the tree.\"\n- Dwarven Traditional Poetry"),
	Background = "The dragons of Norse mythology, also referred to as serpents, had different physical characteristics than the dragons of medieval folklore. The Norse dragons were wingless, and entirely or partially limbless. The most famous of them were Jormungand and Nidhogg. The ~<Grimnismol~> includes a list of other notable ones, Svafnir among them. The constellation Draco (\"Dragon\") represents the giant serpent of Greek mythology, Ladon.",
	Image = {"file", "neutral/units/wyrm.png", "size", {110, 108}},
	Animations = "animations-wyrm", Icon = "icon-wyrm",
	Costs = {"time", 250, "gold", 2500},
	Strength = 27,
	Dexterity = 10,
	Intelligence = 5, -- same as a gryphon
	Charisma = 8, -- same as a gryphon
	Speed = 10,
	HitPoints = 150,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 6,
	Armor = 10, BasicDamage = 36, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 65,
	Points = 300,
	Demand = 3,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	Level = 3,
	PeopleAversion = true,
	Predator = true,
	Flesh = true,
	Carnivore = true,
	Dragon = true,
	PierceDamage = true,
	Variations = {
		--[[
		{
			"variation-id", "young",
--			"file", "neutral/units/wyrm_young.png",
			"frame-size", {55, 54},
			"upgrade-required", "upgrade-wyrm-child"
		},
		--]]
		{
			"variation-id", "green-scales",
			"upgrade-forbidden", "upgrade-vicious"
--			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "green-scales-vicious",
			"icon", "icon-wyrm-vicious",
			"upgrade-required", "upgrade-vicious"
--			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "blue-scales",
			"file", "neutral/units/wyrm_blue_scales.png",
			"icon", "icon-wyrm-blue-scales",
			"upgrade-forbidden", "upgrade-vicious"
--			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "cyan-scales",
			"file", "neutral/units/wyrm_cyan_scales.png",
			"icon", "icon-wyrm-cyan-scales",
			"upgrade-forbidden", "upgrade-vicious"
--			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "purple-scales",
			"file", "neutral/units/wyrm_purple_scales.png",
			"icon", "icon-wyrm-purple-scales",
			"upgrade-forbidden", "upgrade-vicious"
--			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "red-scales",
			"file", "neutral/units/wyrm_red_scales.png",
			"icon", "icon-wyrm-red-scales",
			"upgrade-forbidden", "upgrade-vicious"
--			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "yellow-scales",
			"file", "neutral/units/wyrm_yellow_scales.png",
			"icon", "icon-wyrm-yellow-scales",
			"upgrade-forbidden", "upgrade-vicious"
--			"upgrade-forbidden", "upgrade-wyrm-child"
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "critter-acknowledge",
--		"ready", "critter-ready",
--		"help", "critter-help",
		"dead", "drake-dead",
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

DefineUnitType("unit-slime", { Name = _("Slime"),
	Parent = "unit-template-fauna-unit",
	Species = "slime",
	Class = "slime",
	Description = _("Slimes are amorphous organic beings which can be found throughout the dark plains and caves of Nidavellir. Little is known about their composition, except that they are acidic to the touch."),
	Image = {"file", "neutral/units/slime_small.png", "size", {32, 32}},
	Animations = "animations-slime", Icon = "icon-slime",
	Strength = 12,
	Dexterity = 1,
	Intelligence = 1,
	Charisma = 1,
	Speed = 3,
	HitPoints = 30,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {31, 31},
	Armor = 10,
	SightRange = 3,
	BasicDamage = 5, Missile = "missile-none",
	Accuracy = 8,
	Evasion = 1,
	MaxAttackRange = 1,
	Priority = 37,
	Points = 10,
	Demand = 1,
	Type = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	Gender = "asexual",
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
--		"help", "critter-help",
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

DefineUnitType("unit-bird", { Name = _("Bird"),
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
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 5,
	BasicDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Type = "fly",
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
--		"help", "critter-help",
		"dead", "bird-dead",
		"hit", "claw-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-crow", { Name = _("Crow"),
	Parent = "unit-template-fauna-unit",
	Species = "crow",
	Image = {"file", "neutral/units/bird_black.png", "size", {32, 32}},
	Animations = "animations-bird", Icon = "icon-gryphon",
	Strength = 1,
	Dexterity = 15,
	Intelligence = 3,
	Charisma = 6,
	Speed = 14,
	HitPoints = 5,
	DrawLevel = 45,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 5,
	BasicDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Type = "fly",
	IsNotSelectable = true,
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
	HiddenInEditor = true,
	Sounds = {
		"selected", "crow-selected",
		"acknowledge", "crow-selected",
		"ready", "crow-selected",
		"idle", "crow-selected",
--		"help", "critter-help",
		"dead", "bird-dead",
		"hit", "claw-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-bat", { Name = _("Bat"),
	Parent = "unit-template-fauna-unit",
	Species = "bat",
	Image = {"file", "neutral/units/bat.png", "size", {32, 32}},
	Animations = "animations-bird", Icon = "icon-rat",
	Strength = 1,
	Dexterity = 15,
	Intelligence = 2,
	Charisma = 4,
	Speed = 14,
	HitPoints = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 2, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Type = "fly-low",
	IsNotSelectable = true,
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 50,
	RandomMovementDistance = 8,
	PeopleAversion = true,
	Flesh = true,
	Insectivore = true,
	PierceDamage = true,
	HiddenInEditor = true,
	Sounds = {
		"selected", "bat-selected",
		"acknowledge", "bat-selected",
		"ready", "bat-selected",
--		"help", "critter-help",
		"dead", "rat-dead",
		"hit", "bite-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-blood-bat", { Name = _("Blood Bat"),
	Parent = "unit-template-fauna-unit",
	Species = "blood-bat",
	Image = {"file", "neutral/units/blood_bat.png", "size", {64, 64}},
	Animations = "animations-bird", Icon = "icon-rat",
	Strength = 9, -- between the bat and dread bat
	Dexterity = 18, -- between the bat and dread bat
	Intelligence = 2, -- same the bat and the dread bat
	Charisma = 5, -- between the bat and dread bat
	Speed = 14,
	HitPoints = 45,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 6, Missile = "missile-none",
	Accuracy = 12,
	Evasion = 12,
	MaxAttackRange = 1,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Priority = 37,
	Points = 40,
	Demand = 1,
	Type = "fly-low",
	IsNotSelectable = true,
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 50,
	RandomMovementDistance = 8,
	PeopleAversion = true,
	Flesh = true,
	Predator = true,
	Carnivore = true,
	Insectivore = true, -- so that they eat snigills
	PierceDamage = true,
	HiddenInEditor = true,
	Sounds = {
		"selected", "bat-selected",
		"acknowledge", "bat-selected",
		"ready", "bat-selected",
--		"help", "critter-help",
		"dead", "rat-dead",
		"hit", "bite-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dread-bat", { Name = _("Dread Bat"),
	Parent = "unit-template-fauna-unit",
	Species = "dread-bat",
	Image = {"file", "neutral/units/dread_bat.png", "size", {64, 64}},
	Animations = "animations-bird", Icon = "icon-rat",
	Strength = 17,
	Dexterity = 22,
	Intelligence = 2,
	Charisma = 6,
	Speed = 14,
	HitPoints = 75,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 10, Missile = "missile-none",
	Armor = 2,
	Accuracy = 12,
	Evasion = 12,
	MaxAttackRange = 1,
	DaySightRangeBonus = -1,
	NightSightRangeBonus = 1,
	Priority = 37,
	Points = 80,
	Demand = 1,
	Type = "fly-low",
	IsNotSelectable = true,
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 50,
	RandomMovementDistance = 8,
	PeopleAversion = true,
	Flesh = true,
	Predator = true,
	Carnivore = true,
	Insectivore = true, -- so that they eat snigills
	PierceDamage = true,
	HiddenInEditor = true,
	Sounds = {
		"selected", "bat-selected",
		"acknowledge", "bat-selected",
		"ready", "bat-selected",
--		"help", "critter-help",
		"dead", "rat-dead",
		"hit", "bite-attack",
		"miss", "attack-miss"
	}
} )
