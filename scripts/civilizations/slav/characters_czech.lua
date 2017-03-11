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

DefineCharacter("charles", { -- Source: Alena Ježková, "77 Prague Legends", 2006, pp. 45, 87.
	Name = "Charles", -- Emperor and king Charles IV
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- emperor/king
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1357, -- The foundation stone of a new bridge to replace Judita Bridge was laid in the 9th of July 1357 by Emperor and King Charles IV
	DeathYear = 1378, -- Charles IV was on his deathbed in November 1378, in Prague Castle
	HistoricalTitles = {
		"head-of-state", 0, 1378, "slav", "bohemia"
	}
})

DefineCharacter("humprecht-cernin-of-chudenice", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 94.
	Name = "Humprecht", -- Imperial envoy to Venice
	ExtraName = "Černín of Chudenice",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1669 -- Had the Černín Palace built in Prague for him in 1669
})
