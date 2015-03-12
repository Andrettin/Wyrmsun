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
	"unit-germanic-worker", "unit-germanic-warrior", "unit-germanic-archer", "unit-germanic-old-man",
	"unit-germanic-town-hall", "unit-germanic-farm", "unit-germanic-barracks",
	"unit-germanic-carpenters-shop", "unit-germanic-smithy",
	"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield",
	"upgrade-germanic-barbed-arrow",
	"upgrade-teuton-civilization",
	"unit-teuton-worker", "unit-teuton-swordsman", "unit-teuton-archer",
	"unit-teuton-catapult",
	"unit-teuton-town-hall", "unit-teuton-stronghold",
	"unit-teuton-farm", "unit-teuton-barracks",
	"unit-teuton-lumber-mill", "unit-teuton-smithy",
	"unit-teuton-watch-tower", "unit-teuton-guard-tower",
	"upgrade-teuton-spatha",
	"upgrade-teuton-masonry",
	"unit-celt-farm",
	"upgrade-celt-civilization",
	"unit-dwarven-miner", "unit-dwarven-militia", "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
	"unit-dwarven-scout", "unit-dwarven-ballista", "unit-dwarven-gryphon-rider",
	"unit-dwarven-town-hall", "unit-dwarven-stronghold", 
	"unit-dwarven-mushroom-farm", "unit-dwarven-barracks",
	"unit-dwarven-lumber-mill", "unit-dwarven-smithy",
	"unit-dwarven-sentry-tower", "unit-dwarven-guard-tower",
	"upgrade-dwarven-broad-axe", "upgrade-dwarven-great-axe", "upgrade-dwarven-shield-1", "upgrade-dwarven-shield-2",
	"upgrade-dwarven-throwing-axe-1", "upgrade-dwarven-throwing-axe-2", "upgrade-dwarven-ballista-bolt-1", "upgrade-dwarven-ballista-bolt-2",
	"upgrade-dwarven-masonry",
	"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-herbalist", "unit-gnomish-caravan",
	"unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks",
	"unit-goblin-worker", "unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-thief",
	"unit-goblin-war-machine", "unit-goblin-glider",
	"unit-goblin-town-hall", "unit-goblin-mess-hall", "unit-goblin-farm", "unit-goblin-lumber-mill", "unit-goblin-smithy",
	"upgrade-goblin-masonry",
	"unit-kobold-footpad",
	"unit-elven-swordsman",
	"unit-orc-spearthrower", "unit-orc-sea-orc", "unit-orc-shaman",
	"unit-rat",
	"unit-slime", "unit-yale", "unit-gryphon", "unit-wyrm", "unit-water-elemental",
	"unit-gold-mine",
	"unit-coal-mine",
	"unit-mercenary-camp",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
	"unit-hero-durin", "unit-hero-durin-thane",
	"unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane",
	"unit-hero-baglur", "unit-hero-baglur-thane",
	"unit-hero-thursagan", "unit-hero-durstorn",
	"unit-hero-greebo"
}

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

DefineUnitType("unit-rat", { Name = "Rat",
	Class = "vermin",
	Description = _("Rats are rodents of medium size and long tails. They usually live in forests or within human dwellings. They are often reviled for their carrying of diseases."),
	Image = {"file", "neutral/units/rat.png", "size", {72, 72}},
	Animations = "animations-rat", Icon = "icon-rat",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 5,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 2, ComputerReactionRange = 1, PersonReactionRange = 1,
	BasicDamage = 1, PiercingDamage = 1, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 15,
	Evasion = 15,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Type = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 5,
	organic = true,
	Fauna = true,
	ChildUpgrade = "upgrade-child",
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
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-yale", { Name = "Yale",
	Class = "grazer",
	Description = _("Yales are caprid creatures who inhabit Nidavellir. They have sturdy, golden tusks and horns, and their fur is covered by golden spots. Dwarves often use them as mounts or as a source of food."),
	Image = {"file", "neutral/units/yale.png", "size", {72, 72}},
	Animations = "animations-yale", Icon = "icon-rat",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 10,
	HitPoints = 30,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 2, ComputerReactionRange = 1, PersonReactionRange = 1,
	BasicDamage = 2, PiercingDamage = 1, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 37,
	BasePoints = 15,
	Demand = 1,
	Type = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 6,
	organic = true,
	Fauna = true,
	IsNotSelectable = true, -- until it gets an icon
	PeopleAversion = true,
	PersonalNames = {"Amaltheia", "Heidrun"}, -- names of mythological caprids: Aegipan (figure from Greek mythology which is represented by the constellation Capricorn; name means "Goat-Pan" or "Goat-All"), Amaltheia (female goat from Greek mythology who fed child Zeus), Heidrun (female goat from Norse mythology)
	PersonalNamePrefixes = {"Aegi"},
	PersonalNameSuffixes = {"pan"},
	ChildUpgrade = "upgrade-child",
	Variations = {
		{
			"variation-id", "brown-fur",
			"file", "neutral/units/yale_young.png",
			"frame-size", {36, 36},
			"upgrade-required", "upgrade-child"
		},
		{
			"variation-id", "brown-fur",
			"upgrade-forbidden", "upgrade-child"
		}
	},
	Sounds = {
		"selected", "yale-selected",
		"acknowledge", "yale-acknowledge",
--		"ready", "critter-ready",
--		"help", "critter-help",
		"dead", "yale-dead",
		"hit", "club-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gryphon", { Name = _("Gryphon"),
	Class = "flying-predator",
	Description = _("Amongst the beasts which dwell in the dwarven homeworld of Nidavellir are the gryphons. Although many can be seen in the wild, dwarves have been domesticating gryphons for aeons. It is unknown if the wild gryphons are the descendants of gryphons who avoided domestication, or if descend from gryphons escaped from captivity who managed to survive on their own. Not coincidentally, the Gryphon Mountain is the greatest nesting area for wild gryphons."),
	Quote = _("\"What's this? Gryphons in my castle? Remove the beasts!\" - Relgorn, Chieftain of the Norlund Clan"),
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
	Accuracy = 10,
	Evasion = 10,
	Priority = 65,
	Points = 150,
	Demand = 1,
	Type = "fly",
--	ShadowFly = {Value = 1, Enable = true}, -- deactivated the shadow because it was appearing on top of the unit
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 12,
	organic = true,
	Fauna = true,
	Predator = true,
	PeopleAversion = true,
	ChildUpgrade = "upgrade-gryphon-child",
	PersonalNames = {
		"Graa", "Greaa", "Gree", "Kaaa", "Kaasa", "Kassshh", "Kayya", "Kessshh", "Keyya", "Kiira", "Korra", "Korro", "Kraa", "Kuu", "Kzaaa", "Kzuuu",
		"Kawn", "Krawg", -- names from the "Sceptre of Fire" Wesnoth campaign
		"Graak", "Graik", "Griak", "Grook", "Gruak" -- names from the "Gryphon Mountain" scenario of the "Heir to the Throne" Wesnoth campaign
	},
	Variations = {
		{
			"variation-id", "young",
			"file", "neutral/units/gryphon_young.png",
			"frame-size", {50, 50},
			"upgrade-required", "upgrade-gryphon-child"
		},
		{
			"variation-id", "brown-feathers",
			"upgrade-forbidden", "upgrade-gryphon-child"
		},
		{
			"variation-id", "blue-feathers",
			"file", "neutral/units/gryphon_blue_feathers.png",
			"icon", "icon-gryphon-blue-feathers",
			"upgrade-forbidden", "upgrade-gryphon-child"
		},
		{
			"variation-id", "gray-feathers",
			"file", "neutral/units/gryphon_gray_feathers.png",
			"icon", "icon-gryphon-gray-feathers",
			"upgrade-forbidden", "upgrade-gryphon-child"
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "critter-acknowledge",
		"ready", "gryphon-ready",
--		"help", "critter-help",
		"dead", "gryphon-dead",
		"hit", "claw-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-wyrm", { Name = _("Wyrm"),
	Class = "predator",
	Description = _("These enormous creatures dwell in Nidavellir's underground, living off the meat of animals and intelligent beings alike. Wyrms are as territorial as they are rare, and will attack any that they perceive as a threat. Kobolds worship these beasts, believing them to be their ancestors, and some tribes even seek to live near a wyrm's lair, keeping it calm by maintaining a low profile and feeding it well - sometimes even with offerings of kobolds."),
	Quote = _("\"More wyrms there are | beneath the ash / Than an unwise ape would think; / Goin and Moin, | Grafvitnir's sons, / Grabak and Grafvolluth, / Ofnir and Svafnir | shall ever, methinks, / Gnaw at the twigs of the tree.\" - Dwarven Traditional Poetry"),
	Background = "The dragons of Norse mythology, also referred to as serpents, had different physical characteristics than the dragons of medieval folklore. The Norse dragons were wingless, and entirely or partially limbless. The most famous of them were Jormungand and Nidhogg. The ~<Grimnismol~> includes a list of other notable ones, Svafnir among them. The constellation Draco (\"Dragon\") represents the giant serpent of Greek mythology, Ladon.",
	Image = {"file", "neutral/units/wyrm.png", "size", {110, 108}},
	Animations = "animations-wyrm", Icon = "icon-wyrm",
	NeutralMinimapColor = {192, 192, 192},
	Costs = {"time", 250, "gold", 2500},
	Speed = 10,
	HitPoints = 150,
	DrawLevel = 40,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 6, ComputerReactionRange = 8, PersonReactionRange = 6,
	Armor = 10, BasicDamage = 24, PiercingDamage = 12, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 65,
	BasePoints = 300,
	Demand = 1,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	RandomMovementProbability = 1,
	Fauna = true,
	StartingLevel = 3,
	PeopleAversion = true,
	Predator = true,
	ChildUpgrade = "upgrade-wyrm-child",
	PersonalNames = {"Goin", "Jormungand", "Ladon", "Moin", "Ofnir", "Svafnir"}, -- Grabak = Gray-Back, Midgardsorm = Midgard Serpent, Nidhogg = Corpse Tearer / The Dread Biter, Ofnir = The Bewilderer, Svafnir = The Sleep-Bringer
	PersonalNamePrefixes = {"Gra", "Graf", "Nid"}, -- Gra = Gray, Graf = Gnawer / Gnawing, Nid = Corpse / Dread
	PersonalNameSuffixes = {"bak", "hogg", "orm", "vitnir", "volluth"}, -- Bak = Back, Hogg = Tearer / Biter, Orm = Serpent, Vitnir = Wolf, Volluth = Field
	Variations = {
		{
			"variation-id", "young",
			"file", "neutral/units/wyrm_young.png",
			"frame-size", {55, 54},
			"upgrade-required", "upgrade-wyrm-child"
		},
		{
			"variation-id", "green-scales",
			"upgrade-forbidden", "upgrade-vicious",
			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "green-scales-vicious",
			"icon", "icon-wyrm-vicious",
			"upgrade-required", "upgrade-vicious",
			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "blue-scales",
			"file", "neutral/units/wyrm_blue_scales.png",
			"icon", "icon-wyrm-blue-scales",
			"upgrade-forbidden", "upgrade-vicious",
			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "cyan-scales",
			"file", "neutral/units/wyrm_cyan_scales.png",
			"icon", "icon-wyrm-cyan-scales",
			"upgrade-forbidden", "upgrade-vicious",
			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "purple-scales",
			"file", "neutral/units/wyrm_purple_scales.png",
			"icon", "icon-wyrm-purple-scales",
			"upgrade-forbidden", "upgrade-vicious",
			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "red-scales",
			"file", "neutral/units/wyrm_red_scales.png",
			"icon", "icon-wyrm-red-scales",
			"upgrade-forbidden", "upgrade-vicious",
			"upgrade-forbidden", "upgrade-wyrm-child"
		},
		{
			"variation-id", "yellow-scales",
			"file", "neutral/units/wyrm_yellow_scales.png",
			"icon", "icon-wyrm-yellow-scales",
			"upgrade-forbidden", "upgrade-vicious",
			"upgrade-forbidden", "upgrade-wyrm-child"
		}
	},
	Sounds = {
		"selected", "click",
--		"acknowledge", "critter-acknowledge",
--		"ready", "critter-ready",
--		"help", "critter-help",
		"dead", "drake-dead",
		"hit", "bite-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-slime", { Name = _("Slime"),
	Class = "slime",
	Description = _("Slimes are amorphous organic beings which can be found throughout the dark plains and caves of Nidavellir. Little is known about their composition, except that they are acidic to the touch."),
	Image = {"file", "neutral/units/slime_small.png", "size", {32, 32}},
	Animations = "animations-slime", Icon = "icon-slime",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 15,
	DrawLevel = 35,
	TileSize = {1, 1}, BoxSize = {31, 31},
	Armor = 10,
	SightRange = 2, ComputerReactionRange = 1, PersonReactionRange = 1,
	BasicDamage = 2, PiercingDamage = 1, Missile = "missile-none",
	Accuracy = 5,
	Evasion = 1,
	MaxAttackRange = 1,
	Priority = 37,
	Points = 2,
	Demand = 1,
	Type = "land",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true,
	RandomMovementProbability = 1,
	Gender = 3, -- 1 = Male, 2 = Female, 3 = Asexual
	organic = true,
	Fauna = true,
	PeopleAversion = true,
	Slime = true,
	ChildUpgrade = "upgrade-child",
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
		"dead", "slime-dead" }
} )

DefineUnitType("unit-bee", { Name = _("Bee"),
	Image = {"file", "neutral/units/Bee.png", "size", {6, 6}},
	Animations = "animations-bee", Icon = "icon-gryphon",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 44,
	TileSize = {1, 1}, BoxSize = {15, 15},
	SightRange = 1, ComputerReactionRange = 1, PersonReactionRange = 1,
	BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Priority = 5,
	Points = 1,
	Demand = 1,
	Type = "fly-low",
	NonSolid = true,
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 50,
	organic = true,
	Coward = true,
	Fauna = true,
	ChildUpgrade = "upgrade-bee-child",
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

DefineUnitType("unit-bird", { Name = _("Bird"),
	Image = {"file", "neutral/units/bird_brown.png", "size", {32, 32}},
	Animations = "animations-bird", Icon = "icon-gryphon",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 14,
	HitPoints = 5,
	DrawLevel = 45,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 2, ComputerReactionRange = 1, PersonReactionRange = 1,
	BasicDamage = 1, PiercingDamage = 1, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Type = "fly",
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 50,
	RandomMovementDistance = 12,
	organic = true,
	Coward = true,
	Fauna = true,
	ChildUpgrade = "upgrade-child",
	Variations = {
		{
			"variation-id", "black",
			"file", "neutral/units/bird_black.png"
		},
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
--		"help", "critter-help",
		"dead", "bird-dead",
		"hit", "claw-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-bat", { Name = _("Bat"),
	Image = {"file", "neutral/units/bat.png", "size", {32, 32}},
	Animations = "animations-bird", Icon = "icon-rat",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 14,
	HitPoints = 5,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 2, ComputerReactionRange = 1, PersonReactionRange = 1,
	BasicDamage = 1, PiercingDamage = 1, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Type = "fly-low",
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 50,
	RandomMovementDistance = 8,
	organic = true,
	Fauna = true,
	PeopleAversion = true,
	ChildUpgrade = "upgrade-child",
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

--UnitTypeFiles["unit-gold-mine"] = {
--	swamp = "tilesets/swamp/neutral/buildings/gold_mine.png"
--}

DefineUnitType("unit-gold-mine", { Name = _("Gold Mine"),
	Description = _("Gold is a crucial metal for most societies, as it serves both as a durable stock of value, and as a means of exchange with which a myriad of goods and services can be traded for."),
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
	Accuracy = 0,
	Evasion = 0,
	Priority = 0,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	BuildingRules = {
		{
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-stronghold"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-germanic-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-gnomish-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-stronghold"}
		}
	},
	GivesResource = "gold", CanHarvest = true,
	Sounds = {
		"selected", "gold-mine-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building destroyed"} } )

DefineUnitType("unit-coal-mine", { Name = _("Coal Mine"),
	Description = _("Coal is a valuable heating material."),
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
	Accuracy = 0,
	Evasion = 0,
	Priority = 0,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	BuildingRules = {
		{
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-dwarven-stronghold"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-germanic-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-gnomish-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-goblin-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-town-hall"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-teuton-stronghold"}
		}
	},
	GivesResource = "coal", CanHarvest = true,
	Sounds = {
		"selected", "gold-mine-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building destroyed"} } )

DefineUnitType("unit-mercenary-camp", { Name = _("Mercenary Camp"),
	Class = "mercenary-camp",
	Description = _("This camp houses a number of mercenary groups, who will offer their talents for hire."),
	Image = {"file", "neutral/buildings/mercenary_camp.png", "size", {96, 99}},
	NeutralMinimapColor = {192, 192, 192},
	Animations = "animations-mercenary-camp", Icon = "icon-mercenary-camp",
	Costs = {"time", 200, "gold", 700, "lumber", 450},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 800,
	DrawLevel = 20,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 30, AnnoyComputerFactor = 35,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "barracks-acknowledge",
--		"ready", "barracks-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"} } )

DefineUnitType("unit-tree-stump", { Name = _("Tree Stump"),
	Image = {"file", "neutral/buildings/tree_stump.png", "size", {72, 72}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-tree-stump", Icon = "icon-tree-stump",
	Speed = 0,
	HitPoints = 20,
	DrawLevel = 20,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Type = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	MaxOnBoard = 1,
	CanTransport = {"LandUnit", "only", "organic", "only"},
	SaveCargo = true,
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
		"selected", "click",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
--		"ready", "dwarven-sentry-tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"} } )
		
DefineUnitType("unit-wood-pile", { Name = _("Wood Pile"),
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
	Accuracy = 0,
	Evasion = 0,
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
--	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	GivesResource = "lumber", CanHarvest = true,
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
--		"selected", "gold-mine-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
--		"dead", "building destroyed"
	} } )

DefineUnitType("unit-mushroom", { Name = "Mushroom",
	Image = {"file", "neutral/decorations/mushroom.png", "size", {32, 32}},
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
	fairlimbed_forest = "tilesets/forest/neutral/decorations/flowers.png",
	forest = "tilesets/forest/neutral/decorations/flowers.png",
	swamp = "tilesets/swamp/neutral/decorations/flowers.png"
}

DefineUnitType("unit-flowers", { Name = "Flowers",
	Image = {"size", {32, 32}},
	Animations = "animations-decoration-old", Icon = "icon-flowers",
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
	fairlimbed_forest = "tilesets/forest/neutral/decorations/large_flower.png",
	forest = "tilesets/forest/neutral/decorations/large_flower.png",
	swamp = "tilesets/swamp/neutral/decorations/large_flower.png"
}

DefineUnitType("unit-large-flower", { Name = "Large Flower",
	Image = {"size", {32, 32}},
	Animations = "animations-decoration-old", Icon = "icon-large-flower",
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

--[[
UnitTypeFiles["unit-fern"] = {
	cave = "tilesets/swamp/neutral/decorations/fern.png",
	dungeon = "tilesets/swamp/neutral/decorations/fern.png",
	fairlimbed_forest = "tilesets/forest/neutral/decorations/fern.png",
	forest = "tilesets/forest/neutral/decorations/fern.png",
	swamp = "tilesets/swamp/neutral/decorations/fern.png"
}
--]]

DefineUnitType("unit-fern", { Name = "Fern",
	Image = {"file", "tilesets/forest/neutral/decorations/fern.png", "size", {48, 48}},
	Animations = "animations-decoration-old", Icon = "icon-fern",
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

DefineUnitType("unit-twigs", { Name = _("Twigs"),
	Image = {"file", "neutral/decorations/twigs.png", "size", {32, 32}},
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

DefineUnitType("unit-log", { Name = "Log",
	Image = {"file", "neutral/decorations/log.png", "size", {56, 56}},
	Animations = "animations-decoration-old", Icon = "icon-log",
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

DefineUnitType("unit-wyrm-skeleton", { Name = "Wyrm Skeleton",
	Image = {"file", "neutral/decorations/wyrm_skeleton.png", "size", {128, 32}},
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

DefineUnitType("unit-stalagmites", { Name = _("Stalagmites"),
	Image = {"file", "neutral/decorations/stalagmites.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-stalagmites",
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

DefineUnitType("unit-volcanic-crater", { Name = _("Volcanic Crater"),
	Image = {"file", "neutral/decorations/volcanic_crater.png", "size", {64, 64}},
	Animations = "animations-volcanic-crater", Icon = "icon-volcanic-crater",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 30,
	TileSize = {2, 2}, BoxSize = {63, 63},
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

DefineUnitType("unit-glyph", { Name = _("Glyph"),
	Image = {"file", "neutral/buildings/glyph.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration", Icon = "icon-glyph",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 4,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NonSolid = true,
	NumDirections = 1,
	Indestructible = 1,
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
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building destroyed"} }
)

DefineUnitType("unit-stairs", { Name = _("Stairs"),
	Image = {"file", "neutral/buildings/stairs.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration-old", Icon = "icon-stairs",
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

DefineUnitType("unit-door", { Name = _("Door"),
	Image = {"file", "tilesets/dungeon/neutral/decorations/door_left.png", "size", {32, 32}},
	Animations = "animations-door", Icon = "icon-door",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 10,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
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
		"dead", "building destroyed"} } )

DefineUnitType("unit-shelf", { Name = "Shelf",
	Image = {"file", "neutral/decorations/shelf.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-shelf",
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
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
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
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
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

DefineUnitType("unit-human-dead-body", { Name = "Dead Body",
	Image = {"file", "neutral/units/human_corpse.png", "size", {72, 72}},
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

DefineUnitType("unit-kobold-dead-body", { Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
	Animations = "animations-kobold-dead-body", Icon = "icon-dwarven-miner",
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

DefineUnitType("unit-scepter-of-fire", { Name = _("Scepter of Fire"),
	Image = {"file", "neutral/items/scepter.png", "size", {32, 32}},
	Animations = "animations-item", Icon = "icon-scepter",
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
	Sounds = {
		"selected", "click",
		"dead", "gold-coins"
	} 
} )

DefineUnitType("unit-gold-coins", { Name = _("Gold Coins"),
	Image = {"file", "neutral/items/gold_coins.png", "size", {12, 13}},
	Animations = "animations-item", Icon = "icon-gold-coins",
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
	GivesResource = "gold",
	StartingResources = 5,
	Sounds = {
		"selected", "click",
		"dead", "gold-coins"
	} 
} )

DefineUnitType("unit-gold-sack", { Name = _("Gold Sack"),
	Image = {"file", "neutral/items/gold_sack.png", "size", {16, 14}},
	Animations = "animations-item", Icon = "icon-gold-sack",
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
	GivesResource = "gold",
	StartingResources = 100,
	Sounds = {
		"selected", "click",
		"dead", "gold-coins"
	} 
} )

DefineUnitType("unit-gold-chest", { Name = _("Chest"),
	Image = {"file", "neutral/items/chest.png", "size", {32, 32}},
	Animations = "animations-gold-chest", Icon = "icon-chest",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 100,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Sounds = {
		"selected", "click",
		"dead", "building destroyed"} } )

DefineUnitType("unit-gold-and-gems-chest", { Name = _("Chest"),
	Image = {"file", "neutral/items/chest.png", "size", {32, 32}},
	Animations = "animations-gold-and-gems-chest", Icon = "icon-chest",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 100,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Sounds = {
		"selected", "click",
		"dead", "building destroyed"} } )

DefineUnitType("unit-barrel", { Name = _("Barrel"),
	Image = {"file", "neutral/items/barrel.png", "size", {32, 32}},
	Animations = "animations-barrel", Icon = "icon-barrel",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/items/barrel_2.png"
		},
		{
			"variation-id", "3",
			"file", "neutral/items/barrel_3.png"
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building destroyed"} } )

DefineUnitType("unit-alchemy-bench", { Name = _("Alchemy Bench"),
	Image = {"file", "neutral/items/alchemy_bench.png", "size", {32, 32}},
	Animations = "animations-alchemy-bench", Icon = "icon-alchemy-bench",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = 1,
	Sounds = {
		"selected", "click",
		"dead", "building destroyed"
	}
} )

DefineUnitType("unit-table", { Name = _("Table"),
	Image = {"file", "neutral/decorations/table.png", "size", {32, 32}},
	Animations = "animations-table", Icon = "icon-table",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 0,
	Type = "land",
	NumDirections = 1,
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
		}
	},
	Sounds = {
		"selected", "click",
		"dead", "building destroyed"
	}
} )

DefineUnitType("unit-chair", { Name = _("Chair"),
	Image = {"file", "neutral/decorations/chair.png", "size", {32, 32}},
	Animations = "animations-chair", Icon = "icon-chair",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 3,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 0,
	Type = "land",
	NumDirections = 1,
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
		"dead", "building destroyed"
	}
} )

DefineUnitType("unit-potion-of-healing", { Name = _("Potion of Healing"),
	Image = {"file", "neutral/items/potion_red.png", "size", {16, 16}},
	Animations = "animations-item", Icon = "icon-red-potion",
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
	HitPointHealing = 45,
	Sounds = {
		"selected", "click",
		"dead", "potion"
	} 
} )

DefineUnitType("unit-potion-of-decay", { Name = _("Potion of Decay"),
	Image = {"file", "neutral/items/potion_blue.png", "size", {16, 16}},
	Animations = "animations-item", Icon = "icon-blue-potion",
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
	HitPointHealing = -15,
	Sounds = {
		"selected", "click",
		"dead", "potion"
	} 
} )

DefineUnitType("unit-cheese", { Name = _("Cheese"),
	Image = {"file", "neutral/items/cheese.png", "size", {15, 12}},
	Animations = "animations-item", Icon = "icon-cheese",
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
	HitPointHealing = 3,
	Food = true,
	Sounds = {} } )

DefineUnitType("unit-carrots", { Name = _("Carrots"),
	Image = {"file", "neutral/items/carrots.png", "size", {18, 12}},
	Animations = "animations-item", Icon = "icon-carrots",
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
	HitPointHealing = 3,
	Food = true,
	Sounds = {} } )

DefineUnitType("unit-gryphon-feather", { Name = _("Gryphon Feather"),
	Image = {"file", "neutral/items/gryphon_feather.png", "size", {28, 26}},
	Animations = "animations-item", Icon = "icon-gryphon-feather",
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

DefineUnitType("unit-caltrops", { Name = _("Caltrops"),
	Image = {"file", "neutral/items/caltrops.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-caltrops",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 10,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Item = true,
	HitPointHealing = -10,
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

DefineUnitType("unit-trap", { Name = _("Trap"),
	Image = {"file", "neutral/items/trap.png", "size", {32, 32}},
	Animations = "animations-trap", Icon = "icon-trap",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 15,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Item = true,
	HitPointHealing = -15,
	Sounds = {
		"selected", "click",
		"dead", "axe-attack"
	} 
} )

DefineUnitType("unit-roaming-fog", { Name = _("Roaming Fog"),
	Image = {"file", "neutral/decorations/roaming_fog.png", "size", {498, 277}},
	Animations = "animations-roaming-fog", Icon = "icon-roaming-fog",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 45,
	TileSize = {15, 8}, BoxSize = {497, 276},
	SightRange = 1, ComputerReactionRange = 1, PersonReactionRange = 1,
	Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Type = "fly",
	IsNotSelectable = true,
	RightMouseAction = "move",
	RandomMovementProbability = 100,
	NumDirections = 1,
	NonSolid = true, 
	Transparency = 50,
	Decoration = true,
	VisibleUnderFog = false,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bat-selected",
--		"ready", "bat-selected",
--		"help", "critter-help",
--		"dead", "rat-dead"
	}
} )

DefineUnitType("unit-roaming-fog-small", { Name = _("Roaming Fog"),
	Image = {"file", "neutral/decorations/roaming_fog_small.png", "size", {256, 171}},
	Animations = "animations-roaming-fog", Icon = "icon-roaming-fog",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 45,
	TileSize = {8, 5}, BoxSize = {255, 169},
	SightRange = 1, ComputerReactionRange = 1, PersonReactionRange = 1,
	Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 37,
	Points = 1,
	Demand = 1,
	Type = "fly",
	IsNotSelectable = true,
	RightMouseAction = "move",
	RandomMovementProbability = 100,
	NumDirections = 1,
	NonSolid = true, 
	Transparency = 50,
	Decoration = true,
	VisibleUnderFog = false,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bat-selected",
--		"ready", "bat-selected",
--		"help", "critter-help",
--		"dead", "rat-dead"
	}
} )

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
	fairlimbed_forest = "tilesets/swamp/neutral/buildings/destroyed_site.png",
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
	fairlimbed_forest = "tilesets/swamp/neutral/buildings/destroyed_site.png",
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
	fairlimbed_forest = "tilesets/swamp/neutral/buildings/destroyed_site.png",
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

-- Template Units

DefineUnitType("unit-template-worker", { Name = _("Worker"),
	Class = "worker",
	Costs = {"time", 45, "gold", 400},
	Speed = 10,
	HitPoints = 30,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
	AutoRepairRange = 4,
	BasicDamage = 3, PiercingDamage = 2, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 8,
	Evasion = 9,
	Priority = 50,
	BasePoints = 30,
	Demand = 1,
	Gender = 1, -- 1 = Male, 2 = Female
	Type = "land",
	RightMouseAction = "harvest",
	CanAttack = true, RepairRange = 1,
	CanTargetLand = true,
	Coward = true,
	organic = true,
	SelectableByRectangle = true
} )

DefineUnitType("unit-template-infantry", { Name = _("Infantry"),
	Class = "infantry",
	Costs = {"time", 60, "gold", 600},
	Speed = 10,
	HitPoints = 60,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
	Armor = 2, BasicDamage = 6, PiercingDamage = 3, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 60,
	BasePoints = 50,
	Demand = 1,
	Gender = 1, -- 1 = Male, 2 = Female
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	SelectableByRectangle = true
} )

DefineUnitType("unit-template-veteran-infantry", { Name = _("Veteran Infantry"),
	Parent = "unit-template-infantry",
	Class = "veteran-infantry",
	Costs = {"time", 0, "gold", 0},
	HitPoints = 75,
	PiercingDamage = 4,
	BasePoints = 75,
	StartingLevel = 2,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	SelectableByRectangle = true
} )

DefineUnitType("unit-template-heroic-infantry", { Name = _("Heroic Infantry"),
	Parent = "unit-template-veteran-infantry",
	Class = "heroic-infantry",
	Costs = {"time", 0, "gold", 0},
	HitPoints = 90,
	BasicDamage = 8,
	BasePoints = 100,
	StartingLevel = 3,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	SelectableByRectangle = true
} )

DefineUnitType("unit-template-archer", { Name = _("Archer"),
	Class = "archer",
	Costs = {"time", 70, "gold", 500, "lumber", 50},
	Speed = 10,
	HitPoints = 40,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 5, ComputerReactionRange = 7, PersonReactionRange = 5,
	BasicDamage = 3, PiercingDamage = 5, Missile = "missile-arrow",
	MaxAttackRange = 5,
	Accuracy = 10,
	Evasion = 10,
	Priority = 55,
	Points = 60,
	Demand = 1,
	Gender = 1, -- 1 = Male, 2 = Female
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	organic = true,
	SelectableByRectangle = true,
	AttackFromTransporter = true
} )

DefineUnitType("unit-template-thief", { Name = _("Thief"),
	Class = "thief",
	Costs = {"time", 0, "gold", 400},
	Speed = 10,
	HitPoints = 40,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
	BasicDamage = 2, PiercingDamage = 4, Missile = "missile-none",
	MaxAttackRange = 1,
	Backstab = 100,
	Accuracy = 12,
	Evasion = 12,
	Priority = 50,
	BasePoints = 30,
	Demand = 1,
	Gender = 1, -- 1 = Male, 2 = Female
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	SelectableByRectangle = true
} )

DefineUnitType("unit-template-cavalry", { Name = _("Cavalry"),
	Class = "cavalry",
	Costs = {"time", 90, "gold", 900},
	Speed = 13,
	HitPoints = 75,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {42, 42},
	SightRange = 4, ComputerReactionRange = 6, PersonReactionRange = 4,
	Armor = 2, BasicDamage = 8, PiercingDamage = 4, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 63,
	BasePoints = 75,
	Demand = 1,
	Gender = 1, -- 1 = Male, 2 = Female
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	SelectableByRectangle = true
} )

DefineUnitType("unit-template-priest", { Name = _("Priest"),
	Class = "priest",
	Costs = {"time", 80, "gold", 700},
	Speed = 8,
	HitPoints = 40,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
	BasicDamage = 2, PiercingDamage = 4, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 8,
	Evasion = 8,
	Priority = 70,
	BasePoints = 60,
	Demand = 1,
	Gender = 1, -- 1 = Male, 2 = Female
	Type = "land",
	RightMouseAction = "move",
	Coward = true,
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	SelectableByRectangle = true,
	Mana = {Enable = true}
} )

DefineUnitType("unit-template-siege-engine", { Name = _("Siege Engine"),
	Class = "siege-engine",
	Costs = {"time", 250, "gold", 900, "lumber", 300},
	TechnologyPointCost = 1,
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Speed = 5,
	HitPoints = 110,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {63, 63},
	SightRange = 9, ComputerReactionRange = 11, PersonReactionRange = 9,
	BasicDamage = 80, PiercingDamage = 0, Missile = "missile-catapult-flaming-rock",
	MinAttackRange = 2, MaxAttackRange = 8,
	Accuracy = 8,
	Evasion = 2,
	Priority = 70,
	BasePoints = 100,
	Demand = 1,
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	RightMouseAction = "attack",
	CanGroundAttack = true,
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true,
	SelectableByRectangle = true
} )

DefineUnitType("unit-template-town-hall", { Name = _("Town Hall"),
	Class = "town-hall",
	Animations = "animations-building",
	Costs = {"time", 255, "gold", 1200, "lumber", 800},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 1000, -- 1200 with masonry
	DrawLevel = 20,
	TileSize = {4, 4}, BoxSize = {126, 126},
	SightRange = 1,
	Armor = 15, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 35, AnnoyComputerFactor = 45,
	Points = 200,
	Supply = 1,
	Corpse = "unit-destroyed-4x4-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true, Center = true, LumberImprove = true,
	BuildingRules = {
		{ "distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-mine"},
		"distance", { Distance = 3, DistanceType = ">", Type = "unit-coal-mine"} }
	},
	CanStore = {"lumber", "gold", "coal"},
	Sounds = {
		"selected", "town-hall-selected",
--		"acknowledge", "town-hall-acknowledge",
--		"ready", "town-hall-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"
	}
} )

DefineUnitType("unit-template-stronghold", { Name = _("Stronghold"),
	Class = "stronghold",
	Animations = "animations-building", 
--	Costs = {"time", 200, "gold", 2000, "lumber", 1000, "oil", 200},
	Costs = {"time", 200, "gold", 2200, "lumber", 1100},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
--	ImproveProduction = {"gold", 10},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 1167, -- 1400 with masonry
	DrawLevel = 20,
	TileSize = {4, 4}, BoxSize = {127, 127},
	SightRange = 3,
	Armor = 15, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 37, AnnoyComputerFactor = 40,
	Points = 600,
	Supply = 1,
	Corpse = "unit-destroyed-4x4-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true, Center = true, LumberImprove = true, OilImprove = false,
	BuildingRules = {
		{
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-mine"},
			"distance", { Distance = 3, DistanceType = ">", Type = "unit-coal-mine"}
		}
	},
	CanStore = {"lumber", "gold", "coal"},
	MaxOnBoard = 3,
	CanTransport = {"LandUnit", "only", "organic", "only"},
	AttackFromTransporter = true,
	SaveCargo = true,
	Sounds = {
		"selected", "town-hall-selected",
--		"acknowledge", "town-hall-acknowledge",
--		"ready", "town-hall-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"}
} )

DefineUnitType("unit-template-farm", { Name = _("Farm"),
	Class = "farm",
	Animations = "animations-farm",
	Costs = {"time", 100, "gold", 500, "lumber", 250},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 334, -- 400 with masonry
	DrawLevel = 20,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 1,
	Armor = 15, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 20, AnnoyComputerFactor = 45,
	Points = 100,
	Supply = 4,
	Corpse = "unit-destroyed-2x2-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "farm-acknowledge",
--		"ready", "farm-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"
	}
} )

DefineUnitType("unit-template-barracks", { Name = _("Barracks"),
	Class = "barracks",
	Animations = "animations-building",
	Costs = {"time", 200, "gold", 700, "lumber", 450},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 667, -- 800 with masonry
	DrawLevel = 20,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 15, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 30, AnnoyComputerFactor = 35,
	Points = 160,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "barracks-acknowledge",
--		"ready", "barracks-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"
	}
} )

DefineUnitType("unit-template-lumber-mill", { Name = _("Lumber Mill"),
	Class = "lumber-mill",
	Animations = "animations-building",
	Costs = {"time", 150, "gold", 600, "lumber", 450},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	ImproveProduction = {"lumber", 25},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 500, -- 600 with masonry
	DrawLevel = 20,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 15, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 25, AnnoyComputerFactor = 15,
	Points = 150,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true, LumberImprove = true,
	CanStore = {"lumber"},
	Sounds = {
		"selected", "lumber-mill-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
--		"ready", "dwarven-lumber-mill-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"
	}
} )

DefineUnitType("unit-template-smithy", { Name = _("Smithy"),
	Class = "smithy",
	Animations = "animations-building",
--	Costs = {"time", 200, "gold", 800, "lumber", 450, "oil", 100},
	Costs = {"time", 200, "gold", 900, "lumber", 500},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 646, -- 775 with masonry
	DrawLevel = 20,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 15, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 15, AnnoyComputerFactor = 20,
	Points = 170,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Sounds = {
--		"selected", "lumber-mill-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
--		"ready", "dwarven-lumber-mill-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"
	}
} )

DefineUnitType("unit-template-watch-tower", { Name = _("Watch Tower"),
	Class = "watch-tower",
	Animations = "animations-building",
	Costs = {"time", 60, "gold", 550, "lumber", 200},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 167, -- 200 with masonry
	DrawLevel = 20,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 9,
	Armor = 15, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Accuracy = 0,
	Evasion = 0,
	Priority = 55, AnnoyComputerFactor = 50,
	Points = 95,
	Corpse = "unit-destroyed-2x2-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	Building = true, VisibleUnderFog = true,
	DetectCloak = true,
	MaxOnBoard = 1,
	CanTransport = {"LandUnit", "only", "organic", "only"},
	AttackFromTransporter = true,
	SaveCargo = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
--		"ready", "dwarven-sentry-tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"
	}
} )

DefineUnitType("unit-template-guard-tower", { Name = _("Guard Tower"),
	Class = "guard-tower",
	Animations = "animations-building",
	Costs = {"time", 140, "gold", 500, "lumber", 150},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 217, -- 260 with masonry
	DrawLevel = 40,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 9, ComputerReactionRange = 6, PersonReactionRange = 6,
	Armor = 15, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	MaxAttackRange = 6,
	Accuracy = 0,
	Evasion = 0,
	Priority = 40, AnnoyComputerFactor = 50,
	Points = 200,
	Corpse = "unit-destroyed-2x2-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	Building = true, VisibleUnderFog = true,
	DetectCloak = true,
	MaxOnBoard = 2,
	CanTransport = {"LandUnit", "only", "organic", "only"},
	AttackFromTransporter = true,
	SaveCargo = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
--		"ready", "dwarven-sentry-tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building destroyed"
	}
} )

-- Other civilizations' units

DefineUnitType("unit-elven-swordsman", { Name = _("Swordsman"),
	Parent = "unit-template-infantry",
	Civilization = "elf",
	Description = _("Elves are not warlike by nature, but in times of need, their natural grace and agility serve them well, as does their skillful craftsmanship. An elf can grasp the basics of swordsmanship in a time uncannily short by the standards of other races, and put them to effective use on the battlefield."),
	Quote = _("\"This he learned, | the lord of Lintanir, / That Volund alone | in Ulfdalir lay; / By night went his men, | their mail-coats were studded, / Their shields in the waning | moonlight shone.\" - The Lay of Volund"),
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-elven-swordsman",
	Sounds = {
--		"selected", "basic-dwarf-voices-selected-group",
--		"acknowledge", "basic-dwarf-voices-acknowledge",
--		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
--		"dead", "basic-dwarf-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-orc-spearthrower", { Name = _("Spearthrower"),
	Parent = "unit-template-archer",
	Civilization = "orc",
	Description = _("Amongst orcs, throwing spears are often regarded as a cowardly weapon; but even orcs, especially youths and those of slight build, are pragmatic enough to use them in spite of this. Orcish spearthrowers are seldom well equipped, and have no semblance of training. Even as poorly handled as they are, their weapons can still be quite deadly, and the wielders thereof rarely march alone."),
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-dwarven-scout", Icon = "icon-orc-spearthrower",
	Missile = "missile-javelin",
	Corpse = "unit-dwarven-dead-body",
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"ready", "dwarven-scout-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-orc-sea-orc", { Name = _("Sea Orc"),
	Class = "marine-infantry",
	Civilization = "orc",
	Description = _("While often viewed as inferior to their land-loving counterparts, sea orcs represent a great leap for all orcs as they have adapted to aquatic environments. These orcs use their ships to raid the coasts of the Eelhome Sea. With their curved swords they are competent warriors, although their poor fighting skills on land do represent a strategic weakness."),
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
	organic = true,
	SelectableByRectangle = true,
	Sounds = {
--		"selected", "basic-dwarf-voices-selected-group",
--		"acknowledge", "basic-dwarf-voices-acknowledge",
--		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
--		"dead", "basic-dwarf-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-orc-shaman", { Name = _("Shaman"),
	Class = "priest",
	Civilization = "orc",
	Description = _("Orc shamans are the guardians of orcish magic. Respected among orcish tribes, they form the Orcish Council, which makes important decisions for the whole orcish community and arbitrates the many conflicts that arise between tribes of this argumentative race."),
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

DefineUnitType("unit-water-elemental", { Name = _("Water Elemental"),
	Description = _("These creatures inhabit the warmer parts of the world of Niflheim. Although in many respects they act like a living being, they seem to be nearly entirely made out of water, putting in doubt just what they really are."),
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-water-elemental",
	Costs = {"time", 70, "gold", 500, "lumber", 50},
	Speed = 8,
	HitPoints = 60,
	DrawLevel = 40,
	TileSize = {1, 1}, BoxSize = {36, 36},
	SightRange = 3, ComputerReactionRange = 5, PersonReactionRange = 3,
	BasicDamage = 8, PiercingDamage = 4, Missile = "missile-none",
	MaxAttackRange = 3,
	Priority = 63,
	BasePoints = 100,
	Demand = 1,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	SelectableByRectangle = true,
	Sounds = {
--		"selected", "basic-dwarf-voices-selected-group",
--		"acknowledge", "basic-dwarf-voices-acknowledge",
--		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "slime-dead"
	}
} )

DefineUnitType("unit-long-swordsman", { Name = _("Long Swordsman"),
	Image = {"file", "neutral/units/long_swordsman.png", "size", {72, 72}},
	Animations = "animations-static-npc", Icon = "icon-long-swordsman",
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
	Corpse = "unit-human-dead-body",
	Type = "land",
--	RightMouseAction = "attack",
	CanAttack = false, -- since it doesn't have attack animations as of now
--	CanTargetLand = true,
	organic = true,
	SelectableByRectangle = true,
	Indestructible = 1, -- because it doesn't have death animations
	Sounds = {
		"selected", "click",
--		"acknowledge", "basic-dwarf-voices-acknowledge",
--		"ready", "dwarven-axefighter-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "basic-human-voices-dead"}
} )

-- Load the different civilizations
Load("scripts/celt/units.lua")
Load("scripts/dwarf/units.lua")
Load("scripts/germanic/units.lua")
Load("scripts/gnome/units.lua")
Load("scripts/goblin/units.lua")
Load("scripts/kobold/units.lua")
Load("scripts/teuton/units.lua")

DefineUnitType("unit-human-wall", { Name = _("Wall"),
	Image = {"file", "neutral/buildings/glyph.png", "size", {32, 32}},
	Animations = "animations-building", Icon = "icon-teuton-lumber-mill",
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
