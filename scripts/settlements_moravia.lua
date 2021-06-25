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
--      (c) Copyright 2017-2021 by Andrettin
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

DefineSite("brunn", {
	Name = "Brno",
	MapTemplate = "old_earth",
	Position = {4206, 936},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"slav", "Brno",
		"teuton", "Brunn" -- "Brünn"
	},
	HistoricalOwners = {
		1477, "hungary", -- Brünn was a Hungarian possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1490, "bohemia", -- Brünn was reunited with Bohemia in 1490; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1526, "austria", -- Brünn became an Austrian Habsburg possession in 1526; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1815, "austria" -- Brünn was a part of the Austrian province of Moravia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "town_hall"
	},
	Regions = {"cisleithania", "czechoslovakia"}
})

DefineSite("doubravnik", {
	Name = "Doubravnik",
	MapTemplate = "old_earth",
	Position = {4212, 924},
	CulturalNames = {
		"slav", "Doubravnik" -- "Doubravník"
	},
	HistoricalOwners = {
		1211, "cistercian-order"
	},
	HistoricalBuildings = {
		1211, 0, "temple", "cistercian-order" -- a Cistercian nunnery was founded in Doubravník in 1211; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 627.
	},
	Regions = {"cisleithania", "czechoslovakia"}
})

DefineSite("velehrad", {
	Name = "Velehrad",
	MapTemplate = "old_earth",
	Position = {4234, 931},
	CulturalNames = {
		"slav", "Velehrad"
	},
	HistoricalOwners = {
		1201, "cistercian-order"
	},
	HistoricalBuildings = {
		1201, 0, "temple", "cistercian-order" -- a Cistercian monastery was founded in Velehrad in 1201; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 627.
	},
	Regions = {"cisleithania", "czechoslovakia"}
})
