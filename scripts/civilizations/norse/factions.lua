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

DefineFaction("Dane Tribe", {
	Civilization = "norse",
	Type = "tribe",
	Colors = {"red", "white"},
	DevelopsTo = {"Denmark"}
})

DefineFaction("Geat Tribe", {
	Civilization = "norse",
	Type = "tribe",
	Colors = {"teal"},
	DevelopsTo = {"Gautland"}
})

DefineFaction("Swede Tribe", {
	Civilization = "norse",
	Type = "tribe",
	Colors = {"blue", "yellow"},
	DevelopsTo = {"Sweden"}
})

-- polities

DefineFaction("Denmark", {
	Civilization = "norse",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Gautland", {
	Civilization = "norse",
	Type = "polity",
	Colors = {"teal"},
	DefaultTier = "kingdom"
})

DefineFaction("Holmgard", {
	Civilization = "norse",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "kingdom"
})

DefineFaction("Hordaland", {
	Civilization = "norse",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "kingdom",
	DevelopsTo = {"Norway"} -- allow Hordaland to become Norway if it unifies its territories
})

DefineFaction("Norway", {
	Civilization = "norse",
	Type = "polity",
	Colors = {"blue", "red"},
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})

DefineFaction("Orkney", { -- Earldom of Orkney
	Civilization = "norse",
	Type = "polity",
	Colors = {"yellow"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Earldom"
	},
	DevelopsTo = {"Norway"}
})

DefineFaction("Sweden", {
	Civilization = "norse",
	Type = "polity",
	Colors = {"blue", "yellow"},
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Kingdom"
	}
})
