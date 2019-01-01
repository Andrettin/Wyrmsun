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
--      (c) Copyright 2017-2019 by Andrettin
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

DefineSite("amisus", {
	Name = "Amisus",
	MapTemplate = "earth",
	Position = {4663, 1106},
	Major = true,
	CulturalNames = {
		"greek", "Amisus",
		"persian", "Amisus"
	},
	HistoricalOwners = {
		-600, "media", -- Amisus was part of the Median Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Amisus' area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-600, 0, "town-hall"
	},
	Regions = {"asia"}
})

DefineSite("milid", {
	Name = "Milid",
	MapTemplate = "earth",
	Position = {4711, 1172},
	CulturalNames = {
		"assyrian", "Milid"
	},
	HistoricalOwners = {
		-720, "assyria", -- Milid was part of the Assyrian Empire under Sargon II (720 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-500, "persia" -- Milid's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-720, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSite("phaselis", {
	Name = "Phaselis",
	MapTemplate = "earth",
	Position = {4534, 1216},
	Major = true,
	CulturalNames = {
		"greek", "Phaselis",
		"hittite", "Phaselis"
	},
	HistoricalOwners = {
		-600, "lydia", -- Phaselis was part of the Lydian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Phaselis' area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-600, 0, "town-hall"
	},
	Regions = {"asia"}
})

DefineSite("sinope", {
	Name = "Sinope",
	MapTemplate = "earth",
	Position = {4637, 1092},
	Major = true,
	CulturalNames = {
		"greek", "Sinope",
		"hittite", "Sinope",
		"latin", "Sinope" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-600, "lydia", -- Sinope was part of the Lydian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Sinope's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-600, 0, "town-hall"
	},
	Regions = {"asia"}
})

DefineSite("tarsus", {
	Name = "Tarsus",
	MapTemplate = "earth",
	Position = {4632, 1208},
	CulturalNames = {
		"assyrian", "Tarsus",
		"greek", "Tarsus",
		"latin", "Tarsus", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"persian", "Tarsus"
	},
	HistoricalOwners = {
		-720, "assyria", -- Tarsus was part of the Assyrian Empire under Sargon II (720 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-500, "persia" -- Tarsus was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-720, 0, "farm"
	},
	Regions = {"asia"}
})

