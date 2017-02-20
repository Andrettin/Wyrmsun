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

DefineSettlement("fiume", {
	Name = "Fiume",
	MapTemplate = "earth",
	Position = {4170, 1016},
	CulturalNames = {
		"slav", "Rijeka",
		"teuton", "Fiume"
	},
	HistoricalOwners = {
		1719, "austria" -- Fiume was a possession of Karl VI of the Holy Roman Empire (ruler of Austria) in 1719; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 464.
	},
	HistoricalBuildings = {
		1719, 0, "unit-teuton-town-hall" -- Karl VI of the Holy Roman Empire made Fiume/Rijeka a free port ("Freihafen") in 1719; Source: Ivan Erceg, "Auﬂenhandel der Nordadriatischen Seest‰dte als Faktor im Entstehen der kapitalistischen Beziehungen in ÷sterreich im 18. und 19. Jahrhundert", 1968, p. 464.
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineSettlement("pola", {
	Name = "Pola",
	MapTemplate = "earth",
	Position = {4155, 1027},
	CulturalNames = {
		"teuton", "Pola"
	},
	HistoricalOwners = {
		1815, "austria" -- Pola was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "unit-teuton-guard-tower" -- Pola had a fortress in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	Regions = {"europe", "west-and-central-europe"}
})
