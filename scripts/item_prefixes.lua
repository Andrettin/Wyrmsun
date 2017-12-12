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
--      (c) Copyright 2015-2017 by Andrettin
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

DefineUpgrade("upgrade-item-prefix-accurate", {
	Name = "Accurate",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword", "horn"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-chiseling", {
	Name = "Chiseling",
	MagicPrefix = true,
	ItemPrefix = {"mace"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-chopping", {
	Name = "Chopping",
	MagicPrefix = true,
	ItemPrefix = {"axe"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-cold", { -- example: Cold Blade (from Wesnoth)
	Name = "Cold",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-cruel", {
	Name = "Cruel",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-dwindling", {
	Name = "Dwindling",
	MagicPrefix = true,
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-extinguishing", {
	Name = "Extinguishing",
	MagicPrefix = true,
	ItemPrefix = {"armor", "cloak", "shield", "helmet"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-prefix-fiery", {
	Name = "Fiery",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword", "horn", "amulet", "ring"}, -- so that Brisingamen and Draupnir can drop
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-flaming", { -- example: Flaming Sword (from Wesnoth)
	Name = "Flaming",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword", "horn", "amulet", "ring"}, -- so that Brisingamen and Draupnir can drop
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-prefix-frail", {
	Name = "Frail",
	MagicPrefix = true,
	ItemPrefix = {"armor", "cloak", "shield", "helmet"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-giants", {
	Name = "Giant's",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-prefix-giantsbane", {
	Name = "Giantsbane",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-glacial", {
	Name = "Glacial",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-prefix-impaling", {
	Name = "Impaling",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "dagger", "gun", "javelin", "spear", "sword", "thrusting-sword"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-prefix-impregnable", {
	Name = "Impregnable",
	MagicPrefix = true,
	ItemPrefix = {"armor", "cloak", "shield", "helmet"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-industrious", {
	Name = "Industrious",
	MagicPrefix = true,
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-jinns", {
	Name = "Jinn's",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword", "horn"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-prefix-penetrating", {
	Name = "Penetrating",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "dagger", "gun", "javelin", "spear", "sword", "thrusting-sword"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-quenching", {
	Name = "Quenching",
	MagicPrefix = true,
	ItemPrefix = {"armor", "cloak", "shield", "helmet"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-replenishing", {
	Name = "Replenishing",
	MagicPrefix = true,
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-sawing", {
	Name = "Sawing",
	MagicPrefix = true,
	ItemPrefix = {"axe"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-prefix-shocking", {
	Name = "Shocking",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-storm", { -- example: Storm Trident (from Wesnoth)
	Name = "Storm",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-prefix-sturdy", {
	Name = "Sturdy",
	MagicPrefix = true,
	ItemPrefix = {"armor", "cloak", "shield", "helmet"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-swift", {
	Name = "Swift",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-swift-boots", {
	Name = "Swift",
	MagicPrefix = true,
	ItemPrefix = {"boots", "amulet", "ring", "horn"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-vicious", {
	Name = "Vicious",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword", "amulet", "ring", "horn"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-vulnerable", {
	Name = "Vulnerable",
	MagicPrefix = true,
	ItemPrefix = {"armor", "cloak", "shield", "helmet"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-wolfs", {
	Name = "Wolf's",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-wounding", {
	Name = "Wounding",
	MagicPrefix = true,
	ItemPrefix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing-axe", "thrusting-sword"},
	MagicLevel = 2
})

DefineModifier("upgrade-item-prefix-accurate",
	{"Accuracy", 1}
)

DefineModifier("upgrade-item-prefix-chiseling",
	{"StoneGatheringBonus", 1}
)

DefineModifier("upgrade-item-prefix-chopping",
	{"LumberGatheringBonus", 1}
)

DefineModifier("upgrade-item-prefix-cold",
	{"ColdDamage", 1}
)

DefineModifier("upgrade-item-prefix-cruel",
	{"BasicDamage", 1}
)

DefineModifier("upgrade-item-prefix-dwindling",
	{"GiveResource", -1, "Increase"}
)

DefineModifier("upgrade-item-prefix-extinguishing",
	{"FireResistance", 30}
)

DefineModifier("upgrade-item-prefix-fiery",
	{"FireDamage", 1}
)

DefineModifier("upgrade-item-prefix-flaming",
	{"FireDamage", 2}
)

DefineModifier("upgrade-item-prefix-frail",
	{"Armor", -2}
)

DefineModifier("upgrade-item-prefix-giants",
	{"BasicDamage", 3}
)

DefineModifier("upgrade-item-prefix-giantsbane",
	{"BonusAgainstGiants", 50}
)

DefineModifier("upgrade-item-prefix-glacial",
	{"ColdDamage", 2}
)

DefineModifier("upgrade-item-prefix-impaling",
	{"PiercingDamage", 2}
)

DefineModifier("upgrade-item-prefix-impregnable",
	{"Armor", 2}
)

DefineModifier("upgrade-item-prefix-industrious",
	{"TimeEfficiencyBonus", 10}
)

DefineModifier("upgrade-item-prefix-jinns",
	{"AirDamage", 2}
)

DefineModifier("upgrade-item-prefix-penetrating",
	{"PiercingDamage", 1}
)

DefineModifier("upgrade-item-prefix-quenching",
	{"FireResistance", 10}
)

DefineModifier("upgrade-item-prefix-replenishing",
	{"GiveResource", 1, "Increase"}
)

DefineModifier("upgrade-item-prefix-sawing",
	{"LumberGatheringBonus", 2},
	{"FurnitureGatheringBonus", 1}
)

DefineModifier("upgrade-item-prefix-shocking",
	{"LightningDamage", 1}
)

DefineModifier("upgrade-item-prefix-storm",
	{"LightningDamage", 2}
)

DefineModifier("upgrade-item-prefix-sturdy",
	{"Armor", 1}
)

DefineModifier("upgrade-item-prefix-swift",
	{"Accuracy", 1}
)

DefineModifier("upgrade-item-prefix-swift-boots",
	{"Speed", 1}
)

DefineModifier("upgrade-item-prefix-vicious",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-item-prefix-vulnerable",
	{"Armor", -1}
)

DefineModifier("upgrade-item-prefix-wolfs",
	{"Accuracy", 1},
	{"BasicDamage", 1}
)

DefineModifier("upgrade-item-prefix-wounding",
	{"BasicDamage", 2}
)

DefineDependency("upgrade-item-prefix-cold",
	{"upgrade-deity-domain-ice"}
)

DefineDependency("upgrade-item-prefix-cruel",
	{"upgrade-deity-domain-wrath"}
)

DefineDependency("upgrade-item-prefix-dwindling",
	{"upgrade-deity-domain-death"}
)

DefineDependency("upgrade-item-prefix-extinguishing",
	{"upgrade-deity-domain-water"}, "or", {"upgrade-deity-domain-hope"}, "or", {"upgrade-deity-domain-fire"}
)

DefineDependency("upgrade-item-prefix-fiery",
	{"upgrade-deity-domain-fire"}, "or", {"upgrade-deity-domain-faith"}, "or", {"upgrade-dwarven-alchemy"}, "or", {"upgrade-goblin-alchemy"}, "or", {"upgrade-teuton-alchemy"}
)

DefineDependency("upgrade-item-prefix-flaming",
	{"upgrade-deity-domain-fire"}, "or", {"upgrade-deity-domain-faith"}, "or", {"upgrade-dwarven-alchemy"}, "or", {"upgrade-goblin-alchemy"}, "or", {"upgrade-teuton-alchemy"}
)

DefineDependency("upgrade-item-prefix-giants",
	{"upgrade-deity-domain-chaos"}
)

DefineDependency("upgrade-item-prefix-giantsbane",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}
)

DefineDependency("upgrade-item-prefix-glacial",
	{"upgrade-deity-domain-ice"}
)

DefineDependency("upgrade-item-prefix-impaling",
	{"upgrade-deity-domain-warfare"}, "or", {"upgrade-deity-domain-wrath"}
)

DefineDependency("upgrade-item-prefix-impregnable",
	{"upgrade-deity-domain-earth"}, "or", {"upgrade-deity-domain-metal"}, "or", {"upgrade-deity-domain-order"}, "or", {"upgrade-deity-domain-warfare"}, "or", {"upgrade-deity-domain-faith"}
)

DefineDependency("upgrade-item-prefix-industrious",
	{"upgrade-deity-domain-greed"}, "or", {"upgrade-deity-domain-metalworking"}, "or", {"upgrade-deity-domain-temperance"}
)

DefineDependency("upgrade-item-prefix-jinns",
	{"upgrade-deity-domain-air"}
)

DefineDependency("upgrade-item-prefix-quenching",
	{"upgrade-deity-domain-water"}, "or", {"upgrade-deity-domain-hope"}, "or", {"upgrade-deity-domain-fire"}
)

DefineDependency("upgrade-item-prefix-replenishing",
	{"upgrade-deity-domain-life"}, "or", {"upgrade-deity-domain-hope"}
)

DefineDependency("upgrade-item-prefix-shocking",
	{"upgrade-deity-domain-lightning"}
)

DefineDependency("upgrade-item-prefix-storm",
	{"upgrade-deity-domain-lightning"}
)

DefineDependency("upgrade-item-prefix-vicious",
	{"upgrade-deity-domain-wrath"}
)

DefineDependency("upgrade-item-prefix-wolfs",
	{"upgrade-deity-domain-moon"}, "or", {"upgrade-deity-domain-warfare"}
)

local item_prefixes = GetItemPrefixes()
for i = 1, table.getn(item_prefixes) do
	table.insert(Units, item_prefixes[i])
end
