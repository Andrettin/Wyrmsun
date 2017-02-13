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

DefineSettlement("amathus", {
	Name = "Amathus",
	MapTemplate = "earth",
	Position = {4594, 1257},
	CulturalNames = {
		"greek", "Ialysus"
	},
	HistoricalOwners = {
		-1450, "phoenicia" -- Amathus was Phoenician settlement about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "unit-latin-farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("amyclae", {
	Name = "Amyclae",
	MapTemplate = "earth",
	Position = {4349, 1204},
	CulturalNames = {
		"greek", "Amyclae"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Amyclae was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "unit-latin-farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("athens", {
	Name = "Athens",
	MapTemplate = "earth",
	Position = {4380, 1184},
	CulturalNames = {
		"greek", "Athens",
		"latin", "Athens"
	},
	HistoricalOwners = {
		-1450, "mycenae", -- Athens was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-146, "rome", -- Athens was acquired by Rome in 146 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1740, "turkey" -- Athens was in possession of the Ottoman Empire in 1740; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalBuildings = {
		-1450, -146, "unit-latin-farm",
		-146, 1740, "unit-latin-town-hall",
		1740, 0, "unit-teuton-town-hall"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("dicte", {
	Name = "Dicte",
	MapTemplate = "earth",
	Position = {4420, 1247},
	CulturalNames = {
		"greek", "Dicte"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Dicte was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "unit-latin-farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("epidaurus", {
	Name = "Epidaurus",
	MapTemplate = "earth",
	Position = {4366, 1190},
	CulturalNames = {
		"greek", "Epidaurus"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Epidaurus was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "unit-latin-farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("gerenia", {
	Name = "Gerenia",
	MapTemplate = "earth",
	Position = {4344, 1206},
	CulturalNames = {
		"greek", "Gerenia"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Gerenia was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "unit-latin-farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("ialysus", {
	Name = "Ialysus",
	MapTemplate = "earth",
	Position = {4480, 1220},
	CulturalNames = {
		"greek", "Ialysus"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Ialysus was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "unit-latin-farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("itanus", {
	Name = "Itanus",
	MapTemplate = "earth",
	Position = {4437, 1247},
	CulturalNames = {
		"greek", "Itanus"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Itanus was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "unit-latin-farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("knossos", {
	Name = "Knossos",
	MapTemplate = "earth",
	Position = {4410, 1244},
	CulturalNames = {
		"greek", "Knossos"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Cnossus was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "unit-latin-farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("krisa", {
	Name = "Krisa",
	MapTemplate = "earth",
	Position = {4351, 1172},
	CulturalNames = {
		"greek", "Krisa"
	},
	HistoricalOwners = {
		-1700, "mycenae", -- Mycenaean fortifications present in Krisa (in Locris Ozolis) between 1700 and 1200 BC; Source: "Atlas de História Mundial", 2001, p. 67.
		-1190, "" -- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	},
	HistoricalBuildings = {
		-1700, -1190, "unit-teuton-guard-tower"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("mycenae", {
	Name = "Mycenae",
	MapTemplate = "earth",
	Position = {4358, 1188},
	CulturalNames = {
		"greek", "Mycenae"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Mycenae was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "unit-latin-town-hall"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("tiryns", {
	Name = "Tiryns",
	MapTemplate = "earth",
	Position = {4359, 1191},
	CulturalNames = {
		"greek", "Tiryns"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Tiryns was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "unit-latin-farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

