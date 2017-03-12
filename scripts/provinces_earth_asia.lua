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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineProvince("Anatolia", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true, -- Legionary base present in Satala in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, "unit-latin-barracks", true, -- Legionary base present in Melitene in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, "unit-latin-barracks", true -- Legionary base present in Zeugma in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"asia"}
})

DefineProvince("Arabia", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"persian", "agraei-tribe",
		"persian", "arab-tribe",
		"persian", "nabataei-tribe"
	},
	HistoricalOwners = {
		161, "persian", "arab-tribe", -- The area was inhabited by the Arabes in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
--		161, "persian", "nabataei-tribe", -- The area was inhabited by the Nabataei in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
--		161, "persian", "agraei-tribe" -- The area was inhabited by the Agraei in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"asia"}
})

DefineProvince("Armenia", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"greek", "armenia"
	},
	HistoricalOwners = {
		161, "persian", "parthia", -- in 161 the Parthians invaded Armenia and afterwards defeated the armies stationed there; Source: "Ancient Warfare VII.6", 2013, p. 7.
		163, "greek", "armenia" -- in 163 co-emperor Lucius Verus reconquered Armenia from the Parthians (presumably restoring it as a vassal state?); Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"asia"}
})

DefineProvince("Asia Minor", {
	World = "Earth",
	Tiles = {
		{554, 142} -- Troy
	},
	SettlementLocation = {554, 142}, -- Troy
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"hittite", "troy"
	},
	Regions = {"asia"}
})

DefineProvince("Caucasus", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"persian", "abasgi-tribe",
		"persian", "alan-tribe"
		"persian", "heniochi-tribe"
		"persian", "sindi-tribe"
	},
	HistoricalOwners = {
		161, "persian", "abasgi-tribe", -- The area was inhabited by the Abasgi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
--		161, "persian", "heniochi-tribe", -- The area was inhabited by the Heniochi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
--		161, "persian", "alan-tribe", -- The area was inhabited by the Alani in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
--		161, "persian", "sindi-tribe" -- The area was inhabited by the Sindi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"europe"} -- should be in the provinces_earth_europe.lua file, but since the map doesn't extend this far yet, have this definition in this file for now
})

DefineProvince("India", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1817, "upgrade-college", true -- Hindu College founded in Calcutta in 1817. Source: "Atlas de História Mundial", 2001, p. 24.
	},
	Regions = {"asia"}
})

DefineProvince("Lebanon", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Regions = {"asia"}
})

DefineProvince("Mesopotamia", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Regions = {"asia"}
})

DefineProvince("Palestine", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true -- Legionary base present in Hierosolyma in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"asia"}
})

DefineProvince("Philippines", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1645, "upgrade-university", true -- University Sto Tomás founded in Manila in 1645. Source: Enrique Martínez Ruiz; Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 226.
	},
	Regions = {"asia"}
})

DefineProvince("Syria", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalOwners = {
		161, "persian", "parthia", -- in 161 the Parthians invaded Syria and afterwards defeated the armies stationed there; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true -- Legionary base present in Bostra in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"asia"}
})

-- North Africa, Iberia and the Arabic parts of Asia were collectively known as "Serkland" to the Norse; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 216.