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
--      (c) Copyright 2017-2019 by Andrettin
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

DefineUnitType("unit-gothic-horse-rider", {
	Name = "Horse Rider",
	Parent = "unit-template-cavalry",
	Civilization = "goth",
	Description = "Awe-inspiring on the battlefield, Gothic horse riders are a near-irrestible force during a charge.",
	Icon = "icon-gothic-horse-rider-brown-hair",
	Image = {"file", "teuton/units/ritter.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "shield", "file", "teuton/units/ritter_shield.png"}
	},
	Animations = "animations-melee-unit",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	ChargeBonus = 7,
	Points = 85, -- +10 points
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword"},
	HackDamage = true,
	InvertedEastArms = true,
	InvertedSoutheastArms = true,
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-spatha", "unit-wooden-shield", "unit-bronze-shield", "unit-iron-shield", "unit-kite-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Corpse = "unit-human-dead-body",
	RequirementsString = "Smithy and Stables",
	Sounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
})

DefineUnitType("unit-gothic-horse-lord", {
	Name = "Horse Lord",
	Parent = "unit-template-heroic-cavalry",
	Civilization = "goth",
	Description = "Covered in their war-glory, Gothic horse lords lead savage charges against the armies of their foes.",
	Icon = "icon-gothic-horse-lord-brown-hair",
	Image = {"file", "teuton/units/ritter.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "shield", "file", "teuton/units/ritter_shield.png"}
	},
	Animations = "animations-melee-unit",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	ChargeBonus = 7,
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
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
})
