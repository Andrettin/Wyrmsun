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

DefineSettlement("amsterdam", {
	Name = "Amsterdam",
	MapTemplate = "earth",
	Position = {3953, 857},
	Major = true,
	CulturalNames = {
--		"dutch", "Amsterdam"
	},
	HistoricalOwners = {
		-264, "batavian-tribe", -- Amsterdam's area was territory of the Batavians in the 264 BC-180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1815, "netherlands" -- Amsterdam was a part of the Kingdom of the Netherlands in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall",
		1877, 0, "university" -- State university founded in Amsterdam in 1877; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
		-- Calvinist university founded in Amsterdam in 1905; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("franeker", {
	Name = "Franeker",
	MapTemplate = "earth",
	Position = {3966, 837},
	CulturalNames = {
--		"dutch", "Franeker"
	},
	HistoricalOwners = {
		1585, "netherlands"
	},
	HistoricalBuildings = {
		1585, 0, "university" -- University founded in Franeker in 1585; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("leeuwarden", {
	Name = "Leeuwarden",
	MapTemplate = "earth",
	Position = {3968, 837},
	Major = true,
	CulturalNames = {
--		"dutch", "Leeuwarden" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	},
	HistoricalOwners = {
		-264, "frisian-tribe", -- Leeuwarden's area was territory of the Frisians in the 264 BC-180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1815, "netherlands" -- Leeuwarden's area was part of the Kingdom of the Netherlands in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("wijk-bij-duurstede", {
	Name = "Wijk bij Duurstede",
	MapTemplate = "earth",
	Position = {3959, 866},
	CulturalNames = {
--		"dutch", "Wijk bij Duurstede"
	},
	HistoricalOwners = {
		692, "northumbria",
		695, "francia", -- by 695 Pippin, who de facto ruled Francia, had taken the mission under his wing; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 166-167.
		1560, "spain" -- Wijk bij Duurstede's area was a Spanish possession in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		692, 0, "temple" -- Swithberht was consecrated bishop with seat at Wijk bij Duurstede in 692/693 by Wilfrid of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 166.
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})
