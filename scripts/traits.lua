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
--      (c) Copyright 2016 by Andrettin
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

local traits = {
	{"upgrade-ambitious", _("Ambitious")},
	{"upgrade-clumsy", _("Clumsy")},
	{"upgrade-compassionate", _("Compassionate")}, -- no current effect
	{"upgrade-cruel", _("Cruel")},
	{"upgrade-dextrous", _("Dextrous")},
	{"upgrade-dim", _("Dim")},
	{"upgrade-generous", _("Generous")}, -- no current effect
	{"upgrade-genius", _("Genius")},
	{"upgrade-harsh", _("Harsh")},
	{"upgrade-intelligent", _("Intelligent")},
	{"upgrade-keen", _("Keen")},
	{"upgrade-limping", _("Limping")},
	{"upgrade-mighty", _("Mighty")},
	{"upgrade-near-sighted", _("Near-Sighted")},
	{"upgrade-old", _("Old")},
	{"upgrade-pious", _("Pious")},
	{"upgrade-quick", _("Quick")},
	{"upgrade-reckless", _("Reckless")},
	{"upgrade-resilient", _("Resilient")},
	{"upgrade-slow", _("Slow")},
	{"upgrade-strong", _("Strong")},
	{"upgrade-vicious", _("Vicious")},
	{"upgrade-weak", _("Weak")},
	{"upgrade-wise", _("Wise")}
}

for i = 1,table.getn(traits) do
	u = CUpgrade:New(traits[i][1])
	u.Name = traits[i][2]
	u.Icon = Icons["icon-level-up"]
	for j = 1,7 do
		u.Costs[j - 1] = 0
	end
	u.TechnologyPointCost = 0
	u.Ability = false
	DefineAllow(traits[i][1], "AAAAAAAAAAAAAAAA")
end

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
	{"BasicDamage", 2},
	{"Charisma", -1}
)

DefineModifier("upgrade-weak",
	{"BasicDamage", -1},
	{"Strength", -1}
)

DefineModifier("upgrade-wise",
	{"Intelligence", 1},
	{"Mana", 5}
)
