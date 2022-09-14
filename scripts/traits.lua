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
--      (c) Copyright 2016-2022 by Andrettin
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

DefineUpgrade("upgrade-trait", {
	Name = "Trait",
	Icon = "icon-level-up"
})

DefineUpgrade("upgrade-compassionate", { -- no current effect
	Parent = "upgrade-trait",
	Name = "Compassionate"
})

DefineUpgrade("upgrade-cruel", {
	Parent = "upgrade-trait",
	Name = "Cruel"
})

DefineUpgrade("upgrade-dutiful", {
	Parent = "upgrade-trait",
	Name = "Dutiful"
})

DefineUpgrade("upgrade-harsh", {
	Parent = "upgrade-trait",
	Name = "Harsh"
})

DefineUpgrade("upgrade-keen", {
	Parent = "upgrade-trait",
	Name = "Keen"
})

DefineUpgrade("upgrade-near-sighted", {
	Parent = "upgrade-trait",
	Name = "Near-Sighted"
})

DefineUpgrade("upgrade-old", {
	Parent = "upgrade-trait",
	Name = "Old"
})

DefineUpgrade("upgrade-pious", {
	Parent = "upgrade-trait",
	Name = "Pious"
})

DefineUpgrade("upgrade-reckless", {
	Parent = "upgrade-trait",
	Name = "Reckless"
})

DefineUpgrade("upgrade-resilient", {
	Parent = "upgrade-trait",
	Name = "Resilient"
})

DefineUpgrade("upgrade-vicious", {
	Parent = "upgrade-trait",
	Name = "Vicious"
})

DefineUpgrade("upgrade-wise", {
	Parent = "upgrade-trait",
	Name = "Wise"
})

DefineModifier("upgrade-cruel",
	{"BasicDamage", 2},
	{"Charisma", -2}
)

DefineModifier("upgrade-dutiful",
	{"HitPoints", 3},
	{"Mana", 2}
)

DefineModifier("upgrade-harsh",
	{"BasicDamage", 1},
	{"Charisma", -1}
)

DefineModifier("upgrade-keen",
	{"Accuracy", 1},
	{"SightRange", 1},
	{"Intelligence", 1}
)

DefineModifier("upgrade-near-sighted",
	{"Accuracy", -1},
	{"SightRange", -1}
)

DefineModifier("upgrade-old",
	{"SightRange", -1},
	{"Speed", -1}
)

DefineModifier("upgrade-pious",
--	{"Mana", 10}
	{"Mana", 5}
)

DefineModifier("upgrade-reckless",
	{"Evasion", -1}
)

DefineModifier("upgrade-resilient",
	{"HitPoints", 5}
)

DefineModifier("upgrade-vicious",
	{"BasicDamage", 3},
	{"Charisma", -3}
)

DefineModifier("upgrade-wise",
	{"Intelligence", 1},
	{"Mana", 5}
)
