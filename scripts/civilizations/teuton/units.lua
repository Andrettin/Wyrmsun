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
--      (c) Copyright 2015-2019 by Andrettin
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

DefineUnitType("unit-teuton-worker", {
	Name = "Bura",
	Parent = "unit-template-worker",
	Civilization = "teuton",
--	Description = "Hardworking and robust, buras are the lifeblood of germanic society, tending the fields and performing most of the manual labor required.",
--	Quote = "\"He began to grow, and to gain in strength,\nOxen he ruled, and plows made ready,\nHouses he built, and barns he fashioned,\nCarts he made, and the plow he managed.\"\n- Rigsthula",
--	Background = "\"Bûra\" is a Proto-Germanic word for \"peasant\" or \"farmer\".",
	Image = {"file", "germanic/units/worker.png", "size", {72, 72}},
	Animations = "animations-worker", Icon = "icon-germanic-worker",
	DefaultEquipment = {
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"mace", "axe"},
	BluntDamage = true,
	AiDrops = {"unit-hammer", "unit-mining-pick", "unit-boots", "unit-cheese", "unit-carrots"},
	CanGatherResources = {
		{
			"resource-id", "gold",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "silver",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "copper",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "iron",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "mithril",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "lumber",
			"file-when-loaded", "germanic/units/worker_with_lumber.png"
		},
		{
			"resource-id", "stone",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "limestone",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "coal",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "jewelry",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "furniture",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "leather",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "diamonds",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		},
		{
			"resource-id", "emeralds",
			"file-when-loaded", "germanic/units/worker_with_gold.png"
		}
	},
	Variations = {
		{
			"variation-id", "brown-hair",
		}
	},
	Sounds = {
--		"selected", "basic-teuton-voices-selected-group",
--		"acknowledge", "basic-teuton-voices-acknowledge",
--		"ready", "teuton-bauer-ready",
--		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "mace-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-swordsman", {
	Name = "Swordsman",
	Parent = "unit-template-infantry",
	Civilization = "teuton",
	Description = "The dauntless West Germanic swordsmen ravage the battlefield with their longswords, being second to few other warriors in combat.",
--	Background = "\"Krieger\" is the German word for \"warrior\".",
	Image = {"file", "human/units/body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/brown_hair_warrior.png"},
		{"layer", "left-arm", "file", "human/units/left_arm.png"},
		{"layer", "right-arm", "file", "human/units/right_arm.png"},
		{"layer", "right-hand", "file", "human/units/right_hand.png"},
		{"layer", "clothing", "file", "teuton/units/chainmail.png"},
		{"layer", "clothing-left-arm", "file", "teuton/units/chainmail_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "teuton/units/chainmail_right_arm.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "boots", "file", "teuton/units/leather_shoes.png"},
		{"layer", "helmet", "file", "teuton/units/iron_helm.png"},
		{"layer", "weapon", "file", "teuton/units/long_iron_sword.png"}
	},
	Animations = "animations-melee-unit-new", Icon = "icon-saxon-swordsman",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Costs = {"time", 50, "copper", 600},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting-sword"},
	HackDamage = true,
	ButtonKey = "w",
	ButtonHint = "Train S~!wordsman",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair",
			"icon", "icon-saxon-swordsman-black-hair",
			"layer-file", "hair", "human/units/black_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 2
		},
		{
			"variation-id", "blond-hair",
			"icon", "icon-saxon-swordsman-blond-hair",
			"layer-file", "hair", "human/units/blond_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "red-hair",
			"icon", "icon-saxon-swordsman-red-hair",
			"layer-file", "hair", "human/units/red_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"layer", "left-arm",
			"variation-id", "left-arm",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "left-arm",
			"variation-id", "shield-left-arm",
			"file", "human/units/left_arm_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield",
			"item-equipped", "unit-goblin-rimmed-shield",
			"item-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "weapon",
			"variation-id", "broad-bronze-sword",
			"file", "germanic/units/broad_bronze_sword.png",
			"upgrade-forbidden", "upgrade-teuton-spatha",
			"item-not-equipped", "unit-spatha",
			"item-not-equipped", "unit-frankish-spatha",
			"item-not-equipped", "unit-goblin-short-sword",
			"item-not-equipped", "unit-goblin-broad-sword",
			"item-not-equipped", "unit-goblin-long-sword"
		},
		{
			"layer", "weapon",
			"variation-id", "long-iron-sword",
			"file", "teuton/units/long_iron_sword.png",
			"upgrade-required", "upgrade-teuton-spatha",
			"item-equipped", "unit-spatha",
			"item-equipped", "unit-frankish-spatha",
			"item-equipped", "unit-goblin-short-sword",
			"item-equipped", "unit-goblin-broad-sword",
			"item-equipped", "unit-goblin-long-sword"
		},
		{
			"layer", "shield",
			"variation-id", "no-shield",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "bronze-shield",
			"file", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "iron-shield",
			"file", "teuton/units/saxon_shield.png",
			"upgrade-required", "upgrade-teuton-iron-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield",
			"item-equipped", "unit-goblin-rimmed-shield",
			"item-equipped", "unit-goblin-embossed-shield"
		}
	},
	Sounds = {
--		"selected", "basic-teuton-voices-selected-group",
--		"acknowledge", "basic-teuton-voices-acknowledge",
--		"ready", "basic-teuton-voices-ready",
--		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-veteran-swordsman", {
	Name = "Veteran Swordsman",
	Parent = "unit-template-veteran-infantry",
	Civilization = "teuton",
	Description = "These high-ranking swordsmen have honed their combat skills to a greater degree than many of their counterparts.",
--	Background = "\"Adel\" is the German word for \"noble\".",
	Image = {"file", "human/units/body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/brown_hair_warrior.png"},
		{"layer", "left-arm", "file", "human/units/left_arm.png"},
		{"layer", "right-arm", "file", "human/units/right_arm.png"},
		{"layer", "right-hand", "file", "human/units/right_hand.png"},
		{"layer", "clothing", "file", "teuton/units/chainmail.png"},
		{"layer", "clothing-left-arm", "file", "teuton/units/chainmail_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "teuton/units/chainmail_right_arm.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "boots", "file", "teuton/units/leather_shoes.png"},
		{"layer", "helmet", "file", "teuton/units/iron_helm.png"},
		{"layer", "weapon", "file", "teuton/units/long_iron_sword.png"}
	},
	Animations = "animations-melee-unit-new", Icon = "icon-veteran-saxon-swordsman",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting-sword"},
	HackDamage = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair",
			"icon", "icon-veteran-saxon-swordsman-black-hair",
			"layer-file", "hair", "human/units/black_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 2
		},
		{
			"variation-id", "blond-hair",
			"icon", "icon-veteran-saxon-swordsman-blond-hair",
			"layer-file", "hair", "human/units/blond_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "red-hair",
			"icon", "icon-veteran-saxon-swordsman-red-hair",
			"layer-file", "hair", "human/units/red_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"layer", "left-arm",
			"variation-id", "left-arm",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "left-arm",
			"variation-id", "shield-left-arm",
			"file", "human/units/left_arm_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield",
			"item-equipped", "unit-goblin-rimmed-shield",
			"item-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "weapon",
			"variation-id", "broad-bronze-sword",
			"file", "germanic/units/broad_bronze_sword.png",
			"upgrade-forbidden", "upgrade-teuton-spatha",
			"item-not-equipped", "unit-spatha",
			"item-not-equipped", "unit-frankish-spatha",
			"item-not-equipped", "unit-goblin-short-sword",
			"item-not-equipped", "unit-goblin-broad-sword",
			"item-not-equipped", "unit-goblin-long-sword"
		},
		{
			"layer", "weapon",
			"variation-id", "long-iron-sword",
			"file", "teuton/units/long_iron_sword.png",
			"upgrade-required", "upgrade-teuton-spatha",
			"item-equipped", "unit-spatha",
			"item-equipped", "unit-frankish-spatha",
			"item-equipped", "unit-goblin-short-sword",
			"item-equipped", "unit-goblin-broad-sword",
			"item-equipped", "unit-goblin-long-sword"
		},
		{
			"layer", "shield",
			"variation-id", "no-shield",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "bronze-shield",
			"file", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "iron-shield",
			"file", "teuton/units/saxon_shield.png",
			"upgrade-required", "upgrade-teuton-iron-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield",
			"item-equipped", "unit-goblin-rimmed-shield",
			"item-equipped", "unit-goblin-embossed-shield"
		}
	},
	Sounds = {
--		"selected", "basic-teuton-voices-selected-group",
--		"acknowledge", "basic-teuton-voices-acknowledge",
--		"ready", "basic-teuton-voices-ready",
--		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-heroic-swordsman", {
	Name = "Warlord",
	Parent = "unit-template-heroic-infantry",
	Civilization = "teuton",
	Description = "Amongst the most skilled in the land, these swordsmen often serve as retainers for chieftains and kings.",
--	Background = "\"Truhtîn\", or \"trohtîn\", is a Middle High German word for \"lord\" or \"warlord\".",
	Image = {"file", "human/units/body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/brown_hair_warrior.png"},
		{"layer", "left-arm", "file", "human/units/left_arm.png"},
		{"layer", "right-arm", "file", "human/units/right_arm.png"},
		{"layer", "right-hand", "file", "human/units/right_hand.png"},
		{"layer", "clothing", "file", "teuton/units/chainmail.png"},
		{"layer", "clothing-left-arm", "file", "teuton/units/chainmail_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "teuton/units/chainmail_right_arm.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "boots", "file", "teuton/units/leather_shoes.png"},
		{"layer", "helmet", "file", "teuton/units/iron_helm.png"},
		{"layer", "weapon", "file", "teuton/units/long_iron_sword.png"}
	},
	Animations = "animations-melee-unit-new", Icon = "icon-heroic-saxon-swordsman",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting-sword"},
	HackDamage = true,
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing", "unit-elixir-of-strength"},
	Variations = {
		{
			"variation-id", "brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair",
			"icon", "icon-heroic-saxon-swordsman-black-hair",
			"layer-file", "hair", "human/units/black_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 2
		},
		{
			"variation-id", "blond-hair",
			"icon", "icon-heroic-saxon-swordsman-blond-hair",
			"layer-file", "hair", "human/units/blond_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "red-hair",
			"icon", "icon-heroic-saxon-swordsman-red-hair",
			"layer-file", "hair", "human/units/red_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"layer", "left-arm",
			"variation-id", "left-arm",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "left-arm",
			"variation-id", "shield-left-arm",
			"file", "human/units/left_arm_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield",
			"item-equipped", "unit-goblin-rimmed-shield",
			"item-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "weapon",
			"variation-id", "broad-bronze-sword",
			"file", "germanic/units/broad_bronze_sword.png",
			"upgrade-forbidden", "upgrade-teuton-spatha",
			"item-not-equipped", "unit-spatha",
			"item-not-equipped", "unit-frankish-spatha",
			"item-not-equipped", "unit-goblin-short-sword",
			"item-not-equipped", "unit-goblin-broad-sword",
			"item-not-equipped", "unit-goblin-long-sword"
		},
		{
			"layer", "weapon",
			"variation-id", "long-iron-sword",
			"file", "teuton/units/long_iron_sword.png",
			"upgrade-required", "upgrade-teuton-spatha",
			"item-equipped", "unit-spatha",
			"item-equipped", "unit-frankish-spatha",
			"item-equipped", "unit-goblin-short-sword",
			"item-equipped", "unit-goblin-broad-sword",
			"item-equipped", "unit-goblin-long-sword"
		},
		{
			"layer", "shield",
			"variation-id", "no-shield",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "bronze-shield",
			"file", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "iron-shield",
			"file", "teuton/units/saxon_shield.png",
			"upgrade-required", "upgrade-teuton-iron-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield",
			"item-equipped", "unit-goblin-rimmed-shield",
			"item-equipped", "unit-goblin-embossed-shield"
		}
	},
	Sounds = {
--		"selected", "basic-teuton-voices-selected-group",
--		"acknowledge", "basic-teuton-voices-acknowledge",
--		"ready", "basic-teuton-voices-ready",
--		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
})

DefineUnitType("unit-teuton-spearman", {
	Name = "Spearman",
	Parent = "unit-template-spearman",
	Civilization = "teuton",
	Description = "With spears in hand, these warriors stoically defend their homelands.",
	Image = {"file", "human/units/body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "suebi/units/suebi_red_hair.png"},
		{"layer", "left-arm", "file", "human/units/left_arm.png"},
		{"layer", "right-arm", "file", "human/units/right_arm_spear.png"},
		{"layer", "clothing", "file", "teuton/units/cherusci_shirt.png"},
		{"layer", "clothing-left-arm", "file", "teuton/units/cherusci_shirt_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "teuton/units/cherusci_shirt_right_arm_spear.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "boots", "file", "human/units/shoes.png"},
		{"layer", "weapon", "file", "human/units/spear.png"},
	},
	Animations = "animations-melee-unit-new", Icon = "icon-teuton-spearman",
	DefaultEquipment = {
		{"weapon", "unit-short-spear"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	Mana = {Enable = true, Max = 75, Value = 75, Increase = 1},
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	ButtonKey = "e",
	ButtonHint = "Train Sp~!earman",
	Variations = {
		{
			"variation-id", "red-hair"
		},
		{
			"layer", "left-arm",
			"variation-id", "left-arm",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "left-arm",
			"variation-id", "shield-left-arm",
			"file", "human/units/left_arm_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield",
			"item-equipped", "unit-goblin-rimmed-shield",
			"item-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "no-shield",
			"upgrade-forbidden", "upgrade-germanic-bronze-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-bronze-shield",
			"item-not-equipped", "unit-heater-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "bronze-shield",
			"file", "germanic/units/bronze_shield.png",
			"upgrade-required", "upgrade-germanic-bronze-shield",
			"item-equipped", "unit-bronze-shield",
			"item-equipped", "unit-heater-shield",
			"upgrade-forbidden", "upgrade-teuton-iron-shield",
			"item-not-equipped", "unit-iron-shield",
			"item-not-equipped", "unit-kite-shield",
			"item-not-equipped", "unit-thrymgjol-shield",
			"item-not-equipped", "unit-goblin-rimmed-shield",
			"item-not-equipped", "unit-goblin-embossed-shield"
		},
		{
			"layer", "shield",
			"variation-id", "iron-shield",
			"file", "teuton/units/cherusci_shield_player_color.png",
			"upgrade-required", "upgrade-teuton-iron-shield",
			"item-equipped", "unit-iron-shield",
			"item-equipped", "unit-kite-shield",
			"item-equipped", "unit-thrymgjol-shield",
			"item-equipped", "unit-goblin-rimmed-shield",
			"item-equipped", "unit-goblin-embossed-shield"
		}
	},
	Sounds = {
--		"selected", "basic-teuton-voices-selected-group",
--		"acknowledge", "basic-teuton-voices-acknowledge",
--		"ready", "basic-teuton-voices-ready",
--		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead"
	}
} )

DefineUnitType("unit-teuton-archer", {
--	Name = "Scuzzo",
	Name = "Archer",
	Parent = "unit-template-archer",
	Civilization = "teuton",
	Description = "Teuton archers are a perilous lot. They excel at ambushing enemies in the forests of their homelands.",
--	Background = "\"Scuzzo\" is an Old High German word for \"archer\".",
--	Background = "\"Schutze\" is a German word for \"archer\".",
	Image = {"file", "human/units/body_archer.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow_archer.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/blond_hair_archer.png"},
		{"layer", "left-arm", "file", "human/units/left_arm_archer.png"},
		{"layer", "right-arm", "file", "human/units/right_arm_archer.png"},
		{"layer", "clothing", "file", "germanic/units/coat_archer.png"},
		{"layer", "clothing-left-arm", "file", "germanic/units/coat_left_arm_archer.png"},
		{"layer", "clothing-right-arm", "file", "germanic/units/coat_right_arm_archer.png"},
		{"layer", "pants", "file", "human/units/pants_archer.png"},
		{"layer", "boots", "file", "human/units/shoes_archer.png"},
		{"layer", "weapon", "file", "human/units/bow_and_bronze_knife.png"},
		{"layer", "helmet", "file", "germanic/units/wool_hat_archer.png"},
		{"layer", "backpack", "file", "human/units/quiver.png"}
	},
	Animations = "animations-goblin-archer", Icon = "icon-teuton-archer",
	DefaultEquipment = {
		{"boots", "unit-boots"},
		{"arrows", "unit-arrows"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	BonusAgainstAir = 50,
	Mana = {Enable = true, Max = 75, Value = 75, Increase = 1},
	WeaponClasses = {"bow"},
	PierceDamage = true,
	CanCastSpell = {"spell-precise-shot"},
	AutoCastActive = {"spell-precise-shot"},
	ButtonKey = "a",
	ButtonHint = "Train ~!Archer",
	RequirementsString = "Carpenter's Shop/Lumber Mill",
	AiDrops = {"unit-composite-bow", "unit-longbow", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "blond-hair"
		}
	},
	Sounds = {
--		"selected", "basic-teuton-voices-selected-group",
--		"acknowledge", "basic-teuton-voices-acknowledge",
--		"ready", "basic-teuton-voices-ready",
--		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "dagger-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-gunpowder-infantry", {
	Name = "Gunpowder Infantry",
	Parent = "unit-template-gunpowder-infantry",
	Civilization = "teuton",
	Description = "With the invention of gunpowder Teuton craftsmen were able to construct formidable weapons of war, bringing fire and desolation.",
	Image = {"file", "teuton/units/austrian_musketeer.png", "size", {72, 72}},
	Animations = "animations-gunpowder-infantry", Icon = "icon-austrian-musketeer",
	DefaultEquipment = {
		{"weapon", "unit-hand-cannon"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	AiDrops = {"unit-hand-cannon", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "1"
		},
		{
			"variation-id", "2",
			"file", "teuton/units/austrian_musketeer_extra_1.png"
		}
	},
	Sounds = {
--		"selected", "basic-teuton-voices-selected-group",
--		"acknowledge", "basic-teuton-voices-acknowledge",
--		"ready", "basic-teuton-voices-ready",
--		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead"
	}
} )

DefineUnitType("unit-teuton-ritter", {
--	Name = "Ritter",
	Name = "Knight",
	Parent = "unit-template-cavalry",
	Civilization = "teuton",
	Description = "The Teutons excel in mounted combat. Their well-armored and trained heavy cavalry strikes fear in the hearts of their enemies whenever they are seen upon the battlefield.",
--	Background = "\"Ritter\" is the German word for \"knight\".",
	Image = {"file", "teuton/units/ritter.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "shield", "file", "teuton/units/ritter_shield.png"}
	},
	Animations = "animations-melee-unit",
	Icon = "icon-teuton-ritter",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Armor = 3, BasicDamage = 11, -- +1 armor, +1 damage
	Points = 85, -- +10 points
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword"},
	HackDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	ButtonKey = "k",
	ButtonHint = "Train ~!Knight",
	RequirementsString = "Smithy and Stables",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Corpse = "unit-human-dead-body",
	Sounds = {
--		"selected", "basic-teuton-voices-selected-group",
--		"acknowledge", "basic-teuton-voices-acknowledge",
--		"ready", "basic-teuton-voices-ready",
--		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-knight-lord", {
--	Name = "Landesherr",
	Name = "Knight Lord",
	Parent = "unit-template-heroic-cavalry",
	Civilization = "teuton",
	Description = "Heavily-armored and possessing years of martial and horse-riding training, Teuton lords sweep the battlefield cutting down their foes.",
--	Background = "\"Landesherr\" is a German word for \"landed lord\".",
	Image = {"file", "teuton/units/ritter.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "shield", "file", "teuton/units/ritter_shield.png"}
	},
	Animations = "animations-melee-unit",
	Icon = "icon-conrad-the-red",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	Armor = 3, BasicDamage = 13, -- +1 armor, +1 damage
	Points = 110, -- +10 points
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword"},
	HackDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing", "unit-elixir-of-strength"},
	Corpse = "unit-human-dead-body",
	Sounds = {
--		"selected", "basic-teuton-voices-selected-group",
--		"acknowledge", "basic-teuton-voices-acknowledge",
--		"ready", "basic-teuton-voices-ready",
--		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-priest", {
	Name = "Cleric",
	Parent = "unit-template-priest",
	Civilization = "teuton",
	Description = "Teuton clerics attend to the spiritual needs of their congregation. They store religious and secular knowledge, including prayers and medicinal techniques.",
	Image = {"file", "teuton/units/cleric.png", "size", {72, 72}},
	Animations = "animations-melee-unit-new",
	Icon = "icon-frankish-cleric",
	DefaultEquipment = {
--		{"weapon", "unit-mace"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
--	WeaponClasses = {"mace"},
	BluntDamage = true,
	StartingAbilities = {"upgrade-barkskin", "upgrade-blessing", "upgrade-far-sight", "upgrade-healing", "upgrade-inspire", "upgrade-precision", "upgrade-regeneration", "upgrade-shocking-grasp", "upgrade-slow-ability", "upgrade-wither"},
	CanCastSpell = {"spell-barkskin", "spell-blessing", "spell-far-sight", "spell-healing", "spell-inspire", "spell-precision", "spell-regeneration", "spell-shocking-grasp", "spell-slow", "spell-wither"},
	AutoCastActive = {"spell-barkskin", "spell-blessing", "spell-healing", "spell-inspire", "spell-precision", "spell-regeneration", "spell-shocking-grasp", "spell-slow", "spell-wither"},
	AiDrops = {"unit-boots", "unit-cheese", "unit-potion-of-healing"},
	RequirementsString = "Any Deity or Religion",
	Variations = {
		{
			"variation-id", "cleric",
			"upgrade-required", "upgrade-deity-christian-god",
			"upgrade-forbidden", "upgrade-deity-odin",
			"upgrade-forbidden", "upgrade-deity-thor",
			"upgrade-forbidden", "upgrade-deity-loki",
			"upgrade-forbidden", "upgrade-deity-frey"
		},
		{
			"variation-id", "gudjan",
			"file", "germanic/units/priest.png",
			"icon", "icon-germanic-priest",
			"type-name", "Gudjan",
			"upgrade-forbidden", "upgrade-deity-christian-god"
		}
	},
	Sounds = {
--		"selected", "basic-teuton-voices-selected-group",
--		"acknowledge", "basic-teuton-voices-acknowledge",
--		"ready", "basic-teuton-voices-ready",
--		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "fist-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-teuton-catapult", {
	Name = "Catapult",
	Parent = "unit-template-catapult",
	Civilization = "teuton",
	Description = "These engines of war can be of great use in battering enemy fortifications.",
	Image = {"file", "teuton/units/catapult.png", "size", {72, 72}},
	Animations = "animations-teuton-catapult", Icon = "icon-teuton-catapult",
	Missile = "missile-catapult-sandstone-rock",
	FireMissile = "missile-flaming-catapult-rock",
	BluntDamage = true,
	ButtonKey = "c",
	ButtonHint = "Build ~!Catapult",
	RequirementsString = "Carpenter's Shop/Lumber Mill, Smithy and Engineering",
	Sounds = {
--		"acknowledge", "ballista-acknowledge",
--		"ready", "dwarven-ballista-ready",
--		"help", "basic-teuton-voices-help",
		"dead", "explosion"
	}
} )

DefineUnitType("unit-teuton-kogge", {
	Name = "Cog",
	Parent = "unit-template-transport-ship",
	Civilization = "teuton",
	Description = "A mainstay of the Hanseatic vessels of the North Sea, the Kogge, or Cog, is a sturdy ship capable of carrying a large amount of cargo. It is well-suited for commerce, the transport of troops and naval warfare alike.",
	Image = {"file", "teuton/units/kogge.png", "size", {72, 72}},
	LightImage = {"file", "teuton/units/kogge_water.png"},
	Icon = "icon-teuton-kogge",
	ButtonKey = "c",
	ButtonHint = "Build ~!Cog",
	RequirementsString = "Carpenter's Shop/Lumber Mill",
	Sounds = {
--		"help", "basic-teuton-voices-help"
	}
})

DefineUnitType("unit-teuton-town-hall", {
	Name = "Town Hall",
	Parent = "unit-template-town-hall",
	Civilization = "teuton",
	Description = "The rathaus, or town hall, is the political center of Teuton settlements.",
--	Background = "The appearance of the Rathaus is based on the Tallinn Town Hall, which was originally built by Hanseatic merchants.",
	Background = "The appearance of the Town Hall is based on the Tallinn Town Hall, which was originally built by Hanseatic merchants.",
	Image = {"file", "teuton/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "teuton/buildings/town_hall_shadow.png", "size", {128, 128}},
	Icon = "icon-teuton-town-hall",
	AiDrops = {"unit-boots"},
	DropSpells = {"spell-anglo-saxon-allegiance", "spell-frank-allegiance", "spell-goth-allegiance", "spell-suebi-allegiance", "spell-teuton-allegiance"},
	Variations = {
		{
			"variation-id", "town-hall",
			"file", "germanic/buildings/town_hall.png",
			"shadow-file", "germanic/buildings/town_hall_shadow.png",
			"icon", "icon-germanic-town-hall",
			"animations", "animations-germanic-town-hall",
			"construction", "construction-germanic-town-hall",
			"type-name", "Chieftain's Hall",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "town-hall-snow-winter",
			"file", "germanic/buildings/town_hall_snow.png",
			"shadow-file", "germanic/buildings/town_hall_shadow.png",
			"icon", "icon-germanic-town-hall",
			"animations", "animations-germanic-town-hall",
			"construction", "construction-germanic-town-hall",
			"type-name", "Chieftain's Hall",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "town-hall-snow",
			"file", "germanic/buildings/town_hall_snow.png",
			"shadow-file", "germanic/buildings/town_hall_shadow.png",
			"icon", "icon-germanic-town-hall",
			"animations", "animations-germanic-town-hall",
			"construction", "construction-germanic-town-hall",
			"type-name", "Chieftain's Hall",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "snow"
		},
		{
			"variation-id", "town-hall",
			"upgrade-required", "upgrade-masonry"
		}
	},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-stronghold", {
--	Name = "Burg",
	Name = "Stronghold",
	Parent = "unit-template-stronghold",
	Civilization = "teuton",
	Description = "These tall and sturdy structures are built on strategic positions, allowing for easier control and protection of their environs.",
	Image = {"file", "teuton/buildings/stronghold.png", "size", {128, 128}},
	Shadow = {"file", "teuton/buildings/stronghold_shadow.png", "size", {128, 128}},
	Icon = "icon-teuton-stronghold",
	RequirementsString = "Barracks and Masonry",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-frankish-spatha", "unit-short-spear", "unit-long-spear", "unit-pike", "unit-composite-bow", "unit-longbow", "unit-hand-cannon", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows", "unit-pilum"},
	DropSpells = {"spell-anglo-saxon-allegiance", "spell-frank-allegiance", "spell-goth-allegiance", "spell-suebi-allegiance", "spell-teuton-allegiance"},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-farm", {
	Name = "Farm",
	Parent = "unit-template-farm",
	Civilization = "teuton",
	Description = "Farms are essential for supporting a settlement's population.",
	Image = {"file", "teuton/buildings/farm.png", "size", {64, 64}},
	Shadow = {"file", "teuton/buildings/farm_shadow.png", "size", {64, 64}},
	Icon = "icon-teuton-farm",
	Variations = {
		{
			"variation-id", "farm",
			"file", "germanic/buildings/farm.png",
			"shadow-file", "germanic/buildings/farm_shadow.png",
			"icon", "icon-germanic-farm",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "farm-snow-winter",
			"file", "germanic/buildings/farm_snow.png",
			"shadow-file", "germanic/buildings/farm_shadow.png",
			"icon", "icon-germanic-farm",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "farm-snow",
			"file", "germanic/buildings/farm_snow.png",
			"shadow-file", "germanic/buildings/farm_shadow.png",
			"icon", "icon-germanic-farm",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "snow"
		},
		{
			"variation-id", "farm",
			"upgrade-required", "upgrade-masonry"
		}
	},
	Sounds = {
		"selected", "corral-selected",
		"ready", "corral-ready",
--		"help", "basic-teuton-voices-help-town",
		"dead", "building-destroyed"
	}
} )

DefineUnitType("unit-teuton-barracks", {
	Parent = "unit-template-barracks",
	Civilization = "teuton",
	Description = "Though they have always been fierce, as ages passed Teuton armies became more and more disciplined. In these structures their soldiers train for coming battles with their foes.",
	Image = {"file", "teuton/buildings/barracks.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/barracks_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-barracks",
	Trains = {"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-frank-swordsman", "unit-teuton-spearman", "unit-frank-spearman", "unit-teuton-archer", "unit-teuton-ritter", "unit-frank-horseman", "unit-teuton-catapult"},
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-frankish-spatha", "unit-short-spear", "unit-long-spear", "unit-pike", "unit-composite-bow", "unit-longbow", "unit-hand-cannon", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows"},
	Variations = {
		{
			"variation-id", "barracks",
			"type-name", "War Lodge",
			"file", "germanic/buildings/barracks.png",
			"shadow-file", "germanic/buildings/barracks_shadow.png",
			"icon", "icon-germanic-barracks",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "barracks-snow-winter",
			"type-name", "War Lodge",
			"file", "germanic/buildings/barracks_snow.png",
			"shadow-file", "germanic/buildings/barracks_shadow.png",
			"icon", "icon-germanic-barracks",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "barracks-snow",
			"type-name", "War Lodge",
			"file", "germanic/buildings/barracks_snow.png",
			"shadow-file", "germanic/buildings/barracks_shadow.png",
			"icon", "icon-germanic-barracks",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "snow"
		},
		{
			"variation-id", "barracks",
			"upgrade-required", "upgrade-masonry"
		}
	},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-lumber-mill", {
	Name = "Lumber Mill",
	Parent = "unit-template-lumber-mill",
	Civilization = "teuton",
	Description = "A lumber mill provides a settlement with more advanced methods for processing timber, and it is also in this structure where woodworkers seek to improve arrows and construction techniques.",
	Image = {"file", "english/buildings/lumber_mill.png", "size", {96, 96}},
	Shadow = {"file", "english/buildings/lumber_mill_shadow.png", "size", {96, 96}},
	Icon = "icon-english-lumber-mill",
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-composite-bow", "unit-longbow", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows", "unit-pilum"},
	Variations = {
		{
			"variation-id", "carpenters-shop",
			"file", "germanic/buildings/carpenters_shop.png",
			"shadow-file", "germanic/buildings/carpenters_shop_shadow.png",
			"icon", "icon-germanic-carpenters-shop",
			"type-name", "Carpenter's Shop",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "carpenters-shop-snow-winter",
			"file", "germanic/buildings/carpenters_shop_snow.png",
			"shadow-file", "germanic/buildings/carpenters_shop_shadow.png",
			"icon", "icon-germanic-carpenters-shop",
			"type-name", "Carpenter's Shop",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "carpenters-shop-snow",
			"file", "germanic/buildings/carpenters_shop_snow.png",
			"shadow-file", "germanic/buildings/carpenters_shop_shadow.png",
			"icon", "icon-germanic-carpenters-shop",
			"type-name", "Carpenter's Shop",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "snow"
		},
		{
			"variation-id", "lumber-mill",
			"upgrade-required", "upgrade-masonry"
		}
	},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-smithy", {
	Parent = "unit-template-smithy",
	Civilization = "teuton",
	Description = "It is in these smithies that Teutonic craftsmen prepare and seek to continuously improve the arms warriors will wield into battle.",
	Image = {"file", "teuton/buildings/smithy.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-smithy",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-frankish-spatha", "unit-hand-cannon", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield"},
	Variations = {
		{
			"variation-id", "smithy",
			"file", "germanic/buildings/smithy.png",
			"shadow-file", "germanic/buildings/smithy_shadow.png",
			"icon", "icon-germanic-smithy",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "smithy-snow-winter",
			"file", "germanic/buildings/smithy_snow.png",
			"shadow-file", "germanic/buildings/smithy_shadow.png",
			"icon", "icon-germanic-smithy",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "smithy-snow",
			"file", "germanic/buildings/smithy_snow.png",
			"shadow-file", "germanic/buildings/smithy_shadow.png",
			"icon", "icon-germanic-smithy",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "snow"
		},
		{
			"variation-id", "smithy",
			"upgrade-required", "upgrade-masonry"
		}
	},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-masons-shop", {
	Parent = "unit-template-masons-shop",
	Civilization = "teuton",
	Description = "Stonemasons work the stone gathered from quarries.",
	Image = {"file", "teuton/buildings/masons_shop.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/masons_shop_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-masons-shop",
	Animations = "animations-active-building",
	Construction = "construction-land-active",
	Variations = {
		{
			"variation-id", "masons-shop",
			"file", "germanic/buildings/masons_shop.png",
			"shadow-file", "germanic/buildings/masons_shop_shadow.png",
			"icon", "icon-germanic-masons-shop",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "masons-shop-snow-winter",
			"file", "germanic/buildings/masons_shop_snow.png",
			"shadow-file", "germanic/buildings/masons_shop_shadow.png",
			"icon", "icon-germanic-masons-shop",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "masons-shop-snow",
			"file", "germanic/buildings/masons_shop_snow.png",
			"shadow-file", "germanic/buildings/masons_shop_shadow.png",
			"icon", "icon-germanic-masons-shop",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "snow"
		},
		{
			"variation-id", "masons-shop",
			"upgrade-required", "upgrade-masonry"
		}
	},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-stables", {
	Parent = "unit-template-stables",
	Civilization = "teuton",
	Description = "The fierce Teutons are renowned for their heavy cavalry. Any military center of import will have stables to provide the well-bred horses such forces require.",
	Image = {"file", "teuton/buildings/stables.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/stables_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-stables",
	Drops = {"unit-horse"},
	RequirementsString = "Carpenter's Shop/Lumber Mill",
	Variations = {
		{
			"variation-id", "stables",
			"file", "germanic/buildings/stables.png",
			"shadow-file", "germanic/buildings/stables_shadow.png",
			"icon", "icon-germanic-stables",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "stables-snow-winter",
			"file", "germanic/buildings/stables_snow.png",
			"shadow-file", "germanic/buildings/stables_shadow.png",
			"icon", "icon-germanic-stables",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "stables-snow",
			"file", "germanic/buildings/stables_snow.png",
			"shadow-file", "germanic/buildings/stables_shadow.png",
			"icon", "icon-germanic-stables",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "snow"
		},
		{
			"variation-id", "stables",
			"upgrade-required", "upgrade-masonry"
		}
	},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-temple", {
	Name = "Church",
	Parent = "unit-template-temple",
	Civilization = "teuton",
	Description = "In early times, Teutons professed faith in polytheistic deities in their houses of worship, the most important one being Woden. Eventually, Christian missionaries managed to expand their faith to the entirety of the Teutonic lands, overtaking the earlier paganism.",
	Image = {"file", "teuton/buildings/church.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/church_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-church",
	RequirementsString = "Carpenter's Shop/Lumber Mill",
	Variations = {
		{
			"variation-id", "church",
			"upgrade-required", "upgrade-deity-christian-god",
			"upgrade-forbidden", "upgrade-deity-odin",
			"upgrade-forbidden", "upgrade-deity-thor",
			"upgrade-forbidden", "upgrade-deity-loki",
			"upgrade-forbidden", "upgrade-deity-frey"
		},
		{
			"variation-id", "germanic-temple",
			"file", "germanic/buildings/temple.png",
			"shadow-file", "germanic/buildings/temple_shadow.png",
			"icon", "icon-germanic-temple",
			"type-name", "Temple",
			"upgrade-forbidden", "upgrade-deity-christian-god",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "germanic-temple-snow-winter",
			"file", "germanic/buildings/temple_snow.png",
			"shadow-file", "germanic/buildings/temple_shadow.png",
			"icon", "icon-germanic-temple",
			"type-name", "Temple",
			"upgrade-forbidden", "upgrade-deity-christian-god",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "germanic-temple-snow",
			"file", "germanic/buildings/temple_snow.png",
			"shadow-file", "germanic/buildings/temple_shadow.png",
			"icon", "icon-germanic-temple",
			"type-name", "Temple",
			"upgrade-forbidden", "upgrade-deity-christian-god",
			"terrain", "snow"
		},
	},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-market", {
	Parent = "unit-template-market",
	Civilization = "teuton",
	Description = "Medieval fairs were widespread throughout Europe, bringing in significant revenues to the cities they were located in.",
	Image = {"file", "teuton/buildings/market.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/market_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-teuton-market",
	RequirementsString = "Carpenter's Shop/Lumber Mill",
	SoldUnits = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-frankish-spatha", "unit-composite-bow", "unit-longbow", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-arrows", "unit-barbed-arrows", "unit-bodkin-arrows", "unit-pilum"},
	Variations = {
		{
			"variation-id", "market",
			"file", "germanic/buildings/market.png",
			"shadow-file", "germanic/buildings/market_shadow.png",
			"icon", "icon-germanic-market",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "market-snow-winter",
			"file", "germanic/buildings/market_snow.png",
			"shadow-file", "germanic/buildings/market_shadow.png",
			"icon", "icon-germanic-market",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "market-snow",
			"file", "germanic/buildings/market_snow.png",
			"shadow-file", "germanic/buildings/market_shadow.png",
			"icon", "icon-germanic-market",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "snow"
		},
		{
			"variation-id", "market",
			"upgrade-required", "upgrade-masonry"
		}
	},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-university", {
	Name = "University",
	Parent = "unit-template-university",
	Civilization = "teuton",
	Description = "As the society of the Holy Roman Empire increased in sophistication, its first universities were founded. Initially providing higher education in theology and law, universities would eventually encompass many other areas of knowledge, such as natural science.",
	Image = {"file", "teuton/buildings/university.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/university_shadow.png", "size", {96, 96}},
	Icon = "icon-teuton-university",
	RequirementsString = "Writing",
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-watch-tower", {
	Name = "Watch Tower",
	Parent = "unit-template-watch-tower",
	Civilization = "teuton",
	Description = "These timber-made towers are built in frontier regions, keeping watch of possible attackers.",
	Image = {"file", "teuton/buildings/watch_tower.png", "size", {64, 64}},
	Shadow = {"file", "teuton/buildings/watch_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-teuton-watch-tower",
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-guard-tower", {
	Name = "Guard Tower",
	Parent = "unit-template-guard-tower",
	Civilization = "teuton",
	Description = "Solid stone towers are an essential addition to any fortified position of strategic importance, allowing archers to shoot from a vantage position.",
	Image = {"file", "teuton/buildings/guard_tower.png", "size", {64, 64}},
	Shadow = {"file", "teuton/buildings/guard_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-teuton-guard-tower",
	RequirementsString = "Carpenter's Shop/Lumber Mill and Masonry",
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-catapult-tower", {
	Name = "Catapult Tower",
	Parent = "unit-template-heavy-tower",
	Civilization = "teuton",
	Description = "With the discovery of new engineering methods, the construction of a catapult tower became possible. Enhancing the defense of settlements, it throws heavy projectiles that smash nearby enemy groups.",
	Image = {"file", "teuton/buildings/catapult_tower.png", "size", {64, 64}},
	Shadow = {"file", "teuton/buildings/catapult_tower_shadow.png", "size", {64, 64}},
	Icon = "icon-teuton-catapult-tower",
	Missile = "missile-catapult-sandstone-rock",
	FireMissile = "missile-flaming-catapult-rock",
	BluntDamage = true,
	Sounds = {
--		"help", "basic-teuton-voices-help-town",
		"fire-missile", "catapult-attack"
	}
} )

DefineUnitType("unit-teuton-dock", {
	Name = "Dock",
	Parent = "unit-template-dock",
	Civilization = "teuton",
	Description = "Shipbuilding is an ancient craft in the Teuton shores. Already in antiquity they constructed sturdy ships, capable of assaulting the vulnerable coasts to the west. During medieval times, their shipbuilding flourished even further, as the Hanseatic League dominated commerce in the Baltic and North Seas.",
	Image = {"file", "teuton/buildings/dock.png", "size", {96, 96}},
	Shadow = {"file", "teuton/buildings/dock_shadow.png", "size", {96, 96}},
	Animations = "animations-building", Icon = "icon-teuton-dock",
	Trains = {"unit-teuton-kogge"},
	RequirementsString = "Carpenter's Shop/Lumber Mill",
	Variations = {
		{
			"variation-id", "dock",
			"file", "germanic/buildings/dock.png",
			"shadow-file", "germanic/buildings/dock_shadow.png",
			"icon", "icon-germanic-dock",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain-forbidden", "snow",
			"forbidden-season", "winter"
		},
		{
			"variation-id", "dock-snow-winter",
			"file", "germanic/buildings/dock_snow.png",
			"shadow-file", "germanic/buildings/dock_shadow.png",
			"icon", "icon-germanic-dock",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "dirt",
			"terrain", "dry-mud",
			"terrain", "grass",
			"terrain", "snow",
			"season", "winter"
		},
		{
			"variation-id", "dock-snow",
			"file", "germanic/buildings/dock_snow.png",
			"shadow-file", "germanic/buildings/dock_shadow.png",
			"icon", "icon-germanic-dock",
			"upgrade-forbidden", "upgrade-masonry",
			"terrain", "snow"
		},
		{
			"variation-id", "dock",
			"upgrade-required", "upgrade-masonry"
		}
	},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )

DefineUnitType("unit-teuton-wall", {
	Parent = "unit-template-wall",
	Civilization = "teuton",
	TerrainType = "teuton-wall",
	Image = {"file", "teuton/buildings/wall.png", "size", {32, 32}},
	Icon = "icon-teuton-wall",
	Description = "Teuton stonemasons build sturdy walls, fortifying their cities and strongholds from enemy attack."
} )
