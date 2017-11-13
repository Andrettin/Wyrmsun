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
--      (c) Copyright 2014-2017 Andrettin
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
	Name = "Axe Mastery",
	Icon = "icon-axe-mastery",
	Ability = true,
	WeaponClasses = {"axe"},
	MaxLimit = 5
})

DefineUpgrade("upgrade-blessing", {
	Name = "Blessing",
	Icon = "icon-blessing",
	Ability = true
})

DefineUpgrade("upgrade-bow-mastery", {
	Name = "Bow Mastery",
	Icon = "icon-bow-mastery",
	Ability = true,
	WeaponClasses = {"bow"},
	MaxLimit = 5
})

DefineUpgrade("upgrade-critical-strike", {
	Name = "Critical Strike",
	Icon = "icon-critical-strike",
	Ability = true
})

DefineUpgrade("upgrade-deadly-precision", {
	Name = "Deadly Precision",
	Icon = "icon-deadly-precision",
	Ability = true,
	RequirementsString = "Critical Strike"
})

DefineUpgrade("upgrade-eagle-eye", {
	Name = "Eagle Eye",
	Icon = "icon-eagle-eye",
	Ability = true,
	MaxLimit = 5
})

DefineUpgrade("upgrade-ethereal-vision", {
	Name = "Ethereal Vision",
	Icon = "icon-ethereal-vision",
	Ability = true
})

DefineUpgrade("upgrade-gun-mastery", {
	Name = "Gun Mastery",
	Icon = "icon-gun-mastery",
	Ability = true,
	WeaponClasses = {"gun"},
	MaxLimit = 5
})

DefineUpgrade("upgrade-healing", {
	Name = "Healing",
	Icon = "icon-healing",
	Ability = true
})

DefineUpgrade("upgrade-inspire", {
	Name = "Inspire",
	Icon = "icon-inspire",
	Ability = true
})

DefineUpgrade("upgrade-leadership", {
	Name = "Leadership",
	Icon = "icon-leadership",
	Ability = true
})

DefineUpgrade("upgrade-mace-mastery", {
	Name = "Mace Mastery",
	Icon = "icon-mace-mastery",
	Ability = true,
	WeaponClasses = {"mace"},
	MaxLimit = 5
})

DefineUpgrade("upgrade-portent", {
	Name = "Portent",
	Icon = "icon-portent",
	Ability = true
})

DefineUpgrade("upgrade-precise-shot", {
	Name = "Precise Shot",
	Icon = "icon-precise-shot",
	Ability = true
})

DefineUpgrade("upgrade-precision", {
	Name = "Precision",
	Icon = "icon-precision",
	Ability = true
})

DefineUpgrade("upgrade-puncture", {
	Name = "Puncture",
	Icon = "icon-puncture",
	Ability = true
})

DefineUpgrade("upgrade-scouting", {
	Name = "Scouting",
	Icon = "icon-scouting",
	Ability = true
})

DefineUpgrade("upgrade-spear-mastery", {
	Name = "Spear Mastery",
	Icon = "icon-spear-mastery",
	Ability = true,
	WeaponClasses = {"spear"},
	MaxLimit = 5
})

DefineUpgrade("upgrade-stun", {
	Name = "Stun",
	Icon = "icon-stun",
	Ability = true
})

DefineUpgrade("upgrade-sword-mastery", {
	Name = "Sword Mastery",
	Icon = "icon-sword-mastery",
	Ability = true,
	WeaponClasses = {"sword", "thrusting-sword"},
	MaxLimit = 5
})

DefineUpgrade("upgrade-terror", {
	Name = "Terror",
	Icon = "icon-terror",
	Ability = true
})

DefineUpgrade("upgrade-throwing-mastery", {
	Name = "Throwing Mastery",
	Icon = "icon-throwing-mastery",
	Ability = true,
	WeaponClasses = {"javelin", "throwing-axe"},
	MaxLimit = 5
})

DefineUpgrade("upgrade-toughness", {
	Name = "Toughness",
	Icon = "icon-toughness",
	Ability = true,
	MaxLimit = 100
})

DefineUpgrade("upgrade-wither", {
	Name = "Wither",
	Icon = "icon-wither",
	Ability = true
})

DefineModifier("upgrade-axe-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-bow-mastery",
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

DefineModifier("upgrade-ethereal-vision",
	{"EtherealVision", 1}
)

DefineModifier("upgrade-gun-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-leadership",
	{"LeadershipAura", 1}
)

DefineModifier("upgrade-mace-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-scouting",
	{"SightRange", 1}
)

DefineModifier("upgrade-spear-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-sword-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-throwing-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-toughness",
	{"HitPoints", 10}
)
