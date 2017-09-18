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
--      (c) Copyright 2015-2017 by Andrettin
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

-- Polities

DefineFaction("deheubarth", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Name = "Deheubarth",
	Civilization = "welsh", -- it was a Welsh kingdom
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "kingdom"
})

DefineFaction("dyfed", { -- Welsh kingdom; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 9, 117.
	Name = "Dyfed",
	Civilization = "welsh",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "duchy",
	DevelopsFrom = {"demetae-tribe"}, -- the Demetae gave origin to Dyfed
	Titles = {
		"monarchy", "duchy", "Principality"
	}
})

DefineFaction("elmet", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Name = "Elmet",
	Civilization = "welsh",
	Type = "polity",
	Colors = {"teal"},
	DefaultTier = "kingdom"
})

DefineFaction("gwent-is-coed", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 29.
	Name = "Gwent Is Coed",
	Civilization = "welsh", -- it was a Welsh lordship
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "barony",
	Titles = {
		"monarchy", "barony", "Lordship"
	}
})

DefineFaction("gwynedd", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Name = "Gwynedd",
	Civilization = "welsh",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "kingdom"
})

DefineFaction("powys", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
	Name = "Powys",
	Civilization = "welsh",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "kingdom"
})
