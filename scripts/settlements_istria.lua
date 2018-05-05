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
--      (c) Copyright 2017-2018 by Andrettin
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

DefineSettlement("gradisca", {
	Name = "Gradisca",
	MapTemplate = "earth",
	Position = {4147, 1004},
	CulturalNames = {
		"teuton", "Gradisca"
	},
	HistoricalOwners = {
		1815, "austria" -- Gradisca was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "italy", "west-and-central-europe"}
})

DefineSettlement("gorz", {
	Name = "Gorz",
	MapTemplate = "earth",
	Position = {4151, 1003},
	CulturalNames = {
		"teuton", "Gorz" -- "Görz"
	},
	HistoricalOwners = {
		1815, "austria" -- Görz was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "italy", "west-and-central-europe"}
})

DefineSettlement("pola", {
	Name = "Pola",
	MapTemplate = "earth",
	Position = {4155, 1027},
	CulturalNames = {
		"teuton", "Pola"
	},
	HistoricalOwners = {
		1477, "venice", -- Pola was a Venetian possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1815, "austria" -- Pola was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1477, 1815, "farm",
		1815, 0, "guard-tower" -- Pola had a fortress in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineSettlement("trieste", {
	Name = "Trieste",
	MapTemplate = "earth",
	Position = {4154, 1009},
	Major = true,
	CulturalNames = {
		"italian", "Trieste",
		"latin", "Tergeste", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"teuton", "Triest"
	},
	HistoricalOwners = {
		-27, "rome", -- Tergeste existed and was in Roman possession at the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		1477, "austria", -- Trieste was an Austrian possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1719, "austria" -- Trieste was a possession of Karl VI of the Holy Roman Empire (ruler of Austria) in 1719; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 464.
	},
	HistoricalBuildings = {
		-27, 0, "town-hall",
		1719, 0, "dock", -- Karl VI of the Holy Roman Empire made Trieste a free port ("Freihafen") in 1719; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 464.
		1719, 0, "dock", "kaiserliche-privilegierte-orientalische-kompagnie", -- "Kaiserliche privilegierte orientalische Kompagnie" founded in Austria's Adriatic possessions in 1719; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 477.
		1750, 0, "dock", "haubt-handlungs-compagnie-von-triest-und-fiume", -- "Haubt-Handlungs-Compagnie von Triest und Fiume" founded in 1750; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 477.
		1759, 0, "market", "temisvarer-privilegierte-handelskompagnie" -- "Temisvarer privilegierte Handelskompagnie" founded in 1759, with triple direction in Vienna, Trieste and Temesvar; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, pp. 477-478.
	},
	HistoricalPopulation = {
		1758, 6424, -- Trieste's population was 6,424 in 1758; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 466.
		1800, 20900, -- Trieste's population was 20,900 in 1800; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 466.
		1818, 33510, -- Trieste's population was 33,510 in 1818; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 466.
		1838, 54387, -- Trieste's population was 54,387 in 1838; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 466.
		1853, 60860 -- Trieste's population was 60,860 in 1853; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 466.
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "italy", "west-and-central-europe"}
})
