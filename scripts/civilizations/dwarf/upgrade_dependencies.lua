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
--      (c) Copyright 2013-2018 by Andrettin
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

DefinePredependency("unit-dwarven-axefighter",
	{"upgrade-dwarven-civilization", "upgrade-faction-surghan-mercenaries", 0}
)

DefinePredependency("unit-surghan-mercenary-axefighter",
	{"upgrade-faction-surghan-mercenaries"}
)

DefinePredependency("unit-dwarven-guard",
	{"upgrade-dwarven-civilization"}, "or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-dwarven-scout",
	{"upgrade-dwarven-civilization", "upgrade-faction-goldhoof-clan", 0, "upgrade-faction-eikinskjaldi-clan", 0, "upgrade-faction-joruvellir", 0, "upgrade-faction-yawning-yales", 0},
	"or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-scout",
	{"unit-dwarven-lumber-mill"}, "or", {"upgrade-mercenary-company"}
)

DefinePredependency("unit-joruvellir-scout",
	{"upgrade-faction-goldhoof-clan"},
	"or", {"upgrade-faction-eikinskjaldi-clan"},
	"or", {"upgrade-faction-joruvellir"},
	"or", {"upgrade-faction-yawning-yales"}
)

DefineDependency("unit-joruvellir-scout",
	{"unit-dwarven-lumber-mill"}, "or", {"upgrade-mercenary-company"}
)

DefinePredependency("unit-dwarven-thunderer",
	{"upgrade-dwarven-civilization"}, "or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-thunderer",
	{"unit-dwarven-smithy", "upgrade-gunpowder"}, "or", {"unit-brising-smithy", "upgrade-gunpowder"}, "or", {"upgrade-mercenary-company", "upgrade-gunpowder"}
)

DefineDependency("upgrade-dwarven-great-axe",
	{"upgrade-dwarven-broad-axe", "upgrade-ironworking"}
)

DefineDependency("upgrade-dwarven-pike",
	{"upgrade-dwarven-long-spear", "upgrade-ironworking"}
)

DefineDependency("upgrade-dwarven-shield-2",
	{"upgrade-dwarven-shield-1", "upgrade-ironworking"}
)

DefineDependency("upgrade-dwarven-bearded-throwing-axe",
	{"upgrade-dwarven-sharp-throwing-axe", "upgrade-ironworking"}
)

DefineDependency("upgrade-dwarven-ballista-bolt-1",
	{"unit-dwarven-lumber-mill", "upgrade-engineering"}, "or", {"upgrade-mercenary-company", "upgrade-engineering"}
)

DefineDependency("upgrade-dwarven-ballista-bolt-2",
	{"unit-dwarven-lumber-mill", "upgrade-dwarven-ballista-bolt-1", "upgrade-ironworking"}, "or", {"upgrade-mercenary-company", "upgrade-dwarven-ballista-bolt-1", "upgrade-ironworking"}
)

DefineDependency("unit-dwarven-stronghold",
	{"unit-dwarven-barracks", "upgrade-masonry"}, "or", {"unit-gnomish-barracks", "upgrade-masonry"}
)

DefineDependency("upgrade-dwarven-coinage",
	{"unit-dwarven-smithy"}, "or", {"unit-brising-smithy"}, "or", {"upgrade-mercenary-company"}
)

DefineDependency("upgrade-dwarven-alchemy",
	{"upgrade-philosophy", "upgrade-mathematics", "upgrade-ironworking"}
)

DefineDependency("unit-dwarven-guard-tower",
	{"unit-dwarven-lumber-mill", "upgrade-masonry"}
)

DefinePredependency("unit-dwarven-ballista-tower",
	{"upgrade-gunpowder", 0}
)

DefineDependency("unit-dwarven-ballista-tower",
	{"unit-dwarven-lumber-mill", "unit-dwarven-smithy", "upgrade-masonry", "upgrade-engineering"},
	"or", {"unit-dwarven-lumber-mill", "unit-brising-smithy", "upgrade-masonry", "upgrade-engineering"}
)

DefinePredependency("unit-dwarven-cannon-tower",
	{"upgrade-gunpowder"}
)

DefineDependency("unit-dwarven-cannon-tower",
	{"unit-dwarven-lumber-mill", "unit-dwarven-smithy", "upgrade-masonry", "upgrade-engineering", "upgrade-gunpowder"},
	"or", {"unit-dwarven-lumber-mill", "unit-brising-smithy", "upgrade-masonry", "upgrade-engineering", "upgrade-gunpowder"}
)

DefinePredependency("unit-dwarven-wall",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-wall",
	{"upgrade-masonry"}
)

DefinePredependency("unit-dwarven-ballista",
	{"upgrade-dwarven-civilization"}, "or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-ballista",
	{"unit-dwarven-smithy", "unit-dwarven-lumber-mill", "upgrade-engineering"},
	"or", {"unit-brising-smithy", "unit-dwarven-lumber-mill", "upgrade-engineering"},
	"or", {"upgrade-mercenary-company", "upgrade-engineering"}
)

DefinePredependency("unit-dwarven-yale-pen",
	{"upgrade-dwarven-civilization", "upgrade-faction-goldhoof-clan", 0, "upgrade-faction-eikinskjaldi-clan", 0, "upgrade-faction-joruvellir", 0, "upgrade-faction-yawning-yales", 0},
	"or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-yale-pen",
	{"unit-dwarven-lumber-mill"}
)

DefinePredependency("unit-joruvellir-yale-pen",
	{"upgrade-faction-goldhoof-clan"}, "or", {"upgrade-faction-eikinskjaldi-clan"}, "or", {"upgrade-faction-joruvellir"}, "or", {"upgrade-faction-yawning-yales"}
)

DefineDependency("unit-joruvellir-yale-pen",
	{"unit-dwarven-lumber-mill"}
)

DefinePredependency("unit-dwarven-yale-rider",
	{"upgrade-dwarven-civilization", "upgrade-faction-goldhoof-clan", 0, "upgrade-faction-eikinskjaldi-clan", 0, "upgrade-faction-joruvellir", 0, "upgrade-faction-yawning-yales", 0},
	"or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-yale-rider",
	{"unit-dwarven-smithy", "unit-dwarven-yale-pen"}, "or", {"unit-brising-smithy", "unit-dwarven-yale-pen"}, "or", {"upgrade-mercenary-company"}
)

DefinePredependency("unit-joruvellir-yale-rider",
	{"upgrade-faction-goldhoof-clan"},
	"or", {"upgrade-faction-eikinskjaldi-clan"},
	"or", {"upgrade-faction-joruvellir"},
	"or", {"upgrade-faction-yawning-yales"}
)

DefineDependency("unit-joruvellir-yale-rider",
	{"unit-dwarven-smithy", "unit-joruvellir-yale-pen"}, "or", {"upgrade-mercenary-company"}
)

DefinePredependency("unit-dwarven-town-hall",
	{"upgrade-dwarven-civilization"}
)

DefinePredependency("unit-dwarven-mushroom-farm",
	{"upgrade-dwarven-civilization"}
)

DefinePredependency("unit-dwarven-barracks",
	{"upgrade-dwarven-civilization"}
)

DefinePredependency("unit-dwarven-lumber-mill",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-dwarven-masons-shop",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-dwarven-temple",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-temple",
	{"unit-dwarven-lumber-mill"}
)

DefinePredependency("unit-dwarven-market",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-market",
	{"unit-dwarven-lumber-mill"}
)

DefinePredependency("unit-dwarven-academy",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-academy",
	{"upgrade-dwarven-runewriting"}
)

DefineDependency("unit-dwarven-witness",
	{"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}, "or", {"upgrade-deity-loki"}
)

DefinePredependency("unit-dwarven-dock",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-dock",
	{"unit-dwarven-lumber-mill"}
)

DefineDependency("unit-dwarven-transport-ship",
	{"unit-dwarven-lumber-mill"}, "or", {"upgrade-trading-company"}
)

DefineDependency("unit-dwarven-ballista-warship",
	{"unit-dwarven-smithy", "unit-dwarven-lumber-mill", "upgrade-engineering"},
	"or", {"unit-brising-smithy", "unit-dwarven-lumber-mill", "upgrade-engineering"}
)

DefinePredependency("unit-dwarven-gryphon-rider",
	{"upgrade-dwarven-civilization"}, "or", {"upgrade-gnomish-civilization"}
)

DefineDependency("unit-dwarven-gryphon-rider",
	{"unit-dwarven-stronghold", "unit-dwarven-lumber-mill"}, "or", {"upgrade-mercenary-company"}
)

DefinePredependency("unit-dwarven-miner",
	{"upgrade-faction-brising-clan", 0, "upgrade-faction-lyr", 0}
)

DefinePredependency("unit-brising-miner",
	{"upgrade-faction-brising-clan"}, "or", {"upgrade-faction-lyr"}
)

DefinePredependency("unit-dwarven-smithy",
	{"upgrade-dwarven-civilization", "upgrade-faction-brising-clan", 0, "upgrade-faction-lyr", 0},
	"or", {"upgrade-gnomish-civilization"}
)

DefinePredependency("unit-brising-smithy",
	{"upgrade-faction-brising-clan"}, "or", {"upgrade-faction-lyr"}
)

DefinePredependency("unit-dwarven-sentry-tower",
	{"upgrade-dwarven-civilization"},
	"or", {"upgrade-gnomish-civilization"}
)
