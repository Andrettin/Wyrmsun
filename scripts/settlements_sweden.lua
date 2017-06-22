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

DefineSettlement("roma-gotland", {
	Name = "Roma",
	MapTemplate = "earth",
	Position = {4259, 739},
	CulturalNames = {
		"norse", "Roma"
	},
	HistoricalOwners = {
		{1164, 9, 9}, "cistercian-order"
	},
	HistoricalBuildings = {
		{1164, 9, 9}, 0, "temple", "cistercian-order" -- a Cistercian monastery, the Beata Maria de Gutnalia, was established on September 9th of 1164 at Roma; Source: "Guta Saga: The History of the Gotlanders", 1999, p. xlvii.
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineSettlement("torsburgen", {
	Name = "Torsburgen",
	MapTemplate = "earth",
	Position = {4265, 741},
	CulturalNames = {
		"norse", "Torsburgen"
	},
	HistoricalOwners = {
		300, "gute-tribe"
	},
	HistoricalBuildings = {
		300, 1100, "watch-tower" -- the enormous hill fort of Torsburgen had two phases, one dated to 300-400 AD, and the other to 800-1100 AD; Source: "Guta Saga: The History of the Gotlanders", 1999, pp. xxvii-xxviii.
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})
