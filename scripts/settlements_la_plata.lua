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

DefineSettlement("asuncion", {
	Name = "Asuncion",
	MapTemplate = "earth",
	Position = {2527, 2634},
	CulturalNames = {
--		"castillian", "Asuncion" -- "Asunción"
	},
	HistoricalOwners = {
		1536, "spain", -- Asunción was founded in 1536; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1811, "paraguay" -- Uruguay became independent in 1811; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1536, 0, "unit-latin-town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("buenos-aires", {
	Name = "Buenos Aires",
	MapTemplate = "earth",
	Position = {2510, 2835},
	CulturalNames = {
--		"castillian", "Buenos Aires"
	},
	HistoricalOwners = {
		1535, "spain", -- Buenos Ayres was founded by the Spanish in 1535/1580; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 107-110.
		1810, "argentina" -- Argentina became independent in 1810/1816; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1535, 0, "unit-latin-town-hall"
	},
	Regions = {"america", "south-america"}
})

DefineSettlement("montevideo", {
	Name = "Montevideo",
	MapTemplate = "earth",
	Position = {2561, 2842},
	CulturalNames = {
--		"castillian", "Montevideo"
	},
	HistoricalOwners = {
		1723, "spain", -- Montevideo was founded in 1723; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1814, "uruguay", -- Uruguay became independent of Spain in 1814; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1821, "brazil", -- Uruguay became the Brazilian Cisplatine province in 1821; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
		1828, "uruguay" -- Uruguay became independent of Brazil in 1828; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 214-215.
	},
	HistoricalBuildings = {
		1723, 0, "unit-latin-town-hall"
	},
	Regions = {"america", "south-america"}
})
