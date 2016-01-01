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

DefineUpgrade("upgrade-item-prefix-accurate", {
	Name = _("Accurate"),
	MagicPrefix = true,
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-prefix-cold", { -- example: Cold Blade (from Wesnoth)
	Name = _("Cold"),
	MagicPrefix = true,
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-prefix-cruel", {
	Name = _("Cruel"),
	MagicPrefix = true,
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-prefix-flaming", { -- example: Flaming Sword (from Wesnoth)
	Name = _("Flaming"),
	MagicPrefix = true,
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-prefix-glacial", {
	Name = _("Glacial"),
	MagicPrefix = true,
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-prefix-impregnable", {
	Name = _("Impregnable"),
	MagicPrefix = true,
	ItemPrefix = {"armor", true, "shield", true, "helmet", true}
})

DefineUpgrade("upgrade-item-prefix-jinns", {
	Name = _("Jinn's"),
	MagicPrefix = true,
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-prefix-penetrating", {
	Name = _("Penetrating"),
	MagicPrefix = true,
	ItemPrefix = {"arrows", true, "dagger", true, "javelin", true, "spear", true, "sword", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-prefix-quenching", {
	Name = _("Quenching"),
	MagicPrefix = true,
	ItemPrefix = {"armor", true, "shield", true, "helmet", true}
})

DefineUpgrade("upgrade-item-prefix-replenishing", {
	Name = _("Replenishing"),
	MagicPrefix = true
})

DefineUpgrade("upgrade-item-prefix-storm", { -- example: Storm Trident (from Wesnoth)
	Name = _("Storm"),
	MagicPrefix = true,
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-prefix-sturdy", {
	Name = _("Sturdy"),
	MagicPrefix = true,
	ItemPrefix = {"armor", true, "shield", true, "helmet", true}
})

DefineUpgrade("upgrade-item-prefix-swift", {
	Name = _("Swift"),
	MagicPrefix = true,
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineUpgrade("upgrade-item-prefix-vicious", {
	Name = _("Vicious"),
	MagicPrefix = true,
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true, "ring", true} -- allowed for rings to allow Andvaranaut to drop, but its prefix should be changed later
})

DefineUpgrade("upgrade-item-prefix-wounding", {
	Name = _("Wounding"),
	MagicPrefix = true,
	ItemPrefix = {"arrows", true, "axe", true, "dagger", true, "javelin", true, "mace", true, "spear", true, "sword", true, "throwing-axe", true, "thrusting-sword", true}
})

DefineModifier("upgrade-item-prefix-accurate",
	{"Accuracy", 1}
)

DefineModifier("upgrade-item-prefix-cold",
	{"ColdDamage", 1}
)

DefineModifier("upgrade-item-prefix-cruel",
	{"BasicDamage", 1}
)

DefineModifier("upgrade-item-prefix-flaming",
	{"FireDamage", 2}
)

DefineModifier("upgrade-item-prefix-glacial",
	{"ColdDamage", 2}
)

DefineModifier("upgrade-item-prefix-impregnable",
	{"Armor", 2}
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

DefineModifier("upgrade-item-prefix-storm",
	{"LightningDamage", 1}
)

DefineModifier("upgrade-item-prefix-sturdy",
	{"Armor", 1}
)

DefineModifier("upgrade-item-prefix-swift",
	{"Accuracy", 1}
)

DefineModifier("upgrade-item-prefix-vicious",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-item-prefix-wounding",
	{"BasicDamage", 2}
)
