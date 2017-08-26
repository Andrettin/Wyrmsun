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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineUpgrade("upgrade-work-de-excidio-et-conquestu-britanniae", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 2.
	Name = "De Excidio et Conquestu Britanniae",
	Work = "book",
	Description = "This book describes the conquest of Britain by Angles and Saxons, claiming that it happened due to the wickedness of Briton rulers, and urges them to repent to God.",
	Year = 547 -- written a bit before 547
})

DefineUpgrade("upgrade-work-pedair-cainc-y-mabinogi", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 100-101.
	Name = "The Four Branches of the Mabinogi",
	Work = "book"
})

DefineModifier("upgrade-work-de-excidio-et-conquestu-britanniae",
	{"KnowledgeWarfare", 4},
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-pedair-cainc-y-mabinogi",
	{"KnowledgeWarfare", 3},
	{"KnowledgeMagic", 2}
)

DefineDependency("upgrade-work-de-excidio-et-conquestu-britanniae",
	{"upgrade-celt-civilization", "unit-teuton-temple", "upgrade-deity-christian-god"}
)

DefineDependency("upgrade-work-pedair-cainc-y-mabinogi",
	{"upgrade-celt-civilization", "unit-teuton-temple"}
)
