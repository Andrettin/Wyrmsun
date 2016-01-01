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

DefineUpgrade("upgrade-item-suffix-of-accuracy", {
	Name = _("of Accuracy"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-accurate"}
})

DefineUpgrade("upgrade-item-suffix-of-betrayal", {
	Name = _("of Betrayal"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true, "amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-cold", {
	Name = _("of Cold"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-cold"}
})

DefineUpgrade("upgrade-item-suffix-of-the-colossus", {
	Name = _("of the Colossus"),
	MagicSuffix = true,
	ItemSuffix = {"armor", true, "shield", true, "helmet", true}
})

DefineUpgrade("upgrade-item-suffix-of-diligence", {
	Name = _("of Diligence"),
	MagicSuffix = true
})

DefineUpgrade("upgrade-item-suffix-of-extinguishment", {
	Name = _("of Extinguishment"),
	MagicSuffix = true,
	ItemSuffix = {"armor", true, "shield", true, "helmet", true}
})

DefineUpgrade("upgrade-item-suffix-of-fire", {
	Name = _("of Fire"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-flaming"}
})

DefineUpgrade("upgrade-item-suffix-of-flame", {
	Name = _("of Flame"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-flaming"}
})

DefineUpgrade("upgrade-item-suffix-of-the-jinn", {
	Name = _("of the Jinn"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-jinns"}
})

DefineUpgrade("upgrade-item-suffix-of-lightning", {
	Name = _("of Lightning"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-perfuration", {
	Name = _("of Perfuration"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "dagger", true, "javelin", true, "spear", true, "sword", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-power", { -- example: Ring of Power (from Wesnoth)
	Name = _("of Power"),
	MagicSuffix = true,
	ItemSuffix = {"amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-regeneration", { -- example: Ring of Regeneration (from Wesnoth)
	Name = _("of Regeneration"),
	MagicSuffix = true,
	ItemSuffix = {"amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-replenishment", {
	Name = _("of Replenishment"),
	MagicSuffix = true,
	IncompatibleAffixes = {"upgrade-item-prefix-replenishing"}
})

DefineUpgrade("upgrade-item-suffix-of-the-serpent", {
	Name = _("of the Serpent"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true, "amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-slaughter", {
	Name = _("of Slaughter"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-slowness", { -- example: Ring of Slowness (from Wesnoth)
	Name = _("of Slowness"),
	MagicSuffix = true,
	ItemSuffix = {"boots", true, "amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-the-snail", {
	Name = _("of the Snail"),
	MagicSuffix = true,
	ItemSuffix = {"boots", true, "amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-the-snigill", {
	Name = _("of the Snigill"),
	MagicSuffix = true,
	ItemSuffix = {"boots", true, "amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-speed", { -- example: Ring of Speed (from Wesnoth)
	Name = _("of Speed"),
	MagicSuffix = true,
	ItemSuffix = {"boots", true, "amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-strength", { -- example: Amulet of Strength (from Wesnoth)
	Name = _("of Strength"),
	MagicSuffix = true,
	ItemSuffix = {"amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-swiftness", {
	Name = _("of Swiftness"),
	MagicSuffix = true,
	ItemSuffix = {"boots", true, "amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-thorns", {
	Name = _("of Thorns"),
	MagicSuffix = true,
	ItemSuffix = {"armor", true, "shield", true, "helmet", true, "amulet", true, "ring", true}
})

DefineUpgrade("upgrade-item-suffix-of-trickery", {
	Name = _("of Trickery"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-victory", {
	Name = _("of Victory"),
	MagicSuffix = true,
	ItemSuffix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-vision", {
	Name = _("of Vision"),
	MagicSuffix = true,
	ItemSuffix = {"amulet", true, "ring", true}
})

DefineModifier("upgrade-item-suffix-of-accuracy",
	{"Accuracy", 1}
)

DefineModifier("upgrade-item-suffix-of-betrayal",
	{"Backstab", 100}
)

DefineModifier("upgrade-item-suffix-of-cold",
	{"ColdDamage", 1}
)

DefineModifier("upgrade-item-suffix-of-the-colossus",
	{"Armor", 2}
)

DefineModifier("upgrade-item-suffix-of-diligence",
	{"TimeEfficiencyBonus", 10}
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

DefineModifier("upgrade-item-suffix-of-the-jinn",
	{"AirDamage", 2}
)

DefineModifier("upgrade-item-suffix-of-lightning",
	{"LightningDamage", 1}
)

DefineModifier("upgrade-item-suffix-of-perfuration",
	{"PiercingDamage", 1}
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
