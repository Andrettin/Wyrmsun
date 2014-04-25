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
--      upgrade.ccl - Define the dwarven dependencies and upgrades.
--
--      (c) Copyright 2013-2014 by Andre Novellino Gouvêa
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

local upgrades = {
	{"upgrade-dwarven-broad-axe", "icon-dwarven-axe-2",
		{   200,   500,   100,     0,     0,     0,     0}},
	{"upgrade-dwarven-great-axe", "icon-dwarven-axe-3",
		{   250,  1500,   300,     0,     0,     0,     0}},
	{"upgrade-dwarven-shield-1", "icon-dwarven-shield-2",
		{   200,   300,   300,     0,     0,     0,     0}},
	{"upgrade-dwarven-shield-2", "icon-dwarven-shield-3",
		{   250,   900,   500,     0,     0,     0,     0}},
	{"upgrade-dwarven-throwing-axe-1", "icon-dwarven-throwing-axe-2",
		{   200,   300,   300,     0,     0,     0,     0}},
	{"upgrade-dwarven-throwing-axe-2", "icon-dwarven-throwing-axe-3",
		{   250,   900,   500,     0,     0,     0,     0}},
}

for i = 1,table.getn(upgrades) do
	u = CUpgrade:New(upgrades[i][1])
	u.Icon = Icons[upgrades[i][2]]
	for j = 1,table.getn(upgrades[i][3]) do
		u.Costs[j - 1] = upgrades[i][3][j]
	end
end

DefineModifier("upgrade-dwarven-broad-axe",
	{"PiercingDamage", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-baglur"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-great-axe",
	{"PiercingDamage", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-baglur"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-shield-1",
	{"Armor", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-baglur"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-shield-2",
	{"Armor", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-baglur"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-throwing-axe-1",
	{"PiercingDamage", 1},
	{"apply-to", "unit-dwarven-scout"})

DefineModifier("upgrade-dwarven-throwing-axe-2",
	{"PiercingDamage", 1},
	{"apply-to", "unit-dwarven-scout"})

DefineDependency("unit-dwarven-scout",
	{"unit-dwarven-lumber-mill"})

DefineDependency("upgrade-dwarven-great-axe",
	{"upgrade-dwarven-broad-axe"})

DefineDependency("upgrade-dwarven-shield-2",
	{"upgrade-dwarven-shield-1"})

DefineDependency("upgrade-dwarven-throwing-axe-2",
	{"upgrade-dwarven-throwing-axe-1"})

DefineDependency("unit-dwarven-guard-tower",
	{"unit-dwarven-lumber-mill"})

DefineDependency("unit-dwarven-ballista",
	{"unit-dwarven-blacksmith", "unit-dwarven-lumber-mill"})

--DefineDependency("unit-dwarven-steelclad",
--	{"unit-dwarven-blacksmith"})

--DefineDependency("unit-hero-rugnur-steelclad",
--	{"unit-dwarven-blacksmith"})

DefineDependency("unit-hero-rugnur",
	{"unit-dwarven-town-hall", "unit-dwarven-barracks", "unit-dwarven-axefighter", 4, "unit-dwarven-steelclad", 1})

DefineDependency("unit-hero-baglur",
	{"unit-dwarven-town-hall", "unit-dwarven-barracks", "unit-dwarven-steelclad", 4})

DefineDependency("unit-hero-thursagan",
	{"unit-dwarven-town-hall", "unit-dwarven-barracks", "unit-dwarven-steelclad", 4, "unit-dwarven-blacksmith"})

DefineDependency("unit-hero-durstorn",
	{"unit-dwarven-town-hall", "unit-dwarven-barracks", "unit-dwarven-steelclad", 12})
