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
--      (c) Copyright 2013-2022 by Andrettin
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

DefinePredependency("unit-dwarven-ballista-tower",
	{"upgrade_gunpowder", 0}
)

DefinePredependency("unit-dwarven-cannon-tower",
	{"upgrade_gunpowder"}
)

DefineDependency("unit-dwarven-cannon-tower",
	{"unit-dwarven-lumber-mill", "unit-dwarven-smithy", "upgrade-masonry", "upgrade-engineering", "upgrade_gunpowder"},
	"or", {"unit-dwarven-lumber-mill", "unit-brising-smithy", "upgrade-masonry", "upgrade-engineering", "upgrade_gunpowder"}
)

DefineDependency("unit-dwarven-witness",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}, "or", {"upgrade-deity-loki"}
)

DefinePredependency("unit-joruvellir-yale-rider",
	{"upgrade-faction-goldhoof-clan"}, "or", {"upgrade_faction_eikinskjaldi_clan"}, "or", {"upgrade_faction_joruvellir"}, "or", {"upgrade-faction-yawning-yales"}
)
