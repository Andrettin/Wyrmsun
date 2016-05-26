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
--      (c) Copyright 2016 by Andrettin
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

DefineProvince("Armenia", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"greek", "Armenia"
	},
	HistoricalOwners = {
		161, "persian", "Parthia", -- in 161 the Parthians invaded Armenia and afterwards defeated the armies stationed there; Source: "Ancient Warfare VII.6", 2013, p. 7.
		163, "greek", "Armenia" -- in 163 co-emperor Lucius Verus reconquered Armenia from the Parthians (presumably restoring it as a vassal state?); Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"Asia"}
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
		"hittite", "Troy"
	},
	Regions = {"Asia"}
})

DefineProvince("India", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1817, "upgrade-college", true -- Hindu College founded in Calcutta in 1817. Source: Atlas de História Mundial, 2001, p. 24.
	},
	Regions = {"Asia"}
})

DefineProvince("Philippines", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1645, "upgrade-university", true -- University Sto Tomás founded in Manila in 1645. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 226.
	},
	Regions = {"Asia"}
})

DefineProvince("Syria", {
	World = "Earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalOwners = {
		161, "persian", "Parthia", -- in 161 the Parthians invaded Syria and afterwards defeated the armies stationed there; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"Asia"}
})

-- North Africa, Iberia and the Arabic parts of Asia were collectively known as "Serkland" to the Norse; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 216.