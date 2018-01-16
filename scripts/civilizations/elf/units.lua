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

DefineUnitType("unit-elven-swordsman", {
	Name = "Swordsman",
	Parent = "unit-template-infantry",
	Civilization = "elf",
--	Description = "Elves are not warlike by nature, but in times of need, their natural grace and agility serve them well, as does their skillful craftsmanship. An elf can grasp the basics of swordsmanship in a time uncannily short by the standards of other races, and put them to effective use on the battlefield.",
--	Quote = "\"This he learned, the lord of Lintanir,\nThat Volund alone in Ulfdalir lay;\nBy night went his men, their mail-coats were studded,\nTheir shields in the waning moonlight shone.\"\n- The Lay of Volund",
	Image = {"file", "elf/units/body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "elf/units/hair.png"},
		{"layer", "left-arm", "file", "human/units/left_arm.png"},
		{"layer", "right-arm", "file", "human/units/right_arm.png"},
		{"layer", "right-hand", "file", "human/units/right_hand.png"},
		{"layer", "clothing", "file", "teuton/units/chainmail.png"},
		{"layer", "clothing-left-arm", "file", "teuton/units/chainmail_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "teuton/units/chainmail_right_arm.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "boots", "file", "teuton/units/leather_shoes.png"},
		{"layer", "weapon", "file", "teuton/units/long_iron_sword.png"}
	},
	Animations = "animations-melee-unit-new", Icon = "icon-elven-swordsman",
	DefaultEquipment = {
		{"weapon", "unit-short-sword"},
		{"shield", "unit-wooden-shield"},
		{"boots", "unit-boots"}
	},
	HairColor = "blond",
	Costs = {"time", 50, "copper", 600},
	Corpse = "unit-human-dead-body",
	DaySightRangeBonus = 1,
	NightSightRangeBonus = -1,
	WeaponClasses = {"sword", "thrusting-sword"},
	HackDamage = true,
	Mana = {Enable = true, Max = 75, Value = 75, Increase = 1},
	CanCastSpell = {"spell-puncture"},
	AutoCastActive = {"spell-puncture"},
	ButtonKey = "s",
	ButtonHint = "Train ~!Swordsman",
	AiDrops = {"unit-short-sword", "unit-broad-sword", "unit-wooden-shield", "unit-bronze-shield", "unit-boots", "unit-cheese", "unit-carrots", "unit-potion-of-healing"},
	Sounds = {
--		"selected", "basic-germanic-voices-selected-group",
--		"acknowledge", "basic-germanic-voices-acknowledge",
--		"attack", "basic-germanic-voices-attack",
--		"ready", "basic-germanic-voices-ready",
--		"help", "basic-germanic-voices-help",
		"dead", "basic-human-voices-dead",
		"hit", "sword-attack",
		"miss", "attack-miss"
	}
} )

DefineUnitType("unit-elven-priest", {
	Name = "Priest",
	Parent = "unit-template-priest",
	Civilization = "elf",
--	Description = "Teuton clerics attend to the spiritual needs of their congregation. They store religious and secular knowledge, including prayers and medicinal techniques.",
	Image = {"file", "elf/units/body_warrior.png", "size", {72, 72}},
	Shadow = {"file", "human/units/shadow.png", "size", {72, 72}},
	LayerImages = {
		{"layer", "hair", "file", "elf/units/hair.png"},
		{"layer", "left-arm", "file", "human/units/left_arm.png"},
		{"layer", "right-arm", "file", "human/units/right_arm.png"},
		{"layer", "right-hand", "file", "human/units/right_hand.png"},
		{"layer", "clothing", "file", "teuton/units/robe.png"},
		{"layer", "clothing-left-arm", "file", "teuton/units/robe_left_arm.png"},
		{"layer", "clothing-right-arm", "file", "teuton/units/robe_right_arm.png"},
		{"layer", "weapon", "file", "teuton/units/scepter.png"},
		{"layer", "pants", "file", "human/units/pants.png"},
		{"layer", "boots", "file", "teuton/units/leather_shoes.png"}
	},
	HairColor = "gray",
	Animations = "animations-melee-unit-new",
	Icon = "icon-kvasir",
	DefaultEquipment = {
--		{"weapon", "unit-mace"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
--	WeaponClasses = {"mace"},
	BluntDamage = true,
	ButtonKey = "p",
	ButtonHint = "Train ~!Priest",
	StartingAbilities = {"upgrade-healing"},
	CanCastSpell = {"spell-healing", "spell-precision"},
	AutoCastActive = {"spell-healing", "spell-precision"},
	AiDrops = {"unit-boots", "unit-cheese", "unit-potion-of-healing"},
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
