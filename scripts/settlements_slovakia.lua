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

DefineSettlement("kremnica", {
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
		161, 0, "town-hall"
	},
	Regions = {"czechoslovakia", "europe", "west-and-central-europe"}
})
