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
	BritishIsles = {"England", "Highland Scotland", "Ireland", "Lowland Scotland"},
	Czechoslovakia = {"Bohemia"},
	England = {"England"},
	Eurasia = {"Astrakhan", "Bessarabia", "Bukowina", "Crimea", "Don", "Russia", "Ukraine", "White Russia"},
	Europe = {"Abruzzo", "Aetolia", "Albania", "Alsace", "Andalusia", "Apulia", "Aquitaine", "Aragon", "Argolis", "Astrakhan", "Attica", "Augsburg", "Austria", "Baden", "Baltic Lands", "Bavaria", "Belgium", "Bessarabia", "Boeotia", "Bohemia", "Bosnia", "Brandenburg", "Bremen", "Brittany", "Brunswick", "Bukowina", "Bulgaria", "Burgundy", "Calabria", "Carniola", "Castille", "Corinth", "Corsica", "Crete", "Crimea", "Croatia", "Dalmatia", "Dobruja", "Don", "East Friesland", "England", "Epirus", "Euboea", "Farther Pomerania", "France", "Franche Comte", "Franconia", "Friesland", "Galicia", "Gallaecia", "Gotaland", "Gotland", "Hanover", "Highland Scotland", "Hither Pomerania", "Holland", "Holstein", "Hungary", "Iceland", "Ireland", "Istria", "Jutland", "Lacedaemonia", "Latium", "Lauenburg", "Liguria", "Lombardy", "Lorraine", "Lower Rhine", "Lowland Scotland", "Macedonia", "Malta", "Mecklenburg", "Modena", "Moldavia", "Montenegro", "Moselle", "Naples", "Normandy", "Oldenburg", "Palatinate", "Palermo", "Pannonia", "Parma", "Piedmont", "Poland", "Portugal", "Provence", "Prussia", "Rhineland", "Rhodes", "Rhodope", "Romagna", "Russia", "Sardinia", "Savoy", "Scania", "Schleswig", "Serbia", "Silesia", "Skopje", "Sweden", "Switzerland", "Syracuse", "Thessaly", "Thrace", "Transylvania", "Tuscany", "Ukraine", "Umbria", "Venetia", "Vojvodina", "Wallachia", "White Russia", "Wurtemberg", "Zealand"},
	France = {"Alsace", "Aquitaine", "Brittany", "Burgundy", "France", "Franche Comte", "Lorraine", "Moselle", "Normandy", "Provence", "Savoy"},
	Gaul = {"Alsace", "Aquitaine", "Belgium", "Brittany", "Burgundy", "France", "Franche Comte", "Lorraine", "Lower Rhine", "Moselle", "Normandy", "Palatinate", "Provence", "Savoy"},
	GermanyNetherlands = {"Augsburg", "Austria", "Baden", "Bavaria", "Belgium", "Brandenburg", "Bremen", "Brunswick", "East Friesland", "Farther Pomerania", "Franconia", "Friesland", "Hanover", "Hither Pomerania", "Holland", "Holstein", "Lauenburg", "Lower Rhine", "Mecklenburg", "Oldenburg", "Palatinate", "Rhineland", "Silesia", "Wurtemberg"},
	Greece = {"Aetolia", "Albania", "Argolis", "Attica", "Boeotia", "Corinth", "Crete", "Epirus", "Euboea", "Lacedaemonia", "Macedonia", "Rhodes", "Rhodope", "Skopje", "Thessaly", "Thrace"},
	Iberia = {"Andalusia", "Aragon", "Castille", "Gallaecia", "Portugal"},
	Italy = {"Abruzzo", "Apulia", "Calabria", "Corsica", "Istria", "Latium", "Liguria", "Lombardy", "Modena", "Naples", "Palermo", "Parma", "Piedmont", "Romagna", "Sardinia", "Syracuse", "Tuscany", "Umbria", "Venetia"},
	NorthwestEurope = {"Alsace", "Aquitaine", "Belgium", "Brittany", "Burgundy", "England", "France", "Franche Comte", "Friesland", "Highland Scotland", "Holland", "Ireland", "Lorraine", "Lowland Scotland", "Moselle", "Normandy", "Provence", "Savoy"},
	Poland = {"Bukowina", "Galicia", "Poland", "White Russia"},
	RomanDanube = {"Augsburg", "Austria", "Baden", "Bavaria", "Bosnia", "Bulgaria", "Carniola", "Croatia", "Dalmatia", "Dobruja", "Montenegro", "Pannonia", "Serbia", "Switzerland", "Wurtemberg"},
	Scandinavia = {"Gotaland", "Gotland", "Jutland", "Scania", "Schleswig", "Sweden", "Zealand"},
	WestandCentralEurope = {"Abruzzo", "Aetolia", "Albania", "Alsace", "Andalusia", "Apulia", "Aquitaine", "Aragon", "Argolis", "Attica", "Augsburg", "Austria", "Baden", "Baltic Lands", "Bavaria", "Belgium", "Boeotia", "Bohemia", "Bosnia", "Brandenburg", "Bremen", "Brittany", "Brunswick", "Bulgaria", "Burgundy", "Calabria", "Carniola", "Castille", "Corinth", "Corsica", "Crete", "Croatia", "Dalmatia", "Dobruja", "East Friesland", "England", "Epirus", "Euboea", "Farther Pomerania", "France", "Franche Comte", "Franconia", "Friesland", "Galicia", "Gallaecia", "Gotaland", "Gotland", "Hanover", "Highland Scotland", "Hither Pomerania", "Holland", "Holstein", "Hungary", "Iceland", "Ireland", "Istria", "Jutland", "Lacedaemonia", "Latium", "Lauenburg", "Liguria", "Lombardy", "Lorraine", "Lower Rhine", "Lowland Scotland", "Macedonia", "Malta", "Mecklenburg", "Modena", "Moldavia", "Montenegro", "Moselle", "Naples", "Normandy", "Oldenburg", "Palatinate", "Palermo", "Pannonia", "Parma", "Piedmont", "Poland", "Portugal", "Provence", "Prussia", "Rhineland", "Rhodes", "Rhodope", "Romagna", "Sardinia", "Savoy", "Scania", "Schleswig", "Serbia", "Silesia", "Skopje", "Sweden", "Switzerland", "Syracuse", "Thessaly", "Thrace", "Transylvania", "Tuscany", "Umbria", "Venetia", "Vojvodina", "Wallachia", "Wurtemberg", "Zealand"}
}

function LoadProvinces(world)
	WorldMapProvinces = nil
	WorldMapProvinces = {}
	WorldMapWaterProvinces = nil
	WorldMapWaterProvinces = {}

	local EarthProvinces = {
		Abruzzo = {
			Name = "Abruzzo",
			CulturalNames = {
				latin = "Samnium" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
			},
			Tiles = {
				{517, 134}, {517, 135},
				{518, 134}, {518, 135}, {518, 136},
				{519, 134}, {519, 135}, {519, 136},
				{520, 135}, {520, 136}, {520, 137},
				{521, 136}, {521, 137},
				{522, 137}
			},
			SettlementName = "L'Aquila",
			CulturalSettlementNames = {
				latin = "Amiternum"
			},
			SettlementLocation = {518, 135}, -- L'Aquila
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Aetolia = {
			Name = "Aetolia",
			Tiles = {
				{539, 145},
				{540, 145}, {540, 146},
				{541, 145},
				{542, 145},
				{543, 145},
				{544, 145}
			},
			CulturalNames = {
				greek = "Aetolia"
			},
			SettlementName = "Naupactus",
			CulturalSettlementNames = {
				greek = "Naupactus"
			},
			SettlementLocation = {541, 145}, -- Naupactus
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Albania = {
			Name = "Albania",
			Tiles = {
				{134, 33}, {134, 34}, -- old map
				{535, 136}, {535, 138}, {535, 139}, {535, 140}, {535, 141},
				{536, 135}, {536, 136}, {536, 137}, {536, 138}, {536, 139}, {536, 140}, {536, 141},
				{537, 135}, {537, 136}, {537, 137}, {537, 138}, {537, 139}, {537, 140}, {537, 141}, {537, 142},
				{538, 136}, {538, 139}, {538, 140}, {538, 141},
				{539, 140}
			},
			CulturalNames = {
				latin = "Taulantia"
			},
			SettlementName = "Dyrrhachium",
			CulturalSettlementNames = {
				greek = "Epidamnus",
				latin = "Dyrrhachium"
			},
			SettlementLocation = {536, 138}, -- Tirana
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"illyrian", "Taulantii Tribe"
			}
		},
		Alsace = {
			Name = "Alsace",
			CulturalNames = {
				teuton = "Elsass"
			},
			Tiles = {
				{500, 117}, {500, 118}, {500, 119}, {500, 120},
				{501, 117}, {501, 118}, {501, 119}, {501, 120},
				{502, 117}
			},
			SettlementName = "Strasburg",
			CulturalSettlementNames = {
				latin = "Argentoratum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
				teuton = "Strasburg"
			},
			SettlementLocation = {501, 118}, -- Strasburg
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Alamanni Tribe"
			}
		},
		Andalusia = {
			Name = "Andalusia",
			CulturalNames = {
				latin = "Farther Baetica",
				Portugal = "Andalusia",
				Spain = "Andalusia"
			},
			Tiles = {
				{115, 37}, {116, 36}, {116, 37}, {117, 36}, {117, 37}, {118, 37}, -- old map
				{459, 148}, {459, 149},
				{460, 147}, {460, 148}, {460, 149},
				{461, 147}, {461, 148}, {461, 149}, {461, 150},
				{462, 147}, {462, 148}, {462, 149}, {462, 150}, {462, 151}, {462, 152},
				{463, 147}, {463, 148}, {463, 149}, {463, 150}, {463, 151}, {463, 152},
				{464, 147}, {464, 148}, {464, 149}, {464, 150}, {464, 151}, {464, 152},
				{465, 145}, {465, 146}, {465, 147}, {465, 148}, {465, 149}, {465, 150}, {465, 151},
				{466, 145}, {466, 146}, {466, 147}, {466, 148}, {466, 149}, {466, 150}, {466, 151},
				{467, 146}, {467, 147}, {467, 148}, {467, 149}, {467, 150}, {467, 151},
				{468, 146}, {468, 147}, {468, 148}, {468, 149}, {468, 150}, {468, 151},
				{469, 146}, {469, 147}, {469, 148}, {469, 149}, {469, 150}, {469, 151},
				{470, 146}, {470, 147}, {470, 148}, {470, 149}, {470, 150}, {470, 151},
				{471, 146}, {471, 147}, {471, 148}, {471, 149}, {471, 150}, {471, 151},
				{472, 146}, {472, 147}, {472, 148}, {472, 149}, {472, 150}, {472, 151},
				{473, 147}, {473, 148}, {473, 149}, {473, 150},
				{474, 147}, {474, 148}, {474, 149}, {474, 150},
				{475, 145}, {475, 146}, {475, 147}, {475, 148}, {475, 149},
				{476, 145}, {476, 146}, {476, 147}, {476, 148},
				{477, 146}, {477, 147}, {477, 148},
				{478, 146}
			},
			SettlementName = "Corduba",
			CulturalSettlementNames = {
				latin = "Corduba"
			},
			SettlementLocation = {466, 148}, -- Cordoba
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Apulia = {
			Name = "Apulia",
			CulturalNames = {
				latin = "Apulia" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 30-31.
			},
			Tiles = {
				{523, 137}, {523, 138}, 
				{524, 137}, {524, 138},
				{525, 138}, {525, 139},
				{526, 139},
				{527, 139},
				{528, 139}, {528, 140},
				{529, 140},
				{530, 140},
				{531, 140}, {531, 141}
			},
			SettlementName = "Bari",
			CulturalSettlementNames = {
				latin = "Barium"
			},
			SettlementLocation = {527, 139}, -- Bari
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Aquitaine = {
			Name = "Aquitaine",
			CulturalNames = {
				latin = "Aquitania",
				France = "Aquitaine"
			},
			Tiles = {
				{119, 31}, {119, 32}, {119, 33}, {120, 31}, {120, 32}, {120, 33}, {121, 31}, {121, 32}, {121, 33}, {122, 32}, -- old map
				{475, 132},
				{476, 129}, {476, 130}, {476, 131}, {476, 132}, {476, 133},
				{477, 124}, {477, 125}, {477, 126}, {477, 127}, {477, 128}, {477, 129}, {477, 130}, {477, 131}, {477, 132}, {477, 133},
				{478, 124}, {478, 125}, {478, 126}, {478, 127}, {478, 128}, {478, 129}, {478, 130}, {478, 131}, {478, 132}, {478, 133},
				{479, 125}, {479, 126}, {479, 127}, {479, 128}, {479, 129}, {479, 130}, {479, 131}, {479, 132}, {479, 133}, {479, 134},
				{480, 125}, {480, 126}, {480, 127}, {480, 128}, {480, 129}, {480, 130}, {480, 131}, {480, 132}, {480, 133}, {480, 134},
				{481, 125}, {481, 126}, {481, 127}, {481, 128}, {481, 129}, {481, 130}, {481, 131}, {481, 132}, {481, 133}, {481, 134},
				{482, 125}, {482, 126}, {482, 127}, {482, 128}, {482, 129}, {482, 130}, {482, 131}, {482, 132}, {482, 133},
				{483, 125}, {483, 126}, {483, 127}, {483, 128}, {483, 129}, {483, 130}, {483, 131}, {483, 132}, {483, 133},
				{484, 126}, {484, 127}, {484, 128}, {484, 129}, {484, 130}, {484, 131}, {484, 132}, {484, 133}, {484, 134},
				{485, 126}, {485, 127}, {485, 128}, {485, 129}, {485, 130}, {485, 131}, {485, 132}, {485, 133}, {485, 134},
				{486, 126}, {486, 127}, {486, 128}, {486, 129}, {486, 130}, {486, 131}, {486, 132}, {486, 133}, {486, 134},
				{487, 124}, {487, 125}, {487, 126}, {487, 127}, {487, 128}, {487, 129}, {487, 130}, {487, 131}, {487, 132}, {487, 133}, {487, 134},
				{488, 124}, {488, 125}, {488, 126}, {488, 127}, {488, 128}, {488, 129}, {488, 130}, {488, 131}, {488, 132}, {488, 133}, {488, 134},
				{489, 125}, {489, 126}, {489, 127}, {489, 128}, {489, 129}, {489, 130}, {489, 131}, {489, 132},
				{490, 125}, {490, 126}, {490, 127}, {490, 128}, {490, 129}, {490, 130}, {490, 131}, {490, 132},
				{491, 127}, {491, 128}, {491, 129}, {491, 130}, {491, 131},
				{492, 127}, {492, 128}, {492, 129}, {492, 130}, {492, 131},
				{493, 127}, {493, 128}, {493, 129}, {493, 130}, {493, 131}
			},
			SettlementName = "Tolosa",
			CulturalSettlementNames = {
				latin = "Tolosa"
			},
			SettlementLocation = {483, 132}, -- Toulouse
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"celt", "Arverni Tribe"
--				"latin", "France"
			}
		},
		Aragon = {
			Name = "Aragon",
			CulturalNames = {
				latin = "Hither Baetica",
				Portugal = "Aragon",
				Spain = "Aragon"
			},
			Tiles = {
				{119, 34}, {119, 35}, {119, 36}, {120, 34}, {121, 34}, -- old map
				{475, 137}, {475, 138}, {475, 141},
				{476, 135}, {476, 136}, {476, 137}, {476, 138}, {476, 139}, {476, 140}, {476, 141},
				{477, 135}, {477, 136}, {477, 137}, {477, 138}, {477, 139}, {477, 140}, {477, 141}, {477, 142}, {477, 143}, {477, 144}, {477, 145},
				{478, 134}, {478, 135}, {478, 136}, {478, 137}, {478, 138}, {478, 139}, {478, 140}, {478, 141}, {478, 142}, {478, 143}, {478, 144}, {478, 145},
				{479, 135}, {479, 136}, {479, 137}, {479, 138}, {479, 139}, {479, 140}, {479, 141}, {479, 142}, {479, 145},
				{480, 135}, {480, 136}, {480, 137}, {480, 138}, {480, 139}, {480, 140}, {480, 141},
				{481, 135}, {481, 136}, {481, 137}, {481, 138}, {481, 139}, {481, 140},
				{482, 134}, {482, 135}, {482, 136}, {482, 137}, {482, 138}, {482, 139},
				{483, 134}, {483, 135}, {483, 136}, {483, 137}, {483, 138},
				{484, 135}, {484, 136}, {484, 137}, {484, 138},
				{485, 135}, {485, 136}, {485, 137}, {485, 138},
				{486, 135}, {486, 136}, {486, 137},
				{487, 135}, {487, 136}, {487, 137}, {487, 143},
				{488, 135}, {488, 136}, {488, 143},
				{489, 143},
				{491, 142}
			},
			SettlementName = "Caesaraugusta",
			CulturalSettlementNames = {
				latin = "Caesaraugusta"
			},
			SettlementLocation = {477, 137}, -- Zaragoza
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Argolis = {
			Name = "Argolis",
			Tiles = {
				{135, 37}, {136, 37}, -- old map
				{540, 148},
				{541, 148}, {541, 149},
				{542, 147}, {542, 148}, {542, 149},
				{543, 148}, {543, 149},
				{544, 148}, {544, 149}
			},
			CulturalNames = {
				greek = "Argolis"
			},
			SettlementName = "Argos",
			CulturalSettlementNames = {
				greek = "Argos",
				Mycenae = "Mycenae"
			},
			SettlementLocation = {544, 148}, -- Argos
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"greek", "Argos",
				"greek", "Mycenae"
			}
		},
		Astrakhan = {
			Name = "Astrakhan",
			CulturalNames = {
				AsaTribe = "Ansulanda" -- rendering of "Asaland" in Proto-Germanic
			},
			Tiles = {
				{151, 30}, {152, 28}, {152, 29}, {152, 30}, {152, 31}, {153, 28}, {153, 29}, {153, 30}, {153, 31}, {154, 28}, {154, 29}, {154, 30}, {155, 29}, {155, 30}, -- old map
				{601, 120}, {601, 121}, {601, 122},
				{602, 119}, {602, 120}, {602, 121}, {602, 122}, {602, 123}, {602, 124},
				{603, 118}, {603, 119}, {603, 120}, {603, 121}, {603, 122}, {603, 123}, {603, 124},
				{604, 118}, {604, 119}, {604, 120}, {604, 121}, {604, 122}, {604, 123}, {604, 124}, {604, 125},
				{605, 118}, {605, 119}, {605, 120}, {605, 121}, {605, 122}, {605, 123}, {605, 124}, {605, 125},
				{606, 118}, {606, 119}, {606, 120}, {606, 121}, {606, 122}, {606, 123}, {606, 124}, {606, 125}, {606, 126},
				{607, 117}, {607, 118}, {607, 119}, {607, 120}, {607, 121}, {607, 122}, {607, 123}, {607, 124}, {607, 125}, {607, 126}, {607, 127}, {607, 128},
				{608, 115}, {608, 116}, {608, 117}, {608, 118}, {608, 119}, {608, 120}, {608, 121}, {608, 122}, {608, 123}, {608, 124}, {608, 125}, {608, 126}, {608, 127},
				{609, 113}, {609, 114}, {609, 115}, {609, 116}, {609, 117}, {609, 118}, {609, 119}, {609, 120}, {609, 121}, {609, 122}, {609, 123}, {609, 124}, {609, 125}, {609, 126}, {609, 127},
				{610, 113}, {610, 114}, {610, 115}, {610, 116}, {610, 117}, {610, 118}, {610, 119}, {610, 120}, {610, 121}, {610, 122}, {610, 123}, {610, 124}, {610, 125}, {610, 126}, {610, 127},
				{611, 114}, {611, 115}, {611, 116}, {611, 117}, {611, 118}, {611, 119}, {611, 120}, {611, 121}, {611, 122}, {611, 123}, {611, 124}, {611, 125}, {611, 126}, {611, 127},
				{612, 114}, {612, 115}, {612, 116}, {612, 117}, {612, 118}, {612, 119}, {612, 120}, {612, 121}, {612, 122}, {612, 123}, {612, 124}, {612, 125}, {612, 126}, {612, 127},
				{613, 114}, {613, 115}, {613, 116}, {613, 117}, {613, 118}, {613, 119}, {613, 120}, {613, 121}, {613, 122}, {613, 123}, {613, 124}, {613, 125}, {613, 126}, {613, 127},
				{614, 114}, {614, 115}, {614, 116}, {614, 117}, {614, 118}, {614, 119}, {614, 120}, {614, 121}, {614, 122}, {614, 123}, {614, 124}, {614, 125}, {614, 126}, {614, 127},
				{615, 113}, {615, 114}, {615, 115}, {615, 116}, {615, 117}, {615, 118}, {615, 119}, {615, 120}, {615, 121}, {615, 122}, {615, 123}, {615, 124}, {615, 125},
				{616, 114}, {616, 115}, {616, 116}, {616, 117}, {616, 118}, {616, 119}, {616, 120}, {616, 121}, {616, 122}, {616, 123}, {616, 124}, {616, 125},
				{617, 114}, {617, 115}, {617, 116}, {617, 117}, {617, 118}, {617, 119}, {617, 120}, {617, 121}, {617, 122}, {617, 123}, {617, 124}, {617, 125},
				{618, 114}, {618, 115}, {618, 116}, {618, 117}, {618, 118}, {618, 119}, {618, 120}, {618, 121}, {618, 122}, {618, 123}, {618, 124},
				{619, 114}, {619, 115}, {619, 116}, {619, 117}, {619, 118}, {619, 119}, {619, 120}, {619, 121}, {619, 122}, {619, 123},
				{620, 113}, {620, 114}, {620, 115}, {620, 116}, {620, 117}, {620, 118}, {620, 119}, {620, 120}, {620, 121}, {620, 122}, {620, 123},
				{621, 113}, {621, 114}, {621, 115}, {621, 116}, {621, 117}, {621, 118}, {621, 119}, {621, 120}, {621, 121}, {621, 122}, {621, 123},
				{622, 116}, {622, 117}, {622, 118}, {622, 119}, {622, 120}, {622, 121}, {622, 122},
				{623, 117}, {623, 118}, {623, 119}, {623, 120}, {623, 121}, {623, 122},
				{624, 121}, {624, 122},
			},
			Owner = "Asa Tribe",
			SettlementName = "Astrakhan",
			CulturalSettlementNames = {
				germanic = "Ansugarda" -- rendering of "Asgard" in Proto-Germanic
			},
			SettlementLocation = {618, 124}, -- Astrakhan
			SettlementBuildings = {
				unit_germanic_town_hall = true,
				unit_germanic_barracks = true
			},
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 8
			},
			SettlementTerrain = "Plains",
			Claims = {
				"germanic", "Asa Tribe",
				"persian", "Sarmatian Tribe"
			}
		},
		Attica = {
			Name = "Attica",
			Tiles = {
				{135, 36}, {136, 36}, -- old map
				{546, 147},
				{547, 147}
			},
			CulturalNames = {
				greek = "Attica"
			},
			SettlementName = "Athens",
			CulturalSettlementNames = {
				greek = "Athens",
				latin = "Athens"
			},
			SettlementLocation = {547, 147}, -- Athens
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"greek", "Athens"
			}
		},
		Augsburg = {
			Name = "Augsburg",
			CulturalNames = {
				latin = "Augusta Vindelicorum",
				teuton = "Augsburg"
			},
			Tiles = {
				{509, 118}, {509, 119}, {509, 120},
				{510, 117}, {510, 118}, {510, 119}, {510, 120}
			},
			SettlementName = "Augsburg",
			CulturalSettlementNames = {
				latin = "Augusta Vindelicorum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
				teuton = "Augsburg"
			},
			SettlementLocation = {510, 118}, -- Augsburg
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Alamanni Tribe"
			}
		},
		Austria = {
			Name = "Austria",
			CulturalNames = {
				celt = "Noricum",
				latin = "Noricum",
				teuton = "Austria"
			},
			Tiles = {
				{127, 30}, {128, 30}, {129, 29}, {129, 30}, {130, 29}, {130, 30}, {131, 29}, {131, 30}, -- old map
				{507, 121},
				{508, 121},
				{509, 121},
				{510, 121}, {510, 122}, {510, 123}, {510, 124}, {510, 125},
				{511, 121}, {511, 122}, {511, 123}, {511, 124}, {511, 125},
				{512, 120}, {512, 121}, {512, 122}, {512, 123}, {512, 124},
				{513, 120}, {513, 121}, {513, 122}, {513, 123},
				{514, 120}, {514, 121}, {514, 122}, {514, 123},
				{515, 120}, {515, 121}, {515, 122},
				{516, 119}, {516, 120}, {516, 121}, {516, 122},
				{517, 119}, {517, 120}, {517, 121}, {517, 122}, {517, 123},
				{518, 118}, {518, 119}, {518, 120}, {518, 121}, {518, 122}, {518, 123},
				{519, 118}, {519, 119}, {519, 120}, {519, 121}, {519, 122}, {519, 123},
				{520, 118}, {520, 119}, {520, 120}, {520, 121}, {520, 122}, {520, 123},
				{521, 118}, {521, 119}, {521, 120}, {521, 121}, {521, 122}, {521, 123},
				{522, 117}, {522, 118}, {522, 119}, {522, 120}, {522, 121}, {522, 122}, {522, 123},
				{523, 117}, {523, 118}, {523, 119}, {523, 120}, {523, 121}, {523, 122}, {523, 123}, {523, 124},
				{524, 117}, {524, 118}, {524, 119}, {524, 120}, {524, 121}, {524, 122}, {524, 123}, {524, 124},
				{525, 117}, {525, 118}, {525, 119}, {525, 120}, {525, 121}, {525, 122}, {525, 123},
				{526, 117}, {526, 118}, {526, 119}, {526, 120},
				{527, 117}, {527, 118}
			},
			SettlementName = "Vienna",
			CulturalSettlementNames = {
				celt = "Vindobona",
				germanic = "Vindobona",
				latin = "Vindobona",
				teuton = "Vienna"
			},
			SettlementLocation = {526, 118}, -- Vienna
			Map = "maps/earth/salzburg.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"celt", "Norici Tribe",
				"teuton", "Austria"
			}
		},
		Baden = {
			Name = "Baden",
			CulturalNames = {
				latin = "Agri Decumates", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
				teuton = "Baden"
			},
			Tiles = {
				{502, 118}, {502, 119}, {502, 120},
				{503, 117}, {503, 118}, {503, 119}, {503, 120},
				{504, 116}, {504, 117}, {504, 119}, {504, 120},
				{505, 116}, {505, 119},
				{506, 116}, {506, 119},
				{507, 115}, {507, 116}
			},
			SettlementName = "Rastatt",
			CulturalSettlementNames = {
				teuton = "Rastatt"
			},
			SettlementLocation = {503, 117}, -- Rastatt
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Alamanni Tribe",
				"teuton", "Baden"
			}
		},
		BalticLands = {
			Name = "Baltic Lands",
			Tiles = {
				{135, 23}, {135, 24}, {136, 23}, {136, 24}, {137, 22}, {137, 23}, {137, 24}, {138, 22}, {138, 23}, {138, 24}, {139, 22}, {139, 23}, -- old map
				{543, 89},
				{544, 89},
				{547, 88}, {547, 89},
				{548, 87}, {548, 88}, {548, 89}
			},
			SettlementName = "Riga",
			SettlementLocation = {137, 23}, -- Riga
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Bavaria = {
			Name = "Bavaria",
			CulturalNames = {
				Bavaria = "Bavaria",
				BavarianTribe = "Bavaria",
				latin = "Raetia",
				teuton = "Bavaria"
			},
			Tiles = {
				{126, 29}, {127, 28}, {127, 29}, {128, 28}, {128, 29}, -- old map
				{511, 116}, {511, 117}, {511, 118}, {511, 119}, {511, 120},
				{512, 116}, {512, 117}, {512, 118}, {512, 119},
				{513, 114}, {513, 115}, {513, 116}, {513, 117}, {513, 118}, {513, 119},
				{514, 114}, {514, 115}, {514, 116}, {514, 117}, {514, 118}, {514, 119},
				{515, 114}, {515, 115}, {515, 116}, {515, 117}, {515, 118}, {515, 119},
				{516, 116}, {516, 117}, {516, 118},
				{517, 117}, {517, 118},
				{518, 117}
			},
			SettlementName = "Ratisbon",
			CulturalSettlementNames = {
				latin = "Regina Castra",
				teuton = "Regensburg"
			},
			SettlementLocation = {514, 116}, -- Regensburg
			Map = "maps/earth/regensburg.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Bavarian Tribe"
			}
		},
		Belgium = {
			Name = "Belgium",
			CulturalNames = {
				Francia = "Austrasia",
				FrankTribe = "Austrasia",
				latin = "Belgica"
			},
			Tiles = {
				{122, 27}, {122, 28}, {123, 28}, {124, 28}, -- old map
				{488, 110}, {488, 111},
				{489, 110}, {489, 111},
				{490, 110}, {490, 111}, {490, 112},
				{491, 110}, {491, 111}, {491, 112},
				{492, 110}, {492, 111}, {492, 112}, {492, 113},
				{493, 110}, {493, 111}, {493, 112}, {493, 113},
				{494, 110}, {494, 111}, {494, 112}, {494, 113}, {494, 114},
				{495, 110}, {495, 111}, {495, 112}, {495, 113}, {495, 114}, {495, 115},
				{496, 111}, {496, 112}, {496, 113}, {496, 114}, {496, 115},
				{497, 115}
			},
			SettlementName = "Brussels",
			CulturalSettlementNames = {
				latin = "Aduatuca"
			},
			SettlementLocation = {492, 111}, -- Brussels
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"celt", "Menapii Tribe"
			}
		},
		Bessarabia = {
			Name = "Bessarabia",
			Tiles = {
				{553, 118},
				{554, 118},
				{555, 118}, {555, 119},
				{556, 118}, {556, 119}, {556, 120},
				{557, 118}, {557, 119}, {557, 120},
				{558, 118}, {558, 119}, {558, 120},
				{559, 118}, {559, 119}, {559, 120}, {559, 121},
				{560, 119}, {560, 120}, {560, 121}, {560, 122}, {560, 123}, {560, 124}, {560, 125}, {560, 126},
				{561, 120}, {561, 121}, {561, 122}, {561, 123}, {561, 124}, {561, 125}, {561, 126},
				{562, 121}, {562, 122}, {562, 123}, {562, 124}, {562, 125}, {562, 126},
				{563, 122}, {563, 123}, {563, 124}, {563, 125}, {563, 126},
				{564, 123}, {564, 124}, {564, 125},
				{565, 124}, {565, 125}
			},
			SettlementName = "Kishinev",
			SettlementLocation = {562, 122}, -- Kishinev
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
--				"latin", "Moldavia"
			}
		},
		Boeotia = {
			Name = "Boeotia",
			Tiles = {
				{544, 146},
				{545, 146},
				{546, 146}
			},
			CulturalNames = {
				greek = "Boeotia"
			},
			SettlementName = "Thebes",
			CulturalSettlementNames = {
				greek = "Thebes"
			},
			SettlementLocation = {546, 146}, -- Thebes
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"greek", "Thebes"
			}
		},
		Bohemia = {
	--		Name = "Marcomannia",
			Name = "Bohemia",
			CulturalNames = {
				celt = "Boiohaemum",
				germanic = "Boiohaemum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
				latin = "Boiohaemum",
				teuton = "Bohemia"
			},
			Tiles = {
				{129, 28}, {130, 28}, {131, 28}, -- old map
				{515, 113},
				{516, 112}, {516, 113}, {516, 114}, {516, 115},
				{517, 112}, {517, 113}, {517, 114}, {517, 115}, {517, 116},
				{518, 112}, {518, 113}, {518, 114}, {518, 115}, {518, 116},
				{519, 111}, {519, 112}, {519, 113}, {519, 114}, {519, 115}, {519, 116}, {519, 117},
				{520, 111}, {520, 112}, {520, 113}, {520, 114}, {520, 115}, {520, 116}, {520, 117},
				{521, 111}, {521, 112}, {521, 113}, {521, 114}, {521, 115}, {521, 116}, {521, 117},
				{522, 111}, {522, 112}, {522, 113}, {522, 114}, {522, 115}, {522, 116},
				{523, 111}, {523, 112}, {523, 113}, {523, 114}, {523, 115}, {523, 116},
				{524, 111}, {524, 112}, {524, 113}, {524, 114}, {524, 115}, {524, 116},
				{525, 112}, {525, 113}, {525, 114}, {525, 115}, {525, 116},
				{526, 113}, {526, 114}, {526, 115}, {526, 116},
				{527, 114}, {527, 115}, {527, 116},
				{528, 113}, {528, 114}, {528, 115}, {528, 116},
				{529, 113}, {529, 114}, {529, 115}, {529, 116},
				{530, 114}, {530, 115}, {530, 116},
				{531, 114}, {531, 115}, {531, 116},
				{532, 114}, {532, 115},
				{533, 114}
			},
			SettlementName = "Prague",
			CulturalSettlementNames = {
				germanic = "Bubienum", -- name of the Marcomannic capital; Source: Frederick Kohlrausch, "A History of Germany", 1844, p. 57.
				teuton = "Bubienum"
			},
			SettlementLocation = {520, 113}, -- Prague
			Map = "maps/earth/prague.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"celt", "Boii Tribe",
				"teuton", "Marcomanni Tribe"
			}
		},
		Bosnia = {
			Name = "Bosnia",
			Tiles = {
				{525, 127}, {525, 128},
				{526, 127}, {526, 128}, {526, 129},
				{527, 127}, {527, 128}, {527, 129}, {527, 130},
				{528, 127}, {528, 128}, {528, 129}, {528, 130},
				{529, 127}, {529, 128}, {529, 129}, {529, 130}, {529, 131},
				{530, 127}, {530, 128}, {530, 129}, {530, 130}, {530, 131}, {530, 132},
				{531, 127}, {531, 128}, {531, 129}, {531, 130}, {531, 131}, {531, 132},
				{532, 127}, {532, 128}, {532, 129}, {532, 130}, {532, 131}, {532, 132}, {532, 133},
				{533, 128}, {533, 129}, {533, 130}, {533, 131}, {533, 132},
				{534, 128}, {534, 129}, {534, 130}, {534, 131},
				{535, 128}, {535, 130}, {535, 131}
			},
			SettlementName = "Sarajevo",
			SettlementLocation = {532, 131}, -- Sarajevo
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Brandenburg = {
			Name = "Brandenburg",
			CulturalNames = {
				teuton = "Brandenburg",
				SemnoneTribe = "Semnonia",
				SuebiTribe = "Semnonia"
			},
			Tiles = {
				{127, 27}, {128, 25}, {128, 26}, {128, 27}, {129, 25}, {129, 26}, {129, 27}, -- old map
				{518, 106},
			},
			SettlementName = "Berlin",
			CulturalSettlementNames = {
				teuton = "Berlin"
			},
			SettlementLocation = {518, 106}, -- Berlin
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Semnone Tribe",
				"teuton", "Suebi Tribe",
				"teuton", "Brandenburg"
			}
		},
		Bremen = {
			Name = "Bremen",
			CulturalNames = {
				teuton = "Bremen"
			},
			Tiles = {
				{504, 103}, {504, 104},
				{505, 103}, {505, 104},
				{506, 103}, {506, 104}, {506, 105}
			},
			SettlementName = "Bremen",
			CulturalSettlementNames = {
				teuton = "Bremen"
			},
			SettlementLocation = {504, 104}, -- Bremen
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Chauci Tribe",
				"teuton", "Bremen"
			},
			Coastal = true
		},
		Brittany = {
			Name = "Brittany",
			Tiles = {
				{117, 29}, {118, 29}, {118, 30}, -- old map
				{467, 118}, {467, 119},
				{468, 118}, {468, 119},
				{469, 117}, {469, 118}, {469, 119},
				{470, 117}, {470, 118}, {470, 119},
				{471, 117}, {471, 118}, {471, 119}, {471, 120},
				{472, 118}, {472, 119}, {472, 120},
				{473, 118}, {473, 119}, {473, 120}, {473, 121},
				{474, 118}, {474, 119}, {474, 120}, {474, 121},
				{475, 118}, {475, 119}, {475, 120}, {475, 121},
				{476, 118}, {476, 119}
			},
			CulturalNames = {
				celt = "Armorica",
				latin = "Armorica",
				France = "Brittany"
			},
			SettlementName = "Rennes",
--			SettlementLocation = {475, 121}, -- Nantes
			SettlementLocation = {475, 119}, -- Rennes
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Brunswick = {
			Name = "Brunswick",
			CulturalNames = {
				teuton = "Braunschweig"
			},
			Tiles = {
				{507, 108},
				{508, 108},
				{509, 107}, {509, 108},
				{510, 107}
			},
			SettlementName = "Brunswick",
			CulturalSettlementNames = {
				teuton = "Braunschweig"
			},
			SettlementLocation = {509, 107}, -- Brunswick
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Cherusci Tribe",
				"teuton", "Brunswick"
			}
		},
		Bukowina = {
			Name = "Bukowina",
			CulturalNames = {
				teuton = "Bukowina"
			},
			Tiles = {
				{551, 119}, {551, 120},
				{552, 118}, {552, 119}, {552, 120},
			},
			SettlementName = "Czernowitz",
			CulturalSettlementNames = {
				teuton = "Czernowitz"
			},
			SettlementLocation = {552, 119}, -- Czernowitz / Chernivtsi
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Bulgaria = {
			Name = "Bulgaria",
			Tiles = {
				{136, 33}, {137, 33}, {138, 33}, {139, 33}, -- old map
				{544, 131}, {544, 132}, {544, 134}, {544, 135},
				{545, 131}, {545, 132}, {545, 133}, {545, 134}, {545, 135}, {545, 136}, {545, 137}, {545, 138},
				{546, 131}, {546, 132}, {546, 133}, {546, 134}, {546, 135}, {546, 136}, {546, 137}, {546, 138},
				{547, 131}, {547, 132}, {547, 133}, {547, 134}, {547, 135}, {547, 136}, {547, 137}, {547, 138},
				{548, 132}, {548, 133}, {548, 134}, {548, 135}, {548, 136}, {548, 137},
				{549, 132}, {549, 133}, {549, 134}, {549, 135}, {549, 136}, {549, 137},
				{550, 132}, {550, 133}, {550, 134}, {550, 135}, {550, 136}, {550, 137}, {550, 138},
				{551, 132}, {551, 133}, {551, 134}, {551, 135}, {551, 136}, {551, 137}, {551, 138},
				{552, 132}, {552, 133}, {552, 134}, {552, 135}, {552, 136}, {552, 137}, {552, 138},
				{553, 132}, {553, 133}, {553, 134}, {553, 135}, {553, 136}, {553, 137}, {553, 138},
				{554, 131}, {554, 132}, {554, 133}, {554, 134}, {554, 135}, {554, 136}, {554, 137},
				{555, 131}, {555, 132}, {555, 133}, {555, 134}, {555, 135}, {555, 136}, {555, 137},
				{556, 131}, {556, 132}, {556, 133}, {556, 134}, {556, 135}, {556, 136},
				{557, 130}, {557, 131}, {557, 132}, {557, 133}, {557, 134}, {557, 135}, {557, 136},
				{558, 131}, {558, 132}, {558, 133}, {558, 134}, {558, 135}, {558, 136},
				{559, 131}, {559, 132}, {559, 136},
				{560, 132}
			},
			CulturalNames = {
				latin = "Lower Moesia" -- Lower Moesia encompassed most of Bulgaria, but left out large parts of its south, including Sofia, which were part of the Thrace province of Rome; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
			},
			SettlementName = "Sofia",
			CulturalSettlementNames = {
				latin = "Ulpia"
				-- Sardica
			},
			SettlementLocation = {546, 134}, -- Sofia
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"greek", "Thrace",
				"thracian", "Odrysae Tribe"
			}
		},
		Burgundy = {
			Name = "Burgundy",
			CulturalNames = {
				France = "Bourgogne"
			},
			Tiles = {
				{123, 31}, {123, 32}, {124, 30}, {124, 31}, {124, 32}, -- old map
				{491, 120}, {491, 121}, {491, 123},
				{492, 120}, {492, 121}, {492, 122}, {492, 123},
				{493, 120}, {493, 121}, {493, 122}, {493, 123},
				{494, 121}, {494, 122}, {494, 123}, {494, 124}, {494, 125},
				{495, 124}, {495, 125},
				{496, 124}, {496, 125}
			},
			SettlementName = "Dijon",
			SettlementLocation = {494, 121}, -- Dijon
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"celt", "Aedui Tribe"
--				"latin", "France"
			}
		},
		Calabria = {
			Name = "Calabria",
			CulturalNames = {
				latin = "Brutium" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 30-31.
			},
			Tiles = {
				{525, 142}, {525, 143}, {525, 146}, {525, 147},
				{526, 142}, {526, 143}, {526, 144}, {526, 145}, {526, 146},
				{527, 143}, {527, 144},
				{528, 144}
			},
			SettlementName = "Catanzaro",
			CulturalSettlementNames = {
				latin = "Castra Hannibalis"
			},
			SettlementLocation = {526, 145}, -- Catanzaro
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Carniola = {
			Name = "Carniola",
			CulturalNames = {
				teuton = "Krain"
			},
			Tiles = {
				{519, 124},
				{520, 124}, {520, 125},
				{521, 124}, {521, 125},
				{522, 124}, {522, 125},
				{523, 125}
			},
			SettlementName = "Laibach",
			CulturalSettlementNames = {
				latin = "Emona", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
				teuton = "Laibach" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
			},
			SettlementLocation = {521, 125}, -- Laibach/Ljubljana
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Castille = {
			Name = "Castille",
			CulturalNames = {
				latin = "Hispania Tarraconensis",
				Portugal = "Castille",
				Spain = "Castille"
			},
			Tiles = {
				{115, 34}, {115, 35}, {115, 36}, {116, 33}, {116, 34}, {116, 35}, {117, 33}, {117, 34}, {117, 35}, {118, 33}, {118, 34}, {118, 35}, {118, 36}, -- old map
				{459, 132}, {459, 143}, {459, 146},
				{460, 132}, {460, 133}, {460, 134}, {460, 136}, {460, 139}, {460, 140}, {460, 141}, {460, 142}, {460, 143}, {460, 144}, {460, 145}, {460, 146},
				{461, 132}, {461, 133}, {461, 134}, {461, 135}, {461, 136}, {461, 138}, {461, 139}, {461, 140}, {461, 141}, {461, 142}, {461, 143}, {461, 144}, {461, 145}, {461, 146},
				{462, 132}, {462, 133}, {462, 134}, {462, 135}, {462, 136}, {462, 137}, {462, 138}, {462, 139}, {462, 140}, {462, 141}, {462, 142}, {462, 143}, {462, 144}, {462, 145}, {462, 146},
				{463, 132}, {463, 133}, {463, 134}, {463, 135}, {463, 136}, {463, 137}, {463, 138}, {463, 139}, {463, 140}, {463, 141}, {463, 142}, {463, 143}, {463, 144}, {463, 145}, {463, 146},
				{464, 132}, {464, 133}, {464, 134}, {464, 135}, {464, 136}, {464, 137}, {464, 138}, {464, 139}, {464, 140}, {464, 141}, {464, 142}, {464, 143}, {464, 144}, {464, 145}, {464, 146},
				{465, 132}, {465, 133}, {465, 134}, {465, 135}, {465, 136}, {465, 137}, {465, 138}, {465, 139}, {465, 140}, {465, 141}, {465, 142}, {465, 143}, {465, 144},
				{466, 133}, {466, 134}, {466, 135}, {466, 136}, {466, 137}, {466, 138}, {466, 139}, {466, 140}, {466, 141}, {466, 142}, {466, 143}, {466, 144},
				{467, 133}, {467, 134}, {467, 135}, {467, 136}, {467, 137}, {467, 138}, {467, 139}, {467, 140}, {467, 141}, {467, 142}, {467, 143}, {467, 144}, {467, 145},
				{468, 132}, {468, 133}, {468, 134}, {468, 135}, {468, 136}, {468, 137}, {468, 138}, {468, 139}, {468, 140}, {468, 141}, {468, 142}, {468, 143}, {468, 144}, {468, 145},
				{469, 132}, {469, 133}, {469, 134}, {469, 135}, {469, 136}, {469, 137}, {469, 138}, {469, 139}, {469, 140}, {469, 141}, {469, 142}, {469, 143}, {469, 144}, {469, 145},
				{470, 133}, {470, 134}, {470, 135}, {470, 136}, {470, 137}, {470, 138}, {470, 139}, {470, 140}, {470, 141}, {470, 142}, {470, 143}, {470, 144}, {470, 145},
				{471, 133}, {471, 134}, {471, 135}, {471, 136}, {471, 137}, {471, 138}, {471, 139}, {471, 140}, {471, 141}, {471, 142}, {471, 143}, {471, 144}, {471, 145},
				{472, 133}, {472, 134}, {472, 135}, {472, 136}, {472, 137}, {472, 138}, {472, 139}, {472, 140}, {472, 141}, {472, 142}, {472, 143}, {472, 144}, {472, 145},
				{473, 133}, {473, 134}, {473, 135}, {473, 136}, {473, 137}, {473, 138}, {473, 139}, {473, 140}, {473, 141}, {473, 142}, {473, 143}, {473, 144}, {473, 145}, {473, 146},
				{474, 133}, {474, 134}, {474, 135}, {474, 136}, {474, 137}, {474, 138}, {474, 139}, {474, 140}, {474, 141}, {474, 142}, {474, 143}, {474, 144}, {474, 145}, {474, 146},
				{475, 133}, {475, 134}, {475, 135}, {475, 136}, {475, 139}, {475, 140}, {475, 142}, {475, 143}, {475, 144},
				{476, 134}, {476, 142}, {476, 143}, {476, 144},
				{477, 134}
			},
			SettlementName = "Complutum",
			CulturalSettlementNames = {
				latin = "Complutum" -- Toletum is also in the same region and more important in antiquity, but not in the same site as Madrid
			},
			SettlementLocation = {469, 141}, -- Madrid
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Corinth = {
			Name = "Corinth",
			Tiles = {
				{545, 147}, {545, 148}
			},
			CulturalNames = {
				greek = "Corinth"
			},
			SettlementName = "Corinth",
			CulturalSettlementNames = {
				greek = "Corinth"
			},
			SettlementLocation = {545, 148}, -- Corinth
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"greek", "Corinth"
			}
		},
		Corsica = {
			Name = "Corsica",
			CulturalNames = {
				latin = "Corsica"
			},
			Tiles = {
				{126, 34}, -- old map
				{505, 135}, {505, 136}, {505, 137},
				{506, 134}, {506, 135}, {506, 136}
			},
			SettlementName = "Aleria",
			CulturalSettlementNames = {
				latin = "Aleria"
			},
			SettlementLocation = {506, 136},
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Crete = {
			Name = "Crete",
			Tiles = {
				{137, 39}, {138, 39}, -- old map
				{547, 155},
				{548, 155},
				{549, 155},
				{550, 155}, {550, 156},
				{551, 155}, {551, 156},
				{552, 155}, {552, 156},
				{553, 156},
				{554, 156}
			},
			Owner = "Minoan Tribe", -- Minoans inhabited the island of Crete in 3000 BC; Source: Rodney Castleden, "Minoans", 2002, p. 4.
			CulturalNames = {
				greek = "Crete"
			},
			SettlementName = "Knossos",
			CulturalSettlementNames = {
				greek = "Knossos",
				latin = "Cnossus"
			},
			SettlementLocation = {551, 155}, -- Knossos
			SettlementBuildings = {
				unit_teuton_town_hall = true
			},
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"minoan", "Minoan Tribe",
				"minoan", "Crete",
				"greek", "Crete"
			}
		},
		Crimea = {
			Name = "Crimea",
			CulturalNames = {
				greek = "Tauric Chersonese"
			},
			Tiles = {
				{573, 126},
				{574, 126},
				{575, 126}, {575, 127},
				{576, 125}, {576, 126}, {576, 127}, {576, 128}, {576, 129},
				{577, 125}, {577, 126}, {577, 127}, {577, 128},
				{578, 125}, {578, 126}, {578, 127}, {578, 128},
				{579, 126}, {579, 127}, {579, 128},
				{580, 127},
				{581, 127},
				{582, 127},
				{583, 127}
			},
			SettlementName = "Simferopol",
			SettlementLocation = {576, 128}, -- Simferopol
			CulturalSettlementNames = {
				greek = "Heraclea Chersonesus" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
			},
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
--				"teuton", "Crimea"
			}
		},
		Croatia = {
			Name = "Croatia",
			CulturalNames = {
				Croatia = "Croatia",
				Muscovy = "Croatia",
				Poland = "Croatia",
				Russia = "Croatia"
			},
			Tiles = {
				{130, 31}, {131, 31}, {131, 32}, {132, 31}, {132, 32}, {133, 32}, {133, 33}, -- old map
				{521, 126},
				{522, 126}, {522, 127}, {522, 128},
				{523, 126}, {523, 127}, {523, 128}, {523, 129},
				{524, 125}, {524, 126}, {524, 127}, {524, 128}, {524, 129},
				{525, 124}, {525, 125}, {525, 126}, {525, 129},
				{526, 124}, {526, 125}, {526, 126},
				{527, 124}, {527, 125}, {527, 126},
				{528, 125}, {528, 126},
				{529, 125}, {529, 126},
				{530, 125}, {530, 126},
				{531, 126},
				{532, 126},
				{533, 126}, {533, 127}
			},
			SettlementName = "Zagreb",
			CulturalSettlementNames = {
				latin = "Celeta" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
			},
			SettlementLocation = {525, 125}, -- Zagreb
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Dalmatia = {
			Name = "Dalmatia",
			CulturalNames = {
				latin = "Illyricum",
				teuton = "Dalmatia"
			},
			Tiles = {
				{523, 130},
				{524, 130},
				{525, 130}, {525, 131},
				{526, 130}, {526, 131},
				{527, 131},
				{528, 131}, {528, 132},
				{529, 132}, {529, 133},
				{530, 133},
				{531, 133}, {531, 134},
				{532, 134}
			},
			SettlementName = "Zara",
			SettlementLocation = {523, 130}, -- Zara
			CulturalSettlementNames = {
				latin = "Iadera" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
			},
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"illyrian", "Illyrian Tribe"
			}
		},
		Dobruja = {
			Name = "Dobruja",
			CulturalNames = {
				latin = "Lesser Scythia"
			},
			Tiles = {
				{558, 130},
				{559, 128}, {559, 130},
				{560, 127}, {560, 128}, {560, 129}, {560, 130}, {560, 131},
				{561, 127}, {561, 128}, {561, 129},
				{562, 127}, {562, 128},
				{563, 127}, {563, 128}
			},
			SettlementName = "Constanța",
			CulturalSettlementNames = {
				latin = "Tomi", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
--				romanian = "Constanța"
			},
			SettlementLocation = {560, 130}, -- Constanta
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"greek", "Thrace",
				"thracian", "Getae Tribe"
			}
		},
		Don = {
			Name = "Don",
			CulturalNames = {
				greek = "Tanais",
				VanaTribe = "Vanaland"
			},
			Tiles = { {147, 30}, {148, 29}, {148, 30}, {149, 29}, {149, 30}, {150, 28}, {150, 29}, {150, 30} },
			Owner = "Vana Tribe",
			SettlementName = "Tanais",
			SettlementLocation = {148, 30}, -- Rostov-on-Don
			SettlementBuildings = {
				unit_germanic_town_hall = true,
				unit_germanic_barracks = true
			},
			CulturalSettlementNames = {
				greek = "Tanais"
			},
			Map = "maps/earth/tanais.smp",
			Units = {
				unit_germanic_warrior = 4
			},
			SettlementTerrain = "Plains",
			Claims = {
				"celt", "Vana Tribe"
			}
		},
		EastFriesland = { -- also includes Osnabrück
			Name = "East Friesland",
			CulturalNames = {
				teuton = "East Friesland"
			},
			Tiles = {
				{500, 103}, {500, 104}, {500, 105}, {500, 106},
				{501, 103}, {501, 104}, {501, 105}, {501, 106},
				{502, 106},
				{503, 106}, {503, 107}
			},
			SettlementName = "Emden",
			CulturalSettlementNames = {
				teuton = "Emden"
			},
			SettlementLocation = {500, 104}, -- Emden
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Frisian Tribe"
			},
			Coastal = true
		},
		England = {
			Name = "England",
			CulturalNames = {
				England = "England",
				SaxonTribe = "England",
				latin = "Britannia",
				teuton = "England"
			},
			Tiles = {
				{117, 26}, {117, 27}, {118, 25}, {118, 26}, {118, 27}, {119, 25}, {119, 26}, {119, 27}, {120, 26}, -- old map
				{464, 113},
				{465, 108}, {465, 112}, {465, 113},
				{466, 108}, {466, 112},
				{467, 105}, {467, 108}, {467, 111}, {467, 112},
				{468, 104}, {468, 105}, {468, 106}, {468, 107}, {468, 108}, {468, 110}, {468, 111}, {468, 112},
				{469, 104}, {469, 105}, {469, 106}, {469, 107}, {469, 108}, {469, 109}, {469, 110}, {469, 111}, {469, 112},
				{470, 100}, {470, 101}, {470, 104}, {470, 105}, {470, 106}, {470, 107}, {470, 108}, {470, 109}, {470, 110}, {470, 111},
				{471, 99}, {471, 100}, {471, 101}, {471, 103}, {471, 104}, {471, 105}, {471, 106}, {471, 107}, {471, 108}, {471, 109}, {471, 110}, {471, 111},
				{472, 99}, {472, 100}, {472, 101}, {472, 102}, {472, 103}, {472, 104}, {472, 105}, {472, 106}, {472, 107}, {472, 108}, {472, 109}, {472, 110}, {472, 111},
				{473, 99}, {473, 100}, {473, 101}, {473, 102}, {473, 103}, {473, 104}, {473, 105}, {473, 106}, {473, 107}, {473, 108}, {473, 109}, {473, 110}, {473, 111},
				{474, 98}, {474, 99}, {474, 100}, {474, 101}, {474, 102}, {474, 103}, {474, 104}, {474, 105}, {474, 106}, {474, 107}, {474, 108}, {474, 109}, {474, 110}, {474, 111},
				{475, 98}, {475, 99}, {475, 100}, {475, 101}, {475, 102}, {475, 103}, {475, 104}, {475, 105}, {475, 106}, {475, 107}, {475, 108}, {475, 109}, {475, 110}, {475, 111},
				{476, 100}, {476, 101}, {476, 102}, {476, 103}, {476, 104}, {476, 105}, {476, 106}, {476, 107}, {476, 108}, {476, 109}, {476, 110}, {476, 111},
				{477, 101}, {477, 102}, {477, 103}, {477, 104}, {477, 105}, {477, 106}, {477, 107}, {477, 108}, {477, 109}, {477, 110}, {477, 111},
				{478, 101}, {478, 102}, {478, 103}, {478, 104}, {478, 105}, {478, 106}, {478, 107}, {478, 108}, {478, 109}, {478, 110}, {478, 111},
				{479, 102}, {479, 103}, {479, 104}, {479, 105}, {479, 106}, {479, 107}, {479, 108}, {479, 109}, {479, 110},
				{480, 104}, {480, 105}, {480, 106}, {480, 107}, {480, 108}, {480, 109}, {480, 110}, {480, 111},
				{481, 105}, {481, 106}, {481, 107}, {481, 108}, {481, 109}, {481, 110},
				{482, 105}, {482, 106}, {482, 107}, {482, 108}, {482, 110},
				{483, 105}, {483, 106}, {483, 107}, {483, 110},
				{484, 106}, {484, 107}
			},
			SettlementName = "Londinium",
			CulturalSettlementNames = {
				celt = "Londinium",
				latin = "Londinium",
				teuton = "London"
			},
			SettlementLocation = {480, 109}, -- London
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"teuton", "England"
			}
		},
		Epirus = {
			Name = "Epirus",
			Tiles = {
				{537, 143},
				{538, 142}, {538, 143}, {538, 144},
				{539, 141}, {539, 142}, {539, 143}, {539, 144},
				{540, 142}, {540, 143}, {540, 144}
			},
			CulturalNames = {
				greek = "Epirus"
			},
			SettlementName = "Nicopolis",
			CulturalSettlementNames = {
				greek = "Nicopolis"
			},
			SettlementLocation = {538, 144}, -- Nicopolis
			Map = "maps/random_maps/random-map-forest.smp",
			Claims = {
				"greek", "Chaoni Tribe",
				"greek", "Epirus"
			},
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Euboea = { -- to make this island appear separated from Attica, it was necessary to "bump" it one tile to the north and one tile to the east into the sea
			Name = "Euboea",
			Tiles = {
				{547, 144},
				{548, 144}, {548, 145},
				{549, 145}
			},
			CulturalNames = {
				greek = "Euboea"
			},
			SettlementName = "Chalcis",
			CulturalSettlementNames = {
				greek = "Chalcis"
			},
			SettlementLocation = {548, 145}, -- Chalcis
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		FartherPomerania = {
			Name = "Farther Pomerania",
			CulturalNames = {
				teuton = "Hinterpommern"
			},
			Tiles = {
				{521, 104},
				{522, 102}, {522, 103}, {522, 104},
				{523, 102}, {523, 103}, {523, 104},
				{524, 102}, {524, 103},
				{525, 102}, {525, 103},
				{526, 101}, {526, 102}, {526, 103},
				{527, 101}, {527, 102}, {527, 103},
				{528, 101}, {528, 102},
				{529, 100}, {529, 101}, {529, 102},
				{530, 100}
			},
			SettlementName = "Kolberg",
			CulturalSettlementNames = {
				teuton = "Kolberg"
			},
			SettlementLocation = {523, 102}, -- Kolberg
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"goth", "Turcilingian Tribe"
			},
			Coastal = true
		},
		France = {
			Name = "France",
			CulturalNames = {
				France = "France",
				Francia = "Neustria", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 53-55.
				FrankTribe = "Neustria",
				celt = "Gallia Lugdunensis",
				latin = "Gallia Lugdunensis"
			},
			Tiles = {
				{119, 29}, {119, 30}, {120, 29}, {120, 30}, {121, 28}, {121, 29}, {121, 30}, {122, 29}, {122, 30}, {122, 31}, {123, 29}, {123, 30}, {124, 29}, {125, 29}, -- old map
				{474, 122},
				{475, 122}, {475, 123},
				{476, 120}, {476, 121}, {476, 122}, {476, 123},
				{477, 118}, {477, 119}, {477, 120}, {477, 121}, {477, 122}, {477, 123},
				{478, 118}, {478, 119}, {478, 120}, {478, 121}, {478, 122}, {478, 123},
				{479, 118}, {479, 119}, {479, 120}, {479, 121}, {479, 122}, {479, 123}, {479, 124},
				{480, 118}, {480, 119}, {480, 120}, {480, 121}, {480, 122}, {480, 123}, {480, 124},
				{481, 117}, {481, 118}, {481, 119}, {481, 120}, {481, 121}, {481, 122}, {481, 123}, {481, 124},
				{482, 117}, {482, 118}, {482, 119}, {482, 120}, {482, 121}, {482, 122}, {482, 123}, {482, 124},
				{483, 116}, {483, 117}, {483, 118}, {483, 119}, {483, 120}, {483, 121}, {483, 122}, {483, 123}, {483, 124},
				{484, 113}, {484, 114}, {484, 115}, {484, 116}, {484, 117}, {484, 118}, {484, 119}, {484, 120}, {484, 121}, {484, 122}, {484, 123}, {484, 124}, {484, 125},
				{485, 111}, {485, 112}, {485, 113}, {485, 114}, {485, 115}, {485, 116}, {485, 117}, {485, 118}, {485, 119}, {485, 120}, {485, 121}, {485, 122}, {485, 123}, {485, 124}, {485, 125},
				{486, 111}, {486, 112}, {486, 113}, {486, 114}, {486, 115}, {486, 116}, {486, 117}, {486, 118}, {486, 119}, {486, 120}, {486, 121}, {486, 122}, {486, 123}, {486, 124}, {486, 125},
				{487, 111}, {487, 112}, {487, 113}, {487, 114}, {487, 115}, {487, 116}, {487, 117}, {487, 118}, {487, 119}, {487, 120}, {487, 121}, {487, 122}, {487, 123},
				{488, 112}, {488, 113}, {488, 114}, {488, 115}, {488, 116}, {488, 117}, {488, 118}, {488, 119}, {488, 120}, {488, 121}, {488, 122}, {488, 123},
				{489, 112}, {489, 113}, {489, 114}, {489, 115}, {489, 116}, {489, 117}, {489, 118}, {489, 119}, {489, 120}, {489, 121}, {489, 122}, {489, 123}, {489, 124},
				{490, 113}, {490, 114}, {490, 115}, {490, 116}, {490, 117}, {490, 118}, {490, 119}, {490, 120}, {490, 121}, {490, 122}, {490, 123}, {490, 124},
				{491, 113}, {491, 114}, {491, 115}, {491, 116}, {491, 117}, {491, 118}, {491, 119}, {491, 122}, {491, 124}, {491, 125}, {491, 126},
				{492, 114}, {492, 115}, {492, 116}, {492, 117}, {492, 118}, {492, 119}, {492, 124}, {492, 125}, {492, 126},
				{493, 114}, {493, 115}, {493, 116}, {493, 117}, {493, 118}, {493, 119}, {493, 124}, {493, 125}, {493, 126},
				{494, 115}, {494, 116}, {494, 117}, {494, 118}, {494, 119}, {494, 120},
				{495, 119}, {495, 120},
			},
			SettlementName = "Lutetia",
			CulturalSettlementNames = {
				latin = "Lutetia"
			},
			SettlementLocation = {486, 117}, -- Paris
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
--				"latin", "France"
			}
		},
		FrancheComte = {
			Name = "Franche Comte",
			CulturalNames = {
				France = "Franche Comté",
				celt = "Maxima Sequanorum",
				latin = "Maxima Sequanorum" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
			},
			Tiles = {
				{495, 121}, {495, 122}, {495, 123},
				{496, 120}, {496, 121}, {496, 122}, {496, 123},
				{497, 120}, {497, 121}, {497, 122},
				{498, 120}, {498, 121}, {498, 122},
				{499, 120}, {499, 121}
			},
			SettlementName = "Besançon",
			CulturalSettlementNames = {
				France = "Besançon"
			},
			SettlementLocation = {497, 121}, -- Besançon
			Map = "maps/earth/belfort.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"celt", "Sequani Tribe"
--				"latin", "France"
			}
		},
		Franconia = {
			Name = "Franconia",
			CulturalNames = {
				teuton = "Franconia"
			},
			Tiles = {
				{506, 114}, {506, 115},
				{507, 113}, {507, 114},
				{508, 112}, {508, 113}, {508, 114}, {508, 115},
				{509, 113}, {509, 114}, {509, 115}, {509, 116},
				{510, 114}, {510, 115}, {510, 116},
				{511, 114}, {511, 115},
				{512, 113}, {512, 114}, {512, 115},
				{513, 113},
				{514, 113}
			},
			SettlementName = "Würzburg",
			CulturalSettlementNames = {
				teuton = "Würzburg"
			},
			SettlementLocation = {508, 114}, -- Würzburg
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"celt", "Turone Tribe",
				"teuton", "Thuringian Tribe"
			}
		},
		Friesland = {
			Name = "Friesland",
			CulturalNames = {
				FrisianTribe = "Frisia",
				teuton = "Friesland" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
			},
			Tiles = {
				{496, 104}, {496, 105},
				{497, 104}, {497, 105},
				{498, 104}, {498, 105},
				{499, 104}, {499, 105}
			},
			SettlementName = "Leeuwarden",
			CulturalSettlementNames = {
				teuton = "Leeuwarden" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
			},
			SettlementLocation = {496, 104}, -- Leeuwarden
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"teuton", "Frisian Tribe",
				"teuton", "Netherlands"
			}
		},
		Galicia = {
			Name = "Galicia",
			CulturalNames = {
				teuton = "Galicia"
			},
			Tiles = { {133, 28}, {134, 28}, {135, 28}, {136, 28}, {137, 28}, {137, 29}, {138, 28}, {138, 29} },
			SettlementName = "Lvov",
			CulturalSettlementNames = {
				teuton = "Lemberg"
			},
			SettlementLocation = {137, 28}, -- Lvov / Lemberg
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		GaliciaIberia = {
			Name = "Gallaecia",
			CulturalNames = {
				latin = "Gallaecia",
				Galicia = "Galicia",
				Portugal = "Galicia",
				Spain = "Galicia"
			},
			Tiles = {
				{114, 33}, {115, 33}, -- old map
				{454, 133}, {454, 134},
				{455, 133}, {455, 134}, {455, 135},
				{456, 132}, {456, 133}, {456, 134}, {456, 135},
				{457, 132}, {457, 133}, {457, 134}, {457, 135}, {457, 136},
				{458, 132}, {458, 133}, {458, 134}, {458, 135}, {458, 136},
				{459, 133}, {459, 134}, {459, 135}, {459, 136},
				{460, 135}
			},
			SettlementName = "Lucus Augusti",
			CulturalSettlementNames = {
				latin = "Lucus Augusti"
			},
			SettlementLocation = {456, 132}, -- Corunna
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Galicia"
			}
		},
		Gotaland = {
			Name = "Gotaland",
			CulturalNames = {
				GothTribe = "Gothland",
				goth = "Gothland"
			},
			Tiles = {
				{128, 21}, {128, 22}, {129, 21}, {129, 22}, {129, 23}, {130, 22}, {130, 23}, {131, 22}, {131, 23}, -- old map
				{512, 88}, {512, 89},
				{513, 89}, {513, 90}, {513, 91},
				{514, 87}, {514, 88}, {514, 89}, {514, 90}, {514, 91},
				{515, 88}, {515, 89}, {515, 90}, {515, 91},
				{516, 90}, {516, 91}, {516, 92},
				{517, 89}, {517, 90}, {517, 91}, {517, 92}, {517, 93},
				{518, 89}, {518, 90}, {518, 91}, {518, 92}, {518, 93}, {518, 94},
				{519, 89}, {519, 90}, {519, 91}, {519, 92}, {519, 93}, {519, 94},
				{520, 88}, {520, 89}, {520, 90}, {520, 91}, {520, 92}, {520, 93}, {520, 94},
				{521, 91}, {521, 92}, {521, 93}, {521, 94},
				{522, 89}, {522, 90}, {522, 91}, {522, 92}, {522, 93}, {522, 94},
				{523, 89}, {523, 90}, {523, 91}, {523, 92}, {523, 93}, {523, 94},
				{524, 88}, {524, 89}, {524, 90}, {524, 91}, {524, 92}, {524, 93}, {524, 94},
				{525, 88}, {525, 89}, {525, 90}, {525, 91}, {525, 92}, {525, 93}, {525, 94},
				{526, 89}, {526, 90}, {526, 91}, {526, 92}, {526, 93}, {526, 94},
				{527, 89}, {527, 90}
			},
			SettlementName = "Gothenburg",
			CulturalSettlementNames = {
				goth = "Gothenburg",
				norse = "Göteborg"
			},
			SettlementLocation = {513, 91}, -- Gothenburg
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"goth", "Goth Tribe"
			}
		},
		Gotland = {
			Name = "Gotland",
			Tiles = {
				{133, 23}, -- old map
				{532, 92}, {532, 93},
				{533, 91}, {533, 92}
			},
			SettlementLocation = {532, 92},
			SettlementName = "Wisby",
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"goth", "Goth Tribe"
			}
		},
		Hanover = {
			Name = "Hanover",
			CulturalNames = {
				teuton = "Hannover"
			},
			Tiles = {
				{504, 105}, {504, 106},
				{505, 105}, {505, 106},
				{506, 106},
				{507, 104}, {507, 105}, {507, 106}, {507, 107},
				{508, 104}, {508, 105}, {508, 106}, {508, 107},
				{509, 104}, {509, 105}, {509, 106},
				{510, 104}, {510, 105}, {510, 106},
				{511, 105}
			},
			SettlementName = "Hanover",
			CulturalSettlementNames = {
				teuton = "Hannover"
			},
			SettlementLocation = {507, 107}, -- Hanover
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Lombard Tribe"
			}
		},
		HighlandScotland = {
			Name = "Highland Scotland",
			CulturalNames = {
				latin = "Caledonia",
				England = "Highland Scotland",
				ScotTribe = "Highland Scotland",
				Scotland = "Highland Scotland",
				teuton = "Highland Scotland"
			},
			Tiles = {
				{116, 22}, {116, 23}, {117, 22}, {117, 23}, {117, 24}, {118, 23}, {118, 24}, -- old map
				{460, 90},
				{461, 90}, {461, 92},
				{462, 92}, {462, 95}, {462, 97},
				{463, 94}, {463, 95},
				{464, 91}, {464, 92}, {464, 93}, {464, 94}, {464, 95}, {464, 96}, {464, 97},
				{465, 90}, {465, 91}, {465, 92}, {465, 93}, {465, 94}, {465, 95}, {465, 96},
				{466, 89}, {466, 90}, {466, 91}, {466, 92}, {466, 93}, {466, 94}, {466, 95}, {466, 96},
				{467, 90}, {467, 91}, {467, 92}, {467, 93}, {467, 94}, {467, 95}, {467, 96},
				{468, 89}, {468, 90}, {468, 91}, {468, 92}, {468, 93}, {468, 94}, {468, 95}, {468, 96},
				{469, 89}, {469, 90}, {469, 92}, {469, 93}, {469, 94}, {469, 95}, {469, 96},
				{470, 89}, {470, 92}, {470, 93}, {470, 94}, {470, 95}, {470, 96}, 
				{471, 92}, {471, 93}, {471, 94}, {471, 95},
				{472, 92}, {472, 93}, {472, 94},
				{473, 92}, {473, 93},
				{474, 92},
				{476, 84}
			},
			SettlementName = "Aberdeen",
			SettlementLocation = {473, 93}, -- Aberdeen
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Hills",
			Coastal = true,
			Claims = {
				"celt", "Pict Tribe",
				"teuton", "Scotland" -- should be English
			}
		},
		HitherPomerania = {
			Name = "Hither Pomerania",
			CulturalNames = {
				teuton = "Vorpommern"
			},
			Tiles = {
				{515, 101},
				{516, 101}, {516, 102},
				{517, 102},
				{518, 102}, {518, 103},
				{519, 103},
				{520, 103}, {520, 104},
				{521, 103}
			},
			SettlementName = "Stettin",
			CulturalSettlementNames = {
				teuton = "Stettin"
			},
			SettlementLocation = {521, 103}, -- Stettin
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"goth", "Rugian Tribe"
			},
			Coastal = true
		},
		Holland = {
			Name = "Holland",
			CulturalNames = {
				latin = "Batavia",
				teuton = "Holland",
				BatavianTribe = "Batavia"
			},
			Tiles = {
				{123, 26}, {123, 27}, {124, 26}, {124, 27}, -- old map
				{490, 109},
				{491, 108}, {491, 109},
				{492, 107}, {492, 108}, {492, 109},
				{493, 106}, {493, 107}, {493, 108}, {493, 109},
				{494, 107}, {494, 108}, {494, 109},
				{495, 107}, {495, 108}, {495, 109},
				{496, 107}, {496, 108}, {496, 109}, {496, 110},
				{497, 106}, {497, 107}, {497, 109},
				{498, 106}, {498, 107},
				{499, 106}
			},
			SettlementName = "Amsterdam",
			CulturalSettlementNames = {
				teuton = "Amsterdam"
			},
			SettlementLocation = {493, 107}, -- Amsterdam
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"teuton", "Batavian Tribe",
				"teuton", "Frank Tribe",
				"teuton", "Netherlands"
			}
		},
		Holstein = {
			Name = "Holstein",
			CulturalNames = {
				teuton = "Holstein"
			},
			Tiles = {
				{505, 101}, {505, 102},
				{506, 101}, {506, 102},
				{507, 101}, {507, 102}, {507, 103},
				{508, 101}, {508, 102}, {508, 103},
				{509, 101}, {509, 102},
				{510, 101}
			},
			SettlementName = "Kiel",
			CulturalSettlementNames = {
				teuton = "Kiel"
			},
			SettlementLocation = {508, 101}, -- Kiel
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Saxon Tribe"
			},
			Coastal = true
		},
		Hungary = {
			Name = "Hungary",
			CulturalNames = {
				Hungary = "Hungary"
			},
			Tiles = {
				{132, 29}, {132, 30}, {133, 29}, {133, 30}, {133, 31}, {134, 29}, {134, 30}, {134, 31}, {135, 29}, {135, 30}, {135, 31}, {136, 29}, -- old map
				{534, 119}, {534, 124},
				{535, 119}, {535, 120}, {535, 121}, {535, 122}, {535, 123}, {535, 124},
				{536, 118}, {536, 119}, {536, 120}, {536, 121}, {536, 122}, {536, 123}, {536, 124},
				{537, 119}, {537, 120}, {537, 121}, {537, 122}, {537, 123}, {537, 124},
				{538, 118}, {538, 119}, {538, 120}, {538, 121}, {538, 122}, {538, 123}, {538, 124},
				{539, 117}, {539, 118}, {539, 119}, {539, 120}, {539, 121}, {539, 122}, {539, 123},
				{540, 117}, {540, 118}, {540, 119}, {540, 120}, {540, 121}, {540, 122},
				{541, 117}, {541, 118}, {541, 119}, {541, 120}, {541, 121},
				{542, 118}, {542, 119}, {542, 120},
				{543, 118}, {543, 119},
				{544, 119}
			},
			SettlementName = "Pest",
			SettlementLocation = {535, 120}, -- Pest
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Iceland = {
			Name = "Iceland",
			Tiles = { {103, 17}, {104, 17}, {104, 18}, {105, 17}, {105, 18}, {106, 17}, {106, 18}, {107, 17}, {107, 18}, {108, 17}, {109, 17} },
			SettlementName = "Reykjavik",
			SettlementLocation = {104, 18}, -- Reykjavik
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Ireland = {
			Name = "Ireland",
			CulturalNames = { -- cultural names can be assigned either per faction or per civilization
				latin = "Hibernia"
			},
			Tiles = {
				{113, 25}, {113, 26}, {114, 25}, {114, 26}, {115, 25}, {115, 26}, -- old map
				{451, 108},
				{452, 102}, {452, 103}, {452, 106}, {452, 107}, {452, 108},
				{453, 102}, {453, 103}, {453, 104}, {453, 105}, {453, 106}, {453, 107}, {453, 108}, {453, 109},
				{454, 102}, {454, 103}, {454, 104}, {454, 105}, {454, 106}, {454, 107}, {454, 108},
				{455, 102}, {455, 103}, {455, 104}, {455, 105}, {455, 106}, {455, 107}, {455, 108},
				{456, 99}, {456, 100}, {456, 101}, {456, 102}, {456, 103}, {456, 104}, {456, 105}, {456, 106}, {456, 107}, {456, 108},
				{457, 99}, {457, 100}, {457, 101}, {457, 102}, {457, 103}, {457, 104}, {457, 105}, {457, 106}, {457, 107},
				{458, 99}, {458, 100}, {458, 101}, {458, 102}, {458, 103}, {458, 104}, {458, 105}, {458, 106}, {458, 107},
				{459, 99}, {459, 100}, {459, 101}, {459, 102}, {459, 103}, {459, 104}, {459, 105}, {459, 106}, {459, 107},
				{460, 99}, {460, 100}, {460, 101}, {460, 102}, {460, 103}, {460, 104}, {460, 105}, {460, 106}, {460, 107},
				{461, 99}, {461, 100}, {461, 101}, {461, 102}, {461, 103}, {461, 104}, {461, 105}, {461, 106},
				{462, 99}, {462, 100}, {462, 101}, {462, 104}, {462, 105},
				{463, 100}, {463, 101}
			},
			SettlementName = "Eblana", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
			SettlementLocation = {462, 104}, -- Dublin
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"celt", "Scot Tribe"
			}
		},
		Istria = {
			Name = "Istria",
			CulturalNames = {
				latin = "Istria",
				teuton = "Küstenland"
			},
			Tiles = {
				{518, 124}, {518, 125},
				{519, 125}, {519, 126}, {519, 127},
				{520, 126}
			},
			SettlementName = "Trieste",
			CulturalSettlementNames = {
				latin = "Tergeste", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
				teuton = "Triest"
			},
			SettlementLocation = {519, 126}, -- Trieste
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Jutland = {
			Name = "Jutland",
			CulturalNames = {
				teuton = "Jutland",
				JuteTribe = "Jutland"
			},
			Tiles = {
				{126, 23}, {126, 24}, {126, 25}, {127, 25}, -- old map
				{503, 95}, {503, 96}, {503, 97},
				{504, 94}, {504, 95}, {504, 96}, {504, 97}, {504, 98},
				{505, 94}, {505, 95}, {505, 96}, {505, 97},
				{506, 93}, {506, 94}, {506, 95}, {506, 96}, {506, 97},
				{507, 93}, {507, 94}, {507, 95}, {507, 96},
				{508, 92}, {508, 93}, {508, 94}, {508, 95}, {508, 96},
				{509, 92}, {509, 93}, {509, 95},
				{510, 95}
			},
			SettlementName = "Aarhus",
			SettlementLocation = {508, 96}, -- Aarhus
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 4,
				unit_germanic_archer = 2
			},
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"norse", "Dane Tribe",
				"teuton", "Charude Tribe",
				"teuton", "Jute Tribe"
			}
		},
		Lacedaemonia = {
			Name = "Lacedaemonia",
			Tiles = {
				{541, 150},
				{542, 150},
				{543, 150}, {543, 151},
				{544, 150},
				{545, 150}, {545, 151}
			},
			CulturalNames = {
				greek = "Lacedaemonia"
			},
			SettlementName = "Sparta",
			CulturalSettlementNames = {
				greek = "Sparta"
			},
			SettlementLocation = {543, 150}, -- Sparta
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"greek", "Sparta"
			}
		},
		Latium = {
			Name = "Latium",
			Tiles = {
				{129, 33}, {129, 34}, -- old map
				{513, 134}, {513, 135},
				{514, 133}, {514, 134}, {514, 135}, {514, 136},
				{515, 135}, {515, 136}, {515, 137},
				{516, 136}, {516, 137},
				{517, 136}, {517, 137}, {517, 138}
			},
			SettlementName = "Rome",
			CulturalNames = {
				latin = "Latium"
			},
			CulturalSettlementNames = {
				latin = "Roma"
			},
			SettlementLocation = {515, 136}, -- Rome
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"latin", "Latin Tribe",
				"latin", "Rome"
			}
		},
		Lauenburg = {
			Name = "Lauenburg",
			CulturalNames = {
				teuton = "Lauenburg"
			},
			Tiles = {
				{509, 103},
				{510, 102}, {510, 103}
			},
			SettlementName = "Lübeck",
			CulturalSettlementNames = {
				teuton = "Lübeck"
			},
			SettlementLocation = {510, 102},
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
			}
		},
		Liguria = {
			Name = "Liguria",
			CulturalNames = {
				celt = "Liguria",
				latin = "Liguria"
			},
			Tiles = {
				{502, 130},
				{503, 129}, {503, 130},
				{504, 129},
				{505, 129},
				{506, 129},
				{507, 129}
			},
			SettlementName = "Genoa",
			SettlementLocation = {505, 129}, -- Genoa
			CulturalSettlementNames = {
				latin = "Genua"
			},
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"celt", "Ligurian Tribe"
			}
		},
		Lombardy = {
			Name = "Lombardy",
			CulturalNames = {
				celt = "Transpadane Gaul",
				latin = "Transpadane Gaul"
			},
			Tiles = {
				{125, 31}, {125, 32}, {126, 31}, {126, 32}, {127, 31}, {127, 32}, {128, 31}, {128, 32}, {128, 33}, {129, 31}, -- old map
				{505, 125}, {505, 126},
				{506, 124}, {506, 125}, {506, 126}, {506, 127},
				{507, 124}, {507, 125}, {507, 126}, {507, 127},
				{508, 124}, {508, 125}, {508, 126}, {508, 127},
				{509, 123}, {509, 124}, {509, 125}, {509, 126}, {509, 127}
			},
			SettlementName = "Milan",
			CulturalSettlementNames = {
				latin = "Mediolanum",
				teuton = "Mailand"
			},
			SettlementLocation = {506, 126}, -- Milan
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Lorraine = {
			Name = "Lorraine",
			CulturalNames = {
--				french = "Lorraine",
				teuton = "Lothringen"
			},
			Tiles = {
				{495, 116}, {495, 117}, {495, 118},
				{496, 117}, {496, 118}, {496, 119},
				{497, 118}, {497, 119},
				{498, 118}, {498, 119},
				{499, 118}, {499, 119}
			},
			SettlementName = "Nancy",
			CulturalSettlementNames = {
			},
			SettlementLocation = {496, 118}, -- Nancy
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
			}
		},
		LowerRhine = {
			Name = "Lower Rhine",
			CulturalNames = {
			},
			Tiles = {
				{497, 110}, {497, 111}, {497, 112}, {497, 113}, {497, 114},
				{498, 111}, {498, 112}, {498, 113}, {498, 114}, {498, 115}, {498, 116},
				{499, 112}, {499, 113}, {499, 114}, {499, 115}, {499, 116},
				{500, 112}, {500, 113}, {500, 114}, {500, 115}, {500, 116},
				{501, 113}, {501, 114},
				{502, 113}, {502, 114}
			},
			SettlementName = "Cologne",
			CulturalSettlementNames = {
--				french = "Cologne",
				latin = "Colonia Agrippina", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
				teuton = "Köln"
			},
			SettlementLocation = {498, 111}, -- Cologne
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
			}
		},
		LowlandScotland = {
			Name = "Lowland Scotland",
			CulturalNames = {
				latin = "Valentia", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
				England = "Lowland Scotland",
				ScotTribe = "Lowland Scotland",
				Scotland = "Lowland Scotland",
				teuton = "Lowland Scotland"
			},
			Tiles = {
				{466, 97}, {466, 98}, {466, 99},
				{467, 97}, {467, 98}, {467, 99},
				{468, 97}, {468, 98}, {468, 99},
				{469, 97}, {469, 98}, {469, 99},
				{470, 97}, {470, 98}, {470, 99},
				{471, 97}, {471, 98},
				{472, 97}, {472, 98},
				{473, 97}, {473, 98},
				{474, 97}
			},
			SettlementName = "Edinburgh",
			SettlementLocation = {470, 97}, -- Edinburgh
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Hills",
			Coastal = true,
			Claims = {
				"teuton", "Scotland" -- should be English
			}
		},
		Macedonia = {
			Name = "Macedonia",
			Tiles = {
				{134, 35}, {135, 34}, {135, 35}, {136, 34}, {137, 34}, -- old map
				{540, 140}, {540, 141},
				{541, 140}, {541, 141},
				{542, 140}, {542, 141},
				{543, 139}, {543, 140}, {543, 141},
				{544, 139}, {544, 140},
				{545, 139}, {545, 140},
				{546, 139}, {546, 140},
				{547, 139}, {547, 140},
				{548, 138}, {548, 139},
				{549, 138}, {549, 139}
			},
			CulturalNames = {
				greek = "Macedonia"
			},
			SettlementName = "Aegae",
			CulturalSettlementNames = {
				greek = "Aegae",
				latin = "Edessa"
			},
			SettlementLocation = {542, 140}, -- Aegae
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"greek", "Macedon",
				"thracian", "Edoni Tribe", -- inhabited the region between Stryinon and Nestus rivers
				"thracian", "Odomanti Tribe" -- inhabited the region between Stryinon and Nestus rivers
			}
		},
		Malta = {
			Name = "Malta",
			CulturalNames = {
				latin = "Melita" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
			},
			Tiles = {
				{521, 153}
			},
			SettlementName = "Valletta",
			SettlementLocation = {521, 153},
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
			}
		},
		Modena = {
			Name = "Modena",
			Tiles = {
				{508, 130},
				{509, 130},
				{510, 128}, {510, 129}, {510, 130},
				{511, 128}, {511, 129}
			},
			SettlementName = "Modena",
			SettlementLocation = {511, 129}, -- Modena
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Moldavia = {
			Name = "Moldavia",
			CulturalNames = {
				latin = "Northern Lower Dacia"
			},
			Tiles = {
				{139, 29}, {139, 30}, {139, 31}, {140, 30}, {140, 31}, -- old map
				{551, 121},
				{552, 121}, {552, 122},
				{553, 119}, {553, 120}, {553, 121}, {553, 122}, {553, 123}, {553, 124},
				{554, 119}, {554, 120}, {554, 121}, {554, 122}, {554, 123}, {554, 124}, {554, 125},
				{555, 120}, {555, 121}, {555, 122}, {555, 123}, {555, 124}, {555, 125},
				{556, 121}, {556, 122}, {556, 123}, {556, 124}, {556, 125},
				{557, 121}, {557, 122}, {557, 123}, {557, 124}, {557, 125},
				{558, 121}, {558, 122}, {558, 123}, {558, 124}, {558, 125}, {558, 126},
				{559, 122}, {559, 123}, {559, 124}, {559, 125}, {559, 126}
			},
			SettlementName = "Jassy",
			SettlementLocation = {557, 121}, -- Jassy/Iași
			CulturalSettlementNames = {
--				romanian = "Iași"
			},
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
--				"latin", "Moldavia"
			}
		},
		Montenegro = {
			Name = "Montenegro",
			Tiles = {
				{533, 133}, {533, 134}, {533, 135},
				{534, 132}, {534, 133}, {534, 134}, {534, 135}, {534, 136},
				{535, 133}, {535, 134}, {535, 135},
				{536, 134},
				{537, 134}
			},
			SettlementName = "Podgorica",
			CulturalSettlementNames = {
				latin = "Doclea" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
			},
			SettlementLocation = {534, 135}, -- Podgorica
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Mecklenburg = {
			Name = "Mecklenburg",
			CulturalNames = {
				teuton = "Mecklenburg"
			},
			Tiles = {
				{511, 102}, {511, 103}, {511, 104},
				{512, 102}, {512, 103}, {512, 104},
				{513, 102}, {513, 103},
				{514, 102}, {514, 103},
				{515, 102}, {515, 103},
				{516, 103},
				{517, 103}, {517, 104}
			},
			SettlementName = "Schwerin",
			CulturalSettlementNames = {
				teuton = "Schwerin"
			},
			SettlementLocation = {512, 103}, -- Schwerin
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Varini Tribe",
				"teuton", "Mecklenburg"
			},
			Coastal = true
		},
		Moselle = {
			Name = "Moselle",
			CulturalNames = {
			},
			Tiles = {
				{496, 116},
				{497, 116}, {497, 117},
				{498, 117},
				{499, 117}
			},
			SettlementName = "Metz",
			CulturalSettlementNames = {
			},
			SettlementLocation = {496, 116}, -- Metz
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
			}
		},
		Naples = {
			Name = "Naples",
			CulturalNames = {
				greek = "Magna Graecia",
				latin = "Campania" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 30-31.
			},
			Tiles = {
				{130, 34}, {131, 34}, {131, 35}, {131, 36}, {132, 35}, -- old map
				{518, 137}, {518, 138},
				{519, 137}, {519, 138},
				{520, 138}, {520, 139},
				{521, 138}, {521, 139},
				{522, 138}, {522, 139}, {522, 140},
				{523, 139}, {523, 140}, {523, 141},
				{524, 139}, {524, 140}, {524, 141},
				{525, 140}, {525, 141},
				{526, 140}, {526, 141},
				{527, 140}, {527, 141}
			},
			SettlementName = "Neapolis",
			CulturalSettlementNames = {
				greek = "Neapolis",
				latin = "Neapolis"
			},
			SettlementLocation = {520, 139}, -- Naples
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Normandy = {
			Name = "Normandy",
			Tiles = {
				{475, 115}, {476, 115}, {476, 116}, {476, 117},
				{477, 116}, {477, 117},
				{478, 116}, {478, 117},
				{479, 116}, {479, 117},
				{480, 115}, {480, 116}, {480, 117},
				{481, 114}, {481, 115}, {481, 116},
				{482, 114}, {482, 115}, {482, 116},
				{483, 114}, {483, 115}
			},
			CulturalNames = {
				France = "Normandy",
				norse = "Normandy"
			},
			SettlementName = "Rouen",
			SettlementLocation = {482, 115}, -- Rouen
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Oldenburg = {
			Name = "Oldenburg",
			CulturalNames = {
				teuton = "Oldenburg"
			},
			Tiles = {
				{502, 103}, {502, 104}, {502, 105},
				{503, 104}, {503, 105}
			},
			SettlementName = "Oldenburg",
			CulturalSettlementNames = {
				teuton = "Oldenburg"
			},
			SettlementLocation = {503, 104}, -- Oldenburg
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
			},
			Coastal = true
		},
		Palatinate = {
			Name = "Palatinate",
			CulturalNames = {
				teuton = "Pfalz"
			},
			Tiles = {
				{501, 115}, {501, 116},
				{502, 115}, {502, 116},
				{503, 114}, {503, 115}, {503, 116}
			},
			SettlementName = "Kaiserslautern",
			CulturalSettlementNames = {
				latin = "Borbetomagus", -- not actually the same city as Kaiserslautern (Borbetomagus is Worms), but nevertheless in the Palatinate; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
				teuton = "Kaiserslautern"
			},
			SettlementLocation = {502, 115}, -- Kaiserslautern
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
			}
		},
		Palermo = {
			Name = "Palermo",
			CulturalNames = {
				greek = "Panormus",
				latin = "Panormus"
			},
			Tiles = {
				{129, 37}, -- old map
				{516, 148},
				{517, 147}, {517, 148},
				{518, 148}, {518, 149},
				{519, 148}, {519, 149}
			},
			SettlementName = "Panormus", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 12.
			CulturalSettlementNames = {
				greek = "Panormus",
				latin = "Panormus"
			},
			SettlementLocation = {517, 147}, -- Palermo
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true, -- this variable is calculated automatically, but we place it here anyway for the random map generation (this will mean that this province is generated near a water body)
			Claims = {
				"latin", "Elymian Tribe",
				"latin", "Sicanian Tribe"
--				"latin", "Sicily"
			}
		},
		Pannonia = {
			Name = "Pannonia",
			CulturalNames = {
				latin = "Pannonia"
			},
			Tiles = {
				{526, 121}, {526, 122}, {526, 123},
				{527, 119}, {527, 120}, {527, 121}, {527, 122}, {527, 123},
				{528, 119}, {528, 120}, {528, 121}, {528, 122}, {528, 123}, {528, 124},
				{529, 120}, {529, 121}, {529, 122}, {529, 123}, {529, 124},
				{530, 120}, {530, 121}, {530, 122}, {530, 123}, {530, 124},
				{531, 120}, {531, 121}, {531, 122}, {531, 123}, {531, 124}, {531, 125},
				{532, 120}, {532, 121}, {532, 122}, {532, 123}, {532, 124}, {532, 125},
				{533, 120}, {533, 121}, {533, 122}, {533, 123}, {533, 124}, {533, 125},
				{534, 120}, {534, 121}, {534, 122}, {534, 123}
			},
			SettlementName = "Buda",
			CulturalSettlementNames = {
				latin = "Aquincum"
			},
			SettlementLocation = {534, 120}, -- Buda
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Parma = {
			Name = "Parma",
			CulturalNames = {
				latin = "Aemilia"
			},
			Tiles = {
				{507, 128},
				{508, 128}, {508, 129},
				{509, 128}, {509, 129}
			},
			SettlementName = "Parma",
			CulturalSettlementNames = {
				latin = "Parma"
--				latin = "Placentia" -- Piacenza
			},
			SettlementLocation = {509, 128}, -- Parma
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Piedmont = {
			Name = "Piedmont",
			Tiles = {
				{500, 125}, {500, 128}, {500, 129},
				{501, 125}, {501, 126}, {501, 127}, {501, 128}, {501, 129},
				{502, 125}, {502, 126}, {502, 127}, {502, 128}, {502, 129},
				{503, 124}, {503, 125}, {503, 126}, {503, 127}, {503, 128},
				{504, 125}, {504, 126}, {504, 127}, {504, 128},
				{505, 127}, {505, 128},
				{506, 128}
			},
			SettlementName = "Turin",
			CulturalSettlementNames = {
				latin = "Augusta Taurinorum"
			},
			SettlementLocation = {502, 127}, -- Turin
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Poland = {
			Name = "Poland",
			Tiles = { {133, 26}, {133, 27}, {134, 26}, {134, 27}, {135, 26}, {135, 27} },
	--		SettlementName = "Warsaw",
			SettlementLocation = {134, 26}, -- Warsaw
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Portugal = {
			Name = "Portugal",
			CulturalNames = {
				latin = "Lusitania",
				Portugal = "Portugal",
				Spain = "Portugal"
			},
			Tiles = {
				{114, 34}, {114, 35}, {114, 36}, {114, 37}, -- old map
				{453, 144}, {453, 145},
				{454, 143}, {454, 144}, {454, 145}, {454, 146},
				{455, 136}, {455, 137}, {455, 138}, {455, 139}, {455, 140}, {455, 141}, {455, 142}, {455, 143}, {455, 144}, {455, 145}, {455, 146}, {455, 147}, {455, 148}, {455, 149}, {455, 150},
				{456, 136}, {456, 137}, {456, 138}, {456, 139}, {456, 140}, {456, 141}, {456, 142}, {456, 143}, {456, 144}, {456, 145}, {456, 146}, {456, 147}, {456, 148}, {456, 149}, {456, 150},
				{457, 137}, {457, 138}, {457, 139}, {457, 140}, {457, 141}, {457, 142}, {457, 143}, {457, 144}, {457, 145}, {457, 146}, {457, 147}, {457, 148}, {457, 149}, {457, 150},
				{458, 137}, {458, 138}, {458, 139}, {458, 140}, {458, 141}, {458, 142}, {458, 143}, {458, 144}, {458, 145}, {458, 146}, {458, 147}, {458, 148}, {458, 149},
				{459, 137}, {459, 138}, {459, 139}, {459, 140}, {459, 141}, {459, 142}, {459, 144}, {459, 145}, {459, 147},
				{460, 137}, {460, 138},
				{461, 137}
			},
			SettlementName = "Lisbon",
			CulturalSettlementNames = {
				latin = "Olisipo"
			},
			SettlementLocation = {454, 145}, -- Lisbon
			Map = "maps/earth/braga.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Provence = {
			Name = "Provence",
			CulturalNames = {
				celt = "Gallia Narbonensis",
				latin = "Gallia Narbonensis",
				France = "Provence"
			},
			Tiles = {
				{493, 132},
				{494, 126}, {494, 127}, {494, 128}, {494, 129}, {494, 130}, {494, 131}, {494, 132},
				{495, 126}, {495, 127}, {495, 128}, {495, 129}, {495, 130}, {495, 131}, {495, 132},
				{496, 127}, {496, 128}, {496, 129}, {496, 130}, {496, 131}, {496, 132},
				{497, 127}, {497, 128}, {497, 129}, {497, 130}, {497, 131}, {497, 132},
				{498, 128}, {498, 129}, {498, 130}, {498, 131}, {498, 132},
				{499, 128}, {499, 129}, {499, 130}, {499, 131},
				{500, 130}, {500, 131},
				{501, 130}
			},
			SettlementName = "Marseilles",
			CulturalSettlementNames = {
				latin = "Massilia",
				France = "Marseilles"
			},
			SettlementLocation = {495, 132}, -- Marseilles
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
--				"latin", "France"
			}
		},
		Prussia = {
			Name = "Prussia",
			CulturalNames = {
				goth = "Gothiscandza",
				teuton = "Prussia"
			},
			Tiles = {
				{130, 26}, {131, 25}, {131, 26}, {132, 25}, {132, 26}, {133, 25}, {134, 25}, {135, 25}, -- old map
				{535, 101}
			},
			SettlementName = "Königsberg",
			CulturalSettlementNames = {
				teuton = "Königsberg"
			},
			SettlementLocation = {134, 25}, -- Königsberg
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"teuton", "Prussia"
			}
		},
		Rhineland = {
			Name = "Rhineland",
			CulturalNames = {
				teuton = "Rhineland",
				DaneTribe = "Saxland",
				SaxonTribe = "Saxland",
				SwedeTribe = "Saxland"
			},
			Tiles = {
				{125, 26}, {125, 27}, {125, 28}, {126, 26}, {126, 27}, {126, 28}, {127, 26}, -- old map
				{497, 108},
				{498, 108}, {498, 109}, {498, 110},
				{499, 107}, {499, 108}, {499, 109}, {499, 110},
				{500, 107}, {500, 108}, {500, 109}, {500, 110},
				{501, 107}, {501, 108}, {501, 109}, {501, 110},
				{502, 107}, {502, 108}, {502, 109}, {502, 110}
			},
			SettlementName = "Düsseldorf",
			CulturalSettlementNames = {
				teuton = "Düsseldorf"
			},
			SettlementLocation = {500, 109}, -- Düsseldorf
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Westphalia"
			}
		},
		Rhodes = {
			Name = "Rhodes",
			Tiles = {
				{559, 152}, {559, 153}
			},
			CulturalNames = {
				greek = "Rhodes"
			},
			SettlementName = "Ialysus",
			CulturalSettlementNames = {
				greek = "Ialysus"
			},
			SettlementLocation = {559, 152}, -- Ialysus
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Rhodope = {
			Name = "Rhodope",
			Tiles = {
				{550, 139},
				{551, 139},
				{552, 139},
				{553, 139},
				{554, 138}, {554, 139}
			},
			CulturalNames = {
				greek = "Rodópi"
			},
			SettlementName = "Komotini",
			CulturalSettlementNames = {
				greek = "Komotiní"
			},
			SettlementLocation = {552, 139}, -- Komotini
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"greek", "Thrace"
			}
		},
		Romagna = {
			Name = "Romagna",
			CulturalNames = {
				celt = "Cispadane Gaul",
				latin = "Cispadane Gaul"
			},
			Tiles = {
				{512, 128}, {512, 129},
				{513, 128}, {513, 129},
				{514, 128}, {514, 129}, {514, 130},
				{515, 130}
			},
			SettlementName = "Bologna",
			SettlementLocation = {512, 129}, -- Bologna
			CulturalSettlementNames = {
				latin = "Bononia"
			},
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Russia = {
			Name = "Russia",
			CulturalNames = {
				goth = "Gardarike",
				norse = "Gardarike",
				Muscovy = "Russia",
				Russia = "Russia"
			},
			Tiles = { {140, 22}, {140, 23}, {140, 24}, {140, 25}, {140, 26}, {141, 21}, {141, 22}, {141, 23}, {141, 24}, {141, 25}, {141, 26}, {142, 21}, {142, 22}, {142, 23}, {142, 24}, {142, 25}, {142, 26}, {143, 21}, {143, 22}, {143, 23}, {143, 24}, {143, 25}, {143, 26}, {144, 21}, {144, 22}, {144, 23}, {144, 24}, {144, 25}, {144, 26}, {145, 18}, {145, 19}, {145, 20}, {145, 21}, {145, 22}, {145, 23}, {145, 24}, {145, 25}, {145, 26}, {145, 27}, {146, 18}, {146, 19}, {146, 20}, {146, 21}, {146, 22}, {146, 23}, {146, 24}, {146, 25}, {146, 26}, {146, 27}, {147, 18}, {147, 19}, {147, 20}, {147, 21}, {147, 22}, {147, 23}, {147, 24}, {147, 25}, {147, 26}, {147, 27}, {148, 20}, {148, 21}, {148, 22}, {148, 23}, {148, 24}, {148, 25}, {148, 26}, {148, 27}, {148, 28}, {149, 23}, {149, 24}, {149, 25}, {149, 26}, {149, 27}, {149, 28}, {150, 23}, {150, 24}, {150, 25}, {150, 26}, {150, 27}, {151, 24}, {151, 25}, {151, 26}, {151, 27}, {151, 28}, {151, 29}, {152, 24}, {152, 25}, {152, 26}, {152, 27}, {153, 24}, {153, 25}, {153, 26}, {154, 24}, {154, 25} },
	--		SettlementName = "Moscow",
			SettlementLocation = {146, 23}, -- Moscow
			Map = "maps/earth/novgorod.smp",
			Units = {
				unit_germanic_warrior = 10 -- a few soldiers to stop the Vana Tribe from expanding here
			},
			SettlementTerrain = "Plains"
		},
		Sardinia = {
			Name = "Sardinia",
			CulturalNames = {
				latin = "Sardinia"
			},
			Tiles = {
				{126, 36}, -- old map
				{504, 140}, {504, 141}, {504, 142}, {504, 143}, {504, 144},
				{505, 139}, {505, 140}, {505, 141}, {505, 142}, {505, 143}, {505, 144},
				{506, 139}, {506, 140}, {506, 141}, {506, 142}, {506, 143},
				{507, 140}
			},
			SettlementName = "Caralis",
			CulturalSettlementNames = {
				latin = "Caralis"
			},
			SettlementLocation = {505, 144}, -- Cagliari
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Savoy = {
			Name = "Savoy",
			CulturalNames = {
				latin = "Pennine Alps"
			},
			Tiles = {
				{496, 126},
				{497, 125}, {497, 126},
				{498, 124}, {498, 125}, {498, 126}, {498, 127},
				{499, 124}, {499, 125}, {499, 126}, {499, 127},
				{500, 126}, {500, 127}
			},
			SettlementName = "Chambéry",
			CulturalSettlementNames = {
				France = "Chambéry"
			},
			SettlementLocation = {496, 126}, -- Chambéry
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
--				"latin", "France",
--				"latin", "Savoy"
			}
		},
		Scania = {
			Name = "Scania",
			CulturalNames = {
				GylfingTribe = "Gylveland"
			},
			Tiles = {
				{514, 92},
				{515, 92}, {515, 93},
				{516, 93}, {516, 94},
				{517, 94}, {517, 95}, {517, 96}, {517, 97},
				{518, 95}, {518, 96}, {518, 97},
				{519, 95}, {519, 96}, {519, 97},
				{520, 95}, {520, 96},
				{521, 95}, {521, 96},
				{522, 95},
				{523, 95},
				{524, 95},
				{525, 95}
			},
			SettlementName = "Malmö",
			SettlementLocation = {517, 97}, -- Malmö
			Map = "maps/earth/malmo.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"basque", "Ertebolle Tribe",
				"basque", "Gylfing Tribe",
				"teuton", "Dane Tribe"
			}
		},
		Schleswig = {
			Name = "Schleswig",
			CulturalNames = {
				teuton = "Schleswig"
			},
			Tiles = {
				{505, 98}, {505, 99}, {505, 100},
				{506, 98}, {506, 99}, {506, 100},
				{507, 100}
			},
			SettlementName = "Flensburg",
			CulturalSettlementNames = {
				teuton = "Flensburg"
			},
			SettlementLocation = {506, 100}, -- Flensburg
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Angle Tribe",
				"teuton", "Avione Tribe"
			},
			Coastal = true
		},
		Serbia = {
			Name = "Serbia",
			Tiles = {
				{134, 32}, {135, 32}, {135, 33}, -- old map
				{535, 129}, {535, 132},
				{536, 128}, {536, 129}, {536, 130}, {536, 131}, {536, 132}, {536, 133},
				{537, 129}, {537, 130}, {537, 131}, {537, 132}, {537, 133},
				{538, 129}, {538, 130}, {538, 131}, {538, 132}, {538, 133}, {538, 134}, {538, 135},
				{539, 129}, {539, 130}, {539, 131}, {539, 132}, {539, 133}, {539, 134}, {539, 135},
				{540, 129}, {540, 130}, {540, 131}, {540, 132}, {540, 133}, {540, 134}, {540, 135},
				{541, 129}, {541, 130}, {541, 131}, {541, 132}, {541, 133}, {541, 134}, {541, 135},
				{542, 129}, {542, 130}, {542, 131}, {542, 132}, {542, 133}, {542, 134}, {542, 135},
				{543, 129}, {543, 130}, {543, 131}, {543, 132}, {543, 133}, {543, 134}, {543, 135},
				{544, 133}
			},
			CulturalNames = {
				latin = "Upper Moesia"
			},
			SettlementName = "Belgrade",
			CulturalSettlementNames = {
				latin = "Singidunum" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
			},
			SettlementLocation = {538, 129}, -- Belgrade
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"thracian", "Triballi Tribe"
			}
		},
		Silesia = {
			Name = "Silesia",
			CulturalNames = {
				teuton = "Silesia"
			},
			Tiles = { {130, 27}, {131, 27}, {132, 27}, {132, 28} },
			SettlementName = "Breslau",
			CulturalSettlementNames = {
				teuton = "Breslau"
			},
			SettlementLocation = {132, 27}, -- Breslau
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Skopje = {
			Name = "Skopje",
			CulturalNames = {
				latin = "Scupi"
			},
			Tiles = {
				{538, 137}, {538, 138},
				{539, 136}, {539, 137}, {539, 138}, {539, 139},
				{540, 136}, {540, 137}, {540, 138}, {540, 139},
				{541, 136}, {541, 137}, {541, 138}, {541, 139},
				{542, 136}, {542, 137}, {542, 138}, {542, 139},
				{543, 136}, {543, 137}, {543, 138},
				{544, 136}, {544, 137}, {544, 138}
			},
			SettlementName = "Skopje",
			CulturalSettlementNames = {
				latin = "Scupi" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
			},
			SettlementLocation = {540, 136}, -- Skopje
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"phrygian", "Bryges Tribe"
			}
		},
		Sweden = {
			Name = "Sweden",
			Tiles = {
				{129, 20}, {130, 20}, {130, 21}, {131, 21}, {132, 21}, -- old map
				{514, 85}, {514, 86},
				{515, 85}, {515, 86}, {515, 87},
				{516, 82}, {516, 83}, {516, 84}, {516, 85}, {516, 86}, {516, 87},
				{517, 83}, {517, 84}, {517, 85}, {517, 86}, {517, 87},
				{518, 84}, {518, 85}, {518, 86},
				{519, 84}, {519, 85}, {519, 86},
				{520, 85}, {520, 86}, {520, 87},
				{521, 85}, {521, 86}, {521, 87}, {521, 88},
				{522, 85}, {522, 86}, {522, 87}, {522, 88},
				{523, 85}, {523, 86}, {523, 87}, {523, 88},
				{524, 86}, {524, 87},
				{525, 85}, {525, 86}, {525, 87},
				{526, 85}, {526, 86}, {526, 87}, {526, 88},
				{527, 85}, {527, 86}, {527, 87}, {527, 88},
				{528, 85}, {528, 86}, {528, 87}, {528, 88},
				{529, 83}, {529, 84}, {529, 85}, {529, 86}, {529, 87}, {529, 88},
				{530, 84}, {530, 85}, {530, 86}, {530, 87},
				{531, 84}, {531, 85}, {531, 86}, {531, 87},
				{532, 85}, {532, 86},
				{533, 85}
			},
			SettlementName = "Sigtun",
			CulturalSettlementNames = {
				norse = "Sigtun"
			},
			SettlementLocation = {531, 87}, -- Stockholm / Sigtun
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 10 -- soldiers to stop the Gylfing Tribe from expanding here
			},
			SettlementTerrain = "Plains",
			Claims = {
				"norse", "Swede Tribe"
			}
		},
		Switzerland = {
			Name = "Switzerland",
			CulturalNames = {
				celt = "Helvetia",
				latin = "Helvetia",
				teuton = "Switzerland"
			},
			Tiles = {
				{125, 30}, {126, 30}, -- old map
				{497, 123}, {497, 124},
				{498, 122}, {498, 123},
				{499, 122}, {499, 123},
				{500, 121}, {500, 122}, {500, 123}, {500, 124},
				{501, 121}, {501, 122}, {501, 123}, {501, 124},
				{502, 121}, {502, 122}, {502, 123}, {502, 124},
				{503, 121}, {503, 122}, {503, 123},
				{504, 121}, {504, 122}, {504, 123}, {504, 124},
				{505, 120}, {505, 121}, {505, 122}, {505, 123}, {505, 124},
				{506, 120}, {506, 121}, {506, 122}, {506, 123},
				{507, 122}, {507, 123},
				{508, 122}, {508, 123},
				{509, 122}
			},
			SettlementName = "Bern",
			SettlementLocation = {501, 122}, -- Bern
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Mountains",
			Claims = {
				"celt", "Helvetii Tribe",
				"teuton", "Switzerland"
			}
		},
		Syracuse = {
			Name = "Syracuse",
			CulturalNames = {
				greek = "Syracusae",
				latin = "Syracusae"
			},
			Tiles = {
				{520, 148}, {520, 149}, {520, 150},
				{521, 148}, {521, 149}, {521, 150},
				{522, 147}, {522, 148}, {522, 149}, {522, 150}, {522, 151},
				{523, 147}
			},
			SettlementName = "Syracuse",
			CulturalSettlementNames = {
				greek = "Syracusae",
				latin = "Syracusae"
			},
			SettlementLocation = {522, 150}, -- Syracuse
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"latin", "Sicel Tribe"
--				"latin", "Sicily"
			}
		},
		Thessaly = {
			Name = "Thessaly",
			Tiles = {
				{541, 142}, {541, 143}, {541, 144},
				{542, 142}, {542, 143}, {542, 144},
				{543, 142}, {543, 143}, {543, 144},
				{544, 142}, {544, 143}, {544, 144}
			},
			CulturalNames = {
				greek = "Thessaly"
			},
			SettlementName = "Larissa",
			CulturalSettlementNames = {
				greek = "Larissa"
			},
			SettlementLocation = {543, 143}, -- Larissa
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true
		},
		Thrace = {
			Name = "Thrace",
			Tiles = {
				{138, 34}, {139, 34}, -- old map
				{555, 138}, {555, 139},
				{556, 137}, {556, 138}, {556, 139},
				{557, 137}, {557, 138}, {557, 139},
				{558, 137}, {558, 138},
				{559, 137}, {559, 138},
				{560, 138},
				{561, 138}
			},
			SettlementName = "Byzantium",
			CulturalSettlementNames = {
				greek = "Byzantium",
				latin = "Constantinople"
			},
			SettlementLocation = {561, 138}, -- Constantinople
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"thracian", "Apsinthii Tribe",
				"greek", "Thrace"
			}
		},
		Transylvania = {
			Name = "Transylvania",
			CulturalNames = {
				latin = "Upper Dacia",
				teuton = "Siebenbürgen"
			},
			Tiles = {
				{136, 30}, {136, 31}, {137, 30}, {137, 31}, {138, 30}, {138, 31}, -- old map
				{538, 125},
				{539, 124}, {539, 125}, {539, 126},
				{540, 123}, {540, 124}, {540, 125}, {540, 126}, {540, 127},
				{541, 122}, {541, 123}, {541, 124}, {541, 125}, {541, 126}, {541, 127}, {541, 128},
				{542, 121}, {542, 122}, {542, 123}, {542, 124}, {542, 125}, {542, 126}, {542, 127}, {542, 128},
				{543, 120}, {543, 121}, {543, 122}, {543, 123}, {543, 124}, {543, 125}, {543, 126}, {543, 127}, {543, 128},
				{544, 120}, {544, 121}, {544, 122}, {544, 123}, {544, 124}, {544, 125}, {544, 126},
				{545, 119}, {545, 120}, {545, 121}, {545, 122}, {545, 123}, {545, 124}, {545, 125}, {545, 126},
				{546, 119}, {546, 120}, {546, 121}, {546, 122}, {546, 123}, {546, 124}, {546, 125}, {546, 126},
				{547, 119}, {547, 120}, {547, 121}, {547, 122}, {547, 123}, {547, 124}, {547, 125},
				{548, 119}, {548, 120}, {548, 121}, {548, 122}, {548, 123}, {548, 124}, {548, 125},
				{549, 119}, {549, 120}, {549, 121}, {549, 122}, {549, 123}, {549, 124}, {549, 125},
				{550, 120}, {550, 121}, {550, 122}, {550, 123}, {550, 124}, {550, 125},
				{551, 122}, {551, 123}, {551, 124}, {551, 125},
				{552, 123}, {552, 124}, {552, 125}, {552, 126},
				{553, 125}
			},
			SettlementName = "Cluj",
			SettlementLocation = {545, 122}, -- Cluj/Klausenburg
			CulturalSettlementNames = {
--				romanian = "Cluj",
				teuton = "Klausenburg"
			},
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
--				"latin", "Transylvania"
			}
		},
		Tuscany = {
			Name = "Tuscany",
			CulturalNames = {
				latin = "Etruria",
				etruscan = "Etruria"
			},
			Tiles = {
				{509, 131},
				{510, 131}, {510, 132}, {510, 133},
				{511, 130}, {511, 131}, {511, 132}, {511, 133}, {511, 134},
				{512, 130}, {512, 131}, {512, 132}, {512, 133}, {512, 134},
				{513, 130}, {513, 131}, {513, 132}, {513, 133},
				{514, 131}, {514, 132}
			},
			SettlementName = "Florence",
			CulturalSettlementNames = {
				latin = "Florentia"
			},
			SettlementLocation = {512, 131}, -- Florence
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"etruscan", "Etruscan Tribe",
				"etruscan", "Etruria"
			}
		},
		Ukraine = {
			Name = "Ukraine",
			CulturalNames = {
				goth = "Danparstathir", -- name used in the Hervararsaga for a field of battle between the Goths and Huns, possibly the region of the Dnieper; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 484.
				norse = "Danparstathir",
				Muscovy = "Ukraine",
				Poland = "Ukraine",
				Russia = "Ukraine"
			},
			Tiles = {
				{139, 28}, {140, 27}, {140, 28}, {140, 29}, {141, 27}, {141, 28}, {141, 29}, {141, 30}, {142, 27}, {142, 28}, {142, 29}, {142, 30}, {143, 27}, {143, 28}, {143, 29}, {143, 30}, {144, 27}, {144, 28}, {144, 29}, {144, 30}, {144, 31}, {145, 28}, {145, 29}, {145, 30}, {146, 28}, {146, 29}, {146, 30}, {147, 28}, {147, 29}, -- old map
				{544, 117}, {544, 118},
				{545, 117}, {545, 118},
				{546, 114}, {546, 115}, {546, 116}, {546, 117}, {546, 118},
				{547, 114}, {547, 115}, {547, 116}, {547, 117}, {547, 118},
				{548, 110}, {548, 113}, {548, 114}, {548, 115}, {548, 116}, {548, 117}, {548, 118},
				{549, 110}, {549, 111}, {549, 112}, {549, 113}, {549, 114}, {549, 115}, {549, 116}, {549, 117}, {549, 118},
				{550, 109}, {550, 110}, {550, 111}, {550, 112}, {550, 113}, {550, 114}, {550, 115}, {550, 116}, {550, 117}, {550, 118}, {550, 119},
				{551, 109}, {551, 110}, {551, 111}, {551, 112}, {551, 113}, {551, 114}, {551, 115}, {551, 116}, {551, 117}, {551, 118},
				{552, 109}, {552, 110}, {552, 111}, {552, 112}, {552, 113}, {552, 114}, {552, 115}, {552, 116}, {552, 117},
				{553, 109}, {553, 110}, {553, 111}, {553, 112}, {553, 113}, {553, 114}, {553, 115}, {553, 116}, {553, 117},
				{554, 110}, {554, 111}, {554, 112}, {554, 113}, {554, 114}, {554, 115}, {554, 116}, {554, 117},
				{555, 110}, {555, 111}, {555, 112}, {555, 113}, {555, 114}, {555, 115}, {555, 116}, {555, 117},
				{556, 110}, {556, 111}, {556, 112}, {556, 113}, {556, 114}, {556, 115}, {556, 116}, {556, 117},
				{557, 110}, {557, 111}, {557, 112}, {557, 113}, {557, 114}, {557, 115}, {557, 116}, {557, 117},
				{558, 110}, {558, 111}, {558, 112}, {558, 113}, {558, 114}, {558, 115}, {558, 116}, {558, 117},
				{559, 110}, {559, 111}, {559, 112}, {559, 113}, {559, 114}, {559, 115}, {559, 116}, {559, 117},
				{560, 110}, {560, 111}, {560, 112}, {560, 113}, {560, 114}, {560, 115}, {560, 116}, {560, 117}, {560, 118},
				{561, 110}, {561, 111}, {561, 112}, {561, 113}, {561, 114}, {561, 115}, {561, 116}, {561, 117}, {561, 118}, {561, 119},
				{562, 110}, {562, 111}, {562, 112}, {562, 113}, {562, 114}, {562, 115}, {562, 116}, {562, 117}, {562, 118}, {562, 119}, {562, 120},
				{563, 110}, {563, 111}, {563, 112}, {563, 113}, {563, 114}, {563, 115}, {563, 116}, {563, 117}, {563, 118}, {563, 119}, {563, 120}, {563, 121},
				{564, 110}, {564, 111}, {564, 112}, {564, 113}, {564, 114}, {564, 115}, {564, 116}, {564, 117}, {564, 118}, {564, 119}, {564, 120}, {564, 121}, {564, 122},
				{565, 110}, {565, 111}, {565, 112}, {565, 113}, {565, 114}, {565, 115}, {565, 116}, {565, 117}, {565, 118}, {565, 119}, {565, 120}, {565, 121}, {565, 122}, {565, 123},
				{566, 110}, {566, 111}, {566, 112}, {566, 113}, {566, 114}, {566, 115}, {566, 116}, {566, 117}, {566, 118}, {566, 119}, {566, 120}, {566, 121}, {566, 122}, {566, 123}, {566, 124},
				{567, 109}, {567, 110}, {567, 111}, {567, 112}, {567, 113}, {567, 114}, {567, 115}, {567, 116}, {567, 117}, {567, 118}, {567, 119}, {567, 120}, {567, 121}, {567, 122}, {567, 123},
				{568, 109}, {568, 110}, {568, 111}, {568, 112}, {568, 113}, {568, 114}, {568, 115}, {568, 116}, {568, 117}, {568, 118}, {568, 119}, {568, 120}, {568, 121}, {568, 122},
				{569, 109}, {569, 110}, {569, 111}, {569, 112}, {569, 113}, {569, 114}, {569, 115}, {569, 116}, {569, 117}, {569, 118}, {569, 119}, {569, 120}, {569, 121}, {569, 122},
				{570, 109}, {570, 110}, {570, 111}, {570, 112}, {570, 113}, {570, 114}, {570, 115}, {570, 116}, {570, 117}, {570, 118}, {570, 119}, {570, 120}, {570, 121}, {570, 122},
				{571, 109}, {571, 110}, {571, 111}, {571, 112}, {571, 113}, {571, 114}, {571, 115}, {571, 116}, {571, 117}, {571, 118}, {571, 119}, {571, 120}, {571, 121}, {571, 122}, {571, 123}, {571, 124},
				{572, 108}, {572, 109}, {572, 110}, {572, 111}, {572, 112}, {572, 113}, {572, 114}, {572, 115}, {572, 116}, {572, 117}, {572, 118}, {572, 119}, {572, 120}, {572, 121}, {572, 122}, {572, 123}, {572, 124},
				{573, 108}, {573, 109}, {573, 110}, {573, 111}, {573, 112}, {573, 113}, {573, 114}, {573, 115}, {573, 116}, {573, 117}, {573, 118}, {573, 119}, {573, 120}, {573, 121}, {573, 122}, {573, 123}, {573, 124},
				{574, 108}, {574, 109}, {574, 110}, {574, 111}, {574, 112}, {574, 113}, {574, 114}, {574, 115}, {574, 116}, {574, 117}, {574, 118}, {574, 119}, {574, 120}, {574, 121}, {574, 122}, {574, 123}, {574, 124},
				{575, 108}, {575, 109}, {575, 110}, {575, 111}, {575, 112}, {575, 113}, {575, 114}, {575, 115}, {575, 116}, {575, 117}, {575, 118}, {575, 119}, {575, 120}, {575, 121}, {575, 122}, {575, 123}, {575, 124},
				{576, 108}, {576, 109}, {576, 110}, {576, 111}, {576, 112}, {576, 113}, {576, 114}, {576, 115}, {576, 116}, {576, 117}, {576, 118}, {576, 119}, {576, 120}, {576, 121}, {576, 122}, {576, 123}, {576, 124},
				{577, 110}, {577, 111}, {577, 112}, {577, 113}, {577, 114}, {577, 115}, {577, 116}, {577, 117}, {577, 118}, {577, 119}, {577, 120}, {577, 121}, {577, 122}, {577, 123}, {577, 124},
				{578, 110}, {578, 111}, {578, 112}, {578, 113}, {578, 114}, {578, 115}, {578, 116}, {578, 117}, {578, 118}, {578, 119}, {578, 120}, {578, 121}, {578, 122}, {578, 123}, {578, 124},
				{579, 110}, {579, 111}, {579, 112}, {579, 113}, {579, 114}, {579, 115}, {579, 116}, {579, 117}, {579, 118}, {579, 119}, {579, 120}, {579, 121}, {579, 122}, {579, 123},
				{580, 112}, {580, 113}, {580, 114}, {580, 115}, {580, 116}, {580, 117}, {580, 118}, {580, 119}, {580, 120}, {580, 121}, {580, 122}, {580, 123},
				{581, 113}, {581, 114}, {581, 115}, {581, 116}, {581, 117}, {581, 118}, {581, 119}, {581, 120}, {581, 121}, {581, 122}, {581, 123},
				{582, 112}, {582, 113}, {582, 114}, {582, 115}, {582, 116}, {582, 117}, {582, 118}, {582, 119}, {582, 120}, {582, 121}, {582, 122},
				{583, 113}, {583, 114}, {583, 115}, {583, 116}, {583, 117}, {583, 118}, {583, 119}, {583, 120}, {583, 121}, {583, 122},
				{584, 113}, {584, 114}, {584, 115}, {584, 116}, {584, 117}, {584, 118}, {584, 119}, {584, 120}, {584, 121}, {584, 122},
				{585, 112}, {585, 113}, {585, 114}, {585, 115}, {585, 116}, {585, 117}, {585, 118}, {585, 119}, {585, 120}, {585, 121}, {585, 122},
				{586, 114}, {586, 115}, {586, 116}, {586, 117}, {586, 118}, {586, 119}, {586, 120}, {586, 121},
				{587, 114}, {587, 115}, {587, 116}, {587, 117}, {587, 118}, {587, 119}, {587, 120}, {587, 121},
				{588, 114}, {588, 115}, {588, 116}, {588, 117}, {588, 118}, {588, 119}, {588, 120}, {588, 121},
				{589, 114}, {589, 115}, {589, 116}, {589, 117}, {589, 118}, {589, 119}, {589, 120},
				{590, 114}, {590, 115}, {590, 116}, {590, 117}, {590, 118}, {590, 119},
				{591, 115}, {591, 116}, {591, 117}, {591, 118}, {591, 119},
				{592, 115}, {592, 116}, {592, 117}, {592, 118}, {592, 119}
			},
			SettlementName = "Kiev",
			SettlementLocation = {566, 112}, -- Kiev
			Map = "maps/random_maps/random-map-forest.smp",
			Units = {
				unit_germanic_warrior = 20 -- soldiers to stop the Vana Tribe from expanding here
			},
			SettlementTerrain = "Plains",
			Claims = {
				"persian", "Scythian Tribe"
			}
		},
		Umbria = {
			Name = "Umbria",
			CulturalNames = {
				latin = "Umbria"
			},
			Tiles = {
				{515, 131}, {515, 132}, {515, 133}, {515, 134},
				{516, 131}, {516, 132}, {516, 133}, {516, 134}, {516, 135},
				{517, 132}, {517, 133},
				{518, 132}, {518, 133}
			},
			SettlementName = "Perugia",
			SettlementLocation = {515, 134}, -- Perugia
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"latin", "Aequian Tribe",
				"latin", "Picentian Tribe",
				"latin", "Sabine Tribe",
				"latin", "Umbrian Tribe"
			}
		},
		Venetia = {
			Name = "Venetia",
			CulturalNames = {
				latin = "Venetia"
			},
			Tiles = {
				{510, 126}, {510, 127},
				{511, 126}, {511, 127},
				{512, 125}, {512, 126}, {512, 127},
				{513, 124}, {513, 125}, {513, 126}, {513, 127},
				{514, 124}, {514, 125}, {514, 126}, {514, 127},
				{515, 123}, {515, 124}, {515, 125}, {515, 126},
				{516, 123}, {516, 124}, {516, 125},
				{517, 124}, {517, 125}
			},
			SettlementName = "Venice",
			CulturalSettlementNames = {
				latin = "Aquileia",
				teuton = "Venedig"
			},
			SettlementLocation = {515, 126}, -- Venice
			Map = "maps/earth/oderzo.smp",
			SettlementTerrain = "Plains",
			Coastal = true,
			Claims = {
				"latin", "Venetian Tribe"
--				"latin", "Venice"
			}
		},
		Vojvodina = {
			Name = "Vojvodina",
			Tiles = {
				{534, 125}, {534, 126}, {534, 127},
				{535, 125}, {535, 126}, {535, 127},
				{536, 125}, {536, 126}, {536, 127},
				{537, 125}, {537, 126}, {537, 127}, {537, 128},
				{538, 126}, {538, 127}, {538, 128},
				{539, 127}, {539, 128},
				{540, 128}
			},
			SettlementName = "Novi Sad",
			CulturalSettlementNames = {
				teuton = "Neusatz" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 168.
			},
			SettlementLocation = {536, 127}, -- Novi Sad
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Wallachia = {
			Name = "Wallachia",
			CulturalNames = {
				latin = "Southern Lower Dacia"
			},
			Tiles = {
				{136, 32}, {137, 32}, {138, 32}, {139, 32}, {140, 32}, -- old map
				{544, 127}, {544, 128}, {544, 129}, {544, 130},
				{545, 127}, {545, 128}, {545, 129}, {545, 130},
				{546, 127}, {546, 128}, {546, 129}, {546, 130},
				{547, 126}, {547, 127}, {547, 128}, {547, 129}, {547, 130},
				{548, 126}, {548, 127}, {548, 128}, {548, 129}, {548, 130}, {548, 131},
				{549, 126}, {549, 127}, {549, 128}, {549, 129}, {549, 130}, {549, 131},
				{550, 126}, {550, 127}, {550, 128}, {550, 129}, {550, 130}, {550, 131},
				{551, 126}, {551, 127}, {551, 128}, {551, 129}, {551, 130}, {551, 131},
				{552, 127}, {552, 128}, {552, 129}, {552, 130}, {552, 131},
				{553, 126}, {553, 127}, {553, 128}, {553, 129}, {553, 130}, {553, 131},
				{554, 126}, {554, 127}, {554, 128}, {554, 129}, {554, 130},
				{555, 126}, {555, 127}, {555, 128}, {555, 129}, {555, 130},
				{556, 126}, {556, 127}, {556, 128}, {556, 129}, {556, 130},
				{557, 126}, {557, 127}, {557, 128}, {557, 129},
				{558, 127}, {558, 128}, {558, 129},
				{559, 127}, {559, 129}
			},
			SettlementName = "Bucharest",
			SettlementLocation = {554, 129}, -- Bucharest
			CulturalSettlementNames = {
--				romanian = "Bucharest"
			},
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
--				"latin", "Wallachia",
				"thracian", "Getae Tribe"
			}
		},
		WhiteRussia = {
			Name = "White Russia",
			Tiles = { {136, 25}, {136, 26}, {136, 27}, {137, 25}, {137, 26}, {137, 27}, {138, 25}, {138, 26}, {138, 27}, {139, 24}, {139, 25}, {139, 26}, {139, 27} },
	--		SettlementName = "Minsk",
			SettlementLocation = {139, 25}, -- Minsk
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains"
		},
		Wurtemberg = {
			Name = "Wurtemberg",
			CulturalNames = {
				teuton = "Württemberg"
			},
			Tiles = {
				{504, 118},
				{505, 117}, {505, 118},
				{506, 117}, {506, 118},
				{507, 117}, {507, 118}, {507, 119}, {507, 120},
				{508, 116}, {508, 117}, {508, 118}, {508, 119}, {508, 120},
				{509, 117}
			},
			SettlementName = "Stuttgart",
			CulturalSettlementNames = {
				teuton = "Stuttgart"
			},
			SettlementLocation = {506, 117}, -- Stuttgart
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"teuton", "Alamanni Tribe",
				"teuton", "Wurtemberg"
			}
		},
		Zealand = {
			Name = "Zealand",
			Tiles = {
				{508, 98},
				{509, 98},
				{510, 98},
				{512, 97}, {512, 98}, {512, 100},
				{513, 97}, {513, 98},
				{514, 97}, {514, 98},
				{515, 97}
			},
			SettlementName = "Copenhagen",
			CulturalNames = {
				norse = "Sjaelland"
			},
			CulturalSettlementNames = {
				norse = "Copenhagen"
			},
			SettlementLocation = {515, 97}, -- Copenhagen
			Map = "maps/random_maps/random-map-forest.smp",
			SettlementTerrain = "Plains",
			Claims = {
				"basque", "Ertebolle Tribe",
				"basque", "Funnelbeaker Tribe",
				"basque", "Maglemose Tribe",
				"basque", "Kongemose Tribe",
				"norse", "Dane Tribe",
				"goth", "Herulian Tribe"
			}
		}
	}
	
	local NidavellirProvinces = {
		Aurvang = {
			Name = "Aurvang",
			Tiles = {},
			CulturalNames = {
				dwarf = "Aurvang"
			},
			Map = "maps/nidavellir/aurvang.smp",
			Units = { -- Dwarven bandits
				unit_dwarven_steelclad = 1,
				unit_dwarven_axefighter = 3
			},
			SettlementTerrain = "Plains" -- should be Dark Plains, but those are not generated in random maps (yet)
		},
		BrownHills = {
			Name = "Brown Hills",
			Tiles = { {18, 29}, {18, 30}, {19, 28}, {19, 29}, {19, 30}, {20, 28}, {20, 29}, {20, 30}, {20, 31}, {20, 32}, {21, 28}, {21, 29}, {21, 30}, {21, 31}, {21, 32}, {22, 25}, {22, 26}, {22, 27}, {22, 28}, {22, 29}, {22, 30}, {22, 31}, {22, 32}, {23, 25}, {23, 26}, {23, 27}, {23, 28}, {23, 29}, {23, 30}, {23, 31}, {23, 32}, {24, 24}, {24, 25}, {24, 26}, {24, 27}, {24, 28}, {24, 29}, {24, 30}, {24, 31}, {24, 32}, {25, 24}, {25, 25}, {25, 26}, {25, 27}, {25, 28}, {25, 29}, {25, 30}, {25, 31}, {25, 32}, {26, 24}, {26, 25}, {26, 26}, {26, 27}, {26, 28}, {26, 29}, {26, 30}, {26, 31}, {27, 26}, {27, 27}, {27, 28}, {27, 29}, {27, 30}, {28, 28}, {29, 28} },
			Owner = "Untersberg",
			Civilization = "gnome",
			CulturalNames = {
				dwarf = "Brown Hills"
			},
			SettlementLocation = {25, 26},
			SettlementBuildings = {
				unit_gnomish_town_hall = true,
				unit_gnomish_barracks = true -- has capability to train soldiers
			},
			Map = "maps/nidavellir/brown-hills.smp",
			Units = {
				unit_gnomish_recruit = 2 -- Pypo I and his envoy
			},
			SettlementTerrain = "Hills", -- should be DkPl?
			Claims = {
				"gnome", "Untersberg"
			}
		},
		CavernsOfChaincolt = {
			Name = "Caverns of Chaincolt",
			Tiles = { {25, 14}, {25, 15}, {25, 16}, {26, 11}, {26, 14}, {26, 15}, {27, 11}, {27, 12}, {27, 13}, {27, 14}, {27, 15}, {27, 16}, {28, 9}, {28, 10}, {28, 11}, {28, 12}, {28, 13}, {28, 14}, {28, 15}, {28, 16}, {28, 17}, {29, 9}, {29, 10}, {29, 11}, {29, 12}, {29, 13}, {29, 14}, {29, 15}, {29, 16}, {29, 17}, {29, 18}, {29, 19}, {29, 20}, {30, 9}, {30, 10}, {30, 11}, {30, 12}, {30, 13}, {30, 14}, {30, 15}, {30, 16}, {30, 17}, {30, 18}, {30, 19}, {30, 20}, {31, 9}, {31, 10}, {31, 11}, {31, 12}, {31, 13}, {31, 15}, {31, 19}, {32, 9}, {32, 10}, {32, 11}, {32, 12} },
			CulturalNames = {
				dwarf = "Caverns of Chaincolt"
			},
			SettlementLocation = {30, 13},
			Map = "maps/nidavellir/caverns-of-chaincolt.smp",
			Units = {
				unit_goblin_spearman = 4
			},
			Heroes = {},
			SettlementTerrain = "Mountains", -- for random map generation
			Claims = {
				"dwarf", "Norlund Clan",
				"dwarf", "Knalga"
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
				dwarf = "Caverns of Flame"
			},
			SettlementLocation = {41, 6},
			SettlementBuildings = {
				unit_dwarven_smithy = true -- abandoned forge which Thursagan later uses to craft the Scepter of Fire
			},
			Map = "maps/nidavellir/caverns-of-flame.smp",
			Units = { -- starting units in the Caverns of Flame scenario
				unit_goblin_spearman = 10, -- 2 orcish warlords, 2 troll warriors, 2 trolls, 4 orcish warriors
				unit_goblin_war_machine = 1
			},
			SettlementTerrain = "Hills"
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
				dwarf = "Eastern Mines"
			},
			Civilization = "goblin",
			SettlementLocation = {38, 7},
			Map = "maps/nidavellir/eastern-mines.smp",
			Units = {
	--			unit_goblin_spearman = 3 -- three starting chieftains in the Gathering Materials scenario
				unit_goblin_spearman = 9 * 2 -- three starting chieftains in the Gathering Materials scenario, plus 2 goblins for each tribe and multiplied by 2 to prevent too early expansion into this province
			},
			SettlementTerrain = "Hills"
		},
		GryphonMountain = {
			Name = "Gryphon Mountain",
			Tiles = { {24, 22}, {24, 23}, {25, 20}, {25, 21}, {25, 22}, {25, 23}, {26, 20}, {26, 21}, {26, 22}, {26, 23}, {27, 20}, {27, 21}, {27, 22}, {27, 23}, {27, 24}, {27, 25}, {28, 20}, {28, 21}, {28, 22}, {28, 23}, {28, 24}, {28, 25}, {28, 26}, {28, 27}, {29, 21}, {29, 22}, {29, 23}, {29, 24}, {29, 25}, {29, 26}, {29, 27}, {30, 21}, {30, 23}, {30, 24}, {30, 25}, {30, 26}, {30, 27}, {31, 23}, {31, 24}, {31, 25}, {31, 26}, {32, 23}, {32, 24} },
			CulturalNames = {
				dwarf = "Gryphon Mountain"
			},
			SettlementLocation = {29, 23},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = { -- wild units in the Gryphon Mountain scenario
				unit_dwarven_gryphon_rider = 6 -- Mother Gryphon, Graak, Grook, Gruak, Graik, Griak
			},
			SettlementTerrain = "Mountains"
		},
		Heartfangs = {
			Name = "Heartfangs",
			Tiles = { {14, 10}, {14, 11}, {15, 7}, {15, 8}, {15, 9}, {15, 10}, {15, 11}, {15, 12}, {16, 7}, {16, 8}, {16, 9}, {16, 10}, {16, 11}, {16, 12}, {17, 8}, {17, 9}, {17, 10}, {17, 11}, {17, 12}, {17, 13}, {18, 6}, {18, 9}, {18, 10}, {18, 11}, {18, 12}, {19, 5}, {19, 6}, {19, 8}, {19, 9}, {19, 10}, {19, 11}, {19, 12}, {19, 13}, {20, 4}, {20, 5}, {20, 6}, {20, 7}, {20, 8}, {20, 9}, {20, 10}, {20, 11}, {20, 12}, {20, 13}, {21, 4}, {21, 5}, {21, 6}, {21, 7}, {21, 8}, {21, 9}, {21, 10}, {21, 11}, {21, 12}, {21, 13}, {22, 4}, {22, 5}, {22, 6}, {22, 7}, {22, 8}, {22, 9}, {22, 10}, {22, 11}, {22, 12}, {22, 13}, {23, 5}, {23, 6}, {23, 7}, {23, 8}, {23, 9}, {23, 10}, {23, 11}, {23, 12}, {23, 13}, {24, 6}, {24, 7}, {24, 8}, {24, 9}, {24, 10}, {24, 11}, {24, 12}, {24, 13}, {24, 14}, {25, 6}, {25, 7}, {25, 8}, {25, 9}, {25, 10}, {25, 11}, {25, 12}, {25, 13}, {26, 6}, {26, 7}, {26, 8}, {26, 9}, {26, 10}, {26, 12}, {26, 13}, {27, 9}, {27, 10} },
			CulturalNames = {
				dwarf = "Heartfangs"
			},
			Owner = "Khag Tribe",
			Civilization = "goblin",
			SettlementLocation = {23, 11},
			SettlementBuildings = {
				unit_goblin_town_hall = true
			},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = {
				unit_goblin_spearman = 5 -- Fal Khag, Gatrakh, Thurg, Krung, Gorokh (should all be cavalry)
			},
			SettlementTerrain = "Mountains",
			Claims = {
				"goblin", "Khag Tribe"
			}
		},
		HighPass = {
			Name = "High Pass",
			Tiles = { {39, 12}, {40, 10}, {40, 11}, {40, 12}, {41, 10}, {41, 11}, {41, 12}, {42, 11} },
			SettlementLocation = {40, 12},
			CulturalNames = {
				dwarf = "High Pass"
			},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = { -- wild units in the High Pass scenario
				unit_goblin_spearman = 10, -- 10 uses of the WILD_THING function which generates trolls, ogres and wolves
				unit_dwarven_gryphon_rider = 1 -- Kaara
			},
			SettlementTerrain = "Hills"
		},
		HighbrookPass = {
			Name = "Highbrook Pass",
			Tiles = { {33, 10}, {33, 11}, {34, 9}, {34, 10}, {34, 11}, {35, 10}, {35, 11}, {35, 12}, {35, 14}, {35, 15}, {36, 10}, {36, 11}, {36, 12}, {36, 13}, {36, 14}, {36, 15}, {37, 11}, {37, 12}, {37, 13}, {37, 14}, {37, 15}, {38, 10}, {38, 11}, {38, 12}, {38, 13}, {38, 14}, {39, 10}, {39, 11}, {39, 13}, {39, 14} },
			CulturalNames = {
				dwarf = "Highbrook Pass"
			},
			SettlementLocation = {35, 11},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = { -- starting units in the Settling Disputes scenario
				unit_dwarven_axefighter = 0,
				unit_dwarven_steelclad = 0,
				unit_dwarven_thane = 0,
				unit_goblin_spearman = 4 * 3, -- one troll, two young ogres, one ogre -- multiply by three to prevent dwarven expansion here too early
				unit_goblin_archer = 2 * 3 -- two liches
			},
			SettlementTerrain = "Mountains",
			Claims = {
				"dwarf", "Shinsplitter Clan"
			}
		},
		Joruvellir = {
			Name = "Joruvellir",
			Tiles = {},
			CulturalNames = {
				dwarf = "Joruvellir"
			},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = {
				unit_goblin_spearman = 6, -- some enemy goblins
				unit_goblin_archer = 3
			},
			SettlementTerrain = "Plains" -- should be Dark Plains, but those are not generated in random maps (yet); when there are desert tiles implemented, this should be Desert instead
		},
		KalKartha = {
			Name = "Kal Kartha",
			Tiles = {
				{42, 8}, {42, 9}, {42, 10},
				{43, 4}, {43, 5}, {43, 7}, {43, 8}, {43, 9}, {43, 10},
				{44, 2}, {44, 3}, {44, 4}, {44, 5}, {44, 6}, {44, 7}, {44, 8},
				{45, 2}, {45, 3}, {45, 4}, {45, 5}, {45, 6}, {45, 7}, {45, 8},
				{46, 2}, {46, 3}, {46, 4}, {46, 5}, {46, 6}, {46, 7}, {46, 8},
				{47, 1}, {47, 2}, {47, 3}, {47, 4}, {47, 5}, {47, 6}, {47, 7}, {47, 8}, {47, 9},
				{48, 0}, {48, 1}, {48, 2}, {48, 3}, {48, 4}, {48, 5}, {48, 6}, {48, 7}, {48, 8}, {48, 9},
				{49, 0}, {49, 1}, {49, 2}, {49, 3}, {49, 4}, {49, 5}, {49, 6}, {49, 7}, {49, 8}, {49, 9}, {49, 10},
				{50, 1}, {50, 2}, {50, 3}, {50, 4}, {50, 5}, {50, 6}, {50, 7}, {50, 8}, {50, 9}, {50, 10}, {50, 11},
				{51, 3}, {51, 4}, {51, 5}, {51, 6}, {51, 7}, {51, 8}, {51, 9}, {51, 10}, {51, 11},
				{52, 4}, {52, 5}, {52, 6}, {52, 7}, {52, 8}, {52, 9}, {52, 10}, {52, 11}, {52, 12},
				{53, 4}, {53, 5}, {53, 6}, {53, 7}, {53, 8}, {53, 9}, {53, 10}, {53, 11}, {53, 12},
				{54, 6}, {54, 7}, {54, 8}, {54, 9}, {54, 10}, {54, 11}, {54, 12},
				{55, 7}, {55, 8}, {55, 9}, {55, 10}, {55, 11}, {55, 12},
				{56, 12}
			},
			SettlementName = "Kal Kartha",
			CulturalNames = {
				dwarf = "Kal Kartha"
			},
			CulturalSettlementNames = {
				dwarf = "Kal Kartha"
			},
			SettlementLocation = {45, 5},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = { -- some wild gnomes from the Forbidden Forest to stop too early expansion into this province
				unit_dwarven_axefighter = 0,
				unit_dwarven_steelclad = 0,
				unit_dwarven_thane = 0,
				unit_gnomish_recruit = 4
			},
			SettlementTerrain = "Mountains",
			Claims = {
				"dwarf", "Kal Kartha"
			}
		},
		Lyr = {
			Name = "Lyr",
			Tiles = { {47, 13}, {47, 14}, {47, 15}, {47, 16}, {48, 13}, {48, 14}, {48, 15}, {48, 16}, {49, 12}, {49, 13}, {49, 14}, {49, 15}, {49, 16}, {49, 17}, {50, 12}, {50, 13}, {50, 14}, {50, 15}, {50, 16}, {50, 17}, {51, 12}, {51, 13}, {51, 14}, {51, 15}, {51, 16}, {51, 17}, {52, 13}, {52, 14}, {52, 15}, {52, 16}, {52, 17}, {53, 13}, {53, 14}, {53, 15}, {53, 16}, {54, 13}, {54, 14}, {54, 15}, {54, 16}, {55, 13}, {55, 14}, {55, 15}, {55, 16}, {56, 13}, {56, 14}, {56, 15}, {56, 16} },
			SettlementName = "Lyr",
			CulturalNames = {
				dwarf = "Lyr"
			},
			CulturalSettlementNames = {
				dwarf = "Lyr"
			},
			SettlementLocation = {50, 13},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = { -- some wild dwarves to stop too early expansion into this province
				unit_dwarven_axefighter = 12
			},
			SettlementTerrain = "Hills",
			Claims = {
				"dwarf", "Lyr"
			}
		},
		NorthernWastelands = {
			Name = "Northern Wastelands",
			Tiles = {
				{12, 3}, {12, 4},
				{13, 2}, {13, 3}, {13, 4},
				{14, 2}, {14, 3}, {14, 4},
				{15, 1}, {15, 2}, {15, 3}, {15, 4},
				{16, 0}, {16, 1}, {16, 2}, {16, 3}, {16, 4}, {16, 5}, {16, 6},
				{17, 0}, {17, 1}, {17, 2}, {17, 3}, {17, 4}, {17, 5}, {17, 6}, {17, 7},
				{18, 0}, {18, 1}, {18, 2}, {18, 3}, {18, 4}, {18, 5}, {18, 7}, {18, 8},
				{19, 0}, {19, 1}, {19, 2}, {19, 3}, {19, 4}, {19, 7},
				{20, 1}, {20, 2}, {20, 3},
				{21, 1}, {21, 2}, {21, 3}, {22, 3}
			},
			Civilization = "goblin",
			CulturalNames = {
				dwarf = "Northern Wastelands"
			},
			SettlementLocation = {14, 2},
			SettlementBuildings = {
				unit_dwarven_smithy = true -- Thursagan's smithy
			},
			Map = "maps/nidavellir/northern-wastelands.smp",
			Units = { -- numbers derived from 3 goblins per 13 groups which appear in the map during the Searching for the Runecrafter quest (the 2 other goblins which appear in the NorthernWastelandsEnemy() function were added for balance reasons)
				unit_goblin_spearman = 26,
				unit_goblin_archer = 13
			},
			SettlementTerrain = "Hills"
		},
		PeacefulValley = {
			Name = "Peaceful Valley",
			Tiles = { {49, 18}, {50, 18}, {50, 19}, {50, 20}, {51, 18}, {51, 19}, {51, 20}, {52, 18}, {52, 19}, {52, 20}, {53, 17}, {53, 18}, {53, 19}, {53, 20}, {54, 17}, {54, 18}, {54, 19}, {55, 17}, {55, 18}, {55, 19}, {56, 17}, {56, 18} },
			Owner = "Lggi Tribe",
			CulturalNames = {
				goblin = "Peaceful Valley"
			},
			Civilization = "goblin",
			SettlementLocation = {51, 19},
			SettlementBuildings = {
				unit_goblin_town_hall = true,
				unit_goblin_barracks = true -- has capability to train soldiers
			},
			Map = "maps/random_maps/random-map-swamp.smp",
			Units = {
				unit_goblin_spearman = 14 -- 13 is the quantity of villages in Peaceful Valley map (each can generate 0-2 goblin spearmen) + T'shar Lggi himself
			},
			SettlementTerrain = "Hills",
			Claims = {
				"goblin", "Lggi Tribe"
			}
		},
		ShorbearHills = {
			Name = "Shorbear Hills",
			Tiles = { {31, 16}, {31, 17}, {31, 18}, {32, 15}, {32, 16}, {32, 17}, {32, 18}, {32, 19}, {33, 14}, {33, 15}, {33, 16}, {33, 17}, {33, 18}, {33, 19}, {34, 14}, {34, 15}, {34, 16}, {34, 17} },
			SettlementName = "Shorbear Hold",
			CulturalNames = {
				dwarf = "Shorbear Hills"
			},
			CulturalSettlementNames = {
				dwarf = "Shorbear Hold"
			},
			SettlementLocation = {33, 15},
			Map = "maps/nidavellir/shorbear-hills.smp",
			Units = {
				unit_goblin_spearman = 4
			},
			SettlementTerrain = "Hills",
			Claims = {
				"dwarf", "Shorbear Clan",
				"dwarf", "Knalga"
			}
		},
		SouthernTunnels = {
			Name = "Southern Tunnels",
			Tiles = { {31, 14}, {32, 13}, {32, 14}, {33, 12}, {33, 13}, {34, 12}, {34, 13}, {35, 13} },
			SettlementName = "Knalga",
			CulturalNames = {
				dwarf = "Southern Tunnels"
			},
			CulturalSettlementNames = {
				dwarf = "Knalga"
			},
			SettlementLocation = {32, 14},
			Map = "maps/nidavellir/southern-tunnels.smp",
			Units = {
				unit_goblin_spearman = 4
			},
			SettlementTerrain = "Hills",
			Claims = {
				"dwarf", "Shinsplitter Clan",
				"dwarf", "Knalga"
			}
		},
		Svarinshaug = {
			Name = "Svarinshaug",
			Tiles = { {40, 13}, {40, 14}, {41, 13}, {41, 14}, {42, 12}, {42, 13}, {42, 14}, {43, 11}, {43, 12}, {43, 13}, {43, 14}, {44, 9}, {44, 10}, {44, 11}, {44, 12}, {44, 13}, {44, 14}, {45, 9}, {45, 10}, {45, 11}, {45, 12}, {45, 13}, {45, 14}, {46, 9}, {46, 10}, {46, 11}, {46, 12}, {46, 13}, {46, 14}, {47, 10}, {47, 11}, {47, 12}, {48, 10}, {48, 11}, {48, 12}, {49, 11} },
			Owner = "Modsogning Clan",
			Civilization = "dwarf",
			CulturalNames = {
				dwarf = "Svarinshaug"
			},
			SettlementLocation = {44, 11},
			SettlementBuildings = {
				unit_dwarven_town_hall = true
			},
			CulturalSettlementNames = {
				dwarf = "Svarinshaug"
			},
			Map = "maps/nidavellir/svarinshaug.smp",
			SettlementTerrain = "Hills",
			Claims = {
				"dwarf", "Modsogning Clan"
			}
		}
	}
	
	local EarthWaterProvinces = {
		AdriaticSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 17.
			Name = "Adriatic Sea",
			Tiles = {
				{129, 32}, {130, 32}, {130, 33}, {131, 33}, {132, 33}, {132, 34}, {133, 34}, {133, 35}, -- old map
				{515, 127}, {515, 128}, {515, 129},
				{516, 126}, {516, 127}, {516, 128}, {516, 129}, {516, 130},
				{517, 126}, {517, 127}, {517, 128}, {517, 129}, {517, 130}, {517, 131},
				{518, 126}, {518, 127}, {518, 128}, {518, 129}, {518, 130}, {518, 131},
				{519, 128}, {519, 129}, {519, 130}, {519, 131}, {519, 132}, {519, 133},
				{520, 127}, {520, 128}, {520, 129}, {520, 130}, {520, 131}, {520, 132}, {520, 133}, {520, 134},
				{521, 127}, {521, 128}, {521, 129}, {521, 130}, {521, 131}, {521, 132}, {521, 133}, {521, 134}, {521, 135},
				{522, 129}, {522, 130}, {522, 131}, {522, 132}, {522, 133}, {522, 134}, {522, 135}, {522, 136},
				{523, 131}, {523, 132}, {523, 133}, {523, 134}, {523, 135}, {523, 136},
				{524, 131}, {524, 132}, {524, 133}, {524, 134}, {524, 135}, {524, 136},
				{525, 132}, {525, 133}, {525, 134}, {525, 135}, {525, 136}, {525, 137},
				{526, 132}, {526, 133}, {526, 134}, {526, 135}, {526, 136}, {526, 137}, {526, 138},
				{527, 132}, {527, 133}, {527, 134}, {527, 135}, {527, 136}, {527, 137}, {527, 138},
				{528, 133}, {528, 134}, {528, 135}, {528, 136}, {528, 137}, {528, 138},
				{529, 134}, {529, 135}, {529, 136}, {529, 137}, {529, 138}, {529, 139},
				{530, 134}, {530, 135}, {530, 136}, {530, 137}, {530, 138}, {530, 139},
				{531, 135}, {531, 136}, {531, 137}, {531, 138}, {531, 139},
				{532, 135}, {532, 136}, {532, 137}, {532, 138}, {532, 139}, {532, 140}, {532, 141}, {532, 142},
				{533, 136}, {533, 137}, {533, 138}, {533, 139}, {533, 140}, {533, 141}, {533, 142},
				{534, 137}, {534, 138}, {534, 139}, {534, 140}, {534, 141}, {534, 142},
				{535, 137}, {535, 142},
				{536, 142}
			}
		},
		AegeanSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 18.
			Name = "Aegean Sea",
			Tiles = {
				{136, 35}, {137, 35}, {137, 36}, {137, 37}, {137, 38}, {138, 35}, {138, 36}, {138, 37}, {138, 38}, {139, 35}, {139, 38}, {140, 35}, -- old map
				{544, 141},
				{545, 141}, {545, 142}, {545, 143}, {545, 144}, {545, 145}, {545, 149}, {545, 152},
				{546, 141}, {546, 142}, {546, 143}, {546, 144}, {546, 145}, {546, 148}, {546, 149}, {546, 150}, {546, 151}, {546, 152}, {546, 153},
				{547, 141}, {547, 142}, {547, 143}, {547, 145}, {547, 146}, {547, 148}, {547, 149}, {547, 150}, {547, 151}, {547, 152}, {547, 153}, {547, 154},
				{548, 140}, {548, 141}, {548, 142}, {548, 143}, {548, 146}, {548, 147}, {548, 148}, {548, 149}, {548, 150}, {548, 151}, {548, 152}, {548, 153}, {548, 154},
				{549, 140}, {549, 141}, {549, 142}, {549, 143}, {549, 144}, {549, 146}, {549, 147}, {549, 148}, {549, 149}, {549, 150}, {549, 151}, {549, 152}, {549, 153}, {549, 154},
				{550, 140}, {550, 141}, {550, 142}, {550, 143}, {550, 144}, {550, 145}, {550, 146}, {550, 147}, {550, 148}, {550, 149}, {550, 150}, {550, 151}, {550, 152}, {550, 153}, {550, 154},
				{551, 140}, {551, 141}, {551, 142}, {551, 143}, {551, 144}, {551, 145}, {551, 146}, {551, 147}, {551, 148}, {551, 149}, {551, 150}, {551, 151}, {551, 152}, {551, 153}, {551, 154},
				{552, 140}, {552, 141}, {552, 142}, {552, 143}, {552, 144}, {552, 145}, {552, 146}, {552, 147}, {552, 148}, {552, 149}, {552, 150}, {552, 151}, {552, 152}, {552, 153}, {552, 154},
				{553, 140}, {553, 141}, {553, 142}, {553, 143}, {553, 144}, {553, 145}, {553, 146}, {553, 147}, {553, 148}, {553, 149}, {553, 150}, {553, 151}, {553, 152}, {553, 153}, {553, 154}, {553, 155},
				{554, 144}, {554, 145}, {554, 146}, {554, 147}, {554, 148}, {554, 149}, {554, 150}, {554, 151}, {554, 152}, {554, 153}, {554, 154}, {554, 155},
				{555, 144}, {555, 145}, {555, 146}, {555, 147}, {555, 148}, {555, 149}, {555, 150}, {555, 151}, {555, 152}, {555, 153}, {555, 154}, {555, 155},
				{556, 148}, {556, 149}, {556, 150}, {556, 151}, {556, 152}, {556, 153}, {556, 154}, {556, 155},
				{557, 150}, {557, 151}, {557, 152}, {557, 153}, {557, 154},
				{558, 151}, {558, 152}, {558, 153},
				{559, 151}
			}
		},
		AlboranSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 16.
			Name = "Alboran Sea",
			Tiles = {
				{463, 153},
				{464, 153},
				{465, 152}, {465, 153}, {465, 154},
				{466, 152}, {466, 153}, {466, 154}, {466, 155},
				{467, 152}, {467, 153}, {467, 154}, {467, 155},
				{468, 152}, {468, 153}, {468, 154}, {468, 155},
				{469, 152}, {469, 153}, {469, 154}, {469, 155},
				{470, 152}, {470, 153}, {470, 154}, {470, 155},
				{471, 152}, {471, 153}, {471, 154}, {471, 155},
				{472, 152}, {472, 153}, {472, 154}, {472, 155},
				{473, 151}, {473, 152}, {473, 153}, {473, 154}, {473, 155},
				{474, 152}, {474, 153}, {474, 154}, {474, 155},
				{475, 153}, {475, 154}, {475, 155},
				{476, 154}
			}
		},
		AtlanticOcean = {
			Name = "Atlantic Ocean",
			Tiles = {
				{102, 16}, {102, 17}, {102, 18}, {102, 19}, {102, 20}, {102, 21}, {102, 22}, {102, 23}, {102, 24}, {102, 25}, {102, 26}, {102, 27}, {102, 28}, {102, 29}, {102, 30}, {102, 31}, {102, 32}, {102, 33}, {102, 34}, {102, 35}, {102, 36}, {102, 37}, {102, 38}, {103, 16}, {103, 18}, {103, 19}, {103, 20}, {103, 21}, {103, 22}, {103, 23}, {103, 24}, {103, 25}, {103, 26}, {103, 27}, {103, 28}, {103, 29}, {103, 30}, {103, 31}, {103, 32}, {103, 33}, {103, 34}, {103, 35}, {103, 36}, {103, 37}, {103, 38}, {104, 16}, {104, 19}, {104, 20}, {104, 21}, {104, 22}, {104, 23}, {104, 24}, {104, 25}, {104, 26}, {104, 27}, {104, 28}, {104, 29}, {104, 30}, {104, 31}, {104, 32}, {104, 33}, {104, 34}, {104, 35}, {104, 36}, {104, 37}, {104, 38}, {105, 16}, {105, 19}, {105, 20}, {105, 21}, {105, 22}, {105, 23}, {105, 24}, {105, 25}, {105, 26}, {105, 27}, {105, 28}, {105, 29}, {105, 30}, {105, 31}, {105, 32}, {105, 33}, {105, 34}, {105, 35}, {105, 36}, {105, 37}, {105, 38}, {106, 16}, {106, 19}, {106, 20}, {106, 21}, {106, 22}, {106, 23}, {106, 24}, {106, 25}, {106, 26}, {106, 27}, {106, 28}, {106, 29}, {106, 30}, {106, 31}, {106, 32}, {106, 33}, {106, 34}, {106, 35}, {106, 36}, {106, 37}, {106, 38}, {107, 16}, {107, 19}, {107, 20}, {107, 21}, {107, 22}, {107, 23}, {107, 24}, {107, 25}, {107, 26}, {107, 27}, {107, 28}, {107, 29}, {107, 30}, {107, 31}, {107, 32}, {107, 33}, {107, 34}, {107, 35}, {107, 36}, {107, 37}, {107, 38}, {108, 16}, {108, 18}, {108, 19}, {108, 20}, {108, 21}, {108, 22}, {108, 23}, {108, 24}, {108, 25}, {108, 26}, {108, 27}, {108, 28}, {108, 29}, {108, 30}, {108, 31}, {108, 32}, {108, 33}, {108, 34}, {108, 35}, {108, 36}, {108, 37}, {108, 38}, {109, 16}, {109, 18}, {109, 19}, {109, 20}, {109, 21}, {109, 22}, {109, 23}, {109, 24}, {109, 25}, {109, 26}, {109, 27}, {109, 28}, {109, 29}, {109, 30}, {109, 31}, {109, 32}, {109, 33}, {109, 34}, {109, 35}, {109, 36}, {109, 37}, {109, 38}, {110, 16}, {110, 17}, {110, 18}, {110, 19}, {110, 20}, {110, 21}, {110, 22}, {110, 23}, {110, 24}, {110, 25}, {110, 26}, {110, 27}, {110, 28}, {110, 29}, {110, 30}, {110, 31}, {110, 32}, {110, 33}, {110, 34}, {110, 35}, {110, 36}, {110, 37}, {110, 38}, {111, 16}, {111, 17}, {111, 18}, {111, 19}, {111, 20}, {111, 21}, {111, 22}, {111, 23}, {111, 24}, {111, 25}, {111, 26}, {111, 27}, {111, 28}, {111, 29}, {111, 30}, {111, 31}, {111, 32}, {111, 33}, {111, 34}, {111, 35}, {111, 36}, {111, 37}, {111, 38}, {112, 16}, {112, 17}, {112, 18}, {112, 19}, {112, 20}, {112, 21}, {112, 22}, {112, 23}, {112, 24}, {112, 25}, {112, 26}, {112, 27}, {112, 28}, {112, 29}, {112, 30}, {112, 31}, {112, 32}, {112, 33}, {112, 34}, {112, 35}, {112, 36}, {112, 37}, {112, 38}, {113, 16}, {113, 17}, {113, 18}, {113, 19}, {113, 20}, {113, 21}, {113, 22}, {113, 23}, {113, 24}, {113, 28}, {113, 29}, {113, 30}, {113, 31}, {113, 32}, {113, 33}, {113, 34}, {113, 35}, {113, 36}, {113, 37}, {113, 38}, {114, 16}, {114, 17}, {114, 18}, {114, 19}, {114, 20}, {114, 21}, {114, 22}, {114, 23}, {114, 24}, {114, 28}, {114, 29}, {114, 30}, {114, 31}, {114, 38}, {115, 16}, {115, 17}, {115, 18}, {115, 19}, {115, 20}, {115, 21}, {115, 22}, {115, 23}, {115, 24}, {115, 28}, {115, 29}, {115, 30}, {115, 38}, {116, 16}, {116, 17}, {116, 18}, {116, 19}, {116, 20}, {116, 21}, {117, 16}, {117, 17}, {117, 18}, {117, 19}, {117, 20}, {117, 21}, {118, 16}, {118, 17}, {118, 18}, {118, 19}, {118, 20}, {119, 16}, {119, 17}, {119, 18}, {119, 19}, {120, 16}, {120, 17}, {120, 18}, {120, 19}, {121, 16}, {121, 17}, {121, 18}, {121, 19}, {122, 16}, {122, 17}, {122, 18}, {122, 19}, {123, 16}, {123, 17}, {123, 18}, {123, 19}, {124, 16}, {124, 17}, {124, 18}, {124, 19}, {125, 16}, {125, 17}, {125, 18}, {126, 16}, {126, 17}, {126, 18}, {127, 16}, {127, 17}, {128, 16}, -- old map
				{452, 131}, {452, 132}, {452, 133}, {452, 134}, {452, 135}, {452, 136}, {452, 137}, {452, 138}, {452, 139}, {452, 140}, {452, 141}, {452, 142}, {452, 143}, {452, 144}, {452, 145}, {452, 146}, {452, 147}, {452, 148}, {452, 149}, {452, 150}, {452, 151}, {452, 152}, {452, 153},
				{453, 131}, {453, 132}, {453, 133}, {453, 134}, {453, 135}, {453, 136}, {453, 137}, {453, 138}, {453, 139}, {453, 140}, {453, 141}, {453, 142}, {453, 143}, {453, 146}, {453, 147}, {453, 148}, {453, 149}, {453, 150}, {453, 151}, {453, 152}, {453, 153},
				{454, 131}, {454, 132}, {454, 135}, {454, 136}, {454, 137}, {454, 138}, {454, 139}, {454, 140}, {454, 141}, {454, 142}, {454, 147}, {454, 148}, {454, 149}, {454, 150}, {454, 151}, {454, 152}, {454, 153},
				{455, 131}, {455, 132}, {455, 151}, {455, 152}, {455, 153},
				{456, 131}, {456, 151}, {456, 152}, {456, 153},
				{457, 131}, {457, 151}, {457, 152}, {457, 153},
				{458, 150}, {458, 151}, {458, 152}, {458, 153},
				{459, 150}, {459, 151}, {459, 152}, {459, 153},
				{460, 150}, {460, 151}, {460, 152}, {460, 153},
				{461, 151}, {461, 152}, {461, 153},
				{462, 153}
			}
		},
		BalearicSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 16.
			Name = "Balearic Sea",
			Tiles = {
				{116, 38}, {117, 38}, {118, 38}, {119, 37}, {119, 38}, {120, 35}, {120, 36}, {120, 37}, {121, 35}, {121, 36}, {121, 37}, {122, 33}, {122, 34}, {122, 35}, {122, 36}, {122, 37}, {123, 33}, {123, 34}, {123, 35}, {123, 36}, {123, 37}, {124, 33}, {124, 34}, {124, 35}, {124, 36}, {124, 37}, {125, 34}, {125, 35}, {125, 36}, {125, 37}, {126, 35}, -- old map
				{479, 143}, {479, 144},
				{480, 142}, {480, 143}, {480, 144}, {480, 145},
				{481, 141}, {481, 142}, {481, 143}, {481, 144}, {481, 145},
				{482, 140}, {482, 141}, {482, 142}, {482, 143}, {482, 144}, {482, 145},
				{483, 139}, {483, 140}, {483, 141}, {483, 142}, {483, 143}, {483, 144}, {483, 145},
				{484, 139}, {484, 140}, {484, 141}, {484, 142}, {484, 143}, {484, 144}, {484, 145},
				{485, 139}, {485, 140}, {485, 141}, {485, 142}, {485, 143}, {485, 144}, {485, 145},
				{486, 138}, {486, 139}, {486, 140}, {486, 141}, {486, 142}, {486, 143}, {486, 144}, {486, 145},
				{487, 138}, {487, 139}, {487, 140}, {487, 141}, {487, 142}, {487, 144}, {487, 145},
				{488, 137}, {488, 138}, {488, 139}, {488, 140}, {488, 141}, {488, 142}, {488, 144},
				{489, 137}, {489, 138}, {489, 139}, {489, 140}, {489, 141}, {489, 142}, {489, 144},
				{490, 139}, {490, 140}, {490, 141}, {490, 142}, {490, 143}, {490, 144},
				{491, 140}, {491, 141}, {491, 143}
			}
		},
		BalticSea = {
			Name = "Baltic Sea", -- Source: http://www.euratlas.net/history/europe/1/index.html
			ReferenceProvince = "Brandenburg", -- province used as a reference for this province's name
			CulturalNames = {
				MarcomanniTribe = "Suebic Sea",
				SuebiTribe = "Suebic Sea"
			},
			Tiles = {
				{128, 24}, {129, 24}, {130, 24}, {130, 25}, {131, 24}, {132, 20}, {132, 22}, {132, 23}, {132, 24}, {133, 19}, {133, 20}, {133, 21}, {133, 22}, {133, 24}, {134, 18}, {134, 19}, {134, 20}, {134, 21}, {134, 22}, {134, 23}, {134, 24}, {135, 17}, {135, 18}, {135, 21}, {135, 22}, {136, 17}, {136, 18}, {136, 21}, {136, 22}, {137, 17}, {137, 21}, {138, 21}, {139, 21}, {140, 21}, -- old map
				{511, 101},
				{512, 101},
				{513, 100}, {513, 101},
				{514, 99}, {514, 100}, {514, 101},
				{515, 99}, {515, 100},
				{516, 99}, {516, 100},
				{517, 98}, {517, 99}, {517, 100}, {517, 101},
				{518, 98}, {518, 99}, {518, 100}, {518, 101},
				{519, 98}, {519, 99}, {519, 100}, {519, 101}, {519, 102},
				{520, 97}, {520, 98}, {520, 99}, {520, 100}, {520, 101}, {520, 102},
				{521, 97}, {521, 98}, {521, 99}, {521, 100}, {521, 101}, {521, 102},
				{522, 96}, {522, 97}, {522, 98}, {522, 99}, {522, 100}, {522, 101},
				{523, 96}, {523, 97}, {523, 98}, {523, 99}, {523, 100}, {523, 101},
				{524, 96}, {524, 97}, {524, 98}, {524, 99}, {524, 100}, {524, 101},
				{525, 96}, {525, 97}, {525, 98}, {525, 99}, {525, 100}, {525, 101},
				{526, 95}, {526, 96}, {526, 97}, {526, 98}, {526, 99}, {526, 100},
				{527, 91}, {527, 92}, {527, 93}, {527, 94}, {527, 95}, {527, 96}, {527, 97}, {527, 98}, {527, 99}, {527, 100},
				{528, 89}, {528, 90}, {528, 91}, {528, 92}, {528, 93}, {528, 94}, {528, 95}, {528, 96}, {528, 97}, {528, 98}, {528, 99}, {528, 100},
				{529, 89}, {529, 90}, {529, 91}, {529, 92}, {529, 93}, {529, 94}, {529, 95}, {529, 96}, {529, 97}, {529, 98}, {529, 99},
				{530, 88}, {530, 89}, {530, 90}, {530, 91}, {530, 92}, {530, 93}, {530, 94}, {530, 95}, {530, 96}, {530, 97}, {530, 98}, {530, 99},
				{531, 88}, {531, 89}, {531, 90}, {531, 91}, {531, 92}, {531, 93}, {531, 94}, {531, 95}, {531, 96}, {531, 97}, {531, 98}, {531, 99},
				{532, 87}, {532, 88}, {532, 89}, {532, 90}, {532, 91}, {532, 94}, {532, 95}, {532, 96}, {532, 97}, {532, 98}, {532, 99},
				{533, 86}, {533, 87}, {533, 88}, {533, 89}, {533, 90}, {533, 93}, {533, 94}, {533, 95}, {533, 96}, {533, 97}, {533, 98}, {533, 99}, {533, 100},
				{534, 86}, {534, 87}, {534, 88}, {534, 89}, {534, 90}, {534, 91}, {534, 92}, {534, 93}, {534, 94}, {534, 95}, {534, 96}, {534, 97}, {534, 98}, {534, 99}, {534, 100},
				{535, 86}, {535, 87}, {535, 88}, {535, 89}, {535, 90}, {535, 91}, {535, 92}, {535, 93}, {535, 94}, {535, 95}, {535, 96}, {535, 97}, {535, 98}, {535, 99}, {535, 100},
				{536, 86}, {536, 87}, {536, 88}, {536, 89}, {536, 90}, {536, 91}, {536, 92}, {536, 93}, {536, 94}, {536, 95}, {536, 96}, {536, 97}, {536, 98}, {536, 99}, {536, 100},
				{537, 86}, {537, 87}, {537, 88}, {537, 89}, {537, 90}, {537, 91}, {537, 92}, {537, 93}, {537, 94}, {537, 95}, {537, 96}, {537, 97}, {537, 98}, {537, 99},
				{538, 86}, {538, 87}, {538, 88}, {538, 89}, {538, 90}, {538, 91}, {538, 92}, {538, 93}, {538, 94}, {538, 95}, {538, 96}, {538, 97}, {538, 98}, {538, 99},
				{539, 86}, {539, 87}, {539, 88}, {539, 89}, {539, 90}, {539, 91}, {539, 92}, {539, 93}, {539, 94}, {539, 95}, {539, 96}, {539, 97}, {539, 98}, {539, 99},
				{540, 86}, {540, 87}, {540, 88}, {540, 89}, {540, 90}, {540, 91}, {540, 92}, {540, 93},
				{541, 86}, {541, 87}, {541, 88}, {541, 89}, {541, 90}, {541, 91}, {541, 92},
				{542, 86}, {542, 87}, {542, 88}, {542, 89}, {542, 90},
				{543, 86}, {543, 87}, {543, 88},
				{544, 86}
			}
		},
		BayOfBiscay = {
			Name = "Bay of Biscay",
			Tiles = {
				{114, 32}, {115, 31}, {115, 32}, {116, 29}, {116, 30}, {116, 31}, {116, 32}, {117, 30}, {117, 31}, {117, 32}, {118, 31}, {118, 32}, -- old map
				{458, 131},
				{459, 130}, {459, 131},
				{460, 129}, {460, 130}, {460, 131},
				{461, 127}, {461, 128}, {461, 129}, {461, 130}, {461, 131},
				{462, 126}, {462, 127}, {462, 128}, {462, 129}, {462, 130}, {462, 131},
				{463, 125}, {463, 126}, {463, 127}, {463, 128}, {463, 129}, {463, 130}, {463, 131},
				{464, 123}, {464, 124}, {464, 125}, {464, 126}, {464, 127}, {464, 128}, {464, 129}, {464, 130}, {464, 131},
				{465, 122}, {465, 123}, {465, 124}, {465, 125}, {465, 126}, {465, 127}, {465, 128}, {465, 129}, {465, 130}, {465, 131},
				{466, 121}, {466, 122}, {466, 123}, {466, 124}, {466, 125}, {466, 126}, {466, 127}, {466, 128}, {466, 129}, {466, 130}, {466, 131}, {466, 132},
				{467, 120}, {467, 121}, {467, 122}, {467, 123}, {467, 124}, {467, 125}, {467, 126}, {467, 127}, {467, 128}, {467, 129}, {467, 130}, {467, 131}, {467, 132},
				{468, 120}, {468, 121}, {468, 122}, {468, 123}, {468, 124}, {468, 125}, {468, 126}, {468, 127}, {468, 128}, {468, 129}, {468, 130}, {468, 131},
				{469, 120}, {469, 121}, {469, 122}, {469, 123}, {469, 124}, {469, 125}, {469, 126}, {469, 127}, {469, 128}, {469, 129}, {469, 130}, {469, 131},
				{470, 120}, {470, 121}, {470, 122}, {470, 123}, {470, 124}, {470, 125}, {470, 126}, {470, 127}, {470, 128}, {470, 129}, {470, 130}, {470, 131}, {470, 132},
				{471, 121}, {471, 122}, {471, 123}, {471, 124}, {471, 125}, {471, 126}, {471, 127}, {471, 128}, {471, 129}, {471, 130}, {471, 131}, {471, 132},
				{472, 121}, {472, 122}, {472, 123}, {472, 124}, {472, 125}, {472, 126}, {472, 127}, {472, 128}, {472, 129}, {472, 130}, {472, 131}, {472, 132},
				{473, 122}, {473, 123}, {473, 124}, {473, 125}, {473, 126}, {473, 127}, {473, 128}, {473, 129}, {473, 130}, {473, 131}, {473, 132},
				{474, 123}, {474, 124}, {474, 125}, {474, 126}, {474, 127}, {474, 128}, {474, 129}, {474, 130}, {474, 131}, {474, 132},
				{475, 124}, {475, 125}, {475, 126}, {475, 127}, {475, 128}, {475, 129}, {475, 130}, {475, 131},
				{476, 124}, {476, 125}, {476, 126}, {476, 127}, {476, 128}
			}
		},
		BlackSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 18.
			Name = "Black Sea",
			Tiles = {
				{140, 33}, {140, 34}, {141, 31}, {141, 32}, {141, 33}, {141, 34}, {142, 31}, {142, 32}, {142, 33}, {142, 34}, {143, 31}, {143, 32}, {143, 33}, {144, 32}, {144, 33}, {145, 31}, {145, 32}, {145, 33}, {146, 31}, {146, 32}, {146, 33}, {146, 34}, {147, 33}, {147, 34}, {148, 33}, {148, 34}, -- old map
				{559, 133}, {559, 134}, {559, 135},
				{560, 133}, {560, 134}, {560, 135}, {560, 136}, {560, 137},
				{561, 130}, {561, 131}, {561, 132}, {561, 133}, {561, 134}, {561, 135}, {561, 136}, {561, 137},
				{562, 129}, {562, 130}, {562, 131}, {562, 132}, {562, 133}, {562, 134}, {562, 135}, {562, 136}, {562, 137}, {562, 138},
				{563, 129}, {563, 130}, {563, 131}, {563, 132}, {563, 133}, {563, 134}, {563, 135}, {563, 136}, {563, 137}, {563, 138},
				{564, 126}, {564, 127}, {564, 128}, {564, 129}, {564, 130}, {564, 131}, {564, 132}, {564, 133}, {564, 134}, {564, 135}, {564, 136}, {564, 137}, {564, 138},
				{565, 126}, {565, 127}, {565, 128}, {565, 129}, {565, 130}, {565, 131}, {565, 132}, {565, 133}, {565, 134}, {565, 135}, {565, 136}, {565, 137}, {565, 138},
				{566, 125}, {566, 126}, {566, 127}, {566, 128}, {566, 129}, {566, 130}, {566, 131}, {566, 132}, {566, 133}, {566, 134}, {566, 135}, {566, 136}, {566, 137}, {566, 138},
				{567, 124}, {567, 125}, {567, 126}, {567, 127}, {567, 128}, {567, 129}, {567, 130}, {567, 131}, {567, 132}, {567, 133}, {567, 134}, {567, 135}, {567, 136}, {567, 137}, {567, 138},
				{568, 123}, {568, 124}, {568, 125}, {568, 126}, {568, 127}, {568, 128}, {568, 129}, {568, 130}, {568, 131}, {568, 132}, {568, 133}, {568, 134}, {568, 135}, {568, 136}, {568, 137}, {568, 138},
				{569, 123}, {569, 124}, {569, 125}, {569, 126}, {569, 127}, {569, 128}, {569, 129}, {569, 130}, {569, 131}, {569, 132}, {569, 133}, {569, 134}, {569, 135}, {569, 136}, {569, 137}, {569, 138},
				{570, 123}, {570, 124}, {570, 125}, {570, 126}, {570, 127}, {570, 128}, {570, 129}, {570, 130}, {570, 131}, {570, 132}, {570, 133}, {570, 134}, {570, 135}, {570, 136}, {570, 137},
				{571, 125}, {571, 126}, {571, 127}, {571, 128}, {571, 129}, {571, 130}, {571, 131}, {571, 132}, {571, 133}, {571, 134}, {571, 135}, {571, 136}, {571, 137},
				{572, 125}, {572, 126}, {572, 127}, {572, 128}, {572, 129}, {572, 130}, {572, 131}, {572, 132}, {572, 133}, {572, 134}, {572, 135}, {572, 136},
				{573, 125}, {573, 127}, {573, 128}, {573, 129}, {573, 130}, {573, 131}, {573, 132}, {573, 133}, {573, 134}, {573, 135}, {573, 136},
				{574, 125}, {574, 127}, {574, 128}, {574, 129}, {574, 130}, {574, 131}, {574, 132}, {574, 133}, {574, 134}, {574, 135}, {574, 136},
				{575, 125}, {575, 128}, {575, 129}, {575, 130}, {575, 131}, {575, 132}, {575, 133}, {575, 134}, {575, 135}, {575, 136},
				{576, 130}, {576, 131}, {576, 132}, {576, 133}, {576, 134}, {576, 135}, {576, 136},
				{577, 129}, {577, 130}, {577, 131}, {577, 132}, {577, 133}, {577, 134}, {577, 135}, {577, 136},
				{578, 129}, {578, 130}, {578, 131}, {578, 132}, {578, 133}, {578, 134}, {578, 135}, {578, 136},
				{579, 129}, {579, 130}, {579, 131}, {579, 132}, {579, 133}, {579, 134}, {579, 135}, {579, 136},
				{580, 128}, {580, 129}, {580, 130}, {580, 131}, {580, 132}, {580, 133}, {580, 134}, {580, 135}, {580, 136},
				{581, 128}, {581, 129}, {581, 130}, {581, 131}, {581, 132}, {581, 133}, {581, 134}, {581, 135}, {581, 136}, {581, 137},
				{582, 128}, {582, 129}, {582, 130}, {582, 131}, {582, 132}, {582, 133}, {582, 134}, {582, 135}, {582, 136}, {582, 137},
				{583, 128}, {583, 129}, {583, 130}, {583, 131}, {583, 132}, {583, 133}, {583, 134}, {583, 135}, {583, 136}, {583, 137}, {583, 138},
				{584, 128}, {584, 129}, {584, 130}, {584, 131}, {584, 132}, {584, 133}, {584, 134}, {584, 135}, {584, 136}, {584, 137},
				{585, 128}, {585, 129}, {585, 130}, {585, 131}, {585, 132}, {585, 133}, {585, 134}, {585, 135}, {585, 136}, {585, 137}, {585, 138},
				{586, 129}, {586, 130}, {586, 131}, {586, 132}, {586, 133}, {586, 134}, {586, 135}, {586, 136}, {586, 137}, {586, 138},
				{587, 129}, {587, 130}, {587, 131}, {587, 132}, {587, 133}, {587, 134}, {587, 135}, {587, 136}, {587, 137}, {587, 138},
				{588, 130}, {588, 131}, {588, 132}, {588, 133}, {588, 134}, {588, 135}, {588, 136}, {588, 137}, {588, 138}, {588, 139},
				{589, 130}, {589, 131}, {589, 132}, {589, 133}, {589, 134}, {589, 135}, {589, 136}, {589, 137}, {589, 138}, {589, 139},
				{590, 130}, {590, 131}, {590, 132}, {590, 133}, {590, 134}, {590, 135}, {590, 136}, {590, 137}, {590, 138},
				{591, 131}, {591, 132}, {591, 133}, {591, 134}, {591, 135}, {591, 136}, {591, 137}, {591, 138},
				{592, 132}, {592, 133}, {592, 134}, {592, 135}, {592, 136}, {592, 137}, {592, 138},
				{593, 132}, {593, 133}, {593, 134}, {593, 135}, {593, 136}, {593, 137}, {593, 138}, {593, 139},
				{594, 133}, {594, 134}, {594, 135}, {594, 136}, {594, 137}, {594, 138}, {594, 139},
				{595, 133}, {595, 134}, {595, 135}, {595, 136}, {595, 137}, {595, 138},
				{596, 134}, {596, 135}, {596, 136}, {596, 137}, {596, 138},
				{597, 134}, {597, 135}, {597, 136}, {597, 137},
				{598, 136}
			}
		},
		BristolChannel = { -- Source: "Limits of Oceans and Seas", 1953, p. 13. (see corrections as well)
			Name = "Bristol Channel",
			Tiles = {
				{466, 109},
				{467, 109}, {467, 110},
				{468, 109}
			}
		},
		CelticSea = { -- Source: "Limits of Oceans and Seas", 1953. (see corrections)
			Name = "Celtic Sea",
			Tiles = {
				{447, 110}, {447, 111}, {447, 112}, {447, 113}, {447, 114}, {447, 115}, {447, 116},
				{448, 110}, {448, 111}, {448, 112}, {448, 113}, {448, 114}, {448, 115}, {448, 116},
				{449, 110}, {449, 111}, {449, 112}, {449, 113}, {449, 114}, {449, 115}, {449, 116}, {449, 117},
				{450, 110}, {450, 111}, {450, 112}, {450, 113}, {450, 114}, {450, 115}, {450, 116}, {450, 117},
				{451, 110}, {451, 111}, {451, 112}, {451, 113}, {451, 114}, {451, 115}, {451, 116}, {451, 117}, {451, 118},
				{452, 109}, {452, 110}, {452, 111}, {452, 112}, {452, 113}, {452, 114}, {452, 115}, {452, 116}, {452, 117}, {452, 118},
				{453, 110}, {453, 111}, {453, 112}, {453, 113}, {453, 114}, {453, 115}, {453, 116}, {453, 117}, {453, 118}, {453, 119},
				{454, 109}, {454, 110}, {454, 111}, {454, 112}, {454, 113}, {454, 114}, {454, 115}, {454, 116}, {454, 117}, {454, 118}, {454, 119},
				{455, 109}, {455, 110}, {455, 111}, {455, 112}, {455, 113}, {455, 114}, {455, 115}, {455, 116}, {455, 117}, {455, 118}, {455, 119}, {455, 120},
				{456, 109}, {456, 110}, {456, 111}, {456, 112}, {456, 113}, {456, 114}, {456, 115}, {456, 116}, {456, 117}, {456, 118}, {456, 119}, {456, 120}, {456, 121},
				{457, 108}, {457, 109}, {457, 110}, {457, 111}, {457, 112}, {457, 113}, {457, 114}, {457, 115}, {457, 116}, {457, 117}, {457, 118}, {457, 119}, {457, 120}, {457, 121},
				{458, 108}, {458, 109}, {458, 110}, {458, 111}, {458, 112}, {458, 113}, {458, 114}, {458, 115}, {458, 116}, {458, 117}, {458, 118}, {458, 119}, {458, 120}, {458, 121}, {458, 122},
				{459, 108}, {459, 109}, {459, 110}, {459, 111}, {459, 112}, {459, 113}, {459, 114}, {459, 115}, {459, 116}, {459, 117}, {459, 118}, {459, 119}, {459, 120}, {459, 121}, {459, 122},
				{460, 108}, {460, 109}, {460, 110}, {460, 111}, {460, 112}, {460, 113}, {460, 114}, {460, 115}, {460, 116}, {460, 117}, {460, 118}, {460, 119}, {460, 120}, {460, 121}, {460, 122}, {460, 123},
				{461, 107}, {461, 108}, {461, 109}, {461, 110}, {461, 111}, {461, 112}, {461, 113}, {461, 114}, {461, 115}, {461, 116}, {461, 117}, {461, 118}, {461, 119}, {461, 120}, {461, 121}, {461, 122}, {461, 123},
				{462, 108}, {462, 109}, {462, 110}, {462, 111}, {462, 112}, {462, 113}, {462, 114}, {462, 115}, {462, 116}, {462, 117}, {462, 118}, {462, 119}, {462, 120}, {462, 121}, {462, 122}, {462, 123}, {462, 124},
				{463, 108}, {463, 109}, {463, 110}, {463, 111}, {463, 112}, {463, 113}, {463, 114}, {463, 115}, {463, 116}, {463, 117}, {463, 118}, {463, 119}, {463, 120}, {463, 121}, {463, 122}, {463, 123}, {463, 124},
				{464, 108}, {464, 109}, {464, 110}, {464, 111}, {464, 112}, {464, 115}, {464, 116}, {464, 117}, {464, 118}, {464, 119}, {464, 120}, {464, 121}, {464, 122},
				{465, 109}, {465, 110}, {465, 111}, {465, 117}, {465, 118}, {465, 119}, {465, 120}, {465, 121},
				{466, 110}, {466, 111}, {466, 118}, {466, 119}, {466, 120},
			}
		},
		EasternMediterraneanSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 15.
			Name = "Eastern Mediterranean Sea",
			Tiles = {
				{509, 158}, {509, 159},
				{510, 152}, {510, 153}, {510, 157}, {510, 158}, {510, 159}, {510, 160},
				{511, 150}, {511, 151}, {511, 152}, {511, 153}, {511, 154}, {511, 155}, {511, 156}, {511, 157}, {511, 158}, {511, 159}, {511, 160},
				{512, 150}, {512, 151}, {512, 152}, {512, 153}, {512, 154}, {512, 155}, {512, 156}, {512, 157}, {512, 158}, {512, 159}, {512, 160}, {512, 161},
				{513, 149}, {513, 150}, {513, 151}, {513, 152}, {513, 153}, {513, 154}, {513, 155}, {513, 156}, {513, 157}, {513, 158}, {513, 159}, {513, 160}, {513, 161},
				{514, 149}, {514, 150}, {514, 151}, {514, 152}, {514, 153}, {514, 154}, {514, 155}, {514, 156}, {514, 157}, {514, 158}, {514, 159}, {514, 160}, {514, 161},
				{515, 149}, {515, 150}, {515, 151}, {515, 152}, {515, 153}, {515, 154}, {515, 155}, {515, 156}, {515, 157}, {515, 158}, {515, 159}, {515, 160}, {515, 161}, {515, 162},
				{516, 149}, {516, 150}, {516, 151}, {516, 152}, {516, 153}, {516, 154}, {516, 155}, {516, 156}, {516, 157}, {516, 158}, {516, 159}, {516, 160}, {516, 161}, {516, 162},
				{517, 149}, {517, 150}, {517, 151}, {517, 152}, {517, 153}, {517, 154}, {517, 155}, {517, 156}, {517, 157}, {517, 158}, {517, 159}, {517, 160}, {517, 161}, {517, 162},
				{518, 150}, {518, 151}, {518, 152}, {518, 153}, {518, 154}, {518, 155}, {518, 156}, {518, 157}, {518, 158}, {518, 159}, {518, 160}, {518, 161}, {518, 162},
				{519, 150}, {519, 151}, {519, 152}, {519, 153}, {519, 154}, {519, 155}, {519, 156}, {519, 157}, {519, 158}, {519, 159}, {519, 160}, {519, 161}, {519, 162},
				{520, 151}, {520, 152}, {520, 153}, {520, 154}, {520, 155}, {520, 156}, {520, 157}, {520, 158}, {520, 159}, {520, 160}, {520, 161}, {520, 162},
				{521, 151}, {521, 152}, {521, 154}, {521, 155}, {521, 156}, {521, 157}, {521, 158}, {521, 159}, {521, 160}, {521, 161}, {521, 162}, {521, 163},
				{522, 152}, {522, 153}, {522, 154}, {522, 155}, {522, 156}, {522, 157}, {522, 158}, {522, 159}, {522, 160}, {522, 161}, {522, 162}, {522, 163},
				{523, 152}, {523, 153}, {523, 154}, {523, 155}, {523, 156}, {523, 157}, {523, 158}, {523, 159}, {523, 160}, {523, 161}, {523, 162}, {523, 163},
				{524, 152}, {524, 153}, {524, 154}, {524, 155}, {524, 156}, {524, 157}, {524, 158}, {524, 159}, {524, 160}, {524, 161}, {524, 162}, {524, 163}, {524, 164}, {524, 165},
				{525, 152}, {525, 153}, {525, 154}, {525, 155}, {525, 156}, {525, 157}, {525, 158}, {525, 159}, {525, 160}, {525, 161}, {525, 162}, {525, 163}, {525, 164}, {525, 165}, {525, 166},
				{526, 152}, {526, 153}, {526, 154}, {526, 155}, {526, 156}, {526, 157}, {526, 158}, {526, 159}, {526, 160}, {526, 161}, {526, 162}, {526, 163}, {526, 164}, {526, 165}, {526, 166},
				{527, 152}, {527, 153}, {527, 154}, {527, 155}, {527, 156}, {527, 157}, {527, 158}, {527, 159}, {527, 160}, {527, 161}, {527, 162}, {527, 163}, {527, 164}, {527, 165}, {527, 166},
				{528, 152}, {528, 153}, {528, 154}, {528, 155}, {528, 156}, {528, 157}, {528, 158}, {528, 159}, {528, 160}, {528, 161}, {528, 162}, {528, 163}, {528, 164}, {528, 165}, {528, 166},
				{529, 152}, {529, 153}, {529, 154}, {529, 155}, {529, 156}, {529, 157}, {529, 158}, {529, 159}, {529, 160}, {529, 161}, {529, 162}, {529, 163}, {529, 164}, {529, 165}, {529, 166}, {529, 167},
				{530, 152}, {530, 153}, {530, 154}, {530, 155}, {530, 156}, {530, 157}, {530, 158}, {530, 159}, {530, 160}, {530, 161}, {530, 162}, {530, 163}, {530, 164}, {530, 165}, {530, 166}, {530, 167},
				{531, 152}, {531, 153}, {531, 154}, {531, 155}, {531, 156}, {531, 157}, {531, 158}, {531, 159}, {531, 160}, {531, 161}, {531, 162}, {531, 163}, {531, 164}, {531, 165}, {531, 166}, {531, 167},
				{532, 152}, {532, 153}, {532, 154}, {532, 155}, {532, 156}, {532, 157}, {532, 158}, {532, 159}, {532, 160}, {532, 161}, {532, 162}, {532, 163}, {532, 164}, {532, 165}, {532, 166}, {532, 167}, {532, 168},
				{533, 152}, {533, 153}, {533, 154}, {533, 155}, {533, 156}, {533, 157}, {533, 158}, {533, 159}, {533, 160}, {533, 161}, {533, 162}, {533, 163}, {533, 164}, {533, 165}, {533, 166}, {533, 167}, {533, 168}, {533, 169},
				{534, 152}, {534, 153}, {534, 154}, {534, 155}, {534, 156}, {534, 157}, {534, 158}, {534, 159}, {534, 160}, {534, 161}, {534, 162}, {534, 163}, {534, 164}, {534, 165}, {534, 166}, {534, 167}, {534, 168}, {534, 169},
				{535, 152}, {535, 153}, {535, 154}, {535, 155}, {535, 156}, {535, 157}, {535, 158}, {535, 159}, {535, 160}, {535, 161}, {535, 162}, {535, 163}, {535, 164}, {535, 165}, {535, 166}, {535, 167}, {535, 168}, {535, 169},
				{536, 152}, {536, 153}, {536, 154}, {536, 155}, {536, 156}, {536, 157}, {536, 158}, {536, 159}, {536, 160}, {536, 161}, {536, 162}, {536, 163}, {536, 164}, {536, 165}, {536, 166}, {536, 167}, {536, 168},
				{537, 152}, {537, 153}, {537, 154}, {537, 155}, {537, 156}, {537, 157}, {537, 158}, {537, 159}, {537, 160}, {537, 161}, {537, 162}, {537, 163},
				{538, 152}, {538, 153}, {538, 154}, {538, 155}, {538, 156}, {538, 157}, {538, 158}, {538, 159}, {538, 160}, {538, 161}, {538, 162},
				{539, 152}, {539, 153}, {539, 154}, {539, 155}, {539, 156}, {539, 157}, {539, 158}, {539, 159}, {539, 160}, {539, 161}, {539, 162},
				{540, 152}, {540, 153}, {540, 154}, {540, 155}, {540, 156}, {540, 157}, {540, 158}, {540, 159}, {540, 160}, {540, 161}, {540, 162},
				{541, 152}, {541, 153}, {541, 154}, {541, 155}, {541, 156}, {541, 157}, {541, 158}, {541, 159}, {541, 160}, {541, 161},
				{542, 152}, {542, 153}, {542, 154}, {542, 155}, {542, 156}, {542, 157}, {542, 158}, {542, 159}, {542, 160}, {542, 161},
				{543, 152}, {543, 153}, {543, 154}, {543, 155}, {543, 156}, {543, 157}, {543, 158}, {543, 159}, {543, 160}, {543, 161}, {543, 162},
				{544, 151}, {544, 152}, {544, 153}, {544, 154}, {544, 155}, {544, 156}, {544, 157}, {544, 158}, {544, 159}, {544, 160}, {544, 161}, {544, 162},
				{545, 153}, {545, 154}, {545, 155}, {545, 156}, {545, 157}, {545, 158}, {545, 159}, {545, 160}, {545, 161}, {545, 162},
				{546, 154}, {546, 155}, {546, 156}, {546, 157}, {546, 158}, {546, 159}, {546, 160}, {546, 161}, {546, 162}, {546, 163},
				{547, 156}, {547, 157}, {547, 158}, {547, 159}, {547, 160}, {547, 161}, {547, 162}, {547, 163}, {547, 164},
				{548, 156}, {548, 157}, {548, 158}, {548, 159}, {548, 160}, {548, 161}, {548, 162}, {548, 163}, {548, 164},
				{549, 156}, {549, 157}, {549, 158}, {549, 159}, {549, 160}, {549, 161}, {549, 162}, {549, 163}, {549, 164},
				{550, 157}, {550, 158}, {550, 159}, {550, 160}, {550, 161}, {550, 162}, {550, 163}, {550, 164},
				{551, 157}, {551, 158}, {551, 159}, {551, 160}, {551, 161}, {551, 162}, {551, 163}, {551, 164}, {551, 165},
				{552, 157}, {552, 158}, {552, 159}, {552, 160}, {552, 161}, {552, 162}, {552, 163}, {552, 164}, {552, 165},
				{553, 157}, {553, 158}, {553, 159}, {553, 160}, {553, 161}, {553, 162}, {553, 163}, {553, 164}, {553, 165},
				{554, 157}, {554, 158}, {554, 159}, {554, 160}, {554, 161}, {554, 162}, {554, 163}, {554, 164}, {554, 165},
				{555, 156}, {555, 157}, {555, 158}, {555, 159}, {555, 160}, {555, 161}, {555, 162}, {555, 163}, {555, 164}, {555, 165},
				{556, 156}, {556, 157}, {556, 158}, {556, 159}, {556, 160}, {556, 161}, {556, 162}, {556, 163}, {556, 164}, {556, 165}, {556, 166},
				{557, 155}, {557, 156}, {557, 157}, {557, 158}, {557, 159}, {557, 160}, {557, 161}, {557, 162}, {557, 163}, {557, 164}, {557, 165}, {557, 166},
				{558, 154}, {558, 155}, {558, 156}, {558, 157}, {558, 158}, {558, 159}, {558, 160}, {558, 161}, {558, 162}, {558, 163}, {558, 164}, {558, 165}, {558, 166},
				{559, 154}, {559, 155}, {559, 156}, {559, 157}, {559, 158}, {559, 159}, {559, 160}, {559, 161}, {559, 162}, {559, 163}, {559, 164}, {559, 165}, {559, 166},
				{560, 151}, {560, 152}, {560, 153}, {560, 154}, {560, 155}, {560, 156}, {560, 157}, {560, 158}, {560, 159}, {560, 160}, {560, 161}, {560, 162}, {560, 163}, {560, 164}, {560, 165}, {560, 166}, {560, 167},
				{561, 152}, {561, 153}, {561, 154}, {561, 155}, {561, 156}, {561, 157}, {561, 158}, {561, 159}, {561, 160}, {561, 161}, {561, 162}, {561, 163}, {561, 164}, {561, 165}, {561, 166}, {561, 167},
				{562, 152}, {562, 153}, {562, 154}, {562, 155}, {562, 156}, {562, 157}, {562, 158}, {562, 159}, {562, 160}, {562, 161}, {562, 162}, {562, 163}, {562, 164}, {562, 165}, {562, 166}, {562, 167},
				{563, 153}, {563, 154}, {563, 155}, {563, 156}, {563, 157}, {563, 158}, {563, 159}, {563, 160}, {563, 161}, {563, 162}, {563, 163}, {563, 164}, {563, 165}, {563, 166}, {563, 167},
				{564, 153}, {564, 154}, {564, 155}, {564, 156}, {564, 157}, {564, 158}, {564, 159}, {564, 160}, {564, 161}, {564, 162}, {564, 163}, {564, 164}, {564, 165}, {564, 166}, {564, 167},
				{565, 153}, {565, 154}, {565, 155}, {565, 156}, {565, 157}, {565, 158}, {565, 159}, {565, 160}, {565, 161}, {565, 162}, {565, 163}, {565, 164}, {565, 165}, {565, 166},
				{566, 153}, {566, 154}, {566, 155}, {566, 156}, {566, 157}, {566, 158}, {566, 159}, {566, 160}, {566, 161}, {566, 162}, {566, 163}, {566, 164}, {566, 165}, {566, 166},
				{567, 151}, {567, 152}, {567, 153}, {567, 154}, {567, 155}, {567, 156}, {567, 157}, {567, 158}, {567, 159}, {567, 160}, {567, 161}, {567, 162}, {567, 163}, {567, 164}, {567, 165}, {567, 166},
				{568, 151}, {568, 152}, {568, 153}, {568, 154}, {568, 155}, {568, 156}, {568, 157}, {568, 158}, {568, 159}, {568, 160}, {568, 161}, {568, 162}, {568, 163}, {568, 164}, {568, 165},
				{569, 151}, {569, 152}, {569, 153}, {569, 154}, {569, 155}, {569, 156}, {569, 157}, {569, 158}, {569, 159}, {569, 160}, {569, 161}, {569, 162}, {569, 163}, {569, 164}, {569, 165},
				{570, 152}, {570, 153}, {570, 154}, {570, 155}, {570, 156}, {570, 157}, {570, 158}, {570, 159}, {570, 160}, {570, 161}, {570, 162}, {570, 163}, {570, 164}, {570, 165}, {570, 166},
				{571, 152}, {571, 153}, {571, 154}, {571, 155}, {571, 156}, {571, 157}, {571, 158}, {571, 159}, {571, 160}, {571, 161}, {571, 162}, {571, 163}, {571, 164}, {571, 165}, {571, 166},
				{572, 153}, {572, 154}, {572, 155}, {572, 157}, {572, 158}, {572, 159}, {572, 160}, {572, 161}, {572, 162}, {572, 163}, {572, 164}, {572, 165}, {572, 166}, {572, 167},
				{573, 153}, {573, 154}, {573, 155}, {573, 158}, {573, 159}, {573, 160}, {573, 161}, {573, 162}, {573, 163}, {573, 164}, {573, 165}, {573, 166}, {573, 167},
				{574, 153}, {574, 154}, {574, 157}, {574, 158}, {574, 159}, {574, 160}, {574, 161}, {574, 162}, {574, 163}, {574, 164}, {574, 165}, {574, 166}, {574, 167},
				{575, 153}, {575, 154}, {575, 157}, {575, 158}, {575, 159}, {575, 160}, {575, 161}, {575, 162}, {575, 163}, {575, 164}, {575, 165}, {575, 166},
				{576, 153}, {576, 154}, {576, 157}, {576, 158}, {576, 159}, {576, 160}, {576, 161}, {576, 162}, {576, 163}, {576, 164}, {576, 165}, {576, 166},
				{577, 152}, {577, 153}, {577, 154}, {577, 155}, {577, 156}, {577, 157}, {577, 158}, {577, 159}, {577, 160}, {577, 161}, {577, 162}, {577, 163}, {577, 164}, {577, 165}, {577, 166},
				{578, 151}, {578, 152}, {578, 153}, {578, 154}, {578, 155}, {578, 156}, {578, 157}, {578, 158}, {578, 159}, {578, 160}, {578, 161}, {578, 162}, {578, 163}, {578, 164}, {578, 165},
				{579, 152}, {579, 153}, {579, 154}, {579, 155}, {579, 156}, {579, 157}, {579, 158}, {579, 159}, {579, 160}, {579, 161}, {579, 162},
				{580, 152}, {580, 153}, {580, 154}, {580, 155}, {580, 156}, {580, 157}, {580, 158}, {580, 159}, {580, 160},
				{581, 151}, {581, 152}, {581, 153}, {581, 154}, {581, 155}, {581, 156}, {581, 157}, {581, 158},
				{582, 151}
			}
		},
		EnglishChannel = {
			Name = "English Channel",
			ReferenceProvince = "England", -- province used as a reference for this province's name
			CulturalNames = {
				celt = "British Ocean",
				latin = "British Ocean",
				teuton = "England",
				England = "English Channel",
				SaxonTribe = "English Channel"
			},
			Tiles = {
				{116, 28}, {117, 28}, {118, 28}, {119, 28}, {120, 27}, {120, 28}, -- old map
				{464, 114},
				{465, 114}, {465, 115}, {465, 116},
				{466, 113}, {466, 114}, {466, 115}, {466, 116}, {466, 117},
				{467, 113}, {467, 114}, {467, 115}, {467, 116}, {467, 117},
				{468, 113}, {468, 114}, {468, 115}, {468, 116}, {468, 117},
				{469, 113}, {469, 114}, {469, 115}, {469, 116},
				{470, 112}, {470, 113}, {470, 114}, {470, 115}, {470, 116},
				{471, 112}, {471, 113}, {471, 114}, {471, 115}, {471, 116},
				{472, 112}, {472, 113}, {472, 114}, {472, 115}, {472, 116}, {472, 117},
				{473, 112}, {473, 113}, {473, 114}, {473, 115}, {473, 116}, {473, 117},
				{474, 112}, {474, 113}, {474, 114}, {474, 115}, {474, 116}, {474, 117},
				{475, 112}, {475, 113}, {475, 114}, {475, 116}, {475, 117},
				{476, 112}, {476, 113}, {476, 114},
				{477, 112}, {477, 113}, {477, 114}, {477, 115},
				{478, 112}, {478, 113}, {478, 114}, {478, 115},
				{479, 111}, {479, 112}, {479, 113}, {479, 114}, {479, 115},
				{480, 112}, {480, 113}, {480, 114},
				{481, 111}, {481, 112}, {481, 113},
				{482, 111}, {482, 112}, {482, 113},
				{483, 111}, {483, 112}, {483, 113},
				{484, 111}, {484, 112}
			}
		},
		GulfOfBothnia = { -- Source: "Limits of Oceans and Seas", 1953, p. 5.
			Name = "Gulf of Bothnia",
			Tiles = {
				{529, 80}, {529, 81}, {529, 82},
				{530, 78}, {530, 79}, {530, 80}, {530, 81}, {530, 82}, {530, 83},
				{531, 77}, {531, 78}, {531, 79}, {531, 80}, {531, 81}, {531, 82}, {531, 83},
				{532, 77}, {532, 78}, {532, 79}, {532, 80}, {532, 81}, {532, 82}, {532, 83}, {532, 84},
				{533, 76}, {533, 77}, {533, 78}, {533, 79}, {533, 80}, {533, 81}, {533, 82}, {533, 83}, {533, 84},
				{534, 76}, {534, 77}, {534, 78}, {534, 79}, {534, 80}, {534, 81}, {534, 82}, {534, 83}, {534, 84}, {534, 85},
				{535, 75}, {535, 76}, {535, 77}, {535, 78}, {535, 79}, {535, 80}, {535, 81}, {535, 82}, {535, 83}, {535, 84}, {535, 85},
				{536, 75}, {536, 76}, {536, 77}, {536, 78}, {536, 79}, {536, 80}, {536, 81}, {536, 82}, {536, 83}, {536, 84}, {536, 85},
				{537, 75}, {537, 76}, {537, 77}, {537, 78}, {537, 79}, {537, 80}, {537, 81}, {537, 82}, {537, 83}, {537, 84}, {537, 85},
				{538, 75}, {538, 76}, {538, 77}, {538, 78}, {538, 79}, {538, 80}, {538, 81}, {538, 82}, {538, 83}, {538, 84}, {538, 85},
				{539, 74}, {539, 75}, {539, 76}, {539, 77}, {539, 78}, {539, 79}, {539, 80}, {539, 81}, {539, 82}, {539, 83}, {539, 84}, {539, 85},
				{540, 71}, {540, 73}, {540, 74}, {540, 75}, {540, 76}, {540, 79}, {540, 80}, {540, 81}, {540, 82}, {540, 83}, {540, 84}, {540, 85},
				{541, 70}, {541, 71}, {541, 72}, {541, 73}, {541, 74}, {541, 75}, {541, 84}, {541, 85},
				{542, 70}, {542, 71}, {542, 72}, {542, 73}, {542, 74}, {542, 75}, {542, 84}, {542, 85},
				{543, 69}, {543, 70}, {543, 71}, {543, 72}, {543, 73}, {543, 74}, {543, 75}, {543, 84}, {543, 85},
				{544, 69}, {544, 70}, {544, 71}, {544, 72}, {544, 73}, {544, 74}, {544, 85},
				{545, 69}, {545, 70}, {545, 71}, {545, 72}, {545, 73},
				{546, 69}, {546, 70}, {546, 71}, {546, 72}, {546, 73},
				{547, 69}, {547, 70}, {547, 71}, {547, 72},
				{548, 69}, {548, 70}, {548, 71}, {548, 72},
				{549, 69}, {549, 70}, {549, 71},
				{550, 69}, {550, 70}, {550, 71},
				{551, 69}, {551, 70}
			}
		},
		GulfOfFinland = { -- Source: "Limits of Oceans and Seas", 1953, p. 5.
			Name = "Gulf of Finland",
			Tiles = {
				{545, 86},
				{546, 86},
				{547, 85}, {547, 86},
				{548, 85}, {548, 86},
				{549, 85}, {549, 86},
				{550, 85}, {550, 86},
				{551, 85}, {551, 86},
				{552, 85}, {552, 86},
				{553, 85}, {553, 86},
				{554, 84}, {554, 85}, {554, 86},
				{555, 84}, {555, 85}, {555, 86},
				{556, 84}, {556, 85}, {556, 86},
				{557, 84}, {557, 85}, {557, 86},
				{558, 84}, {558, 85}, {558, 86},
				{559, 84}, {559, 85}, {559, 86},
				{560, 84}, {560, 85},
				{561, 84}, {561, 85},
				{562, 85},
				{563, 85},
				{564, 85},
				{565, 85}
			}
		},
		GulfOfRiga = { -- Source: "Limits of Oceans and Seas", 1953, p. 5.
			Name = "Gulf of Riga",
			Tiles = {
				{542, 91},
				{543, 90}, {543, 91},
				{544, 87}, {544, 88}, {544, 90}, {544, 91},
				{545, 87}, {545, 88}, {545, 89}, {545, 90}, {545, 91}, {545, 92},
				{546, 87}, {546, 88}, {546, 89}, {546, 90}, {546, 91}, {546, 92}, {546, 93},
				{547, 87}, {547, 90}, {547, 91}, {547, 92}, {547, 93},
				{548, 90}, {548, 91}, {548, 92}, {548, 93},
				{549, 90}
			}
		},
		InnerSeas = { -- Source: "Limits of Oceans and Seas", 1953, p. 12.
			Name = "Inner Seas",
			Tiles = {
				{457, 95}, {457, 96}, {457, 97}, {457, 98},
				{458, 94}, {458, 95}, {458, 96}, {458, 97}, {458, 98},
				{459, 92}, {459, 93}, {459, 94}, {459, 95}, {459, 96}, {459, 97}, {459, 98},
				{460, 91}, {460, 92}, {460, 93}, {460, 94}, {460, 95}, {460, 96}, {460, 97}, {460, 98},
				{461, 91}, {461, 93}, {461, 94}, {461, 95}, {461, 96}, {461, 97}, {461, 98},
				{462, 90}, {462, 91}, {462, 93}, {462, 94}, {462, 96}, {462, 98},
				{463, 89}, {463, 90}, {463, 91}, {463, 92}, {463, 93}, {463, 96}, {463, 97}, {463, 98}, {463, 99},
				{464, 89}, {464, 90}, {464, 98}, {464, 99}, {464, 100}, {464, 101},
				{465, 89}, {465, 97}, {465, 98}, {465, 99}, {465, 100}
			}
		},
		IonianSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 17.
			Name = "Ionian Sea",
			Tiles = {
				{128, 38}, {128, 39}, {129, 38}, {129, 39}, {129, 40}, {130, 37}, {130, 38}, {130, 39}, {130, 40}, {131, 37}, {131, 38}, {131, 39}, {131, 40}, {131, 41}, {132, 36}, {132, 37}, {132, 38}, {132, 39}, {133, 36}, {133, 37}, {133, 38}, {134, 36}, {134, 37}, {134, 38}, {135, 38}, {136, 38}, -- old map
				{523, 148}, {523, 149}, {523, 150}, {523, 151},
				{524, 147}, {524, 148}, {524, 149}, {524, 150}, {524, 151},
				{525, 148}, {525, 149}, {525, 150}, {525, 151},
				{526, 147}, {526, 148}, {526, 149}, {526, 150}, {526, 151},
				{527, 142}, {527, 145}, {527, 146}, {527, 147}, {527, 148}, {527, 149}, {527, 150}, {527, 151},
				{528, 141}, {528, 142}, {528, 143}, {528, 145}, {528, 146}, {528, 147}, {528, 148}, {528, 149}, {528, 150}, {528, 151},
				{529, 141}, {529, 142}, {529, 143}, {529, 144}, {529, 145}, {529, 146}, {529, 147}, {529, 148}, {529, 149}, {529, 150}, {529, 151},
				{530, 141}, {530, 142}, {530, 143}, {530, 144}, {530, 145}, {530, 146}, {530, 147}, {530, 148}, {530, 149}, {530, 150}, {530, 151},
				{531, 142}, {531, 143}, {531, 144}, {531, 145}, {531, 146}, {531, 147}, {531, 148}, {531, 149}, {531, 150}, {531, 151},
				{532, 143}, {532, 144}, {532, 145}, {532, 146}, {532, 147}, {532, 148}, {532, 149}, {532, 150}, {532, 151},
				{533, 143}, {533, 144}, {533, 145}, {533, 146}, {533, 147}, {533, 148}, {533, 149}, {533, 150}, {533, 151},
				{534, 143}, {534, 144}, {534, 145}, {534, 146}, {534, 147}, {534, 148}, {534, 149}, {534, 150}, {534, 151},
				{535, 143}, {535, 144}, {535, 145}, {535, 146}, {535, 147}, {535, 148}, {535, 149}, {535, 150}, {535, 151},
				{536, 143}, {536, 144}, {536, 145}, {536, 146}, {536, 147}, {536, 148}, {536, 149}, {536, 150}, {536, 151},
				{537, 144}, {537, 145}, {537, 146}, {537, 147}, {537, 148}, {537, 149}, {537, 150}, {537, 151},
				{538, 145}, {538, 146}, {538, 147}, {538, 148}, {538, 149}, {538, 150}, {538, 151},
				{539, 146}, {539, 147}, {539, 148}, {539, 149}, {539, 150}, {539, 151},
				{540, 147}, {540, 149}, {540, 150}, {540, 151},
				{541, 146}, {541, 147}, {541, 151},
				{542, 146}, {542, 151},
				{543, 146}, {543, 147},
				{544, 147}
			}
		},
		IrishSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 12. (see corrections as well)
			Name = "Irish Sea",
			ReferenceProvince = "Ireland", -- province used as a reference for this province's name
			CulturalNames = {
				latin = "Hibernian Ocean"
			},
			Tiles = {
				{113, 27}, {114, 27}, {115, 27}, {116, 24}, {116, 25}, {116, 26}, {116, 27}, {117, 25}, -- old map
				{462, 102}, {462, 103}, {462, 106}, {462, 107},
				{463, 102}, {463, 103}, {463, 104}, {463, 105}, {463, 106}, {463, 107},
				{464, 102}, {464, 103}, {464, 104}, {464, 105}, {464, 106}, {464, 107},
				{465, 101}, {465, 102}, {465, 103}, {465, 104}, {465, 105}, {465, 106}, {465, 107},
				{466, 100}, {466, 101}, {466, 102}, {466, 103}, {466, 104}, {466, 105}, {466, 106}, {466, 107},
				{467, 100}, {467, 101}, {467, 102}, {467, 103}, {467, 104},  {467, 106}, {467, 107},
				{468, 100}, {468, 101}, {468, 102}, {468, 103}, 
				{469, 100}, {469, 101}, {469, 102}, {469, 103},
				{470, 102}, {470, 103},
				{471, 102}
			}
		},
		Kattegat = { -- Source: "Limits of Oceans and Seas", 1953, p. 5.
			Name = "Kattegat",
			Tiles = {
				{507, 97}, {507, 98}, {507, 99},
				{508, 97}, {508, 99}, {508, 100},
				{509, 94}, {509, 96}, {509, 97}, {509, 99}, {509, 100},
				{510, 92}, {510, 93}, {510, 94}, {510, 96}, {510, 97}, {510, 99}, {510, 100},
				{511, 92}, {511, 93}, {511, 94}, {511, 95}, {511, 96}, {511, 97}, {511, 98}, {511, 99}, {511, 100},
				{512, 92}, {512, 93}, {512, 94}, {512, 95}, {512, 96}, {512, 99},
				{513, 92}, {513, 93}, {513, 94}, {513, 95}, {513, 96}, {513, 99},
				{514, 93}, {514, 94}, {514, 95}, {514, 96},
				{515, 94}, {515, 95}, {515, 96}, {515, 98},
				{516, 95}, {516, 96}, {516, 97}, {516, 98},
			}
		},
		LakeVattern = {
			Name = "Lake Vättern",
			ReferenceProvince = "Sweden",
			CulturalNames = {
				norse = "Lake Vättern"
			},
			Tiles = {
				{521, 89}, {521, 90}
			}
		},
		LakeWener = {
			Name = "Lake Wener", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 120.
			ReferenceProvince = "Sweden",
			CulturalNames = {
				norse = "Lake Vänern"
			},
			Tiles = {
				{516, 88}, {516, 89},
				{517, 88},
				{518, 87}, {518, 88},
				{519, 87}, {519, 88}
			}
		},
		--[[
		LibyanSea = {
			Name = "Libyan Sea",
			Tiles = {
				{132, 40}, {132, 41}, {133, 39}, {133, 40}, {133, 41}, {134, 39}, {134, 40}, {135, 39}, {135, 40}, {136, 39}, {136, 40}, {137, 40}, {138, 40}, {139, 39}, {139, 40} -- old map
			}
		},
		--]]
		LigurianSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 16.
			Name = "Ligurian Sea",
			Tiles = {
				{125, 33}, {126, 33}, {127, 33}, -- old map
				{501, 131},
				{502, 131},
				{503, 131}, {503, 132},
				{504, 130}, {504, 131}, {504, 132},
				{505, 130}, {505, 131}, {505, 132}, {505, 133},
				{506, 130}, {506, 131}, {506, 132}, {506, 133},
				{507, 130}, {507, 131}, {507, 132}
			}
		},
		NorthSea = {
			Name = "North Sea", -- Source: http://www.euratlas.net/history/europe/1/index.html
			ReferenceProvince = "Rhineland", -- province used as a reference for this province's name
			CulturalNames = {
				germanic = "German Sea"
			},
			Tiles = {
				{118, 21}, {118, 22}, {119, 20}, {119, 21}, {119, 22}, {119, 23}, {119, 24}, {120, 20}, {120, 21}, {120, 22}, {120, 23}, {120, 24}, {120, 25}, {121, 20}, {121, 21}, {121, 22}, {121, 23}, {121, 24}, {121, 25}, {121, 26}, {121, 27}, {122, 20}, {122, 21}, {122, 22}, {122, 23}, {122, 24}, {122, 25}, {122, 26}, {123, 20}, {123, 21}, {123, 22}, {123, 23}, {123, 24}, {123, 25}, {124, 22}, {124, 23}, {124, 24}, {124, 25}, {125, 22}, {125, 23}, {125, 24}, {125, 25}, {126, 22}, {127, 22}, {127, 23}, {127, 24}, {128, 23}, -- old map
				{469, 91},
				{470, 88}, {470, 90}, {470, 91},
				{471, 87}, {471, 88}, {471, 89}, {471, 90}, {471, 91}, {471, 96},
				{472, 87}, {472, 88}, {472, 89}, {472, 90}, {472, 91}, {472, 95}, {472, 96},
				{473, 86}, {473, 87}, {473, 88}, {473, 89}, {473, 90}, {473, 91}, {473, 94}, {473, 95}, {473, 96},
				{474, 86}, {474, 87}, {474, 88}, {474, 89}, {474, 90}, {474, 91}, {474, 93}, {474, 94}, {474, 95}, {474, 96},
				{475, 86}, {475, 87}, {475, 88}, {475, 89}, {475, 90}, {475, 91}, {475, 92}, {475, 93}, {475, 94}, {475, 95}, {475, 96}, {475, 97},
				{476, 85}, {476, 86}, {476, 87}, {476, 88}, {476, 89}, {476, 90}, {476, 91}, {476, 92}, {476, 93}, {476, 94}, {476, 95}, {476, 96}, {476, 97}, {476, 98}, {476, 99},
				{477, 82}, {477, 83}, {477, 84}, {477, 85}, {477, 86}, {477, 87}, {477, 88}, {477, 89}, {477, 90}, {477, 91}, {477, 92}, {477, 93}, {477, 94}, {477, 95}, {477, 96}, {477, 97}, {477, 98}, {477, 99}, {477, 100},
				{478, 82}, {478, 83}, {478, 84}, {478, 85}, {478, 86}, {478, 87}, {478, 88}, {478, 89}, {478, 90}, {478, 91}, {478, 92}, {478, 93}, {478, 94}, {478, 95}, {478, 96}, {478, 97}, {478, 98}, {478, 99}, {478, 100},
				{479, 82}, {479, 83}, {479, 84}, {479, 85}, {479, 86}, {479, 87}, {479, 88}, {479, 89}, {479, 90}, {479, 91}, {479, 92}, {479, 93}, {479, 94}, {479, 95}, {479, 96}, {479, 97}, {479, 98}, {479, 99}, {479, 100}, {479, 101},
				{480, 82}, {480, 83}, {480, 84}, {480, 85}, {480, 86}, {480, 87}, {480, 88}, {480, 89}, {480, 90}, {480, 91}, {480, 92}, {480, 93}, {480, 94}, {480, 95}, {480, 96}, {480, 97}, {480, 98}, {480, 99}, {480, 100}, {480, 101}, {480, 102}, {480, 103},
				{481, 82}, {481, 83}, {481, 84}, {481, 85}, {481, 86}, {481, 87}, {481, 88}, {481, 89}, {481, 90}, {481, 91}, {481, 92}, {481, 93}, {481, 94}, {481, 95}, {481, 96}, {481, 97}, {481, 98}, {481, 99}, {481, 100}, {481, 101}, {481, 102}, {481, 103}, {481, 104},
				{482, 82}, {482, 83}, {482, 84}, {482, 85}, {482, 86}, {482, 87}, {482, 88}, {482, 89}, {482, 90}, {482, 91}, {482, 92}, {482, 93}, {482, 94}, {482, 95}, {482, 96}, {482, 97}, {482, 98}, {482, 99}, {482, 100}, {482, 101}, {482, 102}, {482, 103}, {482, 104}, {482, 109},
				{483, 82}, {483, 83}, {483, 84}, {483, 85}, {483, 86}, {483, 87}, {483, 88}, {483, 89}, {483, 90}, {483, 91}, {483, 92}, {483, 93}, {483, 94}, {483, 95}, {483, 96}, {483, 97}, {483, 98}, {483, 99}, {483, 100}, {483, 101}, {483, 102}, {483, 103}, {483, 104}, {483, 108}, {483, 109},
				{484, 82}, {484, 83}, {484, 84}, {484, 85}, {484, 86}, {484, 87}, {484, 88}, {484, 89}, {484, 90}, {484, 91}, {484, 92}, {484, 93}, {484, 94}, {484, 95}, {484, 96}, {484, 97}, {484, 98}, {484, 99}, {484, 100}, {484, 101}, {484, 102}, {484, 103}, {484, 104}, {484, 105}, {484, 108}, {484, 109}, {484, 110},
				{485, 82}, {485, 83}, {485, 84}, {485, 85}, {485, 86}, {485, 87}, {485, 88}, {485, 89}, {485, 90}, {485, 91}, {485, 92}, {485, 93}, {485, 94}, {485, 95}, {485, 96}, {485, 97}, {485, 98}, {485, 99}, {485, 100}, {485, 101}, {485, 102}, {485, 103}, {485, 104}, {485, 105}, {485, 106}, {485, 107}, {485, 108}, {485, 109}, {485, 110},
				{486, 82}, {486, 83}, {486, 84}, {486, 85}, {486, 86}, {486, 87}, {486, 88}, {486, 89}, {486, 90}, {486, 91}, {486, 92}, {486, 93}, {486, 94}, {486, 95}, {486, 96}, {486, 97}, {486, 98}, {486, 99}, {486, 100}, {486, 101}, {486, 102}, {486, 103}, {486, 104}, {486, 105}, {486, 106}, {486, 107}, {486, 108}, {486, 109}, {486, 110},
				{487, 82}, {487, 83}, {487, 84}, {487, 85}, {487, 86}, {487, 87}, {487, 88}, {487, 89}, {487, 90}, {487, 91}, {487, 92}, {487, 93}, {487, 94}, {487, 95}, {487, 96}, {487, 97}, {487, 98}, {487, 99}, {487, 100}, {487, 101}, {487, 102}, {487, 103}, {487, 104}, {487, 105}, {487, 106}, {487, 107}, {487, 108}, {487, 109}, {487, 110},
				{488, 82}, {488, 83}, {488, 84}, {488, 85}, {488, 86}, {488, 87}, {488, 88}, {488, 89}, {488, 90}, {488, 91}, {488, 92}, {488, 93}, {488, 94}, {488, 95}, {488, 96}, {488, 97}, {488, 98}, {488, 99}, {488, 100}, {488, 101}, {488, 102}, {488, 103}, {488, 104}, {488, 105}, {488, 106}, {488, 107}, {488, 108}, {488, 109},
				{489, 82}, {489, 83}, {489, 84}, {489, 85}, {489, 86}, {489, 87}, {489, 88}, {489, 89}, {489, 90}, {489, 91}, {489, 92}, {489, 93}, {489, 94}, {489, 95}, {489, 96}, {489, 97}, {489, 98}, {489, 99}, {489, 100}, {489, 101}, {489, 102}, {489, 103}, {489, 104}, {489, 105}, {489, 106}, {489, 107}, {489, 108}, {489, 109},
				{490, 82}, {490, 83}, {490, 84}, {490, 85}, {490, 86}, {490, 87}, {490, 88}, {490, 89}, {490, 90}, {490, 91}, {490, 92}, {490, 93}, {490, 94}, {490, 95}, {490, 96}, {490, 97}, {490, 98}, {490, 99}, {490, 100}, {490, 101}, {490, 102}, {490, 103}, {490, 104}, {490, 105}, {490, 106}, {490, 107}, {490, 108},
				{491, 82}, {491, 83}, {491, 84}, {491, 85}, {491, 86}, {491, 87}, {491, 88}, {491, 89}, {491, 90}, {491, 91}, {491, 92}, {491, 93}, {491, 94}, {491, 95}, {491, 96}, {491, 97}, {491, 98}, {491, 99}, {491, 100}, {491, 101}, {491, 102}, {491, 103}, {491, 104}, {491, 105}, {491, 106}, {491, 107},
				{492, 82}, {492, 83}, {492, 84}, {492, 85}, {492, 86}, {492, 87}, {492, 88}, {492, 89}, {492, 90}, {492, 91}, {492, 92}, {492, 93}, {492, 94}, {492, 95}, {492, 96}, {492, 97}, {492, 98}, {492, 99}, {492, 100}, {492, 101}, {492, 102}, {492, 103}, {492, 104}, {492, 105}, {492, 106},
				{493, 82}, {493, 83}, {493, 84}, {493, 85}, {493, 86}, {493, 87}, {493, 88}, {493, 89}, {493, 90}, {493, 91}, {493, 92}, {493, 93}, {493, 94}, {493, 95}, {493, 96}, {493, 97}, {493, 98}, {493, 99}, {493, 100}, {493, 101}, {493, 102}, {493, 103}, {493, 104}, {493, 105},
				{494, 84}, {494, 85}, {494, 86}, {494, 87}, {494, 88}, {494, 89}, {494, 90}, {494, 91}, {494, 92}, {494, 93}, {494, 94}, {494, 95}, {494, 96}, {494, 97}, {494, 98}, {494, 99}, {494, 100}, {494, 101}, {494, 102}, {494, 103}, {494, 104}, {494, 105}, {494, 106},
				{495, 87}, {495, 88}, {495, 89}, {495, 90}, {495, 91}, {495, 92}, {495, 93}, {495, 94}, {495, 95}, {495, 96}, {495, 97}, {495, 98}, {495, 99}, {495, 100}, {495, 101}, {495, 102}, {495, 103}, {495, 104}, {495, 105}, {495, 106},
				{496, 90}, {496, 91}, {496, 92}, {496, 93}, {496, 94}, {496, 95}, {496, 96}, {496, 97}, {496, 98}, {496, 99}, {496, 100}, {496, 101}, {496, 102}, {496, 103}, {496, 106},
				{497, 90}, {497, 91}, {497, 92}, {497, 93}, {497, 94}, {497, 95}, {497, 96}, {497, 97}, {497, 98}, {497, 99}, {497, 100}, {497, 101}, {497, 102}, {497, 103},
				{498, 90}, {498, 91}, {498, 92}, {498, 93}, {498, 94}, {498, 95}, {498, 96}, {498, 97}, {498, 98}, {498, 99}, {498, 100}, {498, 101}, {498, 102}, {498, 103},
				{499, 91}, {499, 92}, {499, 93}, {499, 94}, {499, 95}, {499, 96}, {499, 97}, {499, 98}, {499, 99}, {499, 100}, {499, 101}, {499, 102}, {499, 103},
				{500, 92}, {500, 93}, {500, 94}, {500, 95}, {500, 96}, {500, 97}, {500, 98}, {500, 99}, {500, 100}, {500, 101}, {500, 102},
				{501, 92}, {501, 93}, {501, 94}, {501, 95}, {501, 96}, {501, 97}, {501, 98}, {501, 99}, {501, 100}, {501, 101}, {501, 102},
				{502, 93}, {502, 94}, {502, 95}, {502, 96}, {502, 97}, {502, 98}, {502, 99}, {502, 100}, {502, 101}, {502, 102},
				{503, 93}, {503, 94}, {503, 98}, {503, 99}, {503, 100}, {503, 101}, {503, 102}, {503, 103},
				{504, 99}, {504, 100}, {504, 101}, {504, 102}
			}
		},
		SeaOfAzov = { -- Source: "Limits of Oceans and Seas", 1953, p. 18.
			Name = "Sea of Azov",
			CulturalNames = {
				greek = "Lake Maeotis"
			},
			ReferenceProvince = "Don",
			Tiles = {
				{579, 124}, {579, 125},
				{580, 124}, {580, 125}, {580, 126},
				{581, 124}, {581, 125}, {581, 126},
				{582, 123}, {582, 124}, {582, 125}, {582, 126},
				{583, 123}, {583, 124}, {583, 125}, {583, 126},
				{584, 123}, {584, 124}, {584, 125}, {584, 126}, {584, 127},
				{585, 123}, {585, 124}, {585, 125}, {585, 126},
				{586, 122}, {586, 123}, {586, 124}, {586, 125}, {586, 126},
				{587, 122}, {587, 123}, {587, 124}, {587, 125},
				{588, 122}, {588, 124},
				{589, 122},
				{590, 122}
			}
		},
		SeaOfMarmara = { -- Source: "Limits of Oceans and Seas", 1953, p. 18.
			Name = "Sea of Marmara",
			Tiles = {
				{554, 140}, {554, 141},
				{555, 140}, {555, 141},
				{556, 140},
				{557, 140},
				{558, 139}, {558, 140},
				{559, 139}, {559, 140},
				{560, 139}, {560, 140},
				{561, 139}, {561, 140},
				{562, 139}, {562, 140}
			}
		},
		Skagerrak = { -- Source: "Limits of Oceans and Seas", 1953, p. 6.
			Name = "Skagerrak",
			Tiles = {
				{500, 91},
				{501, 91},
				{502, 91}, {502, 92},
				{503, 91}, {503, 92},
				{504, 90}, {504, 91}, {504, 92}, {504, 93},
				{505, 90}, {505, 91}, {505, 92}, {505, 93},
				{506, 89}, {506, 90}, {506, 91}, {506, 92},
				{507, 88}, {507, 89}, {507, 90}, {507, 91}, {507, 92},
				{508, 88}, {508, 89}, {508, 90}, {508, 91},
				{509, 88}, {509, 89}, {509, 90}, {509, 91},
				{510, 87}, {510, 88}, {510, 89}, {510, 90}, {510, 91},
				{511, 88}, {511, 89}, {511, 90}, {511, 91},
				{512, 90}, {512, 91}
			}
		},
		TyrrhenianSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 17.
			Name = "Tyrrhenian Sea",
			Tiles = {
				{126, 37}, {127, 34}, {127, 35}, {127, 36}, {127, 37}, {128, 34}, {128, 35}, {128, 36}, {128, 37}, {129, 35}, {129, 36}, {130, 35}, {130, 36}, -- old map
				{505, 145},
				{506, 137}, {506, 138}, {506, 144}, {506, 145},
				{507, 133}, {507, 134}, {507, 135}, {507, 136}, {507, 137}, {507, 138}, {507, 139}, {507, 141}, {507, 142}, {507, 143}, {507, 144}, {507, 145},
				{508, 131}, {508, 132}, {508, 133}, {508, 134}, {508, 135}, {508, 136}, {508, 137}, {508, 138}, {508, 139}, {508, 140}, {508, 141}, {508, 142}, {508, 143}, {508, 144}, {508, 145}, {508, 146},
				{509, 132}, {509, 133}, {509, 134}, {509, 135}, {509, 136}, {509, 137}, {509, 138}, {509, 139}, {509, 140}, {509, 141}, {509, 142}, {509, 143}, {509, 144}, {509, 145}, {509, 146},
				{510, 134}, {510, 135}, {510, 136}, {510, 137}, {510, 138}, {510, 139}, {510, 140}, {510, 141}, {510, 142}, {510, 143}, {510, 144}, {510, 145}, {510, 146},
				{511, 135}, {511, 136}, {511, 137}, {511, 138}, {511, 139}, {511, 140}, {511, 141}, {511, 142}, {511, 143}, {511, 144}, {511, 145}, {511, 146},
				{512, 135}, {512, 136}, {512, 137}, {512, 138}, {512, 139}, {512, 140}, {512, 141}, {512, 142}, {512, 143}, {512, 144}, {512, 145}, {512, 146}, {512, 147},
				{513, 136}, {513, 137}, {513, 138}, {513, 139}, {513, 140}, {513, 141}, {513, 142}, {513, 143}, {513, 144}, {513, 145}, {513, 146}, {513, 147},
				{514, 137}, {514, 138}, {514, 139}, {514, 140}, {514, 141}, {514, 142}, {514, 143}, {514, 144}, {514, 145}, {514, 146}, {514, 147},
				{515, 138}, {515, 139}, {515, 140}, {515, 141}, {515, 142}, {515, 143}, {515, 144}, {515, 145}, {515, 146}, {515, 147}, {515, 148},
				{516, 138}, {516, 139}, {516, 140}, {516, 141}, {516, 142}, {516, 143}, {516, 144}, {516, 145}, {516, 146}, {516, 147},
				{517, 139}, {517, 140}, {517, 141}, {517, 142}, {517, 143}, {517, 144}, {517, 145}, {517, 146},
				{518, 139}, {518, 140}, {518, 141}, {518, 142}, {518, 143}, {518, 144}, {518, 145}, {518, 146}, {518, 147},
				{519, 139}, {519, 140}, {519, 141}, {519, 142}, {519, 143}, {519, 144}, {519, 145}, {519, 146}, {519, 147},
				{520, 140}, {520, 141}, {520, 142}, {520, 143}, {520, 144}, {520, 145}, {520, 146}, {520, 147},
				{521, 140}, {521, 141}, {521, 142}, {521, 143}, {521, 144}, {521, 145}, {521, 146}, {521, 147},
				{522, 141}, {522, 142}, {522, 143}, {522, 144}, {522, 145}, {522, 146},
				{523, 142}, {523, 143}, {523, 144}, {523, 145}, {523, 146},
				{524, 142}, {524, 143}, {524, 144}, {524, 145}, {524, 146},
				{525, 144}, {525, 145}
			}
		},
		WesternMediterraneanSea = { -- Source: "Limits of Oceans and Seas", 1953, p. 15.
			Name = "Western Mediterranean Sea",
			Tiles = {
				{474, 151},
				{475, 150}, {475, 151}, {475, 152},
				{476, 149}, {476, 150}, {476, 151}, {476, 152}, {476, 153},
				{477, 149}, {477, 150}, {477, 151}, {477, 152}, {477, 153},
				{478, 147}, {478, 148}, {478, 149}, {478, 150}, {478, 151}, {478, 152}, {478, 153},
				{479, 146}, {479, 147}, {479, 148}, {479, 149}, {479, 150}, {479, 151}, {479, 152}, {479, 153},
				{480, 146}, {480, 147}, {480, 148}, {480, 149}, {480, 150}, {480, 151}, {480, 152},
				{481, 146}, {481, 147}, {481, 148}, {481, 149}, {481, 150}, {481, 151}, {481, 152},
				{482, 146}, {482, 147}, {482, 148}, {482, 149}, {482, 150}, {482, 151},
				{483, 146}, {483, 147}, {483, 148}, {483, 149}, {483, 150}, {483, 151},
				{484, 146}, {484, 147}, {484, 148}, {484, 149}, {484, 150}, {484, 151},
				{485, 146}, {485, 147}, {485, 148}, {485, 149}, {485, 150}, {485, 151},
				{486, 146}, {486, 147}, {486, 148}, {486, 149}, {486, 150}, {486, 151},
				{487, 146}, {487, 147}, {487, 148}, {487, 149}, {487, 150}, {487, 151},
				{488, 145}, {488, 146}, {488, 147}, {488, 148}, {488, 149}, {488, 150},
				{489, 133}, {489, 134}, {489, 135}, {489, 136}, {489, 145}, {489, 146}, {489, 147}, {489, 148}, {489, 149}, {489, 150},
				{490, 133}, {490, 134}, {490, 135}, {490, 136}, {490, 137}, {490, 138}, {490, 145}, {490, 146}, {490, 147}, {490, 148}, {490, 149}, {490, 150},
				{491, 132}, {491, 133}, {491, 134}, {491, 135}, {491, 136}, {491, 137}, {491, 138}, {491, 139}, {491, 144}, {491, 145}, {491, 146}, {491, 147}, {491, 148}, {491, 149}, {491, 150},
				{492, 132}, {492, 133}, {492, 134}, {492, 135}, {492, 136}, {492, 137}, {492, 138}, {492, 139}, {492, 140}, {492, 141}, {492, 142}, {492, 143}, {492, 144}, {492, 145}, {492, 146}, {492, 147}, {492, 148}, {492, 149}, {492, 150},
				{493, 133}, {493, 134}, {493, 135}, {493, 136}, {493, 137}, {493, 138}, {493, 139}, {493, 140}, {493, 141}, {493, 142}, {493, 143}, {493, 144}, {493, 145}, {493, 146}, {493, 147}, {493, 148}, {493, 149}, {493, 150},
				{494, 133}, {494, 134}, {494, 135}, {494, 136}, {494, 137}, {494, 138}, {494, 139}, {494, 140}, {494, 141}, {494, 142}, {494, 143}, {494, 144}, {494, 145}, {494, 146}, {494, 147}, {494, 148}, {494, 149}, {494, 150}, {494, 151},
				{495, 133}, {495, 134}, {495, 135}, {495, 136}, {495, 137}, {495, 138}, {495, 139}, {495, 140}, {495, 141}, {495, 142}, {495, 143}, {495, 144}, {495, 145}, {495, 146}, {495, 147}, {495, 148}, {495, 149}, {495, 150}, {495, 151},
				{496, 133}, {496, 134}, {496, 135}, {496, 136}, {496, 137}, {496, 138}, {496, 139}, {496, 140}, {496, 141}, {496, 142}, {496, 143}, {496, 144}, {496, 145}, {496, 146}, {496, 147}, {496, 148}, {496, 149}, {496, 150},
				{497, 133}, {497, 134}, {497, 135}, {497, 136}, {497, 137}, {497, 138}, {497, 139}, {497, 140}, {497, 141}, {497, 142}, {497, 143}, {497, 144}, {497, 145}, {497, 146}, {497, 147}, {497, 148}, {497, 149}, {497, 150},
				{498, 133}, {498, 134}, {498, 135}, {498, 136}, {498, 137}, {498, 138}, {498, 139}, {498, 140}, {498, 141}, {498, 142}, {498, 143}, {498, 144}, {498, 145}, {498, 146}, {498, 147}, {498, 148}, {498, 149}, {498, 150},
				{499, 132}, {499, 133}, {499, 134}, {499, 135}, {499, 136}, {499, 137}, {499, 138}, {499, 139}, {499, 140}, {499, 141}, {499, 142}, {499, 143}, {499, 144}, {499, 145}, {499, 146}, {499, 147}, {499, 148}, {499, 149}, {499, 150},
				{500, 132}, {500, 133}, {500, 134}, {500, 135}, {500, 136}, {500, 137}, {500, 138}, {500, 139}, {500, 140}, {500, 141}, {500, 142}, {500, 143}, {500, 144}, {500, 145}, {500, 146}, {500, 147}, {500, 148}, {500, 149}, {500, 150},
				{501, 132}, {501, 133}, {501, 134}, {501, 135}, {501, 136}, {501, 137}, {501, 138}, {501, 139}, {501, 140}, {501, 141}, {501, 142}, {501, 143}, {501, 144}, {501, 145}, {501, 146}, {501, 147}, {501, 148}, {501, 149}, {501, 150},
				{502, 132}, {502, 133}, {502, 134}, {502, 135}, {502, 136}, {502, 137}, {502, 138}, {502, 139}, {502, 140}, {502, 141}, {502, 142}, {502, 143}, {502, 144}, {502, 145}, {502, 146}, {502, 147}, {502, 148}, {502, 149}, {502, 150},
				{503, 133}, {503, 134}, {503, 135}, {503, 136}, {503, 137}, {503, 138}, {503, 139}, {503, 140}, {503, 141}, {503, 142}, {503, 143}, {503, 144}, {503, 145}, {503, 146}, {503, 147}, {503, 148}, {503, 149}, {503, 150},
				{504, 133}, {504, 134}, {504, 135}, {504, 136}, {504, 137}, {504, 138}, {504, 139}, {504, 145}, {504, 146}, {504, 147}, {504, 148}, {504, 149}, {504, 150},
				{505, 134}, {505, 138}, {505, 146}, {505, 147}, {505, 148}, {505, 149}, {505, 150},
				{506, 146}, {506, 147}, {506, 148}, {506, 149},
				{507, 146}, {507, 147}, {507, 148}, {507, 149},
				{508, 147}, {508, 148}, {508, 149},
				{509, 147}, {509, 148}, {509, 149}, {509, 150},
				{510, 147}, {510, 148}, {510, 149}, {510, 150},
				{511, 147}, {511, 148}, {511, 149},
				{512, 148}, {512, 149},
				{513, 148},
				{514, 148}
			}
		},
		WhiteSea = {
			Name = "White Sea",
			Tiles = { {145, 17}, {146, 17}, {147, 17} }
		}
	}

	local NidavellirWaterProvinces = {
		DeepSea = {
			Name = "Deep Sea",
			Tiles = {
				{44, 0}, {44, 1},
				{45, 0}, {45, 1},
				{46, 0}, {46, 1},
				{47, 0}
			},
			CulturalNames = {
				dwarf = "Deep Sea"
			}
		},
		LakeVrug = {
			Name = "Lake Vrug",
			Tiles = { {27, 6}, {27, 7}, {27, 8}, {28, 5}, {28, 6}, {28, 7}, {28, 8}, {29, 5}, {29, 6}, {29, 7}, {29, 8}, {30, 5}, {30, 6}, {30, 7}, {31, 7} },
			CulturalNames = {
				dwarf = "Lake Vrug"
			}
		}
	}

	local function AddProvinceTable(province_table)
		for key, value in pairs(province_table) do
			WorldMapProvinces[key] = {}
			WorldMapProvinces[key]["Name"] = province_table[key].Name
			SetProvinceName("", WorldMapProvinces[key].Name) -- this will define a new province for the engine
			
			if (province_table[key].CulturalNames ~= nil) then
				for second_key, second_value in pairs(province_table[key].CulturalNames) do
					if (Factions[second_key] ~= nil) then
						SetProvinceFactionCulturalName(WorldMapProvinces[key].Name, Factions[second_key].Civilization, Factions[second_key].Name, province_table[key].CulturalNames[second_key])
					else
						SetProvinceCulturalName(WorldMapProvinces[key].Name, second_key, province_table[key].CulturalNames[second_key])
					end
				end
			end
			
			if (province_table[key].CulturalSettlementNames ~= nil) then
				for second_key, second_value in pairs(province_table[key].CulturalSettlementNames) do
					if (Factions[second_key] ~= nil) then
						SetProvinceFactionCulturalSettlementName(WorldMapProvinces[key].Name, Factions[second_key].Civilization, Factions[second_key].Name, province_table[key].CulturalSettlementNames[second_key])
					else
						SetProvinceCulturalSettlementName(WorldMapProvinces[key].Name, second_key, province_table[key].CulturalSettlementNames[second_key])
					end
				end
			end
			
			if (province_table[key].Tiles ~= nil) then
				WorldMapProvinces[key]["Tiles"] = {}
				for i=1,table.getn(province_table[key].Tiles) do
					table.insert(WorldMapProvinces[key].Tiles, {province_table[key].Tiles[i][1], province_table[key].Tiles[i][2]})
					SetWorldMapTileProvince(province_table[key].Tiles[i][1], province_table[key].Tiles[i][2], WorldMapProvinces[key].Name)
				end
			end
			if (province_table[key].SettlementName ~= nil) then
				SetProvinceSettlementName(WorldMapProvinces[key].Name, province_table[key].SettlementName)
			end
			if (province_table[key].SettlementLocation ~= nil) then
				WorldMapProvinces[key]["SettlementLocation"] = {province_table[key].SettlementLocation[1], province_table[key].SettlementLocation[2]}
				SetProvinceSettlementLocation(WorldMapProvinces[key].Name, WorldMapProvinces[key].SettlementLocation[1], WorldMapProvinces[key].SettlementLocation[2])
			end
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
			if (province_table[key].Map ~= nil) then
				WorldMapProvinces[key]["Map"] = province_table[key].Map
			end
			if (province_table[key].Units ~= nil) then
				for second_key, second_value in pairs(province_table[key].Units) do
					SetProvinceUnitQuantity(WorldMapProvinces[key].Name, string.gsub(second_key, "_", "-"), province_table[key].Units[second_key])
				end
			end
			if (province_table[key].Heroes ~= nil) then
				for second_key, second_value in pairs(province_table[key].Heroes) do
					SetProvinceHero(WorldMapProvinces[key].Name, second_key, province_table[key].Heroes[second_key])
				end
			end
			if (province_table[key].SettlementTerrain ~= nil) then
				WorldMapProvinces[key]["SettlementTerrain"] = province_table[key].SettlementTerrain
			end
			
			if (province_table[key].Claims ~= nil) then
				for i=1,table.getn(province_table[key].Claims), 2 do
					local faction_civilization = province_table[key].Claims[i]
					local faction = province_table[key].Claims[i + 1]
					
					AddProvinceClaim(WorldMapProvinces[key].Name, faction_civilization, faction)
				end
			end
		end
	end
	
	local function AddWaterProvinceTable(province_table)
		for key, value in pairs(province_table) do
			WorldMapWaterProvinces[key] = {}
			WorldMapWaterProvinces[key]["Name"] = province_table[key].Name
			SetProvinceName("", WorldMapWaterProvinces[key].Name) -- this will define a new province for the engine
			SetProvinceWater(WorldMapWaterProvinces[key].Name, true) -- this will make the province a water province for the engine
			
			if (province_table[key].CulturalNames ~= nil) then
				for second_key, second_value in pairs(province_table[key].CulturalNames) do
					if (Factions[second_key] ~= nil) then
						SetProvinceFactionCulturalName(WorldMapWaterProvinces[key].Name, Factions[second_key].Civilization, Factions[second_key].Name, province_table[key].CulturalNames[second_key])
					else
						SetProvinceCulturalName(WorldMapWaterProvinces[key].Name, second_key, province_table[key].CulturalNames[second_key])
					end
				end
			end
			
			if (province_table[key].ReferenceProvince ~= nil) then
				WorldMapWaterProvinces[key]["ReferenceProvince"] = province_table[key].ReferenceProvince
				SetProvinceReferenceProvince(WorldMapWaterProvinces[key].Name, WorldMapProvinces[province_table[key].ReferenceProvince].Name)
			end
			
			if (province_table[key].Tiles ~= nil) then
				WorldMapWaterProvinces[key]["Tiles"] = {}
				for i=1,table.getn(province_table[key].Tiles) do
					table.insert(WorldMapWaterProvinces[key].Tiles, {province_table[key].Tiles[i][1], province_table[key].Tiles[i][2]})
					SetWorldMapTileProvince(province_table[key].Tiles[i][1], province_table[key].Tiles[i][2], WorldMapWaterProvinces[key].Name)
				end
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
