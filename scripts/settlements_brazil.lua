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

DefineSettlement("florianopolis", {
	Name = "Florianopolis",
	MapTemplate = "earth",
	Position = {2732, 2674}, -- is actually in the island of Santa Catharina, but there's not enough space there for a settlement
	CulturalNames = {
--		"portuguese", "Florianopolis" -- Florianopolis/Desterro
	},
	HistoricalOwners = {
	},
	HistoricalBuildings = {
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("laguna", {
	Name = "Laguna",
	MapTemplate = "earth",
	Position = {2664, 2756},
	CulturalNames = {
--		"portuguese", "Laguna"
	},
	HistoricalOwners = {
		1654, "portugal", -- Laguna was founded in 1654; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1654, 0, "town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("porto-alegre", {
	Name = "Porto Alegre",
	MapTemplate = "earth",
	Position = {2675, 2733},
	CulturalNames = {
--		"portuguese", "Porto Alegre"
	},
	HistoricalOwners = {
		1740, "portugal", -- Porto Alegre was founded in 1740; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1740, 0, "town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("recife", {
	Name = "Recife",
	MapTemplate = "earth",
	Position = {3046, 2224},
	CulturalNames = {
--		"dutch", "Mauritsstad", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 128.
--		"portuguese", "Recife"
	},
	HistoricalOwners = {
		1536, "portugal", -- Recife was founded in 1536/1561; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1630, "netherlands", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 128.
		1655, "portugal", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 128.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1536, 0, "town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("rio-grande", {
	Name = "Rio Grande",
	MapTemplate = "earth",
	Position = {2652, 2779},
	CulturalNames = {
--		"portuguese", "Rio Grande"
	},
	HistoricalOwners = {
		1736, "portugal", -- Rio Grande/S. Pedro was founded in 1736; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1736, 0, "town-hall"
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
		1567, "portugal", -- Rio de Janeiro was founded by the Portuguese in 1516/1567; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 107-110.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1567, 0, "town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("salvador", {
	Name = "Salvador",
	MapTemplate = "earth",
	Position = {2964, 2343},
	CulturalNames = {
--		"portuguese", "Salvador"
	},
	HistoricalOwners = {
		1549, "portugal", -- Salvador was founded by the Portuguese in 1549; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 107-110, 214-215.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1549, 0, "town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("sao-paulo", {
	Name = "Sao Paulo",
	MapTemplate = "earth",
	Position = {2752, 2583},
	CulturalNames = {
--		"portuguese", "Sao Paulo" -- "São Paulo"
	},
	HistoricalOwners = {
		1532, "portugal", -- São Paulo was founded in 1532/1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1822, "brazil" -- Brazil became independent in 1822; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1532, 0, "town-hall"
	},
	Regions = {"america", "south-america"}
})
