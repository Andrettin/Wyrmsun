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

DefineSite("gdansk", {
	Name = "Gdansk",
	MapTemplate = "earth",
	Position = {4265, 812},
	Major = true,
	CulturalNames = {
		"slav", "Gdansk", -- "Gdańsk"
		"teuton", "Danzig"
	},
	HistoricalOwners = {
		1560, "poland", -- Dantzic was a Polish possession about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1569, "poland-lithuania", -- the Union of Lublin occurred in 1569; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1815, "prussia" -- Dantzic was part of the Kingdom of Prussia in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1560, 0, "town_hall"
	},
	Regions = {"poland"}
})

DefineSite("gniezno", {
	Name = "Gniezno",
	MapTemplate = "earth",
	Position = {4248, 853},
	Major = true,
	CulturalNames = {
		"slav", "Gniezno",
		"teuton", "Gnesen" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalOwners = {
		1560, "poland", -- Gniezno's area was a Polish possession about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1569, "poland-lithuania", -- the Union of Lublin occurred in 1569; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1815, "prussia" -- Gnesen was part of the Kingdom of Prussia in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1560, 0, "town_hall"
	},
	Regions = {"poland"}
})

DefineSite("kolberg", {
	Name = "Kolberg",
	MapTemplate = "earth",
	Position = {4223, 806},
	CulturalNames = {
		"teuton", "Kolberg"
	},
	Cores = {
		"germany", -- Kolberg was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Kolberg was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		1648, "brandenburg", -- Kolberg became a Brandenburgian possession in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
		1815, "prussia" -- Kolberg was part of the Kingdom of Prussia in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1648, 0, "farm"
	},
	Regions = {"germany"}
})

DefineSite("konigsberg", {
	Name = "Konigsberg",
	MapTemplate = "earth",
	Position = {4302, 804},
	Major = true,
	CulturalNames = {
		"teuton", "Konigsberg" -- "Königsberg"
	},
	Cores = {
		"prussia"
	},
	HistoricalOwners = {
		1560, "prussia", -- Königsberg was a part of the Duchy of Prussia about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1618, "brandenburg", -- Königsberg became a Brandenburgian possession in 1618; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
		1815, "prussia" -- Königsberg was part of the Kingdom of Prussia in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1544, 0, "town_hall",
		1544, 0, "university" -- University founded in Königsberg in 1544; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe"}
})

DefineSite("krakow", {
	Name = "Krakow",
	MapTemplate = "earth",
	Position = {4293, 907},
	Major = true,
	CulturalNames = {
		"slav", "Krakow"
	},
	Cores = {
		"poland"
	},
	HistoricalOwners = {
		1560, "poland", -- Cracow was a Polish possession about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1569, "poland-lithuania", -- the Union of Lublin occurred in 1569; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1846, "austria" -- Cracow became an Austrian possession in 1846; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1364, 0, "town_hall",
		1364, 0, "university" -- University founded in Krakow in 1364; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"cisleithania", "poland"}
})

DefineSite("poznan", {
	Name = "Poznan",
	MapTemplate = "earth",
	Position = {4225, 855},
	Major = true,
	CulturalNames = {
		"slav", "Poznan", -- "Poznań"
		"teuton", "Posen" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalOwners = {
		1560, "poland", -- Posen was a Polish possession about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1569, "poland-lithuania", -- the Union of Lublin occurred in 1569; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1815, "prussia" -- Posen was part of the Kingdom of Prussia in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1560, 0, "town_hall"
	},
	Regions = {"poland"}
})

DefineSite("szczecin", {
	Name = "Szczecin",
	MapTemplate = "earth",
	Position = {4170, 829},
	Major = true,
	CulturalNames = {
		"slav", "Szczecin",
		"teuton", "Stettin"
	},
	Cores = {
		"germany", -- Stettin was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Stettin was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		1648, "sweden", -- Stettin was a Swedish possession about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
		1815, "prussia" -- Stettin was part of the Kingdom of Prussia in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1648, 0, "town_hall"
	},
	Regions = {"germany"}
})
