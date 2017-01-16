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
--      (c) Copyright 2015-2016 by Andrettin
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
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"purple"}
})

DefineFaction("brigantes-tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Brigantes Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"pink"}
})

DefineFaction("cantii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Cantii Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("coritani-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Coritani Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("demetae-tribe", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Name = "Demetae Tribe",
	Civilization = "celt",
	Type = "tribe",
	-- the Demetae gave origin to Dyfed, which was a Welsh principality
	Colors = {"red"},
	DevelopsTo = {"dyfed"} -- the Demetae gave origin to Dyfed
})

DefineFaction("dumnonii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Dumnonii Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"violet"}
})

DefineFaction("iceni-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Iceni Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"cyan"}
})

DefineFaction("ordovices-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Ordovices Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"pink"}
})

DefineFaction("regni-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Regni Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("silures-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Silures Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"red"}
})

DefineFaction("trinobantes-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Trinobantes Tribe",
	Civilization = "celt", -- correct?
	Type = "tribe",
	Colors = {"orange"}
})

-- Polities

DefineFaction("deheubarth", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Name = "Deheubarth",
	Civilization = "celt", -- it was a Welsh kingdom
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "kingdom"
})

DefineFaction("dyfed", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 9, 117.
	Name = "Dyfed",
	Civilization = "celt", -- it was a Welsh principality
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Principality"
	}
})

DefineFaction("elmet", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Name = "Elmet",
	Civilization = "celt", -- it was a Briton kingdom
	Type = "polity",
	Colors = {"teal"},
	DefaultTier = "kingdom"
})

DefineFaction("gwent-is-coed", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 29.
	Name = "Gwent Is Coed",
	Civilization = "celt", -- it was a Welsh lordship
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	}
})

DefineFaction("gwynedd", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Name = "Gwynedd",
	Civilization = "celt", -- it was a Briton kingdom
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "kingdom"
})

DefineFaction("powys", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
	Name = "Powys",
	Civilization = "celt", -- it was a Briton kingdom
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "kingdom"
})

DefineFaction("strathclyde", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 85, 87.
	Name = "Strathclyde",
	Civilization = "celt", -- it was a Briton kingdom
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "kingdom"
})
