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
	BritishIsles = {"Cornwall", "Cumbria", "Durham", "England", "Highland Scotland", "Ireland", "Lowland Scotland", "Mercia", "Northumberland", "Orkney", "Wales", "York"},
	Czechoslovakia = {"Bohemia", "Moravia", "Slovakia"},
	England = {"Cornwall", "Cumbria", "Durham", "England", "Mercia", "Northumberland", "Wales", "York"},
	Eurasia = {"Astrakhan", "Bessarabia", "Bukowina", "Crimea", "Don", "Russia", "Ukraine", "White Russia"},
	Europe = {"Abruzzo", "Aetolia", "Albania", "Alsace", "Andalusia", "Apulia", "Aquitaine", "Aragon", "Argolis", "Astrakhan", "Attica", "Augsburg", "Austria", "Baden", "Bavaria", "Belgium", "Bessarabia", "Boeotia", "Bohemia", "Bornholm", "Bosnia", "Brandenburg", "Bremen", "Brittany", "Brunswick", "Bukowina", "Bulgaria", "Burgundy", "Calabria", "Carniola", "Castille", "Corinth", "Cornwall", "Corsica", "Courland", "Crete", "Crimea", "Croatia", "Cumbria", "Dalmatia", "Dobruja", "Don", "Drenthe", "Durham", "East Friesland", "England", "Epirus", "Estonia", "Euboea", "Farther Pomerania", "France", "Franche Comte", "Franconia", "Friesland", "Galicia", "Gallaecia", "Gotaland", "Gotland", "Hanover", "Hesse", "Highland Scotland", "Hither Pomerania", "Holland", "Holstein", "Hordaland", "Hungary", "Iceland", "Ireland", "Istria", "Jutland", "Lacedaemonia", "Latium", "Latvia", "Lauenburg", "Liguria", "Lithuania", "Lombardy", "Lorraine", "Lower Lusatia", "Lower Rhine", "Lowland Scotland", "Macedonia", "Magdeburg", "Malta", "Mazovia", "Mecklenburg", "Mercia", "Modena", "Moldavia", "Montenegro", "Moravia", "Moselle", "Naples", "Neumark", "Normandy", "Northumberland", "Oldenburg", "Orkney", "Overijssel", "Palatinate", "Palermo", "Pannonia", "Parma", "Piedmont", "Pomerelia", "Portugal", "Posen", "Provence", "Prussia", "Rhodes", "Rhodope", "Romagna", "Russia", "Sardinia", "Savoy", "Scania", "Schleswig", "Serbia", "Silesia", "Skopje", "Slovakia", "Sweden", "Switzerland", "Syracuse", "Thessaly", "Thrace", "Thuringia", "Transylvania", "Tuscany", "Ukraine", "Umbria", "Upper Lusatia", "Upper Saxony", "Venetia", "Vojvodina", "Wales", "Wallachia", "West Galicia", "Westphalia", "White Russia", "Wurtemberg", "York", "Zealand"},
	France = {"Alsace", "Aquitaine", "Brittany", "Burgundy", "France", "Franche Comte", "Lorraine", "Moselle", "Normandy", "Provence", "Savoy"},
	Gaul = {"Alsace", "Aquitaine", "Belgium", "Brittany", "Burgundy", "France", "Franche Comte", "Lorraine", "Lower Rhine", "Moselle", "Normandy", "Palatinate", "Provence", "Savoy"},
	GermanyNetherlands = {"Augsburg", "Austria", "Baden", "Bavaria", "Belgium", "Brandenburg", "Bremen", "Brunswick", "Drenthe", "East Friesland", "Farther Pomerania", "Franconia", "Friesland", "Hanover", "Hesse", "Hither Pomerania", "Holland", "Holstein", "Lauenburg", "Lower Lusatia", "Lower Rhine", "Magdeburg", "Mecklenburg", "Neumark", "Oldenburg", "Overijssel", "Palatinate", "Silesia", "Thuringia", "Upper Lusatia", "Upper Saxony", "Westphalia", "Wurtemberg"},
	Greece = {"Aetolia", "Albania", "Argolis", "Attica", "Boeotia", "Corinth", "Crete", "Epirus", "Euboea", "Lacedaemonia", "Macedonia", "Rhodes", "Rhodope", "Skopje", "Thessaly", "Thrace"},
	Iberia = {"Andalusia", "Aragon", "Castille", "Gallaecia", "Portugal"},
	Italy = {"Abruzzo", "Apulia", "Calabria", "Corsica", "Istria", "Latium", "Liguria", "Lombardy", "Modena", "Naples", "Palermo", "Parma", "Piedmont", "Romagna", "Sardinia", "Syracuse", "Tuscany", "Umbria", "Venetia"},
	NorthwestEurope = {"Alsace", "Aquitaine", "Belgium", "Brittany", "Burgundy", "Cornwall", "Cumbria", "Drenthe", "Durham", "England", "France", "Franche Comte", "Friesland", "Highland Scotland", "Holland", "Ireland", "Lorraine", "Lowland Scotland", "Mercia", "Moselle", "Normandy", "Northumberland", "Orkney", "Overijssel", "Provence", "Savoy", "Wales", "York"},
	Poland = {"Bukowina", "Galicia", "Mazovia", "Pomerelia", "Posen", "West Galicia", "White Russia"},
	RomanDanube = {"Augsburg", "Austria", "Baden", "Bavaria", "Bosnia", "Bulgaria", "Carniola", "Croatia", "Dalmatia", "Dobruja", "Montenegro", "Pannonia", "Serbia", "Switzerland", "Wurtemberg"},
	Scandinavia = {"Bornholm", "Gotaland", "Gotland", "Hordaland", "Jutland", "Scania", "Schleswig", "Sweden", "Zealand"},
	WestandCentralEurope = {"Abruzzo", "Aetolia", "Albania", "Alsace", "Andalusia", "Apulia", "Aquitaine", "Aragon", "Argolis", "Attica", "Augsburg", "Austria", "Baden", "Bavaria", "Belgium", "Boeotia", "Bohemia", "Bornholm", "Bosnia", "Brandenburg", "Bremen", "Brittany", "Brunswick", "Bulgaria", "Burgundy", "Calabria", "Carniola", "Castille", "Corinth", "Cornwall", "Corsica", "Courland", "Crete", "Croatia", "Cumbria", "Dalmatia", "Dobruja", "Drenthe", "Durham", "East Friesland", "England", "Epirus", "Estonia", "Euboea", "Farther Pomerania", "France", "Franche Comte", "Franconia", "Friesland", "Galicia", "Gallaecia", "Gotaland", "Gotland", "Hanover", "Hesse", "Highland Scotland", "Hither Pomerania", "Holland", "Holstein", "Hordaland", "Hungary", "Iceland", "Ireland", "Istria", "Jutland", "Lacedaemonia", "Latium", "Latvia", "Lauenburg", "Liguria", "Lithuania", "Lombardy", "Lorraine", "Lower Lusatia", "Lower Rhine", "Lowland Scotland", "Macedonia", "Magdeburg", "Malta", "Mazovia", "Mecklenburg", "Mercia", "Modena", "Moldavia", "Montenegro", "Moravia", "Moselle", "Naples", "Neumark", "Normandy", "Northumberland", "Oldenburg", "Orkney", "Overijssel", "Palatinate", "Palermo", "Pannonia", "Parma", "Piedmont", "Pomerelia", "Portugal", "Posen", "Provence", "Prussia", "Rhodes", "Rhodope", "Romagna", "Sardinia", "Savoy", "Scania", "Schleswig", "Serbia", "Silesia", "Skopje", "Slovakia", "Sweden", "Switzerland", "Syracuse", "Thessaly", "Thrace", "Thuringia", "Transylvania", "Tuscany", "Umbria", "Upper Lusatia", "Upper Saxony", "Venetia", "Vojvodina", "Wales", "Wallachia", "West Galicia", "Westphalia", "Wurtemberg", "York", "Zealand"}
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
		Cornwall = {
			Name = "Cornwall"
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
		Cumbria = {
			Name = "Cumbria"
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
		Durham = {
			Name = "Durham"
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
		Mercia = {
			Name = "Mercia"
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
		Northumberland = {
			Name = "Northumberland"
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
		Wales = {
			Name = "Wales"
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
		York = {
			Name = "York"
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
			Units = {
				unit_goblin_spearman = 4
			}
		},
		CavernsOfFlame = {
			Name = "Caverns of Flame",
			Civilization = "goblin",
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
			Civilization = "goblin",
			Units = {
	--			unit_goblin_spearman = 3 -- three starting chieftains in the Gathering Materials scenario
				unit_goblin_spearman = 9 * 2 -- three starting chieftains in the Gathering Materials scenario, plus 2 goblins for each tribe and multiplied by 2 to prevent too early expansion into this province
			}
		},
		GryphonMountain = {
			Name = "Gryphon Mountain",
			Units = { -- wild units in the Gryphon Mountain scenario
				unit_dwarven_gryphon_rider = 6 -- Mother Gryphon, Graak, Grook, Gruak, Graik, Griak
			}
		},
		Heartfangs = {
			Name = "Heartfangs",
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
			Units = { -- wild units in the High Pass scenario
				unit_goblin_spearman = 10, -- 10 uses of the WILD_THING function which generates trolls, ogres and wolves
				unit_dwarven_gryphon_rider = 1 -- Kaara
			}
		},
		HighbrookPass = {
			Name = "Highbrook Pass",
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
			Units = {
				unit_goblin_spearman = 6, -- some enemy goblins
				unit_goblin_archer = 3
			}
		},
		KalKartha = {
			Name = "Kal Kartha",
			Units = { -- some wild gnomes from the Forbidden Forest to stop too early expansion into this province
				unit_dwarven_axefighter = 0,
				unit_dwarven_steelclad = 0,
				unit_dwarven_thane = 0,
				unit_gnomish_recruit = 4
			}
		},
		Lyr = {
			Name = "Lyr",
			Units = { -- some wild dwarves to stop too early expansion into this province
				unit_dwarven_axefighter = 12
			}
		},
		NorthernWastelands = {
			Name = "Northern Wastelands",
			Civilization = "goblin",
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
			Units = {
				unit_goblin_spearman = 4
			}
		},
		SouthernTunnels = {
			Name = "Southern Tunnels",
			Units = {
				unit_goblin_spearman = 4
			}
		},
		Svarinshaug = {
			Name = "Svarinshaug",
			Owner = "Brising Clan",
			Civilization = "dwarf",
			SettlementBuildings = {
				unit_dwarven_town_hall = true
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
