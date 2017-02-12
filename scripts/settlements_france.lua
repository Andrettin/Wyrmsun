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

DefineSettlement("marseilles", {
	Name = "Marseilles",
	MapTemplate = "earth",
	Position = {3962, 1062},
	CulturalNames = {
--		"french", "Marseilles",
		"latin", "Massilia" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome", -- Massilia was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		480, "visigothia", -- Marseilles became a part of the Kingdom of the Visigoths in 480; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		526, "ostrogothia", -- Marseilles was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia", -- Massilia went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Marseilles was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		161, 395, "unit-latin-farm",
		395, 0, "unit-teuton-temple" -- Marseilles was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("nice", {
	Name = "Nice",
	MapTemplate = "earth",
	Position = {4006, 1052},
	CulturalNames = {
--		"french", "Nice",
		"latin", "Nicaea"
	},
	HistoricalOwners = {
		395, "rome", -- Nicaea was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		526, "ostrogothia", -- Nice was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia", -- Nicea went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1494, "savoy" -- Nice was a possession of the Duchy of Savoy in 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		395, 0, "unit-teuton-temple"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("toulon", {
	Name = "Toulon",
	MapTemplate = "earth",
	Position = {3974, 1065},
	CulturalNames = {
--		"french", "Toulon"
	},
	HistoricalOwners = {
		561, "burgundia", -- Tolo went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Toulon was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		561, 0, "unit-teuton-farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("vienne", {
	Name = "Vienne",
	MapTemplate = "earth",
	Position = {3959, 1012},
	CulturalNames = {
--		"french", "Vienne"
	},
	HistoricalOwners = {
		395, "rome", -- Vienne was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		486, "burgundy", -- Vienne was a part of the Kingdom of the Burgundians in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia", -- Vienne's area went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Marseilles was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 0, "unit-teuton-temple" -- Vienne was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})
