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
--      (c) Copyright 2015-2020 by Andrettin
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
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"purple"}
})

DefineFaction("brigantes-tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Brigantes Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"pink"}
})

DefineFaction("caledonii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Caledonii Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("cantii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Cantii Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("coritani-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Coritani Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("damnii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Damnii Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"pink"}
})

DefineFaction("demetae-tribe", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Name = "Demetae Tribe",
	Civilization = "briton",
	Type = "tribe",
	-- the Demetae gave origin to Dyfed, which was a Welsh principality
	Colors = {"red"}
})

DefineFaction("dumnonii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Dumnonii Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"violet"}
})

DefineFaction("iceni-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Iceni Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"cyan"}
})

DefineFaction("ordovices-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Ordovices Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"pink"}
})

DefineFaction("otalini-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Otalini Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"purple"}
})

DefineFaction("pict-tribe", {
	Name = "Pict Tribe",
	Civilization = "briton",
	Type = "tribe",
	Colors = {"cyan"}
})

DefineFaction("regni-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Regni Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("selgovae-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Selgovae Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"white"}
})

DefineFaction("sovantae-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Sovantae Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("silures-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Silures Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"red"}
})

DefineFaction("trinobantes-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Trinobantes Tribe",
	Civilization = "briton", -- correct?
	Type = "tribe",
	Colors = {"orange"}
})

-- Polities

DefineFaction("pictland", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	Name = "Pictland",
	Civilization = "briton",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "kingdom"
})

DefineFaction("strathclyde", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 85, 87.
	Name = "Strathclyde",
	Civilization = "briton",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "kingdom"
})
