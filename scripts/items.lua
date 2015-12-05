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
--      (c) Copyright 2015 by Andrettin
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

DefineUnitType("unit-template-item", { Name = _("Item"),
	Image = {"file", "neutral/items/gold_sack.png", "size", {16, 14}},
	Animations = "animations-item", Icon = "icon-gold-sack",
	NeutralMinimapColor = {255, 255, 0},
	Speed = 0,
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	SightRange = 1,
	BasicDamage = 0, Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	Item = true,
	Sounds = {
		"selected", "click"
	} 
} )

DefineUnitType("unit-potion-of-healing", { Name = _("Potion of Healing"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/potion_red.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-red-potion",
	ItemClass = "potion",
	Costs = {"gold", 150},
	HitPointHealing = 45,
	Sounds = {
		"used", "potion"
	} 
} )

--[[
DefineItemType("Short Sword", {
	Class = "Sword",
	Icon = "icon-germanic-short-sword"
})

DefineItemType("Broad Sword", {
	Class = "Sword",
	Icon = "icon-germanic-broad-sword"
})

DefineItemType("Spatha", {
	Class = "Sword",
	Icon = "icon-teuton-spatha"
})

DefineItemType("Battle Axe", {
	Class = "Axe",
	Icon = "icon-dwarven-battle-axe"
})

DefineItemType("Broad Axe", {
	Class = "Axe",
	Icon = "icon-dwarven-broad-axe"
})

DefineItemType("Great Axe", {
	Class = "Axe",
	Icon = "icon-dwarven-great-axe"
})

DefineItemType("Wooden Shield", {
	Class = "Shield",
	Icon = "icon-germanic-wooden-oblong-shield"
})

DefineItemType("Bronze Shield", {
	Class = "Shield",
	Icon = "icon-germanic-bronze-shield"
})

DefineItemType("Iron Shield", {
	Class = "Shield",
	Icon = "icon-teuton-iron-shield"
})

DefineItemType("Wooden Shield", {
	Class = "Shield",
	Icon = "icon-germanic-wooden-oblong-shield"
})

DefineItemType("Bronze Shield", {
	Class = "Shield",
	Icon = "icon-germanic-bronze-shield"
})

DefineItemType("Round Shield", {
	Class = "Shield",
	Icon = "icon-dwarven-shield-1"
})

DefineItemType("Heater Shield", {
	Class = "Shield",
	Icon = "icon-dwarven-shield-2"
})

DefineItemType("Thrymgjol Shield", {
	Class = "Shield",
	Icon = "icon-dwarven-shield-3"
})
--]]