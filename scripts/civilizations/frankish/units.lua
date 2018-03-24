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
--      (c) Copyright 2016-2018 by Andrettin
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

DefineUnitType("unit-frank-swordsman", {
	Name = "Kregar", -- tentative suffix added to Old High German "Krêg" to make a corresponding word to modern German "Krieger"
	Parent = "unit-template-infantry",
	Civilization = "frankish",
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
	Animations = "animations-melee-unit-new",
	Icon = "icon-frank-swordsman-brown-hair",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	ButtonKey = "k",
	ButtonHint = "Train ~!Kregar",
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting-sword"},
	HackDamage = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-frankish-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair",
			"icon", "icon-frank-swordsman-blond-hair",
			"layer-file", "hair", "human/units/blond_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-frank-swordsman-gray-hair",
			"layer-file", "hair", "human/units/gray_hair_warrior.png",
			"weight", 1
		},
		{
			"variation-id", "red-hair",
			"icon", "icon-frank-swordsman-red-hair",
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
			"upgrade-forbidden", "upgrade-frank-spatha",
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
			"upgrade-required", "upgrade-frank-spatha",
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
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-frank-veteran-swordsman", {
	Name = "Adal",
	Parent = "unit-template-veteran-infantry",
	Civilization = "frankish",
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
	Animations = "animations-melee-unit-new",
	Icon = "icon-frank-veteran-swordsman-brown-hair",
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
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-frankish-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair",
			"icon", "icon-frank-veteran-swordsman-blond-hair",
			"layer-file", "hair", "human/units/blond_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-frank-veteran-swordsman-gray-hair",
			"layer-file", "hair", "human/units/gray_hair_warrior.png",
			"weight", 1
		},
		{
			"variation-id", "red-hair",
			"icon", "icon-frank-veteran-swordsman-red-hair",
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
			"upgrade-forbidden", "upgrade-frank-spatha",
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
			"upgrade-required", "upgrade-frank-spatha",
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
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
})

DefineUnitType("unit-frank-heroic-swordsman", {
	Name = "Truhtin",
	Parent = "unit-template-heroic-infantry",
	Civilization = "frankish",
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
	Animations = "animations-melee-unit-new",
	Icon = "icon-frank-heroic-swordsman-brown-hair",
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
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-frankish-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing", "unit-elixir-of-strength"},
	Variations = {
		{
			"variation-id", "brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "blond-hair",
			"icon", "icon-frank-heroic-swordsman-blond-hair",
			"layer-file", "hair", "human/units/blond_hair_warrior.png",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"icon", "icon-frank-heroic-swordsman-gray-hair",
			"layer-file", "hair", "human/units/gray_hair_warrior.png",
			"weight", 1
		},
		{
			"variation-id", "red-hair",
			"icon", "icon-frank-heroic-swordsman-red-hair",
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
			"upgrade-forbidden", "upgrade-frank-spatha",
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
			"upgrade-required", "upgrade-frank-spatha",
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
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
})

DefineUnitType("unit-frank-spearman", {
	Name = "Spearman",
	Parent = "unit-template-spearman",
	Civilization = "frankish",
	Image = {"file", "human/units/body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/brown_hair_warrior_no_beard.png"},
		{"layer", "left-arm", "file", "human/units/left_arm.png"},
		{"layer", "right-arm", "file", "human/units/right_arm_spear.png"},
		{"layer", "clothing", "file", "teuton/units/chainmail.png"},
		{"layer", "clothing-left-arm", "file", "teuton/units/chainmail_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "teuton/units/chainmail_right_arm.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "boots", "file", "human/units/shoes.png"},
		{"layer", "helmet", "file", "teuton/units/iron_helm.png"},
		{"layer", "weapon", "file", "human/units/spear.png"}
	},
	Animations = "animations-melee-unit-new",
	Icon = "icon-frank-scara-brown-hair",
	DefaultEquipment = {
		{"weapon", "unit-short-spear"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	ButtonKey = "e",
	ButtonHint = "Train Sp~!earman",
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	Mana = {Enable = true, Max = 75, Value = 75, Increase = 1},
	AiDrops = {"unit-short-spear", "unit-long-spear", "unit-pike", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Variations = {
		{
			"variation-id", "brown-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "black-hair",
			"layer-file", "hair", "human/units/black_hair_warrior_no_beard.png",
			"icon", "icon-frank-scara-black-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 2
		},
		{
			"variation-id", "blond-hair",
			"layer-file", "hair", "human/units/blond_hair_warrior_no_beard.png",
			"icon", "icon-frank-scara-blond-hair",
			"upgrade-forbidden", "upgrade-old",
			"weight", 4
		},
		{
			"variation-id", "gray-hair",
			"layer-file", "hair", "human/units/gray_hair_warrior_no_beard.png",
			"icon", "icon-frank-scara-gray-hair",
			"weight", 1
		},
		{
			"variation-id", "red-hair",
			"layer-file", "hair", "human/units/red_hair_warrior_no_beard.png",
			"icon", "icon-frank-scara-red-hair",
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
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead"
	}
} )

DefineUnitType("unit-frank-horseman", {
	Name = "Ritar", -- changed the verb "Ritan" to "Ritar" in a tentative way to make correspondent words to German "reiten" and "Ritter"
	Parent = "unit-template-cavalry",
	Civilization = "frankish",
	Icon = "icon-frank-horseman",
	Image = {"file", "teuton/units/ritter.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "shield", "file", "dlcs/frankish_faction_flair/graphics/units/frank_horseman_shield.png"}
	},
	Animations = "animations-melee-unit",
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
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-frankish-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	ButtonKey = "t",
	ButtonHint = "Train Ri~!tar",
	Corpse = "unit-human-dead-body",
	RequirementsString = "Smithy and Stables",
	Sounds = {
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
})

DefineUnitType("unit-frank-knight-lord", {
	Name = "Heriro",
	Parent = "unit-template-heroic-cavalry",
	Civilization = "frankish",
	Icon = "icon-frank-heroic-horseman",
	Image = {"file", "teuton/units/ritter.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "shield", "file", "dlcs/frankish_faction_flair/graphics/units/frank_horseman_shield.png"}
	},
	Animations = "animations-melee-unit",
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
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-frankish-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing", "unit-elixir-of-strength"},
	Corpse = "unit-human-dead-body",
	Sounds = {
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
})
