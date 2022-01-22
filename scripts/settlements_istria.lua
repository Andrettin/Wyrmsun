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
--      (c) Copyright 2017-2022 by Andrettin
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

DefineSite("gradisca", {
	Name = "Gradisca",
	MapTemplate = "old_earth",
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
	Regions = {"cisleithania", "italy"}
})

DefineSite("gorz", {
	Name = "Gorz",
	MapTemplate = "old_earth",
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
	Regions = {"cisleithania", "italy"}
})

DefineSite("trieste", {
	HistoricalBuildings = {
		1719, 0, "dock", "kaiserliche-privilegierte-orientalische-kompagnie", -- "Kaiserliche privilegierte orientalische Kompagnie" founded in Austria's Adriatic possessions in 1719; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 477.
		1750, 0, "dock", "haubt-handlungs-compagnie-von-triest-und-fiume", -- "Haubt-Handlungs-Compagnie von Triest und Fiume" founded in 1750; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, p. 477.
		1759, 0, "market", "temisvarer-privilegierte-handelskompagnie" -- "Temisvarer privilegierte Handelskompagnie" founded in 1759, with triple direction in Vienna, Trieste and Temesvar; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, pp. 477-478.
	}
})
