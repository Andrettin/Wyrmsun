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

DefineFaction("Aequian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "teal",
	SecondaryColor = "teal"
})

DefineFaction("Elymian Tribe", {
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Color = "yellow",
	SecondaryColor = "red"
})

DefineFaction("Frentanian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "orange",
	SecondaryColor = "orange"
})

DefineFaction("Iapygian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "teal",
	SecondaryColor = "teal"
})

DefineFaction("Latin Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "yellow",
	DevelopsTo = {"Rome"}
})

DefineFaction("Marsian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "brown",
	SecondaryColor = "brown"
})

DefineFaction("Messapian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})

DefineFaction("Oenotrian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "blue"
})

DefineFaction("Picentian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})

DefineFaction("Sabellian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "white",
	SecondaryColor = "white"
})

DefineFaction("Sabine Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "blue",
	SecondaryColor = "blue"
})

DefineFaction("Samnite Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "yellow",
	SecondaryColor = "yellow"
})

DefineFaction("Sicanian Tribe", {
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Color = "yellow",
	SecondaryColor = "red"
})

DefineFaction("Sicel Tribe", {
	Civilization = "latin", -- were they actually an Italic people?
	Type = "tribe",
	Color = "red",
	SecondaryColor = "yellow"
})

DefineFaction("Umbrian Tribe", {
	Civilization = "latin",
	Type = "tribe",
	Color = "pink",
	SecondaryColor = "pink"
})

DefineFaction("Venetian Tribe", {
	Civilization = "latin", -- is not correct, but they could be reasonably close to justify it for game purposes
	Type = "tribe",
	Color = "teal",
	SecondaryColor = "teal"
})

-- polities

DefineFaction("France", {
	Civilization = "latin",
	Type = "polity",
	Color = "blue",
	SecondaryColor = "white",
	Titles = {
		"monarchy", "Kingdom",
		"republic", "Republic"
	}
})

DefineFaction("Moldavia", {
	Civilization = "latin",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "brown",
	Titles = {
		"monarchy", "Principality"
	}
})

DefineFaction("Portugal", {
	Civilization = "latin",
	Type = "polity",
	Color = "green",
	SecondaryColor = "red",
	Titles = {
		"monarchy", "Kingdom",
		"republic", "Republic"
	}
})

DefineFaction("Rome", {
	Civilization = "latin",
	Type = "polity",
	Color = "red",
	SecondaryColor = "yellow",
	Titles = {
		"monarchy", "Empire",
		"republic", "Republic"
	}
})

DefineFaction("Savoy", {
	Civilization = "latin",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "brown",
	Titles = {
		"monarchy", "Duchy"
	}
})

DefineFaction("Sicily", {
	Civilization = "latin",
	Type = "polity",
	Color = "green",
	SecondaryColor = "green",
	Titles = {
		"monarchy", "Duchy"
	}
})

DefineFaction("Spain", {
	Civilization = "latin",
	Type = "polity",
	Color = "yellow",
	SecondaryColor = "red",
	Titles = {
		"monarchy", "Kingdom",
		"republic", "Republic"
	}
})

DefineFaction("Transylvania", {
	Civilization = "latin",
	Type = "polity",
	Color = "cyan",
	SecondaryColor = "cyan",
	Titles = {
		"monarchy", "Principality"
	}
})

DefineFaction("Venice", {
	Civilization = "latin",
	Type = "polity",
	Color = "red",
	SecondaryColor = "red",
	Titles = {
		"republic", "Republic"
	}
})

DefineFaction("Wallachia", {
	Civilization = "latin",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "brown",
	Titles = {
		"monarchy", "Principality"
	}
})
