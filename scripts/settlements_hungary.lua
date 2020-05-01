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
--      (c) Copyright 2018-2020 by Andrettin
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

DefineSite("buda", {
	Name = "Buda",
	MapTemplate = "earth",
	Position = {4268, 966},
	Major = true,
	CulturalNames = {
		"latin", "Aquincum",
		"magyar", "Buda", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "Ofen" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalOwners = {
		-5500, "linearware-tribe", -- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "iazyge-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		10, "rome", -- Pannonia was acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		453, "ostrogoth-tribe", -- Walamer was king over the Ostrogoths in Pannonia (between the Danube and the Drave) when Attila's empire collapsed in 453 AD; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
		474, "", -- In 474 AD the Ostrogoths left Pannonia to settle in Macedonia under the aegis of the Eastern Roman Emperor, and in that same year Theodemer died, being succeeded by Theoderic; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 7.
		919, "hungary", -- Buda was an Hungarian possession in the 919-1125 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1477, "hungary", -- Buda was an Hungarian possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1560, "turkey" -- Buda was a part of the kingdom of Hungary within the Ottoman Empire in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-5500, 474, "town_hall",
		919, 0, "town_hall"
	},
	Regions = {"europe"}
})

DefineSite("pest", {
	Name = "Pest",
	MapTemplate = "earth",
	Position = {4274, 968},
	Major = true,
	CulturalNames = {
		"magyar", "Pest"
	},
	HistoricalOwners = {
		-264, "iazyge-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		896, "magyar-tribe", -- Magyars held the lands between the Danube and the Theiss in 896; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 610.
		919, "hungary", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1477, "hungary", -- Pest was an Hungarian possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1560, "turkey" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		-264, 0, "town_hall",
		1389, 0, "university", -- University founded in Budapest in 1389; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		-- the Eötvös College was founded in Budapest in 1896 by baron Loránd Eötvös; Source: John Lukacs, "Budapest 1900: a historical portrait of a city and its culture", pp. 175-176.
	},
	Regions = {"europe"}
})
