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
--      (c) Copyright 2015-2019 by Andrettin
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

DefineFaction("cauci-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Cauci Tribe",
	Civilization = "gael", -- correct?
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("darini-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Darini Tribe",
	Civilization = "gael", -- correct?
	Type = "tribe",
	Colors = {"brown"}
})

DefineFaction("gangani-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Gangani Tribe",
	Civilization = "gael", -- correct?
	Type = "tribe",
	Colors = {"black"}
})

DefineFaction("hibernii-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	Name = "Hibernii Tribe",
	Civilization = "gael", -- correct?
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("scot-tribe", {
	Name = "Scot Tribe",
	Civilization = "gael",
	Type = "tribe",
	Colors = {"brown"}
})

-- Polities

DefineFaction("argyll", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77, 86.
	Name = "Argyll",
	Civilization = "gael", -- founded by Irish settlers
	Type = "polity",
	Colors = {"purple"},
	DefaultTier = "kingdom"
})

DefineFaction("dalriada", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	Name = "Dalriada",
	Civilization = "gael", -- Scottish kingdom
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "kingdom"
})

DefineFaction("ireland", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	Name = "Ireland",
	Civilization = "gael",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "kingdom"
})

DefineFaction("meath", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
	Name = "Meath",
	Civilization = "gael", -- it was an Irish kingdom
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom"
})

DefineFaction("scotland-celtic", { -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	Name = "Scotland",
	Civilization = "gael",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "kingdom"
})
