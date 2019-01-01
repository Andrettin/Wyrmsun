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
--      (c) Copyright 2017-2019 by Andrettin
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

DefinePredependency("unit-norse-swordsman",
	{"upgrade-norse-civilization"}
)

DefineDependency("unit-norse-longship",
	{"unit-norse-smithy", "unit-norse-lumber-mill", "upgrade-engineering"},
	"or", {"unit-teuton-smithy", "unit-teuton-lumber-mill", "upgrade-engineering"}
)

DefinePredependency("unit-norse-town-hall",
	{"upgrade-norse-civilization"}
)

DefinePredependency("unit-norse-farm",
	{"upgrade-norse-civilization"}
)

DefinePredependency("unit-norse-barracks",
	{"upgrade-norse-civilization"}
)

DefinePredependency("unit-norse-lumber-mill",
	{"upgrade-norse-civilization"}
)

DefinePredependency("unit-norse-smithy",
	{"upgrade-norse-civilization"}
)

DefinePredependency("unit-norse-temple",
	{"upgrade-norse-civilization"}
)

DefineDependency("unit-norse-temple",
	{"unit-norse-lumber-mill"}
)

DefinePredependency("unit-norse-dock",
	{"upgrade-norse-civilization"}
)

DefineDependency("unit-norse-dock",
	{"unit-norse-lumber-mill"}
)

DefinePredependency("unit-norse-market",
	{"upgrade-norse-civilization"}
)

DefineDependency("unit-norse-market",
	{"unit-norse-lumber-mill"}
)

DefinePredependency("unit-norse-watch-tower",
	{"upgrade-norse-civilization"}
)
