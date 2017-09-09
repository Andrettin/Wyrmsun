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

DefineSettlement("brunn", {
	Name = "Brno",
	MapTemplate = "earth",
	Position = {4206, 936},
	Major = true,
	CulturalNames = {
		"slav", "Brno",
		"teuton", "Brünn"
	},
	HistoricalOwners = {
		1815, "austria" -- Brünn was a part of the Austrian province of Moravia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1815, 0, "town-hall"
	},
	Regions = {"cisleithania", "czechoslovakia", "europe", "west-and-central-europe"}
})

DefineSettlement("doubravnik", {
	Name = "Doubravnik",
	MapTemplate = "earth",
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
	Regions = {"cisleithania", "czechoslovakia", "europe", "west-and-central-europe"}
})

DefineSettlement("olmutz", {
	Name = "Olomouc",
	MapTemplate = "earth",
	Position = {4232, 921},
	Major = true,
	CulturalNames = {
		"slav", "Olomouc",
		"teuton", "Olmutz" -- "Olmütz"
	},
	HistoricalOwners = {
		1560, "austria", -- Olmütz was a part of the Habsburg monarchy in 1560; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1815, "austria" -- Olmütz was a part of the Austrian province of Moravia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1560, 1815, "town-hall",
		1581, 1815, "university", -- University founded in Olmütz in 1581; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
		1815, 0, "stronghold", -- Olmütz had a fortress in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1815, 0, "university"
	},
	Regions = {"cisleithania", "czechoslovakia", "europe", "west-and-central-europe"}
})

DefineSettlement("velehrad", {
	Name = "Velehrad",
	MapTemplate = "earth",
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
	Regions = {"cisleithania", "czechoslovakia", "europe", "west-and-central-europe"}
})
