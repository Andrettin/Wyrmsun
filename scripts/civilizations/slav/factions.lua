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

DefineFaction("budini-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Budini Tribe",
	Civilization = "slav", -- accurate?
	Type = "tribe",
	Colors = {"blue"}
})

DefineFaction("venedae-tribe", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	Name = "Venedae Tribe",
	Civilization = "slav",
	Type = "tribe",
	Colors = {"yellow"}
})

DefineFaction("bohemia", {
	Name = "Bohemia",
	Civilization = "slav",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "duchy",
	HistoricalTiers = {
		1086, "kingdom" -- Henry IV elevated Bohemia to a kingdom in 1086; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 621.
	},
	HistoricalDiplomacyStates = {
		1039, "hungary", "alliance" -- Duke Břetislav I of Bohemia made an alliance with King Peter of Hungaryin 1039; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 619.
	}
})

DefineFaction("croatia", {
	Name = "Croatia",
	Civilization = "slav",
	Type = "polity",
	Colors = {"blue", "red"},
	DefaultTier = "kingdom"
})

DefineFaction("moravia", {
	Name = "Moravia",
	Civilization = "slav",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "duchy",
	HistoricalDiplomacyStates = {
		874, "bohemia", "overlord", -- The Bohemian duke Bořivoj recognized the overlorship of Svatopluk of Moravia in 874; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		895, "bohemia", "peace" -- The sons of Bořivoj, Spytihněv and Vratislav, recognized German overlordship over Bohemia in 895, abandoning Moravian suzerainty; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
	}
})

DefineFaction("muscovy", {
	Name = "Muscovy",
	Civilization = "slav",
	Type = "polity",
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

DefineFaction("poland", {
	Name = "Poland",
	Civilization = "slav",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "kingdom",
	Icon = "icon-flag-five-white-birds-on-red"
})

DefineFaction("poland-lithuania", {
	Name = "Poland-Lithuania",
	Civilization = "slav",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "kingdom",
	Icon = "icon-flag-five-white-birds-on-red"
})

DefineFaction("russia", {
	Name = "Russia",
	Civilization = "slav",
	Type = "polity",
	Colors = {"blue", "red"},
	DefaultTier = "empire",
	HistoricalUpgrades = {
		1861, "upgrade-serfdom", false, -- serfdom was abolished in Russia in 1861; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 13.
		1861, "upgrade-free-workers", true
	}
})

DefineFaction("serbia", {
	Name = "Serbia",
	Civilization = "slav",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "duchy", "Principality"
	}
})
