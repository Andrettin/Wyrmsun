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
--      (c) Copyright 2018-2021 by Andrettin
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

DefineModifier("upgrade_faction_danish_tribe",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"},
	{"apply-to", "unit-norse-veteran-swordsman"},
	{"apply-to", "unit-norse-heroic-swordsman"}
)

DefineModifier("upgrade-faction-geat-tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"},
	{"apply-to", "unit-norse-veteran-swordsman"},
	{"apply-to", "unit-norse-heroic-swordsman"}
)

DefineModifier("upgrade-faction-sitone-tribe",
	{"Accuracy", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade_faction_swedish_tribe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-faction-denmark",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"},
	{"apply-to", "unit-norse-veteran-swordsman"},
	{"apply-to", "unit-norse-heroic-swordsman"}
)

DefineModifier("upgrade-faction-gautland",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"},
	{"apply-to", "unit-norse-veteran-swordsman"},
	{"apply-to", "unit-norse-heroic-swordsman"}
)

DefineModifier("upgrade-faction-sweden",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineDependency("upgrade_faction_danish_tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-geat-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade-faction-sitone-tribe",
	{"upgrade_ironworking"}
)

DefineDependency("upgrade_faction_swedish_tribe",
	{"upgrade_ironworking"}
)
