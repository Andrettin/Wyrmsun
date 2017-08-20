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

DefineSettlement("agad", {
	Name = "Agad",
	MapTemplate = "earth",
	Position = {4841, 1290},
	CulturalNames = {
		"babylonian", "Agad"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Agad was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Agad's area was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Agad's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Agad's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("amida", {
	Name = "Amida",
	MapTemplate = "earth",
	Position = {4709, 1188},
	CulturalNames = {
		"assyrian", "Amida"
	},
	HistoricalOwners = {
		-1450, "assyria", -- Amida was an Assyrian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-600, "media", -- Amida's area was part of the Median Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Amida's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("arbela", {
	Name = "Arbela",
	MapTemplate = "earth",
	Position = {4841, 1224},
	CulturalNames = {
		"assyrian", "Arbela",
		"persian", "Arbela"
	},
	HistoricalOwners = {
		-1450, "assyria", -- Arbela was an Assyrian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-600, "babylon", -- Arbela's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Arbela was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("assur", {
	Name = "Assur",
	MapTemplate = "earth",
	Position = {4823, 1233},
	CulturalNames = {
		"assyrian", "Assur"
	},
	HistoricalOwners = {
		-1450, "assyria", -- Assur was an Assyrian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-600, "babylon", -- Assur's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Assur's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("babylon", {
	Name = "Babylon",
	MapTemplate = "earth",
	Position = {4848, 1300},
	Major = true,
	CulturalNames = {
		"assyrian", "Babylon",
		"babylonian", "Babylon",
		"persian", "Babylon"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Babylon was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Babylon was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Babylon was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Babylon was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "town-hall"
	},
	Regions = {"asia"}
})

DefineSettlement("borsippa", {
	Name = "Borsippa",
	MapTemplate = "earth",
	Position = {4842, 1300},
	CulturalNames = {
		"assyrian", "Borsippa",
		"babylonian", "Borsippa"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Borsippa was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Borsippa was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Borsippa's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Borsippa's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("calchu", {
	Name = "Calchu",
	MapTemplate = "earth",
	Position = {4825, 1224},
	CulturalNames = {
		"assyrian", "Calchu"
	},
	HistoricalOwners = {
		-720, "assyria", -- Calchu was a part of the Assyrian Empire under Sargon II (720 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "media", -- Calchu's area was part of the Median Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Calchu's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-720, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("circesium", {
	Name = "Circesium",
	MapTemplate = "earth",
	Position = {4752, 1245},
	CulturalNames = {
		"babylonian", "Circesium"
	},
	HistoricalOwners = {
		-600, "babylon", -- Circesium was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Circesium's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-600, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("dur-ilu", {
	Name = "Dur-Ilu",
	MapTemplate = "earth",
	Position = {4919, 1323},
	CulturalNames = {
		"assyrian", "Dur-Ilu"
	},
	HistoricalOwners = {
		-640, "assyria", -- Dur-Ilu was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Dur-Ilu's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Dur-Ilu's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-640, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("dur-kurigalzu", {
	Name = "Dur-Kurigalzu",
	MapTemplate = "earth",
	Position = {4853, 1294},
	CulturalNames = {
		"babylonian", "Dur-Kurigalzu"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Dur-Kurigalzu was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Dur-Kurigalzu's area was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Dur-Kurigalzu's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Dur-Ilu's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("dur-sharukin", {
	Name = "Dur-Sharukin",
	MapTemplate = "earth",
	Position = {4829, 1208},
	CulturalNames = {
		"assyrian", "Dur-Sharukin"
	},
	HistoricalOwners = {
		-640, "assyria", -- Dur-Sharukin/Khorsabad was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "media", -- Dur-Sharukin's area was part of the Median Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Dur-Sharukin's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-640, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("eridu", {
	Name = "Eridu",
	MapTemplate = "earth",
	Position = {4902, 1343},
	CulturalNames = {
		"assyrian", "Eridu",
		"babylonian", "Eridu"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Eridu was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Eridu was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Eridu's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Eridu's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("haran", {
	Name = "Haran",
	MapTemplate = "earth",
	Position = {4726, 1205},
	CulturalNames = {
		"assyrian", "Haran"
	},
	HistoricalOwners = {
		-720, "assyria", -- Haran was a part of the Assyrian Empire under Sargon II (720 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Haran's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Haran's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-720, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("holwan", {
	Name = "Holwan",
	MapTemplate = "earth",
	Position = {4924, 1261},
	CulturalNames = {
		"assyrian", "Holwan"
	},
	HistoricalOwners = {
		-640, "assyria", -- Holwan was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "media", -- Holwan's area was part of the Median Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Holwan's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-640, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("kutha", {
	Name = "Kutha",
	MapTemplate = "earth",
	Position = {4847, 1297},
	CulturalNames = {
		"babylonian", "Kutha"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Kutha was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Kutha's area was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Kutha's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Kutha's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("lagash", {
	Name = "Lagash",
	MapTemplate = "earth",
	Position = {4891, 1326},
	CulturalNames = {
		"assyrian", "Lagash",
		"babylonian", "Lagash"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Lagash was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Lagash was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Lagash's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Kutha's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("larsam", {
	Name = "Larsam",
	MapTemplate = "earth",
	Position = {4883, 1336},
	CulturalNames = {
		"assyrian", "Larsam",
		"babylonian", "Larsam"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Larsam was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Larsam was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Larsam's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Larsam's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("nineveh", {
	Name = "Nineveh",
	MapTemplate = "earth",
	Position = {4828, 1214},
	Major = true,
	CulturalNames = {
		"assyrian", "Nineveh",
		"persian", "Nineveh"
	},
	HistoricalOwners = {
		-1450, "assyria", -- Nineveh was an Assyrian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-600, "media", -- Nineveh was part of the Median Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Nineveh's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "town-hall"
	},
	Regions = {"asia"}
})

DefineSettlement("nippur", {
	Name = "Nippur",
	MapTemplate = "earth",
	Position = {4865, 1311},
	CulturalNames = {
		"assyrian", "Nippur",
		"babylonian", "Nippur"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Nippur was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Nippur was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Nippur's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Nippur's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("nisibis", {
	Name = "Nisibis",
	MapTemplate = "earth",
	Position = {4788, 1204},
	CulturalNames = {
		"assyrian", "Nisibis"
	},
	HistoricalOwners = {
		-720, "assyria", -- Nisibis was a part of the Assyrian Empire under Sargon II (720 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Nisibis' area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Nisibis' area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-720, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("reseph", {
	Name = "Reseph",
	MapTemplate = "earth",
	Position = {4722, 1238},
	CulturalNames = {
		"hebrew", "Reseph"
	},
	HistoricalOwners = {
		-1025, "israel", -- Reseph was part of the dominions of David and Solomon in the 1025-953 BC period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 6-7.
		-720, "assyria", -- Reseph's area was part of the Assyrian Empire under Sargon II (720 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Reseph's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Reseph's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1025, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("shinpurla", {
	Name = "Shinpurla",
	MapTemplate = "earth",
	Position = {4902, 1334},
	CulturalNames = {
		"babylonian", "Shinpurla"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Shinpurla was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Shinpurla's area was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Shinpurla's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Shinpurla's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("sippar", {
	Name = "Sippar",
	MapTemplate = "earth",
	Position = {4835, 1286},
	CulturalNames = {
		"babylonian", "Sippar"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Sippar was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Sippar's area was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Sippar's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Sippar's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("tadmor", {
	Name = "Tadmor",
	MapTemplate = "earth",
	Position = {4709, 1256},
	CulturalNames = {
		"assyrian", "Tadmor",
		"hebrew", "Tadmor"
	},
	HistoricalOwners = {
		-1025, "israel", -- Tadmor was part of the dominions of David and Solomon in the 1025-953 BC period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 6-7.
		-720, "assyria", -- Tadmor was a part of the Assyrian Empire under Sargon II (720 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Tadmor's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Tadmor's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1025, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("thapsacus", {
	Name = "Thapsacus",
	MapTemplate = "earth",
	Position = {4709, 1231},
	CulturalNames = {
		"babylonian", "Thapsacus",
		"hebrew", "Tiphsach",
		"persian", "Thapsacus"
	},
	HistoricalOwners = {
		-1025, "israel", -- Tiphsach/Thapsacus was part of the dominions of David and Solomon in the 1025-953 BC period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 6-7.
		-720, "assyria", -- Tiphsach's area was part of the Assyrian Empire under Sargon II (720 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Thapsacus was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Thapsacus was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1025, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("upi", {
	Name = "Upi",
	MapTemplate = "earth",
	Position = {4848, 1271},
	CulturalNames = {
		"assyrian", "Upi",
		"babylonian", "Upi"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Upi was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Upi was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Upi's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Upi's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

DefineSettlement("ur", {
	Name = "Ur",
	MapTemplate = "earth",
	Position = {4895, 1345},
	Major = true,
	CulturalNames = {
		"assyrian", "Ur",
		"babylonian", "Ur"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Ur was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Ur was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Ur's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Ur's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "town-hall"
	},
	Regions = {"asia"}
})

DefineSettlement("uruk", {
	Name = "Uruk",
	MapTemplate = "earth",
	Position = {4879, 1333},
	CulturalNames = {
		"assyrian", "Uruk",
		"babylonian", "Uruk"
	},
	HistoricalOwners = {
		-1450, "babylon", -- Uruk was a Babylonian possession about 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-640, "assyria", -- Uruk was a part of the Assyrian Empire under Assurbanipal (640 BC); Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-600, "babylon", -- Uruk's area was part of the Chaldean Empire about 600 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-500, "persia" -- Uruk's area was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-1450, 0, "farm"
	},
	Regions = {"asia"}
})

