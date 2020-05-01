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
--      (c) Copyright 2017-2020 by Andrettin
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

DefineSite("fiume", {
	Name = "Fiume",
	MapTemplate = "earth",
	Position = {4171, 1015},
	Major = true,
	CulturalNames = {
		"slav", "Rijeka", -- Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 464.
		"teuton", "Fiume"
	},
	HistoricalOwners = {
		1477, "hungary", -- Fiume was an Hungarian possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1526, "austria", -- Fiume's area became an Austrian Habsburg possession in 1526; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1719, "austria" -- Fiume was a possession of Karl VI of the Holy Roman Empire (ruler of Austria) in 1719; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 464.
	},
	HistoricalBuildings = {
		1477, 0, "town_hall",
		1719, 0, "dock", -- Karl VI of the Holy Roman Empire made Fiume/Rijeka a free port ("Freihafen") in 1719; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 464.
		1750, 0, "dock", "haubt-handlungs-compagnie-von-triest-und-fiume" -- "Haubt-Handlungs-Compagnie von Triest und Fiume" founded in 1750; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 477.
	},
	Regions = {"europe"}
})

DefineSite("narona", {
	Name = "Narona",
	MapTemplate = "earth",
	Position = {4242, 1068},
	CulturalNames = {
		"latin", "Narona" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome" -- Narona was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalBuildings = {
		161, 0, "farm"
	},
	Regions = {"europe"}
})

DefineSite("zagreb", {
	Name = "Zagreb",
	MapTemplate = "earth",
	Position = {4204, 1005},
	Major = true,
	CulturalNames = {
		"latin", "Celeta", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"slav", "Zagreb",
		"teuton", "Agram"
	},
	Cores = {
		"croatia"
	},
	HistoricalOwners = {
		1477, "hungary", -- Agram was an Hungarian possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1526, "austria", -- Zagreb's area became an Austrian Habsburg possession in 1526; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1815, "austria" -- Agram was a part of the Empire of Austria in 1815 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1477, 0, "town_hall",
		1874, 0, "university" -- University founded in Zagreb in 1874; Source: A.J.P. Taylor, "The Habsburg Monarchy, 1809-1918", 1964, p. 203.
	},
	Regions = {"europe"}
})

