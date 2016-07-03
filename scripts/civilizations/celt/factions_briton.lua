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

DefineFaction("Belgae Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
--	Language = "welsh", -- correct?
	Colors = {"purple"}
})

DefineFaction("Brigantes Tribe", { -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "celt", -- correct?
	Type = "tribe",
--	Language = "welsh", -- correct?
	Colors = {"pink"}
})

DefineFaction("Cantii Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
--	Language = "welsh", -- correct?
	Colors = {"brown"}
})

DefineFaction("Coritani Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
--	Language = "welsh", -- correct?
	Colors = {"yellow"}
})

DefineFaction("Demetae Tribe", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Civilization = "celt",
	Type = "tribe",
--	Language = "welsh", -- the Demetae gave origin to Dyfed, which was a Welsh principality
	Colors = {"red"},
	DevelopsTo = {"Dyfed"} -- the Demetae gave origin to Dyfed
})

DefineFaction("Dumnonii Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
--	Language = "welsh", -- correct?
	Colors = {"violet"}
})

DefineFaction("Iceni Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
--	Language = "welsh", -- correct?
	Colors = {"cyan"}
})

DefineFaction("Ordovices Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
--	Language = "welsh", -- correct?
	Colors = {"pink"}
})

DefineFaction("Regni Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
--	Language = "welsh", -- correct?
	Colors = {"green"}
})

DefineFaction("Silures Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
--	Language = "welsh", -- correct?
	Colors = {"red"}
})

DefineFaction("Trinobantes Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Civilization = "celt", -- correct?
	Type = "tribe",
--	Language = "welsh", -- correct?
	Colors = {"orange"}
})

-- Polities

DefineFaction("Deheubarth", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Civilization = "celt",
	Type = "polity",
--	Language = "welsh", -- it was a Welsh kingdom
	Colors = {"black"},
	DefaultTier = "kingdom"
})

DefineFaction("Dyfed", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 9, 117.
	Civilization = "celt",
	Type = "polity",
--	Language = "welsh", -- it was a Welsh principality
	Colors = {"red"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Principality"
	}
})

DefineFaction("Elmet", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Civilization = "celt",
	Type = "polity",
--	Language = "welsh", -- it was a Briton kingdom
	Colors = {"teal"},
	DefaultTier = "kingdom"
})

DefineFaction("Gwent Is Coed", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 29.
	Civilization = "celt",
	Type = "polity",
--	Language = "welsh", -- it was a Welsh lordship
	Colors = {"green"},
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	}
})

DefineFaction("Gwynedd", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Civilization = "celt",
	Type = "polity",
--	Language = "welsh", -- it was a Briton kingdom
	Colors = {"blue"},
	DefaultTier = "kingdom"
})

DefineFaction("Powys", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
	Civilization = "celt",
	Type = "polity",
--	Language = "welsh", -- it was a Briton kingdom
	Colors = {"green"},
	DefaultTier = "kingdom"
})

DefineFaction("Strathclyde", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 85, 87.
	Civilization = "celt",
	Type = "polity",
--	Language = "welsh", -- it was a Briton kingdom
	Colors = {"brown"},
	DefaultTier = "kingdom"
})
