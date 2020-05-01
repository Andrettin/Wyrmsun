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
--      (c) Copyright 2015-2020 by Andrettin
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

DefineUnitType("unit-template-item", {
	Name = "Item",
	Image = {"file", "neutral/items/sack.png", "size", {16, 14}},
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
	Sounds = {
		"selected", "click"
	} 
} )

DefineUnitType("unit-short-sword", {
	Name = "Short Sword",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "germanic/items/broad_bronze_sword.png", "size", {32, 32}},
	Icon = "icon-germanic-short-sword",
	ItemClass = "sword",
	ButtonIcons = {
		{"stand-ground", "icon-germanic-stand-ground"}
	},
	BasicDamage = 0
} )

DefineUnitType("unit-goblin-short-sword", {
	Parent = "unit-short-sword",
	Image = {"file", "teuton/items/long_iron_sword.png", "size", {32, 32}},
	Icon = "icon-goblin-short-sword",
	ButtonIcons = {
		{"stand-ground", "icon-goblin-stand-ground"}
	}
} )

DefineUnitType("unit-broad-sword", {
	Name = "Broad Sword",
	Parent = "unit-template-item",
	Costs = {"copper", 200},
	Image = {"file", "germanic/items/broad_bronze_sword.png", "size", {32, 32}},
	Icon = "icon-germanic-broad-sword",
	ItemClass = "sword",
	ButtonIcons = {
		{"stand-ground", "icon-germanic-stand-ground"}
	},
	BasicDamage = 2
} )

DefineUnitType("unit-goblin-broad-sword", {
	Parent = "unit-broad-sword",
	Image = {"file", "teuton/items/long_iron_sword.png", "size", {32, 32}},
	Icon = "icon-goblin-broad-sword",
	ButtonIcons = {
		{"stand-ground", "icon-goblin-stand-ground"}
	}
} )

DefineUnitType("unit-spatha", {
	Name = "Spatha",
	Parent = "unit-template-item",
	Costs = {"copper", 400},
	Image = {"file", "teuton/items/long_iron_sword.png", "size", {32, 32}},
	Icon = "icon-teuton-spatha",
	ItemClass = "sword",
	ButtonIcons = {
		{"stand-ground", "icon-germanic-stand-ground"}
	},
	BasicDamage = 4
} )

DefineUnitType("unit-frankish-spatha", {
	Name = "Spatha",
	Parent = "unit-spatha",
	Icon = "icon-frankish-spatha"
} )

DefineUnitType("unit-goblin-long-sword", {
	Name = "Long Sword",
	Parent = "unit-spatha",
	Icon = "icon-goblin-long-sword",
	ButtonIcons = {
		{"stand-ground", "icon-goblin-stand-ground"}
	}
} )

DefineUnitType("unit-thrusting-sword", {
	Name = "Thrusting Sword",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "germanic/items/broad_bronze_sword.png", "size", {32, 32}},
	Icon = "icon-gnomish-thrusting-sword-1",
	ItemClass = "thrusting-sword",
	ButtonIcons = {
		{"stand-ground", "icon-germanic-stand-ground"}
	},
	BasicDamage = 0
} )

DefineUnitType("unit-battle-axe", {
	Name = "Battle Axe",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-battle-axe",
	ItemClass = "axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 0
} )

DefineUnitType("unit-broad-axe", {
	Name = "Broad Axe",
	Parent = "unit-template-item",
	Costs = {"copper", 200},
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-broad-axe",
	ItemClass = "axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 2
} )

DefineUnitType("unit-great-axe", {
	Name = "Great Axe",
	Parent = "unit-template-item",
	Costs = {"copper", 400},
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-great-axe",
	ItemClass = "axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 4
} )

DefineUnitType("unit-club", {
	Name = "Club",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/club.png", "size", {32, 32}},
	Icon = "icon-club",
	ItemClass = "mace",
	BasicDamage = 0
} )

DefineUnitType("unit-hammer", {
	Name = "Hammer",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/hammer.png", "size", {32, 32}},
	Icon = "icon-hammer",
	ItemClass = "mace",
	BasicDamage = 0
} )

DefineUnitType("unit-runesmiths-hammer", {
	Name = "Runesmith's Hammer",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/hammer.png", "size", {32, 32}},
	Icon = "icon-dwarven-runesmiths-hammer",
	ItemClass = "mace",
	BasicDamage = 0
} )

DefineUnitType("unit-mining-pick", {
	Name = "Mining Pick",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/mining_pick.png", "size", {32, 32}},
	Icon = "icon-mining-pick",
	ItemClass = "mace",
	BasicDamage = 0
} )

DefineUnitType("unit-short-spear", {
	Name = "Short Spear",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/spear.png", "size", {32, 32}},
	Icon = "icon-spear",
	ItemClass = "spear",
	BasicDamage = 0
} )

DefineUnitType("unit-long-spear", {
	Name = "Long Spear",
	Parent = "unit-template-item",
	Costs = {"copper", 200},
	Image = {"file", "neutral/items/spear.png", "size", {32, 32}},
	Icon = "icon-long-spear",
	ItemClass = "spear",
	BasicDamage = 2
} )

DefineUnitType("unit-pike", {
	Name = "Pike",
	Parent = "unit-template-item",
	Costs = {"copper", 400},
	Image = {"file", "neutral/items/spear.png", "size", {32, 32}},
	Icon = "icon-pike",
	ItemClass = "spear",
	BasicDamage = 4
} )

DefineUnitType("unit-pilum", {
	Name = "Pilum",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "latin/items/pilum.png", "size", {48, 48}},
	Icon = "icon-latin-pilum",
	ItemClass = "javelin",
	BasicDamage = 0
} )

DefineUnitType("unit-throwing-axe", {
	Name = "Throwing Axe",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-throwing-axe",
	ItemClass = "throwing-axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 0
} )

DefineUnitType("unit-sharp-throwing-axe", {
	Name = "Sharp Throwing Axe",
	Parent = "unit-template-item",
	Costs = {"copper", 200},
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-sharp-throwing-axe",
	ItemClass = "throwing-axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 2
} )

DefineUnitType("unit-bearded-throwing-axe", {
	Name = "Bearded Throwing Axe",
	Parent = "unit-template-item",
	Costs = {"copper", 400},
	Image = {"file", "neutral/items/axe.png", "size", {32, 32}},
	Icon = "icon-dwarven-bearded-throwing-axe",
	ItemClass = "throwing-axe",
	ButtonIcons = {
		{"stand-ground", "icon-dwarven-stand-ground"}
	},
	BasicDamage = 4
} )

DefineUnitType("unit-hand-cannon", {
	Name = "Hand Cannon",
	Parent = "unit-template-item",
	Costs = {"copper", 400},
	Image = {"file", "teuton/items/hand_cannon.png", "size", {16, 16}},
	Icon = "icon-teuton-hand-cannon",
	ItemClass = "gun",
	BasicDamage = 0
} )

DefineUnitType("unit-wooden-shield", {
	Name = "Wooden Shield",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "dwarf/items/round_shield.png", "size", {14, 14}},
	Icon = "icon-germanic-wooden-oblong-shield",
	ItemClass = "shield",
	Armor = 0
} )

DefineUnitType("unit-goblin-wooden-shield", {
	Parent = "unit-wooden-shield",
	Icon = "icon-goblin-wooden-shield"
} )

DefineUnitType("unit-bronze-shield", {
	Name = "Bronze Shield",
	Parent = "unit-template-item",
	Costs = {"copper", 200},
	Image = {"file", "germanic/items/bronze_shield.png", "size", {32, 32}},
	Icon = "icon-germanic-bronze-shield",
	ItemClass = "shield",
	Armor = 2
} )

DefineUnitType("unit-goblin-rimmed-shield", {
	Name = "Rimmed Shield",
	Parent = "unit-template-item",
	Costs = {"copper", 200},
	Image = {"file", "dwarf/items/round_shield.png", "size", {14, 14}},
	Icon = "icon-goblin-rimmed-shield",
	ItemClass = "shield",
	Armor = 2
} )

DefineUnitType("unit-iron-shield", {
	Name = "Iron Shield",
	Parent = "unit-template-item",
	Costs = {"copper", 400},
	Image = {"file", "teuton/items/saxon_shield.png", "size", {32, 32}},
	Icon = "saxon_iron_shield",
	ItemClass = "shield",
	Armor = 4
} )

DefineUnitType("unit-goblin-embossed-shield", {
	Name = "Embossed Shield",
	Parent = "unit-template-item",
	Costs = {"copper", 400},
	Image = {"file", "dwarf/items/round_shield.png", "size", {14, 14}},
	Icon = "icon-goblin-embossed-shield",
	ItemClass = "shield",
	Armor = 4
} )

DefineUnitType("unit-kite-shield", {
	Name = "Kite Shield",
	Parent = "unit-template-item",
	Costs = {"copper", 400},
	Image = {"file", "teuton/items/saxon_shield.png", "size", {32, 32}},
	Icon = "icon-heater-shield",
	ItemClass = "shield",
	Armor = 4
} )

--[[
DefineUnitType("unit-suebi-shield", {
	Name = "Suebi Shield",
	Parent = "unit-template-item",
	Image = {"file", "suebi/items/suebi_shield.png", "size", {32, 32}},
	Icon = "saxon_iron_shield", -- each base item type needs to have its own icon
	ItemClass = "shield",
	Armor = 4
} )
--]]

DefineUnitType("unit-round-shield", {
	Name = "Round Shield",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "dwarf/items/round_shield.png", "size", {14, 14}},
	Icon = "icon-dwarven-shield-1",
	ItemClass = "shield",
	Armor = 0
} )

DefineUnitType("unit-brising-round-shield", {
	Name = "Brising Round Shield",
	Parent = "unit-round-shield",
	Image = {"file", "dlcs/brising_faction_flair/graphics/items/brising_round_shield.png", "size", {14, 14}},
	Icon = "icon-brising-round-shield"
} )

DefineUnitType("unit-joruvellir-wooden-shield", {
	Name = "Joruvellir Wooden Shield",
	Parent = "unit-round-shield",
	Icon = "icon-joruvellir-shield"
} )

DefineUnitType("unit-heater-shield", {
	Name = "Heater Shield",
	Parent = "unit-template-item",
	Costs = {"copper", 200},
	Image = {"file", "dwarf/items/round_shield.png", "size", {14, 14}},
	Icon = "icon-dwarven-shield-2",
	ItemClass = "shield",
	Armor = 2
} )

DefineUnitType("unit-thrymgjol-shield", {
	Name = "Thrymgjol Shield",
	Parent = "unit-template-item",
	Costs = {"copper", 400},
	Image = {"file", "dwarf/items/round_shield.png", "size", {14, 14}},
	Icon = "icon-dwarven-shield-3",
	ItemClass = "shield",
	Armor = 4
} )

DefineUnitType("unit-horn", {
	Name = "Horn",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "germanic/items/bronze_lur.png", "size", {17, 15}},
	Icon = "icon-germanic-bronze-lur",
	ItemClass = "horn"
} )

DefineUnitType("unit-crown", {
	Name = "Crown",
	Parent = "unit-template-item",
	Costs = {"copper", 400},
	Image = {"file", "neutral/items/crown.png", "size", {32, 32}},
	Icon = "icon-crown",
	ItemClass = "helmet",
	Armor = 1
} )

DefineUnitType("unit-boots", {
	Name = "Boots",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/boots.png", "size", {32, 32}},
	Icon = "icon-dwarven-boots",
	ItemClass = "boots",
	Speed = 0
} )

DefineUnitType("unit-wool-shoes", {
	Name = "Wool Shoes",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/boots.png", "size", {32, 32}},
	Icon = "icon-gnomish-boots",
	ItemClass = "boots",
	Speed = 0
} )

DefineUnitType("unit-furry-wool-shoes", {
	Name = "Furry Wool Shoes",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/boots.png", "size", {32, 32}},
	Icon = "icon-gnomish-boots-fur",
	ItemClass = "boots",
	Speed = 0
} )

DefineUnitType("unit-amulet", {
	Name = "Amulet",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/amulet.png", "size", {32, 32}},
	Icon = "icon-amulet",
	ItemClass = "amulet"
} )

DefineUnitType("unit-ring", {
	Name = "Ring",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/ring.png", "size", {32, 32}},
	Icon = "icon-ring",
	ItemClass = "ring"
} )

DefineUnitType("unit-arrows", {
	Name = "Arrows",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/arrow.png", "size", {32, 32}},
	Icon = "icon-germanic-arrow",
	ItemClass = "arrows",
	NumDirections = 8,
	BasicDamage = 0
} )

DefineUnitType("unit-barbed-arrows", {
	Name = "Barbed Arrows",
	Parent = "unit-template-item",
	Costs = {"copper", 200},
	Image = {"file", "neutral/items/arrow.png", "size", {32, 32}},
	Icon = "icon-germanic-barbed-arrow",
	ItemClass = "arrows",
	NumDirections = 8,
	BasicDamage = 2
} )

DefineUnitType("unit-bodkin-arrows", {
	Name = "Bodkin Arrows",
	Parent = "unit-template-item",
	Costs = {"copper", 400},
	Image = {"file", "neutral/items/arrow.png", "size", {32, 32}},
	Icon = "icon-bodkin-arrow",
	ItemClass = "arrows",
	NumDirections = 8,
	BasicDamage = 4
} )

DefineUnitType("unit-potion-of-healing", {
	Name = "Potion of Healing",
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/potion_red.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-red-potion",
	ItemClass = "potion",
	Costs = {"time", 50, "copper", 150},
	HitPointHealing = 45,
	RequirementsString = "Alchemy",
	Sounds = {
		"used", "potion"
	} 
} )

DefineUnitType("unit-elixir-of-dexterity", {
	Name = "Elixir of Dexterity",
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/potion_black.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-black-potion",
	ItemClass = "potion",
	Costs = {"copper", 150},
	Elixir = "upgrade-elixir-of-dexterity",
	Sounds = {
		"used", "potion"
	} 
} )

DefineUnitType("unit-elixir-of-intelligence", {
	Name = "Elixir of Intelligence",
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/potion_orange.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-orange-potion",
	ItemClass = "potion",
	Costs = {"copper", 150},
	Elixir = "upgrade-elixir-of-intelligence",
	Sounds = {
		"used", "potion"
	} 
} )

DefineUnitType("unit-elixir-of-strength", {
	Name = "Elixir of Strength",
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/potion_white.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-white-potion",
	ItemClass = "potion",
	Costs = {"copper", 150},
	Elixir = "upgrade-elixir-of-strength",
	Sounds = {
		"used", "potion"
	} 
} )

DefineUnitType("unit-elixir-of-vitality", {
	Name = "Elixir of Vitality",
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/potion_gray.png", "size", {16, 16}},
	Animations = "animations-potion", Icon = "icon-gray-potion",
	ItemClass = "potion",
	Costs = {"copper", 150},
	Elixir = "upgrade-elixir-of-vitality",
	Sounds = {
		"used", "potion"
	} 
} )

DefineUnitType("unit-scroll", {
	Name = "Scroll",
	Parent = "unit-template-item",
	Costs = {"copper", 100},
	Image = {"file", "neutral/items/scroll.png", "size", {32, 32}},
	Icon = "icon-scroll",
	ItemClass = "scroll",
	Sounds = {
		"used", "scroll"
	} 
} )

DefineUnitType("unit-book", {
	Name = "Book",
	Parent = "unit-template-item",
	Costs = {"copper", 500},
	Image = {"file", "neutral/items/book.png", "size", {32, 32}},
	Icon = "icon-book-red",
	ItemClass = "book",
	Sounds = {
		"used", "scroll"
	} 
} )

DefineUnitType("unit-cheese", {
	Name = "Cheese",
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/cheese.png", "size", {15, 12}},
	Icon = "icon-cheese",
	ItemClass = "food",
	Costs = {"time", 50, "copper", 25},
	Dairy = true,
	HitPointHealing = 5,
	Sounds = {
		"used", "eat"
	} 
} )

DefineUnitType("unit-carrots", {
	Name = "Carrots",
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/carrots.png", "size", {18, 12}},
	Icon = "icon-carrots",
	ItemClass = "food",
	Costs = {"time", 50, "copper", 25},
	HitPointHealing = 5,
	Vegetable = true,
	Sounds = {
		"used", "eat"
	} 
} )

DefineUnitType("unit-wyrm-heart", {
	Name = "Wyrm Heart",
	Parent = "unit-template-item",
	Image = {"file", "neutral/items/wyrm_heart.png", "size", {16, 16}},
	Icon = "icon-wyrm-heart",
	ItemClass = "food",
	HitPointHealing = 60,
	Flesh = true,
	Sounds = {
		"used", "eat"
	} 
} )

-- Shem (piece of parchment with secret symbols used to animate golems); according to Prague legends, used to animate the golem Josef; Source: Alena Ježková, "77 Prague Legends", 2006, pp. 107-109.
