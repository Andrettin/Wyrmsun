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
--      (c) Copyright 2015-2022 by Andrettin
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

DefineFaction("belgae-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Belgae Tribe",
	Adjective = "Belgae",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "purple"
})

DefineFaction("brigantes-tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Brigantes Tribe",
	Adjective = "Brigantes",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "pink"
})

DefineFaction("caledonii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Caledonii Tribe",
	Adjective = "Caledonii",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "brown"
})

DefineFaction("cantii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Cantii Tribe",
	Adjective = "Cantii",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "brown"
})

DefineFaction("coritani-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Coritani Tribe",
	Adjective = "Coritani",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "yellow"
})

DefineFaction("damnii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Damnii Tribe",
	Adjective = "Damnii",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "pink"
})

DefineFaction("demetae-tribe", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Name = "Demetae Tribe",
	Adjective = "Demetae",
	Civilization = "briton",
	Type = "tribe",
	-- the Demetae gave origin to Dyfed, which was a Welsh principality
	Color = "red"
})

DefineFaction("dumnonii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Dumnonii Tribe",
	Adjective = "Dumnonii",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "violet"
})

DefineFaction("iceni-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Iceni Tribe",
	Adjective = "Iceni",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "cyan"
})

DefineFaction("ordovices-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Ordovices Tribe",
	Adjective = "Ordovices",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "pink"
})

DefineFaction("otalini-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Otalini Tribe",
	Adjective = "Otalini",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "purple"
})

DefineFaction("pict-tribe", {
	Name = "Pict Tribe",
	Adjective = "Pict",
	Civilization = "briton",
	Type = "tribe",
	Color = "cyan"
})

DefineFaction("regni-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Regni Tribe",
	Adjective = "Regni",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "green"
})

DefineFaction("selgovae-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Selgovae Tribe",
	Adjective = "Selgovae",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "white"
})

DefineFaction("sovantae-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Sovantae Tribe",
	Adjective = "Sovantae",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "blue"
})

DefineFaction("silures-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Silures Tribe",
	Adjective = "Silures",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "red"
})

DefineFaction("trinobantes-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Trinobantes Tribe",
	Adjective = "Trinobantes",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Color = "orange"
})

-- Polities

DefineFaction("pictland", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	Name = "Pictland",
	Adjective = "Pict",
	Civilization = "briton",
	Type = "polity",
	Color = "black",
	DefaultTier = "kingdom"
})

DefineFaction("strathclyde", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 85, 87.
	Name = "Strathclyde",
	Adjective = "Strathclydian",
	Civilization = "briton",
	Type = "polity",
	Color = "brown",
	DefaultTier = "kingdom"
})
