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
--      (c) Copyright 2013-2016 by Andrettin
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
	Name = _("Miner"),
	Parent = "unit-template-worker",
	Civilization = "dwarf",
	Description = _("Dwarven miners are the grunt workers of dwarven society. They take the precious ores out of the ground, but do not ever take part in the crafting of weapons or artifacts. Although their expertise makes them quite efficient in mining, this comes at the cost of neglecting training in the harvesting of timber."),
	Background = _("In Norse mythology, dwarves were shown to have an affinity for metals, and often they lived in mountainous homes."),
	Image = {"file", "dwarf/units/miner.png", "size", {72, 72}},
	Animations = "animations-dwarven-miner", Icon = "icon-dwarven-miner",
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	ButtonKey = "m",
	ButtonHint = _("Train ~!Miner"),
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-boots", "unit-cheese"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "dwarf/units/miner_with_gold.png",
			"gathering-modifier", 20
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "dwarf/units/miner_with_gold.png",
			"gathering-modifier", 20
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "dwarf/units/miner_with_gold.png",
			"gathering-modifier", 20
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "dwarf/units/miner_with_lumber.png",
			"gathering-modifier", -17
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "dwarf/units/miner_with_coal.png",
			"gathering-modifier", 20
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
	Name = _("Skilled Miner"),
	Parent = "unit-template-skilled-miner",
	Civilization = "dwarf",
	Description = _("Dwarven miners who become experienced in their craft can harvest metals more efficiently than others."),
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
			"resource-id", "lumber",
			"file-when-loaded", "dwarf/units/miner_with_lumber.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "dwarf/units/miner_with_coal.png"
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
	Name = _("Expert Miner"),
	Parent = "unit-template-expert-miner",
	Civilization = "dwarf",
	Description = _("The dwarves who have mastered the craft of mining can gather metals with extreme efficiency."),
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
			"resource-id", "lumber",
			"file-when-loaded", "dwarf/units/miner_with_lumber.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "dwarf/units/miner_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "dwarf/units/miner_with_coal.png"
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
	Description = _("When enemies approach, dwarven miners pick up arms from the nearest storage center in defense of their homelands."),
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

DefineUnitType("unit-dwarven-axefighter", { Name = _("Axefighter"),
	Parent = "unit-template-infantry",
	Civilization = "dwarf",
	Description = _("Dwarven axefighters wield mighty battle axes, which make them feared opponents in close-range combat. Veteran axefighters often use the pay they've managed to spare to purchase steel armor for themselves at the local smithy."),
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
	Costs = {"time", 60, "gold", 500, "lumber", 45},
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"axe", "mace"},
	HackDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	ButtonKey = "a",
	ButtonHint = _("Train ~!Axefighter"),
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-brising-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"layer-file", "hair", "dwarf/units/gray_hair_warrior.png",
			"icon", "icon-dwarven-axefighter-gray-hair"
		},
		{
			"variation-id", "orange-hair",
			"layer-file", "hair", "dwarf/units/orange_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"layer-file", "hair", "dwarf/units/blond_hair_warrior.png",
			"icon", "icon-dwarven-axefighter-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair",
			"layer-file", "hair", "dwarf/units/black_hair_warrior.png",
			"icon", "icon-dwarven-axefighter-black-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"layer-file", "hair", "dwarf/units/brown_hair_warrior.png",
			"icon", "icon-dwarven-axefighter-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"layer", "weapon",
			"variation-id", "axe",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-not-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "double-axe",
			"file", "dwarf/units/weapons/double_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "mace",
			"file", "dwarf/units/weapons/mace.png",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "shield",
			"variation-id", "round-shield",
			"upgrade-forbidden", "upgrade-brising-clan-faction",
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
			"upgrade-required", "upgrade-brising-clan-faction",
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
	Name = _("Steelclad"),
	Parent = "unit-template-veteran-infantry",
	Civilization = "dwarf",
	Description = _("The more experienced dwarven steelclad fighters wear heavy chain mail and plate armor, for which they are rightly famous."),
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
	Costs = {"time", 90, "gold", 825, "lumber", 75},
	Armor = 4,
	Corpse = "unit-dwarven-dead-body",
	WeaponClasses = {"axe", "mace"},
	HackDamage = true,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-brising-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-the-snigill"},
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"layer-file", "hair", "dwarf/units/gray_hair_warrior.png",
			"icon", "icon-dwarven-steelclad-gray-hair"
		},
		{
			"variation-id", "orange-hair",
			"layer-file", "hair", "dwarf/units/orange_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"layer-file", "hair", "dwarf/units/blond_hair_warrior.png",
			"icon", "icon-dwarven-steelclad-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair",
			"layer-file", "hair", "dwarf/units/black_hair_warrior.png",
			"icon", "icon-dwarven-steelclad-black-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"layer-file", "hair", "dwarf/units/brown_hair_warrior.png",
			"icon", "icon-dwarven-steelclad-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"layer", "weapon",
			"variation-id", "axe",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-not-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "double-axe",
			"file", "dwarf/units/weapons/double_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "mace",
			"file", "dwarf/units/weapons/mace.png",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "shield",
			"variation-id", "round-shield",
			"upgrade-forbidden", "upgrade-brising-clan-faction",
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
			"upgrade-required", "upgrade-brising-clan-faction",
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
	Name = _("Stonelord"),
	Parent = "unit-template-heroic-infantry",
	Civilization = "dwarf",
	Description = _("Clad in shining armor, these dwarves look like kings from under the mountains. They wield the axe with masterful skill, and though slow on their feet, these dwarves are a testament to the prowess of their kin. Stonelords can yield varied political power, ranging from local chiefs to rulers of realms. One of the first stonelords was Modsognir, the legendary chieftain who led his tribe against the perils of Svarinshaug."),
	Quote = _("\"There was Modsognir the mightiest made\nOf all the dwarfs, and Durin next;\nMany a likeness of apes they made,\nThe dwarves in the earth, as Durin said.\"\n- Dwarven Traditional Poetry"),
	Background = _("In Norse mythology, the dwarven leader Modsognir appears in the ~<Voluspo~> as one of the first dwarves and the mightiest of them."),
	Image = {"file", "dwarf/units/thane.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-dwarven-thane",
	DefaultEquipment = {
		{"weapon", "unit-battle-axe"},
--		{"shield", "unit-round-shield"}, -- commented out to make the Brising Round Shield icon appear when proper
		{"boots", "unit-boots"}
	},
	Armor = 6,
	Corpse = "unit-dwarven-dead-body",
	CanCastSpell = {"spell-axe-twirl"},
	WeaponClasses = {"axe", "mace"},
	HackDamage = true,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-brising-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-giantsbane", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-the-colossus", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/thane_gray_hair.png",
			"icon", "icon-dwarven-thane-gray-hair"
		},
		{
			"variation-id", "orange-hair",
			"file", "dwarf/units/thane_orange_hair.png",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/thane_blond_hair.png",
			"icon", "icon-dwarven-thane-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair",
			"file", "dwarf/units/thane_black_hair.png",
			"icon", "icon-dwarven-thane-black-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair",
			"file", "dwarf/units/thane_brown_hair.png",
			"icon", "icon-dwarven-thane-brown-hair",
			"upgrade-forbidden", "upgrade-old"
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

DefineUnitType("unit-dwarven-guard", { Name = _("Guard"),
	Parent = "unit-template-spearman",
	Civilization = "dwarf",
	Description = _("Dwarven guards are the first line of defense of the dwarven homelands. With their sturdy shields, they can often mount an unassailable defense against attackers."),
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
	Costs = {"time", 55, "gold", 460, "lumber", 90},
	HitPoints = 65,
	Armor = 2,
	Corpse = "unit-dwarven-dead-body",
	PierceDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	ButtonKey = "g",
	ButtonHint = _("Train ~!Guard"),
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-round-shield", "unit-brising-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "brown-hair"
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
	Name = _("Scout"),
	Parent = "unit-template-archer",
	Civilization = "dwarf",
--	Description = "Dwarven scouts use their lighter armor to their advantage, ranging ahead of the main force and reporting back on troop movements and dispositions, or securing important objectives. Outside of battle, they are often used to relay messages between dwarven communities. These scouts were instrumental for pathfinding during the migration of the group of dwarves led by Dvalin, who left the Heart Mountains, passed through swamps, and finally established themselves in a desert.", -- use the latter part of this for the pathfinder
	Description = _("Dwarven scouts use their speed to their advantage, ranging ahead of the main force and reporting back on troop movements and dispositions. Outside of battle, they are often used to relay messages between dwarven communities. However, they pay for their speed with the poorer protection provided by their lighter armor."),
--	Background = _("In Norse mythology, there is a mention in the ~<Voluspo~> of a throng of dwarves led by Dvalin who moved away from the rocks and into the sands, these migrants being the ancestors of Lofar."), -- use this for the pathfinder
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-dwarven-scout", Icon = "icon-dwarven-scout",
	DefaultEquipment = {
		{"weapon", "unit-throwing-axe"},
		{"boots", "unit-boots"}
	},
	BasicDamage = 10,
	Missile = "missile-throwing-axe",
	FireMissile = "missile-flaming-throwing-axe",
	MaxAttackRange = 4,
	Corpse = "unit-dwarven-dead-body",
	TechnologyPointCost = 1,
	WeaponClasses = {"throwing-axe"},
	HackDamage = true,
	ButtonKey = "s",
	ButtonHint = _("Train ~!Scout"),
	StartingAbilities = {"upgrade-scouting"},
	AiDrops = {"unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "orange-hair-short-beard",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "orange-hair-braided-beard",
			"icon", "icon-dwarven-scout-braided-beard",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair-short-beard",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-dwarven-scout-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair-braided-beard",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-dwarven-scout-blond-hair-braided-beard",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair-short-beard",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-scout-gray-hair"
		},
		{
			"variation-id", "gray-hair-braided-beard",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-scout-gray-hair-braided-beard"
		}
	},
	Sounds = {
		"selected", "basic-dwarf-voices-selected-group",
		"acknowledge", "basic-dwarf-voices-acknowledge",
		"attack", "basic-dwarf-voices-attack",
		"ready", "dwarven-scout-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "basic-dwarf-voices-dead"
	}
} )

DefineUnitType("unit-dwarven-pathfinder", { Name = _("Pathfinder"),
	Parent = "unit-template-veteran-shooter",
	Civilization = "dwarf",
	Description = _("These hardy dwarves are sometimes away from their caves for long periods, scouting and patrolling the borders. They spend this time watching for invaders, and fighting bandits and thieves who encroach on dwarven territory. Their deftly thrown axes can rival the power and accuracy of a gnomish marksman."),
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-dwarven-scout", Icon = "icon-dwarven-pathfinder",
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
	StartingAbilities = {"upgrade-scouting"},
	AiDrops = {"unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "orange-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-dwarven-pathfinder-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-pathfinder-gray-hair"
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

DefineUnitType("unit-dwarven-explorer", { Name = _("Explorer"),
	Parent = "unit-template-heroic-shooter",
	Civilization = "dwarf",
	Description = _("Dwarven Explorers are peerless survivalists. Using only the equipment they carry, they can range for months around the forests and mountains looking for new seams of ore and deposits of minerals. Whilst their skill in a melee is less than some other dwarves, they are unmatched with throwing axes, having practiced this skill hunting in the mountains. Their maneuverability makes them dangerous and tricky foes."),
	Image = {"file", "dwarf/units/dwarven_scout.png", "size", {72, 72}},
	Animations = "animations-dwarven-scout", Icon = "icon-dwarven-explorer",
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
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair",
			"file", "dwarf/units/dwarven_scout_blond_hair.png",
			"icon", "icon-dwarven-explorer-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "dwarf/units/dwarven_scout_gray_hair.png",
			"icon", "icon-dwarven-explorer-gray-hair"
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

DefineUnitType("unit-dwarven-yale-rider", { Name = _("Yale Rider"),
	Parent = "unit-template-cavalry",
	Civilization = "dwarf",
	Description = _("Although dwarves have a stronger affinity for fighting on foot than many other peoples, they nevertheless possess formidable cavalry in the form of yale riders. These mounted dwarves are fierce in the battlefield, and their yales can easily traverse the mountainous terrain dwarves usually inhabit."),
	Image = {"file", "dwarf/units/yale_rider_red_hair_gray_fur.png", "size", {72, 72}},
	Costs = {"time", 90, "gold", 825, "lumber", 75},
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
	ButtonHint = _("Train ~!Yale Rider"),
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-brising-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "red-hair-gray-fur",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "red-hair-brown-fur",
			"file", "dwarf/units/yale_rider_red_hair_brown_fur.png",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-black-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_gray_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-black-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair-brown-fur",
			"file", "dwarf/units/yale_rider_blond_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair-brown-fur",
			"file", "dwarf/units/yale_rider_brown_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair-white-fur",
			"file", "dwarf/units/yale_rider_brown_hair_white_fur.png",
			"icon", "icon-dwarven-yale-rider-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_gray_hair_gray_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-gray-hair"
		},
		{
			"variation-id", "orange-hair-brown-fur",
			"file", "dwarf/units/yale_rider_orange_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-rider-orange-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "orange-hair-white-fur",
			"file", "dwarf/units/yale_rider_orange_hair_white_fur.png",
			"icon", "icon-dwarven-yale-rider-orange-hair",
			"upgrade-forbidden", "upgrade-old"
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

DefineUnitType("unit-dwarven-yale-lord", { Name = _("Yale Lord"),
	Parent = "unit-template-heroic-cavalry",
	Civilization = "dwarf",
	Description = _("Few things are more terrifying than a yale lord leading a throng of mounted dwarves into a crushing charge. Masters of the hills, yale lords are most often present in dwarven clans living above ground."),
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
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-brising-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-giantsbane", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "red-hair-gray-fur",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "red-hair-brown-fur",
			"file", "dwarf/units/yale_rider_red_hair_brown_fur.png",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-black-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "black-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_black_hair_gray_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-black-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "blond-hair-brown-fur",
			"file", "dwarf/units/yale_rider_blond_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair-brown-fur",
			"file", "dwarf/units/yale_rider_brown_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair-white-fur",
			"file", "dwarf/units/yale_rider_brown_hair_white_fur.png",
			"icon", "icon-dwarven-yale-lord-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair-gray-brown-fur",
			"file", "dwarf/units/yale_rider_gray_hair_gray_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-gray-hair"
		},
		{
			"variation-id", "orange-hair-brown-fur",
			"file", "dwarf/units/yale_rider_orange_hair_brown_fur.png",
			"icon", "icon-dwarven-yale-lord-orange-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "orange-hair-white-fur",
			"file", "dwarf/units/yale_rider_orange_hair_white_fur.png",
			"icon", "icon-dwarven-yale-lord-orange-hair",
			"upgrade-forbidden", "upgrade-old"
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

DefineUnitType("unit-dwarven-witness", { Name = _("Witness"),
	Parent = "unit-template-priest",
	Civilization = "dwarf",
--	Description = _("A witness functions as the eyes of the dwarves' history, a deep lore that they almost never share with outsiders. The presence of a witness inspires dwarven warriors with the knowledge that their deeds (and their deaths) will not go unrecorded. The person of a witness is considered sacred, and witnesses are often used as envoys between dwarven clans. The earliest known dwarven witness was Thjodrorir, sage of the Brising Clan. The best known of them, however, was Dvalin. He created the dwarven runes and shifted lorekeeping away from being an oral practice."),
	Description = _("A witness functions as the eyes of the dwarves' history, a deep lore that they almost never share with outsiders. The presence of a witness inspires dwarven warriors with the knowledge that their deeds (and their deaths) will not go unrecorded. The person of a witness is considered sacred, and witnesses are often used as envoys between dwarven clans."),
	Quote = _("\"Might he sang for the gods, and glory for dwarves,\nAnd wisdom for Hroptatyr wise.\"\n- Dwarven Traditional Poetry"),
	Background = _("In Norse mythology, Thjodrorir was a dwarf who knew a potent magic charm. Thjodrorir is mentioned in the ~<Hovamol~>. Dvalin was a dwarf in Norse mythology who was said in the Hovamol to have taught the art of runes to his people."),
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
	ButtonKey = "w",
	ButtonHint = _("Train ~!Witness"),
	StartingAbilities = {"upgrade-inspire"},
	CanCastSpell = {"spell-inspire", "spell-healing", "spell-precision"},
	AutoCastActive = {"spell-inspire", "spell-healing", "spell-precision"},
	AiDrops = {"unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-giantsbane", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill"},
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

DefineUnitType("unit-dwarven-gryphon-rider", { Name = _("Gryphon Rider"),
	Parent = "unit-template-flying-rider",
	Civilization = "dwarf",
	Description = _("Only a few dwarves are able to bond with the mighty gryphons. Those who do may become gryphon riders, and discover the world of the skies upon the backs of these flying beasts."),
	Quote = _("\"Ha ha! Gryphons as mounts, that is naught but the stuff of legends! Is there no end to your folly?\"\n- Relgorn, Chieftain of the Norlund Clan"),
	Image = {"file", "dwarf/units/gryphon_rider.png", "size", {100, 100}},
	Animations = "animations-dwarven-gryphon-rider", Icon = "icon-dwarven-gryphon-rider",
	DefaultEquipment = {
		{"weapon", "unit-throwing-axe"},
		{"boots", "unit-boots"}
	},
	Missile = "missile-throwing-axe",
	FireMissile = "missile-flaming-throwing-axe",
	BasicDamage = 13,
	MaxAttackRange = 4,
	WeaponClasses = {"throwing-axe"},
	HackDamage = true,
	ButtonKey = "r",
	ButtonHint = _("Train Gryphon ~!Rider"),
	AiDrops = {"unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-boots", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-storm", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "black-hair-brown-feathers",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "brown-hair-blue-feathers",
			"file", "dwarf/units/gryphon_rider_brown_hair_blue_feathers.png",
			"icon", "icon-dwarven-gryphon-rider-brown-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair-brown-feathers",
			"file", "dwarf/units/gryphon_rider_gray_hair_brown_feathers.png"
		},
		{
			"variation-id", "red-hair-gray-feathers",
			"file", "dwarf/units/gryphon_rider_red_hair_gray_feathers.png",
			"icon", "icon-dwarven-gryphon-rider-red-hair",
			"upgrade-forbidden", "upgrade-old"
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

DefineUnitType("unit-dwarven-ballista", { Name = _("Ballista"),
	Parent = "unit-template-siege-engine",
	Civilization = "dwarf",
	Description = _("Dwarves employ heavy ballistas as their siege weapon of choice, with devastating effects on enemy fortifications."),
	Image = {"file", "dwarf/units/dwarven_ballista.png", "size", {64, 64}},
	Animations = "animations-dwarven-ballista", Icon = "icon-dwarven-ballista",
	Missile = "missile-dwarven-ballista-bolt",
	FireMissile = "missile-flaming-dwarven-ballista-bolt",
	PierceDamage = true,
	ButtonKey = "b",
	ButtonHint = _("Build ~!Ballista"),
	Sounds = {
--		"acknowledge", "ballista-acknowledge",
		"ready", "dwarven-ballista-ready",
		"help", "basic-dwarf-voices-help",
		"dead", "explosion"
	}
})

DefineUnitType("unit-dwarven-transport-ship", {
	Name = _("Transport"),
	Parent = "unit-template-transport-ship",
	Civilization = "dwarf",
	Description = _("Sailing the Deep Sea and underground rivers alike, these ships are manned by hearty dwarven crews. Every journey brings back new tales, be it of a kobold dwarf-eating tribe, or of treacherous goblin pirates..."),
	Image = {"file", "dwarf/units/transport.png", "size", {72, 72}},
	LightImage = {"file", "dwarf/units/transport_water.png"},
	Icon = "icon-dwarven-transport-ship",
	Variations = {
		{
			"variation-id", "dwarf",
			"upgrade-forbidden", "upgrade-brising-clan-faction"
		},
		{
			"variation-id", "brising",
			"file", "dlcs/brising_faction_flair/graphics/units/brising_transport.png",
			"icon", "icon-brising-transport-ship",
			"upgrade-required", "upgrade-brising-clan-faction"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help"
	}
})

DefineUnitType("unit-dwarven-town-hall", { Name = _("Mead Hall"),
	Parent = "unit-template-town-hall",
	Civilization = "dwarf",
	Description = _("The mead hall is the center of any sizable dwarven settlement, where they gather to discuss the issues facing the community and drink their strong mead. It was in one such hall that Fjalar and Galar feasted on the mead they made out of the blood of a dwarven sage, believing that it would grant them his breadth of knowledge. One of the most magnificent mead halls ever built is that of Lyr."),
	Background = _("Mead was a recurring theme in Germanic mythology, from which dwarves originate. In one particular myth, the dwarves Fjalar and Galar invited the sage Kvasir to a large feast in their dwelling, only to murder him and brew his blood into a special mead, the ~<Mead of Poetry~>. As the pair of ruthless dwarves expected, drinking the mead imbibed them with Kvasir's breadth of knowledge. In the ~<Voluspo~> it is mentioned that a dwarven hall made of gold existed in Nidavellir. The hall of Lyr is mentioned in the ~<Svipdagsmol~>."),
	Image = {"file", "dwarf/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "dwarf/buildings/town_hall_shadow.png", "size", {128, 128}},
	Icon = "icon-dwarven-town-hall",
	Costs = {"time", 255, "gold", 1200, "lumber", 1800, "stone", 600},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	ButtonHint = _("Build Mead ~!Hall"),
	Drops = {"unit-stone-pile"},
	AiDrops = {"unit-boots"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-giantsbane", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "dwarf",
			"upgrade-forbidden", "upgrade-brising-clan-faction"
		},
		{
			"variation-id", "brising",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_town_hall.png",
			"icon", "icon-brising-town-hall",
			"upgrade-required", "upgrade-brising-clan-faction"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
})

DefineUnitType("unit-dwarven-stronghold", { Name = _("Bastion"),
	Parent = "unit-template-stronghold",
	Civilization = "dwarf",
	Description = _("A dwarven settlement that has reached a certain status will often oversee the construction of a bastion, enhancing its defensive capabilities."),
	Quote = _("\"Now answer me, warder, the question I ask,\nFor now the truth would I know:\nWhat call they the hall, encompassed here\nWith flickering magic flames?\"\n- Dwarven Traditional Poetry (Durin)"),
	Image = {"file", "dwarf/buildings/stronghold.png", "size", {128, 128}},
	Shadow = {"file", "dwarf/buildings/stronghold_shadow.png", "size", {128, 128}},
	Icon = "icon-dwarven-stronghold",
	Costs = {"time", 200, "gold", 2000, "lumber", 1400, "stone", 2200},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-short-spear", "unit-long-spear", "unit-pike", "unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-round-shield", "unit-brising-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-giantsbane", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill"},
	Variations = {
		{
			"variation-id", "dwarf",
			"upgrade-forbidden", "upgrade-brising-clan-faction"
		},
		{
			"variation-id", "brising",
			"file", "dlcs/brising_faction_flair/graphics/buildings/brising_stronghold.png",
			"icon", "icon-brising-stronghold",
			"upgrade-required", "upgrade-brising-clan-faction"
		}
	},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
})

DefineUnitType("unit-dwarven-mushroom-farm", { Name = _("Mushroom Farm"),
	Parent = "unit-template-farm",
	Civilization = "dwarf",
	Description = _("For aeons, dwarves have practiced mushroom farming underground. At first, their crude agricultural methods allowed them only to use mushroom farming as a supplementary means of nutrition, so that they could remain in a given area for a longer time before migrating. Eventually, however, dwarven mushroom farming techniques developed to the point that dwarves were able to establish their first permanent communities."),
	Quote = _("\"This is how we get our food, me lad. Since we are a tad close to the surface here, some sunlight shines down through the cracks in the roof. If we baby the plants, we can usually get enough. They taste unco' foul but that's how we ha' survived all these long years.\"\n- Hamel, Lord of Knalga"),
	Image = {"file", "dwarf/buildings/mushroom_farm.png", "size", {64, 64}},
	Shadow = {"file", "dwarf/buildings/mushroom_farm_shadow.png", "size", {64, 64}},
	Icon = "icon-dwarven-mushroom-farm",
	Costs = {"time", 100, "gold", 500, "lumber", 500, "stone", 250},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	ButtonHint = _("Build Mushroom ~!Farm"),
	Trains = {"unit-cheese"},
	Drops = {"unit-wood-pile", "unit-stone-pile"},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-barracks", { Name = _("War Hall"),
	Parent = "unit-template-barracks",
	Civilization = "dwarf",
	Description = _("The war hall is where dwarves meet to train and hone their axefighting skills. Since early times, dwarves have faced many perils in the dark plains and caves of Nidavellir, such as goblins or hostile dwarven clans. To fight off these menaces, clans gradually developed means of organizing themselves militarily."),
	Quote = _("\"Loud roar the dwarves by the doors of stone,\nThe masters of the rocks: would you know yet more?\"\n- Dwarven Traditional Poetry"),
	Image = {"file", "dwarf/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/barracks_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-barracks",
	Costs = {"time", 200, "gold", 700, "lumber", 900, "stone", 450},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	ButtonKey = "w",
	ButtonHint = _("Build ~!War Hall"),
	Trains = {"unit-dwarven-axefighter", "unit-dwarven-guard", "unit-dwarven-scout", "unit-dwarven-yale-rider", "unit-dwarven-ballista", "unit-dwarven-gryphon-rider"},
	Drops = {"unit-stone-pile"},
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-short-spear", "unit-long-spear", "unit-pike", "unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe", "unit-round-shield", "unit-brising-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-boots"},
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-giantsbane", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill"},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-lumber-mill", { Name = _("Lumber Mill"),
	Parent = "unit-template-lumber-mill",
	Civilization = "dwarf",
	Description = _("Dwarven culture places a great emphasis on handling stone and metal, to the detriment of woodworking. Nevertheless, the lumber mill employs a number of dwarven artisans skilled in woodworking, who strive to improve methods of lumber production and the scouts' throwing axes."),
	Background = _("In Germanic mythology, one instance related to dwarven woodwork to be found is the crafting of the ship Skidbladnir and the throwing spear Gungnir by the sons of Ivaldi. Skidbladnir is mentioned in the ~<Grimnismol~>."),
	Image = {"file", "dwarf/buildings/lumber_mill.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/lumber_mill_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-lumber-mill",
--	Costs = {"time", 165, "gold", 660, "lumber", 1485},
	Costs = {"time", 165, "gold", 660, "lumber", 990, "stone", 495},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	TechnologyPointCost = 1,
	Drops = {"unit-stone-pile"},
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-throwing-axe", "unit-sharp-throwing-axe", "unit-bearded-throwing-axe"},
	DropAffixes = {"upgrade-item-prefix-storm", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-the-snigill"},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-smithy", { Name = _("Smithy"),
	Parent = "unit-template-smithy",
	Civilization = "dwarf",
--	Description = _("Smithing is a highly-valued skill in dwarven society, and it is in this structure that dwarven smiths gather to produce weapons and armor for troops. Dwarves are renowned for their smithing abilities, and their craft attracts many non-dwarven customers. The most prestigious of dwarven metalworkers are the runesmiths, Thursagan being the greatest among them."),
	Description = _("Smithing is a highly-valued skill in dwarven society, leading many to dedicate themselves to that profession. Dwarven smiths are renowned for their abilities, and their craft attracts many foreign customers. The most prestigious of dwarven metalworkers are the runesmiths."),
	Quote = _("\"The land of Untersberg's banner bold\nComes not from its own land;\nIt comes from Dwarfdom, grim and old\nMade by a runesmith's hand.\"\n- The Scepter of Fire"),
	Background = _("One of the primary talents of the dwarves in Norse mythology was smithing. In a number of myths, dwarven smiths would craft marvelous artifacts for the gods, and sometimes even for mortals."),
--	Background = _("One of the primary talents of the dwarves in Norse mythology was smithing. In a number of myths, dwarven smiths would craft marvelous artifacts for the gods, and sometimes even for mortals. One example of such an artifact is Mjollnir, the famous hammer of the Norse god Thor, which was made by the dwarves Brokk and Eitri. Another example is the sword Gram, crafted by the dwarf Regin in the ~<Reginsmol~>.\n\nRunesmiths feature in the Battle for Wesnoth, and are mentioned in ~<The Sceptre of Fire~> poem."),
	Image = {"file", "dwarf/buildings/smithy.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-smithy",
--	Costs = {"time", 190, "gold", 800, "lumber", 1560},
	Costs = {"time", 190, "gold", 800, "lumber", 1040, "stone", 520},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	TechnologyPointCost = 1,
	Drops = {"unit-stone-pile"},
	AiDrops = {"unit-battle-axe", "unit-broad-axe", "unit-great-axe", "unit-round-shield", "unit-heater-shield", "unit-thrymgjol-shield", "unit-spatha"}, -- drops Spatha to allow dropping dwarven unique swords
	DropAffixes = {"upgrade-item-prefix-cold", "upgrade-item-prefix-flaming", "upgrade-item-prefix-giantsbane", "upgrade-item-prefix-glacial", "upgrade-item-prefix-quenching", "upgrade-item-suffix-of-cold", "upgrade-item-suffix-of-extinguishment", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-aedi",  "upgrade-item-suffix-of-othola"}, -- has flaming prefix to allow dropping The Hammer of Thursagan; Aedi and Othola are Norse runes
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-yale-pen", {
	Name = _("Yale Pen"),
	Parent = "unit-template-stables",
	Civilization = "dwarf",
	Description = _("Although the underground dwarves shun mounted combat, their wild hill-dwelling kin cherish it as a noble tradition. The mobility given by the yale is crucial for traversing their homelands' hills and peaks. Dwarves have been breeding yales since time immemorial, the animals being valuable not only as mounts, but also as beasts of carry."),
	Image = {"file", "dwarf/buildings/yale_pen.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/yale_pen_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-yale-pen",
--	Costs = {"time", 150, "gold", 1000, "lumber", 900},
	Costs = {"time", 150, "gold", 1000, "lumber", 600, "stone", 300},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	TechnologyPointCost = 1,
	ButtonKey = "y",
	ButtonHint = _("Build ~!Yale Pen"),
	Drops = {"unit-stone-pile", "unit-yale"},
	Sounds = {
		"selected", "yale-pen-selected",
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-temple", { Name = _("Temple"),
	Parent = "unit-template-temple",
	Civilization = "dwarf",
	Description = _("Dwarven temples are built as underground vaults, where they keep their mystic texts. The temple vault has many layers, with only dwarven sages of the highest caliber being granted access to the deepest ones."),
	Image = {"file", "dwarf/buildings/temple.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/temple_shadow.png", "size", {96, 96}},
	Icon = "icon-dwarven-temple",
--	Costs = {"time", 175, "gold", 900, "lumber", 1500},
	Costs = {"time", 175, "gold", 900, "lumber", 1000, "stone", 500},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	Trains = {"unit-dwarven-witness", "unit-potion-of-healing"},
	Drops = {"unit-stone-pile"},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-sentry-tower", { Name = _("Sentry Tower"),
	Parent = "unit-template-watch-tower",
	Civilization = "dwarf",
	Description = _("In these solid towers dwarves keep watch of threats approaching their settlements."),
	Image = {"file", "dwarf/buildings/sentry_tower.png", "size", {64, 64}},
	Shadow = {"file", "dwarf/buildings/sentry_tower_shadow.png", "size", {64, 64}},
	Animations = "animations-dwarven-sentry-tower", Icon = "icon-dwarven-sentry-tower",
	Costs = {"time", 60, "gold", 550, "lumber", 200, "stone", 400},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	HitPoints = 250, -- 300 with masonry
	Construction = "construction-dwarven-sentry-tower",
	ButtonHint = _("Build Sentry ~!Tower"),
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-guard-tower", { Name = _("Guard Tower"),
	Parent = "unit-template-guard-tower",
	Civilization = "dwarf",
	Description = _("Often garrisoned by dwarven scouts, these towers are an essential part of a dwarven settlement's sturdy defenses."),
	Image = {"file", "dwarf/buildings/guard_tower.png", "size", {64, 64}},
	Shadow = {"file", "dwarf/buildings/guard_tower_shadow.png", "size", {64, 64}},
	Animations = "animations-dwarven-guard-tower", Icon = "icon-dwarven-guard-tower",
	Costs = {"time", 140, "gold", 500, "lumber", 150, "stone", 300},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	HitPoints = 325, -- 390 with masonry
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

DefineUnitType("unit-dwarven-dock", { Name = _("Dock"),
	Parent = "unit-template-dock",
	Civilization = "dwarf",
	Description = _("Although nautical dwarves are few in number, dwarven shipwrighting is a refined craft. They construct sturdy ships, capable of braving oceans and subterranean rivers alike."),
	Image = {"file", "dwarf/buildings/dock.png", "size", {96, 96}},
	Shadow = {"file", "dwarf/buildings/dock_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-dwarven-dock",
--	Costs = {"time", 200, "gold", 800, "lumber", 1350},
	Costs = {"time", 200, "gold", 800, "lumber", 900, "stone", 450},
	RepairCosts = {"gold", 1, "lumber", 1, "stone", 1},
	FireResistance = 20,
	Trains = {"unit-dwarven-transport-ship"},
--	Drops = {"unit-stone-pile"},
	Sounds = {
		"help", "basic-dwarf-voices-help-town"
	}
} )

Load("scripts/civilizations/dwarf/units_joruvellir.lua")

DefineUnitType("unit-dwarven-miner", { -- this is here because the buildings need to be defined before being assigned to the miner's "Trains" array
	Trains = {"unit-dwarven-town-hall", "unit-dwarven-mushroom-farm", "unit-dwarven-barracks", "unit-dwarven-lumber-mill", "unit-dwarven-smithy", "unit-dwarven-yale-pen", "unit-joruvellir-yale-pen", "unit-dwarven-temple", "unit-dwarven-sentry-tower", "unit-dwarven-dock", "unit-gold-mine", "unit-silver-mine", "unit-copper-mine"}
} )

DefineUnitType("unit-dwarven-skilled-miner", {
	Trains = {"unit-dwarven-town-hall", "unit-dwarven-mushroom-farm", "unit-dwarven-barracks", "unit-dwarven-lumber-mill", "unit-dwarven-smithy", "unit-dwarven-yale-pen", "unit-joruvellir-yale-pen", "unit-dwarven-temple", "unit-dwarven-sentry-tower", "unit-dwarven-dock", "unit-gold-mine", "unit-silver-mine", "unit-copper-mine"}
} )

DefineUnitType("unit-dwarven-expert-miner", {
	Trains = {"unit-dwarven-town-hall", "unit-dwarven-mushroom-farm", "unit-dwarven-barracks", "unit-dwarven-lumber-mill", "unit-dwarven-smithy", "unit-dwarven-yale-pen", "unit-joruvellir-yale-pen", "unit-dwarven-temple", "unit-dwarven-sentry-tower", "unit-dwarven-dock", "unit-gold-mine", "unit-silver-mine", "unit-copper-mine"}
} )

Load("scripts/civilizations/dwarf/units_brising.lua")

DefineUnitType("unit-dwarven-town-hall", {
	Trains = {"unit-dwarven-miner", "unit-brising-miner"},
})

DefineUnitType("unit-dwarven-stronghold", {
	Trains = {"unit-dwarven-miner", "unit-brising-miner"},
})

DefineUnitType("unit-surghan-mercenary-steelclad", { Name = _("Surghan Mercenary"),
	Parent = "unit-dwarven-steelclad",
	Class = "",
	Civilization = "dwarf",
	Description = _("These scoundrels will hire their axes to the largest bidder, no questions asked. They have participated in a number of engagements, the most dangerous of which was the pursuit of a group of dwarves into the lair of the wyrm Svafnir and beyond."),
	Quote = _("\"It must be one of those Surghan mercenaries. I'll bet those Shinsplitters have hired more of them. That's bad news for us, for they are deadly, combat-hardened warriors.\"\n- Baglur, Retired Norlund Warrior"),
	Animations = "animations-dwarven-axefighter", Icon = "icon-surghan-mercenary-steelclad",
	Costs = {"time", 0, "gold", 900, "lumber", 0},
	TrainQuantity = 4,
	Mercenary = true,
	ButtonPos = 5,
	ButtonKey = "s",
	ButtonHint = _("Hire ~!Surghan Mercenaries"),
	Variations = {
		{
			"variation-id", "red-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"layer", "weapon",
			"variation-id", "axe",
			"upgrade-forbidden", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-not-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "double-axe",
			"file", "dwarf/units/weapons/double_axe.png",
			"upgrade-required", "upgrade-dwarven-great-axe",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick",
			"item-equipped", "unit-great-axe"
		},
		{
			"layer", "weapon",
			"variation-id", "mace",
			"file", "dwarf/units/weapons/mace.png",
			"item-equipped", "unit-hammer",
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

DefineUnitType("unit-surghan-mercenary-thane", { Name = _("Surghan Mercenary"),
	Parent = "unit-dwarven-thane",
	Class = "",
	Civilization = "dwarf",
	Image = {"file", "dwarf/units/thane.png", "size", {72, 72}},
	Animations = "animations-dwarven-axefighter", Icon = "icon-surghan-mercenary-thane",
	Mercenary = true,
	Variations = {}
} )
