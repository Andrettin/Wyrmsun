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

DefineSite("gniezno", {
	Name = "Gniezno",
	MapTemplate = "old_earth",
	Position = {4248, 853},
	BaseUnitType = "unit_settlement_site",
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
	MapTemplate = "old_earth",
	Position = {4223, 806},
	CulturalNames = {
		"teuton", "Kolberg"
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
