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

DefineSettlement("driftwood", { -- from Will Doyle's "Island of the Lizard God"
	Name = "Driftwood",
	MapTemplate = "island-of-the-lizard-god-underground",
	Position = {59, 117},
	CulturalNames = {
		"goblin", "Driftwood" -- in the original, it is a town run by a cartel of intelligent apes
	},
	HistoricalOwners = {
		600, "driftwood"
	},
	HistoricalBuildings = {
		600, 0, "town-hall",
		600, 0, "mercenary-camp", "ape-cartel",
		600, 0, "farm",
		600, 0, "farm",
		600, 0, "farm",
		600, 0, "farm",
		600, 0, "market"
	},
	HistoricalUnits = { -- some units for defense
		600, "unit-goblin-swordsman", 3000, "driftwood",
		600, "unit-goblin-archer", 2000, "driftwood"
	},
	Regions = {}
})
