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

DefineSettlement("aquileia", {
	Name = "Aquileia",
	MapTemplate = "earth",
	Position = {4143, 1005},
	CulturalNames = {
		"latin", "Aquileia" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 26-27, 29.
	},
	HistoricalOwners = {
		-184, "rome" -- Aquileia founded as a colony in 184 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalBuildings = {
		-184, 1815, "unit-latin-town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("bologna", {
	Name = "Bologna",
	MapTemplate = "earth",
	Position = {4096, 1034},
	CulturalNames = {
		"latin", "Bononia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-189, "rome", -- Bononia founded as a colony in 189 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "papal-states" -- Bologna was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-189, 0, "unit-latin-farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("brindisi", {
	Name = "Brindisi",
	MapTemplate = "earth",
	Position = {4245, 1123},
	CulturalNames = {
		"latin", "Brundisium" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-161, "rome", -- Brundisium was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1494, "sicily" -- Brindisi was a possession of the Kingdom of the Two Sicilies about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-161, 0, "unit-latin-farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("cremona", {
	Name = "Cremona",
	MapTemplate = "earth",
	Position = {4066, 1025},
	CulturalNames = {
		"latin", "Cremona" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-218, "rome", -- Cremona founded as a colony in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "milan", -- Cremona was a possession of the Duchy of Milan about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "austria", -- Cremona was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1859, "sardinia" -- Cremona became a possession of Sardinia in 1859; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-218, 1815, "unit-latin-farm",
		1815, 1859, "unit-teuton-farm",
		1859, 0, "unit-latin-farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("florence", {
	Name = "Florence",
	MapTemplate = "earth",
	Position = {4095, 1054},
	CulturalNames = {
		"latin", "Florentia" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-161, "rome", -- Florentia was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1494, "florence" -- Florence was a possession of the Republic of Florence about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-161, 1494, "unit-latin-farm",
		1494, 0, "unit-latin-town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("milan", {
	Name = "Milan",
	MapTemplate = "earth",
	Position = {4049, 1013},
	CulturalNames = {
		"latin", "Mediolanum" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-161, "rome", -- Mediolanum was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1494, "milan", -- Milan was a possession of the Duchy of Milan about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "austria", -- Milan was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1859, "sardinia" -- Milan became a possession of Sardinia in 1859; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-161, 1494, "unit-latin-farm",
		1494, 1815, "unit-latin-town-hall",
		1815, 1859, "unit-teuton-town-hall",
		1859, 0, "unit-latin-town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("modena", {
	Name = "Modena",
	MapTemplate = "earth",
	Position = {4089, 1032},
	CulturalNames = {
		"latin", "Mutina" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-183, "rome", -- Mutina founded as a colony in 183 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "modena"
	},
	HistoricalBuildings = {
		-218, 1494, "unit-latin-farm",
		1494, 0, "unit-latin-town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("naples", {
	Name = "Naples",
	MapTemplate = "earth",
	Position = {4163, 1117},
	CulturalNames = {
		"latin", "Neapolis" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-161, "rome", -- Neapolis was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1494, "sicily" -- Naples was a possession of the Kingdom of the Two Sicilies about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-161, 1494, "unit-latin-farm",
		1494, 0, "unit-latin-town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("oderzo", {
	Name = "Oderzo",
	MapTemplate = "earth",
	Position = {4122, 1005},
	CulturalNames = {
		"latin", "Opitergium" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 26-27; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome" -- Opitergium was in existence in the 161-180 AD period, and under Roman ownership; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalBuildings = {
		161, 1815, "unit-latin-town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("paestum", {
	Name = "Paestum",
	MapTemplate = "earth",
	Position = {4181, 1127},
	CulturalNames = {
		"latin", "Paestum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-273, "rome" -- Paestum founded as a colony in 273 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalBuildings = {
		-273, 1494, "unit-latin-farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("piacenza", {
	Name = "Piacenza",
	MapTemplate = "earth",
	Position = {4056, 1028},
	CulturalNames = {
		"latin", "Placentia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-218, "rome", -- Placentia founded as a colony in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "milan", -- Placentia was a possession of the Duchy of Milan about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "parma", -- Placentia was a possession of the Duchy of Parma in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1860, "sardinia" -- Placentia became a possession of Sardinia in 1860; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-218, 1815, "unit-latin-farm",
		1815, 1860, "unit-teuton-farm",
		1860, 0, "unit-latin-farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("ravenna", {
	Name = "Ravenna",
	MapTemplate = "earth",
	Position = {4114, 1035},
	CulturalNames = {
		"latin", "Ravenna" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-161, "rome", -- Ravenna was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		526, "ostrogothia", -- Ravenna was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1494, "papal-states" -- Ravenna was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-161, 526, "unit-latin-farm",
		526, 1494, "unit-teuton-town-hall",
		1494, 0, "unit-latin-farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("rome", {
	Name = "Rome",
	MapTemplate = "earth",
	Position = {4126, 1096},
	CulturalNames = {
		"latin", "Rome"
	},
	HistoricalOwners = {
		-750, "latin-tribe", -- Latins present in Latium by 750-625 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-500, "rome", -- Rome had been founded and was independent by 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		526, "ostrogothia", -- Rome was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1494, "papal-states" -- Rome was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-750, 526, "unit-latin-town-hall",
		-40, 526, "unit-teuton-temple", -- Temple of Jupiter Capitolinus, Temple of Jupiter Victor, Temple of Vesta, Temple of Fortunus and Temple of Aesculapius existed in Rome in c. 40 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 22-23.
		-40, 526, "unit-teuton-dock", -- Shipyards ("Navalia") existed in Rome in c. 40 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 22-23.
		526, 1494, "unit-teuton-town-hall",
		526, 1494, "unit-teuton-temple",
		526, 1494, "unit-teuton-dock",
		1494, 0, "unit-latin-town-hall",
		1494, 0, "unit-teuton-temple",
		1494, 0, "unit-teuton-dock"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("trieste", {
	Name = "Trieste",
	MapTemplate = "earth",
	Position = {4154, 1009},
	CulturalNames = {
		"latin", "Tergeste",
		"teuton", "Triest"
	},
	HistoricalOwners = {
		-27, "rome", -- Tergeste existed and was in Roman possession at the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		1719, "austria" -- Trieste was a possession of Karl VI of the Holy Roman Empire (ruler of Austria) in 1719; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 464.
	},
	HistoricalBuildings = {
		-27, 1719, "unit-teuton-dock",
		1719, 0, "unit-teuton-town-hall", -- Karl VI of the Holy Roman Empire made Trieste a free port ("Freihafen") in 1719; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 464.
		1719, 0, "unit-teuton-dock", "kaiserliche-privilegierte-orientalische-kompagnie", -- "Kaiserliche privilegierte orientalische Kompagnie" founded in Austria's Adriatic possessions in 1719; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 477.
		1750, 0, "unit-teuton-dock", "haubt-handlungs-compagnie-von-triest-und-fiume" -- "Haubt-Handlungs-Compagnie von Triest und Fiume" founded in 1750; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 477.
	},
	HistoricalPopulation = {
		1758, 6424, -- Trieste's population was 6,424 in 1758; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 466.
		1800, 20900, -- Trieste's population was 20,900 in 1800; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 466.
		1818, 33510, -- Trieste's population was 33,510 in 1818; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 466.
		1838, 54387, -- Trieste's population was 54,387 in 1838; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 466.
		1853, 60860 -- Trieste's population was 60,860 in 1853; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 466.
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "italy", "west-and-central-europe"}
})

DefineSettlement("venice", {
	Name = "Venice",
	MapTemplate = "earth",
	Position = {4122, 1011},
	HistoricalOwners = {
		1494, "venice", -- Venice was a possession of the Venetian Republic about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "austria" -- Venice was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1494, 1815, "unit-latin-town-hall",
		1815, 0, "unit-teuton-town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSettlement("verona", {
	Name = "Verona",
	MapTemplate = "earth",
	Position = {4090, 1014},
	CulturalNames = {
		"latin", "Verona" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome", -- Verona was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1494, "venice", -- Verona was a possession of the Venetian Republic about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "austria" -- Verona was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		161, 1815, "unit-latin-farm",
		1815, 0, "unit-teuton-guard-tower" -- Verona had a fortress in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})
