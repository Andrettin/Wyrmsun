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

DefineSettlement("opitergium", {
	Name = "Opitergium",
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
