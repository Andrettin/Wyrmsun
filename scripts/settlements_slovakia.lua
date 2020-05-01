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

DefineSite("bratislava", {
	Name = "Bratislava",
	MapTemplate = "earth",
	Position = {4227, 950},
	Major = true,
	CulturalNames = {
		"slav", "Bratislava",
		"teuton", "Presburg"
	},
	HistoricalOwners = {
		-5500, "linearware-tribe", -- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-9, "quadi-tribe", -- if the Boii were conquered by the Marcomanni in 9 BC, the Quadi probably moved to Moravia and Slovakia at around the same time
		161, "quadi-tribe", -- Slovakia was inhabited by the Quadi in 161-180 AD (while the Cotini inhabited eastern Slovakia); Source: "Ancient Warfare VII.6", 2013, p. 7.
		526, "lombard-tribe", -- Bratislava's area was Lombardic territory in 526 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		919, "hungary", -- Presburg was a part of the kingdom of Hungary in the 919-1125 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "austria", -- Presburg was an Austrian possession in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1815, "austria" -- Presburg was a part of the Kingdom of Hungary within the Empire of Austria in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-5500, 0, "town_hall"
	},
	Regions = {"czechoslovakia"}
})

DefineSite("kremnica", {
	Name = "Kremnica",
	MapTemplate = "earth",
	Position = {4275, 935},
	CulturalNames = {
		"magyar", "Körmöczbanya", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"slav", "Kremnica",
		"teuton", "Kremnitz" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalOwners = {
		161, "quadi-tribe", -- the Quadi inhabited roughly the area around Kremnica in the 161-180 AD period, so here we make them the owners of that settlement for lack of better information where they actually settled; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1815, "austria" -- Körmöczbanya/Kremnitz was a part of the Kingdom of Hungary within the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		161, 0, "town_hall"
	},
	Regions = {"czechoslovakia"}
})
