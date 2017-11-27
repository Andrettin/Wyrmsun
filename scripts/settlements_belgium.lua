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

DefineSettlement("duisburg", {
	Name = "Duisburg",
	MapTemplate = "earth",
	Position = {3944, 890},
	HistoricalOwners = {
		486, "francia" -- Duisbury was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
	},
	HistoricalBuildings = {
		486, 0, "farm"
	},
	Regions = {"europe", "gaul", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("echternach", {
	Name = "Echternach",
	MapTemplate = "earth",
	Position = {3967, 911},
	CulturalNames = {
		"teuton", "Echternach"
	},
	HistoricalOwners = {
		486, "francia" -- Echternach's area was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		739, "francia"
	},
	HistoricalBuildings = {
		739, 0, "temple" -- a monastery under the protection of Francia existed in Echternach as of 739; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 167.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("tongres", {
	Name = "Tongres",
	MapTemplate = "earth",
	Position = {3966, 884},
	CulturalNames = {
		"celt", "Aduatuca",
		"french", "Tongres",
		"gaul", "Aduatuca" -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-226.
	},
	HistoricalOwners = {
		395, "rome", -- Tongres was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "frank-tribe", -- Tongres' area was a Frankish possession as of 481; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "francia", -- Tongres' area was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "salia" -- Tongres' area went to Chilperich when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Tongres was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})
