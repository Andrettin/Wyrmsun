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
--      (c) Copyright 2017-2022 by Andrettin
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

DefineSite("bahia-blanca", {
	Name = "Bahia Blanca",
	MapTemplate = "old_earth",
	Position = {2418, 2928},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"castillian", "Bahia Blanca"
	},
	HistoricalOwners = {
		1863, "argentina" -- Bahia Blanca was founded in 1863; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1863, 0, "town_hall"
	},
	Regions = {"america", "south-america"}
})

DefineSite("corrientes", {
	Name = "Corrientes",
	MapTemplate = "old_earth",
	Position = {2501, 2673},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"castillian", "Corrientes"
	},
	HistoricalOwners = {
		1588, "spain", -- Corrientes was founded in 1588; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1810, "argentina" -- Argentina became independent in 1810/1816; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1588, 0, "town_hall"
	},
	Regions = {"america", "south-america"}
})

DefineSite("montevideo", {
	Name = "Montevideo",
	MapTemplate = "old_earth",
	Position = {2561, 2842},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"castillian", "Montevideo"
	},
	--Cores = {
	--	"uruguay"
	--},
	HistoricalOwners = {
		1723, "spain", -- Montevideo was founded in 1723; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1814, "uruguay", -- Uruguay became independent of Spain in 1814; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1821, "brazil", -- Uruguay became the Brazilian Cisplatine province in 1821; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1828, "uruguay" -- Uruguay became independent of Brazil in 1828; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1723, 0, "town_hall"
	},
	Regions = {"america", "south-america"}
})

DefineSite("santa-fe", {
	Name = "Santa Fe",
	MapTemplate = "old_earth",
	Position = {2457, 2768},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"castillian", "Santa Fe" -- "Santa Fé"
	},
	HistoricalOwners = {
		1573, "spain", -- Santa Fé was founded in 1573; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1810, "argentina" -- Argentina became independent in 1810/1816; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1573, 0, "town_hall"
	},
	Regions = {"america", "south-america"}
})

