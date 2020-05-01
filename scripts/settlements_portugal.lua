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
--      (c) Copyright 2017-2020 by Andrettin
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

DefineSite("braga", {
	Name = "Braga",
	MapTemplate = "earth",
	Position = {3651, 1096},
	CulturalNames = {
		"latin", "Bracara", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"portuguese", "Braga"
	},
	HistoricalOwners = {
		-138, "rome", -- Bracara was acquired by Rome in 138 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "galicia", -- Braga was a part of Suebic Galicia in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1150, "portugal" -- Braga was a part of the Kingdom of Portugal in 1150 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 82.
	},
	HistoricalBuildings = {
		-138, 1560, "town_hall",
		1560, 0, "farm"
	},
	Regions = {"iberia"}
})

DefineSite("coimbra", {
	Name = "Coimbra",
	MapTemplate = "earth",
	Position = {3639, 1133},
	CulturalNames = {
		"latin", "Bracara", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"portuguese", "Coimbra"
	},
	HistoricalOwners = {
		486, "galicia", -- Coimbra was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1064, "portugal" -- Coimbra was acquired by the Kingdom of Portugal in 1064 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 82.
	},
	HistoricalBuildings = {
		486, 1308, "farm",
		1308, 0, "university", -- University founded in Coimbra in 1308; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		-- University moved permanently from Lisbon to Coimbra in 1537; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"iberia"}
})

DefineSite("lisbon", {
	Name = "Lisbon",
	MapTemplate = "earth",
	Position = {3632, 1166},
	Major = true,
	CulturalNames = {
		"latin", "Olisipo", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"portuguese", "Lisbon" -- "Lisboa"
	},
	HistoricalOwners = {
		-138, "rome", -- Olisipo was acquired by Rome in 138 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Lisbon was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1148, "portugal" -- Lisbon was acquired by the Kingdom of Portugal in 1148 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 82.
	},
	HistoricalBuildings = {
		-138, 0, "town_hall",
		1911, 0, "university" -- University founded in Lisbon in 1911; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
	},
	Regions = {"iberia"}
})

DefineSite("oporto", {
	Name = "Oporto",
	MapTemplate = "earth",
	Position = {3645, 1113},
	Major = true,
	CulturalNames = {
		"portuguese", "Oporto"
	},
	HistoricalOwners = {
		-138, "rome", -- Oporto's area was acquired by Rome in 138 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		{411, 12, 31}, "suebi-tribe", -- Oporto's area was conquered by the Suebi in 411 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		1150, "portugal" -- Oporto was a part of the Kingdom of Portugal in 1150 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 82.
	},
	HistoricalBuildings = {
		-138, 0, "town_hall",
		1911, 0, "university" -- University founded in Oporto in 1911; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
	},
	Regions = {"iberia"}
})

DefineSite("tres-minas", {
	Name = "Tres Minas",
	MapTemplate = "earth",
	Position = {3665, 1095},
	CulturalNames = {
		"portuguese", "Tres Minas" -- "Três Minas"
	},
	HistoricalOwners = {
		1, "rome"
	},
	HistoricalBuildings = {
		1, 100, "gold-mine" -- Três Minas was the location of a Roman gold mine in the 1st century AD; Source: M. J. T. Lewis, "Railways in the Greek and Roman World", 2001, p. 15.
	},
	HistoricalResources = {
		0, 0, "unit-gold-deposit", 0 -- gold present in Três Minas; Source: M. J. T. Lewis, "Railways in the Greek and Roman World", 2001, p. 15.
	},
	Regions = {"iberia"}
})

