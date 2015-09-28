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

DefineFaction("Burgundian Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Color = "brown",
	SecondaryColor = "brown",
	DevelopsTo = {"Burgundy"}
})

DefineFaction("Goth Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red",
	DevelopsTo = {"Gothia"}
})

DefineFaction("Herulian Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Color = "green",
	SecondaryColor = "green"
})

DefineFaction("Ostrogoth Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Color = "red",
	SecondaryColor = "red",
	DevelopsTo = {"Gothia"}
})

DefineFaction("Rugian Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Color = "red", -- change to a better one?
	SecondaryColor = "orange"
})

DefineFaction("Vandal Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Color = "cyan",
	SecondaryColor = "blue",
	DevelopsTo = {"Vandalia"}
})

DefineFaction("Visigoth Tribe", {
	Civilization = "goth",
	Type = "tribe",
	Color = "pink",
	SecondaryColor = "pink",
	DevelopsTo = {"Gothia"}
})

-- polities

DefineFaction("Burgundy", {
	Civilization = "goth",
	Type = "polity",
	Color = "brown",
	SecondaryColor = "brown",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Gothia", {
	Civilization = "goth",
	Type = "polity",
	Color = "red",
	SecondaryColor = "red",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Vandalia", {
	Civilization = "goth",
	Type = "polity",
	Color = "cyan",
	SecondaryColor = "blue",
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})
