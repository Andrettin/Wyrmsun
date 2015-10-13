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

-- tribes

DefineFaction("Chaoni Tribe", {
	Civilization = "greek",
	Type = "tribe",
	Color = "yellow",
	SecondaryColor = "yellow",
	DevelopsTo = {"Epirus"}
})

DefineFaction("Dolopes Tribe", {
	Civilization = "greek",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})

-- polities

DefineFaction("Argos", {
	Civilization = "greek",
	Type = "polity",
	Color = "green",
	SecondaryColor = "green",
	DefaultTier = "county",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	}
})

DefineFaction("Athens", {
	Civilization = "greek",
	Type = "polity",
	Color = "red",
	SecondaryColor = "red",
	DefaultTier = "county",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	}
})

DefineFaction("Cimmerian Bosphorus", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "greek", -- accurate?
	Type = "polity",
	Color = "green",
	SecondaryColor = "green",
	DefaultTier = "kingdom" -- Kingdom of the Cimmerian Bosphorus
})

DefineFaction("Corinth", {
	Civilization = "greek",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black",
	DefaultTier = "county",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	}
})

DefineFaction("Epirus", {
	Civilization = "greek",
	Type = "polity",
	Color = "yellow",
	SecondaryColor = "yellow",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Krete", {
	Civilization = "greek",
	Type = "polity",
	Color = "yellow",
	SecondaryColor = "yellow",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Macedon", {
	Civilization = "greek",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "red",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Mycenae", {
	Civilization = "greek",
	Type = "polity",
	Color = "orange",
	SecondaryColor = "orange",
	DefaultTier = "county",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	}
})

DefineFaction("Sparta", {
	Civilization = "greek",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "brown",
	DefaultTier = "county",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	}
})

DefineFaction("Thebes", {
	Civilization = "greek",
	Type = "polity",
	Color = "blue",
	SecondaryColor = "blue",
	DefaultTier = "county",
	Titles = {
		"monarchy", "county", "City-State",
		"republic", "county", "City-State"
	}
})

DefineFaction("Thrace", {
	Civilization = "greek",
	Type = "polity",
	Color = "orange",
	SecondaryColor = "orange",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})
