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

DefineSite("barcelona", {
	Name = "Barcelona",
	MapTemplate = "earth",
	Position = {3887, 1104},
	Major = true,
	CulturalNames = {
		"castillian", "Barcelona"
	},
	HistoricalOwners = {
		395, "rome", -- Barcelona was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "visigothia", -- Barcelona was a Visigothic possession in the 481-801 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "visigothia", -- Barcelona was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Barcelona was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		395, 0, "town-hall",
		395, 0, "temple", -- Barcelona was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		1430, 1717, "university" -- University founded in Barcelona in 1430; Source: "The Cambridge Modern History Atlas", 1912, p. 9; Source: "Atlas de História Mundial", 2001, p. 144. University abolished in Barcelona in 1717; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSite("burgos", {
	Name = "Burgos",
	MapTemplate = "earth",
	Position = {3756, 1083},
	CulturalNames = {
		"castillian", "Burgos",
		"latin", "Burgiorum" -- Source: T. C. Donkin, "An Etymological Dictionary of the Romance Languages", 1864, p. 84.
	},
	HistoricalOwners = {
		910, "leon", -- Burgos was a part of the Kingdom of León in 910; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		1560, "spain" -- Burgos was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		910, 0, "farm"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSite("cadiz", {
	Name = "Cadiz",
	MapTemplate = "earth",
	Position = {3699, 1218},
	Major = true,
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

DefineSite("calahorra", {
	Name = "Calahorra",
	MapTemplate = "earth",
	Position = {3798, 1088},
	CulturalNames = {
		"castillian", "Calahorra"
	},
	HistoricalOwners = {
		395, "rome", -- Calahorra was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		486, "visigothia", -- Calahorra's area was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Calahorra's area was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Calahorra was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSite("cartagena", {
	Name = "New Carthage",
	MapTemplate = "earth",
	Position = {3816, 1191},
	Major = true,
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
		-218, 395, "farm",
		395, 0, "temple" -- Cartagena was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSite("cordoba", {
	Name = "Cordoba",
	MapTemplate = "earth",
	Position = {3730, 1183},
	Major = true,
	CulturalNames = {
		"castillian", "Cordoba",
		"latin", "Corduba" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
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

DefineSite("gerona", {
	Name = "Gerona",
	MapTemplate = "earth",
	Position = {3902, 1093},
	CulturalNames = {
		"castillian", "Gerona"
	},
	HistoricalOwners = {
		395, "rome", -- Gerona was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "visigothia", -- Gerona's area was a Visigothic possession in the 481-801 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "visigothia", -- Gerona's area was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Gerona's area was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Gerona was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSite("granada", {
	Name = "Granada",
	MapTemplate = "earth",
	Position = {3758, 1201},
	CulturalNames = {
		"castillian", "Granada"
	},
	HistoricalOwners = {
		1492, "castille", -- Granada became a part of the Kingdom of Castille in 1492; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		1560, "spain" -- Granada was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		1526, 0, "university" -- University founded in Granada in 1526 (as given by Martínez Ruiz and Maqueda, The Cambridge Modern History Atlas gives 1531 instead), containing law studies; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSite("lerida", {
	Name = "Lerida",
	MapTemplate = "earth",
	Position = {3854, 1110},
	CulturalNames = {
		"castillian", "Lerida" -- "Lérida"
	},
	HistoricalOwners = {
		1212, "aragon", -- Lérida was a part of the Principality of Catalonia within the Crown of Aragon in the 1212-1492 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		1560, "spain" -- Lérida was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		1300, 0, "university" -- Major university founded in Lerida in 1300; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSite("malaga", {
	Name = "Malaga",
	MapTemplate = "earth",
	Position = {3739, 1211},
	CulturalNames = {
		"castillian", "Malaga", -- "Málaga"; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		"latin", "Malaca" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
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

DefineSite("merida", {
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

DefineSite("munda", {
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

DefineSite("murcia", {
	Name = "Murcia",
	MapTemplate = "earth",
	Position = {3812, 1186},
	CulturalNames = {
		"castillian", "Murcia"
	},
	HistoricalOwners = {
		1212, "castille", -- Murcia was a part of the Kingdom of Castille and León (and dependencies) in the 1212-1492 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		1560, "spain" -- Murcia was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		1614, 1806, "university" -- Minor university founded in Murcia in 1614; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		-- Minor university abolished in Murcia in 1806; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSite("orihuela", {
	Name = "Orihuela",
	MapTemplate = "earth",
	Position = {3819, 1184},
	CulturalNames = {
		"castillian", "Orihuela"
	},
	HistoricalOwners = {
		1212, "castille", -- Orihuela was a part of the Kingdom of Castille and León (and dependencies) in the 1212-1492 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		1560, "spain" -- Orihuela's area was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		1552, 1807, "university" -- Minor university founded in Orihuela in 1552; Source: "The Cambridge Modern History Atlas", 1912, p. 9; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		-- Minor university abolished in Orihuela in 1807; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSite("saguntum", {
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

DefineSite("seville", {
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

DefineSite("tarragona", {
	Name = "Tarragona",
	MapTemplate = "earth",
	Position = {3881, 1108},
	CulturalNames = {
		"castillian", "Tarragona", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		"latin", "Tarraco" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-201, "rome", -- Tarraco was acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Tarragona was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Tarragona was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-201, 395, "farm",
		395, 0, "temple" -- Tarragona was the seat of an archbishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSite("toledo", {
	Name = "Toledo",
	MapTemplate = "earth",
	Position = {3756, 1139},
	Major = true,
	CulturalNames = {
		"castillian", "Toledo", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		"latin", "Toletum" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-197, "rome", -- Toletum was acquired by Rome in 197 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "visigothia", -- Toledo was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Toledo was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-197, 0, "town-hall",
		1474, 1807, "university" -- Minor university founded in Toledo in 1474; Source: "The Cambridge Modern History Atlas", 1912, p. 9; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225. Minor university abolished in Toledo in 1807; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineSite("tortosa", {
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

DefineSite("valencia", {
	Name = "Valencia",
	MapTemplate = "earth",
	Position = {3833, 1148},
	Major = true,
	CulturalNames = {
		"castillian", "Valencia", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 82-83.
		"latin", "Valentia" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
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

DefineSite("zaragoza", {
	Name = "Zaragoza",
	MapTemplate = "earth",
	Position = {3824, 1103},
	Major = true,
	CulturalNames = {
		"castillian", "Zaragoza",
		"latin", "Caesaraugusta"
	},
	HistoricalOwners = {
		395, "rome", -- Saragossa was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		486, "visigothia", -- Saragossa was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain" -- Saragossa was a part of Spain in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		395, 0, "town-hall",
		395, 0, "temple", -- Saragossa was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		1474, 0, "university" -- University founded in Zaragoza in 1474; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})
