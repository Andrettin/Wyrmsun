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
--      (c) Copyright 2015-2016 by Andrettin
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
	Animations = "animations-item",
	NeutralMinimapColor = {255, 255, 0},
	HitPoints = 1,
	DrawLevel = 30,
	TileSize = {1, 1}, BoxSize = {31, 31},
	Missile = "missile-none",
	Priority = 0,
	Type = "land",
	NumDirections = 1,
	Item = true,
	ButtonPopup = "popup-item",
	ButtonLevel = 0,
	Sounds = {
		"selected", "click"
	} 
} )

DefineUnitType("unit-short-sword", { Name = _("Short Sword"),
	Parent = "unit-template-item",
	Image = {"file", "germanic/items/broad_bronze_sword.png", "size", {32, 32}},
	Icon = "icon-germanic-short-sword",
	ItemClass = "sword",
	ButtonIcons = {
		{"stand-ground", "icon-germanic-stand-ground"}
	},
	BasicDamage = 0
} )

DefineUnitType("unit-broad-sword", { Name = _("Broad Sword"),
	Parent = "unit-template-item",
	Image = {"file", "germanic/items/broad_bronze_sword.png", "size", {32, 32}},
	Icon = "icon-germanic-broad-sword",
	ItemClass = "sword",
	ButtonIcons = {
		{"stand-ground", "icon-germanic-stand-ground"}
	},
	BasicDamage = 2
} )

DefineUnitType("unit-spatha", { Name = _("Spatha"),
	Parent = "unit-template-item",
	Image = {"file", "teuton/items/long_iron_sword.png", "size", {32, 32}},
	Icon = "icon-teuton-spatha",
	ItemClass = "sword",
	ButtonIcons = {
		{"stand-ground", "icon-germanic-stand-ground"}
	},
	BasicDamage = 4
} )

DefineUnitType("unit-frankish-spatha", { Name = _("Frankish Spatha"),
	Parent = "unit-spatha",
	Icon = "icon-frankish-spatha"
} )

DefineUnitType("unit-thrusting-sword", { Name = _("Thrusting Sword"),
	Parent = "unit-template-item",
	Image = {"file", "germanic/items/broad_bronze_sword.png", "size", {32, 32}},
	Icon = "icon-gnomish-thrusting-sword-1",
	ItemClass = "thrusting-sword",
	ButtonIcons = {
		{"stand-ground", "icon-germanic-stand-ground"}
	},
	BasicDamage = 0
} )

DefineUnitType("unit-battle-axe", { Name = _("Battle Axe"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-battle-axe",
	ItemClass = "axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 0
} )

DefineUnitType("unit-broad-axe", { Name = _("Broad Axe"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-broad-axe",
	ItemClass = "axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 2
} )

DefineUnitType("unit-great-axe", { Name = _("Great Axe"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-great-axe",
	ItemClass = "axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 4
} )

DefineUnitType("unit-hammer", { Name = _("Hammer"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/hammer.png", "size", {32, 32}},
	Icon = "icon-hammer",
	ItemClass = "mace",
	BasicDamage = 0
} )

DefineUnitType("unit-mining-pick", { Name = _("Mining Pick"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/mining_pick.png", "size", {32, 32}},
	Icon = "icon-mining-pick",
	ItemClass = "mace",
	BasicDamage = 0
} )

DefineUnitType("unit-short-spear", { Name = _("Short Spear"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/spear.png", "size", {32, 32}},
	Icon = "icon-spear",
	ItemClass = "spear",
	BasicDamage = 0
} )

DefineUnitType("unit-long-spear", { Name = _("Long Spear"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/spear.png", "size", {32, 32}},
	Icon = "icon-long-spear",
	ItemClass = "spear",
	BasicDamage = 2
} )

DefineUnitType("unit-pike", { Name = _("Pike"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/spear.png", "size", {32, 32}},
	Icon = "icon-pike",
	ItemClass = "spear",
	BasicDamage = 4
} )

DefineUnitType("unit-throwing-axe", { Name = _("Throwing Axe"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-throwing-axe",
	ItemClass = "throwing-axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 0
} )

DefineUnitType("unit-sharp-throwing-axe", { Name = _("Sharp Throwing Axe"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-sharp-throwing-axe",
	ItemClass = "throwing-axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 2
} )

DefineUnitType("unit-bearded-throwing-axe", { Name = _("Bearded Throwing Axe"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-bearded-throwing-axe",
	ItemClass = "throwing-axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 4
} )

DefineUnitType("unit-wooden-shield", { Name = _("Wooden Shield"),
	Parent = "unit-template-item",
	Image = {"file", "dwarf/items/round_shield.png", "size", {13, 13}},
	Icon = "icon-germanic-wooden-oblong-shield",
	ItemClass = "shield",
	Armor = 0
} )

DefineUnitType("unit-bronze-shield", { Name = _("Bronze Shield"),
	Parent = "unit-template-item",
	Image = {"file", "germanic/items/bronze_shield.png", "size", {32, 32}},
	Icon = "icon-germanic-bronze-shield",
	ItemClass = "shield",
	Armor = 2
} )

DefineUnitType("unit-iron-shield", { Name = _("Iron Shield"),
	Parent = "unit-template-item",
	Image = {"file", "teuton/items/saxon_shield.png", "size", {32, 32}},
	Icon = "icon-teuton-iron-shield",
	ItemClass = "shield",
	Armor = 4
} )

DefineUnitType("unit-kite-shield", { Name = _("Kite Shield"),
	Parent = "unit-template-item",
	Image = {"file", "teuton/items/saxon_shield.png", "size", {32, 32}},
	Icon = "icon-heater-shield",
	ItemClass = "shield",
	Armor = 4
} )

--[[
DefineUnitType("unit-suebi-shield", { Name = _("Suebi Shield"),
	Parent = "unit-template-item",
	Image = {"file", "teuton/items/suebi_shield.png", "size", {32, 32}},
	Icon = "icon-teuton-iron-shield", -- each base item type needs to have its own icon
	ItemClass = "shield",
	Armor = 4
} )
--]]

DefineUnitType("unit-round-shield", { Name = _("Round Shield"),
	Parent = "unit-template-item",
	Image = {"file", "dwarf/items/round_shield.png", "size", {13, 13}},
	Icon = "icon-dwarven-shield-1",
	ItemClass = "shield",
	Armor = 0
} )

DefineUnitType("unit-brising-round-shield", { Name = _("Brising Round Shield"),
	Parent = "unit-round-shield",
	Image = {"file", "dlcs/brising_faction_flair/graphics/items/brising_round_shield.png", "size", {14, 14}},
	Icon = "icon-brising-round-shield"
} )

DefineUnitType("unit-heater-shield", { Name = _("Heater Shield"),
	Parent = "unit-template-item",
	Image = {"file", "dwarf/items/round_shield.png", "size", {13, 13}},
	Icon = "icon-dwarven-shield-2",
	ItemClass = "shield",
	Armor = 2
} )

DefineUnitType("unit-thrymgjol-shield", { Name = _("Thrymgjol Shield"),
	Parent = "unit-template-item",
	Image = {"file", "dwarf/items/round_shield.png", "size", {13, 13}},
	Icon = "icon-dwarven-shield-3",
	ItemClass = "shield",
	Armor = 4
} )

DefineUnitType("unit-boots", { Name = _("Boots"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/boots.png", "size", {32, 32}},
	Icon = "icon-dwarven-boots",
	ItemClass = "boots",
	Speed = 0
} )

DefineUnitType("unit-wool-shoes", { Name = _("Wool Shoes"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/boots.png", "size", {32, 32}},
	Icon = "icon-gnomish-boots",
	ItemClass = "boots",
	Speed = 0
} )

DefineUnitType("unit-furry-wool-shoes", { Name = _("Furry Wool Shoes"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/boots.png", "size", {32, 32}},
	Icon = "icon-gnomish-boots-fur",
	ItemClass = "boots",
	Speed = 0
} )

DefineUnitType("unit-amulet", { Name = _("Amulet"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/amulet.png", "size", {32, 32}},
	Icon = "icon-amulet",
	ItemClass = "amulet"
} )

DefineUnitType("unit-ring", { Name = _("Ring"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/ring.png", "size", {32, 32}},
	Icon = "icon-ring",
	ItemClass = "ring"
} )

DefineUnitType("unit-arrows", { Name = _("Arrows"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/arrow.png", "size", {32, 32}},
	Icon = "icon-germanic-arrow",
	ItemClass = "arrows",
	NumDirections = 8,
	BasicDamage = 0
} )

DefineUnitType("unit-barbed-arrows", { Name = _("Barbed Arrows"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/arrow.png", "size", {32, 32}},
	Icon = "icon-germanic-barbed-arrow",
	ItemClass = "arrows",
	NumDirections = 8,
	BasicDamage = 2
} )

DefineUnitType("unit-bodkin-arrows", { Name = _("Bodkin Arrows"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/arrow.png", "size", {32, 32}},
	Icon = "icon-bodkin-arrow",
	ItemClass = "arrows",
	NumDirections = 8,
	BasicDamage = 4
} )

DefineUnitType("unit-potion-of-healing", { Name = _("Potion of Healing"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/potion_red.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-red-potion",
	ItemClass = "potion",
	Costs = {"gold", 150},
	HitPointHealing = 45,
	ButtonKey = "h",
	ButtonHint = _("Buy Potion of ~!Healing"),
	ButtonPos = 1,
	Sounds = {
		"used", "potion"
	} 
} )

DefineUnitType("unit-scroll", { Name = _("Scroll"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/scroll.png", "size", {32, 32}},
	Icon = "icon-scroll",
	ItemClass = "scroll",
	Sounds = {
		"used", "scroll"
	} 
} )

DefineUnitType("unit-cheese", { Name = _("Cheese"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/cheese.png", "size", {15, 12}},
	Icon = "icon-cheese",
	ItemClass = "food",
	Costs = {"gold", 25},
	Dairy = true,
	HitPointHealing = 5,
	ButtonKey = "c",
	ButtonHint = _("Buy ~!Cheese"),
	ButtonPos = 1,
	Sounds = {
		"used", "eat"
	} 
} )

DefineUnitType("unit-carrots", { Name = _("Carrots"),
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/carrots.png", "size", {18, 12}},
	Icon = "icon-carrots",
	ItemClass = "food",
	Costs = {"gold", 25},
	HitPointHealing = 5,
	Vegetable = true,
	ButtonKey = "r",
	ButtonHint = _("Buy Ca~!rrots"),
	ButtonPos = 2,
	Sounds = {
		"used", "eat"
	} 
} )

-- Shem (piece of parchment with secret symbols used to animate golems); according to Prague legends, used to animate the golem Josef; Source: Alena Ježková, "77 Prague Legends", 2006, pp. 107-109.
