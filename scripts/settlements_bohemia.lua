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

DefineSettlement("prague", {
	Name = "Prague",
	MapTemplate = "earth",
	Position = {4169, 908},
	CulturalNames = {
		"slav", "Prague",
		"suebi", "Bubienum", -- name of the Marcomannic capital; also known as Marobudum; either located where modern Prague or Budweis are; Source: Frederick Kohlrausch, "A History of Germany", 1844, p. 57.
		"teuton", "Prague"
	},
	HistoricalOwners = {
		-9, "marcomanni-tribe", -- Marbod, king of the Suebic tribe of the Marcomanni, conquered Bohemia in 9 BC
		526, "bavarian-tribe", -- Bohemia was in Bavarian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1815, "austria" -- Prague was a part of the Austrian province of Bohemia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-9, 0, "unit-teuton-town-hall",
		1347, 0, "unit-teuton-temple" -- University founded in Prague in 1347; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"cisleithania", "czechoslovakia", "europe", "west-and-central-europe"}
})
