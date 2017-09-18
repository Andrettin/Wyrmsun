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

DefineSettlement("ammonium", {
	Name = "Ammonium",
	MapTemplate = "earth",
	Position = {4431, 1385},
	CulturalNames = {
		"persian", "Ammonium"
	},
	HistoricalOwners = {
		-500, "persia" -- Ammonium was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-500, 0, "town-hall"
	},
	Regions = {"africa"}
})

DefineSettlement("barca", {
	Name = "Barca",
	MapTemplate = "earth",
	Position = {4332, 1306},
	Major = true,
	CulturalNames = {
		"greek", "Barca",
		"persian", "Barca"
	},
	HistoricalOwners = {
		-500, "persia" -- Barca was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-500, 0, "town-hall"
	},
	Regions = {"africa"}
})

DefineSettlement("cyrene", {
	Name = "Cyrene",
	MapTemplate = "earth",
	Position = {4342, 1301},
	Major = true,
	CulturalNames = {
		"greek", "Cyrene",
		"latin", "Cyrene", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"persian", "Cyrene"
	},
	HistoricalOwners = {
		-500, "persia" -- Cyrene was part of the Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
	},
	HistoricalBuildings = {
		-500, 0, "town-hall"
	},
	Regions = {"africa"}
})
