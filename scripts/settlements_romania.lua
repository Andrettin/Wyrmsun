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

DefineSettlement("apulum", {
	Name = "Apulum",
	MapTemplate = "earth",
	Position = {4374, 1001},
	CulturalNames = {
		"latin", "Apulum" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalOwners = {
		107, "rome", -- Dacia (where Apulum was located) was acquired by Rome in 107 AD and lost in 275 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		275, ""
	},
	HistoricalBuildings = {
		107, 161, "farm",
		161, 275, "guard-tower" -- Legionary base present in Apulum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineSettlement("temesvar", {
	Name = "Temesvar",
	MapTemplate = "earth",
	Position = {4318, 1011},
	Major = true,
	CulturalNames = {
	},
	HistoricalOwners = {
		1566, "turkey" -- Temesvar became an Ottoman possession in 1566; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
	},
	HistoricalBuildings = {
		1566, 1815, "town-hall",
		1759, 0, "market", "temisvarer-privilegierte-handelskompagnie" -- "Temisvarer privilegierte Handelskompagnie" founded in 1759, with triple direction in Vienna, Trieste and Temesvar; Source: Ivan Erceg, "Außenhandel der Nordadriatischen Seestädte als Faktor im Entstehen der kapitalistischen Beziehungen in Österreich im 18. und 19. Jahrhundert", 1968, pp. 477-478.
		1815, 0, "stronghold", -- Temesvar had a fortress in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	Regions = {"europe", "west-and-central-europe"}
})
