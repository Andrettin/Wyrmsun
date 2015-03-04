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
--      grand_strategy_provinces.lua - Defines the grand strategy provinces.
--
--      (c) Copyright 2015 by Andrettin
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

function LoadProvinces(world)
	WorldMapProvinces = nil
	WorldMapProvinces = {}
	WorldMapWaterProvinces = nil
	WorldMapWaterProvinces = {}

	local EarthProvinces = {
		Albania = {
			Name = "Taulantia",
			Tiles = { {134, 33}, {134, 34} },
			Owner = "",
			SettlementName = "Dyr",
			SettlementLocation = {134, 34}, -- Dyr
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Andalusia = {
			Name = "Farther Baetica",
			CulturalNames = {
				Portugal = "Andalusia",
				Spain = "Andalusia"
			},
			Tiles = { {115, 37}, {116, 36}, {116, 37}, {117, 36}, {117, 37}, {118, 37} },
			Owner = "",
			SettlementName = "Corduba",
			SettlementLocation = {116, 36}, -- Cordoba
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Aquitaine = {
			Name = "Aquitania",
			CulturalNames = {
				France = "Aquitaine"
			},
			Tiles = { {119, 31}, {119, 32}, {119, 33}, {120, 31}, {120, 32}, {120, 33}, {121, 31}, {121, 32}, {121, 33}, {122, 32} },
			Owner = "",
			SettlementName = "Tolosa",
			SettlementLocation = {120, 32}, -- Toulouse
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Aragon = {
			Name = "Hither Baetica",
			CulturalNames = {
				Portugal = "Aragon",
				Spain = "Aragon"
			},
			Tiles = { {119, 34}, {119, 35}, {119, 36}, {120, 34}, {121, 34} },
			Owner = "",
			SettlementName = "Caesaraugusta",
			SettlementLocation = {119, 34}, -- Zaragoza
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Astrakhan = {
			Name = "Astrakhan",
			CulturalNames = {
				AsaTribe = "Asaland"
			},
			Tiles = { {151, 30}, {152, 28}, {152, 29}, {152, 30}, {152, 31}, {153, 28}, {153, 29}, {153, 30}, {153, 31}, {154, 28}, {154, 29}, {154, 30}, {155, 29}, {155, 30} },
			Owner = "Asa Tribe",
	--		SettlementName = "Astrakhan",
			SettlementLocation = {154, 30}, -- Astrakhan
			SettlementBuildings = {
				unit_germanic_town_hall = 2,
				unit_germanic_barracks = 2
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 8
			},
			SettlementTerrain = "Plns"
		},
		Attica = {
			Name = "Attica",
			Tiles = { {135, 36}, {136, 36} },
			Owner = "",
			SettlementName = "Athens",
			SettlementLocation = {136, 36}, -- Athens
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Austria = {
			Name = "Noricum",
			CulturalNames = {
				teuton = "Austria"
			},
			Tiles = { {127, 30}, {128, 30}, {129, 29}, {129, 30}, {130, 29}, {130, 30}, {131, 29}, {131, 30} },
			Owner = "",
			SettlementName = "Vienna",
			CulturalSettlementNames = {
				celt = "Vindobona",
				germanic = "Vindobona",
				latin = "Vindobona",
				teuton = "Vienna"
			},
			SettlementLocation = {131, 29}, -- Vienna
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- many soldiers, to represent the might of Rome, and make this a difficult province to conquer
			},
			SettlementTerrain = "Plns"
		},
		BalticLands = {
			Name = "Baltic Lands",
			Tiles = { {135, 23}, {135, 24}, {136, 23}, {136, 24}, {137, 22}, {137, 23}, {137, 24}, {138, 22}, {138, 23}, {138, 24}, {139, 22}, {139, 23} },
			Owner = "",
	--		SettlementName = "Riga",
			SettlementLocation = {137, 23}, -- Riga
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Bavaria = {
			Name = "Raetia",
			CulturalNames = {
				Bavaria = "Bavaria",
				BavarianTribe = "Bavaria",
				teuton = "Bavaria"
			},
			Tiles = { {126, 29}, {127, 28}, {127, 29}, {128, 28}, {128, 29} },
			Owner = "",
			SettlementName = "Ratisbon",
			CulturalSettlementNames = {
				teuton = "Regina Castra",
				teuton = "Regensburg"
			},
			SettlementLocation = {128, 29}, -- Regensburg
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- soldiers to stop the Asa Tribe from expanding here
			},
			SettlementTerrain = "Plns"
		},
		Belgium = {
			Name = "Belgium",
			CulturalNames = {
				Francia = "Austrasia",
				FrankTribe = "Austrasia",
				latin = "Belgica"
			},
			Tiles = { {122, 27}, {122, 28}, {123, 28}, {124, 28} },
			Owner = "",
			SettlementName = "Aduatuca",
			SettlementLocation = {123, 28}, -- Brussels
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- many soldiers, to make this a difficult province to conquer early on
			},
			SettlementTerrain = "Plns"
		},
		Bohemia = {
	--		Name = "Marcomannia",
			Name = "Bohemia",
			CulturalNames = {
				celt = "Boiohaemum",
				germanic = "Boiohaemum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
				latin = "Boiohaemum"
			},
			Tiles = { {129, 28}, {130, 28}, {131, 28} },
			Owner = "",
			SettlementName = "Prague",
			CulturalSettlementNames = {
				germanic = "Bubienum", -- name of the Marcomannic capital; Source: Frederick Kohlrausch, "A History of Germany", 1844, p. 57.
				teuton = "Bubienum"
			},
			SettlementLocation = {130, 28}, -- Prague
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- soldiers to stop the germanic tribes from expanding here too soon
			},
			SettlementTerrain = "Plns"
		},
		Brandenburg = {
			Name = "Semnonia",
			CulturalNames = {
				teuton = "Brandenburg",
				SuebiTribe = "Semnonia"
			},
			Tiles = { {127, 27}, {128, 25}, {128, 26}, {128, 27}, {129, 25}, {129, 26}, {129, 27} },
			Owner = "",
	--		SettlementName = "Berlin",
			SettlementLocation = {129, 26}, -- Berlin
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Brittany = {
			Name = "Armorica",
			Tiles = { {117, 29}, {118, 29}, {118, 30} },
			Owner = "",
			CulturalNames = {
				France = "Brittany"
			},
	--		SettlementName = "Rennes",
			SettlementLocation = {118, 29}, -- Rennes
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- many soldiers, to represent the might of Rome, and make this a difficult province to conquer
			},
			SettlementTerrain = "Plns"
		},
		Bulgaria = {
			Name = "Lower Moesia",
			Tiles = { {136, 33}, {137, 33}, {138, 33}, {139, 33} },
			Owner = "",
			SettlementName = "Odessus",
			SettlementLocation = {139, 33}, -- Odessus
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 10 -- a few soldiers to make it more difficult for the Romans to expand here
			},
			SettlementTerrain = "Plns"
		},
		Burgundy = {
			Name = "Gallia Narbonensis",
			CulturalNames = {
				France = "Provence"
			},
			Tiles = { {123, 31}, {123, 32}, {124, 30}, {124, 31}, {124, 32} },
			Owner = "",
			SettlementName = "Lugdunum",
			SettlementLocation = {123, 31}, -- Lyon
			SettlementBuildings = {
			},
			Map = "maps/earth/belfort.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Castille = {
			Name = "Hispania Tarraconensis",
			CulturalNames = {
				Portugal = "Castille",
				Spain = "Castille"
			},
			Tiles = { {115, 34}, {115, 35}, {115, 36}, {116, 33}, {116, 34}, {116, 35}, {117, 33}, {117, 34}, {117, 35}, {118, 33}, {118, 34}, {118, 35}, {118, 36} },
			Owner = "",
			SettlementName = "Toletum",
			SettlementLocation = {117, 35}, -- Toledo
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Corsica = {
			Name = "Corsica",
			Tiles = { {126, 34} },
			Owner = "",
			SettlementName = "Aleria",
			SettlementLocation = {126, 34},
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Crete = {
			Name = "Crete",
			Tiles = { {137, 39}, {138, 39} },
			Owner = "Minoan Tribe", -- Minoans inhabited the island of Crete in 3000 BC; Source: Rodney Castleden, "Minoans", 2002, p. 4.
			SettlementName = "Knossos",
			SettlementLocation = {137, 39}, -- Knossos
			SettlementBuildings = {
				unit_teuton_town_hall = 2
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Croatia = {
			Name = "Dalmatia",
			CulturalNames = {
				Croatia = "Croatia",
				Muscovy = "Croatia",
				Poland = "Croatia",
				Russia = "Croatia"
			},
			Tiles = { {130, 31}, {131, 31}, {131, 32}, {132, 31}, {132, 32}, {133, 32}, {133, 33} },
			Owner = "",
			SettlementName = "Salonae",
			SettlementLocation = {131, 31}, -- Zagreb
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- many soldiers, to represent the might of Rome, and make this a difficult province to conquer
			},
			SettlementTerrain = "Plns"
		},
		Don = {
			Name = "Don",
			CulturalNames = {
				VanaTribe = "Vanaland"
			},
			Tiles = { {147, 30}, {148, 29}, {148, 30}, {149, 29}, {149, 30}, {150, 28}, {150, 29}, {150, 30} },
			Owner = "Vana Tribe",
			SettlementName = "Tanais",
			SettlementLocation = {148, 30}, -- Rostov-on-Don
			SettlementBuildings = {
				unit_germanic_town_hall = 2,
				unit_germanic_barracks = 2
			},
			Map = "maps/earth/tanais.smp",
			Units = {
				unit_germanic_warrior = 4
			},
			SettlementTerrain = "Plns"
		},
		England = {
			Name = "Britannia",
			CulturalNames = {
				England = "England",
				SaxonTribe = "England",
				teuton = "England"
			},
			Tiles = { {117, 26}, {117, 27}, {118, 25}, {118, 26}, {118, 27}, {119, 25}, {119, 26}, {119, 27}, {120, 26} },
			Owner = "",
			SettlementName = "Londinium",
			SettlementLocation = {119, 27}, -- London
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- many soldiers, to represent the might of Rome, and make this a difficult province to conquer
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		France = {
			Name = "Gallia Lugdunensis",
			CulturalNames = {
				France = "France",
				Francia = "Neustria", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 53-55.
				FrankTribe = "Neustria"
			},
			Tiles = { {119, 29}, {119, 30}, {120, 29}, {120, 30}, {121, 28}, {121, 29}, {121, 30}, {122, 29}, {122, 30}, {122, 31}, {123, 29}, {123, 30}, {124, 29}, {125, 29} },
			Owner = "",
			SettlementName = "Lutetia",
			SettlementLocation = {121, 29}, -- Paris
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- soldiers to prevent germanic expansion here too soon
			},
			SettlementTerrain = "Plns"
		},
		Galicia = {
			Name = "Galicia",
			Tiles = { {133, 28}, {134, 28}, {135, 28}, {136, 28}, {137, 28}, {137, 29}, {138, 28}, {138, 29} },
			Owner = "",
	--		SettlementName = "Lvov",
			SettlementLocation = {137, 28}, -- Lvov / Lemberg
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		GaliciaIberia = {
			Name = "Gallaecia",
			CulturalNames = {
				Galicia = "Galicia",
				Portugal = "Galicia",
				Spain = "Galicia"
			},
			Tiles = { {114, 33}, {115, 33} },
			Owner = "",
			SettlementName = "Lucus Augusti",
--			SettlementLocation = {114, 33}, -- Corunna
			SettlementLocation = {115, 33}, -- moved here so that it is not on the same spot as the mine
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- many soldiers, to represent the might of Rome, and make this a difficult province to conquer
			},
			SettlementTerrain = "Plns"
		},
		Gotaland = {
			Name = "Gotaland",
			CulturalNames = {
				GylfingTribe = "Gylveland",
				GothTribe = "Gothland"
			},
			Tiles = { {128, 21}, {128, 22}, {129, 21}, {129, 22}, {129, 23}, {130, 22}, {130, 23}, {131, 22}, {131, 23} },
			Owner = "Gylfing Tribe",
	--		SettlementName = "Gothenburg",
			SettlementLocation = {128, 22}, -- Gothenburg
			SettlementBuildings = {
				unit_germanic_town_hall = 2, -- Gylve's realm
				unit_germanic_barracks = 2
			},
			Map = "maps/earth/malmo.smp",
			Units = {
				unit_germanic_warrior = 4,
				unit_germanic_archer = 4
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Gotland = {
			Name = "Gotland",
			Tiles = { {133, 23} },
			Owner = "",
			SettlementLocation = {133, 23},
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Hungary = {
			Name = "Pannonia",
			CulturalNames = {
				Hungary = "Hungary"
			},
			Tiles = { {132, 29}, {132, 30}, {133, 29}, {133, 30}, {133, 31}, {134, 29}, {134, 30}, {134, 31}, {135, 29}, {135, 30}, {135, 31}, {136, 29} },
			Owner = "",
			SettlementName = "Aquincum",
			SettlementLocation = {133, 30}, -- Budapest
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 10 -- soldiers to stop the Norici Tribe from expanding here too easily
			},
			SettlementTerrain = "Plns"
		},
		Iceland = {
			Name = "Iceland",
			Tiles = { {103, 17}, {104, 17}, {104, 18}, {105, 17}, {105, 18}, {106, 17}, {106, 18}, {107, 17}, {107, 18}, {108, 17}, {109, 17} },
			Owner = "",
			SettlementName = "Reykjavik",
			SettlementLocation = {104, 18}, -- Reykjavik
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Ireland = {
			Name = "Ireland",
			CulturalNames = { -- cultural names can be assigned either per faction or per civilization
				latin = "Hibernia"
			},
			Tiles = { {113, 25}, {113, 26}, {114, 25}, {114, 26}, {115, 25}, {115, 26} },
			Owner = "",
			SettlementName = "Eblana", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
			SettlementLocation = {115, 26}, -- Dublin
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Latium = {
			Name = "Latium",
			Tiles = { {129, 33}, {129, 34} },
			Owner = "",
			SettlementName = "Rome",
			SettlementLocation = {129, 34}, -- Rome
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- many soldiers, to represent the might of Rome, and make this a very difficult province to conquer
			},
			SettlementTerrain = "Plns"
		},
		Jutland = {
			Name = "Jutland",
			CulturalNames = {
				JuteTribe = "Jutland"
			},
			Tiles = { {126, 23}, {126, 24}, {126, 25}, {127, 25} },
			Owner = "",
	--		SettlementName = "Aarhus",
			SettlementLocation = {126, 24}, -- Aarhus
			SettlementBuildings = {
			},
			Map = "maps/earth/jutland.smp",
			Units = {
				unit_germanic_warrior = 4,
				unit_germanic_archer = 2
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Macedonia = {
			Name = "Macedonia",
			Tiles = { {134, 35}, {135, 34}, {135, 35}, {136, 34}, {137, 34} },
			Owner = "",
			SettlementName = "Aegae",
			SettlementLocation = {135, 34}, -- Aegae
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Moldavia = {
			Name = "Moldavia",
			CulturalNames = {
				latin = "Northern Lower Dacia"
			},
			Tiles = { {139, 29}, {139, 30}, {139, 31}, {140, 30}, {140, 31} },
			Owner = "",
			SettlementLocation = {139, 31}, -- Braila
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- many soldiers, to represent the might of Rome, and make this a difficult province to conquer
			},
			SettlementTerrain = "Plns"
		},
		Naples = {
			Name = "Naples",
			CulturalNames = {
				greek = "Magna Graecia"
			},
			Tiles = { {130, 34}, {131, 34}, {131, 35}, {131, 36}, {132, 35} },
			Owner = "",
			SettlementName = "Neapolis",
			SettlementLocation = {130, 34}, -- Naples
			SettlementBuildings = {
			},
			Map = "maps/earth/south-italy.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Netherlands = {
			Name = "Netherlands",
			CulturalNames = {
				FrisianTribe = "Frisia",
				latin = "Batavia"
			},
			Tiles = { {123, 26}, {123, 27}, {124, 26}, {124, 27} },
			Owner = "",
	--		SettlementName = "Amsterdam",
			SettlementLocation = {123, 26}, -- Amsterdam
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 1 -- soldiers to prevent germanic expansion here too soon
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		NorthItaly = {
			Name = "North Italy",
			CulturalNames = {
				celt = "Cisalpine Gaul"
			},
			Tiles = { {125, 31}, {125, 32}, {126, 31}, {126, 32}, {127, 31}, {127, 32}, {128, 31}, {128, 32}, {128, 33}, {129, 31} },
			Owner = "",
			SettlementName = "Milan",
			CulturalSettlementNames = {
				latin = "Mediolanum",
				teuton = "Mailand"
			},
			SettlementLocation = {127, 31}, -- Milan
			SettlementBuildings = {
			},
			Map = "maps/earth/north-italy.smp",
			Units = {
				unit_germanic_warrior = 10 -- soldiers to stop the Norici Tribe from expanding here too easily
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Peloponnese = {
			Name = "Peloponnese",
			Tiles = { {135, 37}, {136, 37} },
			Owner = "",
			SettlementName = "Mycenae",
			SettlementLocation = {136, 37}, -- Mycenae
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Poland = {
			Name = "Poland",
			Tiles = { {133, 26}, {133, 27}, {134, 26}, {134, 27}, {135, 26}, {135, 27} },
			Owner = "",
	--		SettlementName = "Warsaw",
			SettlementLocation = {134, 26}, -- Warsaw
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Portugal = {
			Name = "Lusitania",
			CulturalNames = {
				Portugal = "Portugal",
				Spain = "Portugal"
			},
			Tiles = { {114, 34}, {114, 35}, {114, 36}, {114, 37} },
			Owner = "",
			SettlementName = "Olisipo",
			SettlementLocation = {114, 36}, -- Lisbon
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Prussia = {
			Name = "Gothiscandza",
			CulturalNames = {
				goth = "Gothiscandza",
				teuton = "Prussia"
			},
			Tiles = { {130, 26}, {131, 25}, {131, 26}, {132, 25}, {132, 26}, {133, 25}, {134, 25}, {135, 25} },
			Owner = "",
	--		SettlementName = "Konigsberg",
			SettlementLocation = {134, 25}, -- Königsberg
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- soldiers to stop the germanic tribes from expanding here too soon
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Rhineland = {
			Name = "Rhineland",
			CulturalNames = {
				DaneTribe = "Saxland",
				SaxonTribe = "Saxland",
				SwedeTribe = "Saxland"
			},
			Tiles = { {125, 26}, {125, 27}, {125, 28}, {126, 26}, {126, 27}, {126, 28}, {127, 26} },
			Owner = "",
	--		SettlementName = "Dusseldorf",
			SettlementLocation = {125, 27}, -- Düsseldorf
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 6 -- soldiers to stop the Asa Tribe from expanding here
			},
			SettlementTerrain = "Plns"
		},
		Russia = {
			Name = "Gardarike",
			CulturalNames = {
				germanic = "Gardarike",
				goth = "Gardarike",
				norse = "Gardarike",
				Muscovy = "Russia",
				Russia = "Russia"
			},
			Tiles = { {140, 22}, {140, 23}, {140, 24}, {140, 25}, {140, 26}, {141, 21}, {141, 22}, {141, 23}, {141, 24}, {141, 25}, {141, 26}, {142, 21}, {142, 22}, {142, 23}, {142, 24}, {142, 25}, {142, 26}, {143, 21}, {143, 22}, {143, 23}, {143, 24}, {143, 25}, {143, 26}, {144, 21}, {144, 22}, {144, 23}, {144, 24}, {144, 25}, {144, 26}, {145, 18}, {145, 19}, {145, 20}, {145, 21}, {145, 22}, {145, 23}, {145, 24}, {145, 25}, {145, 26}, {145, 27}, {146, 18}, {146, 19}, {146, 20}, {146, 21}, {146, 22}, {146, 23}, {146, 24}, {146, 25}, {146, 26}, {146, 27}, {147, 18}, {147, 19}, {147, 20}, {147, 21}, {147, 22}, {147, 23}, {147, 24}, {147, 25}, {147, 26}, {147, 27}, {148, 20}, {148, 21}, {148, 22}, {148, 23}, {148, 24}, {148, 25}, {148, 26}, {148, 27}, {148, 28}, {149, 23}, {149, 24}, {149, 25}, {149, 26}, {149, 27}, {149, 28}, {150, 23}, {150, 24}, {150, 25}, {150, 26}, {150, 27}, {151, 24}, {151, 25}, {151, 26}, {151, 27}, {151, 28}, {151, 29}, {152, 24}, {152, 25}, {152, 26}, {152, 27}, {153, 24}, {153, 25}, {153, 26}, {154, 24}, {154, 25} },
			Owner = "",
	--		SettlementName = "Moscow",
			SettlementLocation = {146, 23}, -- Moscow
			SettlementBuildings = {
			},
			Map = "maps/earth/novgorod.smp",
			Units = {
				unit_germanic_warrior = 10 -- a few soldiers to stop the Vana Tribe from expanding here
			},
			SettlementTerrain = "Plns"
		},
		Sardinia = {
			Name = "Sardinia",
			Tiles = { {126, 36} },
			Owner = "",
			SettlementName = "Caralis",
			SettlementLocation = {126, 36},
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns",
			Coastal = true
		},
		Scotland = {
			Name = "Caledonia",
			CulturalNames = {
				England = "Scotland",
				ScotTribe = "Scotland",
				Scotland = "Scotland"
			},
			Tiles = { {116, 22}, {116, 23}, {117, 22}, {117, 23}, {117, 24}, {118, 23}, {118, 24} },
			Owner = "",
			SettlementLocation = {117, 24}, -- Edinburgh
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Hill",
			Coastal = true
		},
		Serbia = {
			Name = "Upper Moesia",
			Tiles = { {134, 32}, {135, 32}, {135, 33} },
			Owner = "",
			SettlementName = "Viminacium",
			SettlementLocation = {135, 32}, -- Viminacium
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 10 -- a few soldiers to make it more difficult for the Romans to expand here
			},
			SettlementTerrain = "Plns"
		},
		Sicily = {
			Name = "Sicily",
			Tiles = { {129, 37} },
			Owner = "",
			SettlementName = "Syracuse",
			SettlementLocation = {129, 37}, -- Palermo
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns",
			Coastal = true -- this variable is calculated automatically, but we place it here anyway for the random map generation (this will mean that this province is generated near a water body)
		},
		Silesia = {
			Name = "Silesia",
			Tiles = { {130, 27}, {131, 27}, {132, 27}, {132, 28} },
			Owner = "",
	--		SettlementName = "Breslau",
			SettlementLocation = {132, 27}, -- Breslau
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- soldiers to stop the germanic tribes from expanding here too soon
			},
			SettlementTerrain = "Plns"
		},
		Sweden = {
			Name = "Sweden",
			Tiles = { {129, 20}, {130, 20}, {130, 21}, {131, 21}, {132, 21} },
			Owner = "",
			SettlementName = "Sigtun",
			SettlementLocation = {132, 21}, -- Stockholm / Sigtun
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 10 -- soldiers to stop the Gylfing Tribe from expanding here
			},
			SettlementTerrain = "Plns"
		},
		Switzerland = {
			Name = "Helvetia",
			CulturalNames = {
				teuton = "Switzerland"
			},
			Tiles = { {125, 30}, {126, 30} },
			Owner = "",
	--		SettlementName = "Bern",
			SettlementLocation = {125, 30}, -- Bern
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- many soldiers, to represent the might of Rome, and make this a difficult province to conquer
			},
			SettlementTerrain = "Mntn"
		},
		Thrace = {
			Name = "Thrace",
			Tiles = { {138, 34}, {139, 34} },
			Owner = "",
			SettlementName = "Byzantium",
			SettlementLocation = {139, 34}, -- Athens
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 10 -- a few soldiers to make it more difficult for the Romans to expand here
			},
			SettlementTerrain = "Plns"
		},
		Transylvania = {
			Name = "Transylvania",
			CulturalNames = {
				latin = "Upper Dacia",
				teuton = "Siebenbürgen"
			},
			Tiles = { {136, 30}, {136, 31}, {137, 30}, {137, 31}, {138, 30}, {138, 31} },
			Owner = "",
			SettlementName = "",
			SettlementLocation = {136, 30}, -- Klausenburg
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		},
		Ukraine = {
			Name = "Danparstathir", -- name used in the Hervararsaga for a field of battle between the Goths and Huns, possibly the region of the Dnieper; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 484.
			CulturalNames = {
				goth = "Danparstathir",
				norse = "Danparstathir",
				Muscovy = "Ukraine",
				Poland = "Ukraine",
				Russia = "Ukraine"
			},
			Tiles = { {139, 28}, {140, 27}, {140, 28}, {140, 29}, {141, 27}, {141, 28}, {141, 29}, {141, 30}, {142, 27}, {142, 28}, {142, 29}, {142, 30}, {143, 27}, {143, 28}, {143, 29}, {143, 30}, {144, 27}, {144, 28}, {144, 29}, {144, 30}, {144, 31}, {145, 28}, {145, 29}, {145, 30}, {146, 28}, {146, 29}, {146, 30}, {147, 28}, {147, 29} },
			Owner = "",
	--		SettlementName = "Kiev",
			SettlementLocation = {141, 27}, -- Kiev
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- soldiers to stop the Vana Tribe from expanding here
			},
			SettlementTerrain = "Plns"
		},
		Wallachia = {
			Name = "Wallachia",
			CulturalNames = {
				latin = "Southern Lower Dacia"
			},
			Tiles = { {136, 32}, {137, 32}, {138, 32}, {139, 32}, {140, 32} },
			Owner = "",
			SettlementLocation = {138, 32}, -- Bucharest
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- many soldiers, to represent the might of Rome, and make this a difficult province to conquer
			},
			SettlementTerrain = "Plns"
		},
		WhiteRussia = {
			Name = "White Russia",
			Tiles = { {136, 25}, {136, 26}, {136, 27}, {137, 25}, {137, 26}, {137, 27}, {138, 25}, {138, 26}, {138, 27}, {139, 24}, {139, 25}, {139, 26}, {139, 27} },
			Owner = "",
	--		SettlementName = "Minsk",
			SettlementLocation = {139, 25}, -- Minsk
			SettlementBuildings = {
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
			},
			SettlementTerrain = "Plns"
		}
	}
	
	local NidavellirProvinces = {
		BrownHills = {
			Name = "Brown Hills",
			Tiles = { {18, 29}, {18, 30}, {19, 28}, {19, 29}, {19, 30}, {20, 28}, {20, 29}, {20, 30}, {20, 31}, {20, 32}, {21, 28}, {21, 29}, {21, 30}, {21, 31}, {21, 32}, {22, 25}, {22, 26}, {22, 27}, {22, 28}, {22, 29}, {22, 30}, {22, 31}, {22, 32}, {23, 25}, {23, 26}, {23, 27}, {23, 28}, {23, 29}, {23, 30}, {23, 31}, {23, 32}, {24, 24}, {24, 25}, {24, 26}, {24, 27}, {24, 28}, {24, 29}, {24, 30}, {24, 31}, {24, 32}, {25, 24}, {25, 25}, {25, 26}, {25, 27}, {25, 28}, {25, 29}, {25, 30}, {25, 31}, {25, 32}, {26, 24}, {26, 25}, {26, 26}, {26, 27}, {26, 28}, {26, 29}, {26, 30}, {26, 31}, {27, 26}, {27, 27}, {27, 28}, {27, 29}, {27, 30}, {28, 28}, {29, 28} },
			Owner = "Untersberg",
			Civilization = "gnome",
			SettlementLocation = {25, 26},
			SettlementBuildings = {
				unit_gnomish_town_hall = 2,
				unit_gnomish_barracks = 2 -- has capability to train soldiers
			},
			Map = "maps/nidavellir/brown-hills.smp",
			Units = {
				unit_gnomish_recruit = 2 -- Pypo I and his envoy
			},
			Heroes = {
			},
			SettlementTerrain = "Hill" -- should be DkPl?
		},
		CavernsOfChaincolt = {
			Name = "Caverns of Chaincolt",
			Tiles = { {25, 14}, {25, 15}, {25, 16}, {26, 11}, {26, 14}, {26, 15}, {27, 11}, {27, 12}, {27, 13}, {27, 14}, {27, 15}, {27, 16}, {28, 9}, {28, 10}, {28, 11}, {28, 12}, {28, 13}, {28, 14}, {28, 15}, {28, 16}, {28, 17}, {29, 9}, {29, 10}, {29, 11}, {29, 12}, {29, 13}, {29, 14}, {29, 15}, {29, 16}, {29, 17}, {29, 18}, {29, 19}, {29, 20}, {30, 9}, {30, 10}, {30, 11}, {30, 12}, {30, 13}, {30, 14}, {30, 15}, {30, 16}, {30, 17}, {30, 18}, {30, 19}, {30, 20}, {31, 9}, {31, 10}, {31, 11}, {31, 12}, {31, 13}, {31, 15}, {31, 19}, {32, 9}, {32, 10}, {32, 11}, {32, 12} },
			Owner = "Norlund Clan",
			Civilization = "dwarf",
			SettlementLocation = {30, 13},
			SettlementBuildings = {
				unit_dwarven_town_hall = 2,
				unit_dwarven_barracks = 2, -- has capability to train warriors
				unit_dwarven_smithy = 2 -- Durstorn has runesmiths under his employ
			},
			Map = "maps/nidavellir/caverns-of-chaincolt.smp",
			Units = {
	--			unit_dwarven_axefighter = 5, -- Rugnur, 4 Dwarven Guardsmen (5 if easy mode)
	--			unit_dwarven_steelclad = 6, -- Baglur, Durstorn, Neglur, Glinar, Kuhnar, Theganli
	--			unit_dwarven_scout = 1 -- Noiraran
				unit_dwarven_axefighter = 4, -- 4 Dwarven Guardsmen (5 if easy mode)
				unit_dwarven_steelclad = 2, -- Neglur, Glinar
				unit_gnomish_recruit = 0
			},
			Heroes = {
			},
			SettlementTerrain = "Mntn" -- for random map generation
		},
		CavernsOfFlame = {
			Name = "Caverns of Flame",
			Tiles = { {39, 2}, {39, 3}, {39, 4}, {39, 9}, {40, 1}, {40, 2}, {40, 3}, {40, 4}, {40, 5}, {40, 6}, {40, 7}, {40, 8}, {40, 9}, {41, 1}, {41, 2}, {41, 3}, {41, 4}, {41, 5}, {41, 6}, {41, 7}, {41, 8}, {41, 9}, {42, 1}, {42, 2}, {42, 3}, {42, 4}, {42, 5}, {42, 6}, {42, 7}, {43, 1}, {43, 2}, {43, 3}, {43, 6} },
			Owner = "",
			Civilization = "goblin",
			SettlementLocation = {41, 6},
			SettlementBuildings = {
				unit_dwarven_smithy = 2 -- abandoned forge which Thursagan later uses to craft the Scepter of Fire
			},
			Map = "maps/nidavellir/caverns-of-flame.smp",
			Units = { -- starting units in the Caverns of Flame scenario
				unit_goblin_spearman = 10, -- 2 orcish warlords, 2 troll warriors, 2 trolls, 4 orcish warriors
				unit_goblin_war_machine = 1
			},
			Heroes = {
			},
			SettlementTerrain = "Hill"
		},
		EasternMines = {
			Name = "Eastern Mines",
			Tiles = { {22, 1}, {22, 2}, {23, 1}, {23, 2}, {23, 3}, {23, 4}, {24, 1}, {24, 2}, {24, 3}, {24, 4}, {24, 5}, {25, 1}, {25, 2}, {25, 3}, {25, 4}, {25, 5}, {26, 1}, {26, 2}, {26, 3}, {26, 4}, {26, 5}, {27, 1}, {27, 2}, {27, 3}, {27, 4}, {27, 5}, {28, 1}, {28, 2}, {28, 3}, {28, 4}, {29, 1}, {29, 2}, {29, 3}, {29, 4}, {30, 1}, {30, 2}, {30, 3}, {30, 4}, {30, 8}, {31, 1}, {31, 2}, {31, 3}, {31, 4}, {31, 5}, {31, 6}, {31, 8}, {32, 1}, {32, 2}, {32, 3}, {32, 4}, {32, 5}, {32, 6}, {32, 7}, {32, 8}, {33, 1}, {33, 2}, {33, 3}, {33, 4}, {33, 5}, {33, 6}, {33, 7}, {33, 8}, {33, 9}, {34, 1}, {34, 2}, {34, 3}, {34, 4}, {34, 5}, {34, 6}, {34, 7}, {34, 8}, {35, 1}, {35, 2}, {35, 3}, {35, 4}, {35, 5}, {35, 6}, {35, 7}, {35, 8}, {35, 9}, {36, 1}, {36, 2}, {36, 3}, {36, 4}, {36, 5}, {36, 6}, {36, 7}, {36, 8}, {36, 9}, {37, 1}, {37, 2}, {37, 3}, {37, 4}, {37, 5}, {37, 6}, {37, 7}, {37, 8}, {37, 9}, {37, 10}, {38, 1}, {38, 2}, {38, 3}, {38, 4}, {38, 5}, {38, 6}, {38, 7}, {38, 8}, {38, 9}, {39, 1}, {39, 5}, {39, 6}, {39, 7}, {39, 8} },
			Owner = "",
			Civilization = "goblin",
			SettlementLocation = {38, 7},
			SettlementBuildings = {},
			Map = "maps/nidavellir/eastern-mines.smp",
			Units = {
	--			unit_goblin_spearman = 3 -- three starting chieftains in the Gathering Materials scenario
				unit_goblin_spearman = 9 * 2 -- three starting chieftains in the Gathering Materials scenario, plus 2 goblins for each tribe and multiplied by 2 to prevent too early expansion into this province
			},
			Heroes = {
			},
			SettlementTerrain = "Hill"
		},
		GryphonMountain = {
			Name = "Gryphon Mountain",
			Tiles = { {24, 22}, {24, 23}, {25, 20}, {25, 21}, {25, 22}, {25, 23}, {26, 20}, {26, 21}, {26, 22}, {26, 23}, {27, 20}, {27, 21}, {27, 22}, {27, 23}, {27, 24}, {27, 25}, {28, 20}, {28, 21}, {28, 22}, {28, 23}, {28, 24}, {28, 25}, {28, 26}, {28, 27}, {29, 21}, {29, 22}, {29, 23}, {29, 24}, {29, 25}, {29, 26}, {29, 27}, {30, 21}, {30, 23}, {30, 24}, {30, 25}, {30, 26}, {30, 27}, {31, 23}, {31, 24}, {31, 25}, {31, 26}, {32, 23}, {32, 24} },
			Owner = "",
			SettlementLocation = {29, 23},
			SettlementBuildings = {},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = { -- wild units in the Gryphon Mountain scenario
				unit_dwarven_gryphon_rider = 6 -- Mother Gryphon, Graak, Grook, Gruak, Graik, Griak
			},
			Heroes = {
			},
			SettlementTerrain = "Mntn"
		},
		Heartfangs = {
			Name = "Heartfangs",
			Tiles = { {14, 10}, {14, 11}, {15, 7}, {15, 8}, {15, 9}, {15, 10}, {15, 11}, {15, 12}, {16, 7}, {16, 8}, {16, 9}, {16, 10}, {16, 11}, {16, 12}, {17, 8}, {17, 9}, {17, 10}, {17, 11}, {17, 12}, {17, 13}, {18, 6}, {18, 9}, {18, 10}, {18, 11}, {18, 12}, {19, 5}, {19, 6}, {19, 8}, {19, 9}, {19, 10}, {19, 11}, {19, 12}, {19, 13}, {20, 4}, {20, 5}, {20, 6}, {20, 7}, {20, 8}, {20, 9}, {20, 10}, {20, 11}, {20, 12}, {20, 13}, {21, 4}, {21, 5}, {21, 6}, {21, 7}, {21, 8}, {21, 9}, {21, 10}, {21, 11}, {21, 12}, {21, 13}, {22, 4}, {22, 5}, {22, 6}, {22, 7}, {22, 8}, {22, 9}, {22, 10}, {22, 11}, {22, 12}, {22, 13}, {23, 5}, {23, 6}, {23, 7}, {23, 8}, {23, 9}, {23, 10}, {23, 11}, {23, 12}, {23, 13}, {24, 6}, {24, 7}, {24, 8}, {24, 9}, {24, 10}, {24, 11}, {24, 12}, {24, 13}, {24, 14}, {25, 6}, {25, 7}, {25, 8}, {25, 9}, {25, 10}, {25, 11}, {25, 12}, {25, 13}, {26, 6}, {26, 7}, {26, 8}, {26, 9}, {26, 10}, {26, 12}, {26, 13}, {27, 9}, {27, 10} },
			Owner = "Khag Tribe",
			Civilization = "goblin",
			SettlementLocation = {23, 11},
			SettlementBuildings = {
				unit_goblin_town_hall = 2
			},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = {
				unit_goblin_spearman = 5 -- Fal Khag, Gatrakh, Thurg, Krung, Gorokh (should all be cavalry)
			},
			Heroes = {
			},
			SettlementTerrain = "Mntn"
		},
		HighPass = {
			Name = "High Pass",
			Tiles = { {39, 12}, {40, 10}, {40, 11}, {40, 12}, {40, 13}, {40, 14}, {41, 10}, {41, 11}, {41, 12}, {41, 13}, {41, 14}, {42, 11}, {42, 12}, {42, 13}, {42, 14}, {43, 11}, {43, 12}, {43, 13}, {43, 14}, {44, 9}, {44, 10}, {44, 11}, {44, 12}, {44, 13}, {44, 14}, {45, 9}, {45, 10}, {45, 11}, {45, 12}, {45, 13}, {45, 14}, {46, 9}, {46, 10}, {46, 11}, {46, 12}, {46, 13}, {46, 14}, {47, 10}, {47, 11}, {47, 12}, {48, 10}, {48, 11}, {48, 12}, {49, 11} },
			Owner = "",
			SettlementLocation = {40, 12},
			SettlementBuildings = {},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = { -- wild units in the High Pass scenario
				unit_goblin_spearman = 10, -- 10 uses of the WILD_THING function which generates trolls, ogres and wolves
				unit_dwarven_gryphon_rider = 1 -- Kaara
			},
			Heroes = {
			},
			SettlementTerrain = "Hill"
		},
		HighbrookPass = {
			Name = "Highbrook Pass",
			Tiles = { {33, 10}, {33, 11}, {34, 9}, {34, 10}, {34, 11}, {35, 10}, {35, 11}, {35, 12}, {35, 14}, {35, 15}, {36, 10}, {36, 11}, {36, 12}, {36, 13}, {36, 14}, {36, 15}, {37, 11}, {37, 12}, {37, 13}, {37, 14}, {37, 15}, {38, 10}, {38, 11}, {38, 12}, {38, 13}, {38, 14}, {39, 10}, {39, 11}, {39, 13}, {39, 14} },
			Owner = "",
			SettlementLocation = {35, 11},
			SettlementBuildings = {},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = { -- starting units in the Settling Disputes scenario
				unit_dwarven_axefighter = 0,
				unit_dwarven_steelclad = 0,
				unit_dwarven_thane = 0,
				unit_goblin_spearman = 4 * 3, -- one troll, two young ogres, one ogre -- multiply by three to prevent dwarven expansion here too early
				unit_goblin_archer = 2 * 3 -- two liches
			},
			Heroes = {
			},
			SettlementTerrain = "Mntn"
		},
		KalKartha = {
			Name = "Kal Kartha",
			Tiles = { {42, 8}, {42, 9}, {42, 10}, {43, 4}, {43, 5}, {43, 7}, {43, 8}, {43, 9}, {43, 10}, {44, 1}, {44, 2}, {44, 3}, {44, 4}, {44, 5}, {44, 6}, {44, 7}, {44, 8}, {45, 1}, {45, 2}, {45, 3}, {45, 4}, {45, 5}, {45, 6}, {45, 7}, {45, 8}, {46, 1}, {46, 2}, {46, 3}, {46, 4}, {46, 5}, {46, 6}, {46, 7}, {46, 8}, {47, 1}, {47, 2}, {47, 3}, {47, 4}, {47, 5}, {47, 6}, {47, 7}, {47, 8}, {47, 9}, {48, 1}, {48, 2}, {48, 3}, {48, 4}, {48, 5}, {48, 6}, {48, 7}, {48, 8}, {48, 9}, {49, 1}, {49, 2}, {49, 3}, {49, 4}, {49, 5}, {49, 6}, {49, 7}, {49, 8}, {49, 9}, {49, 10}, {50, 1}, {50, 2}, {50, 3}, {50, 4}, {50, 5}, {50, 6}, {50, 7}, {50, 8}, {50, 9}, {50, 10}, {50, 11}, {51, 3}, {51, 4}, {51, 5}, {51, 6}, {51, 7}, {51, 8}, {51, 9}, {51, 10}, {51, 11}, {52, 4}, {52, 5}, {52, 6}, {52, 7}, {52, 8}, {52, 9}, {52, 10}, {52, 11}, {52, 12}, {53, 4}, {53, 5}, {53, 6}, {53, 7}, {53, 8}, {53, 9}, {53, 10}, {53, 11}, {53, 12}, {54, 6}, {54, 7}, {54, 8}, {54, 9}, {54, 10}, {54, 11}, {54, 12}, {55, 7}, {55, 8}, {55, 9}, {55, 10}, {55, 11}, {55, 12}, {56, 12} },
			Owner = "",
			SettlementName = "Kal Kartha",
			SettlementLocation = {45, 5},
			SettlementBuildings = {},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = { -- some wild gnomes from the Forbidden Forest to stop too early expansion into this province
				unit_dwarven_axefighter = 0,
				unit_dwarven_steelclad = 0,
				unit_dwarven_thane = 0,
				unit_gnomish_recruit = 4
			},
			Heroes = {
			},
			SettlementTerrain = "Mntn"
		},
		Lyr = {
			Name = "Lyr",
			Tiles = { {47, 13}, {47, 14}, {47, 15}, {47, 16}, {48, 13}, {48, 14}, {48, 15}, {48, 16}, {49, 12}, {49, 13}, {49, 14}, {49, 15}, {49, 16}, {49, 17}, {50, 12}, {50, 13}, {50, 14}, {50, 15}, {50, 16}, {50, 17}, {51, 12}, {51, 13}, {51, 14}, {51, 15}, {51, 16}, {51, 17}, {52, 13}, {52, 14}, {52, 15}, {52, 16}, {52, 17}, {53, 13}, {53, 14}, {53, 15}, {53, 16}, {54, 13}, {54, 14}, {54, 15}, {54, 16}, {55, 13}, {55, 14}, {55, 15}, {55, 16}, {56, 13}, {56, 14}, {56, 15}, {56, 16} },
			Owner = "",
			SettlementName = "Lyr",
			SettlementLocation = {50, 13},
			SettlementBuildings = {},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = { -- some wild dwarves to stop too early expansion into this province
				unit_dwarven_axefighter = 12
			},
			Heroes = {
			},
			SettlementTerrain = "Hill"
		},
		NorthernWastelands = {
			Name = "Northern Wastelands",
			Tiles = { {12, 3}, {12, 4}, {13, 3}, {13, 4}, {14, 2}, {14, 3}, {14, 4}, {15, 1}, {15, 2}, {15, 3}, {15, 4}, {16, 1}, {16, 2}, {16, 3}, {16, 4}, {16, 5}, {16, 6}, {17, 1}, {17, 2}, {17, 3}, {17, 4}, {17, 5}, {17, 6}, {17, 7}, {18, 1}, {18, 2}, {18, 3}, {18, 4}, {18, 5}, {18, 7}, {18, 8}, {19, 1}, {19, 2}, {19, 3}, {19, 4}, {19, 7}, {20, 1}, {20, 2}, {20, 3}, {21, 1}, {21, 2}, {21, 3}, {22, 3} },
			Owner = "",
			Civilization = "goblin",
			SettlementLocation = {14, 2},
			SettlementBuildings = {
				unit_dwarven_smithy = 2 -- Thursagan's smithy
			},
			Map = "maps/nidavellir/northern-wastelands.smp",
			Units = { -- numbers derived from 3 goblins per 13 groups which appear in the map during the Searching for the Runecrafter quest (the 2 other goblins which appear in the NorthernWastelandsEnemy() function were added for balance reasons)
				unit_goblin_spearman = 26,
				unit_goblin_archer = 13
			},
			Heroes = {
			},
			SettlementTerrain = "Hill"
		},
		PeacefulValley = {
			Name = "Peaceful Valley",
			Tiles = { {49, 18}, {50, 18}, {50, 19}, {50, 20}, {51, 18}, {51, 19}, {51, 20}, {52, 18}, {52, 19}, {52, 20}, {53, 17}, {53, 18}, {53, 19}, {53, 20}, {54, 17}, {54, 18}, {54, 19}, {55, 17}, {55, 18}, {55, 19}, {56, 17}, {56, 18} },
			Owner = "Lggi Tribe",
			Civilization = "goblin",
			SettlementLocation = {51, 19},
			SettlementBuildings = {
				unit_goblin_town_hall = 2,
				unit_goblin_barracks = 2 -- has capability to train soldiers
			},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = {
				unit_goblin_spearman = 14 -- 13 is the quantity of villages in Peaceful Valley map (each can generate 0-2 goblin spearmen) + T'shar Lggi himself
			},
			Heroes = {
			},
			SettlementTerrain = "Hill"
		},
		ShorbearHills = {
			Name = "Shorbear Hills",
			Tiles = { {31, 16}, {31, 17}, {31, 18}, {32, 15}, {32, 16}, {32, 17}, {32, 18}, {32, 19}, {33, 14}, {33, 15}, {33, 16}, {33, 17}, {33, 18}, {33, 19}, {34, 14}, {34, 15}, {34, 16}, {34, 17} },
			Owner = "Shorbear Clan",
			Civilization = "dwarf",
			SettlementName = "Shorbear Hold",
			SettlementLocation = {33, 15},
			SettlementBuildings = {
				unit_dwarven_town_hall = 2,
				unit_dwarven_stronghold = 2, -- Shorbear Hold
				unit_dwarven_barracks = 2, -- has capability to train warriors
				unit_dwarven_smithy = 2 -- renowned skilled crafters
			},
			Map = "maps/nidavellir/shorbear-hills.smp",
			Units = {
				unit_dwarven_thane = 1 -- Glonoin
			},
			Heroes = {
			},
			SettlementTerrain = "Hill"
		},
		SouthernTunnels = {
			Name = "Southern Tunnels",
			Tiles = { {31, 14}, {32, 13}, {32, 14}, {33, 12}, {33, 13}, {34, 12}, {34, 13}, {35, 13} },
			Owner = "Shinsplitter Clan",
			Civilization = "dwarf",
			SettlementName = "Knalga",
			SettlementLocation = {32, 14},
			SettlementBuildings = {
				unit_dwarven_town_hall = 2,
				unit_dwarven_barracks = 2 -- has capability to train warriors
			},
			Map = "maps/nidavellir/southern-tunnels.smp",
			Units = {
				unit_dwarven_steelclad = 3, -- Glildur, Glindur, Kalnar
				unit_dwarven_thane = 5 -- Lyndar, Gaenlar, Glinan, Crintil, Aendan
			},
			Heroes = {
			},
			SettlementTerrain = "Hill"
		}
	}
	
	local EarthWaterProvinces = {
		AdriaticSea = {
			Name = "Adriatic Sea",
			Tiles = { {129, 32}, {130, 32}, {130, 33}, {131, 33}, {132, 33}, {132, 34}, {133, 34}, {133, 35} },
			Owner = "Ocean"
		},
		AegeanSea = {
			Name = "Aegean Sea",
			Tiles = { {136, 35}, {137, 35}, {137, 36}, {137, 37}, {137, 38}, {138, 35}, {138, 36}, {138, 37}, {138, 38}, {139, 35}, {139, 38}, {140, 35} },
			Owner = "Ocean"
		},
		AtlanticOcean = {
			Name = "Atlantic Ocean",
			Tiles = { {102, 16}, {102, 17}, {102, 18}, {102, 19}, {102, 20}, {102, 21}, {102, 22}, {102, 23}, {102, 24}, {102, 25}, {102, 26}, {102, 27}, {102, 28}, {102, 29}, {102, 30}, {102, 31}, {102, 32}, {102, 33}, {102, 34}, {102, 35}, {102, 36}, {102, 37}, {102, 38}, {103, 16}, {103, 18}, {103, 19}, {103, 20}, {103, 21}, {103, 22}, {103, 23}, {103, 24}, {103, 25}, {103, 26}, {103, 27}, {103, 28}, {103, 29}, {103, 30}, {103, 31}, {103, 32}, {103, 33}, {103, 34}, {103, 35}, {103, 36}, {103, 37}, {103, 38}, {104, 16}, {104, 19}, {104, 20}, {104, 21}, {104, 22}, {104, 23}, {104, 24}, {104, 25}, {104, 26}, {104, 27}, {104, 28}, {104, 29}, {104, 30}, {104, 31}, {104, 32}, {104, 33}, {104, 34}, {104, 35}, {104, 36}, {104, 37}, {104, 38}, {105, 16}, {105, 19}, {105, 20}, {105, 21}, {105, 22}, {105, 23}, {105, 24}, {105, 25}, {105, 26}, {105, 27}, {105, 28}, {105, 29}, {105, 30}, {105, 31}, {105, 32}, {105, 33}, {105, 34}, {105, 35}, {105, 36}, {105, 37}, {105, 38}, {106, 16}, {106, 19}, {106, 20}, {106, 21}, {106, 22}, {106, 23}, {106, 24}, {106, 25}, {106, 26}, {106, 27}, {106, 28}, {106, 29}, {106, 30}, {106, 31}, {106, 32}, {106, 33}, {106, 34}, {106, 35}, {106, 36}, {106, 37}, {106, 38}, {107, 16}, {107, 19}, {107, 20}, {107, 21}, {107, 22}, {107, 23}, {107, 24}, {107, 25}, {107, 26}, {107, 27}, {107, 28}, {107, 29}, {107, 30}, {107, 31}, {107, 32}, {107, 33}, {107, 34}, {107, 35}, {107, 36}, {107, 37}, {107, 38}, {108, 16}, {108, 18}, {108, 19}, {108, 20}, {108, 21}, {108, 22}, {108, 23}, {108, 24}, {108, 25}, {108, 26}, {108, 27}, {108, 28}, {108, 29}, {108, 30}, {108, 31}, {108, 32}, {108, 33}, {108, 34}, {108, 35}, {108, 36}, {108, 37}, {108, 38}, {109, 16}, {109, 18}, {109, 19}, {109, 20}, {109, 21}, {109, 22}, {109, 23}, {109, 24}, {109, 25}, {109, 26}, {109, 27}, {109, 28}, {109, 29}, {109, 30}, {109, 31}, {109, 32}, {109, 33}, {109, 34}, {109, 35}, {109, 36}, {109, 37}, {109, 38}, {110, 16}, {110, 17}, {110, 18}, {110, 19}, {110, 20}, {110, 21}, {110, 22}, {110, 23}, {110, 24}, {110, 25}, {110, 26}, {110, 27}, {110, 28}, {110, 29}, {110, 30}, {110, 31}, {110, 32}, {110, 33}, {110, 34}, {110, 35}, {110, 36}, {110, 37}, {110, 38}, {111, 16}, {111, 17}, {111, 18}, {111, 19}, {111, 20}, {111, 21}, {111, 22}, {111, 23}, {111, 24}, {111, 25}, {111, 26}, {111, 27}, {111, 28}, {111, 29}, {111, 30}, {111, 31}, {111, 32}, {111, 33}, {111, 34}, {111, 35}, {111, 36}, {111, 37}, {111, 38}, {112, 16}, {112, 17}, {112, 18}, {112, 19}, {112, 20}, {112, 21}, {112, 22}, {112, 23}, {112, 24}, {112, 25}, {112, 26}, {112, 27}, {112, 28}, {112, 29}, {112, 30}, {112, 31}, {112, 32}, {112, 33}, {112, 34}, {112, 35}, {112, 36}, {112, 37}, {112, 38}, {113, 16}, {113, 17}, {113, 18}, {113, 19}, {113, 20}, {113, 21}, {113, 22}, {113, 23}, {113, 24}, {113, 28}, {113, 29}, {113, 30}, {113, 31}, {113, 32}, {113, 33}, {113, 34}, {113, 35}, {113, 36}, {113, 37}, {113, 38}, {114, 16}, {114, 17}, {114, 18}, {114, 19}, {114, 20}, {114, 21}, {114, 22}, {114, 23}, {114, 24}, {114, 28}, {114, 29}, {114, 30}, {114, 31}, {114, 38}, {115, 16}, {115, 17}, {115, 18}, {115, 19}, {115, 20}, {115, 21}, {115, 22}, {115, 23}, {115, 24}, {115, 28}, {115, 29}, {115, 30}, {115, 38}, {116, 16}, {116, 17}, {116, 18}, {116, 19}, {116, 20}, {116, 21}, {117, 16}, {117, 17}, {117, 18}, {117, 19}, {117, 20}, {117, 21}, {118, 16}, {118, 17}, {118, 18}, {118, 19}, {118, 20}, {119, 16}, {119, 17}, {119, 18}, {119, 19}, {120, 16}, {120, 17}, {120, 18}, {120, 19}, {121, 16}, {121, 17}, {121, 18}, {121, 19}, {122, 16}, {122, 17}, {122, 18}, {122, 19}, {123, 16}, {123, 17}, {123, 18}, {123, 19}, {124, 16}, {124, 17}, {124, 18}, {124, 19}, {125, 16}, {125, 17}, {125, 18}, {126, 16}, {126, 17}, {126, 18}, {127, 16}, {127, 17}, {128, 16} },
			Owner = "Ocean"
		},
		BalearicSea = {
			Name = "Balearic Sea",
			Tiles = { {116, 38}, {117, 38}, {118, 38}, {119, 37}, {119, 38}, {120, 35}, {120, 36}, {120, 37}, {121, 35}, {121, 36}, {121, 37}, {122, 33}, {122, 34}, {122, 35}, {122, 36}, {122, 37}, {123, 33}, {123, 34}, {123, 35}, {123, 36}, {123, 37}, {124, 33}, {124, 34}, {124, 35}, {124, 36}, {124, 37}, {125, 34}, {125, 35}, {125, 36}, {125, 37}, {126, 35} },
			Owner = "Ocean"
		},
		BalticSea = {
			Name = "Baltic Sea", -- Source: http://www.euratlas.net/history/europe/1/index.html
			ReferenceProvince = "Brandenburg", -- province used as a reference for this province's name
			CulturalNames = {
				MarcomanniTribe = "Suebic Sea",
				SuebiTribe = "Suebic Sea"
			},
			Tiles = { {128, 24}, {129, 24}, {130, 24}, {130, 25}, {131, 24}, {132, 20}, {132, 22}, {132, 23}, {132, 24}, {133, 19}, {133, 20}, {133, 21}, {133, 22}, {133, 24}, {134, 18}, {134, 19}, {134, 20}, {134, 21}, {134, 22}, {134, 23}, {134, 24}, {135, 17}, {135, 18}, {135, 21}, {135, 22}, {136, 17}, {136, 18}, {136, 21}, {136, 22}, {137, 17}, {137, 21}, {138, 21}, {139, 21}, {140, 21} },
			Owner = "Ocean"
		},
		BayOfBiscay = {
			Name = "Bay of Biscay",
			Tiles = { {114, 32}, {115, 31}, {115, 32}, {116, 29}, {116, 30}, {116, 31}, {116, 32}, {117, 30}, {117, 31}, {117, 32}, {118, 31}, {118, 32} },
			Owner = "Ocean"
		},
		BlackSea = {
			Name = "Black Sea",
			Tiles = { {140, 33}, {140, 34}, {141, 31}, {141, 32}, {141, 33}, {141, 34}, {142, 31}, {142, 32}, {142, 33}, {142, 34}, {143, 31}, {143, 32}, {143, 33}, {144, 32}, {144, 33}, {145, 31}, {145, 32}, {145, 33}, {146, 31}, {146, 32}, {146, 33}, {146, 34}, {147, 33}, {147, 34}, {148, 33}, {148, 34} },
			Owner = "Ocean"
		},
		EnglishChannel = {
			Name = "British Ocean",
			ReferenceProvince = "England", -- province used as a reference for this province's name
			CulturalNames = {
				England = "English Channel",
				SaxonTribe = "English Channel",
				teuton = "England"
			},
			Tiles = { {116, 28}, {117, 28}, {118, 28}, {119, 28}, {120, 27}, {120, 28} },
			Owner = "Ocean"
		},
		IonianSea = {
			Name = "Ionian Sea",
			Tiles = { {128, 38}, {128, 39}, {129, 38}, {129, 39}, {129, 40}, {130, 37}, {130, 38}, {130, 39}, {130, 40}, {131, 37}, {131, 38}, {131, 39}, {131, 40}, {131, 41}, {132, 36}, {132, 37}, {132, 38}, {132, 39}, {133, 36}, {133, 37}, {133, 38}, {134, 36}, {134, 37}, {134, 38}, {135, 38}, {136, 38} },
			Owner = "Ocean"
		},
		IrishSea = {
			Name = "Irish Sea",
			ReferenceProvince = "Ireland", -- province used as a reference for this province's name
			CulturalNames = {
				latin = "Hibernian Ocean"
			},
			Tiles = { {113, 27}, {114, 27}, {115, 27}, {116, 24}, {116, 25}, {116, 26}, {116, 27}, {117, 25} },
			Owner = "Ocean"
		},
		LibyanSea = {
			Name = "Libyan Sea",
			Tiles = { {132, 40}, {132, 41}, {133, 39}, {133, 40}, {133, 41}, {134, 39}, {134, 40}, {135, 39}, {135, 40}, {136, 39}, {136, 40}, {137, 40}, {138, 40}, {139, 39}, {139, 40} },
			Owner = "Ocean"
		},
		LigurianSea = {
			Name = "Ligurian Sea",
			Tiles = { {125, 33}, {126, 33}, {127, 33} },
			Owner = "Ocean"
		},
		NorthSea = {
			Name = "North Sea", -- Source: http://www.euratlas.net/history/europe/1/index.html
			ReferenceProvince = "Rhineland", -- province used as a reference for this province's name
			CulturalNames = {
				germanic = "German Sea"
			},
			Tiles = { {118, 21}, {118, 22}, {119, 20}, {119, 21}, {119, 22}, {119, 23}, {119, 24}, {120, 20}, {120, 21}, {120, 22}, {120, 23}, {120, 24}, {120, 25}, {121, 20}, {121, 21}, {121, 22}, {121, 23}, {121, 24}, {121, 25}, {121, 26}, {121, 27}, {122, 20}, {122, 21}, {122, 22}, {122, 23}, {122, 24}, {122, 25}, {122, 26}, {123, 20}, {123, 21}, {123, 22}, {123, 23}, {123, 24}, {123, 25}, {124, 22}, {124, 23}, {124, 24}, {124, 25}, {125, 22}, {125, 23}, {125, 24}, {125, 25}, {126, 22}, {127, 22}, {127, 23}, {127, 24}, {128, 23} },
			Owner = "Ocean"
		},
		TyrrhenianSea = {
			Name = "Tyrrhenian Sea",
			Tiles = { {126, 37}, {127, 34}, {127, 35}, {127, 36}, {127, 37}, {128, 34}, {128, 35}, {128, 36}, {128, 37}, {129, 35}, {129, 36}, {130, 35}, {130, 36} },
			Owner = "Ocean"
		},
		WhiteSea = {
			Name = "White Sea",
			Tiles = { {145, 17}, {146, 17}, {147, 17} },
			Owner = "Ocean"
		}
	}

	local NidavellirWaterProvinces = {
		LakeVrug = {
			Name = "Lake Vrug",
			Tiles = { {27, 6}, {27, 7}, {27, 8}, {28, 5}, {28, 6}, {28, 7}, {28, 8}, {29, 5}, {29, 6}, {29, 7}, {29, 8}, {30, 5}, {30, 6}, {30, 7}, {31, 7} },
			Owner = "Ocean"
		}
	}

	local function AddProvinceTable(province_table)
		for key, value in pairs(province_table) do
			WorldMapProvinces[key] = {}
			WorldMapProvinces[key]["Name"] = province_table[key].Name
			if (province_table[key].CulturalNames ~= nil) then
				WorldMapProvinces[key]["CulturalNames"] = {}
				for second_key, second_value in pairs(province_table[key].CulturalNames) do
					WorldMapProvinces[key].CulturalNames[second_key] = province_table[key].CulturalNames[second_key]
				end
			end
			if (province_table[key].CulturalSettlementNames ~= nil) then
				WorldMapProvinces[key]["CulturalSettlementNames"] = {}
				for second_key, second_value in pairs(province_table[key].CulturalSettlementNames) do
					WorldMapProvinces[key].CulturalSettlementNames[second_key] = province_table[key].CulturalSettlementNames[second_key]
				end
			end
			if (province_table[key].Tiles ~= nil) then
				WorldMapProvinces[key]["Tiles"] = {}
				for i=1,table.getn(province_table[key].Tiles) do
					table.insert(WorldMapProvinces[key].Tiles, {province_table[key].Tiles[i][1], province_table[key].Tiles[i][2]})
				end
			end
			WorldMapProvinces[key]["Owner"] = province_table[key].Owner
			if (province_table[key].Civilization ~= nil) then
				WorldMapProvinces[key]["Civilization"] = province_table[key].Civilization
			end
			if (province_table[key].SettlementName ~= nil) then
				WorldMapProvinces[key]["SettlementName"] = province_table[key].SettlementName
			end
			if (province_table[key].SettlementLocation ~= nil) then
				WorldMapProvinces[key]["SettlementLocation"] = {province_table[key].SettlementLocation[1], province_table[key].SettlementLocation[2]}
			end
			if (province_table[key].SettlementBuildings ~= nil) then
				WorldMapProvinces[key]["SettlementBuildings"] = {}
				for second_key, second_value in pairs(province_table[key].SettlementBuildings) do
					WorldMapProvinces[key].SettlementBuildings[second_key] = province_table[key].SettlementBuildings[second_key]
				end
			end
			if (province_table[key].Map ~= nil) then
				WorldMapProvinces[key]["Map"] = province_table[key].Map
			end
			if (province_table[key].Units ~= nil) then
				WorldMapProvinces[key]["Units"] = {}
				for second_key, second_value in pairs(province_table[key].Units) do
					WorldMapProvinces[key].Units[second_key] = province_table[key].Units[second_key]
				end
			end
			if (province_table[key].Heroes ~= nil) then
				WorldMapProvinces[key]["Heroes"] = {}
				for second_key, second_value in pairs(province_table[key].Heroes) do
					WorldMapProvinces[key].Heroes[second_key] = province_table[key].Heroes[second_key]
				end
			end
			if (province_table[key].SettlementTerrain ~= nil) then
				WorldMapProvinces[key]["SettlementTerrain"] = province_table[key].SettlementTerrain
			end
		end
	end
	
	local function AddWaterProvinceTable(province_table)
		for key, value in pairs(province_table) do
			WorldMapWaterProvinces[key] = {}
			WorldMapWaterProvinces[key]["Name"] = province_table[key].Name
			if (province_table[key].CulturalNames ~= nil) then
				WorldMapWaterProvinces[key]["CulturalNames"] = {}
				for second_key, second_value in pairs(province_table[key].CulturalNames) do
					WorldMapWaterProvinces[key].CulturalNames[second_key] = province_table[key].CulturalNames[second_key]
				end
			end
			WorldMapWaterProvinces[key]["ReferenceProvince"] = province_table[key].ReferenceProvince
			if (province_table[key].Tiles ~= nil) then
				WorldMapWaterProvinces[key]["Tiles"] = {}
				for i=1,table.getn(province_table[key].Tiles) do
					table.insert(WorldMapWaterProvinces[key].Tiles, {province_table[key].Tiles[i][1], province_table[key].Tiles[i][2]})
				end
			end
			WorldMapWaterProvinces[key]["Owner"] = province_table[key].Owner
		end
	end
	
	if (world == "Earth") then
		AddProvinceTable(EarthProvinces)
		AddWaterProvinceTable(EarthWaterProvinces)
	elseif (world == "Nidavellir") then
		AddProvinceTable(NidavellirProvinces)
		AddWaterProvinceTable(NidavellirWaterProvinces)
	elseif (world == "Random") then
		AddProvinceTable(EarthProvinces)
		AddWaterProvinceTable(EarthWaterProvinces)
		AddProvinceTable(NidavellirProvinces)
		AddWaterProvinceTable(NidavellirWaterProvinces)
	end
end
