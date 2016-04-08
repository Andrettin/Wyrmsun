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
--      (c) Copyright 1998-2016 by Lutz Sammer, Jimmy Salmon and Andrettin
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
	"unit-germanic-worker", "unit-germanic-warrior", "unit-germanic-spearman", "unit-germanic-archer",
	"unit-germanic-town-hall", "unit-germanic-farm", "unit-germanic-barracks",
	"unit-germanic-carpenters-shop", "unit-germanic-smithy",
	"upgrade-germanic-broad-sword", "upgrade-germanic-long-spear", "upgrade-germanic-bronze-shield",
	"upgrade-germanic-barbed-arrow",
	"upgrade-germanic-wood-plow",
	"upgrade-asa-tribe-faction", "upgrade-skeldung-tribe-faction", "upgrade-volsung-tribe-faction", "upgrade-yngling-tribe-faction",
	"upgrade-teuton-civilization",
	"unit-teuton-worker", "unit-teuton-swordsman", "unit-suebi-swordsman", "unit-frank-swordsman",
	"unit-teuton-spearman", "unit-frank-spearman", "unit-teuton-archer",
	"unit-teuton-ritter", "unit-frank-horseman",
	"unit-teuton-catapult",
	"unit-teuton-kogge",
	"unit-teuton-town-hall", "unit-teuton-stronghold",
	"unit-teuton-farm", "unit-teuton-barracks",
	"unit-teuton-lumber-mill", "unit-teuton-smithy",
	"unit-teuton-stables", "unit-teuton-temple",
	"unit-teuton-watch-tower", "unit-teuton-guard-tower",
	"unit-teuton-dock",
	"upgrade-teuton-spatha", "upgrade-frank-spatha", "upgrade-teuton-pike", "upgrade-teuton-iron-shield", "upgrade-teuton-bodkin-arrow",
	"upgrade-teuton-catapult-projectile-1", "upgrade-teuton-catapult-projectile-2",
	"upgrade-teuton-iron-tipped-wood-plow",
	"upgrade-teuton-masonry",
	"upgrade-teuton-coinage", "upgrade-teuton-writing", "upgrade-teuton-alchemy",
	"upgrade-alamanni-tribe-faction", "upgrade-angle-tribe-faction", "upgrade-bavarian-tribe-faction", "upgrade-frank-tribe-faction", "upgrade-frisian-tribe-faction", "upgrade-lombard-tribe-faction", "upgrade-saxon-tribe-faction", "upgrade-suebi-tribe-faction", "upgrade-thuringian-tribe-faction", "upgrade-mecklenburg-faction",
	"unit-celt-farm",
	"upgrade-celt-civilization",
	"unit-dwarven-miner", "unit-dwarven-militia",
	"unit-brising-miner", "unit-brising-militia",
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
	"unit-dwarven-guard",
	"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
	"unit-dwarven-yale-rider", "unit-dwarven-ballista",
	"unit-dwarven-gryphon-rider",
	"unit-dwarven-transport-ship",
	"unit-dwarven-town-hall", "unit-dwarven-stronghold",
	"unit-dwarven-mushroom-farm", "unit-dwarven-barracks",
	"unit-dwarven-lumber-mill", "unit-dwarven-smithy",
	"unit-brising-smithy",
	"unit-dwarven-yale-pen", "unit-dwarven-temple",
	"unit-dwarven-sentry-tower", "unit-dwarven-guard-tower",
	"unit-dwarven-dock",
	"upgrade-dwarven-broad-axe", "upgrade-dwarven-great-axe", "upgrade-dwarven-shield-1", "upgrade-dwarven-shield-2",
	"upgrade-dwarven-long-spear", "upgrade-dwarven-pike",
	"upgrade-dwarven-sharp-throwing-axe", "upgrade-dwarven-bearded-throwing-axe", "upgrade-dwarven-ballista-bolt-1", "upgrade-dwarven-ballista-bolt-2",
	"upgrade-dwarven-wood-plow", "upgrade-dwarven-iron-tipped-wood-plow",
	"upgrade-dwarven-masonry",
	"upgrade-dwarven-coinage", "upgrade-dwarven-runewriting", "upgrade-dwarven-alchemy",
	"upgrade-brising-clan-faction", "upgrade-eikinskjaldi-clan-faction", "upgrade-norlund-clan-faction", "upgrade-shinsplitter-clan-faction", "upgrade-shorbear-clan-faction", "upgrade-joruvellir-faction", "upgrade-kal-kartha-faction", "upgrade-knalga-faction", -- "upgrade-lyr-faction",
	"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist", "unit-gnomish-caravan",
	"unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks",
	"unit-goblin-worker", "unit-goblin-swordsman", "unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-thief",
	"unit-goblin-war-machine", "unit-goblin-glider",
	"unit-goblin-town-hall", "unit-goblin-mess-hall", "unit-goblin-farm", "unit-goblin-lumber-mill", "unit-goblin-smithy",
	"upgrade-goblin-long-spear", "upgrade-goblin-pike",
	"upgrade-goblin-catapult-projectile-1", "upgrade-goblin-catapult-projectile-2",
	"upgrade-goblin-wood-plow", "upgrade-goblin-iron-tipped-wood-plow",
	"upgrade-goblin-masonry",
	"unit-kobold-footpad",
	"unit-elven-swordsman",
	"unit-orc-spearthrower", "unit-orc-sea-orc", "unit-orc-shaman",
	"unit-rat", "unit-horse",
	"unit-slime", "unit-yale", "unit-gryphon", "unit-wyrm", "unit-water-elemental",
	"unit-gold-rock", "unit-gold-deposit", "unit-gold-mine",
	"unit-silver-rock", "unit-silver-deposit", "unit-silver-mine",
	"unit-copper-rock", "unit-copper-deposit", "unit-copper-mine",
	"unit-coal-mine",
	"unit-mercenary-camp",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
	"unit-carrots", "unit-cheese", "unit-potion-of-healing"
}

if (OldDefineUnitType == nil) then
	OldDefineUnitType = DefineUnitType
end

function DefineUnitType(unit_type, data)
	local town_hall = false
	if (data.Class == "town-hall" or data.Class == "stronghold") then
		town_hall = true
	end
	
	if (data.Parent ~= nil) then
		OldDefineUnitType(unit_type, {Parent = data.Parent})
		data.Parent = nil
		if ((GetUnitTypeData(unit_type, "Class") == "town-hall" or GetUnitTypeData(unit_type, "Class") == "stronghold") and data.Class == nil) then
			town_hall = true
		end
	end
	
	data.OnInit = InitializeUnit
	
	if (town_hall) then
		data.BuildingRules = {
			{
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-rock"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-deposit"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-gold-mine"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-silver-rock"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-silver-deposit"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-silver-mine"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-copper-rock"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-copper-deposit"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-copper-mine"},
				"distance", { Distance = 3, DistanceType = ">", Type = "unit-coal-mine"}
			}
		}
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
DefineUnitType("unit-template-unit", { Name = _("Unit"),
	Animations = "animations-melee-unit-new",
	DrawLevel = 40,
	SelectableByRectangle = true,
	ButtonLevel = 0,
	ButtonPopup = "popup-unit"
})

DefineUnitType("unit-template-building", { Name = _("Building"),
	Animations = "animations-building",
	DrawLevel = 40,
	Building = true,
	VisibleUnderFog = true,
	SelectableByRectangle = true,
	ButtonLevel = 1,
	ButtonPopup = "popup-building"
})

DefineUnitType("unit-rat", { Name = "Rat",
	Class = "vermin",
	Description = _("Rats are rodents of medium size and long tails. They usually live in forests or within human dwellings. They are often reviled for their carrying of diseases."),
	Image = {"file", "neutral/units/rat.png", "size", {72, 72}},
	Animations = "animations-rat", Icon = "icon-rat",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Fauna = true,
	Flesh = true,
	Carnivore = true,
	ChildUpgrade = "upgrade-child",
	PierceDamage = true,
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow"},
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

DefineUnitType("unit-horse", { Name = "Horse",
	Parent = "unit-template-unit",
	Class = "grazer",
	Description = _("Horses are valuable for their speed as well as their endurance, making excellent mounts. The creatures were a vital component of any army, and was an essential part of the lifestyle of the peoples of the Eurasian steppes."),
	Quote = _("\"Glath and Gyllir, | Gler and Skeithbrimir, / Silfrintopp and Sinir, / Gisl and Falhofnir, | Golltopp and Lettfeti, / On these steeds the gods shall go / When dooms to give | each day they ride / To the ash-tree Yggdrasil.\" - Grimnismol (Grimnir)"), -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 96.
	Image = {"file", "neutral/units/horse_brown_skin_brown_hair_brown_eyes.png", "size", {72, 72}},
	Animations = "animations-yale", Icon = "icon-horse",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Fauna = true,
--	PeopleAversion = true,
	Flesh = true,
	Herbivore = true,
	PersonalNames = {
		"Alsvid", -- One of the sun horses from Norse mythology (name means "All-Swift"); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 99.
		"Arvak", -- One of the sun horses from Norse mythology (name means "Early Waker"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 99.
		"Falhofnir", -- Horse from Norse mythology (name means "Hollow-Hoofed"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 96-97.
		"Gisl", -- Horse from Norse mythology (name means "Gleaming"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 96.
		"Glath", -- Horse from Norse mythology (name means "Joyous"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 96.
		"Glaum", -- The horse of Atli (Attila in Norse mythology); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 493.
		"Gler", -- Horse from Norse mythology (name means "Shining"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 96.
		"Golltop", -- Heimdall's horse from Norse mythology (name means "Gold-Topped"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 96-97.
		"Grani", -- Sigurd's horse in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 259, 303, 342.
		"Gullfaxi", -- The giant Hrungnir's horse in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 126.
		"Gyllir", -- Horse from Norse mythology (name means "Golden"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 96.
		"Lettfeti", -- Horse from Norse mythology (name means "Hollow-Hoofed"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 96-97.
		"Melnir", -- Horse from Norse mythology (name means "Bit-Bearer"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 306.
		"Mylnir", -- Horse from Norse mythology (name means "The Biter"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 306.
		"Semik", -- Šemík was Horymír's horse in the Praguer legend; Source: Alena Ježková, "77 Prague Legends", 2006, p. 154.
		"Silfrintopp", -- Horse from Norse mythology (name means "Silver-Topped"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 96.
		"Sinir", -- Horse from Norse mythology (name means "Sinewy"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 96.
		"Skeithbrimir", -- Horse from Norse mythology (name means "Swift-Going"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 96.
		"Skinfaxi", -- Horse from Norse mythology (name means "Shining-Mane"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 71.
		"Sleipnir", -- Odin's horse in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 102, 159, 196.
		"Sporvitnir", -- Horse from Norse mythology (name means "Spur-Wolf"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 306.
		"Svathilfari", -- A giant's horse in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 159, 196.
		"Sveggjuth", -- Horse from Norse mythology (name means "Lithe"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 304.
		"Sviputh", -- Horse from Norse mythology (name means "Swift"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 304.
		"Vigblaer", -- Vigblær was Helgi's horse in Norse mythology (its name means "Battle-Breather"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 325.
		"Vingskornir" -- Brynhild's horse in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 384.
	},
--	PersonalNamePrefixes = {"Aegi"},
--	PersonalNameSuffixes = {"pan"},
	ChildUpgrade = "upgrade-child",
	Excrement = "unit-yale-excrement",
	BluntDamage = true,
	Coward = true,
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow"},
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

DefineUnitType("unit-yale", { Name = "Yale",
	Parent = "unit-template-unit",
	Class = "grazer",
	Description = _("Yales are caprid creatures who inhabit Nidavellir. They have sturdy, golden tusks and horns, and their fur is covered by golden spots. Dwarves often use them as mounts or as beasts of carry."),
	Image = {"file", "neutral/units/yale.png", "size", {72, 72}},
	Animations = "animations-yale", Icon = "icon-yale",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Fauna = true,
	PeopleAversion = true,
	Flesh = true,
	Herbivore = true,
	PersonalNames = {"Amaltheia", "Heidrun", "Banebdjedet", "Heryshaf", "Khnum"}, -- names of mythological caprids: Aegipan (figure from Greek mythology which is represented by the constellation Capricorn; name means "Goat-Pan" or "Goat-All"), Amaltheia (female goat from Greek mythology who fed child Zeus), Heidrun (female goat from Norse mythology); Banebdjedet, Heryshaf and Khnum are names of ram-headed Egyptian deities; Tanngnost ("Tooth Grinder", one of the goats who pulls Thor's chariot); Tanngrisni ("Gat-Tooth", one of the goats who pulls Thor's chariot)
	PersonalNamePrefixes = {"Aegi", "Tann"},
	PersonalNameSuffixes = {"gnost", "grisni", "pan"},
	ChildUpgrade = "upgrade-child",
	Excrement = "unit-yale-excrement",
	BluntDamage = true,
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow"},
	Variations = {
		--[[
		{
			"variation-id", "brown-fur",
--			"file", "neutral/units/yale_young.png",
			"frame-size", {36, 36},
			"upgrade-required", "upgrade-child"
		},
		--]]
		{
			"variation-id", "brown-fur",
			"icon", "icon-yale"
--			"upgrade-forbidden", "upgrade-child"
		},
		{
			"variation-id", "gray-brown-fur",
			"file", "neutral/units/yale_gray_brown_fur.png",
			"icon", "icon-yale-gray-brown-fur"
--			"upgrade-forbidden", "upgrade-child"
		},
		{
			"variation-id", "gray-fur",
			"file", "neutral/units/yale_gray_fur.png",
			"icon", "icon-yale-gray-fur"
--			"upgrade-forbidden", "upgrade-child"
		},
		{
			"variation-id", "white-fur",
			"file", "neutral/units/yale_white_fur.png",
			"icon", "icon-yale-white-fur"
--			"upgrade-forbidden", "upgrade-child"
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

DefineUnitType("unit-gryphon", { Name = _("Gryphon"),
	Class = "flying-predator",
	Description = _("Gryphons dwell in the dwarven homeworld of Nidavellir, predating smaller animals such as yales. Although many gryphons can be seen in the wild, dwarves have been domesticating the beasts for aeons, riding them into battle. The Gryphon Mountain is the greatest nesting area for wild gryphons."),
	Quote = _("\"What's this? Gryphons in my castle? Remove the beasts!\" - Relgorn, Chieftain of the Norlund Clan"),
	Image = {"file", "neutral/units/gryphon.png", "size", {100, 100}},
	DrawLevel = 45,
	Animations = "animations-gryphon", Icon = "icon-gryphon",
	NeutralMinimapColor = {192, 192, 192},
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
	Demand = 1,
	Type = "fly",
	RightMouseAction = "move",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	RandomMovementProbability = 1,
	RandomMovementDistance = 12,
	organic = true,
	Fauna = true,
	Predator = true,
	PeopleAversion = true,
	Flesh = true,
	Carnivore = true,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	ChildUpgrade = "upgrade-gryphon-child",
	PierceDamage = true,
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow"},
	PersonalNames = {
		"Graa", "Greaa", "Gree", "Kaaa", "Kaasa", "Kassshh", "Kayya", "Kessshh", "Keyya", "Kiira", "Korra", "Korro", "Kraa", "Kuu", "Kzaaa", "Kzuuu",
		"Kawn", "Krawg", -- names from the "Sceptre of Fire" Wesnoth campaign
		"Graak", "Graik", "Griak", "Grook", "Gruak" -- names from the "Gryphon Mountain" scenario of the "Heir to the Throne" Wesnoth campaign
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

DefineUnitType("unit-wyrm", { Name = _("Wyrm"),
	Parent = "unit-template-unit",
	Class = "predator",
	Description = _("These enormous creatures dwell in Nidavellir's underground, living off the meat of animals and intelligent beings alike. Wyrms are as territorial as they are rare, and will attack any that they perceive as a threat. Kobolds worship these beasts, believing them to be their ancestors. Some tribes go as far as living near a wyrm's lair, keeping it harmless by maintaining a low profile and feeding it well - sometimes even with offerings of kobolds."),
	Quote = _("\"More wyrms there are | beneath the ash / Than an unwise ape would think; / Goin and Moin, | Grafvitnir's sons, / Grabak and Grafvolluth, / Ofnir and Svafnir | shall ever, methinks, / Gnaw at the twigs of the tree.\" - Dwarven Traditional Poetry"),
	Background = "The dragons of Norse mythology, also referred to as serpents, had different physical characteristics than the dragons of medieval folklore. The Norse dragons were wingless, and entirely or partially limbless. The most famous of them were Jormungand and Nidhogg. The ~<Grimnismol~> includes a list of other notable ones, Svafnir among them. The constellation Draco (\"Dragon\") represents the giant serpent of Greek mythology, Ladon.",
	Image = {"file", "neutral/units/wyrm.png", "size", {110, 108}},
	Animations = "animations-wyrm", Icon = "icon-wyrm",
	NeutralMinimapColor = {192, 192, 192},
	Costs = {"time", 250, "gold", 2500},
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
	Demand = 1,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	RandomMovementProbability = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	Fauna = true,
	Level = 3,
	PeopleAversion = true,
	Predator = true,
	Flesh = true,
	Carnivore = true,
	Dragon = true,
	ChildUpgrade = "upgrade-wyrm-child",
	PersonalNames = {"Goin", "Jormungand", "Ladon", "Moin", "Ofnir", "Svafnir"}, -- Grabak = Gray-Back, Midgardsorm = Midgard Serpent, Nidhogg = Corpse Tearer / The Dread Biter, Ofnir = The Bewilderer, Svafnir = The Sleep-Bringer
	PersonalNamePrefixes = {"Gra", "Graf", "Nid"}, -- Gra = Gray, Graf = Gnawer / Gnawing, Nid = Corpse / Dread
	PersonalNameSuffixes = {"bak", "hogg", "orm", "vitnir", "volluth"}, -- Bak = Back, Hogg = Tearer / Biter, Orm = Serpent, Vitnir = Wolf, Volluth = Field
	PierceDamage = true,
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow", "upgrade-vicious"},
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
	Class = "slime",
	Description = _("Slimes are amorphous organic beings which can be found throughout the dark plains and caves of Nidavellir. Little is known about their composition, except that they are acidic to the touch."),
	Image = {"file", "neutral/units/slime_small.png", "size", {32, 32}},
	Animations = "animations-slime", Icon = "icon-slime",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Fauna = true,
	PeopleAversion = true,
	Slime = true,
	Detritivore = true,	
	Carnivore = true,	
	ChildUpgrade = "upgrade-child",
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

DefineUnitType("unit-bee", { Name = _("Bee"),
	Image = {"file", "neutral/units/bee.png", "size", {6, 6}},
	Animations = "animations-bee", Icon = "icon-gryphon",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 44,
	TileSize = {1, 1}, BoxSize = {15, 15},
	SightRange = 1,
	BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Priority = 5,
	Points = 1,
	Demand = 1,
	Type = "fly-low",
	Diminutive = true,
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 50,
	organic = true,
	Coward = true,
	Fauna = true,
	Insect = true,
	Herbivore = true,
	PierceDamage = true,
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

DefineUnitType("unit-fly", { Name = _("Fly"),
	Image = {"file", "neutral/units/fly.png", "size", {6, 6}},
	Animations = "animations-bee", Icon = "icon-gryphon",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 44,
	TileSize = {1, 1}, BoxSize = {15, 15},
	SightRange = 3,
	BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Priority = 5,
	Points = 1,
	Demand = 1,
	Type = "fly-low",
	Diminutive = true,
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 50,
	organic = true,
	Coward = true,
	Fauna = true,
	Insect = true,
	Detritivore = true,	
	PierceDamage = true,
	ChildUpgrade = "upgrade-bee-child",
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
	Image = {"file", "neutral/units/bug.png", "size", {6, 6}},
	Animations = "animations-bee", Icon = "icon-gryphon",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 1,
	DrawLevel = 39,
	TileSize = {1, 1}, BoxSize = {15, 15},
	SightRange = 1,
	BasicDamage = 1, Missile = "missile-none",
	Accuracy = 15,
	Evasion = 15,
	MaxAttackRange = 1,
	Priority = 5,
	Points = 1,
	Demand = 1,
	Type = "land",
	Diminutive = true,
	IsNotSelectable = true,
	RightMouseAction = "move",
--	CanAttack = true,
--	CanTargetLand = true,
	RandomMovementProbability = 50,
	organic = true,
	Coward = true,
	Fauna = true,
	Insect = true,
	Herbivore = true,
	ChildUpgrade = "upgrade-bee-child",
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
	Image = {"file", "neutral/units/worm.png", "size", {72, 72}},
	Animations = "animations-worm", Icon = "icon-rat",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Coward = true,
	Fauna = true,
	Insect = true,
	Herbivore = true,
	Detritivore = true,
	Diminutive = true,
	ChildUpgrade = "upgrade-bee-child",
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
	Image = {"file", "neutral/units/snail.png", "size", {32, 32}},
	Animations = "animations-snail", Icon = "icon-rat",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Coward = true,
	Fauna = true,
	Insect = true,
	Herbivore = true,
	Detritivore = true,
	ChildUpgrade = "upgrade-bee-child",
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
	Image = {"file", "neutral/units/slug.png", "size", {32, 32}},
	Animations = "animations-slug", Icon = "icon-rat",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Coward = true,
	Fauna = true,
	Insect = true,
	Herbivore = true,
	Detritivore = true,
	ChildUpgrade = "upgrade-bee-child",
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
	Image = {"file", "neutral/units/snail_blue_purple_shell.png", "size", {32, 32}},
	Animations = "animations-snail", Icon = "icon-rat",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Coward = true,
	Fauna = true,
	Insect = true,
	Herbivore = true,
	Detritivore = true,
	ChildUpgrade = "upgrade-bee-child",
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
	--Description = _("Frog"),
	--Background = _(" A \"Frog\" is a kind of \"Amphibian\"."),
	Image = {"file", "graphics/neutral/units/frog.png", "size", {18, 18}},
	Animations = "animations-frog", Icon = "icon-slime",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Fauna = true,
	Flesh = true,
	Insectivore = true,
	ChildUpgrade = "upgrade-child",
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

DefineUnitType("unit-bird", { Name = _("Bird"),
	Image = {"file", "neutral/units/bird_brown.png", "size", {32, 32}},
	Animations = "animations-bird", Icon = "icon-gryphon",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Coward = true,
	Fauna = true,
	Flesh = true,
	Insectivore = true,
	PierceDamage = true,
	ChildUpgrade = "upgrade-child",
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
	Image = {"file", "neutral/units/bird_black.png", "size", {32, 32}},
	Animations = "animations-bird", Icon = "icon-gryphon",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Coward = true,
	Fauna = true,
	Flesh = true,
	Insectivore = true,
	Detritivore = true,	
	PierceDamage = true,
	ChildUpgrade = "upgrade-child",
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
	Parent = "unit-template-unit",
	Image = {"file", "neutral/units/bat.png", "size", {32, 32}},
	Animations = "animations-bird", Icon = "icon-rat",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Fauna = true,
	PeopleAversion = true,
	Flesh = true,
	Insectivore = true,
	PierceDamage = true,
	ChildUpgrade = "upgrade-child",
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow"},
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
	Parent = "unit-template-unit",
	Image = {"file", "neutral/units/blood_bat.png", "size", {64, 64}},
	Animations = "animations-bird", Icon = "icon-rat",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Fauna = true,
	PeopleAversion = true,
	Flesh = true,
	Predator = true,
	Carnivore = true,
	Insectivore = true, -- so that they eat snigills
	PierceDamage = true,
	ChildUpgrade = "upgrade-child",
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow"},
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
	Parent = "unit-template-unit",
	Image = {"file", "neutral/units/dread_bat.png", "size", {64, 64}},
	Animations = "animations-bird", Icon = "icon-rat",
	NeutralMinimapColor = {192, 192, 192},
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
	organic = true,
	Fauna = true,
	PeopleAversion = true,
	Flesh = true,
	Predator = true,
	Carnivore = true,
	Insectivore = true, -- so that they eat snigills
	PierceDamage = true,
	ChildUpgrade = "upgrade-child",
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow"},
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

DefineUnitType("unit-template-deposit", { Name = _("Deposit"),
	Parent = "unit-template-building",
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	Construction = "construction-land2",
	Speed = 0,
	HitPoints = 25500,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	StartingResources = 50000,
	Affixes = {"upgrade-item-prefix-dwindling", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-replenishing", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-replenishment", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "gold-mine-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-mine", { Name = _("Mine"),
	Parent = "unit-template-building",
	Animations = "animations-mine",
	NeutralMinimapColor = {255, 255, 0},
	Construction = "construction-mine",
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Speed = 0,
	HitPoints = 650,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
--	Armor = 20, Missile = "missile-none",
	Armor = 5, Missile = "missile-none",
	Priority = 20, AnnoyComputerFactor = 20,
	Points = 160,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	CanHarvest = true,
	BurnPercent = 50,
	BurnDamageRate = 1,
	Affixes = {"upgrade-item-prefix-dwindling", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-replenishing", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-replenishment", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "gold-mine-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-gold-deposit", { Name = _("Gold Deposit"),
	Parent = "unit-template-deposit",
	Description = _("Gold deposits contain deep veins of gold, which can be gainfully mined after the proper infrastructure is put into place."),
	Image = {"file", "neutral/buildings/gold_deposit.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/gold_deposit_shadow.png", "size", {96, 96}},
	Icon = "icon-gold-deposit",
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
	GivesResource = "gold"
} )

DefineUnitType("unit-gold-mine", { Name = _("Gold Mine"),
	Parent = "unit-template-mine",
	Class = "gold-mine",
	Description = _("Gold is a crucial metal for most societies, as it serves both as a durable stock of value, and as a means of exchange with which a myriad of goods and services can be traded for."),
	Image = {"file", "neutral/buildings/gold_mine.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/gold_mine_shadow.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/gold_mine_light.png"},
	Icon = "icon-gold-mine",
--	Costs = {"time", 200, "gold", 700, "lumber", 450},
	Costs = {"time", 200, "lumber", 2050},
	BuildingRules = { { "ontop", { Type = "unit-gold-deposit", ReplaceOnDie = true, ReplaceOnBuild = true} } },
	GivesResource = "gold",
	ButtonPos = 10,
	ButtonKey = "g",
	ButtonHint = _("Build ~!Gold Mine")
} )

DefineUnitType("unit-silver-deposit", { Name = _("Silver Deposit"),
	Parent = "unit-template-deposit",
	Description = _("Silver deposits often contain deep veins of silver, which can be gainfully mined after the proper infrastructure is put into place."),
	Image = {"file", "neutral/buildings/silver_deposit.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/silver_deposit_shadow.png", "size", {96, 96}},
	Icon = "icon-silver-deposit",
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
	GivesResource = "silver"
} )

DefineUnitType("unit-silver-mine", { Name = _("Silver Mine"),
	Parent = "unit-template-mine",
	Class = "silver-mine",
	Description = _("Silver is a crucial metal for most societies, as it serves both as a durable stock of value, and as a means of exchange with which a myriad of goods and services can be traded for. Although not as valuable as gold, silver is still a highly sought-after metal."),
	Image = {"file", "neutral/buildings/silver_mine.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/silver_mine_shadow.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/silver_mine_light.png"},
	Icon = "icon-silver-mine",
	Costs = {"time", 200, "lumber", 1025},
	BuildingRules = { { "ontop", { Type = "unit-silver-deposit", ReplaceOnDie = true, ReplaceOnBuild = true} } },
	GivesResource = "silver",
	ButtonPos = 11,
	ButtonKey = "v",
	ButtonHint = _("Build Sil~!ver Mine")
} )

DefineUnitType("unit-copper-deposit", { Name = _("Copper Deposit"),
	Parent = "unit-template-deposit",
	Description = _("Copper deposits contain deep veins of copper, which can be gainfully mined after the proper infrastructure is put into place."),
	Image = {"file", "neutral/buildings/copper_deposit.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/copper_deposit_shadow.png", "size", {96, 96}},
	Icon = "icon-copper-deposit",
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
	GivesResource = "copper"
} )

DefineUnitType("unit-copper-mine", { Name = _("Copper Mine"),
	Parent = "unit-template-mine",
	Class = "copper-mine",
	Description = _("More common than either gold or silver, copper has a multitude of uses. It not only serves as a stock of value and means of exchange, but also as a material for utensils and as an ingredient to the making of bronze."),
	Image = {"file", "neutral/buildings/copper_mine.png", "size", {96, 96}},
	Shadow = {"file", "neutral/buildings/copper_mine_shadow.png", "size", {96, 96}},
	LightImage = {"file", "neutral/buildings/copper_mine_light.png"},
	Icon = "icon-copper-mine",
	Costs = {"time", 200, "lumber", 510},
	BuildingRules = { { "ontop", { Type = "unit-copper-deposit", ReplaceOnDie = true, ReplaceOnBuild = true} } },
	GivesResource = "copper",
	ButtonPos = 12,
	ButtonKey = "c",
	ButtonHint = _("Build ~!Copper Mine")
} )

DefineUnitType("unit-coal-mine", { Name = _("Coal Mine"),
	Parent = "unit-template-building",
	Description = _("Coal is a valuable heating material."),
	Image = {"file", "neutral/buildings/coal_mine.png", "size", {96, 96}},
	Animations = "animations-mine", Icon = "icon-coal-mine",
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	Construction = "construction-land2",
	Speed = 0,
	HitPoints = 25500,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
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
		"dead", "building-destroyed"} } )

DefineUnitType("unit-gold-rock", { Name = _("Gold Rock"),
	Image = {"file", "neutral/buildings/gold_rock_1.png", "size", {43, 43}},
	Shadow = {"file", "neutral/buildings/gold_rock_1_shadow.png", "size", {43, 43}},
	Animations = "animations-building", Icon = "icon-gold-rock",
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
--	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	StartingResources = 1000,
	NumDirections = 1,
	Building = false, VisibleUnderFog = true,
	GivesResource = "gold", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/buildings/gold_rock_2.png",
			"shadow-file", "neutral/buildings/gold_rock_2_shadow.png"
		},
		{
			"variation-id", "3",
			"file", "neutral/buildings/gold_rock_3.png",
			"shadow-file", "neutral/buildings/gold_rock_3_shadow.png"
		},
		{
			"variation-id", "4",
			"file", "neutral/buildings/gold_rock_4.png",
			"shadow-file", "neutral/buildings/gold_rock_4_shadow.png"
		}
	},
	Sounds = {
		"selected", "metal-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-silver-rock", { Name = _("Silver Rock"),
	Image = {"file", "neutral/buildings/silver_rock_1.png", "size", {43, 43}},
	Shadow = {"file", "neutral/buildings/silver_rock_1_shadow.png", "size", {43, 43}},
	Animations = "animations-building", Icon = "icon-silver-rock",
	Offset = {0, -2},
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
	Type = "land",
	StartingResources = 1000,
	NumDirections = 1,
	Building = false, VisibleUnderFog = true,
	GivesResource = "silver", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/buildings/silver_rock_2.png",
			"shadow-file", "neutral/buildings/silver_rock_2_shadow.png"
		},
		{
			"variation-id", "3",
			"file", "neutral/buildings/silver_rock_3.png",
			"shadow-file", "neutral/buildings/silver_rock_3_shadow.png"
		},
		{
			"variation-id", "4",
			"file", "neutral/buildings/silver_rock_4.png",
			"shadow-file", "neutral/buildings/silver_rock_4_shadow.png"
		}
	},
	Sounds = {
		"selected", "metal-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-copper-rock", { Name = _("Copper Rock"),
	Image = {"file", "neutral/buildings/copper_rock_1.png", "size", {43, 43}},
	Shadow = {"file", "neutral/buildings/copper_rock_1_shadow.png", "size", {43, 43}},
	Animations = "animations-building", Icon = "icon-copper-rock",
	Offset = {0, -2},
	NeutralMinimapColor = {255, 255, 0},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
	Type = "land",
	StartingResources = 1000,
	NumDirections = 1,
	Building = false, VisibleUnderFog = true,
	GivesResource = "copper", CanHarvest = true,
	HarvestFromOutside = true,
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "neutral/buildings/copper_rock_2.png",
			"shadow-file", "neutral/buildings/copper_rock_2_shadow.png"
		},
		{
			"variation-id", "3",
			"file", "neutral/buildings/copper_rock_3.png",
			"shadow-file", "neutral/buildings/copper_rock_3_shadow.png"
		},
		{
			"variation-id", "4",
			"file", "neutral/buildings/copper_rock_4.png",
			"shadow-file", "neutral/buildings/copper_rock_4_shadow.png"
		}
	},
	Sounds = {
		"selected", "metal-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-wood-pile", { Name = _("Wood Pile"),
	Image = {"file", "neutral/buildings/wood_pile.png", "size", {43, 43}},
	Animations = "animations-decoration", Icon = "icon-wood-pile",
	NeutralMinimapColor = {165, 42, 42},
	Costs = {"time", 150},
	Speed = 0,
	HitPoints = 25500,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 0,
--	Corpse = "unit-destroyed-3x3-place",
	Type = "land",
	StartingResources = 500,
	Building = true, VisibleUnderFog = true,
	GivesResource = "lumber", CanHarvest = true,
	HarvestFromOutside = true,
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
		"selected", "tree-selected",
--		"acknowledge", "gold-mine-acknowledge",
--		"ready", "gold-mine-ready",
--		"help", "gold-mine-help",
--		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-tree-stump", { Name = _("Tree Stump"),
	Image = {"file", "neutral/buildings/tree_stump.png", "size", {72, 72}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-tree-stump", Icon = "icon-tree-stump",
	Speed = 0,
	HitPoints = 20,
	DrawLevel = 30,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Type = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	MaxOnBoard = 1,
	CanTransport = {"organic", "only", "Mounted", "false"},
	SaveCargo = true,
	StartingResources = 250,
	GivesResource = "lumber", CanHarvest = true,
	HarvestFromOutside = true,
	RightMouseAction = "rally-point",
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
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-hole", { Name = _("Hole"),
	Image = {"file", "tilesets/cave/neutral/buildings/hole.png", "size", {64, 64}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-tree-stump", Icon = "icon-hole",
	Speed = 0,
	HitPoints = 50,
	DrawLevel = 30,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Type = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	NumDirections = 1,
	BoardSize = 100, -- to prevent this unit from being loaded into transporters
	VisibleUnderFog = true,
	MaxOnBoard = 1,
	CanTransport = {"organic", "only", "Mounted", "false"},
	SaveCargo = true,
	Sounds = {
		"selected", "click",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
--		"ready", "dwarven-sentry-tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )		
	
DefineUnitType("unit-mushroom", { Name = "Mushroom",
	Image = {"file", "neutral/decorations/mushroom.png", "size", {32, 32}},
	Animations = "animations-mushroom-patch", Icon = "icon-mushroom",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
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
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
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

DefineUnitType("unit-flowers", { Name = "Flowers",
	Image = {"file", "tilesets/forest/neutral/decorations/flowers.png", "size", {32, 32}},
	Animations = "animations-decoration-old", Icon = "icon-flowers",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	NonSolid = true,
	Vegetable = true,
	Variations = {
		{
			"variation-id", "conifer-forest-autumn",
			"tileset", "Conifer Forest (Autumn)"
		},
		{
			"variation-id", "conifer-forest-summer",
			"tileset", "Conifer Forest (Summer)"
		},
		{
			"variation-id", "fairlimbed-forest",
			"tileset", "Fairlimbed Forest"
		},
		{
			"variation-id", "swamp",
			"file", "tilesets/swamp/neutral/decorations/flowers.png",
			"tileset", "Swamp"
		},
		{
			"variation-id", "cave",
			"file", "tilesets/swamp/neutral/decorations/flowers.png",
			"tileset", "Cave"
		},
		{
			"variation-id", "dungeon",
			"file", "tilesets/swamp/neutral/decorations/flowers.png",
			"tileset", "Dungeon"
		}
	},
	Sounds = {}
} )

DefineUnitType("unit-large-flower", { Name = "Large Flower",
	Image = {"file", "tilesets/forest/neutral/decorations/large_flower.png", "size", {32, 32}},
	Animations = "animations-decoration-old", Icon = "icon-large-flower",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	NonSolid = true,
	Vegetable = true,
	Variations = {
		{
			"variation-id", "conifer-forest-autumn",
			"tileset", "Conifer Forest (Autumn)"
		},
		{
			"variation-id", "conifer-forest-summer",
			"tileset", "Conifer Forest (Summer)"
		},
		{
			"variation-id", "fairlimbed-forest",
			"tileset", "Fairlimbed Forest"
		},
		{
			"variation-id", "swamp",
			"file", "tilesets/swamp/neutral/decorations/large_flower.png",
			"tileset", "Swamp"
		},
		{
			"variation-id", "cave",
			"file", "tilesets/swamp/neutral/decorations/large_flower.png",
			"tileset", "Cave"
		},
		{
			"variation-id", "dungeon",
			"file", "tilesets/swamp/neutral/decorations/large_flower.png",
			"tileset", "Dungeon"
		}
	},
	Sounds = {}
} )

DefineUnitType("unit-fern", { Name = "Fern",
	Image = {"file", "tilesets/forest/neutral/decorations/fern.png", "size", {48, 48}},
	Animations = "animations-decoration-old", Icon = "icon-fern",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NumDirections = 1,
	Indestructible = true,
	VisibleUnderFog = true,
	Diminutive = true,
	Vegetable = true,
	Variations = {
		{
			"variation-id", "conifer-forest-autumn",
			"tileset", "Conifer Forest (Autumn)"
		},
		{
			"variation-id", "conifer-forest-summer",
			"tileset", "Conifer Forest (Summer)"
		},
		{
			"variation-id", "fairlimbed-forest",
			"tileset", "Fairlimbed Forest"
		},
		{
			"variation-id", "swamp",
			"file", "tilesets/swamp/neutral/decorations/fern.png",
			"tileset", "Swamp"
		},
		{
			"variation-id", "cave",
			"file", "tilesets/swamp/neutral/decorations/fern.png",
			"tileset", "Cave"
		},
		{
			"variation-id", "dungeon",
			"file", "tilesets/swamp/neutral/decorations/fern.png",
			"tileset", "Dungeon"
		}
	},
	Sounds = {}
} )

DefineUnitType("unit-twigs", { Name = _("Twigs"),
	Image = {"file", "neutral/decorations/twigs.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-twigs",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
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
	NeutralMinimapColor = {165, 42, 42},
	Speed = 0,
	HitPoints = 20,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	VisibleUnderFog = true,
	StartingResources = 500,
	GivesResource = "lumber", CanHarvest = true,
	HarvestFromOutside = true,
	Sounds = {
		"selected", "tree-selected"
	}
})

DefineUnitType("unit-bones", { Name = "Bones",
	Image = {"file", "neutral/decorations/bones.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-bones",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
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
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
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
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
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

DefineUnitType("unit-stalagmites", { Name = _("Stalagmites"),
	Image = {"file", "neutral/decorations/stalagmites.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-stalagmites",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
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
		}
	},
	Sounds = {} }
)

function VolcanicCraterSpit(unit) -- this is called every second
	OrderUnit(GetUnitVariable(unit, "Player"), GetUnitVariable(unit, "Ident"), {GetUnitVariable(unit, "PosX"), GetUnitVariable(unit, "PosY")}, nil, "stop")
	if (CurrentQuest ~= "The Wyrm") then
		if (SyncRand(10) == 0) then -- one chance in thirty to happen (that is, this is going to happen on average once every half minute)
			if (SyncRand(2) == 0) then
				local target_x = GetUnitVariable(unit,"PosX") + SyncRand(GetUnitVariable(unit,"AttackRange") + GetUnitTypeData(GetUnitVariable(unit, "Ident"), "TileWidth") + GetUnitVariable(unit,"AttackRange")) - GetUnitVariable(unit,"AttackRange")
				local target_y = GetUnitVariable(unit,"PosY") + SyncRand(GetUnitVariable(unit,"AttackRange") + GetUnitTypeData(GetUnitVariable(unit, "Ident"), "TileHeight") + GetUnitVariable(unit,"AttackRange")) - GetUnitVariable(unit,"AttackRange")
				OrderUnit(GetUnitVariable(unit, "Player"), GetUnitVariable(unit, "Ident"), {GetUnitVariable(unit, "PosX"), GetUnitVariable(unit, "PosY")}, {target_x, target_y}, "attack-ground")
			else
				if (GetNumUnitsAt(15, "unit-miasma", {0, 0}, {256, 256}) < GetNumUnitsAt(15, "unit-volcanic-crater", {0, 0}, {256, 256})) then
					CreateUnit("unit-miasma", 15, {GetUnitVariable(unit, "PosX"), GetUnitVariable(unit, "PosY")})
				end
			end
		end
	end
end

DefineUnitType("unit-volcanic-crater", { Name = _("Volcanic Crater"),
	Image = {"file", "neutral/decorations/volcanic_crater.png", "size", {64, 64}},
	Animations = "animations-volcanic-crater", Icon = "icon-volcanic-crater",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 30,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 0,
	FireDamage = 80, Missile = "missile-flaming-catapult-rock",
	Priority = 0,
	Type = "land",
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

DefineUnitType("unit-glyph", { Name = _("Glyph"),
	Image = {"file", "neutral/buildings/glyph.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration", Icon = "icon-glyph",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 4,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NonSolid = true,
	NumDirections = 1,
	Indestructible = true,
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
		"dead", "building-destroyed"} }
)

DefineUnitType("unit-stairs", { Name = _("Stairs"),
	Image = {"file", "neutral/buildings/stairs.png", "size", {32, 32}},
	NeutralMinimapColor = {128, 128, 0},
	Animations = "animations-decoration", Icon = "icon-stairs",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
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

DefineUnitType("unit-door", { Name = _("Door"),
	Image = {"file", "tilesets/dungeon/neutral/decorations/door_left.png", "size", {32, 32}},
	Animations = "animations-door", Icon = "icon-door",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 10,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 0,
	Type = "land",
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
		"dead", "building-destroyed"} } )

DefineUnitType("unit-shelf", { Name = "Shelf",
	Image = {"file", "neutral/decorations/shelf.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-shelf",
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
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
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
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
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
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
	Speed = 0,
	HitPoints = 0,
	DrawLevel = 5,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 0,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
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

DefineUnitType("unit-dwarven-dead-body", { Name = "Dead Body",
	Image = {"file", "neutral/units/dwarven_corpse.png", "size", {72, 72}},
	Animations = "animations-dwarven-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-gnomish-dead-body", { Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
	Animations = "animations-gnomish-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-goblin-dead-body", { Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
	Animations = "animations-goblin-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-human-dead-body", { Name = "Dead Body",
	Image = {"file", "neutral/units/human_corpse.png", "size", {72, 72}},
	Animations = "animations-dwarven-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

DefineUnitType("unit-kobold-dead-body", { Name = "Dead Body",
	Image = {"file", "neutral/units/gnomish_goblin_and_kobold_corpses.png", "size", {72, 72}},
	Animations = "animations-kobold-dead-body", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Vanishes = true,
	Detritus = true,
	Sounds = {}
} )

--DefineUnitType("unit-dead-sea-body", { Name = "Dead Body",
--	Image = {"file", "neutral/units/corpses.png", "size", {72, 72}},
--	Animations = "animations-dead-sea-body", Icon = "icon-dwarven-miner",
--	Speed = 0,
--	HitPoints = 255,
--	DrawLevel = 30,
--	TileSize = {2, 2}, BoxSize = {31, 31},
--	SightRange = 1,
--	Missile = "missile-none",
--	Priority = 0,
--	Type = "naval",
--	Vanishes = true,
--	Sounds = {} } )

DefineUnitType("unit-raft", { Name = _("Raft"),
	Image = {"file", "neutral/units/raft.png", "size", {72, 72}},
	Animations = "animations-raft", Icon = "icon-raft",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 15,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {42, 42},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "naval",
	Bridge = true,
	VisibleUnderFog = true,
	Sounds = {
		"selected", "click",
		"dead", "ship-destroyed"
	} 
} )

DefineUnitType("unit-scepter-of-fire", { Name = _("Scepter of Fire"),
	Image = {"file", "neutral/items/scepter.png", "size", {32, 32}},
	Animations = "animations-item", Icon = "icon-scepter",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Item = true,
	Sounds = {
		"selected", "click",
		"used", "gold-coins"
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
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	PowerUp = true,
	GivesResource = "gold",
	StartingResources = 5,
	Sounds = {
		"selected", "click",
		"used", "gold-coins"
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
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
--	GivesResource = "gold", CanHarvest = true,
	NumDirections = 1,	
	PowerUp = true,
	GivesResource = "gold",
	StartingResources = 100,
	Sounds = {
		"selected", "click",
		"used", "gold-coins"
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
	Armor = 5, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"} } )

DefineUnitType("unit-gold-and-gems-chest", { Name = _("Chest"),
	Image = {"file", "neutral/items/chest.png", "size", {32, 32}},
	Animations = "animations-gold-and-gems-chest", Icon = "icon-chest",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 100,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Sounds = {
		"selected", "click",
		"dead", "building-destroyed"} } )

DefineUnitType("unit-alchemy-bench", { Name = _("Alchemy Bench"),
	Image = {"file", "neutral/items/alchemy_bench.png", "size", {32, 32}},
	Animations = "animations-alchemy-bench", Icon = "icon-alchemy-bench",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
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

DefineUnitType("unit-table", { Name = _("Table"),
	Image = {"file", "neutral/decorations/table.png", "size", {32, 32}},
	Animations = "animations-table", Icon = "icon-table",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
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

DefineUnitType("unit-chair", { Name = _("Chair"),
	Image = {"file", "neutral/decorations/chair.png", "size", {32, 32}},
	Animations = "animations-chair", Icon = "icon-chair",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 3,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
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

DefineUnitType("unit-bed", { Name = _("Bed"),
	Image = {"file", "neutral/decorations/bed.png", "size", {32, 32}},
	Animations = "animations-bed", Icon = "icon-bed",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
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

DefineUnitType("unit-yale-excrement", { Name = _("Yale Excrement"),
	Image = {"file", "neutral/decorations/yale_excrement.png", "size", {72, 72}},
	Animations = "animations-yale-excrement", Icon = "icon-yale-excrement",
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Priority = 0,
	Type = "land",
	IsNotSelectable = true,
	Decoration = true,
	NonSolid = true,
	Detritus = true,
	Variations = {
		{
			"variation-id", "brown"
		},
		{
			"variation-id", "green",
			"file", "neutral/decorations/yale_excrement_green.png"
		}
	}
} )

Load("scripts/items.lua")

DefineUnitType("unit-potion-of-decay", { Name = _("Potion of Decay"),
	Image = {"file", "neutral/items/potion_blue.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-blue-potion",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	PowerUp = true,
	HitPointHealing = -15,
	Sounds = {
		"selected", "click",
		"used", "potion"
	} 
} )

DefineUnitType("unit-potion-of-slowness", { Name = _("Potion of Slowness"),
	Image = {"file", "neutral/items/potion_purple.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-purple-potion",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	PowerUp = true,
	Slows = true,
	Sounds = {
		"selected", "click",
		"used", "potion"
	} 
} )

DefineUnitType("unit-barrel", { Name = _("Barrel"),
	Image = {"file", "neutral/items/barrel.png", "size", {32, 32}},
	Animations = "animations-barrel", Icon = "icon-barrel",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	Drops = {"unit-potion-of-healing", "unit-potion-of-decay", "unit-potion-of-slowness"},
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

DefineUnitType("unit-explosive-barrel", { Name = _("Explosive Barrel"),
	Image = {"file", "neutral/items/explosive_barrel.png", "size", {32, 32}},
	Animations = "animations-barrel", Icon = "icon-barrel",
	NeutralMinimapColor = {128, 128, 0},
	Speed = 0,
	HitPoints = 5,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 2, Missile = "missile-none",
	Priority = 0,
	Type = "land",
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

DefineUnitType("unit-gryphon-feather", { Name = _("Gryphon Feather"),
	Image = {"file", "neutral/items/gryphon_feather.png", "size", {28, 26}},
	Animations = "animations-item", Icon = "icon-gryphon-feather",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Item = true,
	Sounds = {}
} )

DefineUnitType("unit-caltrops", { Name = _("Caltrops"),
	Image = {"file", "neutral/items/caltrops.png", "size", {32, 32}},
	Animations = "animations-decoration", Icon = "icon-caltrops",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 10,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	PiercingDamage = 10, Missile = "missile-none",
	Priority = 0,
	Type = "land",
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

DefineUnitType("unit-trap", { Name = _("Trap"),
	Image = {"file", "neutral/items/trap.png", "size", {32, 32}},
	Animations = "animations-trap", Icon = "icon-trap",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 15,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	PiercingDamage = 15, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,	
	Trap = true,
	PierceDamage = true,
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
	SightRange = 1,
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
	Diminutive = true, 
	Transparency = 50,
	Decoration = true,
	Indestructible = true,
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
	SightRange = 1,
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
	Diminutive = true, 
	Transparency = 50,
	Decoration = true,
	Indestructible = true,
	VisibleUnderFog = false,
	Sounds = {
		"selected", "click",
--		"acknowledge", "bat-selected",
--		"ready", "bat-selected",
--		"help", "critter-help",
--		"dead", "rat-dead"
	}
} )

DefineUnitType("unit-miasma", { Name = _("Miasma"),
	Image = {"file", "neutral/decorations/miasma.png", "size", {128, 128}},
	Animations = "animations-roaming-fog", Icon = "icon-miasma",
	NeutralMinimapColor = {192, 192, 192},
	Speed = 3,
	HitPoints = 30, -- miasma lives for 30 seconds
	DrawLevel = 45,
	TileSize = {4, 4}, BoxSize = {127, 127},
	SightRange = 1,
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
--		"help", "critter-help",
--		"dead", "rat-dead"
	}
} )

--DefineUnitType("unit-destroyed-1x1-place", { Name = "Destroyed 1x1 Place",
--	Image = {"size", {32, 32}},
--	Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
--	Speed = 0,
--	HitPoints = 255,
--	DrawLevel = 10,
--	TileSize = {1, 1}, BoxSize = {31, 31},
--	SightRange = 2,
--	Missile = "missile-none",
--	Priority = 0,
--	Type = "land",
--	Building = true, VisibleUnderFog = true,
--	Vanishes = true,
--	Sounds = {} } )

DefineUnitType("unit-destroyed-2x2-place", { Name = "Destroyed 2x2 Place",
	Image = {"file", "tilesets/swamp/neutral/buildings/destroyed_site.png", "size", {64, 64}},
	Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 10,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Vanishes = true,
	Sounds = {}
} )

DefineUnitType("unit-destroyed-3x3-place", { Name = "Destroyed 3x3 Place",
	Image = {"file", "tilesets/swamp/neutral/buildings/destroyed_site.png", "size", {64, 64}},
	Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 10,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Vanishes = true,
	Sounds = {} } )

--DefineUnitType("unit-destroyed-3x3-place-water", { Name = "Destroyed 3x3 Place Water",
--	Image = {"size", {64, 64}},
--	Animations = "animations-destroyed-place-water", Icon = "icon-dwarven-miner",
--	Speed = 0,
--	HitPoints = 255,
--	DrawLevel = 10,
--	TileSize = {3, 3}, BoxSize = {95, 95},
--	SightRange = 0,
--	Missile = "missile-none",
--	Priority = 0,
--	Type = "naval",
--	Building = true, VisibleUnderFog = true,
--	Vanishes = true,
--	Sounds = {} } )

DefineUnitType("unit-destroyed-4x4-place", { Name = "Destroyed 4x4 Place",
	Image = {"file", "tilesets/swamp/neutral/buildings/destroyed_site.png", "size", {64, 64}},
	Animations = "animations-destroyed-place", Icon = "icon-dwarven-miner",
	Speed = 0,
	HitPoints = 255,
	DrawLevel = 10,
	TileSize = {4, 4}, BoxSize = {127, 127},
	SightRange = 1,
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Vanishes = true,
	Sounds = {} } )

DefineUnitType("unit-revealer", { Name = "Revealer",
	Animations = "animations-building", Icon = "icon-eagle-eye",
	Speed = 0,
	HitPoints = 1,
	TileSize = {1, 1}, BoxSize = {1, 1},
	SightRange = 12,
	Missile = "missile-none",
	Priority = 0,
	DecayRate = 1,
	Type = "land",
	Building = true, VisibleUnderFog = true,
	Revealer = true,
	DetectCloak = true,
	Sounds = {}
} )

-- Template Units

DefineUnitType("unit-template-worker", { Name = _("Worker"),
	Parent = "unit-template-unit",
	Class = "worker",
	Costs = {"time", 45, "gold", 400},
	Intelligence = 10,
	Speed = 10,
	HitPoints = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
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
	Type = "land",
	RightMouseAction = "harvest",
	CanAttack = true, RepairRange = 1,
	CanTargetLand = true,
	Coward = true,
	organic = true,
	Flesh = true,
	ButtonPos = 1,
	ButtonKey = "w",
	ButtonHint = _("Train ~!Worker"),
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow", "upgrade-cruel"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 6,
			"wait-at-depot", 150
		},
		{
			"resource-id", "silver",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 6,
			"wait-at-depot", 150,
			"final-resource", "gold",
			"final-resource-conversion-rate", 50
		},
		{
			"resource-id", "copper",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 6,
			"wait-at-depot", 150,
			"final-resource", "gold",
			"final-resource-conversion-rate", 25
		},
		{
			"resource-id", "lumber",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 6,
			"wait-at-depot", 150
		},
		{
			"resource-id", "stone",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 6,
			"wait-at-depot", 150
		},
		{
			"resource-id", "coal",
			"resource-capacity", 100,
			"resource-step", 2,
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

DefineUnitType("unit-template-militia", { Name = _("Militia"),
	Parent = "unit-template-unit",
	Class = "militia",
	Intelligence = 10,
	Speed = 10,
	HitPoints = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	Armor = 1, BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 50,
	Points = 30,
	Demand = 1,
	Gender = "male",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	Flesh = true,
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow", "upgrade-cruel"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-grass", "step-leaves",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone"
	}
} )

DefineUnitType("unit-template-infantry", { Name = _("Infantry"),
	Parent = "unit-template-unit",
	Class = "infantry",
	Costs = {"time", 60, "gold", 600},
	Intelligence = 10,
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 10,
	Priority = 60,
	Points = 50,
	Demand = 1,
	Upkeep = 25,
	Gender = "male",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	Flesh = true,
	CanCastSpell = {"spell-stun"},
	AutoCastActive = {"spell-stun"},
	ButtonPos = 1,
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow", "upgrade-cruel"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-veteran-infantry", { Name = _("Veteran Infantry"),
	Parent = "unit-template-infantry",
	Class = "veteran-infantry",
	Costs = {"time", 90, "gold", 900},
	Intelligence = 11,
	HitPoints = 75,
	BasicDamage = 10,
	Points = 75,
	Level = 2,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	AiDrops = {"unit-amulet", "unit-ring"},
	DropAffixes = {"upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-vicious", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-thorns"}
} )

DefineUnitType("unit-template-heroic-infantry", { Name = _("Heroic Infantry"),
	Parent = "unit-template-veteran-infantry",
	Class = "heroic-infantry",
	Costs = {"time", 0, "gold", 0},
	Intelligence = 12,
	HitPoints = 90,
	BasicDamage = 12,
	Points = 100,
	Level = 3,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	Inventory = true,
	organic = true,
	Mana = {Enable = true, Max = 225, Value = 225, Increase = 1},
	DropAffixes = {"upgrade-item-suffix-of-power", "upgrade-item-suffix-of-regeneration", "upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-victory", "upgrade-item-suffix-of-vision"}
} )

DefineUnitType("unit-template-spearman", { Name = _("Spearman"),
	Parent = "unit-template-infantry",
	Class = "spearman",
	Costs = {"time", 50, "gold", 400, "lumber", 100},
	BasicDamage = 5, -- reduced damage, since it is cheaper, and because it has a bonus against mounted units
	BonusAgainstMounted = 100,
	Armor = 1,
	WeaponClasses = {"spear"},
	PierceDamage = true,
	DropAffixes = {},
	Mana = {Enable = true, Max = 75, Value = 75, Increase = 1},
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	ButtonPos = 2,
	Sounds = {
		"hit", "spear-attack",
		"miss", "spear-miss"
	}
} )

DefineUnitType("unit-template-archer", { Name = _("Shooter"),
	Parent = "unit-template-unit",
	Class = "shooter",
	Costs = {"time", 70, "gold", 500, "lumber", 150},
	Intelligence = 11,
	Speed = 10,
	HitPoints = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 5,
	BasicDamage = 9,
	Missile = "missile-arrow",
	FireMissile = "missile-flaming-arrow",
	MaxAttackRange = 5,
	Accuracy = 10,
	Evasion = 10,
	Priority = 55,
	Points = 60,
	Demand = 1,
	Upkeep = 25,
	Gender = "male",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	organic = true,
	Flesh = true,
	AttackFromTransporter = true,
	ButtonPos = 3,
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow", "upgrade-cruel"}, -- near-sighted upgrade not allowed, as it would make the unit have a smaller sight range than its attack range
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-veteran-shooter", { Name = _("Veteran Shooter"),
	Parent = "unit-template-archer",
	Class = "veteran-shooter",
	Costs = {"time", 105, "gold", 750, "lumber", 225},
	Intelligence = 12,
	HitPoints = 50,
	BasicDamage = 10,
	Accuracy = 11,
	Points = 90,
	Level = 2,
	AiDrops = {"unit-amulet", "unit-ring"},
	DropAffixes = {"upgrade-item-prefix-penetrating", "upgrade-item-prefix-vicious", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed"}
} )

DefineUnitType("unit-template-heroic-shooter", { Name = _("Heroic Shooter"),
	Parent = "unit-template-veteran-shooter",
	Class = "heroic-shooter",
	Costs = {"time", 140, "gold", 1000, "lumber", 300},
	Intelligence = 13,
	HitPoints = 60,
	BasicDamage = 11,
	Accuracy = 12,
	Points = 120,
	Level = 3,
	DropAffixes = {"upgrade-item-prefix-impregnable", "upgrade-item-suffix-of-thorns"}
} )

DefineUnitType("unit-template-thief", { Name = _("Thief"),
	Parent = "unit-template-unit",
	Class = "thief",
	Costs = {"time", 0, "gold", 400},
	Intelligence = 11,
	Speed = 10,
	HitPoints = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Backstab = 100,
	Accuracy = 12,
	Evasion = 12,
	Priority = 50,
	Points = 30,
	Demand = 1,
	Upkeep = 25,
	Gender = "male",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	Flesh = true,
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow", "upgrade-cruel"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-cavalry", { Name = _("Cavalry"),
	Parent = "unit-template-unit",
	Class = "cavalry",
	Costs = {"time", 90, "gold", 900},
	Intelligence = 11,
	Speed = 13,
	HitPoints = 75,
	TileSize = {1, 1}, BoxSize = {42, 42},
	SightRange = 4,
	Armor = 2, BasicDamage = 12, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 10,
	Evasion = 9,
	Priority = 63,
	Points = 75,
	Demand = 2,
	Gender = "male",
	Level = 2,
	Upkeep = 25,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	Mounted = true,
	Flesh = true,
	Mana = {Enable = true, Max = 150, Value = 150, Increase = 1},
	CanCastSpell = {"spell-stun"},
	AutoCastActive = {"spell-stun"},
	TechnologyPointCost = 1,
	ButtonPos = 4,
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow", "upgrade-cruel"},
	AiDrops = {"unit-amulet", "unit-ring"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-priest", { Name = _("Priest"),
	Parent = "unit-template-unit",
	Class = "priest",
	Costs = {"time", 80, "gold", 700},
	Intelligence = 12,
	Speed = 8,
	HitPoints = 40,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 9,
	BasicDamage = 6, Missile = "missile-none",
	MaxAttackRange = 1,
	Accuracy = 8,
	Evasion = 8,
	Priority = 70,
	Points = 60,
	Demand = 1,
	Upkeep = 25,
	Gender = "male",
	Type = "land",
	RightMouseAction = "move",
	Coward = true,
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	Flesh = true,
	Mana = {Enable = true, Max = 190, Value = 190, Increase = 1},
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow", "upgrade-cruel"},
	AiDrops = {"unit-amulet", "unit-ring", "unit-scroll"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-vulnerability"},
	DropSpells = {"spell-detachment", "spell-forgetfulness"},
	Sounds = {
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-flying-rider", { Name = _("Flying Rider"),
	Parent = "unit-template-unit",
	Class = "flying-rider",
	Costs = {"time", 250, "gold", 1750, "lumber", 750},
	Intelligence = 12,
	Speed = 14,
	HitPoints = 100,
	DrawLevel = 60,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 6,
	BasicDamage = 12, Missile = "missile-arrow",
	MaxAttackRange = 5,
	Accuracy = 10,
	Evasion = 10,
	Priority = 65,
	Points = 100,
	Level = 3,
	Demand = 2,
	Upkeep = 50,
	Gender = "male",
	Type = "fly",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	DetectCloak = true,
	organic = true,
	Flesh = true,
	Mounted = true,
	Inventory = true,
	TechnologyPointCost = 1,
	ButtonPos = 6,
	Traits = {"upgrade-mighty", "upgrade-strong", "upgrade-weak", "upgrade-dextrous", "upgrade-clumsy", "upgrade-reckless", "upgrade-near-sighted", "upgrade-keen", "upgrade-limping", "upgrade-old", "upgrade-quick", "upgrade-resilient", "upgrade-slow", "upgrade-cruel"},
	AiDrops = {"unit-amulet", "unit-ring"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-power", "upgrade-item-suffix-of-regeneration", "upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-victory", "upgrade-item-suffix-of-vision", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
	}
} )

DefineUnitType("unit-template-siege-engine", { Name = _("Siege Engine"),
	Parent = "unit-template-unit",
	Class = "siege-engine",
	Costs = {"time", 250, "gold", 900, "lumber", 900},
	TechnologyPointCost = 1,
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Speed = 5,
	HitPoints = 110,
	TileSize = {1, 1}, BoxSize = {63, 63},
	SightRange = 9,
	BasicDamage = 75, Missile = "missile-catapult-sandstone-rock",
	MinAttackRange = 2, MaxAttackRange = 8,
	Accuracy = 8,
	Evasion = 2,
	Priority = 70,
	Points = 100,
	Demand = 2,
	Upkeep = 50,
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	RightMouseAction = "attack",
	GroundAttack = true,
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true,
	NoFriendlyFire = true, -- don't attack a target if friendly units would get hurt too
	ButtonPos = 5,
	Sounds = {
		"selected", "click",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
		"step-grass", "step-leaves"
	}
} )

DefineUnitType("unit-template-transport-ship", { Name = _("Transport"),
	Parent = "unit-template-unit",
	Class = "transport-ship",
--	Costs = {"time", 70, "gold", 600, "lumber", 200, "oil", 500},
	Costs = {"time", 70, "gold", 600, "lumber", 2100},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Speed = 10,
	HitPoints = 150,
	MaxOnBoard = 3,
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 4,
	Missile = "missile-none",
	MaxAttackRange = 1,
	Evasion = 5,
	Priority = 70, AnnoyComputerFactor = 15,
	Points = 50,
	Demand = 2,
	Upkeep = 50, -- should be more?
--	Corpse = "unit-dead-sea-body",
	Type = "naval",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	RightMouseAction = "attack",
	CanTransport = {"LandUnit", "only"},
	SideAttack = true,
	CanAttack = true,
	CanDock = true,
	AttackFromTransporter = true,
	TechnologyPointCost = 1,
	ButtonPos = 1,
	ButtonKey = "t",
	ButtonHint = _("Build ~!Transport"),
	Sounds = {
		"selected", "ship-selected",
		"ready", "ship-selected",
		"acknowledge", "ship-move",
		"dead", "ship-destroyed"
	}
})

DefineUnitType("unit-template-town-hall", { Name = _("Town Hall"),
	Parent = "unit-template-building",
	Class = "town-hall",
	Costs = {"time", 255, "gold", 1200, "lumber", 2400},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 1000, -- 1200 with masonry
	TileSize = {4, 4}, BoxSize = {127, 127},
	SightRange = 6,
	Armor = 5, Missile = "missile-none",
	Priority = 35, AnnoyComputerFactor = 45,
	Points = 200,
	Supply = 5,
	Corpse = "unit-destroyed-4x4-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Center = true, LumberImprove = true, StoneImprove = true,
	BuilderOutside = true,
	CanStore = {"gold", "silver", "copper", "lumber", "stone", "coal"},
	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally-point",
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 1,
	ButtonKey = "h",
	ButtonHint = _("Build Town ~!Hall"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-amulet", "unit-ring", "unit-scroll"}, -- worker-related items, as well as those we would expect a center of administration to have
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-power", "upgrade-item-suffix-of-regeneration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-vision", "upgrade-item-suffix-of-vulnerability"},
	DropSpells = {"spell-detachment", "spell-forgetfulness"},
	Sounds = {
		"selected", "town-hall-selected",
--		"acknowledge", "town-hall-acknowledge",
		"ready", "town-hall-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-stronghold", { Name = _("Stronghold"),
	Parent = "unit-template-town-hall",
	Class = "stronghold",
	Costs = {"time", 200, "gold", 2000, "lumber", 2100, "stone", 1500},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	HitPoints = 1167, -- 1400 with masonry
	SightRange = 9,
	MaxAttackRange = 1,
	Priority = 37, AnnoyComputerFactor = 40,
	Points = 600,
	MaxOnBoard = 3,
	CanTransport = {"LandUnit", "only", "organic", "only"},
	AttackFromTransporter = true,
	SaveCargo = true,
	TechnologyPointCost = 1,
	AiDrops = {}, -- worker-related items, as well as those we would expect a center of administration to have; and military ones, since this is a stronghold
	Affixes = {"upgrade-item-suffix-of-the-colossus"},
	DropAffixes = {"upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-victory"},
	Sounds = {
		"selected", "fortress-selected",
--		"acknowledge", "town-hall-acknowledge",
		"ready", "fortress-ready",
--		"help", "basic-dwarf-voices-help"
	}
} )

DefineUnitType("unit-template-farm", { Name = _("Farm"),
	Parent = "unit-template-building",
	Class = "farm",
	Costs = {"time", 100, "gold", 500, "lumber", 750},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 334, -- 400 with masonry
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 20, AnnoyComputerFactor = 45,
	Points = 100,
	Supply = 4,
	Corpse = "unit-destroyed-2x2-place",
	ExplodeWhenKilled = "missile-explosion",
	Drops = {"unit-cheese", "unit-carrots", "unit-wood-pile"},
	Type = "land",
	BuilderOutside = true,
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 2,
	ButtonKey = "f",
	ButtonHint = _("Build ~!Farm"),
	Trains = {"unit-cheese", "unit-carrots"},
	UnitStock = {"unit-cheese", 3, "unit-carrots", 3},
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "farm-selected",
--		"acknowledge", "farm-acknowledge",
		"ready", "farm-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-barracks", { Name = _("Barracks"),
	Parent = "unit-template-building",
	Class = "barracks",
	Costs = {"time", 200, "gold", 700, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 667, -- 800 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 35,
	Points = 160,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally-point",
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 3,
	ButtonKey = "b",
	ButtonHint = _("Build ~!Barracks"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-power", "upgrade-item-suffix-of-regeneration", "upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-victory", "upgrade-item-suffix-of-vision", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "barracks-selected",
--		"acknowledge", "barracks-acknowledge",
		"ready", "barracks-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-lumber-mill", { Name = _("Lumber Mill"),
	Parent = "unit-template-building",
	Class = "lumber-mill",
	Costs = {"time", 150, "gold", 600, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	ImproveProduction = {"lumber", 25},
	GrandStrategyProductionEfficiencyModifier = {"lumber", 25},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 500, -- 600 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 25, AnnoyComputerFactor = 15,
	Points = 150,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	LumberImprove = true,
	CanStore = {"lumber"},
	BuilderOutside = true,
	Drops = {"unit-wood-pile"},
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 4,
	ButtonKey = "l",
	ButtonHint = _("Build ~!Lumber Mill"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-victory", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "lumber-mill-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "storehouse-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-smithy", { Name = _("Smithy"),
	Parent = "unit-template-building",
	Class = "smithy",
--	Costs = {"time", 200, "gold", 800, "lumber", 450, "oil", 100},
	Costs = {"time", 200, "gold", 800, "lumber", 1650},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 646, -- 775 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 15, AnnoyComputerFactor = 20,
	Points = 170,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	Drops = {"unit-wood-pile"},
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 5,
	ButtonKey = "s",
	ButtonHint = _("Build ~!Smithy"),
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-amulet", "unit-ring"},
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-the-colossus", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-power", "upgrade-item-suffix-of-regeneration", "upgrade-item-suffix-of-slaughter", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-victory", "upgrade-item-suffix-of-vision", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "smithy-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "smithy-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-stables", { Name = _("Stables"),
	Parent = "unit-template-building",
	Class = "stables",
	Costs = {"time", 150, "gold", 1000, "lumber", 900},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 417, -- 500 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 15, AnnoyComputerFactor = 15,
	Points = 210,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	Drops = {"unit-wood-pile"},
	BurnPercent = 50,
	BurnDamageRate = 1,
	ButtonPos = 6,
	ButtonKey = "e",
	ButtonHint = _("Build Stabl~!es"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "stables-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "stables-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-temple", { Name = _("Temple"),
	Parent = "unit-template-building",
	Class = "temple",
	Costs = {"time", 175, "gold", 900, "lumber", 1500},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 584, -- 700 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 15, AnnoyComputerFactor = 35,
	Points = 240,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	Drops = {"unit-wood-pile"},
	BurnPercent = 50,
	BurnDamageRate = 1,
	RegenerationAura = 1,
	TechnologyPointCost = 1,
	ButtonPos = 7,
	ButtonKey = "p",
	ButtonHint = _("Build Tem~!ple"),
	UnitStock = {"unit-potion-of-healing", 6},
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	AiDrops = {"unit-amulet", "unit-ring", "unit-scroll"},
	DropAffixes = {"upgrade-item-prefix-accurate", "upgrade-item-prefix-cruel", "upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-swift", "upgrade-item-prefix-vicious", "upgrade-item-prefix-vulnerable", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-accuracy", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-thorns", "upgrade-item-suffix-of-vulnerability"},
	DropSpells = {"spell-detachment", "spell-forgetfulness"},
	Sounds = {
		"selected", "temple-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
		"ready", "temple-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-watch-tower", { Name = _("Watch Tower"),
	Parent = "unit-template-building",
	Class = "watch-tower",
	Costs = {"time", 60, "gold", 550, "lumber", 300, "stone", 300},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 167, -- 200 with masonry
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 9,
	Armor = 5, Missile = "missile-none",
	Priority = 55, AnnoyComputerFactor = 50,
	Points = 95,
	Corpse = "unit-destroyed-2x2-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	DetectCloak = true,
	MaxOnBoard = 1,
	CanTransport = {"LandUnit", "only", "organic", "only"},
	AttackFromTransporter = true,
	SaveCargo = true,
	BuilderOutside = true,
	Drops = {"unit-wood-pile"},
	RightMouseAction = "attack",
	CanAttack = true,
	BurnPercent = 50,
	BurnDamageRate = 1,
	TechnologyPointCost = 1,
	ButtonPos = 8,
	ButtonKey = "t",
	ButtonHint = _("Build Watch ~!Tower"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-the-colossus", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "tower-selected",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
		"ready", "tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-guard-tower", { Name = _("Guard Tower"),
	Parent = "unit-template-building",
	Class = "guard-tower",
	Costs = {"time", 140, "gold", 500, "lumber", 225, "stone", 225},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 217, -- 260 with masonry
	TileSize = {2, 2}, BoxSize = {63, 63},
	SightRange = 9,
	Armor = 5, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 40, AnnoyComputerFactor = 50,
	Points = 200,
	Corpse = "unit-destroyed-2x2-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	DetectCloak = true,
	MaxOnBoard = 2,
	CanTransport = {"LandUnit", "only", "organic", "only"},
	AttackFromTransporter = true,
	SaveCargo = true,
	Drops = {"unit-wood-pile"},
	RightMouseAction = "attack",
	CanAttack = true,
	BurnPercent = 50,
	BurnDamageRate = 1,
	TechnologyPointCost = 1,
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-the-colossus", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "tower-selected",
--		"acknowledge", "dwarven-sentry-tower-acknowledge",
		"ready", "tower-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-template-dock", { Name = _("Dock"),
	Parent = "unit-template-building",
	Class = "dock",
	Costs = {"time", 200, "gold", 800, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-dock",
	Speed = 0,
	HitPoints = 917, -- 1100 with masonry
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 5, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 20,
	Points = 170,
--	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	BuilderOutside = true,
	ShoreBuilding = true,
--	Drops = {"unit-wood-pile"},
	BurnPercent = 50,
	BurnDamageRate = 1,
	TechnologyPointCost = 1,
	ButtonPos = 9,
	ButtonKey = "d",
	ButtonHint = _("Build ~!Dock"),
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-industrious", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-diligence", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
--		"selected", "lumber-mill-selected",
--		"acknowledge", "dwarven-lumber-mill-acknowledge",
--		"ready", "storehouse-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )

-- Other civilizations' units

DefineUnitType("unit-elven-swordsman", { Name = _("Swordsman"),
	Parent = "unit-template-infantry",
	Civilization = "elf",
--	Description = _("Elves are not warlike by nature, but in times of need, their natural grace and agility serve them well, as does their skillful craftsmanship. An elf can grasp the basics of swordsmanship in a time uncannily short by the standards of other races, and put them to effective use on the battlefield."),
--	Quote = _("\"This he learned, | the lord of Lintanir, / That Volund alone | in Ulfdalir lay; / By night went his men, | their mail-coats were studded, / Their shields in the waning | moonlight shone.\" - The Lay of Volund"),
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-elven-swordsman",
	WeaponClasses = {"sword", "thrusting-sword"},
	HackDamage = true,
	Sounds = {
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-orc-spearthrower", { Name = _("Spearthrower"),
	Parent = "unit-template-archer",
	Civilization = "orc",
--	Description = _("Amongst orcs, throwing spears are often regarded as a cowardly weapon; but even orcs, especially youths and those of slight build, are pragmatic enough to use them in spite of this. Orcish spearthrowers are seldom well equipped, and have no semblance of training. Even as poorly handled as they are, their weapons can still be quite deadly, and the wielders thereof rarely march alone."),
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-dwarven-scout", Icon = "icon-orc-spearthrower",
	Missile = "missile-javelin",
	WeaponClasses = {"javelin"},
	PierceDamage = true,
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
	Parent = "unit-template-unit",
	Class = "marine-infantry",
	Civilization = "orc",
--	Description = _("While often viewed as inferior to their land-loving counterparts, sea orcs represent a great leap for all orcs as they have adapted to aquatic environments. These orcs use their ships to raid the coasts of the Eelhome Sea. With their curved swords they are competent warriors, although their poor fighting skills on land do represent a strategic weakness."),
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-orc-sea-orc",
	Costs = {"time", 60, "gold", 600},
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	Points = 50,
	Demand = 1,
--	Corpse = "unit-dwarven-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	WeaponClasses = {"sword", "thrusting-sword"},
	HackDamage = true,
	Sounds = {
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-orc-shaman", { Name = _("Shaman"),
	Parent = "unit-template-unit",
	Class = "priest",
	Civilization = "orc",
--	Description = _("Orc shamans are the guardians of orcish magic. Respected among orcish tribes, they form the Orcish Council, which makes important decisions for the whole orcish community and arbitrates the many conflicts that arise between tribes of this argumentative race."),
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-orc-shaman",
	Costs = {"time", 60, "gold", 600},
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	Points = 50,
	Demand = 1,
--	Corpse = "unit-dwarven-dead-body",
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true,
	organic = true,
	BluntDamage = true
} )

DefineUnitType("unit-water-elemental", { Name = _("Water Elemental"),
	Parent = "unit-template-unit",
--	Description = _("These creatures inhabit the warmer parts of the world of Niflheim. Although in many respects they act like a living being, they seem to be nearly entirely made out of water, putting in doubt just what they really are."),
	Image = {"file", "dwarf/units/dwarven_axefighter.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-water-elemental",
	Costs = {"time", 70, "gold", 500, "lumber", 150},
	Speed = 8,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {36, 36},
	SightRange = 3,
	BasicDamage = 12, Missile = "missile-none",
	MaxAttackRange = 3,
	Priority = 63,
	Points = 100,
	Demand = 1,
	Type = "land",
	RightMouseAction = "attack",
	CanAttack = true,
	CanTargetLand = true, CanTargetSea = true, CanTargetAir = true,
	Sounds = {
		"dead", "squishy-hit",
		"hit", "squishy-attack",
		"miss", "squishy-miss"
	}
} )

DefineUnitType("unit-long-swordsman", { Name = _("Long Swordsman"),
	Parent = "unit-template-unit",
	Image = {"file", "neutral/units/long_swordsman.png", "size", {72, 72}},
	Animations = "animations-static-npc", Icon = "icon-long-swordsman",
	Costs = {"time", 60, "gold", 600},
	Speed = 10,
	HitPoints = 60,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 4,
	Armor = 2, BasicDamage = 9, Missile = "missile-none",
	MaxAttackRange = 1,
	Priority = 60,
	Points = 50,
	Demand = 1,
	Corpse = "unit-human-dead-body",
	Type = "land",
--	RightMouseAction = "attack",
	CanAttack = false, -- since it doesn't have attack animations as of now
--	CanTargetLand = true,
	organic = true,
	Indestructible = true, -- because it doesn't have death animations
	WeaponClasses = {"sword"},
	HackDamage = true,
	NumDirections = 1,
	Sounds = {
		"selected", "click",
		"dead", "basic-human-voices-dead"}
} )

-- Load the different civilizations
Load("scripts/civilizations/celt/units.lua")
Load("scripts/civilizations/dwarf/units.lua")
Load("scripts/civilizations/germanic/units.lua")
Load("scripts/civilizations/gnome/units.lua")
Load("scripts/civilizations/goblin/units.lua")
Load("scripts/civilizations/kobold/units.lua")
Load("scripts/civilizations/teuton/units.lua")

-- define the mercenary camp after the rest because it refers to unit types of the civilizations
DefineUnitType("unit-mercenary-camp", { Name = _("Mercenary Camp"),
	Parent = "unit-template-building",
	Class = "mercenary-camp",
	Description = _("This camp houses a number of mercenary groups, who offer their talents for hire."),
	Image = {"file", "neutral/buildings/mercenary_camp.png", "size", {96, 99}},
	Shadow = {"file", "neutral/buildings/mercenary_camp_shadow.png", "size", {96, 99}},
	NeutralMinimapColor = {192, 192, 192},
	Animations = "animations-mercenary-camp", Icon = "icon-mercenary-camp",
	Costs = {"time", 200, "gold", 700, "lumber", 1350},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Construction = "construction-land",
	Speed = 0,
	HitPoints = 800,
	TileSize = {3, 3}, BoxSize = {95, 95},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
	Priority = 30, AnnoyComputerFactor = 35,
	Corpse = "unit-destroyed-3x3-place",
	ExplodeWhenKilled = "missile-explosion",
	Type = "land",
	Drops = {"unit-wood-pile"},
	RightMouseAction = "rally-point",
	BurnPercent = 50,
	BurnDamageRate = 1,
	Trains = {"unit-goblin-thief", "unit-surghan-mercenary-steelclad"},
	UnitStock = {"unit-goblin-thief", 6},
	Affixes = {"upgrade-item-prefix-frail", "upgrade-item-prefix-impregnable", "upgrade-item-prefix-sturdy", "upgrade-item-prefix-vulnerable", "upgrade-item-suffix-of-frailty", "upgrade-item-suffix-of-vulnerability"},
	Sounds = {
		"selected", "click",
--		"acknowledge", "barracks-acknowledge",
--		"ready", "barracks-ready",
--		"help", "basic-dwarf-voices-help",
		"dead", "building-destroyed"
	}
} )


DefineUnitType("unit-human-wall", { Name = _("Wall"),
	Image = {"file", "neutral/buildings/glyph.png", "size", {32, 32}},
	Animations = "animations-building", --Icon = "icon-teuton-lumber-mill",
	Costs = {"time", 30, "gold", 20, "lumber", 30},
	Construction = "construction-wall",
	Speed = 0,
	HitPoints = 40,
	DrawLevel = 39,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	Armor = 20, Missile = "missile-none",
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
		"dead", "building-destroyed"} } )

-- Hardcoded unit-types, moved from Stratagus to games
UnitTypeHumanWall = UnitTypeByIdent("unit-human-wall");
