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
--      (c) Copyright 2015-2021 by Andrettin
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

DefineUpgrade("upgrade-item-prefix-chiseling", {
	Name = "Chiseling",
	MagicPrefix = true,
	ItemAffix = {"mace"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-chopping", {
	Name = "Chopping",
	MagicPrefix = true,
	ItemAffix = {"axe"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-cruel", {
	Name = "Cruel",
	MagicPrefix = true,
	ItemAffix = {"arrows", "axe", "bow", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword"},
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
	ItemAffix = {"armor", "cloak", "shield", "helmet"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-prefix-frail", {
	Name = "Frail",
	MagicPrefix = true,
	ItemAffix = {"armor", "cloak", "shield", "helmet"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-giants", {
	Name = "Giant's",
	MagicPrefix = true,
	ItemAffix = {"arrows", "axe", "bow", "dagger", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-prefix-impaling", {
	Name = "Impaling",
	MagicPrefix = true,
	ItemAffix = {"arrows", "dagger", "gun", "javelin", "spear", "sword", "thrusting_sword"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-prefix-impregnable", {
	Name = "Impregnable",
	MagicPrefix = true,
	ItemAffix = {"armor", "cloak", "shield", "helmet"},
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
	ItemAffix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword", "horn"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-prefix-penetrating", {
	Name = "Penetrating",
	MagicPrefix = true,
	ItemAffix = {"arrows", "dagger", "gun", "javelin", "spear", "sword", "thrusting_sword"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-quenching", {
	Name = "Quenching",
	MagicPrefix = true,
	ItemAffix = {"armor", "cloak", "shield", "helmet"},
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
	ItemAffix = {"axe"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-prefix-sturdy", {
	Name = "Sturdy",
	MagicPrefix = true,
	ItemAffix = {"armor", "cloak", "shield", "helmet"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-vicious", {
	Name = "Vicious",
	MagicPrefix = true,
	ItemAffix = {"arrows", "axe", "bow", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword", "amulet", "ring", "horn"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-prefix-vulnerable", {
	Name = "Vulnerable",
	MagicPrefix = true,
	ItemAffix = {"armor", "cloak", "shield", "helmet"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-prefix-wounding", {
	Name = "Wounding",
	MagicPrefix = true,
	ItemAffix = {"arrows", "axe", "bow", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword"},
	MagicLevel = 2
})

DefineModifier("upgrade-item-prefix-chiseling",
	{"StoneGatheringBonus", 1}
)

DefineModifier("upgrade-item-prefix-chopping",
	{"LumberGatheringBonus", 1}
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

DefineModifier("upgrade-item-prefix-frail",
	{"Armor", -2}
)

DefineModifier("upgrade-item-prefix-giants",
	{"BasicDamage", 3}
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

DefineModifier("upgrade-item-prefix-sturdy",
	{"Armor", 1}
)

DefineModifier("upgrade-item-prefix-vicious",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-item-prefix-vulnerable",
	{"Armor", -1}
)

DefineModifier("upgrade-item-prefix-wounding",
	{"BasicDamage", 2}
)

DefineDependency("upgrade-item-prefix-cruel",
	{"upgrade-deity-domain-blood"}, "or", {"upgrade-deity-domain-death"}
)

DefineDependency("upgrade-item-prefix-dwindling",
	{"upgrade-deity-domain-death"}
)

DefineDependency("upgrade-item-prefix-extinguishing",
	{"upgrade-deity-domain-water"}, "or", {"upgrade-deity-domain-fire"}
)

DefineDependency("upgrade-item-prefix-giants",
	{"upgrade-deity-domain-earth"}
)

DefineDependency("upgrade-item-prefix-impaling",
	{"upgrade-deity-domain-blood"}
)

DefineDependency("upgrade-item-prefix-impregnable",
	{"upgrade-deity-domain-earth"}, "or", {"upgrade-deity-domain-metal"}
)

DefineDependency("upgrade-item-prefix-industrious",
	{"upgrade-deity-domain-earth"}, "or", {"upgrade-deity-domain-metal"}
)

DefineDependency("upgrade-item-prefix-jinns",
	{"upgrade-deity-domain-air"}
)

DefineDependency("upgrade-item-prefix-quenching",
	{"upgrade-deity-domain-water"}, "or", {"upgrade-deity-domain-fire"}
)

DefineDependency("upgrade-item-prefix-replenishing",
	{"upgrade-deity-domain-life"}
)

DefineDependency("upgrade-item-prefix-vicious",
	{"upgrade-deity-domain-blood"}
)

local item_prefixes = GetItemPrefixes()
for i = 1, table.getn(item_prefixes) do
	table.insert(Units, item_prefixes[i])
end
