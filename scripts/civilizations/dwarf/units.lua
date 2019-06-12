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
--      (c) Copyright 2013-2019 by Andrettin
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

DefineUnitType("unit-dwarven-miner", {
	Name = "Miner",
	Parent = "unit-template-worker",
	Civilization = "dwarf",
	Description = "Dwarven miners are the grunt workers of dwarven society. They take the precious ores out of the ground, but do not ever take part in the crafting of weapons or artifacts. Although their expertise makes them quite efficient in mining, this comes at the cost of neglecting training in the harvesting of timber.",
	Background = "In Norse mythology, dwarves were shown to have an affinity for metals, and often they lived in mountainous homes.",
	Image = {"file", "dwarf/units/miner.png", "size", {72, 72}},
	Animations = "animations-dwarven-miner", Icon = "icon-dwarven-miner",
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"mace", "axe"},
	BluntDamage = true,
	ButtonKey = "m",
	ButtonHint = "Train ~!Miner",
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-boots", "unit-cheese"},
	CopperGatheringBonus = 1,
	SilverGatheringBonus = 1,
	GoldGatheringBonus = 1,
	IronGatheringBonus = 1,
	MithrilGatheringBonus = 1,
	CoalGatheringBonus = 1,
	LumberGatheringBonus = -1,
	FurnitureGatheringBonus = -1,
	GemsGatheringBonus = 1,
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "iron",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "mithril",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "dwarf/units/miner_with_lumber.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "limestone",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "dwarf/units/miner_with_coal.png"
		},
		{
			"resource-id", "jewelry",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "furniture",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "leather",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "diamonds",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "emeralds",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-miner-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-skilled-miner", {
	Name = "Skilled Miner",
	Parent = "unit-template-skilled-miner",
	Civilization = "dwarf",
	Description = "Dwarven miners who become experienced in their craft can harvest metals more efficiently than others.",
	Image = {"file", "dwarf/units/miner.png", "size", {72, 72}},
	Animations = "animations-dwarven-miner", Icon = "icon-dwarven-skilled-miner",
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-boots", "unit-cheese"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "iron",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "mithril",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "dwarf/units/miner_with_lumber.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "limestone",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "dwarf/units/miner_with_coal.png"
		},
		{
			"resource-id", "jewelry",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "furniture",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "leather",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "diamonds",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "emeralds",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-miner-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-expert-miner", {
	Name = "Expert Miner",
	Parent = "unit-template-expert-miner",
	Civilization = "dwarf",
	Description = "The dwarves who have mastered the craft of mining can gather metals with extreme efficiency.",
	Image = {"file", "dwarf/units/miner.png", "size", {72, 72}},
	Animations = "animations-dwarven-miner", Icon = "icon-dwarven-expert-miner",
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-boots", "unit-cheese"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "iron",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "mithril",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "dwarf/units/miner_with_lumber.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "limestone",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "dwarf/units/miner_with_coal.png"
		},
		{
			"resource-id", "jewelry",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "furniture",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "leather",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "diamonds",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "emeralds",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-miner-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-runesmith", {
	Name = "Runesmith",
	Parent = "unit-template-journeyman-smith",
	Civilization = "dwarf",
	Description = "Dwarven runesmiths are renowned throughout Nidavellir for their craft. They carve arcane runes into the weapons and armor they make, infusing them with power.",
	Quote = "\"The land of [url=faction:untersberg]Untersberg's[/url] banner bold\nComes not from its own land;\nIt comes from Dwarfdom, grim and old\nMade by a runesmith's hand.\"\n- The Scepter of Fire",
	Image = {"file", "dwarf/units/runesmith.png", "size", {72, 72}},
	Animations = "animations-dwarven-miner", Icon = "icon-dwarven-runesmith",
	DefaultEquipment = {
		{"weapon", "unit-runesmiths-hammer"},
		{"boots", "unit-boots"}
	},
	Armor = 3,
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	CanCastSpell = {"spell-infusion"},
	AutoCastActive = {"spell-infusion"},
	AiDrops = {"unit-hammer", "unit-runesmiths-hammer", "unit-mining-pick", "unit-boots", "unit-cheese"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "iron",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "mithril",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "limestone",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "jewelry",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "furniture",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "leather",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "diamonds",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "emeralds",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-miner-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-runemaster", {
	Name = "Runemaster",
	Parent = "unit-template-master-smith",
	Civilization = "dwarf",
	Description = "Except for those with almost supernatural skill, the highest rank a runecrafter can rise to is that of the runemaster.",
	Image = {"file", "dwarf/units/runesmith.png", "size", {72, 72}},
	Animations = "animations-dwarven-miner", Icon = "icon-dwarven-runemaster",
	DefaultEquipment = {
		{"weapon", "unit-runesmiths-hammer"},
		{"boots", "unit-boots"}
	},
	Armor = 5,
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	CanCastSpell = {"spell-infusion"},
	AutoCastActive = {"spell-infusion"},
	AiDrops = {"unit-hammer", "unit-runesmiths-hammer", "unit-mining-pick", "unit-boots", "unit-cheese"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "iron",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "mithril",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "limestone",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "jewelry",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "furniture",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "leather",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "diamonds",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "emeralds",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-miner-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-arcanister", {
	Name = "Arcanister",
	Parent = "unit-template-grandmaster-smith",
	Civilization = "dwarf",
	Description = "The most powerful of all the runecrafters, the dwarven arcanister's skill in runesmithing is unrivaled, and the glyphs he carves into  weapons and armor are imbued with tremendous power.",
	Image = {"file", "dwarf/units/runesmith.png", "size", {72, 72}},
	Animations = "animations-dwarven-miner", Icon = "icon-dwarven-arcanister",
	DefaultEquipment = {
		{"weapon", "unit-runesmiths-hammer"},
		{"boots", "unit-boots"}
	},
	Armor = 6,
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	CanCastSpell = {"spell-infusion"},
	AutoCastActive = {"spell-infusion"},
	AiDrops = {"unit-hammer", "unit-runesmiths-hammer", "unit-mining-pick", "unit-boots", "unit-cheese"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "iron",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "mithril",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "limestone",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "jewelry",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "furniture",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "leather",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "diamonds",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		},
		{
			"resource-id", "emeralds",
			"file-when-loaded", "dwarf/units/runesmith_with_gold.png"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-miner-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-militia", {
	Parent = "unit-template-militia",
	Civilization = "dwarf",
	Description = "When enemies approach, dwarven miners pick up arms from the nearest storage center in defense of their homelands.",
	Image = {"file", "dwarf/units/militia.png", "size", {72, 72}},
	Animations = "animations-dwarven-militia", Icon = "icon-dwarven-militia",
	DefaultEquipment = {
		{"weapon", "unit-battle-axe"},
		{"shield", "unit-round-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"axe"},
	HackDamage = true,
	AiDrops = {"unit-battle-axe", "unit-round-shield", "unit-boots", "unit-cheese"},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "dwarven-miner-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-miner-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-axefighter", {
	Name = "Axefighter",
	Parent = "unit-template-infantry",
	Civilization = "dwarf",
	Description = "Dwarven axefighters wield mighty battle axes, which make them feared opponents in close-range combat. Veteran axefighters often use the pay they've managed to spare to purchase steel armor for themselves at the local smithy.",
	Image = {"file", "dwarf/units/body_warrior.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "right-arm", "file", "dwarf/units/right_arm_warrior.png"},
		{"layer", "right-hand", "file", "dwarf/units/right_hand_warrior.png"},
		{"layer", "left-arm", "file", "dwarf/units/left_arm_shield.png"},
		{"layer", "clothing-right-arm", "file", "dwarf/units/shoulder_pad_right_arm_warrior.png"},
		{"layer", "clothing-left-arm", "file", "dwarf/units/shoulder_pad_left_arm.png"},
		{"layer", "hair", "file", "dwarf/units/red_hair_warrior.png"},
		{"layer", "weapon", "file", "dwarf/units/weapons/axe.png"},
		{"layer", "shield", "file", "dwarf/units/shields/round_shield.png"}
	},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-axefighter",
	DefaultEquipment = {
		{"weapon", "unit-battle-axe"},
--		{"shield", "unit-round-shield"}, -- commented out to make the Brising Round Shield icon appear when proper
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"axe", "mace"},
	HackDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	ButtonKey = "a",
	ButtonHint = "Train ~!Axefighter",
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-brising-round-shield", "unit-joruvellir-wooden-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"layer-file", "hair", "dwarf/units/gray_hair_warrior.png",
			"icon", "icon-dwarven-axefighter-gray-hair",
			"weight", 1
		},
		{
			"variation-id", "orange-hair",
			"layer-file", "hair", "dwarf/units/orange_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair",
			"layer-file", "hair", "dwarf/units/blond_hair_warrior.png",
			"icon", "icon-dwarven-axefighter-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair",
			"layer-file", "hair", "dwarf/units/black_hair_warrior.png",
			"icon", "icon-dwarven-axefighter-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair",
			"layer-file", "hair", "dwarf/units/brown_hair_warrior.png",
			"icon", "icon-dwarven-axefighter-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"layer", "weapon",
			"variation-id", "axe",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-club",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-runesmiths-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-not-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "double-axe",
			"file", "dwarf/units/weapons/double_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-club",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-runesmiths-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "mace",
			"file", "dwarf/units/weapons/mace.png",
			"item-equipped", "unit-club",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-runesmiths-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "shield",
			"variation-id", "round-shield",
			"upgrade-forbidden", "upgrade-faction-brising-clan",
			"upgrade-forbidden", "upgrade-faction-lyr",
			"item-not-equipped", "unit-brising-round-shield"
		},
		{
			"layer", "shield",
			"variation-id", "round-shield",
			"item-equipped", "unit-round-shield"
		},
		{
			"layer", "shield",
			"variation-id", "brising-round-shield",
			"file", "dlcs/brising_faction_flair/graphics/units/brising_round_shield.png",
			"upgrade-required", "upgrade-faction-brising-clan",
			"item-not-equipped", "unit-round-shield"
		},
		{
			"layer", "shield",
			"variation-id", "brising-round-shield",
			"file", "dlcs/brising_faction_flair/graphics/units/brising_round_shield.png",
			"upgrade-required", "upgrade-faction-lyr",
			"item-not-equipped", "unit-round-shield"
		},
		{
			"layer", "shield",
			"variation-id", "brising-round-shield",
			"file", "dlcs/brising_faction_flair/graphics/units/brising_round_shield.png",
			"item-equipped", "unit-brising-round-shield"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-axefighter-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-steelclad", {
	Name = "Steelclad",
	Parent = "unit-template-veteran-infantry",
	Civilization = "dwarf",
	Description = "The more experienced dwarven steelclad fighters wear heavy chain mail and plate armor, for which they are rightly famous.",
	Image = {"file", "dwarf/units/body_warrior.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "right-arm", "file", "dwarf/units/right_arm_warrior.png"},
		{"layer", "right-hand", "file", "dwarf/units/right_hand_warrior.png"},
		{"layer", "left-arm", "file", "dwarf/units/left_arm_shield.png"},
		{"layer", "clothing-right-arm", "file", "dwarf/units/shoulder_pad_right_arm_warrior.png"},
		{"layer", "clothing-left-arm", "file", "dwarf/units/shoulder_pad_left_arm.png"},
		{"layer", "hair", "file", "dwarf/units/red_hair_warrior.png"},
		{"layer", "helmet", "file", "dwarf/units/helmets/steelclad_helmet.png"},
		{"layer", "weapon", "file", "dwarf/units/weapons/axe.png"},
		{"layer", "shield", "file", "dwarf/units/shields/round_shield.png"}
	},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-steelclad",
	DefaultEquipment = {
		{"weapon", "unit-battle-axe"},
--		{"shield", "unit-round-shield"}, -- commented out to make the Brising Round Shield icon appear when proper
		{"boots", "unit-boots"}
	},
	Armor = 4,
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"axe", "mace"},
	HackDamage = true,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-brising-round-shield", "unit-joruvellir-wooden-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"layer-file", "hair", "dwarf/units/gray_hair_warrior.png",
			"icon", "icon-dwarven-steelclad-gray-hair",
			"weight", 1
		},
		{
			"variation-id", "orange-hair",
			"layer-file", "hair", "dwarf/units/orange_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair",
			"layer-file", "hair", "dwarf/units/blond_hair_warrior.png",
			"icon", "icon-dwarven-steelclad-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair",
			"layer-file", "hair", "dwarf/units/black_hair_warrior.png",
			"icon", "icon-dwarven-steelclad-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair",
			"layer-file", "hair", "dwarf/units/brown_hair_warrior.png",
			"icon", "icon-dwarven-steelclad-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"layer", "weapon",
			"variation-id", "axe",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-club",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-runesmiths-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-not-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "double-axe",
			"file", "dwarf/units/weapons/double_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-club",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-runesmiths-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "mace",
			"file", "dwarf/units/weapons/mace.png",
			"item-equipped", "unit-club",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-runesmiths-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "shield",
			"variation-id", "round-shield",
			"upgrade-forbidden", "upgrade-faction-brising-clan",
			"upgrade-forbidden", "upgrade-faction-lyr",
			"item-not-equipped", "unit-brising-round-shield"
		},
		{
			"layer", "shield",
			"variation-id", "round-shield",
			"item-equipped", "unit-round-shield"
		},
		{
			"layer", "shield",
			"variation-id", "brising-round-shield",
			"file", "dlcs/brising_faction_flair/graphics/units/brising_round_shield.png",
			"upgrade-required", "upgrade-faction-brising-clan",
			"item-not-equipped", "unit-round-shield"
		},
		{
			"layer", "shield",
			"variation-id", "brising-round-shield",
			"file", "dlcs/brising_faction_flair/graphics/units/brising_round_shield.png",
			"upgrade-required", "upgrade-faction-lyr",
			"item-not-equipped", "unit-round-shield"
		},
		{
			"layer", "shield",
			"variation-id", "brising-round-shield",
			"file", "dlcs/brising_faction_flair/graphics/units/brising_round_shield.png",
			"item-equipped", "unit-brising-round-shield"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-steelclad-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
})

DefineUnitType("unit-dwarven-thane", {
	Name = "Stonelord",
	Parent = "unit-template-heroic-infantry",
	Civilization = "dwarf",
	Description = "Clad in shining armor, these dwarves look like kings from under the mountains. They wield the axe with masterful skill, and though slow on their feet, these dwarves are a testament to the prowess of their kin. Stonelords can yield varied political power, ranging from local chiefs to rulers of realms. One of the first stonelords was [url=character:modsognir]Modsognir[/url], the legendary chieftain who led his tribe against the perils of Svarinshaug.",
	Quote = "\"There was Modsognir the mightiest made\nOf all the dwarfs, and Durin next;\nMany a likeness of apes they made,\nThe dwarves in the earth, as Durin said.\"\n- Dwarven Traditional Poetry",
	Background = "In Norse mythology, the dwarven leader Modsognir appears in the [url=literary_text:voluspo]Voluspo[/url] as one of the first dwarves and the mightiest of them.",
	Image = {"file", "dwarf/units/thane.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-thane",
	DefaultEquipment = {
		{"weapon", "unit-battle-axe"},
--		{"shield", "unit-round-shield"}, -- commented out to make the Brising Round Shield icon appear when proper
		{"boots", "unit-boots"}
	},
	Armor = 6,
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"axe", "mace"},
	HackDamage = true,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-brising-round-shield", "unit-joruvellir-wooden-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing", "unit-elixir-of-strength", "unit-elixir-of-vitality"},
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/thane_gray_hair.png",
			"icon", "icon-dwarven-thane-gray-hair",
			"weight", 1
		},
		{
			"variation-id", "orange-hair",
			"file", "dwarf/units/thane_orange_hair.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/thane_blond_hair.png",
			"icon", "icon-dwarven-thane-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/thane_black_hair.png",
			"icon", "icon-dwarven-thane-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/thane_brown_hair.png",
			"icon", "icon-dwarven-thane-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-steelclad-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-guard", {
	Name = "Guard",
	Parent = "unit-template-spearman",
	Civilization = "dwarf",
	Description = "Dwarven guards are the first line of defense of the dwarven homelands. With their sturdy shields, they can often mount an unassailable defense against attackers.",
	Image = {"file", "dwarf/units/body_warrior.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "right-arm", "file", "dwarf/units/right_arm_spear.png"},
		{"layer", "left-arm", "file", "dwarf/units/left_arm_shield.png"},
		{"layer", "clothing-right-arm", "file", "dwarf/units/shoulder_pad_right_arm_spear.png"},
		{"layer", "clothing-left-arm", "file", "dwarf/units/shoulder_pad_left_arm.png"},
		{"layer", "hair", "file", "dwarf/units/brown_hair_warrior.png"},
		{"layer", "weapon", "file", "dwarf/units/weapons/spear.png"},
		{"layer", "shield", "file", "dwarf/units/shields/heater_shield.png"}
	},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-guard",
	DefaultEquipment = {
		{"weapon", "unit-short-spear"},
--		{"shield", "unit-round-shield"}, -- commented out to make the Brising Round Shield icon appear when proper
		{"boots", "unit-boots"}
	},
	HitPoints = 65,
	Armor = 2,
	Corpse = "unit-dwarven-dead-body",
	PierceDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	ButtonKey = "g",
	ButtonHint = "Train ~!Guard",
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-round-shield", "unit-brising-round-shield", "unit-joruvellir-wooden-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "brown-hair",
			"weight", 4
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "basic-dwarf-voices-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-dwarven-stalwart", {
	Name = "Stalwart",
	Parent = "unit-template-veteran-spearman",
	Civilization = "dwarf",
	Description = "The wiles of experience and training turn guards into worthy soldiers. These stalwart troops are equipped to match their skills, and can hold their ground against all but the most visceral assault. It is a dangerous thing to lose a foothold to one such as these, for it will not be easily reprised.",
	Image = {"file", "dwarf/units/body_warrior.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "right-arm", "file", "dwarf/units/right_arm_spear.png"},
		{"layer", "left-arm", "file", "dwarf/units/left_arm_shield.png"},
		{"layer", "clothing-right-arm", "file", "dwarf/units/shoulder_pad_right_arm_spear.png"},
		{"layer", "clothing-left-arm", "file", "dwarf/units/shoulder_pad_left_arm.png"},
		{"layer", "hair", "file", "dwarf/units/brown_hair_warrior.png"},
		{"layer", "weapon", "file", "dwarf/units/weapons/spear.png"},
		{"layer", "shield", "file", "dwarf/units/shields/heater_shield.png"}
	},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-stalwart",
	DefaultEquipment = {
		{"weapon", "unit-short-spear"},
--		{"shield", "unit-round-shield"}, -- commented out to make the Brising Round Shield icon appear when proper
		{"boots", "unit-boots"}
	},
	HitPoints = 80,
	Armor = 2,
	Corpse = "unit-dwarven-dead-body",
	PierceDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-round-shield", "unit-brising-round-shield", "unit-joruvellir-wooden-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "brown-hair",
			"weight", 4
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "basic-dwarf-voices-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-dwarven-sentinel", {
	Name = "Sentinel",
	Parent = "unit-template-heroic-spearman",
	Civilization = "dwarf",
	Description = "Champions among their fellow troops, the dwarven sentinels form the bulwark of their battle lines. Leading a direct assault against a line that they fortify is often out of the question; it tends toward being suicidal, rather than merely ineffectual. These dwarves are masters of the melee, and can hold a patch of earth with the singleminded tenacity of an oak.",
	Image = {"file", "dwarf/units/body_warrior.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "right-arm", "file", "dwarf/units/right_arm_spear.png"},
		{"layer", "left-arm", "file", "dwarf/units/left_arm_shield.png"},
		{"layer", "clothing-right-arm", "file", "dwarf/units/shoulder_pad_right_arm_spear.png"},
		{"layer", "clothing-left-arm", "file", "dwarf/units/shoulder_pad_left_arm.png"},
		{"layer", "hair", "file", "dwarf/units/brown_hair_warrior.png"},
		{"layer", "weapon", "file", "dwarf/units/weapons/spear.png"},
		{"layer", "shield", "file", "dwarf/units/shields/heater_shield.png"}
	},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-sentinel",
	DefaultEquipment = {
		{"weapon", "unit-short-spear"},
--		{"shield", "unit-round-shield"}, -- commented out to make the Brising Round Shield icon appear when proper
		{"boots", "unit-boots"}
	},
	HitPoints = 95,
	Armor = 2,
	Corpse = "unit-dwarven-dead-body",
	PierceDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-round-shield", "unit-brising-round-shield", "unit-joruvellir-wooden-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "brown-hair",
			"weight", 2
		},
		{
			"variation-id", "brown-hair",
			"weight", 2,
			"icon", "icon-dwarven-sentinel-open-mouth"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "basic-dwarf-voices-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-dwarven-scout", {
	Name = "Scout",
	Parent = "unit-template-archer",
	Civilization = "dwarf",
--	Description = "Dwarven scouts use their lighter armor to their advantage, ranging ahead of the main force and reporting back on troop movements and dispositions, or securing important objectives. Outside of battle, they are often used to relay messages between dwarven communities. These scouts were instrumental for pathfinding during the migration of the group of dwarves led by Dvalin, who left the Heart Mountains, passed through swamps, and finally established themselves in a desert.", -- use the latter part of this for the pathfinder
	Description = "Dwarven scouts use their speed to their advantage, ranging ahead of the main force and reporting back on troop movements and dispositions. Outside of battle, they are often used to relay messages between dwarven communities. However, they pay for their speed with the poorer protection provided by their lighter armor.",
--	Background = "In Norse mythology, there is a mention in the [url=literary_text:voluspo]Voluspo[/url] of a throng of dwarves led by Dvalin who moved away from the rocks and into the sands, these migrants being the ancestors of Lofar.", -- use this for the pathfinder
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-weapon-thrower", Icon = "icon-dwarven-scout",
	DefaultEquipment = {
		{"weapon", "unit-throwing-axe"},
		{"boots", "unit-boots"}
	},
	BasicDamage = 11,
	Missile = "missile-throwing-axe",
	FireMissile = "missile-flaming-throwing-axe",
	MaxAttackRange = 4,
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"throwing-axe"},
	HackDamage = true,
	ButtonKey = "s",
	ButtonHint = "Train ~!Scout",
	RequirementsString = "Lumber Mill",
	StartingAbilities = {"upgrade-scouting"},
	AiDrops = {"unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "orange-hair-short-beard",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "orange-hair-braided-beard",
			"icon", "icon-dwarven-scout-braided-beard",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair-short-beard",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-dwarven-scout-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair-braided-beard",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-dwarven-scout-blond-hair-braided-beard",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair-short-beard",
			"file", "dwarf/units/dwarven_scout_black_hair.png",
			"icon", "icon-dwarven-scout-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair-braided-beard",
			"file", "dwarf/units/dwarven_scout_black_hair.png",
			"icon", "icon-dwarven-scout-black-hair-braided-beard",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair-short-beard",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-scout-gray-hair",
			"weight", 1
		},
		{
			"variation-id", "gray-hair-braided-beard",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-scout-gray-hair-braided-beard",
			"weight", 1
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-scout-ready",
		"fire-missile", "throwing-axe",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-dwarven-pathfinder", {
	Name = "Pathfinder",
	Parent = "unit-template-veteran-shooter",
	Civilization = "dwarf",
	Description = "These hardy dwarves are sometimes away from their caves for long periods, scouting and patrolling the borders. They spend this time watching for invaders, and fighting bandits and thieves who encroach on dwarven territory. Their deftly thrown axes can rival the power and accuracy of a gnomish marksman.",
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-weapon-thrower", Icon = "icon-dwarven-pathfinder",
	DefaultEquipment = {
		{"weapon", "unit-throwing-axe"},
		{"boots", "unit-boots"}
	},
	BasicDamage = 12,
	Missile = "missile-throwing-axe",
	FireMissile = "missile-flaming-throwing-axe",
	MaxAttackRange = 4,
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"throwing-axe"},
	HackDamage = true,
	StartingAbilities = {"upgrade-scouting"},
	AiDrops = {"unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-dwarven-pathfinder-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/dwarven_scout_black_hair.png",
			"icon", "icon-dwarven-pathfinder-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-pathfinder-gray-hair",
			"weight", 1
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-dwarven-explorer", {
	Name = "Explorer",
	Parent = "unit-template-heroic-shooter",
	Civilization = "dwarf",
	Description = "Dwarven Explorers are peerless survivalists. Using only the equipment they carry, they can range for months around the forests and mountains looking for new seams of ore and deposits of minerals. Whilst their skill in a melee is less than some other dwarves, they are unmatched with throwing axes, having practiced this skill hunting in the mountains. Their maneuverability makes them dangerous and tricky foes.",
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-weapon-thrower", Icon = "icon-dwarven-explorer",
	DefaultEquipment = {
		{"weapon", "unit-throwing-axe"},
		{"boots", "unit-boots"}
	},
	BasicDamage = 13,
	Missile = "missile-throwing-axe",
	FireMissile = "missile-flaming-throwing-axe",
	MaxAttackRange = 4,
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"throwing-axe"},
	HackDamage = true,
	StartingAbilities = {"upgrade-scouting"},
	AiDrops = {"unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-boots", "unit-cheese", "unit-potion-of-healing", "unit-elixir-of-dexterity"},
	Variations = {
		{
			"variation-id", "orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-dwarven-explorer-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/dwarven_scout_black_hair.png",
			"icon", "icon-dwarven-explorer-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-explorer-gray-hair",
			"weight", 1
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-dwarven-thunderer", {
	Name = "Thunderer",
	Parent = "unit-template-gunpowder-infantry",
	Civilization = "dwarf",
	Description = "Many of the races of Nidavellir have been mystified by the power of dwarven Thunderers, who are able to hurl death from afar through the apparatus of these strange wands they carried into battle. The deafening noise of these 'thundersticks' is terrifying to behold, and is made more so by the secrecy which dwarves wrap about their workings.",
	Image = {"file", "dwarf/units/thunderer.png", "size", {72, 72}},
	Animations = "animations-gunpowder-infantry", Icon = "icon-dwarven-thunderer",
	DefaultEquipment = {
		{"weapon", "unit-hand-cannon"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	AiDrops = {"unit-hand-cannon", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "basic-dwarf-voices-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-dwarven-yale-rider", {
	Name = "Yale Rider",
	Parent = "unit-template-cavalry",
	Civilization = "dwarf",
	Description = "Although dwarves have a stronger affinity for fighting on foot than many other peoples, they nevertheless possess formidable cavalry in the form of yale riders. These mounted dwarves are fierce in the battlefield, and their yales can easily traverse the mountainous terrain dwarves usually inhabit.",
	Image = {"file", "dwarf/units/yale_rider_red_hair_gray_fur.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-dwarven-yale-rider",
	DefaultEquipment = {
		{"weapon", "unit-battle-axe"},
--		{"shield", "unit-round-shield"}, -- commented out to make the Brising Round Shield icon appear when proper
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"axe"},
	HackDamage = true,
	ButtonKey = "y",
	ButtonHint = "Train ~!Yale Rider",
	RequirementsString = "Smithy and Yale Pen",
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-brising-round-shield", "unit-joruvellir-wooden-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "red-hair-gray-fur",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "red-hair-brown-fur",
			"file", "dwarf/units/yale_rider_red_hair_brown_fur.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_gray_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair-brown-fur",
			"file", "dwarf/units/yale_rider_blond_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair-brown-fur",
			"file", "dwarf/units/yale_rider_brown_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair-white-fur",
			"file", "dwarf/units/yale_rider_brown_hair_white_fur.png",
			"icon", "icon-dwarven-yale-rider-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_gray_hair_gray_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-gray-hair",
			"weight", 1
		},
		{
			"variation-id", "orange-hair-brown-fur",
			"file", "dwarf/units/yale_rider_orange_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "orange-hair-white-fur",
			"file", "dwarf/units/yale_rider_orange_hair_white_fur.png",
			"icon", "icon-dwarven-yale-rider-orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		}
	},
	Sounds = {
		"selected", "yale-rider-selected-group",
		"acknowledge", "yale-rider-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-yale-rider-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-yale-lord", {
	Name = "Yale Lord",
	Parent = "unit-template-heroic-cavalry",
	Civilization = "dwarf",
	Description = "Few things are more terrifying than a yale lord leading a throng of mounted dwarves into a crushing charge. Masters of the hills, yale lords are most often present in dwarven clans living above ground.",
	Image = {"file", "dwarf/units/yale_rider_red_hair_gray_fur.png", "size", {72, 72}},
	Animations = "animations-melee-unit", Icon = "icon-dwarven-yale-lord",
	DefaultEquipment = {
		{"weapon", "unit-battle-axe"},
--		{"shield", "unit-round-shield"}, -- commented out to make the Brising Round Shield icon appear when proper
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"axe"},
	HackDamage = true,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-brising-round-shield", "unit-joruvellir-wooden-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing", "unit-elixir-of-strength"},
	Variations = {
		{
			"variation-id", "red-hair-gray-fur",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "red-hair-brown-fur",
			"file", "dwarf/units/yale_rider_red_hair_brown_fur.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_gray_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair-brown-fur",
			"file", "dwarf/units/yale_rider_blond_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair-brown-fur",
			"file", "dwarf/units/yale_rider_brown_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair-white-fur",
			"file", "dwarf/units/yale_rider_brown_hair_white_fur.png",
			"icon", "icon-dwarven-yale-lord-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_gray_hair_gray_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-gray-hair",
			"weight", 1
		},
		{
			"variation-id", "orange-hair-brown-fur",
			"file", "dwarf/units/yale_rider_orange_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "orange-hair-white-fur",
			"file", "dwarf/units/yale_rider_orange_hair_white_fur.png",
			"icon", "icon-dwarven-yale-lord-orange-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		}
	},
	Sounds = {
		"selected", "yale-rider-selected-group",
		"acknowledge", "yale-rider-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-yale-rider-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "axe-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-witness", {
	Name = "Witness",
	Parent = "unit-template-priest",
	Civilization = "dwarf",
--	Description = "A witness functions as the eyes of the dwarves' history, a deep lore that they almost never share with outsiders. The presence of a witness inspires dwarven warriors with the knowledge that their deeds (and their deaths) will not go unrecorded. The person of a witness is considered sacred, and witnesses are often used as envoys between dwarven clans. The earliest known dwarven witness was Thjodrorir, sage of the Brising Clan. The best known of them, however, was Dvalin. He created the dwarven runes and shifted lorekeeping away from being an oral practice.",
	Description = "A witness functions as the eyes of the dwarves' history, a deep lore that they almost never share with outsiders. The presence of a witness inspires dwarven warriors with the knowledge that their deeds (and their deaths) will not go unrecorded. The person of a witness is considered sacred, and witnesses are often used as envoys between dwarven clans.",
	Quote = "\"Might he sang for the gods, and glory for dwarves,\nAnd wisdom for Hroptatyr wise.\"\n- Dwarven Traditional Poetry",
	Background = "In the [url=literary_text:hovamol]Hovamol[/url], Thjodrorir was a dwarf who knew a potent magic charm, and Dvalin was a dwarf who was said to have taught the art of runes to his people.",
	Image = {"file", "dwarf/units/body_warrior.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "right-arm", "file", "dwarf/units/right_arm_warrior.png"},
		{"layer", "right-hand", "file", "dwarf/units/right_hand_warrior.png"},
		{"layer", "left-arm", "file", "dwarf/units/left_arm.png"},
		{"layer", "clothing", "file", "dwarf/units/robe.png"},
		{"layer", "hair", "file", "dwarf/units/gray_hair_warrior.png"},
		{"layer", "helmet", "file", "dwarf/units/helmets/witness_tiara.png"},
		{"layer", "weapon", "file", "dwarf/units/weapons/mace.png"}
	},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-witness",
	DefaultEquipment = {
--		{"weapon", "unit-mace"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	StartingAbilities = {"upgrade-far-sight", "upgrade-inspire", "upgrade-precision", "upgrade-shocking-grasp", "upgrade-slow-ability", "upgrade-wither"},
	CanCastSpell = {"spell-far-sight", "spell-inspire", "spell-healing", "spell-precision", "spell-shocking-grasp", "spell-slow", "spell-wither"},
	AutoCastActive = {"spell-inspire", "spell-healing", "spell-precision", "spell-shocking-grasp", "spell-slow", "spell-wither"},
	AiDrops = {"unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "basic-dwarf-voices-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-annalist", {
	Name = "Annalist",
	Parent = "unit-template-veteran-priest",
	Civilization = "dwarf",
	Description = "Dwarven annalists are the historians of their ancient and proud race. They are few in number, and their very existence is not generally known to the other peoples of Nidavellir.",
	Image = {"file", "dwarf/units/body_warrior.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "right-arm", "file", "dwarf/units/right_arm_warrior.png"},
		{"layer", "right-hand", "file", "dwarf/units/right_hand_warrior.png"},
		{"layer", "left-arm", "file", "dwarf/units/left_arm.png"},
		{"layer", "clothing", "file", "dwarf/units/robe.png"},
		{"layer", "hair", "file", "dwarf/units/gray_hair_warrior.png"},
		{"layer", "helmet", "file", "dwarf/units/helmets/witness_tiara.png"},
		{"layer", "weapon", "file", "dwarf/units/weapons/mace.png"}
	},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-annalist",
	DefaultEquipment = {
--		{"weapon", "unit-mace"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	StartingAbilities = {"upgrade-far-sight", "upgrade-inspire", "upgrade-precision", "upgrade-shocking-grasp", "upgrade-slow-ability", "upgrade-wither"},
	CanCastSpell = {"spell-far-sight", "spell-inspire", "spell-healing", "spell-precision", "spell-shocking-grasp", "spell-slow", "spell-wither"},
	AutoCastActive = {"spell-inspire", "spell-healing", "spell-precision", "spell-shocking-grasp", "spell-slow", "spell-wither"},
	AiDrops = {"unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "basic-dwarf-voices-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-loremaster", {
	Name = "Loremaster",
	Parent = "unit-template-high-priest",
	Civilization = "dwarf",
	Description = "Loremasters are the sages of the dwarven race. Their counsel is greatly valued by war-leaders and chieftains, and they are viewed with awe by ordinary dwarves, for they alone have plumbed the deepest and most closely-held secrets of dwarven knowledge. It is said that where a loremaster stands, there is the soul of the dwarves.",
	Image = {"file", "dwarf/units/body_warrior.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "right-arm", "file", "dwarf/units/right_arm_warrior.png"},
		{"layer", "right-hand", "file", "dwarf/units/right_hand_warrior.png"},
		{"layer", "left-arm", "file", "dwarf/units/left_arm.png"},
		{"layer", "clothing", "file", "dwarf/units/robe.png"},
		{"layer", "hair", "file", "dwarf/units/gray_hair_warrior.png"},
		{"layer", "helmet", "file", "dwarf/units/helmets/witness_tiara.png"},
		{"layer", "weapon", "file", "dwarf/units/weapons/mace.png"}
	},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-loremaster",
	DefaultEquipment = {
--		{"weapon", "unit-mace"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	StartingAbilities = {"upgrade-far-sight", "upgrade-inspire", "upgrade-precision", "upgrade-shocking-grasp", "upgrade-slow-ability", "upgrade-wither"},
	CanCastSpell = {"spell-far-sight", "spell-inspire", "spell-healing", "spell-precision", "spell-shocking-grasp", "spell-slow", "spell-wither"},
	AutoCastActive = {"spell-inspire", "spell-healing", "spell-precision", "spell-shocking-grasp", "spell-slow", "spell-wither"},
	AiDrops = {"unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "basic-dwarf-voices-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-dwarven-gryphon-rider", {
	Name = "Gryphon Rider",
	Parent = "unit-template-flying-rider",
	Civilization = "dwarf",
	Description = "Only a few dwarves are able to bond with the mighty gryphons. Those who do may become gryphon riders, and discover the world of the skies upon the backs of these flying beasts.",
	Quote = "\"Ha ha! Gryphons as mounts, that is naught but the stuff of legends! Is there no end to your folly?\"\n- Relgorn, Chieftain of the Norlund Clan",
	Image = {"file", "dwarf/units/gryphon_rider.png", "size", {100, 100}},
	Animations = "animations-dwarven-gryphon-rider", Icon = "icon-dwarven-gryphon-rider",
	DefaultEquipment = {
		{"weapon", "unit-throwing-axe"},
		{"boots", "unit-boots"}
	},
	Missile = "missile-throwing-axe",
	FireMissile = "missile-flaming-throwing-axe",
	BasicDamage = 14,
	MaxAttackRange = 4,
	WeaponClasses = {"throwing-axe"},
	HackDamage = true,
	ButtonKey = "p",
	ButtonHint = "Train Gry~!phon Rider",
	RequirementsString = "Bastion and Lumber Mill",
	AiDrops = {"unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-boots", "unit-cheese", "unit-potion-of-healing", "unit-elixir-of-dexterity"},
	Variations = {
		{
			"variation-id", "black-hair-brown-feathers",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "brown-hair-blue-feathers",
			"file", "dwarf/units/gryphon_rider_brown_hair_blue_feathers.png",
			"icon", "icon-dwarven-gryphon-rider-brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair-brown-feathers",
			"file", "dwarf/units/gryphon_rider_gray_hair_brown_feathers.png",
			"weight", 1
		},
		{
			"variation-id", "red-hair-gray-feathers",
			"file", "dwarf/units/gryphon_rider_red_hair_gray_feathers.png",
			"icon", "icon-dwarven-gryphon-rider-red-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-gryphon-rider-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "gryphon-dead"
	}
} )

DefineUnitType("unit-dwarven-ballista", {
	Name = "Ballista",
	Parent = "unit-template-ballista",
	Civilization = "dwarf",
	Description = "Dwarves employ heavy ballistas as their siege weapon of choice, with devastating effects on enemy fortifications.",
	Image = {"file", "dwarf/units/dwarven_ballista.png", "size", {64, 64}},
	Animations = "animations-dwarven-ballista", Icon = "icon-dwarven-ballista",
	Missile = "missile-dwarven-ballista-bolt",
	FireMissile = "missile-flaming-dwarven-ballista-bolt",
	PierceDamage = true,
	ButtonKey = "b",
	ButtonHint = "Build ~!Ballista",
	Sounds = {
--		"acknowledge", "ballista-acknowledge",
		"ready", "dwarven-ballista-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "explosion"
	}
})

DefineUnitType("unit-dwarven-transport-ship", {
	Name = "Transport",
	Parent = "unit-template-transport-ship",
	Civilization = "dwarf",
	Description = "Sailing the Deep Sea and underground rivers alike, these ships are manned by hearty dwarven crews. Every journey brings back new tales, be it of a kobold dwarf-eating tribe, or of treacherous goblin pirates...",
	Image = {"file", "dwarf/units/transport.png", "size", {72, 72}},
	LightImage = {"file", "dwarf/units/transport_water.png"},
	Icon = "icon-dwarven-transport-ship",
	Variations = {
		{
			"variation-id", "dwarf",
			"upgrade-forbidden", "upgrade-faction-brising-clan",
			"upgrade-forbidden", "upgrade-faction-lyr",
			"upgrade-forbidden", "upgrade-faction-goldhoof-clan",
			"upgrade-forbidden", "upgrade-faction-eikinskjaldi-clan",
			"upgrade-forbidden", "upgrade-faction-joruvellir"
		},
		{
			"variation-id", "brising",
			"file", "dlcs/brising_faction_flair/graphics/units/brising_transport.png",
			"icon", "icon-brising-transport-ship",
			"upgrade-required", "upgrade-faction-brising-clan"
		},
		{
			"variation-id", "brising",
			"file", "dlcs/brising_faction_flair/graphics/units/brising_transport.png",
			"icon", "icon-brising-transport-ship",
			"upgrade-required", "upgrade-faction-lyr"
		},
		{
			"variation-id", "joruvellir",
			"file", "dlcs/joruvellir_faction_flair/graphics/units/joruvellir_transport.png",
			"icon", "icon-joruvellir-transport-ship",
			"upgrade-required", "upgrade-faction-goldhoof-clan"
		},
		{
			"variation-id", "joruvellir",
			"file", "dlcs/joruvellir_faction_flair/graphics/units/joruvellir_transport.png",
			"icon", "icon-joruvellir-transport-ship",
			"upgrade-required", "upgrade-faction-eikinskjaldi-clan"
		},
		{
			"variation-id", "joruvellir",
			"file", "dlcs/joruvellir_faction_flair/graphics/units/joruvellir_transport.png",
			"icon", "icon-joruvellir-transport-ship",
			"upgrade-required", "upgrade-faction-joruvellir"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help"
	}
})

DefineUnitType("unit-dwarven-ballista-warship", {
	Name = "Ballista Warship",
	Parent = "unit-template-siege-warship",
	Civilization = "dwarf",
	Description = "The complicated mechanism utilized for ballista warships was made possible through the excellent craftsmanship of dwarven engineers.",
	Image = {"file", "dwarf/units/ballista_warship.png", "size", {72, 72}},
	LightImage = {"file", "dwarf/units/ballista_warship_water.png"},
	Icon = "icon-dwarven-ballista-warship",
	Missile = "missile-dwarven-ballista-bolt",
	FireMissile = "missile-flaming-dwarven-ballista-bolt",
	PierceDamage = true,
	SideAttack = false,
	Sounds = {
		"help", "basic-dwarf-voices-help"
	}
})

DefineUnitType("unit-dwarven-town-hall", {
	Name = "Mead Hall",
	Parent = "unit-template-town-hall",
	Civilization = "dwarf",
	Description = "The mead hall is the center of any sizable dwarven settlement, where they gather to discuss the issues facing the community and drink their strong mead. It was in one such hall that Fjalar and Galar feasted on the mead they made out of the blood of a dwarven sage, believing that it would grant them his breadth of knowledge. One of the most magnificent mead halls ever built is that of Lyr.",
	Background = "Mead was a recurring theme in Germanic mythology, from which dwarves originate. In one particular myth, the dwarves Fjalar and Galar invited the sage Kvasir to a large feast in their dwelling, only to murder him and brew his blood into a special mead, the [color=#f4e020]Mead of Poetry[/color]. As the pair of ruthless dwarves expected, drinking the mead imbibed them with Kvasir's breadth of knowledge. In the [url=literary_text:voluspo]Voluspo[/url] it is mentioned that a dwarven hall made of gold existed in Nidavellir. The hall of Lyr is mentioned in the [url=literary_text:svipdagsmol]Svipdagsmol[/url].",
	Image = {"file", "dwarf/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "dwarf/buildings/town_hall_shadow.png", "size", {128, 128}},
	Icon = "icon-dwarven-town-hall",
	Costs = {"lumber", 0, "stone", 2400},
	RepairCosts = {"lumber", 0, "stone", 1},
	FireResistance = 20,
	ButtonHint = "Build Mead ~!Hall",
	Drops = {"unit-stone-pile"},
	AiDrops = {"unit-boots"},
	DropSpells = {"spell-joruvellir-allegiance"},
	Variations = {
		{
			"variation-id", "mead-hall",
			"upgrade-forbidden", "upgrade-faction-brising-clan",
			"upgrade-forbidden", "upgrade-faction-lyr",
			"upgrade-forbidden", "upgrade-faction-goldhoof-clan",
			"upgrade-forbidden", "upgrade-faction-eikinskjaldi-clan",
			"upgrade-forbidden", "upgrade-faction-joruvellir",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "mead-hall-snow-winter",
			"file", "dwarf/buildings/town_hall_snow.png",
			"upgrade-forbidden", "upgrade-faction-brising-clan",
			"upgrade-forbidden", "upgrade-faction-lyr",
			"upgrade-forbidden", "upgrade-faction-goldhoof-clan",
			"upgrade-forbidden", "upgrade-faction-eikinskjaldi-clan",
			"upgrade-forbidden", "upgrade-faction-joruvellir",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "mead-hall-snow",
			"file", "dwarf/buildings/town_hall_snow.png",
			"upgrade-forbidden", "upgrade-faction-brising-clan",
			"upgrade-forbidden", "upgrade-faction-lyr",
			"upgrade-forbidden", "upgrade-faction-goldhoof-clan",
			"upgrade-forbidden", "upgrade-faction-eikinskjaldi-clan",
			"upgrade-forbidden", "upgrade-faction-joruvellir",
			"terrain", "snow"
		},
		{
			"variation-id", "brising-mead-hall",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_town_hall.png",
			"icon", "icon-brising-town-hall",
			"upgrade-required", "upgrade-faction-brising-clan",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "brising-mead-hall",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_town_hall.png",
			"icon", "icon-brising-town-hall",
			"upgrade-required", "upgrade-faction-lyr",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "brising-mead-hall-snow-winter",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_town_hall_snow.png",
			"icon", "icon-brising-town-hall",
			"upgrade-required", "upgrade-faction-brising-clan",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "brising-mead-hall-snow-winter",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_town_hall_snow.png",
			"icon", "icon-brising-town-hall",
			"upgrade-required", "upgrade-faction-lyr",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "brising-mead-hall-snow",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_town_hall_snow.png",
			"icon", "icon-brising-town-hall",
			"upgrade-required", "upgrade-faction-brising-clan",
			"terrain", "snow"
		},
		{
			"variation-id", "brising-mead-hall-snow",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_town_hall_snow.png",
			"icon", "icon-brising-town-hall",
			"upgrade-required", "upgrade-faction-lyr",
			"terrain", "snow"
		},
		{
			"variation-id", "joruvellir-mead-hall",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_town_hall.png",
			"upgrade-required", "upgrade-faction-goldhoof-clan",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "joruvellir-mead-hall",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_town_hall.png",
			"upgrade-required", "upgrade-faction-eikinskjaldi-clan",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "joruvellir-mead-hall",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_town_hall.png",
			"upgrade-required", "upgrade-faction-joruvellir",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "joruvellir-mead-hall-snow-winter",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_town_hall_snow.png",
			"upgrade-required", "upgrade-faction-goldhoof-clan",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "joruvellir-mead-hall-snow-winter",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_town_hall_snow.png",
			"upgrade-required", "upgrade-faction-eikinskjaldi-clan",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "joruvellir-mead-hall-snow-winter",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_town_hall_snow.png",
			"upgrade-required", "upgrade-faction-joruvellir",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "joruvellir-mead-hall-snow",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_town_hall_snow.png",
			"upgrade-required", "upgrade-faction-goldhoof-clan",
			"terrain", "snow"
		},
		{
			"variation-id", "joruvellir-mead-hall-snow",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_town_hall_snow.png",
			"upgrade-required", "upgrade-faction-eikinskjaldi-clan",
			"terrain", "snow"
		},
		{
			"variation-id", "joruvellir-mead-hall-snow",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_town_hall_snow.png",
			"upgrade-required", "upgrade-faction-joruvellir",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
})

DefineUnitType("unit-dwarven-stronghold", {
	Name = "Bastion",
	Parent = "unit-template-stronghold",
	Civilization = "dwarf",
	Description = "A dwarven settlement that has reached a certain status will often oversee the construction of a bastion, enhancing its defensive capabilities.",
	Quote = "\"Now answer me, warder, the question I ask,\nFor now the truth would I know:\nWhat call they the hall, encompassed here\nWith flickering magic flames?\"\n- Dwarven Traditional Poetry (Durin)",
	Image = {"file", "dwarf/buildings/stronghold.png", "size", {128, 128}},
	Shadow = {"file", "dwarf/buildings/stronghold_shadow.png", "size", {128, 128}},
	Icon = "icon-dwarven-stronghold",
	Costs = {"lumber", 0, "stone", 3600},
	RepairCosts = {"lumber", 0},
	Missile = "missile-throwing-axe",
	FireMissile = "missile-flaming-throwing-axe",
	BasicDamage = 11,
	MaxAttackRange = 5,
	FireResistance = 20,
	HackDamage = true,
	PierceDamage = false,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-short-spear", "unit-long-spear", "unit-pike", "unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-hand-cannon", "unit-round-shield", "unit-brising-round-shield", "unit-joruvellir-wooden-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots"},
	RequirementsString = "War Hall and Masonry",
	DropSpells = {"spell-joruvellir-allegiance"},
	Variations = {
		{
			"variation-id", "bastion",
			"upgrade-forbidden", "upgrade-faction-brising-clan",
			"upgrade-forbidden", "upgrade-faction-lyr",
			"upgrade-forbidden", "upgrade-faction-goldhoof-clan",
			"upgrade-forbidden", "upgrade-faction-eikinskjaldi-clan",
			"upgrade-forbidden", "upgrade-faction-joruvellir",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "bastion-snow-winter",
			"file", "dwarf/buildings/stronghold_snow.png",
			"upgrade-forbidden", "upgrade-faction-brising-clan",
			"upgrade-forbidden", "upgrade-faction-lyr",
			"upgrade-forbidden", "upgrade-faction-goldhoof-clan",
			"upgrade-forbidden", "upgrade-faction-eikinskjaldi-clan",
			"upgrade-forbidden", "upgrade-faction-joruvellir",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "bastion-snow",
			"file", "dwarf/buildings/stronghold_snow.png",
			"upgrade-forbidden", "upgrade-faction-brising-clan",
			"upgrade-forbidden", "upgrade-faction-lyr",
			"upgrade-forbidden", "upgrade-faction-goldhoof-clan",
			"upgrade-forbidden", "upgrade-faction-eikinskjaldi-clan",
			"upgrade-forbidden", "upgrade-faction-joruvellir",
			"terrain", "snow"
		},
		{
			"variation-id", "brising-bastion",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_stronghold.png",
			"icon", "icon-brising-stronghold",
			"upgrade-required", "upgrade-faction-brising-clan",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "brising-bastion",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_stronghold.png",
			"icon", "icon-brising-stronghold",
			"upgrade-required", "upgrade-faction-lyr",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "brising-bastion-snow-winter",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_stronghold_snow.png",
			"icon", "icon-brising-stronghold",
			"upgrade-required", "upgrade-faction-brising-clan",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "brising-bastion-snow-winter",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_stronghold_snow.png",
			"icon", "icon-brising-stronghold",
			"upgrade-required", "upgrade-faction-lyr",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "brising-bastion-snow",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_stronghold_snow.png",
			"icon", "icon-brising-stronghold",
			"upgrade-required", "upgrade-faction-brising-clan",
			"terrain", "snow"
		},
		{
			"variation-id", "brising-bastion-snow",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_stronghold_snow.png",
			"icon", "icon-brising-stronghold",
			"upgrade-required", "upgrade-faction-lyr",
			"terrain", "snow"
		},
		{
			"variation-id", "joruvellir-bastion",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_stronghold.png",
			"upgrade-required", "upgrade-faction-goldhoof-clan",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "joruvellir-bastion",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_stronghold.png",
			"upgrade-required", "upgrade-faction-eikinskjaldi-clan",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "joruvellir-bastion",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_stronghold.png",
			"upgrade-required", "upgrade-faction-joruvellir",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "joruvellir-bastion-snow-winter",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_stronghold_snow.png",
			"upgrade-required", "upgrade-faction-goldhoof-clan",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "joruvellir-bastion-snow-winter",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_stronghold_snow.png",
			"upgrade-required", "upgrade-faction-eikinskjaldi-clan",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "joruvellir-bastion-snow-winter",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_stronghold_snow.png",
			"upgrade-required", "upgrade-faction-joruvellir",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "joruvellir-bastion-snow",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_stronghold_snow.png",
			"upgrade-required", "upgrade-faction-goldhoof-clan",
			"terrain", "snow"
		},
		{
			"variation-id", "joruvellir-bastion-snow",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_stronghold_snow.png",
			"upgrade-required", "upgrade-faction-eikinskjaldi-clan",
			"terrain", "snow"
		},
		{
			"variation-id", "joruvellir-bastion-snow",
			"file", "dlcs/joruvellir_faction_flair/graphics/buildings/joruvellir_stronghold_snow.png",
			"upgrade-required", "upgrade-faction-joruvellir",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town",
		"fire-missile", "throwing-axe"
	}
})

DefineUnitType("unit-dwarven-mushroom-farm", {
	Name = "Mushroom Farm",
	Parent = "unit-template-farm",
	Civilization = "dwarf",
	Description = "For aeons, dwarves have practiced mushroom farming underground. At first, their crude agricultural methods allowed them only to use mushroom farming as a supplementary means of nutrition, so that they could remain in a given area for a longer time before migrating. Eventually, however, dwarven mushroom farming techniques developed to the point that dwarves were able to establish their first permanent communities.",
	Quote = "\"This is how we get our food, me lad. Since we are a tad close to the surface here, some sunlight shines down through the cracks in the roof. If we baby the plants, we can usually get enough. They taste unco' foul but that's how we ha' survived all these long years.\"\n- Hamel, Lord of Knalga",
	Image = {"file", "dwarf/buildings/mushroom_farm.png", "size", {64, 64}},
	Shadow = {"file", "dwarf/buildings/mushroom_farm_shadow.png", "size", {64, 64}},
	Icon = "icon-dwarven-mushroom-farm",
	Costs = {"lumber", 0, "stone", 750},
	RepairCosts = {"lumber", 0, "stone", 1},
	FireResistance = 20,
	Drops = {"unit-wood-pile", "unit-stone-pile"},
	Variations = {
		{
			"variation-id", "mushroom-farm",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "mushroom-farm-snow-winter",
			"file", "dwarf/buildings/mushroom_farm_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "mushroom-farm-snow",
			"file", "dwarf/buildings/mushroom_farm_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-barracks", {
	Name = "War Hall",
	Parent = "unit-template-barracks",
	Civilization = "dwarf",
	Description = "The war hall is where dwarves meet to train and hone their axefighting skills. Since early times, dwarves have faced many perils in the dark plains and caves of Nidavellir, such as goblins or hostile dwarven clans. To fight off these menaces, clans gradually developed means of organizing themselves militarily.",
	Quote = "\"Loud roar the dwarves by the doors of stone,\nThe masters of the rocks: would you know yet more?\"\n- Dwarven Traditional Poetry",
	Image = {"file", "dwarf/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/barracks_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-barracks",
	Costs = {"lumber", 0, "stone", 1350},
	RepairCosts = {"lumber", 0, "stone", 1},
	FireResistance = 20,
	ButtonKey = "w",
	ButtonHint = "Build ~!War Hall",
	Drops = {"unit-stone-pile"},
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-short-spear", "unit-long-spear", "unit-pike", "unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-hand-cannon", "unit-round-shield", "unit-brising-round-shield", "unit-joruvellir-wooden-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots"},
	Variations = {
		{
			"variation-id", "barracks",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "barracks-snow-winter",
			"file", "dwarf/buildings/barracks_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "barracks-snow",
			"file", "dwarf/buildings/barracks_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-lumber-mill", {
	Name = "Lumber Mill",
	Parent = "unit-template-lumber-mill",
	Civilization = "dwarf",
	Description = "Dwarven culture places a great emphasis on handling stone and metal, to the detriment of woodworking. Nevertheless, the lumber mill employs a number of dwarven artisans skilled in woodworking, who strive to improve methods of lumber production and the scouts' throwing axes.",
	Background = "In Norse mythology, one instance related to dwarven woodwork to be found is the crafting of the ship Skidbladnir and the throwing spear Gungnir by the sons of Ivaldi. Skidbladnir is mentioned in the [url=literary_text:grimnismol]Grimnismol[/url].",
	Image = {"file", "dwarf/buildings/lumber_mill.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/lumber_mill_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-lumber-mill",
	Costs = {"time", 165, "copper", 660, "lumber", 0, "stone", 1485},
	RepairCosts = {"lumber", 0, "stone", 1},
	FireResistance = 20,
	Drops = {"unit-stone-pile"},
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe"},
	Variations = {
		{
			"variation-id", "lumber-mill",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "lumber-mill-snow-winter",
			"file", "dwarf/buildings/lumber_mill_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "lumber-mill-snow",
			"file", "dwarf/buildings/lumber_mill_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-smithy", {
	Name = "Smithy",
	Parent = "unit-template-smithy",
	Civilization = "dwarf",
--	Description = "Smithing is a highly-valued skill in dwarven society, and it is in this structure that dwarven smiths gather to produce weapons and armor for troops. Dwarves are renowned for their smithing abilities, and their craft attracts many non-dwarven customers. The most prestigious of dwarven metalworkers are the runesmiths, Thursagan being the greatest among them.",
	Description = "Smithing is a highly-valued skill in dwarven society, leading many to dedicate themselves to that profession. Dwarven smiths are renowned for their abilities, and their craft attracts many foreign customers. The most prestigious of dwarven metalworkers are the runesmiths.",
	Quote = "\"The land of [url=faction:untersberg]Untersberg's[/url] banner bold\nComes not from its own land;\nIt comes from Dwarfdom, grim and old\nMade by a runesmith's hand.\"\n- The Scepter of Fire",
	Background = "One of the primary talents of the dwarves in Norse mythology was smithing. In a number of myths, dwarven smiths would craft marvelous artifacts for the gods, and sometimes even for mortals.",
--	Background = "One of the primary talents of the dwarves in Norse mythology was smithing. In a number of myths, dwarven smiths would craft marvelous artifacts for the gods, and sometimes even for mortals. One example of such an artifact is Mjollnir, the famous hammer of the Norse god Thor, which was made by the dwarves Brokk and Eitri. Another example is the sword Gram, crafted by the dwarf Regin in the [url=literary_text:reginsmol]Reginsmol[/url].\n\nRunesmiths feature in the Battle for Wesnoth, and are mentioned in [url=literary_text:the_sceptre_of_fire]The Sceptre of Fire[/url] poem.",
	Image = {"file", "dwarf/buildings/smithy.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-smithy",
	Costs = {"time", 190, "copper", 800, "lumber", 0, "stone", 1560},
	RepairCosts = {"lumber", 0, "stone", 1},
	FireResistance = 20,
	Drops = {"unit-stone-pile"},
	AiDrops = {"unit-runesmiths-hammer", "unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-hand-cannon", "unit-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-spatha"}, -- drops Spatha to allow dropping dwarven unique swords
	Variations = {
		{
			"variation-id", "smithy",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "smithy-snow-winter",
			"file", "dwarf/buildings/smithy_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "smithy-snow",
			"file", "dwarf/buildings/smithy_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-masons-shop", {
	Parent = "unit-template-masons-shop",
	Civilization = "dwarf",
	Description = "Dwarven construction makes heavy use of stone as a material, so that the existence of a mason's shop in a settlement is all the more important.",
	Background = "Dwarves are strongly associated with stone in Norse mythology, making their homes in rocky hills and stony caves. In the [url=literary_text:voluspo]Voluspo[/url] they are called \"the masters of the rocks\".",
	Image = {"file", "dwarf/buildings/masons_shop.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/masons_shop_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-masons-shop",
	Costs = {"time", 165, "copper", 660, "lumber", 0, "stone", 1485},
	RepairCosts = {"lumber", 0, "stone", 1},
	FireResistance = 20,
	Variations = {
		{
			"variation-id", "masons-shop",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "masons-shop-snow-winter",
			"file", "dwarf/buildings/masons_shop_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "masons-shop-snow",
			"file", "dwarf/buildings/masons_shop_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-yale-pen", {
	Name = "Yale Pen",
	Parent = "unit-template-stables",
	Civilization = "dwarf",
	Description = "Although the underground dwarves shun mounted combat, their wild hill-dwelling kin cherish it as a noble tradition. The mobility given by the yale is crucial for traversing their homelands' hills and peaks. Dwarves have been breeding yales since time immemorial, the animals being valuable not only as mounts, but also as beasts of carry.",
	Image = {"file", "dwarf/buildings/yale_pen.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/yale_pen_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-yale-pen",
	RepairCosts = {"stone", 1},
	Costs = {"lumber", 600, "stone", 300},
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	Inexhaustible = true,
	CanHarvest = true,
	StartingResources = {1000},
	GivesResource = "leather",
	MaxHarvesters = 3,
	ButtonKey = "y",
	ButtonHint = "Build ~!Yale Pen",
	Drops = {"unit-stone-pile", "unit-yale"},
	BuildingRulesString = "Cannot be built close to town halls",
	Variations = {
		{
			"variation-id", "yale-pen",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "yale-pen-snow-winter",
			"file", "dwarf/buildings/yale_pen_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "yale-pen-snow",
			"file", "dwarf/buildings/yale_pen_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"selected", "yale-pen-selected",
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-temple", {
	Name = "Temple",
	Parent = "unit-template-temple",
	Civilization = "dwarf",
	Description = "Dwarven temples are built as underground vaults, where they keep their mystic texts. The temple vault has many layers, with only dwarven sages of the highest caliber being granted access to the deepest ones.",
	Image = {"file", "dwarf/buildings/temple.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/temple_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-temple",
	Costs = {"lumber", 0, "stone", 1500},
	RepairCosts = {"lumber", 0, "stone", 1},
	FireResistance = 20,
	Drops = {"unit-stone-pile"},
	Variations = {
		{
			"variation-id", "temple",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "temple-snow-winter",
			"file", "dwarf/buildings/temple_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "temple-snow",
			"file", "dwarf/buildings/temple_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-sentry-tower", {
	Name = "Sentry Tower",
	Parent = "unit-template-watch-tower",
	Civilization = "dwarf",
	Description = "In these solid towers dwarves keep watch of threats approaching their settlements.",
	Image = {"file", "dwarf/buildings/sentry_tower.png", "size", {64, 64}},
	Shadow = {"file", "dwarf/buildings/sentry_tower_shadow.png", "size", {64, 64}},
	Animations = "animations-dwarven-sentry-tower", Icon = "icon-dwarven-sentry-tower",
	Costs = {"lumber", 0, "stone", 600},
	RepairCosts = {"lumber", 0},
	FireResistance = 20,
	HitPoints = 250, -- 300 with masonry
	Construction = "construction-dwarven-sentry-tower",
	ButtonHint = "Build Sentry ~!Tower",
	Variations = {
		{
			"variation-id", "sentry-tower",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "sentry-tower-snow-winter",
			"file", "dwarf/buildings/sentry_tower_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "sentry-tower-snow",
			"file", "dwarf/buildings/sentry_tower_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-guard-tower", {
	Name = "Guard Tower",
	Parent = "unit-template-guard-tower",
	Civilization = "dwarf",
	Description = "Often garrisoned by dwarven scouts, these towers are an essential part of a dwarven settlement's sturdy defenses.",
	Image = {"file", "dwarf/buildings/guard_tower.png", "size", {64, 64}},
	Shadow = {"file", "dwarf/buildings/guard_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-dwarven-guard-tower",
	Costs = {"lumber", 0, "stone", 450},
	RepairCosts = {"lumber", 0},
	Missile = "missile-throwing-axe",
	FireMissile = "missile-flaming-throwing-axe",
	BasicDamage = 11,
	MaxAttackRange = 5,
	FireResistance = 20,
	HitPoints = 325, -- 390 with masonry
	HackDamage = true,
	PierceDamage = false,
	Variations = {
		{
			"variation-id", "guard-tower",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "guard-tower-snow-winter",
			"file", "dwarf/buildings/guard_tower_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "guard-tower-snow",
			"file", "dwarf/buildings/guard_tower_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town",
		"fire-missile", "throwing-axe"
	}
} )

DefineUnitType("unit-dwarven-ballista-tower", {
	Name = "Ballista Tower",
	Parent = "unit-template-heavy-tower",
	Civilization = "dwarf",
	Description = "A marvel of dwarven engineering, ballista towers make dwarven settlements nigh-impregnable.",
	Image = {"file", "dwarf/buildings/ballista_tower.png", "size", {64, 64}},
	Shadow = {"file", "dwarf/buildings/ballista_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-dwarven-ballista-tower",
	Costs = {"lumber", 0, "stone", 900},
	RepairCosts = {"lumber", 0},
	Missile = "missile-dwarven-ballista-bolt",
	FireMissile = "missile-flaming-dwarven-ballista-bolt",
	FireResistance = 20,
	PierceDamage = true,
	Variations = {
		{
			"variation-id", "ballista-tower",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "ballista-tower-snow-winter",
			"file", "dwarf/buildings/ballista_tower_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "ballista-tower-snow",
			"file", "dwarf/buildings/ballista_tower_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town",
		"fire-missile", "catapult-attack"
	}
} )

DefineUnitType("unit-dwarven-cannon-tower", {
	Name = "Cannon Tower",
	Parent = "unit-template-cannon-tower",
	Civilization = "dwarf",
	Description = "With the advent of gunpowder, dwarven engineers were quick to make use of it for defensive purposes.",
	Image = {"file", "dwarf/buildings/cannon_tower.png", "size", {64, 64}},
	Shadow = {"file", "dwarf/buildings/cannon_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-dwarven-cannon-tower",
	Costs = {"lumber", 0, "stone", 900},
	RepairCosts = {"lumber", 0},
	FireResistance = 20,
	Variations = {
		{
			"variation-id", "cannon-tower",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "cannon-tower-snow-winter",
			"file", "dwarf/buildings/cannon_tower_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "cannon-tower-snow",
			"file", "dwarf/buildings/cannon_tower_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-market", {
	Parent = "unit-template-market",
	Civilization = "dwarf",
	Description = "Commerce is an important part of the dwarven quotidian. Not only are various metals exchanged, but vital supplies of wood are traded to underground settlements.",
	Image = {"file", "dwarf/buildings/market.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/market_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-dwarven-market",
	Costs = {"lumber", 900, "stone", 450},
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	SoldUnits = {"unit-runesmiths-hammer", "unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-thrusting-sword", "unit-round-shield", "unit-brising-round-shield", "unit-joruvellir-wooden-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-wool-shoes", "unit-furry-wool-shoes"},
	Variations = {
		{
			"variation-id", "market",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "market-snow-winter",
			"file", "dwarf/buildings/market_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "market-snow",
			"file", "dwarf/buildings/market_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-academy", {
	Name = "Academy",
	Parent = "unit-template-university",
	Civilization = "dwarf",
	Description = "Though strongly bound to tradition, dwarves also possess inquisitive minds. In their academies, scholars seek to understand the mysteries of nature.",
	Image = {"file", "dwarf/buildings/academy.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/academy_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-academy",
	RequirementsString = "Writing",
	Variations = {
		{
			"variation-id", "academy",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "academy-snow-winter",
			"file", "dwarf/buildings/academy_snow.png",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "academy-snow",
			"file", "dwarf/buildings/academy_snow.png",
			"terrain", "snow"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-dock", {
	Name = "Dock",
	Parent = "unit-template-dock",
	Civilization = "dwarf",
	Description = "Although nautical dwarves are few in number, dwarven shipwrighting is a refined craft. They construct sturdy ships, capable of braving oceans and subterranean rivers alike.",
	Image = {"file", "dwarf/buildings/dock.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/dock_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-dwarven-dock",
	Costs = {"time", 200, "copper", 800, "lumber", 900, "stone", 450},
	RepairCosts = {"copper", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
--	Drops = {"unit-stone-pile"},
	Variations = {
		{
			"variation-id", "dock",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "dock-snow-winter",
			"file", "dwarf/buildings/dock_snow.png",
			"season", "winter"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-wall", {
	Parent = "unit-template-wall",
	Civilization = "dwarf",
	TerrainType = "dwarven-wall",
	Image = {"file", "dwarf/buildings/wall.png", "size", {32, 32}},
	Icon = "icon-dwarven-wall",
	Description = "Masters of stonecraft, dwarves erect mighty walls in the protection of their settlements. The fabled gate Thrymgjol, built by the sons of the dwarf Solblindi, is said to provide the strongest protection of all.",
	Background = "The Thrymgjol gate and its makers, the sons of the dwarf Solblindi, are mentioned in the [url=literary_text:svipdagsmol]Svipdagsmol[/url] of Norse mythology. The name \"Thrymgjol\" means \"loud-clanging\".",
	HitPoints = 250 -- +50 HP
} )

Load("scripts/civilizations/dwarf/units_joruvellir.lua")
Load("scripts/civilizations/dwarf/units_brising.lua")

DefineUnitType("unit-surghan-mercenary-axefighter", {
	Parent = "unit-dwarven-axefighter",
	Civilization = "dwarf",
	Faction = "surghan-mercenaries",
	Description = "These scoundrels will hire their axes to the largest bidder, no questions asked. They have participated in a number of engagements, the most dangerous of which was the pursuit of a group of dwarves into the lair of the wyrm Svafnir and beyond.",
	Quote = "\"It must be one of those [url=faction:surghan_mercenaries]Surghan mercenaries[/url]. I'll bet those [url=faction:shinsplitter_clan]Shinsplitters[/url] have hired more of them. That's bad news for us, for they are deadly, combat-hardened warriors.\"\n- [url=character:baglur]Baglur[/url], Retired [url=faction:norlund_clan]Norlund[/url] Warrior",
	Icon = "icon-surghan-mercenary-axefighter",
	BasicDamage = 11, -- +2 damage
	Points = 60, -- +10 points
	Variations = {
		{
			"variation-id", "red-hair"
		},
		{
			"layer", "weapon",
			"variation-id", "axe",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-club",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-runesmiths-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-not-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "double-axe",
			"file", "dwarf/units/weapons/double_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-club",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-runesmiths-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "mace",
			"file", "dwarf/units/weapons/mace.png",
			"item-equipped", "unit-club",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-runesmiths-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "shield",
			"variation-id", "round-shield",
			"item-not-equipped", "unit-brising-round-shield"
		},
		{
			"layer", "shield",
			"variation-id", "round-shield",
			"item-equipped", "unit-round-shield"
		},
		{
			"layer", "shield",
			"variation-id", "brising-round-shield",
			"file", "dlcs/brising_faction_flair/graphics/units/brising_round_shield.png",
			"item-equipped", "unit-brising-round-shield"
		}
	}
} )

DefineUnitType("unit-surghan-mercenary-steelclad", {
	Parent = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	Faction = "surghan-mercenaries",
	Description = "These scoundrels will hire their axes to the largest bidder, no questions asked. They have participated in a number of engagements, the most dangerous of which was the pursuit of a group of dwarves into the lair of the wyrm Svafnir and beyond.",
	Quote = "\"It must be one of those [url=faction:surghan_mercenaries]Surghan mercenaries[/url]. I'll bet those [url=faction:shinsplitter_clan]Shinsplitters[/url] have hired more of them. That's bad news for us, for they are deadly, combat-hardened warriors.\"\n- [url=character:baglur]Baglur[/url], Retired [url=faction:norlund_clan]Norlund[/url] Warrior",
	Icon = "icon-surghan-mercenary-steelclad",
	BasicDamage = 12, -- +2 damage
	Points = 85, -- +10 points
	Variations = {
		{
			"variation-id", "red-hair"
		},
		{
			"layer", "weapon",
			"variation-id", "axe",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-club",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-runesmiths-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-not-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "double-axe",
			"file", "dwarf/units/weapons/double_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-club",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-runesmiths-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "mace",
			"file", "dwarf/units/weapons/mace.png",
			"item-equipped", "unit-club",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-runesmiths-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "shield",
			"variation-id", "round-shield",
			"item-not-equipped", "unit-brising-round-shield"
		},
		{
			"layer", "shield",
			"variation-id", "brising-round-shield",
			"file", "dlcs/brising_faction_flair/graphics/units/brising_round_shield.png",
			"item-equipped", "unit-brising-round-shield"
		}
	}
} )

DefineUnitType("unit-surghan-mercenary-thane", {
	Parent = "unit-dwarven-thane",
	Civilization = "dwarf",
	Faction = "surghan-mercenaries",
	Description = "These scoundrels will hire their axes to the largest bidder, no questions asked. They have participated in a number of engagements, the most dangerous of which was the pursuit of a group of dwarves into the lair of the wyrm Svafnir and beyond.",
	Quote = "\"It must be one of those [url=faction:surghan_mercenaries]Surghan mercenaries[/url]. I'll bet those [url=faction:shinsplitter_clan]Shinsplitters[/url] have hired more of them. That's bad news for us, for they are deadly, combat-hardened warriors.\"\n- [url=character:baglur]Baglur[/url], Retired [url=faction:norlund_clan]Norlund[/url] Warrior",
	Icon = "icon-surghan-mercenary-thane",
	BasicDamage = 14, -- +2 damage
	Points = 110, -- +10 points
	Variations = {}
} )
