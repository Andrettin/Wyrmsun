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
--      (c) Copyright 2016-2022 by Andrettin
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
	Animations = "animations-spellcaster-new",
	Icon = "icon-kvasir",
	DefaultEquipment = {
--		{"weapon", "unit-mace"},
		{"boots", "unit-boots"}
	},
	Corpse = "unit-human-dead-body",
--	WeaponClasses = {"mace"},
	BluntDamage = true,
	ButtonKey = "p",
	StartingAbilities = {"upgrade_healing"},
	CanCastSpell = {"spell-healing", "spell-precision"},
	AutoCastActive = {"spell-healing", "spell-precision"},
	AiDrops = {"unit-boots", "unit-cheese", "unit_meat", "unit-potion-of-healing", "unit_potion_of_mana"},
	Sounds = {
		"hit", "fist-attack",
		"miss", "attack-miss"
	}
} )
