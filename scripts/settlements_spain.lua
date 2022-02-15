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

DefineSite("calahorra", {
	Name = "Calahorra",
	MapTemplate = "old_earth",
	Position = {3798, 1088},
	CulturalNames = {
		"castillian", "Calahorra"
	},
	HistoricalOwners = {
		395, "rome", -- Calahorra was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		486, "visigothia", -- Calahorra's area was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Calahorra's area was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Calahorra was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"iberia"}
})

DefineSite("gerona", {
	Name = "Gerona",
	MapTemplate = "old_earth",
	Position = {3902, 1093},
	CulturalNames = {
		"castillian", "Gerona"
	},
	HistoricalOwners = {
		395, "rome", -- Gerona was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "visigothia", -- Gerona's area was a Visigothic possession in the 481-801 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "visigothia", -- Gerona's area was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Gerona's area was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Gerona was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"iberia"}
})

DefineSite("munda", {
	Name = "Munda",
	MapTemplate = "old_earth",
	Position = {3731, 1193},
	CulturalNames = {
		"latin", "Munda"
	},
	HistoricalOwners = {
		-197, "rome", -- Munda was acquired by Rome in 197 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Munda's area was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Munda's area was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-197, 0, "farm"
	},
	Regions = {"iberia"}
})

DefineSite("saguntum", {
	Name = "Saguntum",
	MapTemplate = "old_earth",
	Position = {3831, 1144},
	CulturalNames = {
		"latin", "Saguntum",
		"phoenician", "Saguntum"
	},
	HistoricalOwners = {
		-218, "carthage", -- Saguntum was in Carthaginian possession in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 32.
		-201, "rome", -- Saguntum was acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Saguntum's area was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Sarguntum's area was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-218, 0, "farm"
	},
	Regions = {"iberia"}
})

DefineSite("tarragona", {
	Name = "Tarragona",
	MapTemplate = "old_earth",
	Position = {3881, 1108},
	CulturalNames = {
		"castillian", "Tarragona", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		"latin", "Tarraco" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-201, "rome", -- Tarraco was acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Tarragona was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Tarragona was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-201, 395, "farm",
		395, 0, "temple" -- Tarragona was the seat of an archbishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"iberia"}
})
