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
--      (c) Copyright 2017-2019 by Andrettin
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

DefineSite("brodrene-gram", {
	Name = "Brodrene Gram", -- in southern Jutland
	MapTemplate = "earth",
	Position = {4051, 790},
	CulturalNames = {
		"norse", "Brodrene Gram" -- "Brødrene Gram"
	},
	HistoricalOwners = {
		-1500, "jarling-tribe"
	},
	HistoricalBuildings = {
		-1500, -1300, "farm" -- a longhouse existed in Brødrene Gram (in southern Jutland) in the period II of the Nordic Bronze Age (1500-1300 BC), interpreted as a chiefly residence; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 73, 77-78.
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSite("egtved", {
	Name = "Egtved",
	MapTemplate = "earth",
	Position = {4055, 781},
	CulturalNames = {
		"norse", "Egtved"
	},
	HistoricalOwners = {
	},
	HistoricalBuildings = {
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSite("legard", {
	Name = "Legard", -- in northwestern Jutland
	MapTemplate = "earth",
	Position = {4034, 752},
	CulturalNames = {
		"norse", "Legard" -- Legård
	},
	HistoricalOwners = {
		-1600, "karling-tribe", -- seems like a good place to place the Karlings
		-1500, "jarling-tribe"
	},
	HistoricalBuildings = {
		-1600, -1500, "lumber-mill",
		-1600, -1500, "farm",
		-1600, -1500, "farm",
		-1500, -1300, "farm" -- a longhouse existed in Legård (in northwestern Jutland) in the period II of the Nordic Bronze Age (1500-1300 BC); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 73, 78.
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSite("store-tyrrestrup", {
	Name = "Store Tyrrestrup",
	MapTemplate = "earth",
	Position = {4070, 743},
	CulturalNames = {
		"norse", "Store Tyrrestrup"
	},
	HistoricalOwners = {
		-1600, "thralling-tribe", -- seems like a good place to place the Thrahilings
		-1500, "jarling-tribe"
	},
	HistoricalBuildings = {
		-1600, -1500, "farm",
		-1500, -1300, "farm" -- a longhouse existed in Store Tyrrestrup (Vendsyssel) in the period II of the Nordic Bronze Age (1500-1300 BC); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 73-74.
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSite("vejle", {
	Name = "Vejle",
	MapTemplate = "earth",
	Position = {4058, 779},
	CulturalNames = {
		"norse", "Vejle"
	},
	HistoricalOwners = {
		-1600, "jarling-tribe" -- regarding the place of Jarl's dwelling, it should be in a mountainous area, but also near a sound (since in the myth Jarl swam across sounds in his infancy); the lands between Jarl's hall and that of Hersir should contain boggy ground somewhere; Vejle's location seems to fit well enough
	},
	HistoricalBuildings = {
		-1600, -1599, "barracks"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})
