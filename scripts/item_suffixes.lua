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
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-accurate"}
})

DefineUpgrade("upgrade-item-suffix-of-betrayal", {
	Name = _("of Betrayal"),
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-cold", {
	Name = _("of Cold"),
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-cold"}
})

DefineUpgrade("upgrade-item-suffix-of-the-colossus", {
	Name = _("of the Colossus"),
	ItemSuffix = {"armor", true, "shield", true, "helmet", true}
})

DefineUpgrade("upgrade-item-suffix-of-extinguishment", {
	Name = _("of Extinguishment"),
	ItemSuffix = {"armor", true, "shield", true, "helmet", true}
})

DefineUpgrade("upgrade-item-suffix-of-fire", {
	Name = _("of Fire"),
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-flaming"}
})

DefineUpgrade("upgrade-item-suffix-of-flame", {
	Name = _("of Flame"),
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-flaming"}
})

DefineUpgrade("upgrade-item-suffix-of-the-jinn", {
	Name = _("of the Jinn"),
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true},
	IncompatibleAffixes = {"upgrade-item-prefix-jinns"}
})

DefineUpgrade("upgrade-item-suffix-of-lightning", {
	Name = _("of Lightning"),
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-perfuration", {
	Name = _("of Perfuration"),
	ItemSuffix = {"arrows", true, "dagger", true, "javelin", true, "spear", true, "sword", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-slowness", {
	Name = _("of Slowness"),
	ItemSuffix = {"boots", true}
})

DefineUpgrade("upgrade-item-suffix-of-the-snail", {
	Name = _("of the Snail"),
	ItemSuffix = {"boots", true}
})

DefineUpgrade("upgrade-item-suffix-of-the-snigill", {
	Name = _("of the Snigill"),
	ItemSuffix = {"boots", true}
})

DefineUpgrade("upgrade-item-suffix-of-speed", {
	Name = _("of Speed"),
	ItemSuffix = {"boots", true}
})

DefineUpgrade("upgrade-item-suffix-of-swiftness", {
	Name = _("of Swiftness"),
	ItemSuffix = {"boots", true}
})

DefineUpgrade("upgrade-item-suffix-of-the-serpent", {
	Name = _("of the Serpent"),
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-thorns", {
	Name = _("of Thorns"),
	ItemSuffix = {"armor", true, "shield", true, "helmet", true}
})

DefineUpgrade("upgrade-item-suffix-of-trickery", {
	Name = _("of Trickery"),
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-suffix-of-victory", {
	Name = _("of Victory"),
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
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

DefineModifier("upgrade-item-suffix-of-the-serpent",
	{"Backstab", 50}
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
