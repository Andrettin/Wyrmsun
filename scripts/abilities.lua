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
--      (c) Copyright 2014-2016 Andrettin
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

DefineUpgrade("upgrade-axe-mastery", {
	Name = _("Axe Mastery"),
	Icon = "icon-axe-mastery",
	Ability = true,
	WeaponClasses = {"axe"}
})

DefineUpgrade("upgrade-critical-strike", {
	Name = _("Critical Strike"),
	Icon = "icon-critical-strike",
	Ability = true
})

DefineUpgrade("upgrade-deadly-precision", {
	Name = _("Deadly Precision"),
	Icon = "icon-deadly-precision",
	RequiredAbilities = {"upgrade-critical-strike"},
	Ability = true
})

DefineUpgrade("upgrade-eagle-eye", {
	Name = _("Eagle Eye"),
	Icon = "icon-eagle-eye",
	Ability = true
})

DefineUpgrade("upgrade-healing", {
	Name = _("Healing"),
	Icon = "icon-healing",
	Ability = true
})

DefineUpgrade("upgrade-inspire", {
	Name = _("Inspire"),
	Icon = "icon-inspire",
	Ability = true
})

DefineUpgrade("upgrade-leadership", {
	Name = _("Leadership"),
	Icon = "icon-leadership",
	Ability = true
})

DefineUpgrade("upgrade-mace-mastery", {
	Name = _("Mace Mastery"),
	Icon = "icon-mace-mastery",
	Ability = true,
	WeaponClasses = {"mace"}
})

DefineUpgrade("upgrade-portent", {
	Name = _("Portent"),
	Icon = "icon-portent",
	Ability = true
})

DefineUpgrade("upgrade-puncture", {
	Name = _("Puncture"),
	Icon = "icon-puncture",
	Ability = true
})

DefineUpgrade("upgrade-spear-mastery", {
	Name = _("spear Mastery"),
	Icon = "icon-spear-mastery",
	Ability = true,
	WeaponClasses = {"spear"}
})

DefineUpgrade("upgrade-stun", {
	Name = _("Stun"),
	Icon = "icon-stun",
	Ability = true
})

DefineUpgrade("upgrade-sword-mastery", {
	Name = _("Sword Mastery"),
	Icon = "icon-sword-mastery",
	Ability = true,
	WeaponClasses = {"sword", "thrusting-sword"}
})

DefineUpgrade("upgrade-terror", {
	Name = _("Terror"),
	Icon = "icon-terror",
	Ability = true
})

DefineUpgrade("upgrade-unshackle", {
	Name = _("Unshackle"),
	Icon = "icon-axe-mastery",
	Ability = true,
	Quote = "The Idisi once alighted, alighted yonder.\nSome riveted fetters, others stemmed the war tide,\nOthers hammered upon the chains:\nSlip from shackles, escape from the foe!\n- Medieval German Charm" -- the Idisi are divine women, possibly valkyries; Source: Felix Grendon, "The Anglo-Saxon Charms", 1909, pp. 110-111.
})

DefineModifier("upgrade-axe-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-critical-strike",
	{"CriticalStrikeChance", 10}
)

DefineModifier("upgrade-deadly-precision",
	{"CriticalStrikeChance", 10}
)

DefineModifier("upgrade-eagle-eye",
	{"Accuracy", 2}
)

DefineModifier("upgrade-leadership",
	{"LeadershipAura", 1}
)

DefineModifier("upgrade-mace-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-spear-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-sword-mastery",
	{"BasicDamage", 2}
)
