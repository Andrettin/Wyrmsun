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

DefineSettlement("aarhus", {
	Name = "Aarhus",
	MapTemplate = "earth",
	Position = {4064, 777},
	Major = true,
	CulturalNames = {
		"germanic", "Ahvoosa", -- tentative rendering of "Aarhus" in Proto-Germanic
		"norse", "Aarhus"
	},
	Cores = {
		"jute-tribe"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSettlement("brodrene-gram", {
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
		-1500, -1300, "town-hall" -- a longhouse existed in Brødrene Gram (in southern Jutland) in the period II of the Nordic Bronze Age (1500-1300 BC), interpreted as a chiefly residence; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 73, 77-78.
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSettlement("egtved", {
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

DefineSettlement("legard", {
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

DefineSettlement("leidre", {
	Name = "Leidre",
	MapTemplate = "earth",
	Position = {4112, 784},
	Major = true,
	CulturalNames = {
		"germanic", "Leidre", -- should be a rendering of Lejre in Proto-Germanic instead
		"norse", "Leidre"
	},
	HistoricalOwners = {
		-2800, "skeldung-tribe", -- Leidre / Lejre; Funnel Beaker culture ended in Zealand in 2800 BC and the Corded Ware culture (neolithic) began; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 38. In the Ynglinga Saga, Odin set his son Skjöldr to rule in Leidre after their people (who here we equate with the cultural ancestors of the Germanics who migrated to Scandinavia) conquered the land
		-27, "herulian-tribe", -- political situation in Europe (presumably) at the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		526, "dane-tribe", -- Danes were in Zealand in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		919, "denmark" -- political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalBuildings = {
		-2800, 0, "town-hall"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSettlement("store-tyrrestrup", {
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

DefineSettlement("vejle", {
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
