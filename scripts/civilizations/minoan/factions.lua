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
--      (c) Copyright 2015 by Andrettin
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

DefineFaction("minoan-tribe", {
	Name = "Minoan Tribe",
	Civilization = "minoan",
	Type = "tribe",
	Colors = {"yellow"},
	DevelopsTo = {"crete"}
})

DefineFaction("impressedware-tribe", {
	Name = "Impressedware Tribe",
	Civilization = "minoan", -- were they really culturally related to the Minoans? At least Minoan culture is a better fit for this pre-Indo-European culture than Basque, since they lived on the Aegean
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("lepenskivir-tribe", { -- Lepenski Vir culture; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 175.
	Name = "Lepenskivir Tribe",
	Civilization = "minoan", -- not actually Minoan, but a pre-Indo-European people as well
	Type = "tribe",
	Colors = {"purple"}
})

DefineFaction("paintedware-tribe", {
	Name = "paintedware-tribe",
	Civilization = "minoan", -- were they really culturally related to the Minoans? At least Minoan culture is a better fit for this pre-Indo-European culture than Basque, since they lived in the Balkans (closer to Crete than to the European Atlantic shores)
	Type = "tribe",
	Colors = {"orange"}
})

DefineFaction("starcevo-tribe", { -- Starčevo culture; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, pp. 177-178.
	Name = "Starcevo Tribe",
	Civilization = "minoan", -- not actually Minoan, but a pre-Indo-European people as well
	Type = "tribe",
	Colors = {"black"}
	-- the Starčevo people possessed knowledge of farming and pottery c. 6000 BC
})

-- polities

DefineFaction("crete", { -- Minoans
	Name = "Crete",
	Civilization = "minoan",
	Type = "polity",
	Colors = {"yellow"},
	DefaultTier = "kingdom",
	HistoricalTechnologies = {
		"upgrade-teuton-writing", -2000, -- Linear A and Linear B tablets found in Crete belonging to the period between 2000 and 1400 BC; Source: "Atlas de História Mundial", 2001, p. 67.
		"upgrade-teuton-masonry", -1900 -- Beginning of the age of the first Minoan palaces around 1900 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	}
})
