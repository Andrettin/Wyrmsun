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
--      (c) Copyright 2016-2020 by Andrettin
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

DefineUpgrade("upgrade-ambitious", {
	Parent = "upgrade-trait",
	Name = "Ambitious"
})

DefineUpgrade("upgrade-clumsy", {
	Parent = "upgrade-trait",
	Name = "Clumsy"
})

DefineUpgrade("upgrade-compassionate", { -- no current effect
	Parent = "upgrade-trait",
	Name = "Compassionate"
})

DefineUpgrade("upgrade-cruel", {
	Parent = "upgrade-trait",
	Name = "Cruel",
	Epithets = {"the Cruel"}
})

DefineUpgrade("upgrade-dextrous", {
	Parent = "upgrade-trait",
	Name = "Dextrous"
})

DefineUpgrade("upgrade-dim", {
	Parent = "upgrade-trait",
	Name = "Dim",
	Epithets = {"the Dim"}
})

DefineUpgrade("upgrade-dutiful", {
	Parent = "upgrade-trait",
	Name = "Dutiful"
})

DefineUpgrade("upgrade-generous", { -- no current effect
	Parent = "upgrade-trait",
	Name = "Generous",
	Epithets = {"the Generous"}
})

DefineUpgrade("upgrade-genius", {
	Parent = "upgrade-trait",
	Name = "Genius"
})

DefineUpgrade("upgrade-harsh", {
	Parent = "upgrade-trait",
	Name = "Harsh",
	Epithets = {"the Harsh"}
})

DefineUpgrade("upgrade-intelligent", {
	Parent = "upgrade-trait",
	Name = "Intelligent",
	Epithets = {"the Clever"}
})

DefineUpgrade("upgrade-keen", {
	Parent = "upgrade-trait",
	Name = "Keen"
})

DefineUpgrade("upgrade-limping", {
	Parent = "upgrade-trait",
	Name = "Limping"
})

DefineUpgrade("upgrade-mighty", {
	Parent = "upgrade-trait",
	Name = "Mighty",
	Epithets = {"the Mighty"}
})

DefineUpgrade("upgrade-near-sighted", {
	Parent = "upgrade-trait",
	Name = "Near-Sighted"
})

DefineUpgrade("upgrade-old", {
	Parent = "upgrade-trait",
	Name = "Old",
	Epithets = {"the Old"}
})

DefineUpgrade("upgrade-pious", {
	Parent = "upgrade-trait",
	Name = "Pious",
	Epithets = {"the Pious", "the Blessed"}
})

DefineUpgrade("upgrade-quick", {
	Parent = "upgrade-trait",
	Name = "Quick",
	Epithets = {"the Quick"}
})

DefineUpgrade("upgrade-reckless", {
	Parent = "upgrade-trait",
	Name = "Reckless",
	Epithets = {"the Reckless"}
})

DefineUpgrade("upgrade-resilient", {
	Parent = "upgrade-trait",
	Name = "Resilient",
	Epithets = {"the Bulwark", "the Hardy", "the Iron Shield"}
})

DefineUpgrade("upgrade-slow", {
	Parent = "upgrade-trait",
	Name = "Slow",
	Epithets = {"the Slow"}
})

DefineUpgrade("upgrade-strong", {
	Parent = "upgrade-trait",
	Name = "Strong",
	Epithets = {"the Strong"}
})

DefineUpgrade("upgrade-vicious", {
	Parent = "upgrade-trait",
	Name = "Vicious",
	Epithets = {"the Vicious", "the Butcher", "the Chirurgeon"}
})

DefineUpgrade("upgrade-weak", {
	Parent = "upgrade-trait",
	Name = "Weak",
	Epithets = {"the Weak"}
})

DefineUpgrade("upgrade-wise", {
	Parent = "upgrade-trait",
	Name = "Wise",
	Epithets = {"the Wise", "the Sage"}
})

DefineModifier("upgrade-ambitious",
	{"Intelligence", 1},
	{"Mana", 5},
	{"Charisma", -1}
)

DefineModifier("upgrade-clumsy",
	{"Accuracy", -1},
	{"Evasion", -1},
	{"Dexterity", -1}
)

DefineModifier("upgrade-cruel",
	{"BasicDamage", 2},
	{"Charisma", -2}
)

DefineModifier("upgrade-dextrous",
	{"Accuracy", 1},
	{"Evasion", 1},
	{"Dexterity", 1}
)

DefineModifier("upgrade-dim",
	{"Intelligence", -1},
	{"Mana", -5}
)

DefineModifier("upgrade-dutiful",
	{"HitPoints", 3},
	{"Mana", 2}
)

DefineModifier("upgrade-genius",
	{"Intelligence", 2},
	{"Mana", 10}
)

DefineModifier("upgrade-harsh",
	{"BasicDamage", 1},
	{"Charisma", -1}
)

DefineModifier("upgrade-intelligent",
	{"Intelligence", 1},
	{"Mana", 5}
)

DefineModifier("upgrade-keen",
	{"Accuracy", 1},
	{"SightRange", 1},
	{"Intelligence", 1}
)

DefineModifier("upgrade-limping",
	{"Speed", -2}
)

DefineModifier("upgrade-mighty",
	{"BasicDamage", 2},
	{"Strength", 2}
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

DefineModifier("upgrade-quick",
	{"Speed", 1}
)

DefineModifier("upgrade-reckless",
	{"Evasion", -1}
)

DefineModifier("upgrade-resilient",
	{"HitPoints", 5}
)

DefineModifier("upgrade-slow",
	{"Speed", -1}
)

DefineModifier("upgrade-strong",
	{"BasicDamage", 1},
	{"Strength", 1}
)

DefineModifier("upgrade-vicious",
	{"BasicDamage", 3},
	{"Charisma", -3}
)

DefineModifier("upgrade-weak",
	{"BasicDamage", -1},
	{"Strength", -1}
)

DefineModifier("upgrade-wise",
	{"Intelligence", 1},
	{"Mana", 5}
)
