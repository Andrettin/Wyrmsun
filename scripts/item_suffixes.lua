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

DefineUpgrade("upgrade-item-suffix-of-accuracy", {
	Name = "of Accuracy",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true, "horn", true},
	IncompatibleAffixes = {"upgrade-item-prefix-accurate"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-the-beaver", {
	Name = "of the Beaver",
	MagicSuffix = true,
	ItemSuffix = {"axe", true, "amulet", true, "ring", true},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-suffix-of-betrayal", {
	Name = "of Betrayal",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true, "amulet", true, "ring", true},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-suffix-of-carpentry", {
	Name = "of Carpentry",
	MagicSuffix = true,
	ItemSuffix = {"mace", true, "amulet", true, "ring", true},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-cold", {
	Name = "of Cold",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-cold"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-colossus", {
	Name = "of the Colossus",
	MagicSuffix = true,
	ItemSuffix = {"armor", true, "shield", true, "helmet", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-day", {
	Name = "of the Day",
	MagicSuffix = true,
	ItemSuffix = {"helmet", true, "amulet", true, "ring", true},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-diligence", {
	Name = "of Diligence",
	MagicSuffix = true,
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-ethereal-vision", {
	Name = "of Ethereal Vision",
	MagicSuffix = true,
--	ItemSuffix = {"amulet", true, "ring", true},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-suffix-of-extinguishment", {
	Name = "of Extinguishment",
	MagicSuffix = true,
	ItemSuffix = {"armor", true, "shield", true, "helmet", true},
	IncompatibleAffixes = {"upgrade-item-prefix-extinguishing"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-suffix-of-fire", {
	Name = "of Fire",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-fiery", "upgrade-item-prefix-flaming"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-flame", {
	Name = "of Flame",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-fiery", "upgrade-item-prefix-flaming"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-suffix-of-frailty", {
	Name = "of Frailty",
	MagicSuffix = true,
	ItemSuffix = {"armor", true, "shield", true, "helmet", true, "amulet", true, "ring", true, "horn", true},
	IncompatibleAffixes = {"upgrade-item-prefix-frail"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-jinn", {
	Name = "of the Jinn",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true, "horn", true},
	IncompatibleAffixes = {"upgrade-item-prefix-jinns"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-suffix-of-lightning", {
	Name = "of Lightning",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-night", {
	Name = "of the Night",
	MagicSuffix = true,
	ItemSuffix = {"helmet", true, "amulet", true, "ring", true},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-perfuration", {
	Name = "of Perfuration",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "dagger", true, "gun", true, "javelin", true, "spear", true, "sword", true, "thrusting-sword", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-plenty", {
	Name = "of Plenty",
	MagicSuffix = true,
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-power", { -- example: Ring of Power (from Wesnoth)
	Name = "of Power",
	MagicSuffix = true,
	ItemSuffix = {"horn", true, "amulet", true, "ring", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-regeneration", { -- example: Ring of Regeneration (from Wesnoth)
	Name = "of Regeneration",
	MagicSuffix = true,
	ItemSuffix = {"helmet", true, "amulet", true, "ring", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-replenishment", {
	Name = "of Replenishment",
	MagicSuffix = true,
	IncompatibleAffixes = {"upgrade-item-prefix-replenishing"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-serpent", {
	Name = "of the Serpent",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true, "horn", true, "amulet", true, "ring", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-slaughter", {
	Name = "of Slaughter",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true, "horn", true},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-suffix-of-slowness", { -- example: Ring of Slowness (from Wesnoth)
	Name = "of Slowness",
	MagicSuffix = true,
	ItemSuffix = {"boots", true, "amulet", true, "ring", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-snail", {
	Name = "of the Snail",
	MagicSuffix = true,
	ItemSuffix = {"boots", true, "amulet", true, "ring", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-snigill", {
	Name = "of the Snigill",
	MagicSuffix = true,
	ItemSuffix = {"boots", true, "amulet", true, "ring", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-speed", { -- example: Ring of Speed (from Wesnoth)
	Name = "of Speed",
	MagicSuffix = true,
	ItemSuffix = {"boots", true, "amulet", true, "ring", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-strength", { -- example: Amulet of Strength (from Wesnoth)
	Name = "of Strength",
	MagicSuffix = true,
	ItemSuffix = {"amulet", true, "ring", true, "horn", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-swiftness", {
	Name = "of Swiftness",
	MagicSuffix = true,
	ItemSuffix = {"horn", true, "boots", true, "amulet", true, "ring", true},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-suffix-of-thorns", {
	Name = "of Thorns",
	MagicSuffix = true,
	ItemSuffix = {"armor", true, "shield", true, "helmet", true, "amulet", true, "ring", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-trickery", {
	Name = "of Trickery",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true, "horn", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-victory", {
	Name = "of Victory",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-suffix-of-vision", {
	Name = "of Vision",
	MagicSuffix = true,
	ItemSuffix = {"helmet", true, "amulet", true, "ring", true},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-vulnerability", {
	Name = "of Vulnerability",
	MagicSuffix = true,
	ItemSuffix = {"armor", true, "shield", true, "helmet", true, "amulet", true, "ring", true},
	IncompatibleAffixes = {"upgrade-item-prefix-vulnerable"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-the-wolf", {
	Name = "of the Wolf",
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "gun", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-wolfs"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-woodpecker", {
	Name = "of the Woodpecker",
	MagicSuffix = true,
	ItemSuffix = {"axe", true, "amulet", true, "ring", true},
	MagicLevel = 2
})

DefineModifier("upgrade-item-suffix-of-accuracy",
	{"Accuracy", 1}
)

DefineModifier("upgrade-item-suffix-of-the-beaver",
	{"LumberGatheringBonus", 3}
)

DefineModifier("upgrade-item-suffix-of-betrayal",
	{"Backstab", 100}
)

DefineModifier("upgrade-item-suffix-of-carpentry",
	{"FurnitureGatheringBonus", 1}
)

DefineModifier("upgrade-item-suffix-of-cold",
	{"ColdDamage", 1}
)

DefineModifier("upgrade-item-suffix-of-the-colossus",
	{"Armor", 2}
)

DefineModifier("upgrade-item-suffix-of-the-day",
	{"DaySightRangeBonus", 1}
)

DefineModifier("upgrade-item-suffix-of-diligence",
	{"TimeEfficiencyBonus", 10}
)

DefineModifier("upgrade-item-suffix-of-ethereal-vision",
	{"EtherealVision", 1}
)

DefineModifier("upgrade-item-suffix-of-extinguishment",
	{"FireResistance", 30}
)

DefineModifier("upgrade-item-suffix-of-fire",
	{"FireDamage", 1}
)

DefineModifier("upgrade-item-suffix-of-flame",
	{"FireDamage", 2}
)

DefineModifier("upgrade-item-suffix-of-frailty",
	{"Armor", -2}
)

DefineModifier("upgrade-item-suffix-of-the-jinn",
	{"AirDamage", 2}
)

DefineModifier("upgrade-item-suffix-of-lightning",
	{"LightningDamage", 1}
)

DefineModifier("upgrade-item-suffix-of-the-night",
	{"NightSightRangeBonus", 1}
)

DefineModifier("upgrade-item-suffix-of-perfuration",
	{"PiercingDamage", 1}
)

DefineModifier("upgrade-item-suffix-of-plenty",
	{"Supply", 1}
)

DefineModifier("upgrade-item-suffix-of-power",
	{"BasicDamage", 1},
	{"HitPointBonus", 5}
)

DefineModifier("upgrade-item-suffix-of-regeneration",
	{"HitPointBonus", 1, "Increase"}
)

DefineModifier("upgrade-item-suffix-of-replenishment",
	{"GiveResource", 1, "Increase"}
)

DefineModifier("upgrade-item-suffix-of-the-serpent",
	{"Backstab", 50}
)

DefineModifier("upgrade-item-suffix-of-slaughter",
	{"BasicDamage", 3}
)

DefineModifier("upgrade-item-suffix-of-slowness",
	{"Speed", -1}
)

DefineModifier("upgrade-item-suffix-of-the-snail",
	{"Speed", -1}
)

DefineModifier("upgrade-item-suffix-of-the-snigill",
	{"Speed", -1}
)

DefineModifier("upgrade-item-suffix-of-speed",
	{"Speed", 1}
)

DefineModifier("upgrade-item-suffix-of-strength",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-item-suffix-of-swiftness",
	{"Evasion", 1},
	{"Speed", 1}
)

DefineModifier("upgrade-item-suffix-of-thorns",
	{"ThornsDamage", 1}
)

DefineModifier("upgrade-item-suffix-of-trickery",
	{"ArcaneDamage", 1}
)

DefineModifier("upgrade-item-suffix-of-victory",
	{"BasicDamage", 3}
)

DefineModifier("upgrade-item-suffix-of-vision",
	{"SightRange", 1}
)

DefineModifier("upgrade-item-suffix-of-vulnerability",
	{"Armor", -1}
)

DefineModifier("upgrade-item-suffix-of-the-wolf",
	{"Accuracy", 1},
	{"BasicDamage", 1}
)

DefineModifier("upgrade-item-suffix-of-the-woodpecker",
	{"LumberGatheringBonus", 2}
)

DefineDependency("upgrade-item-suffix-of-accuracy",
	{"upgrade-deity-domain-archery"}, "or", {"upgrade-deity-domain-warfare"}
)

DefineDependency("upgrade-item-suffix-of-the-beaver",
	{"upgrade-deity-domain-wood"}
)

DefineDependency("upgrade-item-suffix-of-betrayal",
	{"upgrade-deity-domain-envy"}, "or", {"upgrade-deity-domain-greed"}
)

DefineDependency("upgrade-item-suffix-of-carpentry",
	{"upgrade-deity-domain-wood"}
)

DefineDependency("upgrade-item-suffix-of-cold",
	{"upgrade-deity-domain-ice"}
)

DefineDependency("upgrade-item-suffix-of-the-colossus",
	{"upgrade-deity-domain-earth"}, "or", {"upgrade-deity-domain-metal"}, "or", {"upgrade-deity-domain-metalworking"}, "or", {"upgrade-deity-domain-warfare"}
)

DefineDependency("upgrade-item-suffix-of-the-day",
	{"upgrade-deity-domain-light"}, "or", {"upgrade-deity-domain-sun"}, "or", {"upgrade-deity-domain-order"}
)

DefineDependency("upgrade-item-suffix-of-diligence",
	{"upgrade-deity-domain-temperance"}
)

DefineDependency("upgrade-item-suffix-of-ethereal-vision",
	{"upgrade-deity-domain-aether"}, "or", {"upgrade-deity-domain-magic"}
)

DefineDependency("upgrade-item-suffix-of-extinguishment",
	{"upgrade-deity-domain-water"}, "or", {"upgrade-deity-domain-hope"}, "or", {"upgrade-deity-domain-fire"}
)

DefineDependency("upgrade-item-suffix-of-fire",
	{"upgrade-deity-domain-fire"}, "or", {"upgrade-deity-domain-faith"}
)

DefineDependency("upgrade-item-suffix-of-flame",
	{"upgrade-deity-domain-fire"}, "or", {"upgrade-deity-domain-faith"}
)

DefineDependency("upgrade-item-suffix-of-the-jinn",
	{"upgrade-deity-domain-air"}
)

DefineDependency("upgrade-item-suffix-of-lightning",
	{"upgrade-deity-domain-lightning"}
)

DefineDependency("upgrade-item-suffix-of-the-night",
	{"upgrade-deity-domain-darkness"}, "or", {"upgrade-deity-domain-moon"}, "or", {"upgrade-deity-domain-chaos"}
)

DefineDependency("upgrade-item-suffix-of-perfuration",
	{"upgrade-deity-domain-archery"}, "or", {"upgrade-deity-domain-warfare"}, "or", {"upgrade-deity-domain-wrath"}, "or", {"upgrade-deity-domain-faith"}
)

DefineDependency("upgrade-item-suffix-of-plenty",
	{"upgrade-deity-domain-life"}, "or", {"upgrade-deity-domain-charity"}
)

DefineDependency("upgrade-item-suffix-of-power",
	{"upgrade-deity-domain-pride"}, "or", {"upgrade-deity-domain-faith"}
)

DefineDependency("upgrade-item-suffix-of-regeneration",
	{"upgrade-deity-domain-life"}, "or", {"upgrade-deity-domain-faith"}
)

DefineDependency("upgrade-item-suffix-of-replenishment",
	{"upgrade-deity-domain-life"}, "or", {"upgrade-deity-domain-hope"}
)

DefineDependency("upgrade-item-suffix-of-the-serpent",
	{"upgrade-deity-domain-envy"}
)

DefineDependency("upgrade-item-suffix-of-slaughter",
	{"upgrade-deity-domain-wrath"}, "or", {"upgrade-deity-domain-death"}
)

DefineDependency("upgrade-item-suffix-of-slowness",
	{"upgrade-deity-domain-earth"}, "or", {"upgrade-deity-domain-sloth"}
)

DefineDependency("upgrade-item-suffix-of-the-snail",
	{"upgrade-deity-domain-earth"}, "or", {"upgrade-deity-domain-sloth"}
)

DefineDependency("upgrade-item-suffix-of-the-snigill",
	{"upgrade-deity-domain-earth"}, "or", {"upgrade-deity-domain-sloth"}
)

DefineDependency("upgrade-item-suffix-of-speed",
	{"upgrade-deity-domain-air"}, "or", {"upgrade-deity-domain-lightning"}
)

DefineDependency("upgrade-item-suffix-of-strength",
	{"upgrade-deity-domain-warfare"}, "or", {"upgrade-deity-domain-faith"}
)

DefineDependency("upgrade-item-suffix-of-swiftness",
	{"upgrade-deity-domain-air"}, "or", {"upgrade-deity-domain-lightning"}
)

DefineDependency("upgrade-item-suffix-of-thorns",
	{"upgrade-deity-domain-chaos"}, "or", {"upgrade-deity-domain-wood"}
)

DefineDependency("upgrade-item-suffix-of-trickery",
	{"upgrade-deity-domain-chaos"}
)

DefineDependency("upgrade-item-suffix-of-victory",
	{"upgrade-deity-domain-hope"}, "or", {"upgrade-deity-domain-warfare"}
)

DefineDependency("upgrade-item-suffix-of-vision",
	{"upgrade-deity-domain-archery"}, "or", {"upgrade-deity-domain-faith"}, "or", {"upgrade-deity-domain-light"}
)

DefineDependency("upgrade-item-suffix-of-the-wolf",
	{"upgrade-deity-domain-moon"}, "or", {"upgrade-deity-domain-warfare"}
)

DefineDependency("upgrade-item-suffix-of-the-woodpecker",
	{"upgrade-deity-domain-wood"}
)

local item_suffixes = GetItemSuffixes()
for i = 1, table.getn(item_suffixes) do
	table.insert(Units, item_suffixes[i])
end
