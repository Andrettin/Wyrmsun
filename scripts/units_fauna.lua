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
--      (c) Copyright 2016-2019 by Andrettin
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
	Hidden = true,
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
	Hidden = true,
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
	Type = "land",
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 50,
	Coward = true,
	Insect = true,
	Herbivore = true,
	Hidden = true,
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
	Hidden = true,
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
	Hidden = true,
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
	Hidden = true,
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
	Hidden = true,
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

DefineUnitType("unit-frog", {
	Name = "Frog",
	Parent = "unit-template-fauna-unit",
	Species = "frog",
	--Description = "Frog",
	--Background = " A \"Frog\" is a kind of \"Amphibian\".",
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
	Hidden = true,
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

DefineUnitType("unit-horse", {
	Name = "Horse",
	Parent = "unit-template-fauna-unit",
	Species = "horse",
	Description = "Horses are valuable for their speed as well as their endurance, making excellent mounts. The creatures were a vital component of any army, and was an essential part of the lifestyle of the peoples of the Eurasian steppes.",
	Quote = "\"Glath and Gyllir, Gler and Skeithbrimir,\nSilfrintopp and Sinir,\nGisl and Falhofnir, Golltopp and Lettfeti,\nOn these steeds the gods shall go\nWhen dooms to give each day they ride\nTo the ash-tree Yggdrasil.\"\n- Grimnismol (Grimnir)", -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
	Image = {"file", "neutral/units/horse.png", "size", {72, 72}},
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
	RandomMovementDistance = 6,
	Flesh = true,
	Herbivore = true,
	BluntDamage = true,
	Coward = true,
	PersonalNames = {
		"Falhofnir", -- Falhófnir was a horse from Norse mythology (name means "barrel-hoof" or "hollow-hoof" according to Cleasby and "Hollow-Hoofed" according to Bellows); Bellows gives "Falhofnir" instead; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 96-97; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 139.
		"Freyfaxi", -- Freyfaxi was a horse from Norse mythology (from the Hrafnkels Saga); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 145.
		"Gisl", -- Gisl was a horse from Norse mythology (name means "Gleaming"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
		"Glath", -- Glath was a horse from Norse mythology (name means "Joyous"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
		"Glaum", -- Glaum was the horse of Atli (Attila) in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 493.
		"Gler", -- Gler was a horse from Norse mythology (name means "Shining"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
		"Glofaxi", -- Glófaxi was a horse (presumably) from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 145.
		"Grani", -- Gráni was Sigurd's horse in Norse mythology; Cleasby gives "Gráni", while Bellows gives "Grani"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 259, 303, 342; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 212.
		"Gullfaxi", -- Gullfaxi was the giant Hrungnir's horse in Norse mythology; name given by Cleasby as meaning "gold-mane"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 126; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 145.
		"Gyllir", -- Gyllir was a horse from Norse mythology (name means "Golden"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
		"Hrimfaxi", -- Hrímfaxi was a horse from Norse mythology (from the Edda), which was the mount of Night; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 145; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 19; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 62.
		"Lettfeti", -- Léttfeti was a horse from Norse mythology (name means "light-pacer" according to Cleasby and "light-feet" according to Bellows); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 96-97; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 153, 386.
		"Melnir", -- Melnir was a horse from Norse mythology (name means "Bit-Bearer" according to Bellows); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 306; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 423.
		"Mylnir", -- Mylnir was a horse from Norse mythology (name means "The Biter"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 306.
		"Semik", -- Šemík was Horymír's horse in the Praguer legend; Source: Alena Ježková, "77 Prague Legends", 2006, p. 154.
		"Sinir", -- Sinir was a horse from Norse mythology (name means "Sinewy" according to Bellows); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
		"Silfrintopp", -- Silfrintoppr was a horse from Norse mythology; Cleasby gives the meaning of "silver-tuft", while Bellows gives "silver-topped" instead; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 528, 636.
		"Skeidbrimir", -- Skeiðbrímir was a horse from Norse mythology (Bellows gives the name as meaning "Swift-Going"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 543.
		"Skinfaxi", -- "Skínfaxi"; it was a sun-horse from Norse mythology (according to Bellows the name means "Shining-Mane"; Cleasby gives the meaning as "Sheen-mane" instead), which was the mount of Day; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 71; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 145, 547; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 19; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 62.
		"Sleipnir", -- Sleipnir was Odin's eight-legged horse in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 102, 159, 196; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 567.
		"Slongvir", -- Slöngvir was the horse of Adils (Yngling) of Sweden in the Ynglingasaga; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 245.
		"Sporvitnir", -- Sporvitnir was a horse from Norse mythology (name means "Spur-Wolf"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 306.
		"Svathilfari", -- Svathilfari was a giant's horse in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 159, 196.
		"Sveggjuth", -- Sveggjuth was a horse from Norse mythology (name means "Lithe"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 304.
		"Sviputh", -- Sviputh was a horse from Norse mythology (name means "Swift"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 304.
		"Vigblaer", -- Vígblær was Helgi's horse in Norse mythology (according to Cleasby its name means "War-breeze"; according to Bellows "Battle-Breather"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 325; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 715.
		"Vingskornir", -- Vingskornir was Brynhild's horse in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 384.
		"male", "Alsvid", -- Alsviðr was one of the (male) sun horses from Norse mythology (name means "All-Swift", as given by both sources); also a constellation; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 99; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 19; Source: Anders Andrén, "Behind Heathendom: Archaeological Studies of Old Norse Religion", 2005, p. 124.
		"male", "Arvak", -- "Arvakr"; Arvak was one of the (male) sun horses from Norse mythology (name means "Early Waker"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 99; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 19; Source: Anders Andrén, "Behind Heathendom: Archaeological Studies of Old Norse Religion", 2005, p. 124.
		"male", "Gulltopp" -- Gulltoppr was Heimdall's (male) horse from Norse mythology; Cleasby gives Gulltoppr (meaning "gold-tuft"); Bellows gives Golltop instead (meaning "Gold-Topped"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 96-97; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 220-221, 636; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 18.
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
	Parent = "unit-horse",
	Species = "unicorn",
	Description = "Unicorns inhabit the woods of Alfheim, frequently being used by elves as mounts.",
	Image = {"file", "neutral/units/unicorn.png", "size", {72, 72}},
	Icon = "icon-unicorn",
	Strength = 20,
	Dexterity = 17,
	HitPoints = 45, -- more resilient than a horse, +15 hit points
	BasicDamage = 4,
	Accuracy = 12, -- more dextrous than a horse
	Evasion = 12, -- more dextrous than a horse
	Points = 25,
	Variations = {}
} )

DefineUnitType("unit-goat", {
	Name = "Goat",
	Parent = "unit-template-fauna-unit",
	Species = "goat",
	Description = "Goats are one of the most common farm animals on Earth, being used both for dairy and meat.",
	Image = {"file", "neutral/units/goat.png", "size", {54, 54}},
	Animations = "animations-yale", Icon = "icon-goat",
	Strength = 13,
	Dexterity = 13,
	Intelligence = 2,
	Charisma = 4,
	Speed = 13,
	HitPoints = 15,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 37,
	Points = 5,
	Demand = 1,
	Type = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 5,
	Coward = true,
	Flesh = true,
	Herbivore = true,
	BluntDamage = true,
	PersonalNames = {
		"Aegipan", -- Aegipan was a figure from Greek mythology which is represented by the constellation Capricorn; name means "Goat-Pan" or "Goat-All"
		"female", "Amaltheia", -- Amaltheia was a female goat from Greek mythology who fed child Zeus
		"female", "Heidrun", -- Heidrun was a female goat from Norse mythology
		"male", "Tanngnjost", -- Tanngnjóstr was one of Thor's male goats; the name means "teeth-gnasher"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 207.
		"male", "Tanngrisnir", -- Tanngrisnir was one of the goats who pulls Thor's chariot; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 625.
	},
	Sounds = {
		"selected", "goat",
		"acknowledge", "goat",
		"idle", "goat",
		"ready", "goat",
		"dead", "goat",
		"hit", "club-attack",
		"miss", "attack-miss",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
})

DefineUnitType("unit-yale", {
	Name = "Yale",
	Parent = "unit-goat",
	Species = "yale",
	Description = "Yales are caprid creatures who inhabit Nidavellir. They have sturdy, golden tusks and horns, and their fur is covered by golden spots. Dwarves often use them as mounts or as beasts of carry.",
	Image = {"file", "neutral/units/yale.png", "size", {72, 72}},
	Animations = "animations-yale", Icon = "icon-yale",
	Strength = 12, -- somewhat weaker than the horse
	Dexterity = 13, -- same as the horse
	HitPoints = 30,
	BasicDamage = 3,
	Points = 15,
	Coward = false,
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
		"dead", "yale-dead"
	}
} )

DefineUnitType("unit-boar", {
	Name = "Boar",
	Parent = "unit-template-fauna-unit",
	Species = "boar",
	Description = "Boars live in woodlands, and are often hunted for meat.",
	Image = {"file", "neutral/units/boar.png", "size", {72, 72}},
	Animations = "animations-melee-unit-new-movement", Icon = "icon-boar",
	Strength = 15,
	Dexterity = 10,
	Intelligence = 2,
	Charisma = 4,
	Speed = 13,
	HitPoints = 15,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 37,
	Points = 5,
	Demand = 1,
	Type = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 5,
	Flesh = true,
	Herbivore = true,
	BluntDamage = true,
	PersonalNames = {
		"Gullinbursti", -- Gullinbursti is Frey's boar in Norse mythology, given to him by the dwarf Brokk; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 52.
		"Hildisvini", -- Hildisvini is Freya's battle-boar in Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 100.
		"Saehrimnir" -- Saehrimnir is the boar who is boiled in Valhalla in Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 61.
	},
	Sounds = {
		"selected", "pig",
		"acknowledge", "pig",
		"idle", "pig",
		"ready", "pig",
		"dead", "pig",
		"hit", "club-attack",
		"miss", "attack-miss",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
})

DefineUnitType("unit-wolf", {
	Name = "Wolf",
	Parent = "unit-template-fauna-unit",
	Species = "wolf",
	Description = "Wolves are pack hunters who dwell in temperate woodlands.",
	Image = {"file", "neutral/units/wolf.png", "size", {76, 76}},
	Animations = "animations-melee-unit-new-movement", Icon = "icon-wolf",
	Strength = 13,
	Dexterity = 15,
	Intelligence = 2,
	Charisma = 6,
	Speed = 13,
	HitPoints = 45,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 12,
	Evasion = 12,
	Priority = 37,
	Points = 40,
	Demand = 1,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 5,
	PeopleAversion = true,
	Predator = true,
	Flesh = true,
	Carnivore = true,
	PierceDamage = true,
	PersonalNames = {
		"Fenrir", -- Fenrir is a massive wolf in Norse mythology, who was bound by the gods only with great effort; during Ragnarok he will kill Odin; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 193.
		"Freki", -- Freki is one of Odin's wolves in Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 61; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 31.
		"Geri", -- Geri is one of Odin's wolves in Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 61; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 31.
		"Hati", -- Hati is the wolf who pursues the moon in Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 63.
		"Hrodvitnir", -- alternative name for the wolf from Norse mythology, Fenrir; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 245.
		"Skoll" -- Skoll is the wolf who pursues the sun in Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 63.
	},
	Sounds = {
		"selected", "wolf-growl",
		"acknowledge", "wolf-growl",
		"idle", "wolf-growl",
		"ready", "wolf-growl",
		"dead", "wolf-dead",
		"hit", "bite-attack",
		"miss", "attack-miss",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
})

DefineUnitType("unit-gryphon", {
	Name = "Gryphon",
	Parent = "unit-template-fauna-unit",
	Species = "gryphon",
	Description = "Gryphons dwell in the dwarven homeworld of Nidavellir, predating smaller animals such as yales. Although many gryphons can be seen in the wild, dwarves have been domesticating the beasts for aeons, riding them into battle. The Gryphon Mountain is the greatest nesting area for wild gryphons.",
	Quote = "\"What's this? Gryphons in my castle? Remove the beasts!\" - Relgorn, Chieftain of the Norlund Clan",
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
	PierceDamage = true,
	PersonalNames = {
		"female", "Kaasa", -- female gryphon name in Battle for Wesnoth
		"female", "Kayya", -- female gryphon name in Battle for Wesnoth
		"female", "Keyya", -- female gryphon name in Battle for Wesnoth
		"female", "Kiira", -- female gryphon name in Battle for Wesnoth
		"female", "Korra", -- female gryphon name in Battle for Wesnoth
		"male", "Graa", -- male gryphon name in Battle for Wesnoth
		"male", "Greaa", -- male gryphon name in Battle for Wesnoth
		"male", "Gree", -- male gryphon name in Battle for Wesnoth
		"male", "Kaaa", -- male gryphon name in Battle for Wesnoth
		"male", "Kassshh", -- male gryphon name in Battle for Wesnoth
		"male", "Kessshh", -- male gryphon name in Battle for Wesnoth
		"male", "Korro", -- male gryphon name in Battle for Wesnoth
		"male", "Kraa", -- male gryphon name in Battle for Wesnoth
		"male", "Kuu", -- male gryphon name in Battle for Wesnoth
		"male", "Kzaaa", -- male gryphon name in Battle for Wesnoth
		"male", "Kzuuu", -- male gryphon name in Battle for Wesnoth
		"Graak", -- gryphon in Battle for Wesnoth: Heir to the Throne
		"Graik", -- gryphon in Battle for Wesnoth: Heir to the Throne
		"Griak", -- gryphon in Battle for Wesnoth: Heir to the Throne
		"Grook", -- gryphon in Battle for Wesnoth: Heir to the Throne
		"Gruak", -- gryphon in Battle for Wesnoth: Heir to the Throne
		"Kaara", -- gryphon in Battle for Wesnoth: The Hammer of Thursagan
		"Kawn", -- gryphon in Battle for Wesnoth: The Sceptre of Fire
		"Krawg" -- gryphon in Battle for Wesnoth: The Sceptre of Fire
	},
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
	Name = "Wyrm",
	Parent = "unit-template-fauna-unit",
	Species = "wyrm",
	Description = "These enormous draconic creatures dwell in Nidavellir's underground, living off the meat of animals and intelligent beings alike. Wyrms are as territorial as they are rare, and will attack any that they perceive as a threat. Kobolds worship these beasts, believing them to be their ancestors. Some tribes go as far as living near a wyrm's lair, keeping it harmless by maintaining a low profile and feeding it well - sometimes even with offerings of kobolds.",
	Quote = "\"More wyrms there are beneath the ash\nThan an unwise fool would think\"\n- Dwarven Traditional Poetry",
	Background = "The dragons of Norse mythology, also referred to as serpents, had different physical characteristics than the dragons of medieval folklore. The Norse dragons were wingless, and entirely or partially limbless. The most famous of them were Jormungand and Nidhogg. The [url=literary_text:grimnismol]Grimnismol[/url] includes a list of other notable ones, Svafnir among them. The constellation Draco (\"Dragon\") represents the giant serpent of Greek mythology, Ladon.",
	Image = {"file", "neutral/units/wyrm.png", "size", {110, 108}},
	Animations = "animations-wyrm", Icon = "icon-wyrm",
	Costs = {"time", 250, "copper", 2500},
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
	Level = 3,
	PeopleAversion = true,
	Predator = true,
	Flesh = true,
	Carnivore = true,
	Dragon = true,
	PierceDamage = true,
	DehydrationImmunity = 1,
	Drops = {"unit-wyrm-heart"},
	PersonalNames = {
		"Jormungand", -- Wyrm/dragon in Norse mythology
		"Ladon", -- Wyrm/dragon in Greek mythology
		"Svafnir" -- Wyrm/dragon in Norse mythology
	},
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
--			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "blue-scales",
			"file", "neutral/units/wyrm_blue_scales.png",
			"icon", "icon-wyrm-blue-scales",
--			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "cyan-scales",
			"file", "neutral/units/wyrm_cyan_scales.png",
			"icon", "icon-wyrm-cyan-scales",
--			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "purple-scales",
			"file", "neutral/units/wyrm_purple_scales.png",
			"icon", "icon-wyrm-purple-scales",
--			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "red-scales",
			"file", "neutral/units/wyrm_red_scales.png",
			"icon", "icon-wyrm-red-scales",
--			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "yellow-scales",
			"file", "neutral/units/wyrm_yellow_scales.png",
			"icon", "icon-wyrm-yellow-scales",
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
	TileSize = {1, 1}, BoxSize = {31, 31},
	Armor = 10,
	SightRange = 3,
	AcidDamage = 5, Missile = "missile-none",
	Accuracy = 8,
	Evasion = 1,
	MaxAttackRange = 1,
	Priority = 37,
	Points = 20,
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
	Hidden = true,
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

DefineUnitType("unit-crow", {
	Name = "Crow",
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
	Hidden = true,
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

-- Serpent Names:
-- "Apofis", -- serpent which appears in Egyptian mythology, representing the utter lack of order; Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 104, 107.
-- "Ikher", -- serpent in Egyptian mythology; Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 119.
-- "Irto", -- serpent which appears in Egyptian mythology, having created the earth; Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 101, 103-104.
-- "Kematef" -- serpent which appears in Egyptian mythology; Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 104.

-- Bull Names:
-- "Apis", -- name of a bull in Egyptian mythology; Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 119.
-- "Buchis", -- name of a bull in Egyptian mythology; Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 119.
-- "Mnevis" -- name of a bull in Egyptian mythology; Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 119.

-- Cow Names:
-- "Audhumla", -- Auðhumla"; name of a cow in Norse mythology; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 59.

-- Raven Names:
-- "Hugin", -- "Huginn", one of Odin's ravens in Norse mythology; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 31.
-- "Munin", -- "Muninn", one of Odin's ravens in Norse mythology; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 31.

-- Squirrel Names:
 -- "Ratatosk", -- Ratatoskr is a squirrel in Norse mythology; Cleasby gives the meaning of the name as "Tusk the traveller" or "the climber Tusk", while Bellows gives the meaning as "The Swift-Tusked"; "rata" is presumably the genitive form; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 317, 483, 638; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 97.