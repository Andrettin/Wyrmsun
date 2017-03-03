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

DefineSettlement("barcelona", {
	Name = "Barcelona",
	MapTemplate = "earth",
	Position = {3889, 1106},
	CulturalNames = {
		"castillian", "Barcelona"
	},
	HistoricalOwners = {
		486, "visigothia", -- Barcelona was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Barcelona was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		486, 0, "farm"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("cadiz", {
	Name = "Cadiz",
	MapTemplate = "earth",
	Position = {3699, 1218},
	CulturalNames = {
		"castillian", "Cadiz",
		"latin", "Gades",
		"phoenician", "Gades"
	},
	HistoricalOwners = {
		-218, "carthage", -- Gades was in Carthaginian possession in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 32.
		-201, "rome", -- Gades was acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Cadiz was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Cadiz was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-218, 0, "farm"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("cartagena", {
	Name = "Cartagena",
	MapTemplate = "earth",
	Position = {3816, 1192},
	CulturalNames = {
		"castillian", "Cartagena",
		"latin", "New Carthage",
		"phoenician", "New Carthage"
	},
	HistoricalOwners = {
		-218, "carthage", -- New Carthage was in Carthaginian possession in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 32.
		-201, "rome", -- New Carthage was acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Cartagena was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Cartagena was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-218, 0, "farm"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("saguntum", {
	Name = "Saguntum",
	MapTemplate = "earth",
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
	Regions = {"europe", "iberia", "west-and-central-europe"}
})
