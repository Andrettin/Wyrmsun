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

DefineProvince("Algeria", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains", -- correct?
	Claims = {
		"persian", "gaetuli-tribe",
		"persian", "mauri-tribe",
		"persian", "musulamii-tribe"
	},
	HistoricalOwners = {
		161, "persian", "gaetuli-tribe", -- South-central Algeria was inhabited by the Gaetuli in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, "persian", "musulamii-tribe", -- Southeastern Algeria was inhabited by the Musulamii in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, "persian", "mauri-tribe" -- Southwestern Algeria was inhabited by the Mauri in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true -- Legionary base present in Lambaesis in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"africa"}
})

DefineProvince("Egypt", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains", -- correct?
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true -- Legionary base present in Alexandria in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"africa"}
})

DefineProvince("Libya", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains", -- correct?
	Claims = {
		"persian", "garamantes-tribe"
	},
	HistoricalOwners = {
		161, "persian", "garamantes-tribe" -- Inland western Libya was inhabited by the Garamantes in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"africa"}
})

DefineProvince("Morocco", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains", -- correct?
	Claims = {
		"persian", "mauri-tribe"
	},
	HistoricalOwners = {
		161, "persian", "mauri-tribe" -- Southern Morocco was inhabited by the Mauri in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"africa"}
})

DefineProvince("Oyo", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains", -- correct?
	HistoricalModifiers = {
		1947, "upgrade-university", true -- University founded in Ibadan in 1947. Source: David Thomson, "Europe Since Napoleon", 1966, p. 863.
	},
	Regions = {"africa"}
})

DefineProvince("Tunisia", {
	World = "earth",
	Tiles = {},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains", -- correct?
	Regions = {"africa"}
})

-- The parts of Africa inhabited by black peoples were known as "Great Blueland" or "Blaland" to the Norse; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 216.