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
--      (c) Copyright 2014-2016 by Andrettin
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

DefineUnitType("unit-gnomish-worker", { Name = _("Scavenger"),
	Parent = "unit-template-worker",
	Civilization = "gnome",
	Description = _("Scavengers serve as the main source of manual labor in the gnomish lands."),
	Image = {"file", "gnome/units/gnomish_worker.png", "size", {72, 72}},
	Animations = "animations-gnomish-worker", Icon = "icon-gnomish-worker",
	DefaultEquipment = {
		{"boots", "unit-wool-shoes"}
	},
	Accuracy = 9,
	Evasion = 10,
	Corpse = "unit-gnomish-dead-body",
	WeaponClasses = {"mace"},
	BluntDamage = true,
	ButtonKey = "s",
	ButtonHint = _("Train ~!Scavenger"),
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-cheese", "unit-wool-shoes"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "gnome/units/gnomish_worker_with_gold.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "gnome/units/gnomish_worker_with_gold.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "gnome/units/gnomish_worker_with_gold.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "gnome/units/gnomish_worker_with_lumber.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "gnome/units/gnomish_worker_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "gnome/units/gnomish_worker_with_gold.png"
		}
	},
	Variations = {
		{
			"variation-id", "blond-hair"
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-gnomish-worker-gray-hair",
			"file", "gnome/units/gnomish_worker_gray_hair.png",
			"file-when-loaded", "gold", "gnome/units/gnomish_worker_with_gold_gray_hair.png",
			"file-when-loaded", "lumber", "gnome/units/gnomish_worker_with_lumber_gray_hair.png"
		}
	},
	Sounds = {
		"selected", "gnomish-worker-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"attack", "basic-gnome-voices-attack",
		"repair", "gnomish-worker-repair",
		"ready", "gnomish-worker-ready",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-recruit", { Name = _("Recruit"),
	Parent = "unit-template-infantry",
	Civilization = "gnome",
	Description = _("Gnomish recruits form the common soldiery of the gnomish armies. Due to their small size, they tend to attack by thrusting their swords, rather than slashing with them, seeking to strike vital points and cause more damage than their strength would allow when hacking away at enemies."),
	Quote = _("\"With a tremendous crash, the great mountain burst apart and a whole troop of tiny, little mountain gnomes came out, dancing grotesquely like sprites of another world.\" - The Gnomes of the Saline Mountains"),
	Image = {"file", "gnome/units/body_warrior.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "gnome/units/blond_hair_warrior.png"},
		{"layer", "right-arm", "file", "gnome/units/right_arm_warrior.png"},
		{"layer", "weapon", "file", "gnome/units/thrusting_sword.png"}
	},
	Animations = "animations-gnomish-recruit", Icon = "icon-gnomish-recruit",
	DefaultEquipment = {
		{"weapon", "unit-thrusting-sword"},
		{"shield", "unit-round-shield"},
		{"boots", "unit-wool-shoes"}
	},
	Costs = {"gold", 500},
	HitPoints = 50,
	Accuracy = 11,
	Evasion = 11,
	Priority = 50,
	Points = 40,
	Corpse = "unit-gnomish-dead-body",
	WeaponClasses = {"thrusting-sword", "sword", "mace"},
	AiDrops = {"unit-thrusting-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-wool-shoes", "unit-furry-wool-shoes", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-suffix-of-the-snigill"},
	PierceDamage = true,
	InvertedSoutheastArms = true,
	ButtonKey = "r",
	ButtonHint = _("Train ~!Recruit"),
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-gnomish-recruit-gray-hair",
			"layer-file", "hair", "gnome/units/gray_hair_warrior.png",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "blond-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/blond_hair_warrior_slash.png",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-gnomish-recruit-gray-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/gray_hair_warrior_slash.png",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm-slash",
			"file", "gnome/units/right_arm_warrior_slash.png",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "sword",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "hammer",
			"file", "gnome/units/hammer_warrior.png",
			"item-equipped", "unit-hammer"
		},
		{
			"layer", "weapon",
			"variation-id", "mining-pick",
			"file", "gnome/units/mining_pick_warrior.png",
			"item-equipped", "unit-mining-pick"
		}
	},
	Sounds = {
		"selected", "gnomish-recruit-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"attack", "basic-gnome-voices-attack",
		"ready", "gnomish-recruit-ready",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-duelist", { Name = _("Duelist"),
	Parent = "unit-template-veteran-infantry",
	Civilization = "gnome",
	Description = _("Veteran gnomish warriors have honed the art of fencing to a remarkable degree, making them formidable opponents in single combat."),
	Image = {"file", "gnome/units/body_warrior.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "gnome/units/blond_hair_warrior.png"},
		{"layer", "right-arm", "file", "gnome/units/right_arm_warrior.png"},
		{"layer", "weapon", "file", "gnome/units/thrusting_sword.png"}
	},
	Animations = "animations-gnomish-recruit", Icon = "icon-gnomish-duelist",
	DefaultEquipment = {
		{"weapon", "unit-thrusting-sword"},
		{"shield", "unit-round-shield"},
		{"boots", "unit-wool-shoes"}
	},
	HitPoints = 60,
	Accuracy = 13,
	Evasion = 13,
	Corpse = "unit-gnomish-dead-body",
	WeaponClasses = {"thrusting-sword", "sword", "mace"},
	AiDrops = {"unit-thrusting-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-wool-shoes", "unit-furry-wool-shoes", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-jinns", "upgrade-item-prefix-storm", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-the-jinn", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-trickery"},
	PierceDamage = true,
	InvertedSoutheastArms = true,
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-gnomish-duelist-gray-hair",
			"layer-file", "hair", "gnome/units/gray_hair_warrior.png",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "blond-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/blond_hair_warrior_slash.png",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-gnomish-duelist-gray-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/gray_hair_warrior_slash.png",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm-slash",
			"file", "gnome/units/right_arm_warrior_slash.png",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "sword",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "hammer",
			"file", "gnome/units/hammer_warrior.png",
			"item-equipped", "unit-hammer"
		},
		{
			"layer", "weapon",
			"variation-id", "mining-pick",
			"file", "gnome/units/mining_pick_warrior.png",
			"item-equipped", "unit-mining-pick"
		}
	},
	Sounds = {
		"selected", "gnomish-recruit-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"attack", "basic-gnome-voices-attack",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-master-at-arms", { Name = _("Master at Arms"),
	Parent = "unit-template-heroic-infantry",
	Civilization = "gnome",
	Description = _("Deadly accurate, the gnomish master at arms is an extremely tough foe to defeat. Many a dwarven warrior has scorned the diminutive gnome's abilities, only to fail to deliver a single blow to the master at arms - with a fatal puncturing strike soon sealing the dwarf's fate."),
	Image = {"file", "gnome/units/body_warrior.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "gnome/units/blond_hair_warrior.png"},
		{"layer", "right-arm", "file", "gnome/units/right_arm_warrior.png"},
		{"layer", "weapon", "file", "gnome/units/thrusting_sword.png"}
	},
	Animations = "animations-gnomish-recruit", Icon = "icon-gnomish-master-at-arms",
	DefaultEquipment = {
		{"weapon", "unit-thrusting-sword"},
		{"shield", "unit-round-shield"},
		{"boots", "unit-wool-shoes"}
	},
	HitPoints = 75,
	Accuracy = 15,
	Evasion = 15,
	Corpse = "unit-gnomish-dead-body",
	WeaponClasses = {"thrusting-sword", "sword", "mace"},
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	AiDrops = {"unit-thrusting-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-wool-shoes", "unit-furry-wool-shoes", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-jinns", "upgrade-item-prefix-storm", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-the-jinn", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-trickery"},
	PierceDamage = true,
	InvertedSoutheastArms = true,
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-gnomish-master-at-arms-gray-hair",
			"layer-file", "hair", "gnome/units/gray_hair_warrior.png",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "blond-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/blond_hair_warrior_slash.png",
			"upgrade-forbidden", "upgrade-old",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-gnomish-master-at-arms-gray-hair",
			"file", "gnome/units/body_warrior_slash.png",
			"layer-file", "hair", "gnome/units/gray_hair_warrior_slash.png",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "right-arm",
			"variation-id", "right-arm-slash",
			"file", "gnome/units/right_arm_warrior_slash.png",
			"item-equipped", "unit-hammer",
			"item-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "sword",
			"item-not-equipped", "unit-hammer",
			"item-not-equipped", "unit-mining-pick"
		},
		{
			"layer", "weapon",
			"variation-id", "hammer",
			"file", "gnome/units/hammer_warrior.png",
			"item-equipped", "unit-hammer"
		},
		{
			"layer", "weapon",
			"variation-id", "mining-pick",
			"file", "gnome/units/mining_pick_warrior.png",
			"item-equipped", "unit-mining-pick"
		}
	},
	Sounds = {
		"selected", "gnomish-recruit-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"attack", "basic-gnome-voices-attack",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-herbalist", { Name = _("Herbalist"),
	Parent = "unit-template-priest",
	Civilization = "gnome",
	Description = _("The priests of gnomish societies, herbalists are in deep contact with nature. They honor the souls of plants while using them to concoct powerful potions and medicines."),
	Image = {"file", "gnome/units/gnomish_herbalist.png", "size", {72, 72}},
	Animations = "animations-gnomish-herbalist", Icon = "icon-gnomish-herbalist",
	DefaultEquipment = {
		{"boots", "unit-wool-shoes"}
	},
	HitPoints = 35,
	Accuracy = 10,
	Evasion = 10,
	Corpse = "unit-gnomish-dead-body",
	CanCastSpell = {"spell-herbal-cure", "spell-portent"},
	AutoCastActive = {"spell-herbal-cure"},
	AiDrops = {"unit-wool-shoes", "unit-furry-wool-shoes", "unit-cheese", "unit-potion-of-healing"},
	DropAffixes = {"upgrade-item-prefix-jinns", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-storm", "upgrade-item-prefix-vicious", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-the-jinn", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-trickery"}, -- allow more magic enchantments than normal 
	HackDamage = true,
	ButtonPos = 2,
	ButtonKey = "h",
	ButtonHint = _("Train ~!Herbalist"),
	Variations = {
		{
			"variation-id", "blond-hair",
			"upgrade-forbidden", "upgrade-old"
		},
		{
			"variation-id", "gray-hair",
			"file", "gnome/units/gnomish_herbalist_gray_hair.png"
		}
	},
	Sounds = {
		"selected", "gnomish-herbalist-selected-group",
		"acknowledge", "basic-gnome-voices-acknowledge",
		"attack", "basic-gnome-voices-attack",
		"ready", "gnomish-herbalist-ready",
		"help", "basic-gnome-voices-help",
		"dead", "basic-gnome-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-gnomish-caravan", { Name = _("Caravan"),
	Parent = "unit-template-unit",
	Class = "caravan",
	Civilization = "gnome",
	Description = _("These caravans are used by gnomish societies to conduct trade, bringing goods as far as the Heart Mountains."),
	Image = {"file", "gnome/units/gnomish_caravan.png", "size", {64, 64}},
	Animations = "animations-gnomish-caravan", Icon = "icon-gnomish-caravan",
	Costs = {"time", 250, "gold", 900, "lumber", 300},
	RepairHp = 4,
	RepairCosts = {"gold", 1, "lumber", 1},
	Speed = 5,
	HitPoints = 110,
	TileSize = {1, 1}, BoxSize = {63, 63},
	SightRange = 9,
	Priority = 70,
	Points = 100,
	Demand = 1,
	Type = "land",
	Coward = true,
	RightMouseAction = "move",
	MaxOnBoard = 2,
	CanTransport = {"GroundAttack", "false", "Fauna", "false", "SaveCargo", "false", "Mounted", "false"}, -- forbidding ground attack as an ugly way of making ballistas not be able to enter the transporter; and forbidden "SaveCargo" is an ugly way of making caravans not be able to enter other caravans
	AttackFromTransporter = true,
	SaveCargo = true,
	ButtonKey = "c",
	ButtonHint = _("Build ~!Caravan"),
	Sounds = {
		"selected", "click",
--		"acknowledge", "ballista-acknowledge",
		"ready", "gnomish-caravan-ready",
		"help", "basic-gnome-voices-help",
		"dead", "explosion",
		"step", "step-dirt",
		"step-dirt", "step-dirt",
		"step-grass", "step-leaves",
		"step-gravel", "step-gravel",
		"step-mud", "step-mud",
		"step-stone", "step-stone",
	}
} )

DefineUnitType("unit-gnomish-town-hall", { Name = _("Town Hall"),
	Parent = "unit-template-town-hall",
	Civilization = "gnome",
	Description = _("The town hall is the center of a gnomish settlement's life."),
	Image = {"file", "gnome/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "gnome/buildings/town_hall_shadow.png", "size", {128, 128}},
	Animations = "animations-building", Icon = "icon-gnomish-town-hall",
	Trains = {"unit-gnomish-worker"},
	AiDrops = {"unit-wool-shoes", "unit-furry-wool-shoes"},
	DropAffixes = {"upgrade-item-prefix-jinns", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-storm", "upgrade-item-prefix-vicious", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-the-jinn", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-trickery"},
	Sounds = {
		"ready", "basic-gnome-voices-work-complete",
		"help", "basic-gnome-voices-help-town"
	}
} )

DefineUnitType("unit-gnomish-farm", { Name = _("Farm"),
	Parent = "unit-template-farm",
	Civilization = "gnome",
	Description = _("Gnomish farms provide sustenance for their settlements. Contrary to the dwarves, the gnomes tend to plant vegetables, rather than mushrooms, and they also breed livestock."),
	Image = {"file", "gnome/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "gnome/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-gnomish-farm",
	Sounds = {
		"ready", "basic-gnome-voices-work-complete",
		"help", "basic-gnome-voices-help-town"
	}
} )

DefineUnitType("unit-gnomish-barracks", { Name = _("Barracks"),
	Parent = "unit-template-barracks",
	Civilization = "gnome",
	Description = _("The gnomish barracks serves as a place for military training and arregimentation for the gnomes."),
	Image = {"file", "gnome/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "gnome/buildings/barracks_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-gnomish-barracks",
	Trains = {"unit-gnomish-recruit", "unit-dwarven-scout", "unit-dwarven-yale-rider", "unit-dwarven-ballista", "unit-dwarven-gryphon-rider", "unit-gnomish-herbalist"},
	AiDrops = {"unit-thrusting-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-wool-shoes", "unit-furry-wool-shoes"},
	DropAffixes = {"upgrade-item-prefix-jinns", "upgrade-item-prefix-penetrating", "upgrade-item-prefix-storm", "upgrade-item-prefix-vicious", "upgrade-item-prefix-wounding", "upgrade-item-suffix-of-betrayal", "upgrade-item-suffix-of-fire", "upgrade-item-suffix-of-the-jinn", "upgrade-item-suffix-of-lightning", "upgrade-item-suffix-of-perfuration", "upgrade-item-suffix-of-slowness", "upgrade-item-suffix-of-the-snigill", "upgrade-item-suffix-of-speed", "upgrade-item-suffix-of-swiftness", "upgrade-item-suffix-of-trickery"},
	Sounds = {
		"ready", "basic-gnome-voices-work-complete",
		"help", "basic-gnome-voices-help-town"
	}
} )

DefineUnitType("unit-gnomish-worker", { -- this is here because the buildings need to be defined before being assigned to the miner's "Trains" array
	Trains = {"unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks", "unit-dwarven-lumber-mill", "unit-dwarven-smithy", "unit-dwarven-yale-pen", "unit-dwarven-sentry-tower", "unit-dwarven-dock", "unit-gold-mine", "unit-silver-mine", "unit-copper-mine"}
} )

