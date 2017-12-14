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
--      (c) Copyright 2014-2017 by Andrettin
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

DefinePredependency("unit-germanic-town-hall",
	{"upgrade-germanic-civilization"}, "or", {"upgrade-celt-civilization"}
)

DefinePredependency("unit-germanic-farm",
	{"upgrade-germanic-civilization"}
)

DefinePredependency("unit-germanic-barracks",
	{"upgrade-germanic-civilization"}, "or", {"upgrade-celt-civilization"}
)

DefinePredependency("unit-germanic-carpenters-shop",
	{"upgrade-germanic-civilization"}, "or", {"upgrade-celt-civilization"}
)

DefinePredependency("unit-germanic-smithy",
	{"upgrade-germanic-civilization"}, "or", {"upgrade-celt-civilization"}
)

DefineDependency("unit-germanic-archer",
	{"unit-germanic-carpenters-shop"}, "or", {"upgrade-mercenary-company"}
)

DefinePredependency("unit-germanic-temple",
	{"upgrade-germanic-civilization"}, "or", {"upgrade-celt-civilization"}
)

DefineDependency("unit-germanic-temple",
	{"unit-germanic-carpenters-shop"}
)

DefinePredependency("unit-germanic-market",
	{"upgrade-germanic-civilization"}, "or", {"upgrade-celt-civilization"}
)

DefineDependency("unit-germanic-market",
	{"unit-germanic-carpenters-shop"}
)

DefineDependency("unit-germanic-priest",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}
)

DefinePredependency("unit-germanic-dock",
	{"upgrade-germanic-civilization"}, "or", {"upgrade-celt-civilization"}
)

DefineDependency("unit-germanic-dock",
	{"unit-germanic-carpenters-shop"}
)

DefineDependency("unit-germanic-transport-ship",
	{"unit-germanic-carpenters-shop"}, "or", {"upgrade-trading-company"}
)

DefineDependency("upgrade-teuton-civilization",
	{"upgrade-ironworking"}
)
