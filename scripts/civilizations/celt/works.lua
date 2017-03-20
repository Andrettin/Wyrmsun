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

DefineUpgrade("upgrade-work-pedair-cainc-y-mabinogi", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 100-101.
	Name = _("The Four Branches of the Mabinogi"),
	Work = "book"
})

DefineUpgrade("upgrade-work-de-mensura-orbis-terrae", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 40.
	Name = _("De Mensura Orbis Terrae"),
	Work = "book",
	Description = "In this cosmographical work, the author laments that the islands to the north of Great Britain, which had for 100 years been locations with a strong hermit presence, have now been emptied due to attacks from Norsemen..",
	Year = 825
	-- should probably have some other requirements, like any Norwegian province being Norse-cultured (or even better, the one from which those attackers actually were)
})

DefineModifier("upgrade-work-pedair-cainc-y-mabinogi",
	{"KnowledgeWarfare", 3},
	{"KnowledgeMagic", 2}
)

DefineDependency("upgrade-work-pedair-cainc-y-mabinogi",
	{"upgrade-celt-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-de-mensura-orbis-terrae",
	{"upgrade-celt-civilization"} -- could require a university building, when that is added to the game
)
