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

DefineSettlement("recife", {
	Name = "Recife",
	MapTemplate = "earth",
	Position = {3046, 2224},
	CulturalNames = {
--		"dutch", "Mauritsstad", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 128.
--		"portuguese", "Recife"
	},
	HistoricalOwners = {
		1536, "portugal", -- Recife was founded on 1536/1561; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1630, "netherlands" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 128.
	},
	HistoricalBuildings = {
		1536, 1630, "unit-latin-town-hall",
		1630, 0, "unit-teuton-town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("rio-de-janeiro", {
	Name = "Rio de Janeiro",
	MapTemplate = "earth",
	Position = {2856, 2569},
	CulturalNames = {
--		"french", "Henriville",
--		"portuguese", "Rio de Janeiro"
	},
	HistoricalOwners = {
		1567, "portugal" -- Rio de Janeiro was founded by Portugal on 1516/1567; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 107-110.
	},
	HistoricalBuildings = {
		1567, 0, "unit-latin-town-hall"
	},
	Regions = {"america", "south-america"}
})
