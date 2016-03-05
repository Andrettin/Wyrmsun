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

Regions = {
	BritishIsles = {"England", "Highland Scotland", "Ireland", "Lowland Scotland", "Orkney"},
	Czechoslovakia = {"Bohemia", "Moravia", "Slovakia"},
	England = {"England"},
	Eurasia = {"Astrakhan", "Bessarabia", "Bukowina", "Crimea", "Don", "Russia", "Ukraine", "White Russia"},
	Europe = {"Abruzzo", "Aetolia", "Albania", "Alsace", "Andalusia", "Apulia", "Aquitaine", "Aragon", "Argolis", "Astrakhan", "Attica", "Augsburg", "Austria", "Baden", "Bavaria", "Belgium", "Bessarabia", "Boeotia", "Bohemia", "Bornholm", "Bosnia", "Brandenburg", "Bremen", "Brittany", "Brunswick", "Bukowina", "Bulgaria", "Burgundy", "Calabria", "Carniola", "Castille", "Corinth", "Corsica", "Courland", "Crete", "Crimea", "Croatia", "Dalmatia", "Dobruja", "Don", "Drenthe", "East Friesland", "England", "Epirus", "Estonia", "Euboea", "Farther Pomerania", "France", "Franche Comte", "Franconia", "Friesland", "Galicia", "Gallaecia", "Gotaland", "Gotland", "Hanover", "Hesse", "Highland Scotland", "Hither Pomerania", "Holland", "Holstein", "Hordaland", "Hungary", "Iceland", "Ireland", "Istria", "Jutland", "Lacedaemonia", "Latium", "Latvia", "Lauenburg", "Liguria", "Lithuania", "Lombardy", "Lorraine", "Lower Lusatia", "Lower Rhine", "Lowland Scotland", "Macedonia", "Magdeburg", "Malta", "Mazovia", "Mecklenburg", "Modena", "Moldavia", "Montenegro", "Moravia", "Moselle", "Naples", "Neumark", "Normandy", "Oldenburg", "Orkney", "Overijssel", "Palatinate", "Palermo", "Pannonia", "Parma", "Piedmont", "Pomerelia", "Portugal", "Posen", "Provence", "Prussia", "Rhodes", "Rhodope", "Romagna", "Russia", "Sardinia", "Savoy", "Scania", "Schleswig", "Serbia", "Silesia", "Skopje", "Slovakia", "Sweden", "Switzerland", "Syracuse", "Thessaly", "Thrace", "Thuringia", "Transylvania", "Tuscany", "Ukraine", "Umbria", "Upper Lusatia", "Upper Saxony", "Venetia", "Vojvodina", "Wallachia", "West Galicia", "Westphalia", "White Russia", "Wurtemberg", "Zealand"},
	France = {"Alsace", "Aquitaine", "Brittany", "Burgundy", "France", "Franche Comte", "Lorraine", "Moselle", "Normandy", "Provence", "Savoy"},
	Gaul = {"Alsace", "Aquitaine", "Belgium", "Brittany", "Burgundy", "France", "Franche Comte", "Lorraine", "Lower Rhine", "Moselle", "Normandy", "Palatinate", "Provence", "Savoy"},
	GermanyNetherlands = {"Augsburg", "Austria", "Baden", "Bavaria", "Belgium", "Brandenburg", "Bremen", "Brunswick", "Drenthe", "East Friesland", "Farther Pomerania", "Franconia", "Friesland", "Hanover", "Hesse", "Hither Pomerania", "Holland", "Holstein", "Lauenburg", "Lower Lusatia", "Lower Rhine", "Magdeburg", "Mecklenburg", "Neumark", "Oldenburg", "Overijssel", "Palatinate", "Silesia", "Thuringia", "Upper Lusatia", "Upper Saxony", "Westphalia", "Wurtemberg"},
	Greece = {"Aetolia", "Albania", "Argolis", "Attica", "Boeotia", "Corinth", "Crete", "Epirus", "Euboea", "Lacedaemonia", "Macedonia", "Rhodes", "Rhodope", "Skopje", "Thessaly", "Thrace"},
	Iberia = {"Andalusia", "Aragon", "Castille", "Gallaecia", "Portugal"},
	Italy = {"Abruzzo", "Apulia", "Calabria", "Corsica", "Istria", "Latium", "Liguria", "Lombardy", "Modena", "Naples", "Palermo", "Parma", "Piedmont", "Romagna", "Sardinia", "Syracuse", "Tuscany", "Umbria", "Venetia"},
	NorthwestEurope = {"Alsace", "Aquitaine", "Belgium", "Brittany", "Burgundy", "Drenthe", "England", "France", "Franche Comte", "Friesland", "Highland Scotland", "Holland", "Ireland", "Lorraine", "Lowland Scotland", "Moselle", "Normandy", "Orkney", "Overijssel", "Provence", "Savoy"},
	Poland = {"Bukowina", "Galicia", "Mazovia", "Pomerelia", "Posen", "West Galicia", "White Russia"},
	RomanDanube = {"Augsburg", "Austria", "Baden", "Bavaria", "Bosnia", "Bulgaria", "Carniola", "Croatia", "Dalmatia", "Dobruja", "Montenegro", "Pannonia", "Serbia", "Switzerland", "Wurtemberg"},
	Scandinavia = {"Bornholm", "Gotaland", "Gotland", "Hordaland", "Jutland", "Scania", "Schleswig", "Sweden", "Zealand"},
	WestandCentralEurope = {"Abruzzo", "Aetolia", "Albania", "Alsace", "Andalusia", "Apulia", "Aquitaine", "Aragon", "Argolis", "Attica", "Augsburg", "Austria", "Baden", "Bavaria", "Belgium", "Boeotia", "Bohemia", "Bornholm", "Bosnia", "Brandenburg", "Bremen", "Brittany", "Brunswick", "Bulgaria", "Burgundy", "Calabria", "Carniola", "Castille", "Corinth", "Corsica", "Courland", "Crete", "Croatia", "Dalmatia", "Dobruja", "Drenthe", "East Friesland", "England", "Epirus", "Estonia", "Euboea", "Farther Pomerania", "France", "Franche Comte", "Franconia", "Friesland", "Galicia", "Gallaecia", "Gotaland", "Gotland", "Hanover", "Hesse", "Highland Scotland", "Hither Pomerania", "Holland", "Holstein", "Hordaland", "Hungary", "Iceland", "Ireland", "Istria", "Jutland", "Lacedaemonia", "Latium", "Latvia", "Lauenburg", "Liguria", "Lithuania", "Lombardy", "Lorraine", "Lower Lusatia", "Lower Rhine", "Lowland Scotland", "Macedonia", "Magdeburg", "Malta", "Mazovia", "Mecklenburg", "Modena", "Moldavia", "Montenegro", "Moravia", "Moselle", "Naples", "Neumark", "Normandy", "Oldenburg", "Orkney", "Overijssel", "Palatinate", "Palermo", "Pannonia", "Parma", "Piedmont", "Pomerelia", "Portugal", "Posen", "Provence", "Prussia", "Rhodes", "Rhodope", "Romagna", "Sardinia", "Savoy", "Scania", "Schleswig", "Serbia", "Silesia", "Skopje", "Slovakia", "Sweden", "Switzerland", "Syracuse", "Thessaly", "Thrace", "Thuringia", "Transylvania", "Tuscany", "Umbria", "Upper Lusatia", "Upper Saxony", "Venetia", "Vojvodina", "Wallachia", "West Galicia", "Westphalia", "Wurtemberg", "Zealand"}
}

function LoadProvinces(world)
	WorldMapProvinces = nil
	WorldMapProvinces = {}
	WorldMapWaterProvinces = nil
	WorldMapWaterProvinces = {}
	
	InitializeGrandStrategyProvinces()

	local EarthProvinces = {
		Abruzzo = {
			Name = "Abruzzo"
		},
		Aetolia = {
			Name = "Aetolia"
		},
		Albania = {
			Name = "Albania"
		},
		Alsace = {
			Name = "Alsace"
		},
		Andalusia = {
			Name = "Andalusia"
		},
		Apulia = {
			Name = "Apulia"
		},
		Aquitaine = {
			Name = "Aquitaine"
		},
		Aragon = {
			Name = "Aragon"
		},
		Argolis = {
			Name = "Argolis"
		},
		Astrakhan = {
			Name = "Astrakhan",
			Owner = "Asa Tribe",
			SettlementBuildings = {
				unit_germanic_town_hall = true,
				unit_germanic_barracks = true
			},
			Units = {
				unit_germanic_warrior = 8
			}
		},
		Attica = {
			Name = "Attica"
		},
		Augsburg = {
			Name = "Augsburg"
		},
		Austria = {
			Name = "Austria"
		},
		Baden = {
			Name = "Baden"
		},
		Bavaria = {
			Name = "Bavaria"
		},
		Belgium = {
			Name = "Belgium"
		},
		Bessarabia = {
			Name = "Bessarabia"
		},
		Boeotia = {
			Name = "Boeotia"
		},
		Bohemia = {
	--		Name = "Marcomannia",
			Name = "Bohemia"
		},
		Bornholm = {
			Name = "Bornholm"
		},
		Bosnia = {
			Name = "Bosnia"
		},
		Brandenburg = {
			Name = "Brandenburg"
		},
		Bremen = {
			Name = "Bremen"
		},
		Brittany = {
			Name = "Brittany"
		},
		Brunswick = {
			Name = "Brunswick"
		},
		Bukowina = {
			Name = "Bukowina"
		},
		Bulgaria = {
			Name = "Bulgaria"
		},
		Burgundy = {
			Name = "Burgundy"
		},
		Calabria = {
			Name = "Calabria"
		},
		Carniola = {
			Name = "Carniola"
		},
		Castille = {
			Name = "Castille"
		},
		Corinth = {
			Name = "Corinth"
		},
		Corsica = {
			Name = "Corsica"
		},
		Courland = {
			Name = "Courland"
		},
		Crete = {
			Name = "Crete",
			Owner = "Minoan Tribe", -- Minoans inhabited the island of Crete in 3000 BC; Source: Rodney Castleden, "Minoans", 2002, p. 4.
			SettlementBuildings = {
				unit_teuton_town_hall = true
			}
		},
		Crimea = {
			Name = "Crimea"
		},
		Croatia = {
			Name = "Croatia"
		},
		Dalmatia = {
			Name = "Dalmatia"
		},
		Dobruja = {
			Name = "Dobruja"
		},
		Don = {
			Name = "Don",
			Owner = "Vana Tribe",
			SettlementBuildings = {
				unit_germanic_town_hall = true,
				unit_germanic_barracks = true
			},
			Units = {
				unit_germanic_warrior = 4
			}
		},
		Drenthe = {
			Name = "Drenthe"
		},
		EastFriesland = { -- also includes Osnabrück
			Name = "East Friesland"
		},
		England = {
			Name = "England"
		},
		Epirus = {
			Name = "Epirus"
		},
		Estonia = {
			Name = "Estonia"
		},
		Euboea = { -- to make this island appear separated from Attica, it was necessary to "bump" it one tile to the north and one tile to the east into the sea
			Name = "Euboea"
		},
		FartherPomerania = {
			Name = "Farther Pomerania"
		},
		France = {
			Name = "France"
		},
		FrancheComte = {
			Name = "Franche Comte"
		},
		Franconia = {
			Name = "Franconia"
		},
		Friesland = {
			Name = "Friesland"
		},
		Galicia = {
			Name = "Galicia"
		},
		GaliciaIberia = {
			Name = "Gallaecia"
		},
		Gotaland = {
			Name = "Gotaland"
		},
		Gotland = {
			Name = "Gotland"
		},
		Hanover = {
			Name = "Hanover"
		},
		Hesse = {
			Name = "Hesse"
		},
		HighlandScotland = {
			Name = "Highland Scotland"
		},
		HitherPomerania = {
			Name = "Hither Pomerania"
		},
		Holland = {
			Name = "Holland"
		},
		Holstein = {
			Name = "Holstein"
		},
		Hordaland = {
			Name = "Hordaland"
		},
		Hungary = {
			Name = "Hungary"
		},
		Iceland = {
			Name = "Iceland"
		},
		Ireland = {
			Name = "Ireland"
		},
		Istria = {
			Name = "Istria"
		},
		Jutland = {
			Name = "Jutland",
			Units = {
				unit_germanic_warrior = 4,
				unit_germanic_archer = 2
			}
		},
		Lacedaemonia = {
			Name = "Lacedaemonia"
		},
		Latium = {
			Name = "Latium"
		},
		Latvia = {
			Name = "Latvia"
		},
		Lauenburg = {
			Name = "Lauenburg"
		},
		Liguria = {
			Name = "Liguria"
		},
		Lithuania = {
			Name = "Lithuania"
		},
		Lombardy = {
			Name = "Lombardy"
		},
		Lorraine = {
			Name = "Lorraine"
		},
		LowerLusatia = {
			Name = "Lower Lusatia"
		},
		LowerRhine = {
			Name = "Lower Rhine"
		},
		LowlandScotland = {
			Name = "Lowland Scotland"
		},
		Macedonia = {
			Name = "Macedonia"
		},
		Magdeburg = {
			Name = "Magdeburg"
		},
		Malta = {
			Name = "Malta"
		},
		Mazovia = {
			Name = "Mazovia"
		},
		Mecklenburg = {
			Name = "Mecklenburg"
		},
		Modena = {
			Name = "Modena"
		},
		Moldavia = {
			Name = "Moldavia"
		},
		Montenegro = {
			Name = "Montenegro"
		},
		Moravia = {
			Name = "Moravia"
		},
		Moselle = {
			Name = "Moselle"
		},
		Naples = {
			Name = "Naples"
		},
		Neumark = {
			Name = "Neumark"
		},
		Normandy = {
			Name = "Normandy"
		},
		Oldenburg = {
			Name = "Oldenburg"
		},
		Orkney = {
			Name = "Orkney"
		},
		Overijssel = {
			Name = "Overijssel"
		},
		Palatinate = {
			Name = "Palatinate"
		},
		Palermo = {
			Name = "Palermo"
		},
		Pannonia = {
			Name = "Pannonia"
		},
		Parma = {
			Name = "Parma"
		},
		Piedmont = {
			Name = "Piedmont"
		},
		Pomerelia = {
			Name = "Pomerelia"
		},
		Portugal = {
			Name = "Portugal"
		},
		Posen = {
			Name = "Posen"
		},
		Provence = {
			Name = "Provence"
		},
		Prussia = {
			Name = "Prussia"
		},
		Rhodes = {
			Name = "Rhodes"
		},
		Rhodope = {
			Name = "Rhodope"
		},
		Romagna = {
			Name = "Romagna"
		},
		Russia = {
			Name = "Russia",
			Units = {
				unit_germanic_warrior = 10 -- a few soldiers to stop the Vana Tribe from expanding here
			}
		},
		Sardinia = {
			Name = "Sardinia"
		},
		Savoy = {
			Name = "Savoy"
		},
		Scania = {
			Name = "Scania"
		},
		Schleswig = {
			Name = "Schleswig"
		},
		Serbia = {
			Name = "Serbia"
		},
		Silesia = {
			Name = "Silesia"
		},
		Skopje = {
			Name = "Skopje"
		},
		Slovakia = {
			Name = "Slovakia"
		},
		Sweden = {
			Name = "Sweden",
			Units = {
				unit_germanic_warrior = 10 -- soldiers to stop the Gylfing Tribe from expanding here
			}
		},
		Switzerland = {
			Name = "Switzerland"
		},
		Syracuse = {
			Name = "Syracuse"
		},
		Thessaly = {
			Name = "Thessaly"
		},
		Thrace = {
			Name = "Thrace"
		},
		Thuringia = {
			Name = "Thuringia"
		},
		Transylvania = {
			Name = "Transylvania"
		},
		Tuscany = {
			Name = "Tuscany"
		},
		Ukraine = {
			Name = "Ukraine",
			Units = {
				unit_germanic_warrior = 20 -- soldiers to stop the Vana Tribe from expanding here
			}
		},
		Umbria = {
			Name = "Umbria"
		},
		UpperLusatia = {
			Name = "Upper Lusatia"
		},
		UpperSaxony = {
			Name = "Upper Saxony"
		},
		Venetia = {
			Name = "Venetia"
		},
		Vojvodina = {
			Name = "Vojvodina"
		},
		Wallachia = {
			Name = "Wallachia"
		},
		WestGalicia = {
			Name = "West Galicia"
		},
		Westphalia = {
			Name = "Westphalia"
		},
		WhiteRussia = {
			Name = "White Russia"
		},
		Wurtemberg = {
			Name = "Wurtemberg"
		},
		Zealand = {
			Name = "Zealand"
		}
	}
	
	local NidavellirProvinces = {
		Aurvang = {
			Name = "Aurvang",
			Units = { -- Dwarven bandits
				unit_dwarven_steelclad = 1,
				unit_dwarven_axefighter = 3
			}
		},
		BrownHills = {
			Name = "Brown Hills",
			Owner = "Untersberg",
			Civilization = "gnome",
			SettlementBuildings = {
				unit_gnomish_town_hall = true,
				unit_gnomish_barracks = true -- has capability to train soldiers
			},
			Units = {
				unit_gnomish_master_at_arms = 1, -- Pypo I
				unit_gnomish_duelist = 1 -- Pypo's envoy
			}
		},
		CavernsOfChaincolt = {
			Name = "Caverns of Chaincolt",
			Tiles = { {25, 14}, {25, 15}, {25, 16}, {26, 11}, {26, 14}, {26, 15}, {27, 11}, {27, 12}, {27, 13}, {27, 14}, {27, 15}, {27, 16}, {28, 9}, {28, 10}, {28, 11}, {28, 12}, {28, 13}, {28, 14}, {28, 15}, {28, 16}, {28, 17}, {29, 9}, {29, 10}, {29, 11}, {29, 12}, {29, 13}, {29, 14}, {29, 15}, {29, 16}, {29, 17}, {29, 18}, {29, 19}, {29, 20}, {30, 9}, {30, 10}, {30, 11}, {30, 12}, {30, 13}, {30, 14}, {30, 15}, {30, 16}, {30, 17}, {30, 18}, {30, 19}, {30, 20}, {31, 9}, {31, 10}, {31, 11}, {31, 12}, {31, 13}, {31, 15}, {31, 19}, {32, 9}, {32, 10}, {32, 11}, {32, 12} },
			CulturalNames = {
				dwarf = "Caverns of Chaincolt"
			},
			Units = {
				unit_goblin_spearman = 4
			}
		},
		CavernsOfFlame = {
			Name = "Caverns of Flame",
			Tiles = {
				{39, 2}, {39, 3}, {39, 4}, {39, 9},
				{40, 0}, {40, 1}, {40, 2}, {40, 3}, {40, 4}, {40, 5}, {40, 6}, {40, 7}, {40, 8}, {40, 9},
				{41, 0}, {41, 1}, {41, 2}, {41, 3}, {41, 4}, {41, 5}, {41, 6}, {41, 7}, {41, 8}, {41, 9},
				{42, 0}, {42, 1}, {42, 2}, {42, 3}, {42, 4}, {42, 5}, {42, 6}, {42, 7},
				{43, 0}, {43, 1}, {43, 2}, {43, 3}, {43, 6}
			},
			Civilization = "goblin",
			CulturalNames = {
				dwarf = "Caverns of Flame",
				goblin = "Caverns of Flame"
			},
			SettlementBuildings = {
				unit_dwarven_smithy = true -- abandoned forge which Thursagan later uses to craft the Scepter of Fire
			},
			Units = { -- starting units in the Caverns of Flame scenario
				unit_goblin_spearman = 10, -- 2 orcish warlords, 2 troll warriors, 2 trolls, 4 orcish warriors
				unit_goblin_war_machine = 1
			}
		},
		EasternMines = {
			Name = "Eastern Mines",
			Tiles = {
				{22, 0}, {22, 1}, {22, 2},
				{23, 0}, {23, 1}, {23, 2}, {23, 3}, {23, 4},
				{24, 0}, {24, 1}, {24, 2}, {24, 3}, {24, 4}, {24, 5},
				{25, 0}, {25, 1}, {25, 2}, {25, 3}, {25, 4}, {25, 5},
				{26, 0}, {26, 1}, {26, 2}, {26, 3}, {26, 4}, {26, 5},
				{27, 0}, {27, 1}, {27, 2}, {27, 3}, {27, 4}, {27, 5},
				{28, 0}, {28, 1}, {28, 2}, {28, 3}, {28, 4},
				{29, 0}, {29, 1}, {29, 2}, {29, 3}, {29, 4},
				{30, 0}, {30, 1}, {30, 2}, {30, 3}, {30, 4}, {30, 8},
				{31, 0}, {31, 1}, {31, 2}, {31, 3}, {31, 4}, {31, 5}, {31, 6}, {31, 8},
				{32, 0}, {32, 1}, {32, 2}, {32, 3}, {32, 4}, {32, 5}, {32, 6}, {32, 7}, {32, 8},
				{33, 0}, {33, 1}, {33, 2}, {33, 3}, {33, 4}, {33, 5}, {33, 6}, {33, 7}, {33, 8}, {33, 9},
				{34, 0}, {34, 1}, {34, 2}, {34, 3}, {34, 4}, {34, 5}, {34, 6}, {34, 7}, {34, 8},
				{35, 0}, {35, 1}, {35, 2}, {35, 3}, {35, 4}, {35, 5}, {35, 6}, {35, 7}, {35, 8}, {35, 9},
				{36, 0}, {36, 1}, {36, 2}, {36, 3}, {36, 4}, {36, 5}, {36, 6}, {36, 7}, {36, 8}, {36, 9},
				{37, 0}, {37, 1}, {37, 2}, {37, 3}, {37, 4}, {37, 5}, {37, 6}, {37, 7}, {37, 8}, {37, 9}, {37, 10},
				{38, 0}, {38, 1}, {38, 2}, {38, 3}, {38, 4}, {38, 5}, {38, 6}, {38, 7}, {38, 8}, {38, 9},
				{39, 0}, {39, 1}, {39, 5}, {39, 6}, {39, 7}, {39, 8}
			},
			CulturalNames = {
				dwarf = "Eastern Mines",
				goblin = "Eastern Mines"
			},
			Civilization = "goblin",
			Units = {
	--			unit_goblin_spearman = 3 -- three starting chieftains in the Gathering Materials scenario
				unit_goblin_spearman = 9 * 2 -- three starting chieftains in the Gathering Materials scenario, plus 2 goblins for each tribe and multiplied by 2 to prevent too early expansion into this province
			}
		},
		GryphonMountain = {
			Name = "Gryphon Mountain",
			Tiles = { {24, 22}, {24, 23}, {25, 20}, {25, 21}, {25, 22}, {25, 23}, {26, 20}, {26, 21}, {26, 22}, {26, 23}, {27, 20}, {27, 21}, {27, 22}, {27, 23}, {27, 24}, {27, 25}, {28, 20}, {28, 21}, {28, 22}, {28, 23}, {28, 24}, {28, 25}, {28, 26}, {28, 27}, {29, 21}, {29, 22}, {29, 23}, {29, 24}, {29, 25}, {29, 26}, {29, 27}, {30, 21}, {30, 23}, {30, 24}, {30, 25}, {30, 26}, {30, 27}, {31, 23}, {31, 24}, {31, 25}, {31, 26}, {32, 23}, {32, 24} },
			CulturalNames = {
				dwarf = "Gryphon Mountain"
			},
			Units = { -- wild units in the Gryphon Mountain scenario
				unit_dwarven_gryphon_rider = 6 -- Mother Gryphon, Graak, Grook, Gruak, Graik, Griak
			}
		},
		Heartfangs = {
			Name = "Heartfangs",
			Tiles = { {14, 10}, {14, 11}, {15, 7}, {15, 8}, {15, 9}, {15, 10}, {15, 11}, {15, 12}, {16, 7}, {16, 8}, {16, 9}, {16, 10}, {16, 11}, {16, 12}, {17, 8}, {17, 9}, {17, 10}, {17, 11}, {17, 12}, {17, 13}, {18, 6}, {18, 9}, {18, 10}, {18, 11}, {18, 12}, {19, 5}, {19, 6}, {19, 8}, {19, 9}, {19, 10}, {19, 11}, {19, 12}, {19, 13}, {20, 4}, {20, 5}, {20, 6}, {20, 7}, {20, 8}, {20, 9}, {20, 10}, {20, 11}, {20, 12}, {20, 13}, {21, 4}, {21, 5}, {21, 6}, {21, 7}, {21, 8}, {21, 9}, {21, 10}, {21, 11}, {21, 12}, {21, 13}, {22, 4}, {22, 5}, {22, 6}, {22, 7}, {22, 8}, {22, 9}, {22, 10}, {22, 11}, {22, 12}, {22, 13}, {23, 5}, {23, 6}, {23, 7}, {23, 8}, {23, 9}, {23, 10}, {23, 11}, {23, 12}, {23, 13}, {24, 6}, {24, 7}, {24, 8}, {24, 9}, {24, 10}, {24, 11}, {24, 12}, {24, 13}, {24, 14}, {25, 6}, {25, 7}, {25, 8}, {25, 9}, {25, 10}, {25, 11}, {25, 12}, {25, 13}, {26, 6}, {26, 7}, {26, 8}, {26, 9}, {26, 10}, {26, 12}, {26, 13}, {27, 9}, {27, 10} },
			CulturalNames = {
				dwarf = "Heartfangs"
			},
			Owner = "Khag Tribe",
			Civilization = "goblin",
			SettlementBuildings = {
				unit_goblin_town_hall = true
			},
			Units = {
				unit_goblin_spearman = 5 -- Fal Khag, Gatrakh, Thurg, Krung, Gorokh (should all be cavalry)
			}
		},
		HighPass = {
			Name = "High Pass",
			Tiles = { {39, 12}, {40, 10}, {40, 11}, {40, 12}, {41, 10}, {41, 11}, {41, 12}, {42, 11} },
			CulturalNames = {
				dwarf = "High Pass"
			},
			Units = { -- wild units in the High Pass scenario
				unit_goblin_spearman = 10, -- 10 uses of the WILD_THING function which generates trolls, ogres and wolves
				unit_dwarven_gryphon_rider = 1 -- Kaara
			}
		},
		HighbrookPass = {
			Name = "Highbrook Pass",
			Tiles = { {33, 10}, {33, 11}, {34, 9}, {34, 10}, {34, 11}, {35, 10}, {35, 11}, {35, 12}, {35, 14}, {35, 15}, {36, 10}, {36, 11}, {36, 12}, {36, 13}, {36, 14}, {36, 15}, {37, 11}, {37, 12}, {37, 13}, {37, 14}, {37, 15}, {38, 10}, {38, 11}, {38, 12}, {38, 13}, {38, 14}, {39, 10}, {39, 11}, {39, 13}, {39, 14} },
			CulturalNames = {
				dwarf = "Highbrook Pass"
			},
			Units = { -- starting units in the Settling Disputes scenario
				unit_dwarven_axefighter = 0,
				unit_dwarven_steelclad = 0,
				unit_dwarven_thane = 0,
				unit_goblin_spearman = 4 * 3, -- one troll, two young ogres, one ogre -- multiply by three to prevent dwarven expansion here too early
				unit_goblin_archer = 2 * 3 -- two liches
			}
		},
		Joruvellir = {
			Name = "Joruvellir",
			CulturalNames = {
				dwarf = "Joruvellir"
			},
			Units = {
				unit_goblin_spearman = 6, -- some enemy goblins
				unit_goblin_archer = 3
			}
		},
		KalKartha = {
			Name = "Kal Kartha",
			CulturalNames = {
				dwarf = "Kal Kartha"
			},
			CulturalSettlementNames = {
				dwarf = "Kal Kartha"
			},
			Units = { -- some wild gnomes from the Forbidden Forest to stop too early expansion into this province
				unit_dwarven_axefighter = 0,
				unit_dwarven_steelclad = 0,
				unit_dwarven_thane = 0,
				unit_gnomish_recruit = 4
			}
		},
		Lyr = {
			Name = "Lyr",
			CulturalNames = {
				dwarf = "Lyr"
			},
			CulturalSettlementNames = {
				dwarf = "Lyr"
			},
			Units = { -- some wild dwarves to stop too early expansion into this province
				unit_dwarven_axefighter = 12
			}
		},
		NorthernWastelands = {
			Name = "Northern Wastelands",
			Civilization = "goblin",
			CulturalNames = {
				dwarf = "Northern Wastelands",
				goblin = "Northern Wastelands"
			},
			SettlementBuildings = {
				unit_dwarven_smithy = true -- Thursagan's smithy
			},
			Units = { -- numbers derived from 3 goblins per 13 groups which appear in the map during the Searching for the Runecrafter quest (the 2 other goblins which appear in the NorthernWastelandsEnemy() function were added for balance reasons)
				unit_goblin_spearman = 26,
				unit_goblin_archer = 13
			}
		},
		PeacefulValley = {
			Name = "Peaceful Valley",
			Owner = "Lggi Tribe",
			CulturalNames = {
				goblin = "Peaceful Valley"
			},
			Civilization = "goblin",
			SettlementBuildings = {
				unit_goblin_town_hall = true,
				unit_goblin_barracks = true -- has capability to train soldiers
			},
			Units = {
				unit_goblin_spearman = 14 -- 13 is the quantity of villages in Peaceful Valley map (each can generate 0-2 goblin spearmen) + T'shar Lggi himself
			}
		},
		ShorbearHills = {
			Name = "Shorbear Hills",
			CulturalNames = {
				dwarf = "Shorbear Hills"
			},
			CulturalSettlementNames = {
				dwarf = "Shorbear Hold"
			},
			Units = {
				unit_goblin_spearman = 4
			}
		},
		SouthernTunnels = {
			Name = "Southern Tunnels",
			CulturalNames = {
				dwarf = "Southern Tunnels"
			},
			CulturalSettlementNames = {
				dwarf = "Knalga"
			},
			Units = {
				unit_goblin_spearman = 4
			}
		},
		Svarinshaug = {
			Name = "Svarinshaug",
			Owner = "Brising Clan",
			Civilization = "dwarf",
			CulturalNames = {
				dwarf = "Svarinshaug"
			},
			SettlementBuildings = {
				unit_dwarven_town_hall = true
			},
			CulturalSettlementNames = {
				dwarf = "Svarinshaug"
			}
		}
	}
	
	local EarthWaterProvinces = {
		AdriaticSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 17.
			Name = "Adriatic Sea"
		},
		AegeanSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 18.
			Name = "Aegean Sea"
		},
		AlboranSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 16.
			Name = "Alboran Sea"
		},
		AtlanticOcean = {
			Name = "Atlantic Ocean"
		},
		BalearicSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 16.
			Name = "Balearic Sea"		},
		BalticSea = {
			Name = "Baltic Sea", -- Source: http://www.euratlas.net/history/europe/1/index.html
			ReferenceProvince = "Brandenburg" -- province used as a reference for this province's name
		},
		BayOfBiscay = {
			Name = "Bay of Biscay"
		},
		BlackSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 18.
			Name = "Black Sea"
		},
		BristolChannel = { -- Source: "Limits of Oceans and Seas", 1953, p. 13. (see corrections as well)
			Name = "Bristol Channel"
		},
		CelticSea = { -- Source: "Limits of Oceans and Seas", 1953. (see corrections)
			Name = "Celtic Sea"
		},
		EasternMediterraneanSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 15.
			Name = "Eastern Mediterranean Sea"
		},
		EnglishChannel = {
			Name = "English Channel",
			ReferenceProvince = "England" -- province used as a reference for this province's name
		},
		GulfOfBothnia = { -- Source: "Limits of Oceans and Seas", 1953, p. 5.
			Name = "Gulf of Bothnia"
		},
		GulfOfFinland = { -- Source: "Limits of Oceans and Seas", 1953, p. 5.
			Name = "Gulf of Finland"
		},
		GulfOfRiga = { -- Source: "Limits of Oceans and Seas", 1953, p. 5.
			Name = "Gulf of Riga"
		},
		InnerSeas = { -- Source: "Limits of Oceans and Seas", 1953, p. 12.
			Name = "Inner Seas"
		},
		IonianSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 17.
			Name = "Ionian Sea"
		},
		IrishSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 12. (see corrections as well)
			Name = "Irish Sea",
			ReferenceProvince = "Ireland" -- province used as a reference for this province's name
		},
		Kattegat = { -- Source: "Limits of Oceans and Seas", 1953, p. 5.
			Name = "Kattegat"
		},
		LakeBeloye = {
			Name = "Lake Beloye"
		},
		LakeChudskoye = {
			Name = "Lake Chudskoye"
		},
		LakeIlmen = {
			Name = "Lake Ilmen"
		},
		LakeVattern = {
			Name = "Lake Vättern",
			ReferenceProvince = "Sweden"
		},
		LakeWener = {
			Name = "Lake Wener", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 120.
			ReferenceProvince = "Sweden"
		},
		--[[
		LibyanSea = {
			Name = "Libyan Sea"
		},
		--]]
		LigurianSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 16.
			Name = "Ligurian Sea"
		},
		NorthSea = {
			Name = "North Sea", -- Source: http://www.euratlas.net/history/europe/1/index.html
			ReferenceProvince = "Hanover" -- province used as a reference for this province's name
		},
		SeaOfAzov = { -- Source: "Limits of Oceans and Seas", 1953, p. 18.
			Name = "Sea of Azov",
			ReferenceProvince = "Don"
		},
		SeaOfMarmara = { -- Source: "Limits of Oceans and Seas", 1953, p. 18.
			Name = "Sea of Marmara"
		},
		Skagerrak = { -- Source: "Limits of Oceans and Seas", 1953, p. 6.
			Name = "Skagerrak"
		},
		TyrrhenianSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 17.
			Name = "Tyrrhenian Sea"
		},
		WesternMediterraneanSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 15.
			Name = "Western Mediterranean Sea"
		},
		WhiteSea = {
			Name = "White Sea"
		}
	}

	local NidavellirWaterProvinces = {
		DeepSea = {
			Name = "Deep Sea"
		},
		LakeVrug = {
			Name = "Lake Vrug"
		}
	}

	local function AddProvinceTable(province_table)
		for key, value in pairs(province_table) do
			WorldMapProvinces[key] = {}
			WorldMapProvinces[key]["Name"] = province_table[key].Name
						
			local tiles = GetProvinceData(province_table[key].Name, "Tiles")
			WorldMapProvinces[key]["Tiles"] = {}
			for i=1,table.getn(tiles),2 do
				table.insert(WorldMapProvinces[key].Tiles, {tiles[i], tiles[i + 1]})
			end

			WorldMapProvinces[key]["SettlementLocation"] = {GetProvinceData(province_table[key].Name, "SettlementLocationX"), GetProvinceData(province_table[key].Name, "SettlementLocationY")}
			
			WorldMapProvinces[key]["Coastal"] = GetProvinceData(province_table[key].Name, "Coastal")
			
			if (province_table[key].Owner ~= nil) then
				SetProvinceOwner(province_table[key].Name, GetFactionFromName(province_table[key].Owner).Civilization, province_table[key].Owner)
			end
			if (province_table[key].Civilization ~= nil) then
				SetProvinceCivilization(WorldMapProvinces[key].Name, province_table[key].Civilization)
			end
			if (province_table[key].SettlementBuildings ~= nil) then
				for second_key, second_value in pairs(province_table[key].SettlementBuildings) do
					SetProvinceSettlementBuilding(WorldMapProvinces[key].Name, string.gsub(second_key, "_", "-"), province_table[key].SettlementBuildings[second_key]) -- set the province settlement building for the engine
				end
			end
			if (province_table[key].Units ~= nil) then
				for second_key, second_value in pairs(province_table[key].Units) do
					SetProvinceUnitQuantity(WorldMapProvinces[key].Name, string.gsub(second_key, "_", "-"), province_table[key].Units[second_key])
				end
			end
		end
	end
	
	local function AddWaterProvinceTable(province_table)
		for key, value in pairs(province_table) do
			WorldMapWaterProvinces[key] = {}
			WorldMapWaterProvinces[key]["Name"] = province_table[key].Name
			SetProvinceName("", WorldMapWaterProvinces[key].Name) -- this will define a new province for the engine
			
			if (province_table[key].ReferenceProvince ~= nil) then
				WorldMapWaterProvinces[key]["ReferenceProvince"] = province_table[key].ReferenceProvince
				SetProvinceReferenceProvince(WorldMapWaterProvinces[key].Name, WorldMapProvinces[province_table[key].ReferenceProvince].Name)
			end
			
			local tiles = GetProvinceData(province_table[key].Name, "Tiles")
			WorldMapWaterProvinces[key]["Tiles"] = {}
			for i=1,table.getn(tiles),2 do
				table.insert(WorldMapWaterProvinces[key].Tiles, {tiles[i], tiles[i + 1]})
			end
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
