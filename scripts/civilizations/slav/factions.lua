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

DefineFaction("Aestui Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "slav", -- actually they were apparently Baltic (this needs to be confirmed), but let's make them Slavic to not have too many NPC civilizations in the game
	Type = "tribe",
--	Language = "lithuanian",
	Colors = {"green"}
})

DefineFaction("Budini Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "slav", -- accurate?
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("Venedae Tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Civilization = "slav",
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("Bohemia", {
	Civilization = "slav",
	Type = "polity",
--	Language = "czech",
	Colors = {"red"},
	DefaultTier = "duchy",
	HistoricalTiers = {
		1086, "kingdom" -- Henry IV elevated Bohemia to a kingdom in 1086; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 621.
	},
	HistoricalDiplomacyStates = {
		1039, "magyar", "Hungary", "alliance" -- Duke Břetislav I of Bohemia made an alliance with King Peter of Hungaryin 1039; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 619.
	}
})

DefineFaction("Croatia", {
	Civilization = "slav",
	Type = "polity",
--	Language = "old-church-slavonic",
	Colors = {"blue", "red"},
	DefaultTier = "kingdom"
})

DefineFaction("Moravia", {
	Civilization = "slav",
	Type = "polity",
--	Language = "czech",
	Colors = {"brown"},
	DefaultTier = "duchy",
	HistoricalDiplomacyStates = {
		874, "slav", "Bohemia", "sovereign", -- The Bohemian duke Bořivoj recognized the overlorship of Svatopluk of Moravia in 874; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		895, "slav", "Bohemia", "peace" -- The sons of Bořivoj, Spytihněv and Vratislav, recognized German overlordship over Bohemia in 895, abandoning Moravian suzerainty; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
	}
})

DefineFaction("Muscovy", {
	Civilization = "slav",
	Type = "polity",
	Language = "russian",
	Colors = {"red"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Principality"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "duchy", "Prince",
		"head-of-state", "female", "monarchy", "duchy", "Princess"
	}
})

DefineFaction("Poland", {
	Civilization = "slav",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "kingdom"
})

DefineFaction("Russia", {
	Civilization = "slav",
	Type = "polity",
	Language = "russian",
	Colors = {"blue", "red"},
	DefaultTier = "empire"
})

DefineFaction("Serbia", {
	Civilization = "slav",
	Type = "polity",
--	Language = "old-church-slavonic",
	Colors = {"red"},
	DefaultTier = "kingdom"
})
