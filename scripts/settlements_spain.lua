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
		486, 1430, "farm",
		1430, 1717, "university", -- University founded in Barcelona in 1430; Source: "The Cambridge Modern History Atlas", 1912, p. 9; Source: "Atlas de História Mundial", 2001, p. 144. University abolished in Barcelona in 1717; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		1717, 0, "farm"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("burgos", {
	Name = "Burgos",
	MapTemplate = "earth",
	Position = {3756, 1083},
	CulturalNames = {
		"castillian", "Burgos",
		"latin", "Burgiorum" -- Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	},
	HistoricalOwners = {
		910, "leon" -- Burgos was a part of the Kingdom of León in 910; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
	},
	HistoricalBuildings = {
		910, 0, "farm"
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

DefineSettlement("cordoba", {
	Name = "Cordoba",
	MapTemplate = "earth",
	Position = {3730, 1183},
	CulturalNames = {
		"castillian", "Cordoba",
		"latin", "Corduba"
	},
	HistoricalOwners = {
		-197, "rome", -- Corduba was acquired by Rome in 197 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Cordova was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Cordova was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-197, 1572, "farm",
		1572, 0, "university" -- Minor university founded in Cordoba in 1572; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("malaga", {
	Name = "Malaga",
	MapTemplate = "earth",
	Position = {3739, 1211},
	CulturalNames = {
		"castillian", "Malaga", -- "Málaga"
		"latin", "Malaca"
	},
	HistoricalOwners = {
		-201, "rome", -- Malaca was acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Málaga was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Malaga was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-201, 0, "farm"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("merida", {
	Name = "Merida",
	MapTemplate = "earth",
	Position = {3688, 1167},
	CulturalNames = {
		"castillian", "Merida", -- "Mérida"
		"latin", "Emerita Augusta", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalOwners = {
		-138, "rome", -- Emerita Augusta was acquired by Rome in 138 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Mérida was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Mérida's area was a part of the Kingdom of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-138, 0, "town-hall"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("munda", {
	Name = "Munda",
	MapTemplate = "earth",
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

DefineSettlement("seville", {
	Name = "Seville",
	MapTemplate = "earth",
	Position = {3703, 1195},
	CulturalNames = {
		"castillian", "Seville",
		"latin", "Hispalis"
	},
	HistoricalOwners = {
		-201, "rome", -- Hispalis was acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Seville was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Seville was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-201, 1504, "farm",
		1504, 0, "university" -- Major university founded in Seville in 1504; Source: "The Cambridge Modern History Atlas", 1912, p. 9; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("tarragona", {
	Name = "Tarragona",
	MapTemplate = "earth",
	Position = {3881, 1109},
	CulturalNames = {
		"castillian", "Tarragona",
		"latin", "Tarraco"
	},
	HistoricalOwners = {
		-201, "rome", -- Tarraco was acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Tarragona was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Tarragona was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-201, 0, "farm"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("toledo", {
	Name = "Toledo",
	MapTemplate = "earth",
	Position = {3756, 1139},
	CulturalNames = {
		"castillian", "Toledo",
		"latin", "Toletum"
	},
	HistoricalOwners = {
		-197, "rome", -- Toletum was acquired by Rome in 197 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Toledo was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Toledo was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-197, 486, "farm",
		486, 0, "town-hall",
		1474, 1807, "university" -- Minor university founded in Toledo in 1474; Source: "The Cambridge Modern History Atlas", 1912, p. 9; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225. Minor university abolished in Toledo in 1807; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("tortosa", {
	Name = "Tortosa",
	MapTemplate = "earth",
	Position = {3855, 1120},
	CulturalNames = {
		"castillian", "Tortosa",
		"latin", "Dertosa"
	},
	HistoricalOwners = {
		-201, "rome", -- Dertosa was acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Tortosa was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Tortosa was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-201, 1645, "farm",
		1645, 1717, "university", -- Minor university founded in Tortosa in 1645; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225. Minor university in Tortosa abolished in 1717; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		1717, 0, "farm"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("valencia", {
	Name = "Valencia",
	MapTemplate = "earth",
	Position = {3833, 1148},
	CulturalNames = {
		"castillian", "Valencia",
		"latin", "Valentia"
	},
	HistoricalOwners = {
		-201, "rome", -- Valentia was acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Valencia was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Valencia was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-201, 1500, "farm",
		1500, 0, "university" -- University founded in Valencia in 1500; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSettlement("zaragoza", {
	Name = "Zaragoza",
	MapTemplate = "earth",
	Position = {3824, 1103},
	CulturalNames = {
		"castillian", "Zaragoza"
	},
	HistoricalOwners = {
		486, "visigothia", -- Saragossa was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Saragossa was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		486, 1474, "farm",
		1474, 0, "university" -- University founded in Zaragoza in 1474; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})
