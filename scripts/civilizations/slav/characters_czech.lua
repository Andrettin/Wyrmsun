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

DefineCharacter("otakar-i-premysl", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 628.
	Name = "Otakar", -- King Otakar I of Bohemia
	FamilyName = "Premysl", -- "Přemysl"; Source: Alena Ježková, "77 Prague Legends", 2006, p. 36.
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- king
	Civilization = "slav",
	Date = 1198, -- reign began
	DeathDate = 1230, -- reign ended
	HistoricalTitles = {
		"head-of-state", 1198, 1230, "bohemia" -- king of Bohemia in 1198-1230
	}
})

DefineCharacter("agnes-premyslovna", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 36.
	Name = "Agnes",
	FamilyName = "Premyslovna", -- "Přemyslovna"
	Gender = "female",
	Type = "unit-teuton-priest", -- mother superior of a cloister
	Civilization = "slav",
	Father = "otakar-i-premysl", -- youngest daughter of the Czech king Přemysl Otakar I
	Date = 1231, -- founded the St. Agnes' Cloister (in Prague) in 1231, and became its mother superior
	HistoricalLocations = {
--		1231, "earth", "prague"
	}
})

DefineCharacter("charles", { -- Source: Alena Ježková, "77 Prague Legends", 2006, pp. 45, 87.
	Name = "Charles", -- Emperor and king Charles IV
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- emperor/king
	Civilization = "slav",
	Date = 1357, -- The foundation stone of a new bridge to replace Judita Bridge was laid in the 9th of July 1357 by Emperor and King Charles IV
	DeathDate = 1378, -- Charles IV was on his deathbed in November 1378, in Prague Castle
	HistoricalTitles = {
		"head-of-state", 0, 1378, "bohemia"
	}
})

DefineCharacter("humprecht-cernin-of-chudenice", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 94.
	Name = "Humprecht", -- Imperial envoy to Venice
	ExtraName = "Černín of Chudenice",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	Date = 1669 -- Had the Černín Palace built in Prague for him in 1669
})
