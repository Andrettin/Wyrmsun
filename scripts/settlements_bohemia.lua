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

DefineSettlement("budweis", {
	Name = "Budweis",
	MapTemplate = "earth",
	Position = {4167, 937},
	CulturalNames = {
		"slav", "Budejovice",
		"teuton", "Budweis"
	},
	HistoricalOwners = {
		1815, "austria" -- Budweis was a part of the Austrian province of Bohemia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "farm"
	},
	Regions = {"cisleithania", "czechoslovakia", "europe", "west-and-central-europe"}
})

DefineSettlement("jilova", {
	Name = "Jilova",
	MapTemplate = "earth",
	Position = {4169, 913},
	CulturalNames = {
		"slav", "Jilova"
	},
	HistoricalResources = {
		0, 0, "unit-gold-deposit", "the-wedding-veil", 0 -- gold mine located in Jilova; Source: Alena Ježková, "77 Prague Legends", 2006, p. 31.
	},
	Regions = {"cisleithania", "czechoslovakia", "europe", "west-and-central-europe"}
})

DefineSettlement("kutna-hora", {
	Name = "Kutna Hora",
	MapTemplate = "earth",
	Position = {4194, 927},
	CulturalNames = {
		"slav", "Kutna Hora" -- "Kutná Hora"
	},
	HistoricalResources = {
		0, 0, "unit-silver-deposit", "esel", 0, -- silver mine located in Kutná Hora; Source: Alena Ježková, "22 Böhmische Legenden", 2007, pp. 82-83.
		0, 0, "unit-silver-deposit", "smitna", 0 -- silver mine located in Kutná Hora; moved slightly to the south so that both it and Esel can coexist; Source: Alena Ježková, "22 Böhmische Legenden", 2007, p. 81.
	},
	Regions = {"cisleithania", "czechoslovakia", "europe", "west-and-central-europe"}
})

DefineSettlement("prague", {
	Name = "Prague",
	MapTemplate = "earth",
	Position = {4169, 908},
	Major = true,
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
		-9, 0, "town-hall",
		1347, 0, "university" -- University founded in Prague in 1347; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"cisleithania", "czechoslovakia", "europe", "west-and-central-europe"}
})
