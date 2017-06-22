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

DefineSettlement("adelsberg", {
	Name = "Adelsberg",
	MapTemplate = "earth",
	Position = {4163, 1005},
	CulturalNames = {
		"teuton", "Adelsberg"
	},
	HistoricalOwners = {
		1815, "austria" -- Adelsberg was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("bruck", {
	Name = "Bruck",
	MapTemplate = "earth",
	Position = {4183, 972},
	CulturalNames = {
		"teuton", "Bruck"
	},
	HistoricalOwners = {
		1815, "austria" -- Bruck (in Styria) was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("carnuntum", {
	Name = "Carnuntum",
	MapTemplate = "earth",
	Position = {4224, 955},
	CulturalNames = {
		"latin", "Carnuntum" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		10, "rome", -- Upper Pannonia (where Carnuntum was located) was acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "" -- Carnuntum was no longer under Roman control by 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		10, 161, "farm", -- Upper Pannonia (where Carnuntum was located) was acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, 526, "stronghold", -- Legionary base present in Carnuntum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, 526, "barracks"
	},
	HistoricalUnits = {
		170, "unit-teuton-swordsman", 20000, "rome", -- a Roman army numbering 20,000 was stationed near Carnuntum in 170 AD, when it was defeated by the Marcomanni and Quadi; Source: "Ancient Warfare VII.6", 2013, p. 29.
		171, "unit-teuton-swordsman", 0, "rome"
	},
	Regions = {"europe", "west-and-central-europe", "roman-danube", "germany-netherlands", "cisleithania"}
})

DefineSettlement("cilli", {
	Name = "Cilli",
	MapTemplate = "earth",
	Position = {4183, 997},
	CulturalNames = {
		"teuton", "Cilli"
	},
	HistoricalOwners = {
		1815, "austria" -- Cilli was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("gastein", {
	Name = "Gastein",
	MapTemplate = "earth",
	Position = {4135, 977},
	CulturalNames = {
		"teuton", "Gastein"
	},
	HistoricalOwners = {
		1815, "austria" -- Gastein was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("Gossensass", {
	Name = "Gossensass",
	MapTemplate = "earth",
	Position = {4095, 983},
	CulturalNames = {
		"teuton", "Gossensass"
	},
	HistoricalOwners = {
		1427, "austria"
	},
	HistoricalBuildings = {
		1427, 0, "silver-mine" -- the silver-lead mine Gossensass was in existence in 1427; and in c. 1480 it had railways within it; Source: M. J. T. Lewis, "Railways in the Greek and Roman World", 2001, p. 16.
	},
	HistoricalResources = {
		1427, 0, "unit-silver-deposit", 0
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("graz", {
	Name = "Graz",
	MapTemplate = "earth",
	Position = {4190, 981},
	CulturalNames = {
		"teuton", "Graz" -- from the same Slavic root as "Grad"
	},
	HistoricalOwners = {
		1560, "austria", -- Gratz was a part of the Habsburg monarchy in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1815, "austria" -- Graz was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1560, 0, "town-hall",
		1585, 0, "university" -- University founded in Graz in 1585; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("innsbruck", {
	Name = "Innsbruck",
	MapTemplate = "earth",
	Position = {4102, 972},
	CulturalNames = {
		"teuton", "Innsbruck"
	},
	HistoricalOwners = {
		1815, "austria" -- Innsbruck was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "town-hall"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("klagenfurt", {
	Name = "Klagenfurt",
	MapTemplate = "earth",
	Position = {4166, 987},
	CulturalNames = {
		"teuton", "Klagenfurt"
	},
	HistoricalOwners = {
		1815, "austria" -- Klagenfurt was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "town-hall"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("linz", {
	Name = "Linz",
	MapTemplate = "earth",
	Position = {4162, 949},
	CulturalNames = {
		"teuton", "Linz"
	},
	HistoricalOwners = {
		1815, "austria" -- Linz was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "town-hall"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("ljubljana", {
	Name = "Ljubljana",
	MapTemplate = "earth",
	Position = {4170, 1000},
	CulturalNames = {
		"latin", "Emona", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"slav", "Ljubljana",
		"teuton", "Laibach" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalOwners = {
		1815, "austria" -- Laibach was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "town-hall"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("marburg", {
	Name = "Marburg",
	MapTemplate = "earth",
	Position = {4213, 988},
	CulturalNames = {
		"teuton", "Marburg"
	},
	HistoricalOwners = {
		1815, "austria" -- Marburg was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("salzburg", {
	Name = "Salzburg",
	MapTemplate = "earth",
	Position = {4135, 960},
	CulturalNames = {
		"latin", "Iuvavum",
		"teuton", "Salzburg"
	},
	HistoricalOwners = {
		45, "rome", -- Noricum was conquered by the Romans in 15 BC, and a few Celtic settlements were subsequently amalgamated into Iuvavum six decades later; Source: Heinz Dopsch, "Kleine Geschichte Salzburgs: Stadt und Land", 2009, pp. 16-17.
		526, "bavarian-tribe", -- Salzburg was in Bavarian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1815, "austria" -- Salzburg was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		45, 526, "town-hall",
		526, 768, "farm",
		768, 0, "town-hall",
		768, 0, "temple" -- Archbishopric existent in Salzburg during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"europe", "west-and-central-europe", "roman-danube", "germany-netherlands", "cisleithania"}
})

DefineSettlement("trent", {
	Name = "Trent",
	MapTemplate = "earth",
	Position = {4095, 1000},
	CulturalNames = {
		"teuton", "Trent"
	},
	HistoricalOwners = {
		1815, "austria" -- Trent was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("vienna", {
	Name = "Vienna",
	MapTemplate = "earth",
	Position = {4212, 952},
	CulturalNames = {
		"celt", "Vindobona",
		"latin", "Vindobona", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"teuton", "Vienna" -- Wien
	},
	HistoricalOwners = {
		10, "rome", -- Upper Pannonia (where Vindobona was located) acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "", -- Vindobona no longer under Roman control by 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		955, "bavaria", -- Vienna became a part of the Bavarian East March in 955; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1156, "austria" -- Austria became a duchy with Vienna in its possession in 1156; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalBuildings = {
		10, 161, "farm",
		161, 526, "stronghold", -- Legionary base present in Vindobona in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, 526, "barracks",
		955, 0, "town-hall",
		1365, 0, "university" -- University founded in Vienna in 1365; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		-- Imperial Polytechnic Institute of Vienna founded in 1815; Source: Silvia Fernanda de Mendonça Figueirôa, "Ciência e tecnologia no Brasil Imperial: Guilherme Schüch, Barão de Capanema (1824-1908)", 2005, p. 442.
	},
	Regions = {"europe", "west-and-central-europe", "roman-danube", "germany-netherlands", "cisleithania"}
})

DefineSettlement("villach", {
	Name = "Villach",
	MapTemplate = "earth",
	Position = {4155, 988},
	CulturalNames = {
		"teuton", "Villach"
	},
	HistoricalOwners = {
		1815, "austria" -- Villach was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "west-and-central-europe"}
})

