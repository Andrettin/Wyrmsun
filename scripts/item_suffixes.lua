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

DefineUpgrade("upgrade-item-suffix-of-accuracy", {
	Name = "of Accuracy",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "bow", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword", "horn"},
	IncompatibleAffixes = {"upgrade-item-prefix-accurate"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-the-beaver", {
	Name = "of the Beaver",
	MagicSuffix = true,
	ItemAffix = {"axe", "amulet", "ring"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-suffix-of-betrayal", {
	Name = "of Betrayal",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "bow", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword", "amulet", "ring"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-suffix-of-carpentry", {
	Name = "of Carpentry",
	MagicSuffix = true,
	ItemAffix = {"mace", "amulet", "ring"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-cold", {
	Name = "of Cold",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword"},
	IncompatibleAffixes = {"upgrade-item-prefix-cold"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-colossus", {
	Name = "of the Colossus",
	MagicSuffix = true,
	ItemAffix = {"armor", "cloak", "shield", "helmet"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-day", {
	Name = "of the Day",
	MagicSuffix = true,
	ItemAffix = {"helmet", "amulet", "ring"},
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
--	ItemAffix = {"amulet", "ring"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-suffix-of-extinguishment", {
	Name = "of Extinguishment",
	MagicSuffix = true,
	ItemAffix = {"armor", "cloak", "shield", "helmet"},
	IncompatibleAffixes = {"upgrade-item-prefix-extinguishing"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-suffix-of-fire", {
	Name = "of Fire",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword"},
	IncompatibleAffixes = {"upgrade-item-prefix-fiery", "upgrade-item-prefix-flaming"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-flame", {
	Name = "of Flame",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword"},
	IncompatibleAffixes = {"upgrade-item-prefix-fiery", "upgrade-item-prefix-flaming"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-suffix-of-frailty", {
	Name = "of Frailty",
	MagicSuffix = true,
	ItemAffix = {"armor", "cloak", "shield", "helmet", "amulet", "ring", "horn"},
	IncompatibleAffixes = {"upgrade-item-prefix-frail"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-jinn", {
	Name = "of the Jinn",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword", "horn"},
	IncompatibleAffixes = {"upgrade-item-prefix-jinns"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-suffix-of-lightning", {
	Name = "of Lightning",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-night", {
	Name = "of the Night",
	MagicSuffix = true,
	ItemAffix = {"helmet", "amulet", "ring"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-perfuration", {
	Name = "of Perfuration",
	MagicSuffix = true,
	ItemAffix = {"arrows", "dagger", "gun", "javelin", "spear", "sword", "thrusting_sword"},
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
	ItemAffix = {"horn", "amulet", "ring"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-regeneration", { -- example: Ring of Regeneration (from Wesnoth)
	Name = "of Regeneration",
	MagicSuffix = true,
	ItemAffix = {"helmet", "amulet", "ring"},
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
	ItemAffix = {"arrows", "axe", "bow", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword", "horn", "amulet", "ring"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-slaughter", {
	Name = "of Slaughter",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "bow", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword", "horn"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-suffix-of-slowness", { -- example: Ring of Slowness (from Wesnoth)
	Name = "of Slowness",
	MagicSuffix = true,
	ItemAffix = {"boots", "amulet", "ring"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-smithing", {
	Name = "of Smithing",
	MagicSuffix = true,
	ItemAffix = {"mace", "amulet", "ring"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-the-snail", {
	Name = "of the Snail",
	MagicSuffix = true,
	ItemAffix = {"boots", "amulet", "ring"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-snigill", {
	Name = "of the Snigill",
	MagicSuffix = true,
	ItemAffix = {"boots", "amulet", "ring"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-speed", { -- example: Ring of Speed (from Wesnoth)
	Name = "of Speed",
	MagicSuffix = true,
	ItemAffix = {"boots", "amulet", "ring"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-storm", {
	Name = "of the Storm",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword"},
	IncompatibleAffixes = {"upgrade-item-prefix-storm"},
	MagicLevel = 4
})

DefineUpgrade("upgrade-item-suffix-of-strength", { -- example: Amulet of Strength (from Wesnoth)
	Name = "of Strength",
	MagicSuffix = true,
	ItemAffix = {"amulet", "ring", "horn"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-swiftness", {
	Name = "of Swiftness",
	MagicSuffix = true,
	ItemAffix = {"horn", "boots", "amulet", "ring"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-suffix-of-thorns", {
	Name = "of Thorns",
	MagicSuffix = true,
	ItemAffix = {"armor", "cloak", "shield", "helmet", "amulet", "ring"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-trickery", {
	Name = "of Trickery",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "bow", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword", "horn"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-victory", {
	Name = "of Victory",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "bow", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword"},
	MagicLevel = 3
})

DefineUpgrade("upgrade-item-suffix-of-vision", {
	Name = "of Vision",
	MagicSuffix = true,
	ItemAffix = {"helmet", "amulet", "ring"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-vulnerability", {
	Name = "of Vulnerability",
	MagicSuffix = true,
	ItemAffix = {"armor", "cloak", "shield", "helmet", "amulet", "ring"},
	IncompatibleAffixes = {"upgrade-item-prefix-vulnerable"},
	MagicLevel = 1
})

DefineUpgrade("upgrade-item-suffix-of-the-wolf", {
	Name = "of the Wolf",
	MagicSuffix = true,
	ItemAffix = {"arrows", "axe", "dagger", "gun", "javelin", "mace", "spear", "sword", "throwing_axe", "thrusting_sword"},
	IncompatibleAffixes = {"upgrade-item-prefix-wolfs"},
	MagicLevel = 2
})

DefineUpgrade("upgrade-item-suffix-of-the-woodpecker", {
	Name = "of the Woodpecker",
	MagicSuffix = true,
	ItemAffix = {"axe", "amulet", "ring"},
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

DefineModifier("upgrade-item-suffix-of-smithing",
	{"JewelryGatheringBonus", 1}
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

DefineModifier("upgrade-item-suffix-of-the-storm",
	{"LightningDamage", 2}
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
	{"upgrade-magic-domain-air"}
)

DefineDependency("upgrade-item-suffix-of-the-beaver",
	{"upgrade-magic-domain-wood"}
)

DefineDependency("upgrade-item-suffix-of-betrayal",
	{"upgrade-magic-domain-illusion"}
)

DefineDependency("upgrade-item-suffix-of-carpentry",
	{"upgrade-magic-domain-wood"}
)

DefineDependency("upgrade-item-suffix-of-cold",
	{"upgrade-magic-domain-ice"}
)

DefineDependency("upgrade-item-suffix-of-the-colossus",
	{"upgrade-magic-domain-earth"}, "or", {"upgrade-magic-domain-metal"}
)

DefineDependency("upgrade-item-suffix-of-the-day",
	{"upgrade-magic-domain-sun"}
)

DefineDependency("upgrade-item-suffix-of-diligence",
	{"upgrade-magic-domain-earth"}, "or", {"upgrade-magic-domain-metal"}
)

DefineDependency("upgrade-item-suffix-of-ethereal-vision",
	{"upgrade-magic-domain-aether"}
)

DefineDependency("upgrade-item-suffix-of-extinguishment",
	{"upgrade-magic-domain-water"}, "or", {"upgrade-magic-domain-fire"}
)

DefineDependency("upgrade-item-suffix-of-fire",
	{"upgrade-magic-domain-fire"}
)

DefineDependency("upgrade-item-suffix-of-flame",
	{"upgrade-magic-domain-fire"}
)

DefineDependency("upgrade-item-suffix-of-the-jinn",
	{"upgrade-magic-domain-air"}
)

DefineDependency("upgrade-item-suffix-of-lightning",
	{"upgrade-magic-domain-lightning"}
)

DefineDependency("upgrade-item-suffix-of-the-night",
	{"upgrade-magic-domain-moon"}
)

DefineDependency("upgrade-item-suffix-of-perfuration",
	{"upgrade-magic-domain-air"}
)

DefineDependency("upgrade-item-suffix-of-plenty",
	{"upgrade-magic-domain-life"}, "or", {"upgrade-magic-domain-wood"}
)

DefineDependency("upgrade-item-suffix-of-power",
	{"upgrade-magic-domain-lightning"}, "or", {"upgrade-magic-domain-fire"}, "or", {"upgrade-magic-domain-earth"}
)

DefineDependency("upgrade-item-suffix-of-regeneration",
	{"upgrade-magic-domain-life"}
)

DefineDependency("upgrade-item-suffix-of-replenishment",
	{"upgrade-magic-domain-life"}
)

DefineDependency("upgrade-item-suffix-of-the-serpent",
	{"upgrade-magic-domain-illusion"}
)

DefineDependency("upgrade-item-suffix-of-slaughter",
	{"upgrade-magic-domain-blood"}, "or", {"upgrade-magic-domain-death"}
)

DefineDependency("upgrade-item-suffix-of-slowness",
	{"upgrade-magic-domain-earth"}
)

DefineDependency("upgrade-item-suffix-of-smithing",
	{"upgrade-magic-domain-metal"}, "or", {"upgrade-magic-domain-transmutation"}
)

DefineDependency("upgrade-item-suffix-of-the-snail",
	{"upgrade-magic-domain-earth"}
)

DefineDependency("upgrade-item-suffix-of-the-snigill",
	{"upgrade-magic-domain-earth"}
)

DefineDependency("upgrade-item-suffix-of-speed",
	{"upgrade-magic-domain-air"}, "or", {"upgrade-magic-domain-lightning"}
)

DefineDependency("upgrade-item-suffix-of-the-storm",
	{"upgrade-magic-domain-lightning"}
)

DefineDependency("upgrade-item-suffix-of-strength",
	{"upgrade-magic-domain-earth"}
)

DefineDependency("upgrade-item-suffix-of-swiftness",
	{"upgrade-magic-domain-air"}, "or", {"upgrade-magic-domain-lightning"}
)

DefineDependency("upgrade-item-suffix-of-thorns",
	{"upgrade-magic-domain-wood"}
)

DefineDependency("upgrade-item-suffix-of-trickery",
	{"upgrade-magic-domain-illusion"}
)

DefineDependency("upgrade-item-suffix-of-victory",
	{"upgrade-magic-domain-sun"}, "or", {"upgrade-magic-domain-fire"}, "or", {"upgrade-magic-domain-lightning"}
)

DefineDependency("upgrade-item-suffix-of-vision",
	{"upgrade-magic-domain-air"}
)

DefineDependency("upgrade-item-suffix-of-the-wolf",
	{"upgrade-magic-domain-moon"}
)

DefineDependency("upgrade-item-suffix-of-the-woodpecker",
	{"upgrade-magic-domain-wood"}
)

local item_suffixes = GetItemSuffixes()
for i = 1, table.getn(item_suffixes) do
	table.insert(Units, item_suffixes[i])
end
