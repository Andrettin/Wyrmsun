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
--      (c) Copyright 2017 by Andrettin
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

DefineSettlement("armagh", {
	Name = "Armagh",
	MapTemplate = "earth",
	Position = {3691, 810},
	CulturalNames = {
		"celt", "Armagh",
--		"english", "Armagh"
	},
	HistoricalOwners = {
		802, "ireland" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall"
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("dublin", {
	Name = "Dublin",
	MapTemplate = "earth",
	Position = {3698, 834},
	CulturalNames = {
		"celt", "Dublin",
--		"english", "Dublin"
	},
	HistoricalOwners = {
		802, "ireland" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall",
		1312, 0, "university" -- University founded in Dublin in 1312; Source: "Atlas de História Mundial", p. 144.
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("waterford", {
	Name = "Waterford",
	MapTemplate = "earth",
	Position = {3678, 858},
	CulturalNames = {
--		"english", "Waterford"
	},
	HistoricalOwners = {
		802, "ireland" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 60.
	},
	HistoricalBuildings = {
		802, 0, "town-hall"
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})
