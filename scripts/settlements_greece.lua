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

DefineSettlement("amyclae", {
	Name = "Amyclae",
	MapTemplate = "earth",
	Position = {4348, 1206},
	CulturalNames = {
		"greek", "Amyclae"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Amyclae was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("aphidnae", {
	Name = "Aphidnae",
	MapTemplate = "earth",
	Position = {4382, 1179},
	CulturalNames = {
		"greek", "Aphidnae"
	},
	HistoricalOwners = {
		-1450, "mycenae", -- Aphidnae was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-500, "athens" -- Greece at the time of the war with Persia (500-479 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("argos", {
	Name = "Argos",
	MapTemplate = "earth",
	Position = {4357, 1191},
	CulturalNames = {
		"greek", "Argos"
	},
	HistoricalOwners = {
		-700, "argos" -- Argos was part of the state of Argolis/Argos in the 700-600 BC period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-700, 0, "town-hall"
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
		-1450, "mycenae", -- Athens was a center of the highest Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-700, "athens", -- Athens was part of the state of Attica/Athens in the 700-600 BC period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-146, "rome", -- Athens was acquired by Rome in 146 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1740, "turkey" -- Athens was in possession of the Ottoman Empire in 1740; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalBuildings = {
		-1450, 0, "town-hall"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("byzantium", {
	Name = "Byzantium",
	MapTemplate = "earth",
	Position = {4498, 1114},
	CulturalNames = {
		"persian", "Byzantium"
	},
	HistoricalOwners = {
		-500, "persia" -- Byzantium was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-500, 0, "town-hall"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("corinth", {
	Name = "Corinth",
	MapTemplate = "earth",
	Position = {4360, 1185},
	CulturalNames = {
		"greek", "Corinth"
	},
	HistoricalOwners = {
		-700, "argos", -- Corinth was part of the state of Argolis/Argos in the 700-600 BC period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "corinth", -- Greece at the time of the war with Persia (500-479 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
		-146, "" -- Corinth was destroyed by Rome in 146 BC; Source: Tenney Frank, "Mercantilism and Rome's Foreign Policy", 1913, p. 243.
	},
	HistoricalBuildings = {
		-700, -146, "town-hall"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("coulas", {
	Name = "Coulas",
	MapTemplate = "earth",
	Position = {4366, 1172},
	CulturalNames = {
		"greek", "Coulas"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Coulas was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("delos", {
	Name = "Delos",
	MapTemplate = "earth",
	Position = {4414, 1197},
	CulturalNames = {
		"greek", "Delos"
	},
	HistoricalOwners = {
		-167, "rome",
		-88, "" -- Delos destroyed by Mithradates in 88 BC; Source: Tenney Frank, "Mercantilism and Rome's Foreign Policy", 1913, p. 241.
	},
	HistoricalBuildings = {
		-167, -88, "dock", -- Delos was made a free port by Rome in 167 BC; Source: Tenney Frank, "Mercantilism and Rome's Foreign Policy", 1913, p. 242.
		-113, -88, "temple", "hermaistes-apolloniastes-poseidoniastes" -- The "Hermaistes, Apolloniastes, Poseidoniastes" Roman society was founded in Delos around 113 BC; Source: Tenney Frank, "Mercantilism and Rome's Foreign Policy", 1913, p. 243.
		-- Roman freedmen and slaves founded a society for the worship of the "lares compitales" around 100 BC; Source: Tenney Frank, "Mercantilism and Rome's Foreign Policy", 1913, p. 243.
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("delphi", {
	Name = "Delphi",
	MapTemplate = "earth",
	Position = {4352, 1172},
	CulturalNames = {
		"greek", "Delphi"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Delphi was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
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
		-1450, 0, "farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("eleusis", {
	Name = "Eleusis",
	MapTemplate = "earth",
	Position = {4374, 1181},
	CulturalNames = {
		"greek", "Eleusis"
	},
	HistoricalOwners = {
		-1450, "mycenae", -- Eleusis was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-500, "athens" -- Greece at the time of the war with Persia (500-479 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
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
		-1450, "mycenae", -- Epidaurus was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-500, "argos" -- Greece at the time of the war with Persia (500-479 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
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
		-1450, 0, "farm"
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
		-1450, 0, "farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("iolcus", {
	Name = "Iolcus",
	MapTemplate = "earth",
	Position = {4363, 1150},
	CulturalNames = {
		"greek", "Iolcus"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Iolcus was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
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
		-1450, 0, "farm"
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
		-1450, "mycenae" -- Cnossus was a center of the highest Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "town-hall"
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
		-1700, -1190, "guard-tower"
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
		-1450, "mycenae", -- Mycenae was a center of the highest Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-500, "argos" -- Greece at the time of the war with Persia (500-479 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
	},
	HistoricalBuildings = {
		-1450, -700, "town-hall",
		-700, 0, "farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("orchomenus", {
	Name = "Orchomenus",
	MapTemplate = "earth",
	Position = {4360, 1172},
	CulturalNames = {
		"greek", "Orchomenus"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Orchomenus was a center of the highest Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "town-hall"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("pagasae", {
	Name = "Pagasae",
	MapTemplate = "earth",
	Position = {4361, 1152},
	CulturalNames = {
		"greek", "Pagasae"
	},
	HistoricalOwners = {
		-1450, "mycenae" -- Pagasae was a part of the Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("sicyon", {
	Name = "Sicyon",
	MapTemplate = "earth",
	Position = {4356, 1183},
	CulturalNames = {
		"greek", "Sicyon"
	},
	HistoricalOwners = {
		-700, "argos" -- Sicyon was part of the state of Argolis/Argos in the 700-600 BC period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-700, 0, "farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineSettlement("thebes", {
	Name = "Thebes",
	MapTemplate = "earth",
	Position = {4369, 1176},
	CulturalNames = {
		"greek", "Thebes"
	},
	HistoricalOwners = {
		-700, "thebes" -- Thebes was part of the state of Boeotia/Thebes in the 700-600 BC period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-700, 0, "town-hall"
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
		-1450, "mycenae", -- Tiryns was a center of the highest Mycenaean civilization about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-700, "argos" -- Tiryns was part of the state of Argolis/Argos in the 700-600 BC period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

