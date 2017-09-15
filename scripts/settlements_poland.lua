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

DefineSettlement("gdansk", {
	Name = "Gdansk",
	MapTemplate = "earth",
	Position = {4265, 812},
	Major = true,
	CulturalNames = {
		"slav", "Gdansk", -- "Gdańsk"
		"teuton", "Danzig"
	},
	HistoricalOwners = {
	},
	HistoricalBuildings = {
	},
	Regions = {"europe", "poland", "west-and-central-europe"}
})

DefineSettlement("konigsberg", {
	Name = "Königsberg",
	MapTemplate = "earth",
	Position = {4302, 804},
	Major = true,
	CulturalNames = {
		"teuton", "Konigsberg" -- "Königsberg"
	},
	Cores = {
		"prussia"
	},
	HistoricalOwners = {
	},
	HistoricalBuildings = {
		1544, 0, "university" -- University founded in Königsberg in 1544; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineSettlement("krakow", {
	Name = "Krakow",
	MapTemplate = "earth",
	Position = {4293, 907},
	Major = true,
	CulturalNames = {
		"slav", "Krakow"
	},
	HistoricalOwners = {
	},
	HistoricalBuildings = {
		1364, 0, "university" -- University founded in Krakow in 1364; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"cisleithania", "europe", "poland", "west-and-central-europe"}
})

DefineSettlement("szczecin", {
	Name = "Szczecin",
	MapTemplate = "earth",
	Position = {4170, 829},
	Major = true,
	CulturalNames = {
		"slav", "Szczecin",
		"teuton", "Stettin"
	},
	HistoricalOwners = {
	},
	HistoricalBuildings = {
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})
