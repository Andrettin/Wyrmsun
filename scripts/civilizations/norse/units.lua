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
--      (c) Copyright 2017-2018 by Andrettin
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

DefineUnitType("unit-norse-swordsman", {
	Name = "Swordsman",
	Parent = "unit-template-infantry",
	Civilization = "norse",
	Description = "Feared throughout northern coasts, Norse swordsmen are mighty warriors.",
	Image = {"file", "human/units/body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/hair_warrior.png"},
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
	Animations = "animations-melee-unit-new", Icon = "icon-norse-swordsman",
	HairColor = "brown",
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
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Variations = {
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

DefineUnitType("unit-norse-veteran-swordsman", {
	Name = "Veteran Swordsman",
	Parent = "unit-template-veteran-infantry",
	Civilization = "norse",
	Description = "These high-ranking swordsmen have honed their combat skills to a greater degree than many of their counterparts.",
	Image = {"file", "human/units/body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/hair_warrior.png"},
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
	Animations = "animations-melee-unit-new", Icon = "icon-norse-veteran-swordsman",
	HairColor = "brown",
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

DefineUnitType("unit-norse-heroic-swordsman", {
	Name = "Hersir",
	Parent = "unit-template-heroic-infantry",
	Civilization = "norse",
	Description = "The hersirs were the Norse chieftains, going forth into battle in their shining war-gear.",
	Image = {"file", "human/units/body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "human/units/hair_warrior.png"},
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
	Animations = "animations-melee-unit-new", Icon = "icon-norse-heroic-swordsman",
	HairColor = "brown",
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

DefineUnitType("unit-norse-town-hall", {
	Name = "Chieftain's Hall",
	Parent = "unit-template-town-hall",
	Civilization = "norse",
	Description = "Built by mighty chieftains, these halls serve as the center of Norse settlements.",
	Image = {"file", "norse/buildings/town_hall.png", "size", {128, 128}},
	Shadow = {"file", "norse/buildings/town_hall_shadow.png", "size", {128, 128}},
	Icon = "icon-norse-town-hall",
	AiDrops = {"unit-boots"},
	DropSpells = {"spell-norse-allegiance"},
	Sounds = {
--		"help", "basic-teuton-voices-help-town"
	}
} )
