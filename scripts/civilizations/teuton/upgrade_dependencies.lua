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

DefineDependency("unit-teuton-archer",
	{"unit-teuton-lumber-mill"}, "or", {"upgrade-mercenary-company"}
)

DefineDependency("unit-teuton-gunpowder-infantry",
	{"unit-teuton-smithy", "upgrade-gunpowder"}, "or", {"upgrade-mercenary-company", "upgrade-gunpowder"}
)

DefineDependency("unit-teuton-guard-tower",
	{"unit-teuton-lumber-mill", "upgrade-teuton-masonry"}
)

DefineDependency("unit-teuton-wall",
	{"upgrade-teuton-masonry"}
)

DefineDependency("unit-teuton-catapult",
	{"unit-teuton-smithy", "unit-teuton-lumber-mill", "upgrade-engineering"}, "or", {"unit-latin-smithy", "unit-teuton-lumber-mill", "upgrade-engineering"}, "or", {"upgrade-mercenary-company", "upgrade-engineering"}
)

DefinePredependency("upgrade-teuton-spatha",
	{"upgrade-frankish-civilization", 0}
)

DefineDependency("upgrade-teuton-spatha",
	{"upgrade-germanic-broad-sword"}
)

DefinePredependency("upgrade-frank-spatha",
	{"upgrade-frankish-civilization"}
)

DefineDependency("upgrade-frank-spatha",
	{"upgrade-germanic-broad-sword"}
)

DefineDependency("upgrade-teuton-pike",
	{"upgrade-germanic-long-spear"}
)

DefineDependency("upgrade-teuton-iron-shield",
	{"upgrade-germanic-bronze-shield"}
)

DefineDependency("upgrade-teuton-bodkin-arrow",
	{"upgrade-germanic-barbed-arrow"}
)

DefineDependency("upgrade-teuton-catapult-projectile-1",
	{"unit-teuton-lumber-mill"}, "or", {"upgrade-mercenary-company"}
)

DefineDependency("upgrade-teuton-catapult-projectile-2",
	{"unit-teuton-lumber-mill", "upgrade-teuton-catapult-projectile-1"}, "or", {"upgrade-mercenary-company", "upgrade-teuton-catapult-projectile-1"}
)

DefineDependency("upgrade-teuton-iron-tipped-wood-plow",
	{"upgrade-germanic-wood-plow"}
)

DefineDependency("unit-teuton-stronghold",
	{"unit-teuton-barracks", "upgrade-teuton-masonry"}, "or", {"unit-latin-barracks", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-teuton-coinage",
	{"unit-teuton-smithy"}, "or", {"unit-latin-smithy"}, "or", {"upgrade-mercenary-company"}
)

DefineDependency("upgrade-teuton-alchemy",
	{"upgrade-philosophy", "upgrade-mathematics"}
)

DefinePredependency("unit-teuton-stables",
	{"upgrade-latin-civilization", 0}
)

DefineDependency("unit-teuton-stables",
	{"unit-teuton-lumber-mill"}
)

DefinePredependency("unit-teuton-swordsman",
	{"upgrade-suebi-civilization", 0, "upgrade-frankish-civilization", 0}
)

DefinePredependency("unit-teuton-spearman",
	{"upgrade-frankish-civilization", 0}
)

DefinePredependency("unit-teuton-ritter",
	{"upgrade-frankish-civilization", 0, "upgrade-gothic-civilization", 0}
)

DefineDependency("unit-teuton-ritter",
	{"unit-teuton-smithy", "unit-teuton-stables"}, "or", {"unit-latin-smithy", "unit-latin-stables"}, "or", {"upgrade-mercenary-company"}
)

DefinePredependency("unit-teuton-town-hall",
	{"upgrade-teuton-civilization", "upgrade-latin-civilization", 0}, "or", {"upgrade-suebi-civilization", "upgrade-latin-civilization", 0}, "or", {"upgrade-frankish-civilization", "upgrade-latin-civilization", 0}, "or", {"upgrade-anglo-saxon-civilization", "upgrade-latin-civilization", 0}, "or", {"upgrade-english-civilization", "upgrade-latin-civilization", 0}, "or", {"upgrade-gothic-civilization", "upgrade-latin-civilization", 0}
)

DefinePredependency("unit-teuton-farm",
	{"upgrade-latin-civilization", 0}
)

DefinePredependency("unit-teuton-barracks",
	{"upgrade-latin-civilization", 0}
)

DefinePredependency("unit-teuton-smithy",
	{"upgrade-latin-civilization", 0}
)

DefineDependency("unit-teuton-temple",
	{"unit-teuton-lumber-mill"}
)

DefineDependency("unit-teuton-market",
	{"unit-teuton-lumber-mill"}
)

DefineDependency("unit-teuton-university",
	{"upgrade-teuton-writing"}
)

DefineDependency("unit-teuton-priest",
	{"upgrade-deity-christian-god"}, "or", {"upgrade-deity-odin"}, "or", {"upgrade-deity-thor"}
)

DefineDependency("unit-teuton-dock",
	{"unit-teuton-lumber-mill"}
)

DefineDependency("unit-teuton-kogge",
	{"unit-teuton-lumber-mill"}, "or", {"upgrade-trading-company"}
)
