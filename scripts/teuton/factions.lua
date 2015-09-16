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

DefineFaction("Alamanni Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "blue",
	DevelopsTo = {"Switzerland"}
})

DefineFaction("Bavarian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "cyan",
	SecondaryColor = "white",
	DevelopsTo = {"Austria", "Bavaria"}
})

DefineFaction("Burgundian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "brown",
	SecondaryColor = "brown",
	Playable = false
})

DefineFaction("Dane Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "white",
	Playable = false
})

DefineFaction("Frank Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "orange",
	DevelopsTo = {"Francia", "Netherlands"}
})

DefineFaction("Frisian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "violet", -- change to a better one?
	SecondaryColor = "purple"
})

DefineFaction("Goth Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red",
	Playable = false
})

DefineFaction("Jute Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "white",
	DevelopsTo = {"Jutland"}
})

DefineFaction("Lombard Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})

DefineFaction("Marcomanni Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "orange", -- change to a better one?
	SecondaryColor = "red",
	DevelopsTo = {"Austria", "Bavaria", "Galicia"}
})

DefineFaction("Ostrogoth Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red",
	Playable = false
})

DefineFaction("Rugian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "red", -- change to a better one?
	SecondaryColor = "orange",
	Playable = false
})

DefineFaction("Saxon Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "pink",
	SecondaryColor = "pink",
	DevelopsTo = {"Brandenburg", "England", "Prussia", "Saxony", "Scotland", "Westphalia"}
})

DefineFaction("Suebi Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "black",
	SecondaryColor = "black",
	DevelopsTo = {"Austria", "Bavaria", "Galicia"}
})

DefineFaction("Swede Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "yellow",
	Playable = false
})

--	"faction", {
--		"name", "Thuringian Tribe",
--		Type = "tribe",
--		Color = "yellow",
--		SecondaryColor = "yellow"
--	},

DefineFaction("Vandal Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "cyan",
	SecondaryColor = "blue",
	Playable = false
})

DefineFaction("Visigoth Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Color = "pink",
	SecondaryColor = "pink",
	Playable = false
})

-- Teuton polities

DefineFaction("Austria", {
	Civilization = "teuton",
	Type = "polity",
	Color = "white",
	SecondaryColor = "red",
	Titles = {
		"monarchy", "Duchy" -- later Archduchy
	}
})

DefineFaction("Bavaria", {
	Civilization = "teuton",
	Type = "polity",
	Color = "cyan",
	SecondaryColor = "white",
	Titles = {
		"monarchy", "Duchy"
	}
})

DefineFaction("Brandenburg", {
	Civilization = "teuton",
	Type = "polity",
	Color = "blue",
	SecondaryColor = "blue",
	Titles = {
		"monarchy", "Margravate"
	}
})

DefineFaction("Burgundy", {
	Civilization = "teuton",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "brown",
	Playable = false,
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Denmark", {
	Civilization = "teuton",
	Type = "polity",
	Color = "red",
	SecondaryColor = "white",
	Playable = false,
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("England", {
	Civilization = "teuton",
	Type = "polity",
	Color = "red",
	SecondaryColor = "white",
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Francia", {
	Civilization = "teuton",
	Type = "polity",
	Color = "green",
	SecondaryColor = "orange",
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Galicia", { -- Suebi kingdom of Galicia
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black",
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Jutland", {
	Civilization = "teuton",
	Type = "polity",
	Color = "red",
	SecondaryColor = "white",
	Titles = {
		"monarchy", "Duchy"
	}
})

DefineFaction("Netherlands", {
	Civilization = "teuton",
	Type = "polity",
	Color = "orange",
	SecondaryColor = "blue",
	Titles = {
		"republic", "Republic"
	}
})

DefineFaction("Norway", {
	Civilization = "teuton",
	Type = "polity",
	Color = "blue",
	SecondaryColor = "red",
	Playable = false,
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Prussia", {
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	SecondaryColor = "white",
	Titles = {
		"monarchy", "Duchy"
	}
})

DefineFaction("Saxony", {
	Civilization = "teuton",
	Type = "polity",
	Color = "pink",
	SecondaryColor = "pink",
	Titles = {
		"monarchy", "Duchy"
	}
})

DefineFaction("Scotland", {
	Civilization = "teuton",
	Type = "polity",
	Color = "blue",
	SecondaryColor = "white",
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Sweden", {
	Civilization = "teuton",
	Type = "polity",
	Color = "blue",
	SecondaryColor = "yellow",
	Playable = false,
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Switzerland", {
	Civilization = "teuton",
	Type = "polity",
	Color = "red",
	SecondaryColor = "white",
	Titles = {
		"republic", "Confederation"
	}
})

DefineFaction("Westphalia", {
	Civilization = "teuton",
	Type = "polity",
	Color = "black",
	SecondaryColor = "black",
	Titles = {
		"monarchy", "Duchy"
	}
})
-- Non-Playable Polities

DefineFaction("Crimea", {
	Civilization = "teuton",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "brown",
	Playable = false,
	Titles = {
		"monarchy", "Khanate"
	}
})

DefineFaction("Croatia", {
	Civilization = "teuton",
	Type = "polity",
	Color = "blue",
	SecondaryColor = "red",
	Playable = false,
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Hungary", {
	Civilization = "teuton",
	Type = "polity",
	Color = "green",
	SecondaryColor = "green",
	Playable = false,
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Muscovy", {
	Civilization = "teuton",
	Type = "polity",
	Color = "red",
	SecondaryColor = "red",
	Playable = false,
	Titles = {
		"monarchy", "Principality"
	}
})

DefineFaction("Poland", {
	Civilization = "teuton",
	Type = "polity",
	Color = "red",
	SecondaryColor = "white",
	Playable = false,
	Titles = {
		"monarchy", "Kingdom"
	}
})

DefineFaction("Russia", {
	Civilization = "teuton",
	Type = "polity",
	Color = "blue",
	SecondaryColor = "red",
	Playable = false,
	Titles = {
		"monarchy", "Empire"
	}
})

DefineFaction("Turkey", {
	Civilization = "teuton",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "brown",
	Playable = false,
	Titles = {
		"monarchy", "Empire"
	}
})
