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
--      (c) Copyright 2016 by Andrettin
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

DefineFaction("Abasgi Tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("Alan Tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"purple"}
})

DefineFaction("Alazone Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"orange"}
})

DefineFaction("Aorsi Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"violet"}
})

DefineFaction("Heniochi Tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"violet"}
})

DefineFaction("Iazyge Tribe", {
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"violet"},
	HistoricalDiplomacyStates = {
		171, "latin", "Rome", "war", -- the Iazyges entered conflict with the Romans in (apparently) 171; Source: "Ancient Warfare VII.6", 2013, pp. 7-8.
		175, "latin", "Rome", "peace" -- in 175 the Romans defeated the Iazyges and forced them to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
	}
})

DefineFaction("Navari Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("Roxolani Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"red"}
})

DefineFaction("Sarmatian Tribe", {
	Civilization = "persian",
	Type = "tribe",
	Colors = {"red"}
})

DefineFaction("Scythian Tribe", {
	Civilization = "persian",
	Type = "tribe",
	Colors = {"green"}
})

DefineFaction("Sindi Tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Civilization = "persian", -- accurate?
	Type = "tribe",
	Colors = {"white"}
})

DefineFaction("Parthia", {
	Civilization = "persian",
	Type = "polity",
	Colors = {"purple"},
	DefaultTier = "kingdom",
	HistoricalCapitals = {
--		161, "Mesopotamia" -- Ctesiphon was the capital of Parthia in 161; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalDiplomacyStates = {
		161, "greek", "Armenia", "war", -- in the autumn of 161 Parthia invaded Armenia, a vassal state of Rome; Source: "Ancient Warfare VII.6", 2013, p. 6.
		161, "latin", "Rome", "war"
	}
})

DefineFaction("Persia", {
	Civilization = "persian",
	Type = "polity",
	Colors = {"yellow", "green"},
	DefaultTier = "kingdom"
})

-- Non-Playable

DefineFaction("Agraei Tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Civilization = "persian", -- should be Arabic?
	Type = "tribe",
	Colors = {"yellow"},
	Playable = false
})

DefineFaction("Arab Tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Civilization = "persian", -- should be Arabic
	Type = "tribe",
	Colors = {"green"},
	Playable = false
})

DefineFaction("Gaetuli Tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Civilization = "persian", -- should be Berber?
	Type = "tribe",
	Colors = {"black"},
	Playable = false
})

DefineFaction("Garamantes Tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Civilization = "persian", -- should be Berber?
	Type = "tribe",
	Colors = {"yellow"},
	Playable = false
})

DefineFaction("Mauri Tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Civilization = "persian", -- should be Berber?
	Type = "tribe",
	Colors = {"green"},
	Playable = false
})

DefineFaction("Musulamii Tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Civilization = "persian", -- should be Berber?
	Type = "tribe",
	Colors = {"brown"},
	Playable = false
})

DefineFaction("Nabataei Tribe", { -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	Civilization = "persian", -- should be Arabic?
	Type = "tribe",
	Colors = {"black"},
	Playable = false
})
