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
--      (c) Copyright 2017-2018 by Andrettin
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

DefineFaction("florence", {
	Name = "Florence",
	Civilization = "italian",
	Type = "polity",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("genoa", {
	Name = "Genoa",
	Civilization = "italian",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "duchy"
})

DefineFaction("italy", {
	Name = "Italy",
	Civilization = "italian",
	Type = "polity",
	Colors = {"green", "red"},
	DefaultTier = "kingdom"
})

DefineFaction("milan", {
	Name = "Milan",
	Civilization = "italian",
	Type = "polity",
	Colors = {"orange"},
	DefaultTier = "duchy"
})

DefineFaction("modena", {
	Name = "Modena",
	Civilization = "italian",
	Type = "polity",
	Colors = {"yellow"},
	DefaultTier = "duchy"
})

DefineFaction("papal-states", {
	Name = "Papal States",
	Civilization = "italian",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "kingdom",
	HistoricalCapitals = {
		0, "rome"
	}
})

DefineFaction("parma", {
	Name = "Parma",
	Civilization = "italian",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "duchy"
})

DefineFaction("sardinia", {
	Name = "Sardinia",
	Civilization = "italian",
	Type = "polity",
	Colors = {"yellow"},
	DefaultTier = "kingdom"
})

DefineFaction("savoy", {
	Name = "Savoy",
	Civilization = "italian",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "duchy",
	Adjective = "Savoyard"
})

DefineFaction("sicily", {
	Name = "Sicily",
	Civilization = "italian",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "duchy"
})

DefineFaction("siena", {
	Name = "Siena",
	Civilization = "italian",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "duchy"
})

DefineFaction("tuscany", {
	Name = "Tuscany",
	Civilization = "italian",
	Type = "polity",
	Colors = {"orange"},
	DefaultTier = "grand-duchy"
})

DefineFaction("venice", {
	Name = "Venice",
	Civilization = "italian",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "duchy", -- Venice was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	HistoricalGovernmentTypes = {
		919, "monarchy", -- Venice was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "republic" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	}
})
