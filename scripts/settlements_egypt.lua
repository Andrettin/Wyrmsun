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

DefineSettlement("abu-simbel", {
	Name = "Abu Simbel",
	MapTemplate = "earth",
	Position = {4554, 1542},
	CulturalNames = {
		"egyptian", "Abu Simbel"
	},
	HistoricalOwners = {
		-1450, "egypt" -- Abu Simbel was an Egyptian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"africa"}
})

DefineSettlement("abydos", {
	Name = "Abydos",
	MapTemplate = "earth",
	Position = {4565, 1456},
	CulturalNames = {
		"egyptian", "Abydos"
	},
	HistoricalOwners = {
		-1450, "egypt", -- Abydos was an Egyptian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Abydos' area was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "egypt", -- Abydos' area was part of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Abydos' area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"africa"}
})

DefineSettlement("heliopolis", {
	Name = "Heliopolis",
	MapTemplate = "earth",
	Position = {4554, 1362},
	CulturalNames = {
		"assyrian", "Heliopolis",
		"egyptian", "Heliopolis"
	},
	HistoricalOwners = {
		-1450, "egypt", -- Heliopolis/On was an Egyptian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Heliopolis/On was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "egypt", -- Heliopolis/On's area was part of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Heliopolis/On's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"africa"}
})

DefineSettlement("karnak", {
	Name = "Karnak",
	MapTemplate = "earth",
	Position = {4588, 1460},
	CulturalNames = {
		"egyptian", "Karnak"
	},
	HistoricalOwners = {
		-1450, "egypt", -- Karnak was an Egyptian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Karnak's area was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "egypt", -- Karnak's area was part of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Karnak's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"africa"}
})

DefineSettlement("memphis", {
	Name = "Memphis",
	MapTemplate = "earth",
	Position = {4546, 1363},
	Major = true,
	CulturalNames = {
		"assyrian", "Memphis",
		"egyptian", "Memphis",
		"greek", "Memphis",
		"latin", "Memphis", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"persian", "Memphis"
	},
	HistoricalOwners = {
		-1450, "egypt", -- Memphis/Men-nofer was an Egyptian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Memphis was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "egypt", -- Memphis was part of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Memphis was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "town-hall"
	},
	Regions = {"africa"}
})

DefineSettlement("momemphis", {
	Name = "Momemphis",
	MapTemplate = "earth",
	Position = {4543, 1350},
	CulturalNames = {
		"egyptian", "Momemphis"
	},
	HistoricalOwners = {
		-600, "egypt", -- Momemphis was part of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Momemphis' area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-600, 0, "farm"
	},
	Regions = {"africa"}
})

DefineSettlement("napata", {
	Name = "Napata",
	MapTemplate = "earth",
	Position = {4564, 1624},
	CulturalNames = {
		"egyptian", "Napata"
	},
	HistoricalOwners = {
		-1450, "egypt" -- Napata was an Egyptian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"africa"}
})

DefineSettlement("pelusium", {
	Name = "Pelusium",
	MapTemplate = "earth",
	Position = {4579, 1340},
	CulturalNames = {
		"egyptian", "Pelusium",
		"persian", "Pelusium"
	},
	HistoricalOwners = {
		-600, "egypt", -- Pelusium was part of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Pelusium was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-600, 0, "farm"
	},
	Regions = {"africa"}
})

DefineSettlement("sais", {
	Name = "Sais",
	MapTemplate = "earth",
	Position = {4540, 1340},
	CulturalNames = {
		"assyrian", "Sais",
		"egyptian", "Sais",
		"persian", "Sais"
	},
	HistoricalOwners = {
		-1450, "egypt", -- Sais was an Egyptian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Sais was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "egypt", -- Sais was the capital of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Sais was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"africa"}
})

DefineSettlement("syene", {
	Name = "Syene",
	MapTemplate = "earth",
	Position = {4589, 1498},
	CulturalNames = {
		"assyrian", "Syene",
		"egyptian", "Syene",
		"latin", "Syene" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-1450, "egypt", -- Syene/Assuan was an Egyptian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Syene was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "egypt", -- Syene's area was part of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Syene's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"africa"}
})

DefineSettlement("tanis", {
	Name = "Tanis",
	MapTemplate = "earth",
	Position = {4566, 1342},
	CulturalNames = {
		"assyrian", "Tanis",
		"egyptian", "Tanis"
	},
	HistoricalOwners = {
		-1450, "egypt", -- Tanis was a part of Egypt about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Tanis was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "egypt", -- Tanis' area was part of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Tanis' area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"africa"}
})

DefineSettlement("tentyris", {
	Name = "Tentyris",
	MapTemplate = "earth",
	Position = {4581, 1456},
	CulturalNames = {
		"egyptian", "Tentyris"
	},
	HistoricalOwners = {
		-1450, "egypt", -- Tentyris/Dendera was an Egyptian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Tentyris' area was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "egypt", -- Tentyris' area was part of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Tentyris' area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"africa"}
})

DefineSettlement("thebes-egypt", {
	Name = "Thebes",
	MapTemplate = "earth",
	Position = {4582, 1466},
	Major = true,
	CulturalNames = {
		"assyrian", "Thebes",
		"egyptian", "Thebes",
		"persian", "Thebes"
	},
	HistoricalOwners = {
		-1450, "egypt", -- Thebes/Diospolis/Luxor was an Egyptian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Thebes was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "egypt", -- Thebes was part of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Thebes was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "town-hall"
	},
	Regions = {"africa"}
})

DefineSettlement("this", {
	Name = "This",
	MapTemplate = "earth",
	Position = {4563, 1450},
	CulturalNames = {
		"egyptian", "This"
	},
	HistoricalOwners = {
		-1450, "egypt", -- This was an Egyptian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- This' area was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "egypt", -- This' area was part of the Egyptian Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- This' area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"africa"}
})

