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

DefineProvince("Abruzzo", {
	World = "Earth",
	CulturalNames = {
		"latin", "Samnium" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Tiles = {
		{517, 134}, {517, 135},
		{518, 134}, {518, 135}, {518, 136},
		{519, 134}, {519, 135}, {519, 136},
		{520, 135}, {520, 136}, {520, 137},
		{521, 136}, {521, 137},
		{522, 137}
	},
	SettlementLocation = {518, 135}, -- L'Aquila
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Aetolia", {
	World = "Earth",
	Tiles = {
		{539, 145},
		{540, 145}, {540, 146},
		{541, 145},
		{542, 145},
		{543, 145},
		{544, 145}
	},
	CulturalNames = {
		"greek", "Aetolia"
	},
	SettlementLocation = {541, 145}, -- Naupactus
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalSettlementBuildings = {
		-1700, "unit-teuton-stronghold", true, -- Mycenaean fortifications present in Krisa (in Locris Ozolis) between 1700 and 1200 BC; Source: "Atlas de História Mundial", 2001, p. 67.
		-1190, "unit-teuton-stronghold", false -- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Agder", {
	World = "Earth",
	Tiles = {
		{499, 88}, {499, 89}, {499, 90},
		{500, 86}, {500, 87}, {500, 88}, {500, 89}, {500, 90},
		{501, 86}, {501, 87}, {501, 88}, {501, 89}, {501, 90},
		{502, 88}, {502, 89}, {502, 90},
		{503, 88}, {503, 89}, {503, 90},
		{504, 88}, {504, 89},
		{505, 88}
	},
	CulturalNames = {
		"norse", "Agder"
	},
	SettlementLocation = {504, 89}, -- Arendal
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"norse", "Norway"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Akershus", {
	World = "Earth",
	Tiles = {
		{510, 85}, {510, 86},
		{511, 84}, {511, 85},
		{512, 84}, {512, 85},
		{513, 85}
	},
	CulturalNames = {
		"norse", "Akershus"
	},
	SettlementLocation = {510, 85}, -- Oslo
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"norse", "Norway"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Albania", {
	World = "Earth",
	Tiles = {
--		{134, 33}, {134, 34}, -- old map
		{535, 136}, {535, 138}, {535, 139}, {535, 140}, {535, 141},
		{536, 135}, {536, 136}, {536, 137}, {536, 138}, {536, 139}, {536, 140}, {536, 141},
		{537, 135}, {537, 136}, {537, 137}, {537, 138}, {537, 139}, {537, 140}, {537, 141}, {537, 142},
		{538, 136}, {538, 139}, {538, 140}, {538, 141},
		{539, 140}
	},
	CulturalNames = {
		"illyrian", "Taulantia",
		"latin", "Taulantia"
	},
	SettlementLocation = {536, 138}, -- Tirana
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"illyrian", "Taulantii Tribe"
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Alsace", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Elsass"
	},
	Tiles = {
		{500, 117}, {500, 118}, {500, 119}, {500, 120},
		{501, 117}, {501, 118}, {501, 119}, {501, 120},
		{502, 117}
	},
	SettlementLocation = {501, 118}, -- Strasburg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Alamanni Tribe",
		"teuton", "Swabia", -- Part of the Duchy of Swabia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "Holy Rome"				
	},
	HistoricalModifiers = {
		1618, "upgrade-university", true, -- University founded in Molsheim in 1618. Source: The Cambridge Modern History Atlas, 1912, p. 9.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux existent in Strasbourg in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain existent in Colmar in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Andalusia", {
	World = "Earth",
	CulturalNames = {
		"latin", "Farther Baetica"
	},
	FactionCulturalNames = {
		"latin", "Portugal", "Andalusia",
		"latin", "Spain", "Andalusia"
	},
	Tiles = {
--		{115, 37}, {116, 36}, {116, 37}, {117, 36}, {117, 37}, {118, 37}, -- old map
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
	SettlementLocation = {466, 148}, -- Cordoba
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalOwners = {
		-218, "phoenician", "Carthage", -- Carthaginian territory in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 32.
		-197, "latin", "Rome", -- Hispania Tarraconensis and (most of) Farther Baetica acquired by Rome in 197 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "goth", "Visigoth Tribe", -- Kingdom of the Visigoths; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "latin", "Spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-197, "latin", "Rome"
	},
	HistoricalModifiers = {
		1504, "upgrade-university", true, -- Major university founded in Seville in 1504. Source: The Cambridge Modern History Atlas, p. 9 and Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1531, "upgrade-university", true, -- University founded in Granada in 1531. Source: The Cambridge Modern History Atlas, p. 9.
		1548, "upgrade-university", true, -- Minor university founded in Osuna in 1548. Source: The Cambridge Modern History Atlas, 1912, p. 9 and Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1552, "upgrade-university", true, -- Minor university founded in Orihuela in 1552. Source: The Cambridge Modern History Atlas, p. 9 and Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1553, "upgrade-university", true, -- University founded in Baena in 1553. Source: The Cambridge Modern History Atlas, p. 9.
		1572, "upgrade-university", true, -- Minor university founded in Cordoba in 1572. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1614, "upgrade-university", true, -- Minor university founded in Murcia in 1614. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1806, "upgrade-university", false, -- Minor university abolished in Murcia in 1806. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1807, "upgrade-university", false, -- University abolished in Orihuela in 1807. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1807, "upgrade-university", false -- University abolished in Osuna in 1807. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
	},
	Regions = {"Europe", "Iberia", "West and Central Europe"}
})

DefineProvince("Apulia", {
	World = "Earth",
	CulturalNames = {
		"latin", "Apulia" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 30-31.
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
	SettlementLocation = {527, 139}, -- Bari
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Aquitaine", {
	World = "Earth",
	CulturalNames = {
		"latin", "Aquitania",
	},
	FactionCulturalNames = {
		"latin", "France", "Aquitaine"
	},
	Tiles = {
--		{119, 31}, {119, 32}, {119, 33}, {120, 31}, {120, 32}, {120, 33}, {121, 31}, {121, 32}, {121, 33}, {122, 32}, -- old map
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
	SettlementLocation = {483, 132}, -- Toulouse
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"celt", "Arverni Tribe"
--		"latin", "France"
	},
	HistoricalModifiers = {
		1230, "upgrade-university", true, -- University founded in Toulouse in 1230. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1250, "upgrade-university", true, -- University existent in Montpellier in 1250. Source: Atlas de História Mundial, 2001, p. 144.
		1332, "upgrade-university", true, -- University founded in Cahors in 1332. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1349, "upgrade-university", true, -- University founded in Perpignan in 1349. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1441, "upgrade-university", true, -- University founded in Bordeaux in 1441. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux existent in Limoges in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chief court of the salt tax existent in Clermont-Ferrand in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain, court of admiralty, prévôt des maréchaux and chief court of the salt tax existent in Toulouse in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chambre des comptes and prévôt des maréchaux existent in Montauban in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain, chambre des comptes, court of admiralty and prévôt des maréchaux existent in Bordeaux in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain and prévôt des maréchaux existent in Pau in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Cour des aides and chief court of the salt tax existent in Montpellier in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chief court of the salt tax existent in Rodez in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chief court of the salt tax existent in Narbonne in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain and prévôt des maréchaux existent in Perpignan in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Aragon", {
	World = "Earth",
	CulturalNames = {
		"latin", "Hither Baetica"
	},
	FactionCulturalNames = {
		"latin", "Portugal", "Aragon",
		"latin", "Spain", "Aragon"
	},
	Tiles = {
--		{119, 34}, {119, 35}, {119, 36}, {120, 34}, {121, 34}, -- old map
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
	SettlementLocation = {477, 137}, -- Zaragoza
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"basque", "Cardialware Tribe"
	},
	HistoricalOwners = {
		-7000, "basque", "Cardialware Tribe", -- Cardial Pottery culture existed in the eastern Iberian coast between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-201, "latin", "Rome", -- Hither Baetica acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "goth", "Visigoth Tribe", -- Kingdom of the Visigoths; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "latin", "Spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-7000, "basque" -- Cardial Pottery culture existed in the eastern Iberian coast between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
	},
	HistoricalClaims = {
		-201, "latin", "Rome"
	},
	HistoricalModifiers = {
		1300, "upgrade-university", true, -- Major university founded in Lerida in 1300. Source: William R. Shepherd, Historical Atlas, 1923, p. 100 and Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1354, "upgrade-university", true, -- Major university founded in Huesca in 1354. Source: The Cambridge Modern History Atlas, 1912, p. 9, Atlas de História Mundial, 2001, p. 144 and Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1430, "upgrade-university", true, -- University founded in Barcelona in 1430. Source: The Cambridge Modern History Atlas, 1912, p. 9 and Atlas de História Mundial, 2001, p. 144.
		1474, "upgrade-university", true, -- University founded in Zaragoza in 1474. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1483, "upgrade-university", true, -- University founded in Palma in 1483. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1500, "upgrade-university", true, -- University founded in Valencia in 1500. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1599, "upgrade-university", true, -- Minor university founded in Vich in 1599. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1645, "upgrade-university", true, -- Minor university founded in Tortosa in 1645. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1707, "upgrade-university", false, -- Minor university in Vich abolished in 1707. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1717, "upgrade-university", false, -- Minor university in Tortosa abolished in 1717. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1717, "upgrade-university", false -- University abolished in Barcelona in 1717. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
	},
	Regions = {"Europe", "Iberia", "West and Central Europe"}
})

DefineProvince("Argolis", {
	World = "Earth",
	Tiles = {
--		{135, 37}, {136, 37}, -- old map
		{540, 148},
		{541, 148}, {541, 149},
		{542, 147}, {542, 148}, {542, 149},
		{543, 148}, {543, 149},
		{544, 148}, {544, 149}
	},
	CulturalNames = {
		"greek", "Argolis"
	},
	SettlementLocation = {544, 148}, -- Argos
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"greek", "Argos",
		"greek", "Mycenae"
	},
	HistoricalSettlementBuildings = {
		-1700, "unit-teuton-stronghold", true, -- Mycenaean fortifications present in Argos, Tirinto, Dendra and Kastro between 1700 and 1200 BC, as well as in Araxos (in the Achaean coast) and in Kolonna (in the isle of Aegina); Source: "Atlas de História Mundial", 2001, p. 67.
		-1190, "unit-teuton-stronghold", false -- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Astrakhan", {
	World = "Earth",
	CulturalNames = {
		"germanic", "Ansulanda", "name-elements", { -- rendering of "Asaland" in Proto-Germanic, as in the Ynglinga saga's story Asaland is the region in "Asia" in which Odin's people (here understood as the Indo-Europeans who went on to settle Scandinavia and become speakers of Proto-Germanic) used to live until they migrated to Scandinavia; alternatively called "Asaheim"; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
			"compound", "prefix", "proto-germanic", "noun", "singular", "Ansu",
			"compound", "suffix", "proto-germanic", "noun", "singular", "Landa"
		}
	},
	Tiles = {
--		{151, 30}, {152, 28}, {152, 29}, {152, 30}, {152, 31}, {153, 28}, {153, 29}, {153, 30}, {153, 31}, {154, 28}, {154, 29}, {154, 30}, {155, 29}, {155, 30}, -- old map
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
	SettlementLocation = {618, 124}, -- Astrakhan
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"germanic", "Asa Tribe",
		"persian", "Aorsi Tribe",
		"persian", "Sarmatian Tribe"
	},
	HistoricalOwners = {
		-3000, "germanic", "Asa Tribe",
		-2800, "", "", -- Proto-Indo-Europeans who would give origin to the Germanic peoples concluded their migration to Scandinavia at this date
		-336, "persian", "Sarmatian Tribe", -- Macedonian Empire (and environs) in 336-323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		-264, "persian", "Aorsi Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1557, "slav", "Muscovy", -- Astrakhan acquired by Muscovy in 1557 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-336, "persian",
	},
	HistoricalSettlementBuildings = {
		-3000, "unit-germanic-town-hall", true,
		-3000, "unit-germanic-barracks", true,
		-2800, "unit-germanic-town-hall", false,
		-2800, "unit-germanic-barracks", false
	},
	Regions = {"Eurasia", "Europe"}
})

DefineProvince("Asturias", {
	World = "Earth",
	FactionCulturalNames = {
		"latin", "Spain", "Asturias"
	},
	Tiles = {
		{459, 132},
		{460, 132}, {460, 133},
		{461, 132}, {461, 133},
		{462, 132}, {462, 133},
		{463, 132}, {463, 133},
		{464, 132}, {464, 133},
		{465, 132}, {465, 133},
		{466, 133},
		{467, 133},
		{468, 132}, {468, 133},
		{469, 132}, {469, 133},
		{470, 133}
	},
	SettlementLocation = {463, 132}, -- Oviedo
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"celt", "Cantabri Tribe"
	},
	HistoricalOwners = {
		-264, "celt", "Cantabri Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		17, "latin", "Rome", -- Asturias acquired by Rome in 17 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "latin", "Spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "celt"
	},
	HistoricalClaims = {
		17, "latin", "Rome"
	},
	HistoricalModifiers = {
		-- Pottery existent in the Cantabrian Coast in c. 4900 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 159.
		-- Domesticated animals existent in the Cantabrian Coast in c. 4200 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 159.
		-- First sure evidence of farming in the Cantabrian coast in c. 4150 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 160.
		1580, "upgrade-university", true, -- University founded in Oviedo in 1580. Source: The Cambridge Modern History Atlas, p. 9.
		1608, "upgrade-university", false -- University abolished in Oviedo in 1608. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
	},
	Regions = {"Europe", "Iberia", "West and Central Europe"}
})

DefineProvince("Attica", {
	World = "Earth",
	Tiles = {
--				{135, 36}, {136, 36}, -- old map
		{546, 147},
		{547, 147}
	},
	CulturalNames = {
		"greek", "Attica"
	},
	SettlementLocation = {547, 147}, -- Athens
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"greek", "Athens"
	},
	HistoricalSettlementBuildings = {
		-1700, "unit-teuton-stronghold", true, -- Mycenaean fortifications present in Athens between 1700 and 1200 BC, as well as in Aghia Irini (in the island of Ceos); Source: "Atlas de História Mundial", 2001, p. 67.
		-1190, "unit-teuton-stronghold", false -- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Augsburg", {
	World = "Earth",
	CulturalNames = {
		"latin", "Augusta Vindelicorum",
		"teuton", "Augsburg", "settlement-derived-name" -- presumably, since a settlement with that name exists there
	},
	Tiles = {
		{509, 118}, {509, 119}, {509, 120},
		{510, 117}, {510, 118}, {510, 119}, {510, 120}
	},
	SettlementLocation = {510, 118}, -- Augsburg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Alamanni Tribe",
		"teuton", "Swabia", -- Part of the Duchy of Swabia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "Holy Rome"
	},
	HistoricalModifiers = {
		1549, "upgrade-university", true -- University founded in Dillingen in 1549. Source: The Cambridge Modern History Atlas, 1912, p. 9.
	},
	Regions = {"Europe", "Germany-Netherlands", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Baden", {
	World = "Earth",
	CulturalNames = {
		"latin", "Agri Decumates", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"teuton", "Baden", "name-elements", { -- is this a settlement-derived name instead?
			"word", "high-german", "verb", "no-tense", "Baden", -- correct?
		}
	},
	Tiles = {
		{502, 118}, {502, 119}, {502, 120},
		{503, 117}, {503, 118}, {503, 119}, {503, 120},
		{504, 116}, {504, 117}, {504, 119}, {504, 120},
		{505, 116}, {505, 119},
		{506, 116}, {506, 119},
		{507, 115}, {507, 116}
	},
	SettlementLocation = {503, 117}, -- Rastatt
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Alamanni Tribe",
		"teuton", "Baden",
		"teuton", "Swabia", -- Part of the Duchy of Swabia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "Holy Rome"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in St. Peter during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Reichenau during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1385, "upgrade-university", true, -- University founded in Heidelberg in 1385. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1455, "upgrade-university", true -- University founded in Freiburg in 1455. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Germany-Netherlands", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Bavaria", {
	World = "Earth",
	CulturalNames = {
		"latin", "Raetia",
		"teuton", "Bavaria"
	},
	FactionCulturalNames = {
		"teuton", "Bavaria", "Bavaria",
		"teuton", "Bavarian Tribe", "Bavaria"
	},
	Tiles = {
--		{126, 29}, {127, 28}, {127, 29}, {128, 28}, {128, 29}, -- old map
		{511, 116}, {511, 117}, {511, 118}, {511, 119}, {511, 120},
		{512, 116}, {512, 117}, {512, 118}, {512, 119},
		{513, 114}, {513, 115}, {513, 116}, {513, 117}, {513, 118}, {513, 119},
		{514, 114}, {514, 115}, {514, 116}, {514, 117}, {514, 118}, {514, 119},
		{515, 114}, {515, 115}, {515, 116}, {515, 117}, {515, 118}, {515, 119},
		{516, 116}, {516, 117}, {516, 118},
		{517, 117}, {517, 118},
		{518, 117}
	},
	SettlementLocation = {514, 116}, -- Regensburg
	Map = "maps/earth/regensburg.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Bavarian Tribe",
		"teuton", "Holy Rome"
	},
	HistoricalOwners = {
		-800, "celt", "Norici Tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "Rome", -- Raetia and Vindelicia acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "Ostrogoth Tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		526, "teuton", "Bavarian Tribe", -- political situation in 526-600 in Europe; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		537, "teuton", "Francia", -- region of Altbayern, Salzburg and Tyrol conquered by the Franks in 537; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		784, "teuton", "Bavaria", -- Bavaria revolted against Frankish rule under Tassilo in 784; Source: "Medieval Warfare V.2", 2013, p. 8.
		787, "teuton", "Francia", -- Bavarian revolt against Frankish rule quashed by Charles the Great three years after 784; Source: "Medieval Warfare V.2", 2013, p. 8.
		919, "teuton", "Holy Rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "Bavaria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "Rome",
		537, "teuton", "Francia",
		919, "teuton", "Bavaria" -- Political situation in Central Europe in 919-1125; Duchy of Bavaria; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-800, "celt",
		526, "teuton"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Niederaltaich during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Wessobrunn during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1459, "upgrade-university", true -- University founded in Ingolstadt in 1459. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Germany-Netherlands", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Belgium", {
	World = "Earth",
	CulturalNames = {
		"latin", "Belgica"
	},
	FactionCulturalNames = {
		"teuton", "Francia", "Austrasia",
		"teuton", "Frank Tribe", "Austrasia"
	},
	Tiles = {
--		{122, 27}, {122, 28}, {123, 28}, {124, 28}, -- old map
		{488, 110}, {488, 111},
		{489, 110}, {489, 111},
		{490, 110}, {490, 111}, {490, 112},
		{491, 110}, {491, 111}, {491, 112},
		{492, 110}, {492, 111}, {492, 112}, {492, 113},
		{493, 110}, {493, 111}, {493, 112}, {493, 113},
		{494, 110}, {494, 111}, {494, 112}, {494, 113}, {494, 114},
		{495, 110}, {495, 111}, {495, 112}, {495, 113}, {495, 114}, {495, 115},
		{496, 112}, {496, 113}, {496, 114}, {496, 115},
		{497, 115}
	},
	SettlementLocation = {492, 111}, -- Brussels
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"celt", "Menapii Tribe",
		"teuton", "Austrasia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Stavelot during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Echternach (in modern Luxembourg) during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1425, "upgrade-university", true -- University founded in Louvain in 1425. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Gaul", "Germany-Netherlands", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Bessarabia", {
	World = "Earth",
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
	SettlementLocation = {562, 122}, -- Kishinev
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"goth", "Bastarnae Tribe"
--		"latin", "Moldavia"
	},
	Regions = {"Eurasia", "Europe"}
})

DefineProvince("Boeotia", {
	World = "Earth",
	Tiles = {
		{544, 146},
		{545, 146},
		{546, 146}
	},
	CulturalNames = {
		"greek", "Boeotia"
	},
	SettlementLocation = {546, 146}, -- Thebes
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"greek", "Thebes"
	},
	HistoricalSettlementBuildings = {
		-1700, "unit-teuton-stronghold", true, -- Mycenaean fortifications present in Eutresis, Kastri, Aghia Marina, Gla, Aghios Ioannis, Chantsa, Stroviki, Pyrgos and Panopeus between 1700 and 1200 BC, as well as in Aghia Irini (in the island of Ceos); Source: "Atlas de História Mundial", 2001, p. 67.
		-1190, "unit-teuton-stronghold", false -- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Bohemia", {
	World = "Earth",
	CulturalNames = {
		"celt", "Boiohaemum",
		"germanic", "Boiohaemum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"latin", "Boiohaemum",
		"teuton", "Böhmen"
	},
	FactionCulturalNames = {
		"teuton", "Marcomanni Tribe", "Marcomannia",
		"teuton", "Suebi Tribe", "Marcomannia"
	},
	Tiles = {
--		{129, 28}, {130, 28}, {131, 28}, -- old map
		{515, 113},
		{516, 113}, {516, 114}, {516, 115},
		{517, 112}, {517, 113}, {517, 114}, {517, 115}, {517, 116},
		{518, 112}, {518, 113}, {518, 114}, {518, 115}, {518, 116},
		{519, 111}, {519, 112}, {519, 113}, {519, 114}, {519, 115}, {519, 116}, {519, 117},
		{520, 111}, {520, 112}, {520, 113}, {520, 114}, {520, 115}, {520, 116}, {520, 117},
		{521, 111}, {521, 112}, {521, 113}, {521, 114}, {521, 115}, {521, 116}, {521, 117},
		{522, 111}, {522, 112}, {522, 113}, {522, 114}, {522, 115}, {522, 116},
		{523, 111}, {523, 112}, {523, 113}, {523, 114}, {523, 115}, {523, 116},
		{524, 111}, {524, 112}, {524, 113}, {524, 114}, {524, 115},
		{525, 112}, {525, 113}, {525, 114}, {525, 115},
		{526, 113}, {526, 114},
		{527, 114}
	},
	SettlementLocation = {520, 113}, -- Prague
	Map = "maps/earth/prague.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Linearware Tribe",
		"celt", "Boii Tribe",
		"teuton", "Marcomanni Tribe",
		"teuton", "Holy Rome"
	},
	HistoricalOwners = {
		-5500, "basque", "Linearware Tribe", -- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-400, "celt", "Boii Tribe", -- Boii attested c. 400 BC; Source: John T. Koch, "Celtic Culture: Aberdeen breviary-celticism", 2006, pp. 223-224.
		-9, "teuton", "Marcomanni Tribe", -- Marbod, king of the Suebic tribe of the Marcomanni, conquers Bohemia
		526, "teuton", "Bavarian Tribe", -- political situation in 526-600 in Europe; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		919, "teuton", "Holy Rome", -- Duchy of Bohemia; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "Austria", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-5500, "basque",
		-400, "celt",
		-9, "teuton"
	},
	HistoricalModifiers = {
		1347, "upgrade-university", true, -- University founded in Prague in 1347. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		-- Olomouc-Prague State Railroad Company opened for business in 1845. Source: Chad Bryant, "Into an Uncertain Future: Railroads and Vormärz Liberalism in Brno, Vienna, and Prague", 2009, p. 187.
	},
	Regions = {"Cisleithania", "Czechoslovakia", "Europe", "West and Central Europe"}
})

DefineProvince("Bornholm", {
	World = "Earth",
	CulturalNames = {
		"goth", "Burgundarholm",
		"norse", "Burgundarholm" -- Old Norse name of the island; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 89.
	},
	Tiles = {
		{522, 99}
	},
	SettlementLocation = {522, 99},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"goth", "Burgundian Tribe"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Bosnia", {
	World = "Earth",
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
	SettlementLocation = {532, 131}, -- Sarajevo
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Regions = {"Europe", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Brandenburg", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Brandenburg", "name-elements", { -- is this a settlement-derived name instead?
			"compound", "prefix", "high-german", "verb", "no-tense", "Branden", -- correct?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
	},
	FactionCulturalNames = {
		"teuton", "Semnone Tribe", "Semnonia",
		"teuton", "Suebi Tribe", "Semnonia"
	},
	Tiles = {
--		{127, 27}, {128, 25}, {128, 26}, {128, 27}, {129, 25}, {129, 26}, {129, 27}, -- old map
		{513, 104},
		{514, 104}, {514, 105}, {514, 106}, {514, 107},
		{515, 104}, {515, 105}, {515, 106}, {515, 107},
		{516, 104}, {516, 105}, {516, 106}, {516, 107},
		{517, 105}, {517, 106}, {517, 107},
		{518, 104}, {518, 105}, {518, 106}, {518, 107},
		{519, 104}, {519, 105}, {519, 106}, {519, 107},
		{520, 106}, {520, 107},
		{521, 106}, {521, 107}
	},
	SettlementLocation = {518, 106}, -- Berlin
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Semnone Tribe",
		"teuton", "Suebi Tribe",
		"teuton", "Brandenburg"
	},
	HistoricalOwners = {
		-264, "teuton", "Semnone Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		-71, "teuton", "Suebi Tribe", -- Suebi attested in 71 BC; since the Suebi were in existence then, they were also probably already settled where Tacitus had described the Suebic Semnones as living in, since the other territories settled by Suebic tribes (Bohemia and Moravia) were only conquered later on
		1560, "teuton", "Brandenburg" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "teuton"
	},
	HistoricalModifiers = {
		1502, "upgrade-university", true -- University founded in Wittenberg in 1502. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Bremen", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Bremen"
	},
	Tiles = {
		{504, 103}, {504, 104},
		{505, 103}, {505, 104},
		{506, 103}, {506, 104}, {506, 105}
	},
	SettlementLocation = {504, 104}, -- Bremen
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Funnelbeaker Tribe",
		"teuton", "Chauci Tribe",
		"teuton", "Bremen",
		"teuton", "Holy Rome"
	},
	Coastal = true,
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Brittany", {
	World = "Earth",
	Tiles = {
--		{117, 29}, {118, 29}, {118, 30}, -- old map
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
		"celt", "Armorica",
		"latin", "Armorica"
	},
	FactionCulturalNames = {
		"latin", "France", "Brittany"
	},
	SettlementLocation = {475, 119}, -- Rennes
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1460, "upgrade-university", true, -- University founded in Nantes in 1460. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1789, "upgrade-courthouse", true, -- Chambre des comptes existent in Nantes in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain, court of admiralty and prévôt des maréchaux existent in Rennes in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Brunswick", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Braunschweig"
	},
	Tiles = {
		{507, 108}, {507, 109},
		{508, 108}, {508, 109},
		{509, 107}, {509, 108},
		{510, 107}
	},
	SettlementLocation = {509, 107}, -- Brunswick
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Cherusci Tribe",
		"teuton", "Brunswick",
		"teuton", "Holy Rome"
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Bukowina", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Bukowina"
	},
	Tiles = {
		{551, 119}, {551, 120},
		{552, 118}, {552, 119}, {552, 120},
	},
	SettlementLocation = {552, 119}, -- Czernowitz / Chernivtsi
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"slav", "Poland"
	},
	Regions = {"Cisleithania", "Eurasia", "Europe", "Poland"}
})

DefineProvince("Bulgaria", {
	World = "Earth",
	Tiles = {
--		{136, 33}, {137, 33}, {138, 33}, {139, 33}, -- old map
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
		"latin", "Lower Moesia" -- Lower Moesia encompassed most of Bulgaria, but left out large parts of its south, including Sofia, which were part of the Thrace province of Rome; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	},
	SettlementLocation = {546, 134}, -- Sofia
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"greek", "Thrace",
		"thracian", "Odrysae Tribe"
	},
	Regions = {"Europe", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Burgundy", {
	World = "Earth",
	FactionCulturalNames = {
		"latin", "France", "Bourgogne"
	},
	Tiles = {
--		{123, 31}, {123, 32}, {124, 30}, {124, 31}, {124, 32}, -- old map
		{491, 120}, {491, 121}, {491, 123},
		{492, 120}, {492, 121}, {492, 122}, {492, 123},
		{493, 120}, {493, 121}, {493, 122}, {493, 123},
		{494, 121}, {494, 122}, {494, 123}, {494, 124}, {494, 125},
		{495, 124}, {495, 125},
		{496, 124}, {496, 125}
	},
	SettlementLocation = {494, 121}, -- Dijon
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"celt", "Aedui Tribe"
--		"latin", "France"
	},
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain, chambre des comptes, prévôt des maréchaux and chief court of the salt tax existent in Dijon in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Calabria", {
	World = "Earth",
	CulturalNames = {
		"latin", "Brutium" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 30-31.
	},
	FactionCulturalNames = {
		"latin", "Italy", "Calabria"
	},
	Tiles = {
		{525, 142}, {525, 143}, {525, 146}, {525, 147},
		{526, 142}, {526, 143}, {526, 144}, {526, 145}, {526, 146},
		{527, 143}, {527, 144},
		{528, 144}
	},
	SettlementLocation = {526, 145}, -- Catanzaro
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Carinthia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Carinthia"
	},
	Tiles = {
		{517, 122}, {517, 123},
		{518, 122}, {518, 123},
		{519, 122}, {519, 123},
		{520, 122}, {520, 123},
		{521, 122}, {521, 123}
	},
	SettlementLocation = {520, 123}, -- Klagenfurt
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"celt", "Norici Tribe",
		"teuton", "Austria",
		"teuton", "Carinthia",
		"teuton", "Holy Rome"
	},
	HistoricalOwners = {
		-800, "celt", "Norici Tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "Rome", -- Noricum acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "Ostrogoth Tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "Holy Rome", -- Duchy of Carinthia within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "Austria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "Rome"
	},
	HistoricalCultures = {
		-800, "celt"
	},
	Regions = {"Cisleithania", "Europe", "Germany-Netherlands", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Carniola", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Krain"
	},
	Tiles = {
		{519, 124},
		{520, 124}, {520, 125},
		{521, 124}, {521, 125},
		{522, 125},
		{523, 125}
	},
	SettlementLocation = {521, 125}, -- Laibach/Ljubljana
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Regions = {"Cisleithania", "Europe", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Castille", {
	World = "Earth",
	CulturalNames = {
		"latin", "Hispania Tarraconensis"
	},
	FactionCulturalNames = {
		"latin", "Portugal", "Castille",
		"latin", "Spain", "Castille"
	},
	Tiles = {
--		{115, 34}, {115, 35}, {115, 36}, {116, 33}, {116, 34}, {116, 35}, {117, 33}, {117, 34}, {117, 35}, {118, 33}, {118, 34}, {118, 35}, {118, 36}, -- old map
		{459, 143}, {459, 146},
		{460, 134}, {460, 136}, {460, 139}, {460, 140}, {460, 141}, {460, 142}, {460, 143}, {460, 144}, {460, 145}, {460, 146},
		{461, 134}, {461, 135}, {461, 136}, {461, 138}, {461, 139}, {461, 140}, {461, 141}, {461, 142}, {461, 143}, {461, 144}, {461, 145}, {461, 146},
		{462, 134}, {462, 135}, {462, 136}, {462, 137}, {462, 138}, {462, 139}, {462, 140}, {462, 141}, {462, 142}, {462, 143}, {462, 144}, {462, 145}, {462, 146},
		{463, 134}, {463, 135}, {463, 136}, {463, 137}, {463, 138}, {463, 139}, {463, 140}, {463, 141}, {463, 142}, {463, 143}, {463, 144}, {463, 145}, {463, 146},
		{464, 134}, {464, 135}, {464, 136}, {464, 137}, {464, 138}, {464, 139}, {464, 140}, {464, 141}, {464, 142}, {464, 143}, {464, 144}, {464, 145}, {464, 146},
		{465, 134}, {465, 135}, {465, 136}, {465, 137}, {465, 138}, {465, 139}, {465, 140}, {465, 141}, {465, 142}, {465, 143}, {465, 144},
		{466, 134}, {466, 135}, {466, 136}, {466, 137}, {466, 138}, {466, 139}, {466, 140}, {466, 141}, {466, 142}, {466, 143}, {466, 144},
		{467, 134}, {467, 135}, {467, 136}, {467, 137}, {467, 138}, {467, 139}, {467, 140}, {467, 141}, {467, 142}, {467, 143}, {467, 144}, {467, 145},
		{468, 134}, {468, 135}, {468, 136}, {468, 137}, {468, 138}, {468, 139}, {468, 140}, {468, 141}, {468, 142}, {468, 143}, {468, 144}, {468, 145},
		{469, 134}, {469, 135}, {469, 136}, {469, 137}, {469, 138}, {469, 139}, {469, 140}, {469, 141}, {469, 142}, {469, 143}, {469, 144}, {469, 145},
		{470, 134}, {470, 135}, {470, 136}, {470, 137}, {470, 138}, {470, 139}, {470, 140}, {470, 141}, {470, 142}, {470, 143}, {470, 144}, {470, 145},
		{471, 133}, {471, 134}, {471, 135}, {471, 136}, {471, 137}, {471, 138}, {471, 139}, {471, 140}, {471, 141}, {471, 142}, {471, 143}, {471, 144}, {471, 145},
		{472, 133}, {472, 134}, {472, 135}, {472, 136}, {472, 137}, {472, 138}, {472, 139}, {472, 140}, {472, 141}, {472, 142}, {472, 143}, {472, 144}, {472, 145},
		{473, 133}, {473, 134}, {473, 135}, {473, 136}, {473, 137}, {473, 138}, {473, 139}, {473, 140}, {473, 141}, {473, 142}, {473, 143}, {473, 144}, {473, 145}, {473, 146},
		{474, 133}, {474, 134}, {474, 135}, {474, 136}, {474, 137}, {474, 138}, {474, 139}, {474, 140}, {474, 141}, {474, 142}, {474, 143}, {474, 144}, {474, 145}, {474, 146},
		{475, 133}, {475, 134}, {475, 135}, {475, 136}, {475, 139}, {475, 140}, {475, 142}, {475, 143}, {475, 144},
		{476, 134}, {476, 142}, {476, 143}, {476, 144},
		{477, 134}
	},
	SettlementLocation = {469, 141}, -- Madrid
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalOwners = {
		-- Interior "mesetas" of Iberia settled by farmers c. 4000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 157.
		-197, "latin", "Rome", -- Hispania Tarraconensis and (most of) Farther Baetica acquired by Rome in 197 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "goth", "Visigoth Tribe", -- Kingdom of the Visigoths; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "latin", "Spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-197, "latin", "Rome"
	},
	HistoricalModifiers = {
		1212, "upgrade-university", true, -- University founded in Palencia in 1212. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1230, "upgrade-university", true, -- University founded in Salamanca in 1230. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1346, "upgrade-university", true, -- University founded in Valladolid in 1346. Source: Atlas de História Mundial, 2001, p. 144.
		1474, "upgrade-university", true, -- Minor university founded in Toledo in 1474. Source: The Cambridge Modern History Atlas, 1912, p. 9 and Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1489, "upgrade-university", true, -- Minor university founded in Siguenza in 1489. Source: William R. Shepherd, Historical Atlas, 1923, p. 100 and Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1499, "upgrade-university", true, -- University founded in Alcalá de Henares in 1499. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1542, "upgrade-university", true, -- Minor university founded in Oñate in 1542. Source: The Cambridge Modern History Atlas, 1912, p. 9 and Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1550, "upgrade-university", true, -- Minor university founded in Avila in 1550. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1550, "upgrade-university", true, -- Minor university founded in Osma in 1550. Source: The Cambridge Modern History Atlas, p. 9 and Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1553, "upgrade-university", true, -- Minor university founded in Almagro in 1553. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1605, "upgrade-university", true, -- Minor university founded in Irache in 1605. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
		1628, "upgrade-university", true, -- Major university founded in Pamplona in 1628. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1703, "upgrade-university", false, -- University abolished in Siguenza in 1703. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1725, "upgrade-university", false, -- Major university abolished in Pamplona in 1725. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1787, "upgrade-university", false, -- Minor university abolished in Avila in 1787. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1787, "upgrade-university", false, -- Minor university abolished in Almagro in 1787. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1807, "upgrade-university", false, -- University abolished in Toledo in 1807. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1807, "upgrade-university", false, -- University abolished in Osma in 1807. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1807, "upgrade-university", false, -- University abolished in Oñate in 1807. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
--		1807, "upgrade-university", false -- Minor university in Irache abolished in 1807. Source: Enrique Martínez Ruiz; Consuelo Maqueda, Atlas Histórico de España I, 2000, p. 225.
	},
	Regions = {"Europe", "Iberia", "West and Central Europe"}
})

DefineProvince("Champagne", { -- includes Brie
	World = "Earth",
	FactionCulturalNames = {
		"latin", "France", "Champagne"
	},
	Tiles = {
		{488, 116},
		{489, 116}, {489, 117}, {489, 118}, {489, 119},
		{490, 116}, {490, 117}, {490, 118}, {490, 119},
		{491, 116}, {491, 117}, {491, 118}, {491, 119},
		{492, 114}, {492, 115}, {492, 116}, {492, 117}, {492, 118}, {492, 119},
		{493, 114}, {493, 115}, {493, 116}, {493, 117}, {493, 118}, {493, 119},
		{494, 115}, {494, 116}, {494, 117}, {494, 118}, {494, 119}, {494, 120},
		{495, 119}, {495, 120}
	},
	SettlementLocation = {491, 118}, -- Troyes
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Neustria", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
--		"latin", "France"
	},
	HistoricalOwners = {
		-50, "latin", "Rome" -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Archbishopric existent in Reims during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Archbishopric existent in Sens during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1547, "upgrade-university", true, -- University founded in Reims in 1547. Source: The Cambridge Modern History Atlas, 1912, p. 9.
		1789, "upgrade-courthouse", true -- Chief court of the salt tax existent in Troyes in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Corinth", {
	World = "Earth",
	Tiles = {
		{545, 147}, {545, 148}
	},
	CulturalNames = {
		"greek", "Corinth", "settlement-derived-name"
	},
	SettlementLocation = {545, 148}, -- Corinth
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"greek", "Corinth"
	},
	Regions = {"Europe", "Greece", "West and Central Europe"},
	HistoricalSettlementBuildings = {
		-1700, "unit-teuton-stronghold", true, -- Mycenaean fortifications present in Korakou and Perdikaria (both in the isthmus of Corinth); Source: "Atlas de História Mundial", 2001, p. 67.
		-1190, "unit-teuton-stronghold", false -- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	}
})

DefineProvince("Cornwall", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "England", "Cornwall", "name-elements", {
			"compound", "prefix", "english", "noun", "singular", "Corn", -- presumably
			"compound", "suffix", "english", "noun", "singular", "Wall" -- presumably
		}
	},
	Tiles = {
		{464, 113},
		{465, 112}, {465, 113},
		{466, 112},
		{467, 112}
	},
	SettlementLocation = {465, 113}, -- Falmouth
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "England"
	},
	HistoricalOwners = {
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "Rome"
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Corsica", {
	World = "Earth",
	CulturalNames = {
		"latin", "Corsica"
	},
	Tiles = {
--		{126, 34}, -- old map
		{505, 135}, {505, 136}, {505, 137},
		{506, 134}, {506, 135}, {506, 136}
	},
	SettlementLocation = {506, 136},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Courland", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Kurland"
	},
	Tiles = {
		{540, 94}, {540, 95},
		{541, 93}, {541, 94}, {541, 95},
		{542, 92}, {542, 93}, {542, 94}, {542, 95},
		{543, 92}, {543, 93}, {543, 94}, {543, 95},
		{544, 92}, {544, 93}, {544, 94}, {544, 95},
		{545, 93}, {545, 94}, {545, 95},
		{546, 94}, {546, 95},
		{547, 94}, {547, 95},
		{548, 95},
		{549, 95},
		{550, 95},
		{551, 95},
		{552, 95},
		{553, 95},
		{554, 95}, {554, 96},
		{555, 96}, {555, 97},
		{556, 97}
	},
	Map = "maps/random/random-map-forest.smp",
	SettlementLocation = {547, 95},
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
	},
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Crete", {
	World = "Earth",
	Tiles = {
--		{137, 39}, {138, 39}, -- old map
		{547, 155},
		{548, 155},
		{549, 155},
		{550, 155}, {550, 156},
		{551, 155}, {551, 156},
		{552, 155}, {552, 156},
		{553, 156},
		{554, 156}
	},
	CulturalNames = {
		"greek", "Crete"
	},
	SettlementLocation = {551, 155}, -- Knossos
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"minoan", "Minoan Tribe",
		"minoan", "Crete",
		"greek", "Krete"
	},
	HistoricalOwners = {
		-3000, "minoan", "Minoan Tribe" -- Minoans inhabited the island of Crete in 3000 BC; Source: Rodney Castleden, "Minoans", 2002, p. 4.
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Crimea", {
	World = "Earth",
	CulturalNames = {
		"greek", "Tauric Chersonese",
		"latin", "Tauric Chersonese" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
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
	SettlementLocation = {576, 128}, -- Simferopol
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"greek", "Cimmerian Bosphorus"
--		"teuton", "Crimea"
	},
	Regions = {"Eurasia", "Europe"}
})

DefineProvince("Croatia", {
	World = "Earth",
	CulturalNames = {
		"slav", "Croatia"
	},
	FactionCulturalNames = {
		"slav", "Croatia", "Croatia"
	},
	Tiles = {
--		{130, 31}, {131, 31}, {131, 32}, {132, 31}, {132, 32}, {133, 32}, {133, 33}, -- old map
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
	SettlementLocation = {525, 125}, -- Zagreb
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"slav", "Croatia"
	},
	HistoricalModifiers = {
		1874, "upgrade-university", true -- University founded in Zagreb in 1874. Source: A.J.P. Taylor, The Habsburg Monarchy, 1809-1918, 1964, p. 203.
	},
	Regions = {"Europe", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Cumbria", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "England", "Cumbria"
	},
	Tiles = {
		{470, 100}, {470, 101},
		{471, 99}, {471, 100}, {471, 101},
		{472, 99}, {472, 100}, {472, 101},
		{473, 101}
	},
	SettlementLocation = {471, 100}, -- Carlisle
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"celt", "Brigantes Tribe",
		"teuton", "England"
	},
	HistoricalOwners = {
		-264, "celt", "Brigantes Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "celt",
		1560, "teuton"
	},
	HistoricalClaims = {
		43, "latin", "Rome"
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Dalmatia", {
	World = "Earth",
	CulturalNames = {
		"latin", "Illyricum",
		"teuton", "Dalmatia"
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
	SettlementLocation = {523, 130}, -- Zara
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"illyrian", "Illyrian Tribe"
	},
	HistoricalOwners = {
		-750, "illyrian", "Illyrian Tribe", -- Eastern Mediterranean between 750 and 625 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-219, "latin", "Rome", -- Istria and the Dalmatian coast acquired by Rome in 219 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		397, "goth", "Visigoth Tribe", -- The Visigoths migrated to the Western Balkans in 397 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		412, "", "", -- The Visigoths migrated to Aquitaine in 412 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		507, "goth", "Ostrogoth Tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		803, "teuton", "Francia", -- Charles the Great of Francia acquired Dalmatia in 803/806 AD; Source: "Medieval Warfare V.2", 2013, p. 9.
		1560, "latin", "Venice" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-219, "latin", "Rome"
	},
	HistoricalCultures = {
		-750, "illyrian"
	},
	Regions = {"Europe", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Dobruja", {
	World = "Earth",
	CulturalNames = {
		"latin", "Lesser Scythia"
	},
	Tiles = {
		{558, 130},
		{559, 128}, {559, 130},
		{560, 127}, {560, 128}, {560, 129}, {560, 130}, {560, 131},
		{561, 127}, {561, 128}, {561, 129},
		{562, 127}, {562, 128},
		{563, 127}, {563, 128}
	},
	SettlementLocation = {560, 130}, -- Constanta
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"greek", "Thrace",
		"thracian", "Getae Tribe"
	},
	Regions = {"Europe", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Don", {
	World = "Earth",
	CulturalNames = {
		"greek", "Tanais", "settlement-derived-name"
	},
	FactionCulturalNames = {
		"celt", "Vana Tribe", "Vanaland" -- alternatively called "Vanaheim"; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
	},
	Tiles = {
--		{147, 30}, {148, 29}, {148, 30}, {149, 29}, {149, 30}, {150, 28}, {150, 29}, {150, 30}, -- old map
		{588, 113},
		{589, 112}, {589, 113}, {589, 121},
		{590, 111}, {590, 112}, {590, 113}, {590, 120}, {590, 121},
		{591, 111}, {591, 112}, {591, 113}, {591, 114}, {591, 120}, {591, 121},
		{592, 111}, {592, 112}, {592, 113}, {592, 114}, {592, 120}, {592, 121},
		{593, 111}, {593, 112}, {593, 113}, {593, 114}, {593, 115}, {593, 116}, {593, 117}, {593, 118}, {593, 119}, {593, 120}, {593, 121},
		{594, 113}, {594, 114}, {594, 115}, {594, 116}, {594, 117}, {594, 118}, {594, 119}, {594, 120},
		{595, 114}, {595, 115}, {595, 116}, {595, 117}, {595, 118}, {595, 119}, {595, 120},
		{596, 114}, {596, 115}, {596, 116}, {596, 117}, {596, 118}, {596, 119}, {596, 120},
		{597, 115}, {597, 116}, {597, 117}, {597, 118}, {597, 119}, {597, 120},
		{598, 115}, {598, 116}, {598, 117}, {598, 118}, {598, 119}, {598, 120},
		{599, 115}, {599, 116}, {599, 117}, {599, 118}, {599, 119}, {599, 120},
		{600, 115}, {600, 116}, {600, 117}, {600, 118}, {600, 119},
		{601, 115}, {601, 116}, {601, 117}, {601, 118}, {601, 119},
		{602, 116}, {602, 117}, {602, 118},
		{603, 115}, {603, 116}, {603, 117},
		{604, 116}
	},
	SettlementLocation = {592, 121}, -- Rostov-on-Don
	Map = "maps/earth/tanais.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"celt", "Vana Tribe"
	},
	HistoricalSettlementBuildings = {
		-3000, "unit-germanic-town-hall", true,
		-3000, "unit-germanic-barracks", true,
		-2800, "unit-germanic-town-hall", false,
		-2800, "unit-germanic-barracks", false
	},
	Regions = {"Eurasia", "Europe"}
})

DefineProvince("Drenthe", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "Netherlands", "Drenthe" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	},
	Tiles = {
		{497, 105},
		{498, 105},
		{499, 105}
	},
	SettlementLocation = {498, 105}, -- Assen
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"basque", "Funnelbeaker Tribe",
		"teuton", "Ampsivarii Tribe",
		"teuton", "Drenthe",
		"teuton", "Netherlands",
		"teuton", "Holy Rome"
	},
	Regions = {"Europe", "Germany-Netherlands", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Durham", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "England", "Durham", "settlement-derived-name" -- presumably a settlement-derived name
	},
	Tiles = {
		{473, 100},
		{474, 100},
		{475, 100},
		{476, 100}
	},
	SettlementLocation = {475, 100}, -- Durham
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "England",
		"teuton", "Northumbria"
	},
	HistoricalOwners = {
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "Angle Tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		654, "teuton", "Northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		526, "teuton"
	},
	HistoricalClaims = {
		43, "latin", "Rome"
	},
	HistoricalModifiers = {
		1832, "upgrade-university", true -- University founded in Durham in 1832. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("East Anglia", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "England", "East Anglia", "name-elements", {
			"separate", "prefix", "english", "noun", "East"
--			"separate", "suffix", -- ?
		}
	},
	Tiles = {
		{481, 105}, {481, 106}, {481, 107},
		{482, 105}, {482, 106}, {482, 107},
		{483, 105}, {483, 106}, {483, 107},
		{484, 106}, {484, 107}
	},
	SettlementLocation = {484, 106}, -- Yarmouth
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "England"
	},
	HistoricalOwners = {
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "Angle Tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		616, "teuton", "East Anglia", -- we have notice that Rædwald was king of East Anglia then; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-79.
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "Rome",
		616, "teuton", "East Anglia"
	},
	HistoricalCultures = {
		526, "teuton"
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("East Friesland", { -- also includes Osnabrück
	World = "Earth",
	CulturalNames = {
		"teuton", "East Friesland"
	},
	FactionCulturalNames = {
		"teuton", "Frisian Tribe", "East Friesland",
		"teuton", "Netherlands", "East Friesland"
	},
	Tiles = {
		{500, 103}, {500, 104}, {500, 105}, {500, 106},
		{501, 103}, {501, 104}, {501, 105}, {501, 106},
		{502, 106},
		{503, 106}, {503, 107}
	},
	SettlementLocation = {500, 104}, -- Emden
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Funnelbeaker Tribe",
		"teuton", "Frisian Tribe",
		"teuton", "Holy Rome"
	},
	Coastal = true,
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Epirus", {
	World = "Earth",
	Tiles = {
		{537, 143},
		{538, 142}, {538, 143}, {538, 144},
		{539, 141}, {539, 142}, {539, 143}, {539, 144},
		{540, 142}, {540, 143}, {540, 144}
	},
	CulturalNames = {
		"greek", "Epirus"
	},
	SettlementLocation = {538, 144}, -- Nicopolis
	Map = "maps/random/random-map-forest.smp",
	Claims = {
		"greek", "Chaoni Tribe",
		"greek", "Epirus"
	},
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Essex", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "Angle Tribe", "Essex",
		"teuton", "England", "Essex", "name-elements", {
			"compound", "prefix", "english", "noun", "Es",
			"compound", "suffix", "english", "noun", "plural", "Sex"
		}
	},
	Tiles = {
		{477, 108},
		{478, 108}, {478, 109},
		{479, 107}, {479, 108}, {479, 109},
		{480, 107}, {480, 108}, {480, 109},
		{481, 108}, {481, 109},
		{482, 108}
	},
	SettlementLocation = {480, 109}, -- London
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "England"
	},
	HistoricalOwners = {
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "Saxon Tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		526, "teuton"
	},
	HistoricalClaims = {
		43, "latin", "Rome"
	},
	HistoricalModifiers = {
		1836, "upgrade-university", true -- University founded in London in 1836. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Estonia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Estland"
	},
	Tiles = {
--		{135, 23}, {135, 24}, {136, 23}, {136, 24}, {137, 22}, {137, 23}, {137, 24}, {138, 22}, {138, 23}, {138, 24}, {139, 22}, {139, 23}, -- old map
		{543, 89},
		{544, 89},
		{547, 88}, {547, 89},
		{548, 87}, {548, 88}, {548, 89},
		{549, 87}, {549, 88}, {549, 89},
		{550, 87}, {550, 88}, {550, 89}, {550, 90},
		{551, 87}, {551, 88}, {551, 89}, {551, 90},
		{552, 87}, {552, 88}, {552, 89}, {552, 90},
		{553, 87}, {553, 88}, {553, 89}, {553, 90},
		{554, 87}, {554, 88}, {554, 89}, {554, 90}, {554, 91},
		{555, 87}, {555, 88}, {555, 89}, {555, 90}, {555, 91},
		{556, 87}, {556, 88}, {556, 89}, {556, 90}, {556, 91},
		{557, 87}, {557, 89}, {557, 90}, {557, 91},
		{558, 87},
		{559, 87}
	},
	SettlementLocation = {550, 87}, -- Tallinn
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Euboea", { -- to make this island appear separated from Attica, it was necessary to "bump" it one tile to the north and one tile to the east into the sea
	World = "Earth",
	Tiles = {
		{547, 144},
		{548, 144}, {548, 145},
		{549, 145}
	},
	CulturalNames = {
		"greek", "Euboea"
	},
	SettlementLocation = {548, 145}, -- Chalcis
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"minoan", "Impressedware Tribe"
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Farther Pomerania", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Hinterpommern", "name-elements", {
			"compound", "prefix", "high-german", "adposition", "Hinter",
--			"suffix" -- ?
		}
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
	SettlementLocation = {523, 102}, -- Kolberg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"goth", "Turcilingian Tribe"
	},
	Coastal = true,
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Finland", {
	World = "Earth",
	Tiles = {
		{540, 77}, {540, 78},
		{541, 76}, {541, 77}, {541, 78}, {541, 79}, {541, 80}, {541, 81}, {541, 82}, {541, 83},
		{542, 76}, {542, 77}, {542, 78}, {542, 79}, {542, 80}, {542, 81}, {542, 82}, {542, 83},
		{543, 76}, {543, 77}, {543, 78}, {543, 79}, {543, 80}, {543, 81}, {543, 82}, {543, 83},
		{544, 75}, {544, 76}, {544, 77}, {544, 78}, {544, 79}, {544, 80}, {544, 81}, {544, 82}, {544, 83}, {544, 84},
		{545, 74}, {545, 75}, {545, 76}, {545, 77}, {545, 78}, {545, 79}, {545, 80}, {545, 81}, {545, 82}, {545, 83}, {545, 84}, {545, 85},
		{546, 74}, {546, 75}, {546, 76}, {546, 77}, {546, 78}, {546, 79}, {546, 80}, {546, 81}, {546, 82}, {546, 83}, {546, 84}, {546, 85},
		{547, 73}, {547, 74}, {547, 75}, {547, 76}, {547, 77}, {547, 78}, {547, 79}, {547, 80}, {547, 81}, {547, 82}, {547, 83}, {547, 84},
		{548, 73}, {548, 74}, {548, 75}, {548, 76}, {548, 77}, {548, 78}, {548, 79}, {548, 80}, {548, 81}, {548, 82}, {548, 83}, {548, 84},
		{549, 68}, {549, 72}, {549, 73}, {549, 74}, {549, 75}, {549, 76}, {549, 77}, {549, 78}, {549, 79}, {549, 80}, {549, 81}, {549, 82}, {549, 83}, {549, 84},
		{550, 68}, {550, 72}, {550, 73}, {550, 74}, {550, 75}, {550, 76}, {550, 77}, {550, 78}, {550, 79}, {550, 80}, {550, 81}, {550, 82}, {550, 83}, {550, 84},
		{551, 68}, {551, 71}, {551, 72}, {551, 73}, {551, 74}, {551, 75}, {551, 76}, {551, 77}, {551, 78}, {551, 79}, {551, 80}, {551, 81}, {551, 82}, {551, 83}, {551, 84},
		{552, 68}, {552, 69}, {552, 70}, {552, 71}, {552, 72}, {552, 73}, {552, 74}, {552, 75}, {552, 76}, {552, 77}, {552, 78}, {552, 79}, {552, 80}, {552, 81}, {552, 82}, {552, 83}, {552, 84},
		{553, 83}, {553, 84},
		{554, 83},
		{555, 83},
		{556, 83},
		{557, 83},
		{558, 83},
		{559, 83},
		{560, 83},
		{561, 83},
		{562, 83}, {562, 84},
		{563, 84},
		{564, 84},
		{565, 84}
	},
	CulturalNames = {
		"finnish", "Finland",
		"norse", "Finland"
	},
	SettlementLocation = {550, 84}, -- Helsinki
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"finnish", "Fenni Tribe"
	},
	HistoricalOwners = {
		-264, "finnish", "Fenni Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "norse", "Sweden" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "finnish"
	},
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("France", {
	World = "Earth",
	CulturalNames = {
		"celt", "Gallia Lugdunensis",
		"latin", "Gallia Lugdunensis"
	},
	FactionCulturalNames = {
		"latin", "France", "France",
		"teuton", "Francia", "Neustria", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 53-55.
		"teuton", "Frank Tribe", "Neustria"
	},
	Tiles = {
--		{119, 29}, {119, 30}, {120, 29}, {120, 30}, {121, 28}, {121, 29}, {121, 30}, {122, 29}, {122, 30}, {122, 31}, {123, 29}, {123, 30}, {124, 29}, {125, 29}, -- old map
		{476, 120}, {476, 121},
		{477, 118}, {477, 119}, {477, 120}, {477, 121},
		{478, 118}, {478, 119}, {478, 120}, {478, 121},
		{479, 118}, {479, 119}, {479, 120}, {479, 121},
		{480, 118}, {480, 119}, {480, 120}, {480, 121}, {480, 122},
		{481, 117}, {481, 118}, {481, 119}, {481, 120}, {481, 121},
		{482, 117}, {482, 118}, {482, 119}, {482, 120}, {482, 121}, {482, 122}, {482, 124},
		{483, 116}, {483, 117}, {483, 118}, {483, 119}, {483, 120}, {483, 121}, {483, 122}, {483, 123}, {483, 124},
		{484, 115}, {484, 116}, {484, 117}, {484, 118}, {484, 119}, {484, 120}, {484, 121}, {484, 122}, {484, 123}, {484, 124}, {484, 125},
		{485, 115}, {485, 116}, {485, 117}, {485, 118}, {485, 119}, {485, 120}, {485, 121}, {485, 122}, {485, 123}, {485, 124}, {485, 125},
		{486, 115}, {486, 116}, {486, 117}, {486, 118}, {486, 119}, {486, 120}, {486, 121}, {486, 122}, {486, 123}, {486, 124}, {486, 125},
		{487, 115}, {487, 116}, {487, 117}, {487, 118}, {487, 119}, {487, 120}, {487, 121}, {487, 122}, {487, 123},
		{488, 115}, {488, 117}, {488, 118}, {488, 119}, {488, 120}, {488, 121}, {488, 122}, {488, 123},
		{489, 115}, {489, 120}, {489, 121}, {489, 122}, {489, 123}, {489, 124},
		{490, 115}, {490, 120}, {490, 121}, {490, 122}, {490, 123}, {490, 124},
		{491, 115}, {491, 122}, {491, 124}, {491, 125}, {491, 126},
		{492, 124}, {492, 125}, {492, 126},
		{493, 124}, {493, 125}, {493, 126}
	},
	SettlementLocation = {486, 117}, -- Paris
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Neustria", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
--		"latin", "France"
	},
	HistoricalOwners = {
		-50, "latin", "Rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "teuton", "Francia", -- The Frankish Merovingian king Clovis conquers Syagrius' realm, the last Roman territory in Gaul in 486; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "latin", "France" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		-50, "latin", "Rome",
		486, "teuton", "Francia"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in St. Denis during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1250, "upgrade-university", true, -- University existent in Paris in 1250. Source: Atlas de História Mundial, 2001, p. 144.
		1250, "upgrade-university", true, -- University existent in Angers in 1250. Source: Atlas de História Mundial, 2001, p. 144.
		1305, "upgrade-university", true, -- University founded in Orléans in 1305. Source: Atlas de História Mundial, 2001, p. 144.
		1330, "upgrade-university", true, -- University founded in Lyon in 1330. Source: The Cambridge Modern History Atlas, 1912, p. 9.
		1464, "upgrade-university", true, -- University founded in Bourges in 1464. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain, cour des aides, cambre des comptes, court of admiralty, cour des monnaies, prévôt des maréchaux and chief court of the salt tax existent in Paris in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chief court of the salt tax existent in Abbeville in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux and chief court of the salt tax existent in Soissons in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chambre des comptes existent in Nevers in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux and chief court of the salt tax existent in Angers in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chief court of the salt tax existent in Laval in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chief court of the salt tax existent in Le Mans in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux and chief court of the salt tax existent in Orléans in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux and chief court of the salt tax existent in Bourges in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chief court of the salt tax existent in Tours in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true -- Chief court of the salt tax existent in Lyon in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Franche Comte", {
	World = "Earth",
	CulturalNames = {
		"celt", "Maxima Sequanorum",
		"latin", "Maxima Sequanorum" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	FactionCulturalNames = {
		"latin", "France", "Franche Comté"
	},
	Tiles = {
		{495, 121}, {495, 122}, {495, 123},
		{496, 120}, {496, 121}, {496, 122}, {496, 123},
		{497, 120}, {497, 121}, {497, 122},
		{498, 120}, {498, 121}, {498, 122},
		{499, 120}, {499, 121}
	},
	SettlementLocation = {497, 121}, -- Besançon
	Map = "maps/earth/belfort.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"celt", "Sequani Tribe"
--		"latin", "France"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Luxeuil during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1422, "upgrade-university", true, -- University founded in Dôle in 1422. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1485, "upgrade-university", true, -- University founded in Besançon in 1485. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain and prévôt des maréchaux existent in Besançon in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Franconia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Franconia"
	},
	FactionCulturalNames = {
		"teuton", "Frank Tribe", "Franconia",
		"teuton", "Netherlands", "Franconia"
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
	SettlementLocation = {508, 114}, -- Würzburg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Linearware Tribe",
		"celt", "Turone Tribe",
		"teuton", "Hermunduri Tribe",
		"teuton", "Thuringian Tribe",
		"teuton", "Franconia", -- Part of the Duchy of Franconia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "Holy Rome"
	},
	HistoricalModifiers = {
		1402, "upgrade-university", true -- University founded in Wurzburg in 1402. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Friesland", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Friesland" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	},
	FactionCulturalNames = {
		"teuton", "Frisian Tribe", "Frisia",
		"teuton", "Netherlands", "Friesland" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	},
	Tiles = {
		{496, 104}, {496, 105},
		{497, 104},
		{498, 104},
		{499, 104},
	},
	SettlementLocation = {496, 104}, -- Leeuwarden
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"basque", "Funnelbeaker Tribe",
		"teuton", "Frisian Tribe",
		"teuton", "Friesland",
		"teuton", "Netherlands",
		"teuton", "Holy Rome"
	},
	HistoricalModifiers = {
		1585, "upgrade-university", true -- University founded in Franeker in 1585. Source: The Cambridge Modern History Atlas, p. 9.
	},
	Regions = {"Europe", "Germany-Netherlands", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Galicia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Galicia"
	},
	Tiles = {
--		{133, 28}, {134, 28}, {135, 28}, {136, 28}, {137, 28}, {137, 29}, {138, 28}, {138, 29}, -- old map
		{534, 114},
		{535, 113}, -- Republic of Cracow
		{535, 114},
		{536, 113}, -- Republic of Cracow
		{536, 114},
		{537, 113}, {537, 114},
		{538, 113}, {538, 114},
		{539, 113}, {539, 114},
		{540, 113}, {540, 114},
		{541, 112}, {541, 113}, {541, 114},
		{542, 112}, {542, 113}, {542, 114}, {542, 115},
		{543, 113}, {543, 114}, {543, 115},
		{544, 113}, {544, 114}, {544, 115}, {544, 116},
		{545, 113}, {545, 114}, {545, 115}, {545, 116},
		{546, 113}, {546, 114}, {546, 115}, {546, 116},
		{547, 113}, {547, 114}, {547, 115}, {547, 116}, {547, 117},
		{548, 113}, {548, 114}, {548, 115}, {548, 116}, {548, 117},
		{549, 113}, {549, 114}, {549, 115}, {549, 116}, {549, 117},
		{550, 113}, {550, 114}, {550, 115}, {550, 116}, {550, 117}, {550, 118}, {550, 119},
		{551, 114}, {551, 115}, {551, 116}, {551, 117}, {551, 118},
		{552, 114}, {552, 115}, {552, 116}, {552, 117}
	},
	SettlementLocation = {547, 114}, -- Lvov / Lemberg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"goth", "Bastarnae Tribe",
		"goth", "Gepidae Tribe",
		"slav", "Poland"
	},
	HistoricalModifiers = {
		1364, "upgrade-university", true -- University founded in Krakow in 1364. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Cisleithania", "Europe", "Poland", "West and Central Europe"}
})

DefineProvince("Gallaecia", {
	World = "Earth",
	CulturalNames = {
		"latin", "Gallaecia"
	},
	FactionCulturalNames = {
		"teuton", "Galicia", "Galicia",
		"latin", "Portugal", "Galicia",
		"latin", "Spain", "Galicia"
	},
	Tiles = {
--		{114, 33}, {115, 33}, -- old map
		{454, 133}, {454, 134},
		{455, 133}, {455, 134}, {455, 135},
		{456, 132}, {456, 133}, {456, 134}, {456, 135},
		{457, 132}, {457, 133}, {457, 134}, {457, 135}, {457, 136},
		{458, 132}, {458, 133}, {458, 134}, {458, 135}, {458, 136},
		{459, 133}, {459, 134}, {459, 135}, {459, 136},
		{460, 135}
	},
	SettlementLocation = {456, 132}, -- Corunna
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Galicia"
	},
	HistoricalOwners = {
		-17, "latin", "Rome", -- Gallaecia and Asturias acquired by Rome in 17 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		411, "teuton", "Suebi Tribe", -- The Suebi conquered Gallaecia in 411 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		486, "teuton", "Galicia", -- Suebi kingdom of Galicia; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "latin", "Spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-17, "latin", "Rome"
	},
	HistoricalModifiers = {
		1532, "upgrade-university", true -- University founded in Santiago de Compostela in 1532. Source: The Cambridge Modern History Atlas, p. 9.
	},
	Regions = {"Europe", "Iberia", "West and Central Europe"}
})

DefineProvince("Gotaland", {
	World = "Earth",
	CulturalNames = {
		"goth", "Gothland",
		"norse", "Gotaland"
	},
	Tiles = {
--		{128, 21}, {128, 22}, {129, 21}, {129, 22}, {129, 23}, {130, 22}, {130, 23}, {131, 22}, {131, 23}, -- old map
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
	SettlementLocation = {513, 91}, -- Gothenburg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"goth", "Goth Tribe",
		"norse", "Geat Tribe"
	},
	HistoricalOwners = {
		-2800, "germanic", "Asa Tribe", -- in the Ynglinga saga, "Odin's people", the Asa, settle Scandinavia in a manner not too dissimilar from what archaeological findings tell us of Indo-European settlement in the region; thus the name "Asa Tribe" is used here to denote the Indo-European-speaking peoples who settled in Scandinavia, and were the precursors of the Germanic peoples 
		-2770, "germanic", "Yngling Tribe", -- estimated date
		-325, "goth", "Goth Tribe", -- Pytheas sets out on an exploration voyage in 325 BC; Pliny (in his Natural History) gives Pytheas as an authority for the existence of the Goths; Source: Carl Waldman and Catherine Mason, "Encyclopedia of European Peoples", 2006, p. 350; Source: Pliny the Elder, "The Natural History", 37.11; the Goths's earliest known homeland was Götaland; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		200, "", "", -- Goths migrate south about 200 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		1560, "norse", "Sweden" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-2800, "germanic", "Asa Tribe"
	},
	HistoricalCultures = {
		-2800, "germanic",
		-325, "goth"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Gotland", {
	World = "Earth",
	CulturalNames = {
		"goth", "Gotland"
	},
	Tiles = {
--		{133, 23}, -- old map
		{532, 92}, {532, 93},
		{533, 91}, {533, 92}
	},
	SettlementLocation = {532, 92},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
	},
	HistoricalOwners = {
		-325, "goth", "Goth Tribe", -- maybe should be later?
		200, "", "", -- Goths migrated south about 200 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		1560, "norse", "Denmark" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-325, "goth",
		1560, "norse"
	},
	HistoricalClaims = {
		-325, "goth", "Goth Tribe"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Hanover", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Hannover" -- is this a settlement-derived name?
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
	SettlementLocation = {507, 107}, -- Hanover
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Lombard Tribe",
		"teuton", "Holy Rome"
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Hedmark", {
	World = "Earth",
	Tiles = {
		{508, 79},
		{509, 78}, {509, 79}, {509, 80},
		{510, 78}, {510, 79}, {510, 80},
		{511, 78}, {511, 79}, {511, 80}, {511, 81}, {511, 82},
		{512, 79}, {512, 80}, {512, 81}, {512, 82}, {512, 83},
		{513, 79}, {513, 80}, {513, 81}, {513, 82}, {513, 83}, {513, 84},
		{514, 79}, {514, 80}, {514, 81}, {514, 82}, {514, 83}, {514, 84},
		{515, 81}, {515, 82}, {515, 84}
	},
	CulturalNames = {
		"norse", "Hedmark"
	},
	SettlementLocation = {512, 83}, -- Hamar
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"norse", "Norway"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Hesse", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Hessen"
	},
	Tiles = {
		{502, 112}, -- Duchy of Nassau
		{503, 112}, {503, 113}, -- Duchy of Nassau
		{504, 111}, {504, 112}, {504, 113}, {504, 114}, {504, 115},
		{505, 109}, -- Principality of Waldeck
		{505, 110}, {505, 111}, {505, 112}, {505, 113}, {505, 114}, {505, 115},
		{506, 109}, {506, 110}, {506, 111}, {506, 112}, {506, 113},
		{507, 110}, {507, 111}, {507, 112}
	},
	SettlementLocation = {506, 109}, -- Kassel
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Chatti Tribe",
		"teuton", "Austrasia", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		"teuton", "Franconia", -- Part of the Duchy of Franconia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "Hesse",
		"teuton", "Holy Rome"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Hersfeld during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Fulda during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Lorsch during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1527, "upgrade-university", true, -- University founded in Marburg in 1527. Source: The Cambridge Modern History Atlas, 1912, p. 9.
		1607, "upgrade-university", true -- University founded in Giessen in 1607. Source: The Cambridge Modern History Atlas, 1912, p. 9.
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Highland Scotland", {
	World = "Earth",
	CulturalNames = {
		"latin", "Caledonia"
	},
	FactionCulturalNames = {
		"teuton", "England", "Highland Scotland",
		"celt", "Scot Tribe", "Highland Scotland",
		"teuton", "Scotland", "Highland Scotland"
	},
	Tiles = {
--		{116, 22}, {116, 23}, {117, 22}, {117, 23}, {117, 24}, {118, 23}, {118, 24}, -- old map
		{460, 79}, {460, 90},
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
	SettlementLocation = {473, 93}, -- Aberdeen
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Hills",
	Coastal = true,
	Claims = {
		"celt", "Pict Tribe",
		"teuton", "Scotland" -- should be English
	},
	HistoricalOwners = {
		395, "celt", "Pict Tribe", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		1560, "teuton", "Scotland" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		395, "celt"
	},
	HistoricalModifiers = {
		1413, "upgrade-university", true, -- University founded in St. Andrews in 1413. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1494, "upgrade-university", true -- University founded in Aberdeen in 1494. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"British Isles", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Hither Pomerania", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Vorpommern", "name-elements", {
			"compound", "prefix", "high-german", "adposition", "Vor",
--			"suffix" -- ?
		}
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
	SettlementLocation = {521, 103}, -- Stettin
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Funnelbeaker Tribe",
		"goth", "Rugian Tribe"
	},
	Coastal = true,
	HistoricalModifiers = {
		1456, "upgrade-university", true -- University founded in Greifswald in 1456. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Holland", {
	World = "Earth",
	CulturalNames = {
		"latin", "Batavia"
	},
	FactionCulturalNames = {
		"teuton", "Batavian Tribe", "Batavia",
		"teuton", "Netherlands", "Holland"
	},
	Tiles = {
--		{123, 26}, {123, 27}, {124, 26}, {124, 27}, -- old map
		{490, 109},
		{491, 108}, {491, 109},
		{492, 107}, {492, 108}, {492, 109},
		{493, 106}, {493, 107}, {493, 108}, {493, 109},
		{494, 107}, {494, 108}, {494, 109},
		{495, 107}, {495, 108}, {495, 109},
		{496, 107}, {496, 108}, {496, 109}, {496, 110}, {496, 111},
		{497, 107}, {497, 109},
		{498, 107}
	},
	SettlementLocation = {493, 107}, -- Amsterdam
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "Batavian Tribe",
		"teuton", "Frank Tribe",
		"teuton", "Holland",
		"teuton", "Netherlands",
		"teuton", "Holy Rome"
	},
	HistoricalModifiers = {
		1575, "upgrade-university", true, -- University founded in Leyden in 1575. Source: The Cambridge Modern History Atlas, p. 9.
		1877, "upgrade-university", true, -- State university founded in Amsterdam in 1877. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
		1905, "upgrade-university", true -- Calvinist university founded in Amsterdam in 1905. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
	},
	Regions = {"Europe", "Germany-Netherlands", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Holstein", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Holstein" -- is this a settlement-derived name?
	},
	Tiles = {
		{505, 101}, {505, 102},
		{506, 101}, {506, 102},
		{507, 101}, {507, 102}, {507, 103},
		{508, 101}, {508, 102}, {508, 103},
		{509, 101}, {509, 102},
		{510, 101}
	},
	SettlementLocation = {508, 101}, -- Kiel
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Funnelbeaker Tribe",
		"teuton", "Saxon Tribe",
		"teuton", "Holy Rome"
	},
	Coastal = true,
	HistoricalOwners = {
		-3950, "basque", "Funnelbeaker Tribe", -- Funnel Beaker culture existed in parts of Northern Europe between 7000 and 2000 BC; since the other source gives them as being present in Zealand in 3950 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "teuton", "Saxon Tribe", -- also inhabited by the Teutones; Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		919, "teuton", "Holy Rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "norse", "Denmark" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-3950, "basque",
		-264, "teuton"
	},
	HistoricalClaims = {
		919, "teuton", "Saxony" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Hordaland", {
	World = "Earth",
	Tiles = {
		{494, 83},
		{495, 83}, {495, 84}, {495, 85}, {495, 86},
		{496, 83}, {496, 84}, {496, 85}, {496, 86},
		{497, 83}, {497, 84}, {497, 85},
		{498, 83}, {498, 84}, {498, 85},
		{499, 83}, {499, 84}, {499, 85},
		{500, 83}, {500, 84}
	},
	CulturalNames = {
		"norse", "Hordaland", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "old-norse", "noun", "singular", "Land" -- presumably
		}
	},
	SettlementLocation = {495, 84}, -- Bergen
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"norse", "Hordaland",
		"norse", "Norway"
	},
	Coastal = true,
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Hungary", {
	World = "Earth",
	FactionCulturalNames = {
		"magyar", "Hungary", "Hungary"
	},
	Tiles = {
--		{132, 29}, {132, 30}, {133, 29}, {133, 30}, {133, 31}, {134, 29}, {134, 30}, {134, 31}, {135, 29}, {135, 30}, {135, 31}, {136, 29}, -- old map
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
	Map = "maps/random/random-map-forest.smp",
	SettlementLocation = {535, 120}, -- Pest
	SettlementTerrain = "Plains",
	Claims = {
		"magyar", "Hungary",
		"persian", "Iazyge Tribe"
	},
	HistoricalOwners = {
		-264, "persian", "Iazyge Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		919, "magyar", "Hungary", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "Turkey" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "persian",
	},
	HistoricalModifiers = {
		1389, "upgrade-university", true, -- University founded in Budapest in 1389. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
--		1896, "upgrade-college", true -- Eötvos College founded in Budapest in 1896. Source: John Lukacs, Budapest 1900: a historical portrait of a city and its culture, pp. 175-176.
	},
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Iceland", {
	World = "Earth",
	Tiles = {
--				{103, 17}, {104, 17}, {104, 18}, {105, 17}, {105, 18}, {106, 17}, {106, 18}, {107, 17}, {107, 18}, {108, 17}, {109, 17}, -- old map
		{412, 68}, {412, 69},
		{413, 68}, {413, 69},
		{414, 68}, {414, 69}, {414, 71},
		{415, 67}, {415, 68}, {415, 69}, {415, 71},
		{416, 67}, {416, 68}, {416, 69}, {416, 71},
		{417, 68}, {417, 69}, {417, 70}, {417, 71}, {417, 72},
		{418, 68}, {418, 69}, {418, 70}, {418, 71}, {418, 72}, {418, 73},
		{419, 70}, {419, 71}, {419, 72}, {419, 73},
		{420, 70}, {420, 71}, {420, 72}, {420, 73}, {420, 74},
		{421, 69}, {421, 70}, {421, 71}, {421, 72}, {421, 73}, {421, 74},
		{422, 68}, {422, 69}, {422, 70}, {422, 71}, {422, 72}, {422, 73}, {422, 74},
		{423, 68}, {423, 69}, {423, 70}, {423, 71}, {423, 72}, {423, 73}, {423, 74},
		{424, 69}, {424, 70}, {424, 71}, {424, 72}, {424, 73}, {424, 74},
		{425, 68}, {425, 69}, {425, 70}, {425, 71}, {425, 72}, {425, 73}, {425, 74}, {425, 75},
		{426, 68}, {426, 69}, {426, 70}, {426, 71}, {426, 72}, {426, 73}, {426, 74}, {426, 75},
		{427, 68}, {427, 69}, {427, 70}, {427, 71}, {427, 72}, {427, 73}, {427, 74}, {427, 75},
		{428, 68}, {428, 69}, {428, 70}, {428, 71}, {428, 72}, {428, 73}, {428, 74},
		{429, 68}, {429, 69}, {429, 70}, {429, 71}, {429, 72}, {429, 73}, {429, 74},
		{430, 68}, {430, 69}, {430, 70}, {430, 71}, {430, 72}, {430, 73}, {430, 74},
		{431, 68}, {431, 69}, {431, 70}, {431, 71}, {431, 72}, {431, 73},
		{432, 68}, {432, 69}, {432, 70}, {432, 71}, {432, 72}, {432, 73},
		{433, 67}, {433, 68}, {433, 69}, {433, 70}, {433, 71}, {433, 72}, {433, 73},
		{434, 67}, {434, 68}, {434, 69}, {434, 70}, {434, 71}, {434, 72}, {434, 73},
		{435, 68}, {435, 69}, {435, 70}, {435, 71}, {435, 72},
		{436, 68}, {436, 69}, {436, 70}, {436, 71}, {436, 72},
		{437, 68}, {437, 69}, {437, 70}, {437, 71}, {437, 72},
		{438, 69}, {438, 70}, {438, 71}, {438, 72},
		{439, 69}, {439, 70}, {439, 71},
		{440, 69}, {440, 70}, {440, 71}
	},
	SettlementLocation = {418, 73}, -- Reykjavik
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Ireland", {
	World = "Earth",
	CulturalNames = {
		"latin", "Hibernia"
	},
	Tiles = {
--		{113, 25}, {113, 26}, {114, 25}, {114, 26}, {115, 25}, {115, 26}, -- old map
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
	SettlementLocation = {462, 104}, -- Dublin
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"celt", "Scot Tribe"
	},
	HistoricalOwners = {
		-- The Mount Sandel site (River Bann valley, Northern Ireland) was occupied in the late 9th millenium BC; in the site were found narrow-bladed, geometric microliths, wild boar bones, remains of birds such as mallard, teal, wigeon, grouse, capercaillie and snipe/woodcock, remains of fishes such as salmon, sea trout, eel and bass, hazelnuts, pears, apples and water-lilies; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 146.
		-- Occupation of Mount Sandel in Ireland may have begun by 8000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 152.
		395, "celt", "Scot Tribe"
	},
	HistoricalCultures = {
		395, "celt"
	},
	HistoricalModifiers = {
		1312, "upgrade-university", true, -- University founded in Dublin in 1312. Source: Atlas de História Mundial, p. 144.
	},
	Regions = {"British Isles", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Istria", {
	World = "Earth",
	CulturalNames = {
		"latin", "Istria",
		"teuton", "Küstenland"
	},
	Tiles = {
		{518, 124}, {518, 125},
		{519, 125}, {519, 126}, {519, 127},
		{520, 126}
	},
	SettlementLocation = {519, 126}, -- Trieste
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Jutland", {
	World = "Earth",
	CulturalNames = {
		"goth", "Reidgothland", -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
		"teuton", "Jutland",
		"norse", "Jutland"
	},
	FactionCulturalNames = {
		"teuton", "Jute Tribe", "Jutland"
	},
	Tiles = {
--		{126, 23}, {126, 24}, {126, 25}, {127, 25}, -- old map
		{503, 95}, {503, 96}, {503, 97},
		{504, 94}, {504, 95}, {504, 96}, {504, 97}, {504, 98},
		{505, 94}, {505, 95}, {505, 96}, {505, 97},
		{506, 93}, {506, 94}, {506, 95}, {506, 96}, {506, 97},
		{507, 93}, {507, 94}, {507, 95}, {507, 96},
		{508, 92}, {508, 93}, {508, 94}, {508, 95}, {508, 96},
		{509, 92}, {509, 93}, {509, 95},
		{510, 95}
	},
	SettlementLocation = {508, 96}, -- Aarhus
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"germanic", "Skeldung Tribe",
		"norse", "Dane Tribe",
		"teuton", "Charude Tribe",
		"teuton", "Jute Tribe"
	},
	HistoricalOwners = {
		-5800, "basque", "Ertebolle Tribe", -- Coastal Ertebolle Mesolithic sites and shell middens begin being occupied c. 5800 BC; they lived in eastern Jutland (i.e. Ertebolle itself on the Limfjord in northern Jutland, Bjornsholm), the Danish isles (the Karrebaek-Dybso Fjord sites in Zealand - which could sustain c. 250 people), and southern Sweden (Tagerup in a fjord on Scania - this site had a previous Kongemose occupation); Ertebolle people used pottery and did large-quantity fishing via traps or weirs; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 136.
		-2800, "germanic", "Skeldung Tribe", -- in the Ynglinga saga, "Odin's people", the Asa, settle Scandinavia in a manner not too dissimilar from what archaeological findings tell us of Indo-European settlement in the region; thus the name "Asa Tribe" is used here to denote the Indo-European-speaking peoples who settled in Scandinavia, and were the precursors of the Germanic peoples 
		-264, "", "", -- remove the Proto-Germanics
		-27, "teuton", "Charude Tribe", -- political situation in Europe (presumably) at the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		1560, "norse", "Denmark" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-5800, "basque",
		-2800, "germanic",
		-27, "teuton",
		1560, "norse"
	},
	HistoricalSettlementBuildings = {
		-1600, "unit-germanic-smithy", true -- bronzesmithing capabilities existed in Jutland in 1600 BC, since swords were crafted there at this date; Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-roerby-swords/
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Kent", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "Angle Tribe", "Kent",
		"teuton", "England", "Kent"
	},
	Tiles = {
		{480, 110},
		{481, 110},
		{482, 110},
		{483, 110}
	},
	SettlementLocation = {483, 110}, -- Dover
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "England"
	},
	HistoricalOwners = {
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "Jute Tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		526, "teuton"
	},
	HistoricalClaims = {
		43, "latin", "Rome"
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Lacedaemonia", {
	World = "Earth",
	Tiles = {
		{541, 150},
		{542, 150},
		{543, 150}, {543, 151},
		{544, 150},
		{545, 150}, {545, 151}
	},
	CulturalNames = {
		"greek", "Lacedaemonia"
	},
	SettlementLocation = {543, 150}, -- Sparta
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"greek", "Sparta"
	},
	HistoricalSettlementBuildings = {
		-1700, "unit-teuton-stronghold", true, -- Mycenaean fortifications present in Elliniko and Peristeria (both in the western coast of Messenia) between 1700 and 1200 BC, as well as in Phylakopi (in the island of Melos); Source: "Atlas de História Mundial", 2001, p. 67.
		-1190, "unit-teuton-stronghold", false -- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Latium", {
	World = "Earth",
	Tiles = {
--		{129, 33}, {129, 34}, -- old map
		{513, 134}, {513, 135},
		{514, 133}, {514, 134}, {514, 135}, {514, 136},
		{515, 135}, {515, 136}, {515, 137},
		{516, 136}, {516, 137},
		{517, 136}, {517, 137}, {517, 138}
	},
	CulturalNames = {
		"latin", "Latium"
	},
	SettlementLocation = {515, 136}, -- Rome
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"latin", "Latin Tribe",
		"latin", "Rome"
	},
	HistoricalOwners = {
		-750, "latin", "Latin Tribe", -- Latins present in Latium by 750-625 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-500, "latin", "Rome", -- Roman territory in 500 BC; was not actually all of Latium, but only the vicinity of the city of Rome; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		493, "goth", "Ostrogoth Tribe" -- Ostrogoths conquered Italy in 493 AD; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 8-9; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
	},
	HistoricalCultures = {
		-750, "latin"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Farfa during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1303, "upgrade-university", true -- University founded in Rome in 1303. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Latvia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Lettland"
	},
	Tiles = {
		{548, 94},
		{549, 91}, {549, 92}, {549, 93}, {549, 94},
		{550, 91}, {550, 92}, {550, 93}, {550, 94},
		{551, 91}, {551, 92}, {551, 93}, {551, 94},
		{552, 91}, {552, 92}, {552, 93}, {552, 94},
		{553, 91}, {553, 92}, {553, 93}, {553, 94},
		{554, 92}, {554, 93}, {554, 94},
		{555, 92}, {555, 93}, {555, 94}, {555, 95},
		{556, 92}, {556, 93}, {556, 94}, {556, 95}, {556, 96},
		{557, 92}, {557, 93}, {557, 94}, {557, 95}, {557, 96},
		{558, 92}, {558, 93}, {558, 94}, {558, 95}, {558, 96},
		{559, 94}, {559, 95}
	},
	SettlementLocation = {548, 94}, -- Riga
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
	},
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Lauenburg", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Lauenburg", "name-elements", { -- is this a settlement-derived name instead?
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
	},
	Tiles = {
		{509, 103},
		{510, 102}, {510, 103}
	},
	SettlementLocation = {510, 102},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"basque", "Funnelbeaker Tribe",
		"teuton", "Saxon Tribe",
		"teuton", "Holy Rome"
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Liguria", {
	World = "Earth",
	CulturalNames = {
		"celt", "Liguria",
		"latin", "Liguria"
	},
	Tiles = {
		{502, 130},
		{503, 129}, {503, 130},
		{504, 129},
		{505, 129},
		{506, 129},
		{507, 129}
	},
	SettlementLocation = {505, 129}, -- Genoa
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"celt", "Ligurian Tribe"
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Lincoln", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "England", "Lincoln"
	},
	Tiles = {
		{478, 103}, {478, 104}, {478, 105},
		{479, 103}, {479, 104}, {479, 105},
		{480, 104}, {480, 105}
	},
	SettlementLocation = {478, 104}, -- Lincoln
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "England"
	},
	HistoricalOwners = {
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "Angle Tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		654, "teuton", "Middle Anglia", -- Peada was king of the Middle Angles when Penda fell; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		656, "teuton", "Northumbria", -- After the murder of Peada in 656, Middle Anglia became a province of the Kingdom of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		657, "teuton", "Mercia", -- Wulfhere proclaimed Mercian king in 657, ending Northumbrian dominion (apparently from the source not only in Mercia but also in Middle Anglia); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "Rome",
		654, "teuton", "Middle Anglia"
	},
	HistoricalCultures = {
		526, "teuton"
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Lithuania", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Litauen"
	},
	Tiles = {
		{540, 96},
		{541, 96}, {541, 97}, {541, 98},
		{542, 96}, {542, 97}, {542, 98},
		{543, 96}, {543, 97}, {543, 98},
		{544, 96}, {544, 97}, {544, 98}, {544, 99}, {544, 100},
		{545, 96}, {545, 97}, {545, 98}, {545, 99}, {545, 100},
		{546, 96}, {546, 97}, {546, 98}, {546, 99}, {546, 100},
		{547, 96}, {547, 97}, {547, 98}, {547, 99}, {547, 100}, {547, 101},
		{548, 96}, {548, 97}, {548, 98}, {548, 99}, {548, 100}, {548, 101},
		{549, 96}, {549, 97}, {549, 98}, {549, 99}, {549, 100}, {549, 101},
		{550, 96}, {550, 97}, {550, 98}, {550, 99}, {550, 100},
		{551, 96}, {551, 97}, {551, 98}, {551, 99}, {551, 100},
		{552, 96}, {552, 97}, {552, 98}, {552, 99}, {552, 100},
		{553, 96}, {553, 97}, {553, 98}, {553, 99},
		{554, 97}, {554, 98}, {554, 99},
		{555, 98}, {555, 99}
	},
	SettlementLocation = {552, 100}, -- Vilnius
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"slav", "Aestui Tribe"
	},
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Lombardy", {
	World = "Earth",
	CulturalNames = {
		"celt", "Transpadane Gaul",
		"latin", "Transpadane Gaul"
	},
	Tiles = {
--		{125, 31}, {125, 32}, {126, 31}, {126, 32}, {127, 31}, {127, 32}, {128, 31}, {128, 32}, {128, 33}, {129, 31}, -- old map
		{505, 125}, {505, 126},
		{506, 124}, {506, 125}, {506, 126}, {506, 127},
		{507, 124}, {507, 125}, {507, 126}, {507, 127},
		{508, 124}, {508, 125}, {508, 126}, {508, 127},
		{509, 123}, {509, 124}, {509, 125}, {509, 126}, {509, 127}
	},
	SettlementLocation = {506, 126}, -- Milan
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalModifiers = {
		1565, "upgrade-university", true, -- University founded in Milan in 1565. Source: The Cambridge Modern History Atlas, p. 9.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Lorraine", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Lothringen"
	},
	FactionCulturalNames = {
		"latin", "France", "Lorraine"
	},
	Tiles = {
		{495, 116}, {495, 117}, {495, 118},
		{496, 117}, {496, 118}, {496, 119},
		{497, 118}, {497, 119},
		{498, 118}, {498, 119},
		{499, 118}, {499, 119}
	},
	SettlementLocation = {496, 118}, -- Nancy
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Holy Rome"
	},
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain and prévôt des maréchaux existent in Nancy in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Lower Austria", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Lower Austria"
	},
	Tiles = {
		{521, 119},
		{522, 117}, {522, 118}, {522, 119},
		{523, 117}, {523, 118}, {523, 119},
		{524, 117}, {524, 118}, {524, 119},
		{525, 117}, {525, 118}, {525, 119},
		{526, 117}, {526, 118}, {526, 119}, {526, 120},
		{527, 117}, {527, 118}
	},
	SettlementLocation = {526, 118}, -- Vienna
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Linearware Tribe",
		"celt", "Norici Tribe",
		"teuton", "Austria",
		"teuton", "Holy Rome"
	},
	HistoricalOwners = {
		-- The people of the Linear Pottery culture arrived in northern Poland and Germany about 5500 BC, possessing knowledge of agriculture; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 139.
		-- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-5500, "basque", "Linearware Tribe",
		-800, "celt", "Norici Tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "Rome", -- Noricum acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "Ostrogoth Tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "Holy Rome", -- Bavarian East March; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "Austria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "Rome",
		919, "teuton", "Bavaria", -- Bavarian East March within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-5500, "basque",
		-800, "celt"
	},
	HistoricalModifiers = {
		1365, "upgrade-university", true, -- University founded in Vienna in 1365. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
--		1815, "upgrade-college", true -- Imperial Polytechnic Institute of Vienna founded in 1815. Source: Silvia Fernanda de Mendonça Figueirôa, "Ciência e tecnologia no Brasil Imperial: Guilherme Schüch, Barão de Capanema (1824-1908)", 2005, p. 442.
	},
	Regions = {"Cisleithania", "Europe", "Germany-Netherlands", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Lower Lusatia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Lower Lusatia"
	},
	Tiles = {
		{517, 108},
		{518, 108},
		{519, 108},
		{520, 108},
		{521, 108}, {521, 109},
		{522, 108}, {522, 109}, {522, 110}
	},
	SettlementLocation = {521, 108}, -- Guben
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalModifiers = {
		1506, "upgrade-university", true -- University founded in Frankfort-on-the-Oder in 1506. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Lower Rhine", {
	World = "Earth",
	Tiles = {
		{497, 110}, {497, 111}, {497, 112}, {497, 113}, {497, 114},
		{498, 111}, {498, 112}, {498, 113}, {498, 114}, {498, 115}, {498, 116},
		{499, 112}, {499, 113}, {499, 114}, {499, 115}, {499, 116},
		{500, 112}, {500, 113}, {500, 114}, {500, 115}, {500, 116},
		{501, 113}, {501, 114},
		{502, 113}, {502, 114}
	},
	SettlementLocation = {498, 111}, -- Cologne
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Austrasia", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		"teuton", "Holy Rome"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Prüm during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1388, "upgrade-university", true, -- University founded in Cologne in 1388. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1454, "upgrade-university", true -- University founded in Trier in 1454. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Gaul", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Lowland Scotland", {
	World = "Earth",
	CulturalNames = {
		"latin", "Valentia" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	},
	FactionCulturalNames = {
		"teuton", "England", "Lowland Scotland",
		"celt", "Scot Tribe", "Lowland Scotland",
		"teuton", "Scotland", "Lowland Scotland"
	},
	Tiles = {
		{466, 97}, {466, 98}, {466, 99},
		{467, 97}, {467, 98}, {467, 99},
		{468, 97}, {468, 98}, {468, 99},
		{469, 97}, {469, 98}, {469, 99},
		{470, 97}, {470, 98}, {470, 99},
		{471, 97}, {471, 98},
		{472, 97}, {472, 98},
		{473, 97}, {473, 98}
	},
	SettlementLocation = {470, 97}, -- Edinburgh
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Hills",
	Coastal = true,
	Claims = {
		"teuton", "Scotland" -- should be English
	},
	HistoricalOwners = {
		80, "latin", "Rome", -- The area between the Wall of Antoninus (or Severus) and Hadrian's Wall was acquired by Rome in 80 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "teuton", "Scotland" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		80, "latin", "Rome"
	},
	HistoricalModifiers = {
		1450, "upgrade-university", true, -- University founded in Glasgow in 1450. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1582, "upgrade-university", true -- University founded in Edinburgh in 1582. Source: The Cambridge Modern History Atlas, p. 9.
	},
	Regions = {"British Isles", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Macedonia", {
	World = "Earth",
	Tiles = {
--		{134, 35}, {135, 34}, {135, 35}, {136, 34}, {137, 34}, -- old map
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
		"greek", "Macedonia"
	},
	SettlementLocation = {542, 140}, -- Aegae
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"greek", "Macedon",
		"thracian", "Edoni Tribe", -- inhabited the region between Stryinon and Nestus rivers
		"thracian", "Odomanti Tribe" -- inhabited the region between Stryinon and Nestus rivers
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Magdeburg", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Magdeburg", "settlement-derived-name" -- presumably, since a settlement with that name exists there
	},
	Tiles = {
		{509, 109},
		{510, 108}, {510, 109},
		{511, 106}, {511, 107}, {511, 108}, {511, 109},
		{512, 105}, {512, 106}, {512, 107}, {512, 108}, {512, 109},
		{513, 105}, {513, 106}, {513, 107}, {513, 108}, {513, 109},
		{514, 108}, {514, 109},
		{515, 108},
		{516, 108}
	},
	SettlementLocation = {513, 107}, -- Magdeburg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Cherusci Tribe",
		"teuton", "Magdeburg",
		"teuton", "Holy Rome"
	},
	HistoricalModifiers = {
		1576, "upgrade-university", true -- University founded in Helmstadt in 1576. Source: The Cambridge Modern History Atlas, 1912, p. 9.
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Malta", {
	World = "Earth",
	CulturalNames = {
		"latin", "Melita" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	Tiles = {
		{521, 153}
	},
	SettlementLocation = {521, 153},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
	},
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Mazovia", {
	World = "Earth",
	CulturalNames = {
		"slav", "Mazovia"
	},
	Tiles = {
--		{133, 26}, {133, 27}, {134, 26}, {134, 27}, {135, 26}, {135, 27}, -- old map
		{531, 107}, {531, 108},
		{532, 106}, {532, 107}, {532, 108}, {532, 109}, {532, 110},
		{533, 105}, {533, 106}, {533, 107}, {533, 108}, {533, 109}, {533, 110}, {533, 111},
		{534, 105}, {534, 106}, {534, 107}, {534, 108}, {534, 109}, {534, 110}, {534, 111}, {534, 112},
		{535, 105}, {535, 106}, {535, 107}, {535, 108}, {535, 109}, {535, 110}, {535, 111}, {535, 112},
		{536, 105}, {536, 106}, {536, 107}, {536, 108}, {536, 109}, {536, 110}, {536, 111}, {536, 112},
		{537, 105}, {537, 106}, {537, 107}, {537, 108},
		{538, 104}, {538, 105}, {538, 106}, {538, 107}, {538, 108},
		{539, 104}, {539, 105}, {539, 106}, {539, 107}, {539, 108},
		{540, 104}, {540, 105}, {540, 106},
		{541, 104}, {541, 105}, {541, 106},
		{542, 104}, {542, 105}, {542, 106},
		{543, 103}, {543, 104}, {543, 105}, {543, 106}
	},
	SettlementLocation = {538, 107}, -- Warsaw
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"goth", "Vandal Tribe",
		"slav", "Poland"
	},
	Regions = {"Europe", "Poland", "West and Central Europe"}
})

DefineProvince("Mecklenburg", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Mecklenburg", "name-elements", { -- is this a settlement-derived name instead?
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", "singular", "Burg"
		}
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
	SettlementLocation = {512, 103}, -- Schwerin
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Ertebolle Tribe",
		"basque", "Funnelbeaker Tribe",
		"teuton", "Varini Tribe",
		"teuton", "Mecklenburg"
	},
	Coastal = true,
	HistoricalModifiers = {
		1419, "upgrade-university", true -- University founded in Rostock in 1419. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Mercia", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "Angle Tribe", "Mercia",
		"teuton", "England", "Mercia"
	},
	Tiles = {
		{471, 103}, {471, 104}, {471, 105}, {471, 106}, {471, 107}, {471, 108}, {471, 109},
		{472, 102}, {472, 103}, {472, 104}, {472, 105}, {472, 106}, {472, 107}, {472, 108},
		{473, 103}, {473, 104}, {473, 105}, {473, 106}, {473, 107},
		{474, 104}, {474, 105}, {474, 106}, {474, 107},
		{475, 104}, {475, 105}, {475, 106}, {475, 107},
		{476, 104}, {476, 105}, {476, 106}, {476, 107},
		{477, 103}, {477, 104}, {477, 105}, {477, 106}, {477, 107},
		{478, 106}, {478, 107},
		{479, 106},
		{480, 106}
	},
	SettlementLocation = {475, 106}, -- Tamworth
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "England"
	},
	HistoricalOwners = {
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "Angle Tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		632, "teuton", "Mercia", -- Penda became king of Mercia in 632 after the demise of Edwin of Deira; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75, 80-81, 83-84.
		654, "teuton", "Middle Anglia", -- Peada, king of the Middle Angles, ruled over the Mercian lands south of the Trent after Penda fell; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		656, "teuton", "Northumbria", -- After the murder of Peada in 656, Mercia became a province of the Kingdom of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		657, "teuton", "Mercia", -- Wulfhere proclaimed Mercian king in 657, ending Northumbrian dominion; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "Rome",
		632, "teuton", "Mercia"
	},
	HistoricalCultures = {
		526, "teuton"
	},
	HistoricalModifiers = {
		1250, "upgrade-university", true, -- University existent in Cambridge in 1250. Source: Atlas de História Mundial, p. 144.
		1250, "upgrade-university", true, -- University existent in Oxford in 1250. Source: Atlas de História Mundial, p. 144.
		1851, "upgrade-university", true, -- University founded in Manchester in 1851. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
		1900, "upgrade-university", true, -- University founded in Birmingham in 1900. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
		1903, "upgrade-university", true -- University founded in Liverpool in 1903. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Modena", {
	World = "Earth",
	Tiles = {
		{508, 130},
		{509, 130},
		{510, 128}, {510, 129}, {510, 130},
		{511, 128}, {511, 129}
	},
	SettlementLocation = {511, 129}, -- Modena
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1250, "upgrade-university", true -- University existent in Reggio in 1250. Source: Atlas de História Mundial, 2001, p. 144.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Moldavia", {
	World = "Earth",
	CulturalNames = {
		"latin", "Northern Lower Dacia"
	},
	Tiles = {
--		{139, 29}, {139, 30}, {139, 31}, {140, 30}, {140, 31}, -- old map
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
	SettlementLocation = {557, 121}, -- Jassy/Iași
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
--		"latin", "Moldavia"
	},
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Montenegro", {
	World = "Earth",
	Tiles = {
		{533, 133}, {533, 134}, {533, 135},
		{534, 132}, {534, 133}, {534, 134}, {534, 135}, {534, 136},
		{535, 133}, {535, 134}, {535, 135},
		{536, 134},
		{537, 134}
	},
	SettlementLocation = {534, 135}, -- Podgorica
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"Europe", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Moravia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Mähren"
	},
	Tiles = {
		{524, 116},
		{525, 116},
		{526, 115}, {526, 116},
		{527, 115}, {527, 116},
		{528, 113}, {528, 114}, {528, 115}, {528, 116},
		{529, 113}, {529, 114}, {529, 115}, {529, 116},
		{530, 114}, {530, 115}, {530, 116},
		{531, 114}, {531, 115}, {531, 116},
		{532, 114}, {532, 115},
		{533, 114}
	},
	SettlementLocation = {527, 116}, -- Brünn
	Map = "maps/earth/prague.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Linearware Tribe",
		"teuton", "Buri Tribe",
		"teuton", "Quadi Tribe",
		"teuton", "Holy Rome"
	},
	HistoricalOwners = {
		-5500, "basque", "Linearware Tribe", -- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-9, "teuton", "Quadi Tribe", -- if the Boii were conquered by the Marcomanni in 9 BC, the Quadi probably moved to Moravia and Slovakia at around the same time
		919, "teuton", "Holy Rome", -- Duchy of Bohemia; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "Austria", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-5500, "basque",
		-9, "teuton"
	},
	HistoricalModifiers = {
		1581, "upgrade-university", true, -- University founded in Olmütz in 1581. Source: The Cambridge Modern History Atlas, p. 9.
		-- First trains from Vienna arrived in Brünn on the 07.07.1839. Source: Chad Bryant, "Into an Uncertain Future: Railroads and Vormärz Liberalism in Brno, Vienna, and Prague", 2009, p. 183.
		-- Nordbahn reached Olmütz in 1841. Source: Chad Bryant, "Into an Uncertain Future: Railroads and Vormärz Liberalism in Brno, Vienna, and Prague", 2009, p. 187.
	},
	Regions = {"Cisleithania", "Czechoslovakia", "Europe", "West and Central Europe"}
})

DefineProvince("Moselle", {
	World = "Earth",
	CulturalNames = {
	},
	Tiles = {
		{496, 116},
		{497, 116}, {497, 117},
		{498, 117},
		{499, 117}
	},
	SettlementLocation = {496, 116}, -- Metz
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Holy Rome"
	},
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain and prévôt des maréchaux existent in Metz in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Naples", {
	World = "Earth",
	CulturalNames = {
		"greek", "Magna Graecia",
		"latin", "Campania" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 30-31.
	},
	Tiles = {
--		{130, 34}, {131, 34}, {131, 35}, {131, 36}, {132, 35}, -- old map
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
	SettlementLocation = {520, 139}, -- Naples
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Monte Cassino during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1224, "upgrade-university", true, -- University founded in Naples in 1224. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1250, "upgrade-university", true -- University existent in Salerno in 1250. Source: Atlas de História Mundial, 2001, p. 144.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Neumark", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Neumark", "name-elements", { -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 134-135.
			"compound", "prefix", "high-german", "adjective", "Neu",
			"compound", "suffix", "high-german", "noun", {"March"}, "singular", "Mark"
		}
	},
	Tiles = {
		{520, 105},
		{521, 105},
		{522, 105}, {522, 106}, {522, 107},
		{523, 105}, {523, 106}, {523, 107},
		{524, 104}, {524, 105}, {524, 107},
		{525, 104}, {525, 105}
	},
	SettlementLocation = {522, 106}, -- Küstrin
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Brandenburg"
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Nordland", {
	World = "Earth",
	Tiles = {
		{514, 70},
		{515, 69}, {515, 70},
		{516, 68}, {516, 69}, {516, 70},
		{517, 67}, {517, 68}, {517, 69}, {517, 70},
		{518, 66}, {518, 67}, {518, 68}, {518, 69}, {518, 70},
		{519, 65}, {519, 66}, {519, 67}, {519, 68}, {519, 69}, {519, 70},
		{520, 65}, {520, 66}, {520, 67}, {520, 68}, {520, 69}, {520, 70},
		{521, 60}, {521, 61}, {521, 64}, {521, 65}, {521, 66}, {521, 67},
		{522, 60}, {522, 61}, {522, 63}, {522, 64}, {522, 65}, {522, 66}, {522, 67},
		{523, 60}, {523, 63}, {523, 64}, {523, 65}, {523, 66},
		{524, 60}, {524, 61}, {524, 62}, {524, 63}, {524, 64}, {524, 65},
		{525, 61}, {525, 62}, {525, 63}, {525, 64}, {525, 65},
		{526, 61}, {526, 62}, {526, 63}, {526, 65},
		{527, 61}, {527, 62},
		{528, 61}, {528, 62},
		{529, 61}, {529, 62},
		{530, 61}, {530, 62}
	},
	CulturalNames = {
		"norse", "Nordland"
	},
	SettlementLocation = {521, 64}, -- Bodø
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"norse", "Halogaland",
		"norse", "Norway"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Normandy", {
	World = "Earth",
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
		"norse", "Normandy"
	},
	FactionCulturalNames = {
		"latin", "France", "Normandy"
	},
	SettlementLocation = {482, 115}, -- Rouen
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Bellbeaker Tribe"
	},
	HistoricalOwners = {
		-7000, "basque", "Bellbeaker Tribe", -- Bell Beaker culture existed in Normandy and the western parts of Great Britain between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-50, "latin", "Rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "teuton", "Francia", -- The Frankish Merovingian king Clovis conquers Syagrius' realm, the last Roman territory in Gaul; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		1560, "latin", "France", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-50, "latin", "Rome",
		486, "teuton", "Francia"
	},
	HistoricalCultures = {
		-7000, "basque"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in St. Wandrille during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1437, "upgrade-university", true, -- University founded in Caen in 1437. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain, cambre des comptes, court of admiralty, prévôt des maréchaux and chief court of the salt tax existent in Rouen in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux and chief court of the salt tax existent in Alençon in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true -- Chief court of the salt tax and prévôt des maréchaux existent in Caen in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Norrland", {
	World = "Earth",
	Tiles = {
		{514, 75}, {514, 76}, {514, 77}, {514, 78},
		{515, 74}, {515, 75}, {515, 76}, {515, 77}, {515, 78}, {515, 79}, {515, 80},
		{516, 74}, {516, 75}, {516, 76}, {516, 77}, {516, 78}, {516, 79}, {516, 80}, {516, 81}, {516, 82},
		{517, 74}, {517, 75}, {517, 76}, {517, 77}, {517, 78}, {517, 79}, {517, 80}, {517, 81}, {517, 82},
		{518, 74}, {518, 75}, {518, 76}, {518, 77}, {518, 78}, {518, 79}, {518, 80}, {518, 81}, {518, 82}, {518, 83},
		{519, 72}, {519, 74}, {519, 75}, {519, 76}, {519, 77}, {519, 78}, {519, 79}, {519, 80}, {519, 81}, {519, 82}, {519, 83},
		{520, 71}, {520, 72}, {520, 73}, {520, 74}, {520, 75}, {520, 76}, {520, 77}, {520, 78}, {520, 79}, {520, 80}, {520, 81}, {520, 82}, {520, 83}, {520, 84},
		{521, 68}, {521, 69}, {521, 70}, {521, 71}, {521, 72}, {521, 73}, {521, 74}, {521, 75}, {521, 76}, {521, 77}, {521, 78}, {521, 79}, {521, 80}, {521, 81}, {521, 82}, {521, 83}, {521, 84},
		{522, 68}, {522, 69}, {522, 70}, {522, 71}, {522, 72}, {522, 73}, {522, 74}, {522, 75}, {522, 76}, {522, 77}, {522, 78}, {522, 79}, {522, 80}, {522, 81}, {522, 82}, {522, 83}, {522, 84},
		{523, 67}, {523, 68}, {523, 69}, {523, 70}, {523, 71}, {523, 72}, {523, 73}, {523, 74}, {523, 75}, {523, 76}, {523, 77}, {523, 78}, {523, 79}, {523, 80}, {523, 81}, {523, 82}, {523, 83}, {523, 84},
		{524, 66}, {524, 67}, {524, 68}, {524, 69}, {524, 70}, {524, 71}, {524, 72}, {524, 73}, {524, 74}, {524, 75}, {524, 76}, {524, 77}, {524, 78}, {524, 79}, {524, 80}, {524, 81}, {524, 82}, {524, 83}, {524, 84}, {524, 85},
		{525, 66}, {525, 67}, {525, 68}, {525, 69}, {525, 70}, {525, 71}, {525, 72}, {525, 73}, {525, 74}, {525, 75}, {525, 76}, {525, 77}, {525, 78}, {525, 79}, {525, 80}, {525, 81}, {525, 82}, {525, 83}, {525, 84},
		{526, 64}, {526, 66}, {526, 67}, {526, 68}, {526, 69}, {526, 70}, {526, 71}, {526, 72}, {526, 73}, {526, 74}, {526, 75}, {526, 76}, {526, 77}, {526, 78}, {526, 79}, {526, 80}, {526, 81}, {526, 82}, {526, 83}, {526, 84},
		{527, 63}, {527, 64}, {527, 65}, {527, 66}, {527, 67}, {527, 68}, {527, 69}, {527, 70}, {527, 71}, {527, 72}, {527, 73}, {527, 74}, {527, 75}, {527, 76}, {527, 77}, {527, 78}, {527, 79}, {527, 80}, {527, 81}, {527, 82}, {527, 83}, {527, 84},
		{528, 63}, {528, 64}, {528, 65}, {528, 66}, {528, 67}, {528, 68}, {528, 69}, {528, 70}, {528, 71}, {528, 72}, {528, 73}, {528, 74}, {528, 75}, {528, 76}, {528, 77}, {528, 78}, {528, 79}, {528, 80}, {528, 81}, {528, 82}, {528, 83}, {528, 84},
		{529, 63}, {529, 64}, {529, 65}, {529, 66}, {529, 67}, {529, 68}, {529, 69}, {529, 70}, {529, 71}, {529, 72}, {529, 73}, {529, 74}, {529, 75}, {529, 76}, {529, 77}, {529, 78}, {529, 79},
		{530, 63}, {530, 64}, {530, 65}, {530, 66}, {530, 67}, {530, 68}, {530, 69}, {530, 70}, {530, 71}, {530, 72}, {530, 73}, {530, 74}, {530, 75}, {530, 76}, {530, 77},
		{531, 68}, {531, 69}, {531, 70}, {531, 71}, {531, 72}, {531, 73}, {531, 74}, {531, 75}, {531, 76},
		{532, 68}, {532, 69}, {532, 70}, {532, 71}, {532, 72}, {532, 73}, {532, 74}, {532, 75}, {532, 76},
		{533, 68}, {533, 69}, {533, 70}, {533, 71}, {533, 72}, {533, 73}, {533, 74}, {533, 75},
		{534, 68}, {534, 69}, {534, 70}, {534, 71}, {534, 72}, {534, 73}, {534, 74}, {534, 75},
		{535, 68}, {535, 69}, {535, 70}, {535, 71}, {535, 72}, {535, 73}, {535, 74},
		{536, 68}, {536, 69}, {536, 70}, {536, 71}, {536, 72}, {536, 73}, {536, 74},
		{537, 68}, {537, 69}, {537, 70}, {537, 71}, {537, 72}, {537, 73}, {537, 74},
		{538, 68}, {538, 69}, {538, 70}, {538, 71}, {538, 72}, {538, 73}, {538, 74},
		{539, 68}, {539, 69}, {539, 70}, {539, 71}, {539, 72}, {539, 73},
		{540, 68}, {540, 69}, {540, 70}, {540, 72},
		{541, 68}, {541, 69},
		{542, 68}, {542, 69},
		{543, 68},
		{544, 68},
		{545, 68},
		{546, 68},
		{547, 68},
		{548, 68}
	},
	CulturalNames = {
		"norse", "Norrland"
	},
	SettlementLocation = {530, 77}, -- Härnösand
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"norse", "Sitone Tribe"
	},
	HistoricalOwners = {
		-264, "norse", "Sitone Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "norse", "Sweden" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "norse"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("North Trondelag", {
	World = "Earth",
	Tiles = {
		{510, 74},
		{511, 72}, {511, 73}, {511, 74}, {511, 75},
		{512, 72}, {512, 73}, {512, 74}, {512, 75},
		{513, 71}, {513, 72}, {513, 73}, {513, 74}, {513, 75}, {513, 76},
		{514, 71}, {514, 72}, {514, 73}, {514, 74},
		{515, 71}, {515, 72}, {515, 73},
		{516, 71}, {516, 72}, {516, 73},
		{517, 71}, {517, 72}, {517, 73},
		{518, 71}, {518, 72}, {518, 73},
		{519, 71}, {519, 73}
	},
	CulturalNames = {
		"norse", "Nørd-Trøndelag"
	},
	SettlementLocation = {512, 73}, -- Steinkjet
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"norse", "Norway"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Northumberland", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "Angle Tribe", "Bernicia",
		"teuton", "England", "Northumberland", "name-elements", {
			"compound", "prefix", "english", "noun", "North", -- could also be the adjective or adverb form of this word
--			"compound", "infix", -- the name of the Humber river
			"compound", "suffix", "english", "noun", "Land"
		},
	},
	Tiles = {
		{473, 99},
		{474, 97}, {474, 98}, {474, 99},
		{475, 98}, {475, 99}
	},
	SettlementLocation = {475, 98}, -- Bamburgh; was the chief stronghold of the Bernice people, who lived in the region; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "Bernice Tribe", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
		"teuton", "England",
		"teuton", "Northumbria"
	},
	HistoricalOwners = {
		80, "latin", "Rome", -- The area between the Wall of Antoninus (or Severus) and Hadrian's Wall was acquired by Rome in 80 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "Bernice Tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		547, "teuton", "Bernicia", -- the Kingdom of Bernicia was founded in 547 AD; in 600 AD, the Bernice people (who were Anglians) were centered in Bamburgh; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 74-75.
		654, "teuton", "Northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		80, "latin", "Rome",
		547, "teuton", "Bernicia" -- the Kingdom of Bernicia was founded in 547 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	},
	HistoricalCultures = {
		526, "teuton"
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Oldenburg", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Oldenburg", "settlement-derived-name" -- presumably, since a settlement with that name exists there
	},
	Tiles = {
		{502, 103}, {502, 104}, {502, 105},
		{503, 104}, {503, 105}
	},
	SettlementLocation = {503, 104}, -- Oldenburg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Funnelbeaker Tribe",
		"teuton", "Holy Rome"
	},
	Coastal = true,
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Oppland", {
	World = "Earth",
	Tiles = {
		{502, 79},
		{503, 79}, {503, 80}, {503, 81},
		{504, 79}, {504, 80}, {504, 81},
		{505, 79}, {505, 80}, {505, 81}, {505, 82},
		{506, 79}, {506, 80}, {506, 81}, {506, 82},
		{507, 79}, {507, 80}, {507, 81}, {507, 82}, {507, 83},
		{508, 80}, {508, 81}, {508, 82}, {508, 83},
		{509, 81}, {509, 82}, {509, 83}, {509, 84},
		{510, 81}, {510, 82}, {510, 83}, {510, 84},
		{511, 83}
	},
	CulturalNames = {
		"norse", "Oppland"
	},
	SettlementLocation = {510, 81}, -- Lillehammar
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"norse", "Norway"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Orkney", {
	World = "Earth",
	Tiles = {
		{470, 87}
	},
	SettlementLocation = {470, 87},
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"norse", "Orkney",
		"teuton", "Scotland" -- should be English-cultured instead
	},
	HistoricalOwners = {
		1099, "norse", "Orkney", -- since the faction had a ruler at this date, then it must have existed
		1560, "teuton", "Scotland" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	Regions = {"British Isles", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Ostfold", {
	World = "Earth",
	Tiles = {
		{511, 86}, {511, 87},
		{512, 86}, {512, 87},
		{513, 86}, {513, 87}, {513, 88}
	},
	CulturalNames = {
		"norse", "Østfold"
	},
	SettlementLocation = {511, 86}, -- Oslo
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"norse", "Norway"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Overijssel", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "Netherlands", "Overijssel" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	},
	Tiles = {
		{497, 106},
		{498, 106},
		{499, 106}
	},
	SettlementLocation = {497, 106}, -- Zwolle
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "Chamavi Tribe",
		"teuton", "Overijssel",
		"teuton", "Netherlands",
		"teuton", "Holy Rome"
	},
	Regions = {"Europe", "Germany-Netherlands", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Palatinate", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Pfalz"
	},
	Tiles = {
		{501, 115}, {501, 116},
		{502, 115}, {502, 116},
		{503, 114}, {503, 115}, {503, 116}
	},
	SettlementLocation = {502, 115}, -- Kaiserslautern
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Franconia", -- Part of the Duchy of Franconia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "Holy Rome"
	},
	HistoricalModifiers = {
		1476, "upgrade-university", true, -- University founded in Mainz in 1476. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1578, "upgrade-university", true -- University founded in Neustadt in 1578. Source: The Cambridge Modern History Atlas, 1912, p. 9.
	},
	Regions = {"Europe", "Gaul", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Palermo", {
	World = "Earth",
	CulturalNames = {
		"greek", "Panormus",
		"latin", "Panormus"
	},
	Tiles = {
--		{129, 37}, -- old map
		{516, 148},
		{517, 147}, {517, 148},
		{518, 148}, {518, 149},
		{519, 148}, {519, 149}
	},
	SettlementLocation = {517, 147}, -- Palermo
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true, -- this variable is calculated automatically, but we place it here anyway for the random map generation (this will mean that this province is generated near a water body)
	Claims = {
		"latin", "Elymian Tribe",
		"latin", "Sicanian Tribe"
--		"latin", "Sicily"
	},
	HistoricalOwners = {
		-500, "latin", "Sicanian Tribe", -- Situation of Italy in (apparently) 500 BC; Sicily was inhabited by the Elymians, Sicanians and Sicels; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		-241, "latin", "Rome", -- Sicily acquired by Rome in 241 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "Ostrogoth Tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		1072, "latin", "Sicily", -- Palermo was conquered by the Norman forces in Sicily in 1072 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 233.
		1560, "latin", "Spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-750, "phoenician", -- Phoenician settlements existed in Phoenicia proper, western north Africa, western Sicily and southern Cyprus between 750 and 625 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.	
		-500, "latin"
	},
	HistoricalClaims = {
		-241, "latin", "Rome"
	},
	HistoricalModifiers = {
		1394, "upgrade-university", true -- University founded in Palermo in 1394. Source: The Cambridge Modern History Atlas, p. 9.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Pannonia", {
	World = "Earth",
	CulturalNames = {
		"latin", "Pannonia"
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
	SettlementLocation = {534, 120}, -- Buda
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Linearware Tribe",
		"magyar", "Hungary"
	},
	HistoricalOwners = {
		-5500, "basque", "Linearware Tribe", -- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		10, "latin", "Rome", -- Pannonia was acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		453, "goth", "Ostrogoth Tribe", -- Walamer was king over the Ostrogoths in Pannonia (between the Danube and the Drave) when Attila's empire collapsed in 453 AD; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
		474, "", "", -- In 474 AD the Ostrogoths left Pannonia to settle in Macedonia under the aegis of the Eastern Roman Emperor, and in that same year Theodemer died, being succeeded by Theoderic; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 7.
		919, "magyar", "Hungary", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "Turkey" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-5500, "basque"
	},
	HistoricalClaims = {
		10, "latin", "Rome"
	},
	HistoricalModifiers = {
		1367, "upgrade-university", true -- University founded in Fünfkirchen in 1367. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Parma", {
	World = "Earth",
	CulturalNames = {
		"latin", "Aemilia"
	},
	Tiles = {
		{507, 128},
		{508, 128}, {508, 129},
		{509, 128}, {509, 129}
	},
	SettlementLocation = {509, 128}, -- Parma
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Bobbio during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1248, "upgrade-university", true -- University founded in Piacenza in 1248. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Picardy", { -- also includes French Flanders, Hainaut and Artois
	World = "Earth",
	FactionCulturalNames = {
		"latin", "France", "Picardy" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	Tiles = {
		{484, 113}, {484, 114},
		{485, 111}, {485, 112}, {485, 113}, {485, 114},
		{486, 111}, {486, 112}, {486, 113}, {486, 114}, 
		{487, 111}, {487, 112}, {487, 113}, {487, 114},
		{488, 112}, {488, 113}, {488, 114},
		{489, 112}, {489, 113}, {489, 114},
		{490, 113}, {490, 114},
		{491, 113}, {491, 114}
	},
	SettlementLocation = {486, 114}, -- Amiens
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "Austrasia", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
--		"latin", "France"
	},
	HistoricalOwners = {
		-50, "latin", "Rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		481, "teuton", "Francia", -- Picardy was a part of Frankish territory in 481 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		919, "latin", "France" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		-50, "latin", "Rome",
		481, "teuton", "Francia"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in St. Riquier during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Corbie during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1582, "upgrade-university", true, -- University founded in Douai in 1582. Source: The Cambridge Modern History Atlas, 1912, p. 9.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux existent in Amiens in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain existent in Arras in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux existent in Lille in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true -- Prévôt des maréchaux existent in Valenciennes in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Piedmont", {
	World = "Earth",
	Tiles = {
		{500, 125}, {500, 128}, {500, 129},
		{501, 125}, {501, 126}, {501, 127}, {501, 128}, {501, 129},
		{502, 125}, {502, 126}, {502, 127}, {502, 128}, {502, 129},
		{503, 124}, {503, 125}, {503, 126}, {503, 127}, {503, 128},
		{504, 125}, {504, 126}, {504, 127}, {504, 128},
		{505, 127}, {505, 128},
		{506, 128}
	},
	SettlementLocation = {502, 127}, -- Turin
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	HistoricalModifiers = {
		1228, "upgrade-university", true, -- University founded in Vercelli in 1228. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1405, "upgrade-university", true -- University founded in Turin in 1405. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Poitou", {
	World = "Earth",
	FactionCulturalNames = {
		"latin", "France", "Poitou"
	},
	Tiles = {
		{474, 122},
		{475, 122}, {475, 123},
		{476, 122}, {476, 123},
		{477, 122}, {477, 123},
		{478, 122}, {478, 123},
		{479, 122}, {479, 123}, {479, 124},
		{480, 123}, {480, 124},
		{481, 122}, {481, 123}, {481, 124},
		{482, 123}
	},
	SettlementLocation = {480, 123}, -- Poitiers
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "Neustria", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
--		"latin", "France"
	},
	HistoricalOwners = {
		-50, "latin", "Rome" -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalModifiers = {
		1431, "upgrade-university", true, -- University founded in Poitiers in 1431. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1789, "upgrade-courthouse", true -- Prévôt des maréchaux existent in Poitiers in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Pomerelia", {
	World = "Earth",
	CulturalNames = {
		"goth", "Gothiscandza",
		"slav", "Pomerelia",
		"teuton", "Westpreussen"
	},
	Tiles = {
		{526, 104},
		{527, 104},
		{528, 103}, {528, 104},
		{529, 103},
		{530, 101}, {530, 102}, {530, 103},
		{531, 100}, {531, 101}, {531, 102}, {531, 103},
		{532, 100}, {532, 101}, {532, 102}, {532, 103}, {532, 104},
		{533, 101}, {533, 102}, {533, 103}, {533, 104},
		{534, 101}, {534, 102}, {534, 103}, {534, 104},
		{535, 101}, {535, 103}, {535, 104},
		{536, 103}, {536, 104}
	},
	SettlementLocation = {532, 101}, -- Danzig
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"slav", "Poland",
		"teuton", "Prussia"
	},
	Coastal = true,
	HistoricalModifiers = {
		1366, "upgrade-university", true -- University founded in Kulm in 1366. Source: Atlas de História Mundial, 2001, p. 144.
	},
	Regions = {"Europe", "Poland", "West and Central Europe"}
})

DefineProvince("Portugal", {
	World = "Earth",
	CulturalNames = {
		"latin", "Lusitania"
	},
	FactionCulturalNames = {
		"latin", "Portugal", "Portugal",
		"latin", "Spain", "Portugal"
	},
	Tiles = {
--		{114, 34}, {114, 35}, {114, 36}, {114, 37}, -- old map
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
	SettlementLocation = {454, 145}, -- Lisbon
	Map = "maps/earth/braga.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalOwners = {
		-138, "latin", "Rome", -- Lusitania acquired by Rome in 138 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		450, "teuton", "Suebi Tribe", -- The Suebi were in possession of most of modern Portugal by around 450 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		486, "teuton", "Galicia", -- Suebi kingdom of Galicia; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "latin", "Portugal" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-138, "latin", "Rome"
	},
	HistoricalModifiers = {
		1537, "upgrade-university", true, -- University moved from Lisbon to Coimbra in 1537. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1911, "upgrade-university", true, -- University founded in Lisbon in 1911. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
		1911, "upgrade-university", true -- University founded in Oporto in 1911. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
	},
	Regions = {"Europe", "Iberia", "West and Central Europe"}
})

DefineProvince("Posen", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Posen", "settlement-derived-name" -- presumably, since a settlement with that name exists there
	},
	Tiles = {
		{524, 106},
		{525, 106}, {525, 107},
		{526, 105}, {526, 106}, {526, 107}, {526, 108},
		{527, 105}, {527, 106}, {527, 107}, {527, 108},
		{528, 105}, {528, 106}, {528, 107}, {528, 108},
		{529, 104}, {529, 105}, {529, 106}, {529, 107}, {529, 108},
		{530, 104}, {530, 105}, {530, 106}, {530, 107}, {530, 108}, {530, 109},
		{531, 104}, {531, 105}, {531, 106}, {531, 109}, {531, 110},
		{532, 105}
	},
	SettlementLocation = {528, 107}, -- Posen
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"goth", "Vandal Tribe",
		"slav", "Poland"
	},
	Regions = {"Europe", "Poland", "West and Central Europe"}
})

DefineProvince("Provence", {
	World = "Earth",
	CulturalNames = {
		"celt", "Gallia Narbonensis",
		"latin", "Gallia Narbonensis"
	},
	FactionCulturalNames = {
		"latin", "France", "Provence"
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
	SettlementLocation = {495, 132}, -- Marseilles
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
--		"latin", "France"
	},
	HistoricalModifiers = {
		1303, "upgrade-university", true, -- University founded in Avignon in 1303. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1339, "upgrade-university", true, -- University founded in Grenoble in 1339. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1409, "upgrade-university", true, -- University founded in Aix-en-Provence in 1409. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1459, "upgrade-university", true, -- University founded in Valence in 1459. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1789, "upgrade-courthouse", true, -- Chief court of the salt tax existent in Valence in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain, prévôt des maréchaux and chief court of the salt tax existent in Grenoble in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain, chambre des comptes, court of admiralty, chief court of the salt tax and prévôt des maréchaux existent in Aix-en-Provence in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Prussia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Ostpreussen"
	},
	Tiles = {
--		{130, 26}, {131, 25}, {131, 26}, {132, 25}, {132, 26}, {133, 25}, {134, 25}, {135, 25}, -- old map
		{535, 102},
		{536, 101}, {536, 102},
		{537, 100}, {537, 101}, {537, 102}, {537, 103}, {537, 104},
		{538, 100}, {538, 101}, {538, 102}, {538, 103},
		{539, 100}, {539, 101}, {539, 102}, {539, 103},
		{540, 97}, {540, 98}, {540, 99}, {540, 100}, {540, 101}, {540, 102}, {540, 103},
		{541, 99}, {541, 100}, {541, 101}, {541, 102}, {541, 103},
		{542, 99}, {542, 100}, {542, 101}, {542, 102}, {542, 103},
		{543, 99}, {543, 100}, {543, 101}, {543, 102}
	},
	SettlementLocation = {537, 100}, -- Königsberg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "Prussia"
	},
	HistoricalModifiers = {
		1544, "upgrade-university", true -- University founded in Königsberg in 1544. Source: The Cambridge Modern History Atlas, 1912, p. 9.
	},
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Rhodes", {
	World = "Earth",
	Tiles = {
		{559, 152}, {559, 153}
	},
	CulturalNames = {
		"greek", "Rhodes"
	},
	SettlementLocation = {559, 152}, -- Ialysus
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"Europe", "Greece", "West and Central Europe"},
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Rhodope", {
	World = "Earth",
	Tiles = {
		{550, 139},
		{551, 139},
		{552, 139},
		{553, 139},
		{554, 138}, {554, 139}
	},
	CulturalNames = {
		"greek", "Rodópi"
	},
	SettlementLocation = {552, 139}, -- Komotini
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"greek", "Thrace"
	},
	HistoricalOwners = {
		-500, "persian", "Persia", -- Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-450, "", "", -- Greece circa 450 BC (height of the Athenian empire); Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
		-336, "greek", "Macedon", -- Macedonian Empire in 336-323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		-301, "greek", "Thrace", -- Kingdoms of the Diadochi about 301 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		-200, "greek", "Macedon", -- Kingdoms of the Diadochi about 200 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		-146, "latin", "Rome" -- Macedonia acquired by Rome in 146 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalCultures = {
		-1450, "phoenician", -- The isle of Thasos and the coastal areas around it were settled by the Phoenicians around 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-550, "greek" -- Greek and Phoenician settlements about 550 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 12.
	},
	HistoricalClaims = {
		-146, "latin", "Rome"
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Rogaland", {
	World = "Earth",
	Tiles = {
		{496, 88}, {496, 89},
		{497, 86}, {497, 87}, {497, 88}, {497, 89},
		{498, 86}, {498, 87}, {498, 88}, {498, 89},
		{499, 86}, {499, 87}
	},
	CulturalNames = {
		"norse", "Rogaland"
	},
	SettlementLocation = {496, 88}, -- Stavanger
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"norse", "Norway"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Romagna", {
	World = "Earth",
	CulturalNames = {
		"celt", "Cispadane Gaul",
		"latin", "Cispadane Gaul"
	},
	Tiles = {
		{512, 128}, {512, 129},
		{513, 128}, {513, 129},
		{514, 128}, {514, 129}, {514, 130},
		{515, 130}
	},
	SettlementLocation = {512, 129}, -- Bologna
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	HistoricalModifiers = {
		1250, "upgrade-university", true, -- University existent in Bologna in 1250. Source: Atlas de História Mundial, 2001, p. 144.
		1391, "upgrade-university", true -- University founded in Ferrara in 1391. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Russia", {
	World = "Earth",
	CulturalNames = {
		"norse", "Gardarike", "name-elements", {
--			"compound", "prefix", -- ?
			"compound", "suffix", "old-norse", "noun", "Rîki" -- presumably
		},
		"slav", "Russia"
	},
	FactionCulturalNames = {
		"slav", "Muscovy", "Russia",
		"slav", "Russia", "Russia"
	},
	Tiles = {
--		{140, 22}, {140, 23}, {140, 24}, {140, 25}, {140, 26}, {141, 21}, {141, 22}, {141, 23}, {141, 24}, {141, 25}, {141, 26}, {142, 21}, {142, 22}, {142, 23}, {142, 24}, {142, 25}, {142, 26}, {143, 21}, {143, 22}, {143, 23}, {143, 24}, {143, 25}, {143, 26}, {144, 21}, {144, 22}, {144, 23}, {144, 24}, {144, 25}, {144, 26}, {145, 18}, {145, 19}, {145, 20}, {145, 21}, {145, 22}, {145, 23}, {145, 24}, {145, 25}, {145, 26}, {145, 27}, {146, 18}, {146, 19}, {146, 20}, {146, 21}, {146, 22}, {146, 23}, {146, 24}, {146, 25}, {146, 26}, {146, 27}, {147, 18}, {147, 19}, {147, 20}, {147, 21}, {147, 22}, {147, 23}, {147, 24}, {147, 25}, {147, 26}, {147, 27}, {148, 20}, {148, 21}, {148, 22}, {148, 23}, {148, 24}, {148, 25}, {148, 26}, {148, 27}, {148, 28}, {149, 23}, {149, 24}, {149, 25}, {149, 26}, {149, 27}, {149, 28}, {150, 23}, {150, 24}, {150, 25}, {150, 26}, {150, 27}, {151, 24}, {151, 25}, {151, 26}, {151, 27}, {151, 28}, {151, 29}, {152, 24}, {152, 25}, {152, 26}, {152, 27}, {153, 24}, {153, 25}, {153, 26}, {154, 24}, {154, 25}, -- old map
		{558, 90}, {558, 91},
		{559, 88}, {559, 89}, {559, 90}, {559, 91}, {559, 92}, {559, 93},
		{560, 86}, {560, 87}, {560, 88}, {560, 89}, {560, 90}, {560, 91}, {560, 92}, {560, 93}, {560, 94}, {560, 95},
		{561, 86}, {561, 87}, {561, 88}, {561, 89}, {561, 90}, {561, 91}, {561, 92}, {561, 93}, {561, 94}, {561, 95},
		{562, 86}, {562, 87}, {562, 88}, {562, 89}, {562, 90}, {562, 91}, {562, 92}, {562, 93}, {562, 94}, {562, 95},
		{563, 86}, {563, 87}, {563, 88}, {563, 89}, {563, 90}, {563, 91}, {563, 92}, {563, 93}, {563, 94}, {563, 95}, {563, 96}, {563, 97},
		{564, 86}, {564, 87}, {564, 88}, {564, 89}, {564, 90}, {564, 91}, {564, 92}, {564, 93}, {564, 94}, {564, 95}, {564, 96}, {564, 97},
		{565, 86}, {565, 87}, {565, 88}, {565, 89}, {565, 90}, {565, 91}, {565, 92}, {565, 93}, {565, 94}, {565, 95}, {565, 96},
		{566, 84}, {566, 85}, {566, 86}, {566, 87}, {566, 88}, {566, 89}, {566, 90}, {566, 91}, {566, 92}, {566, 93}, {566, 94}, {566, 95}, {566, 96},
		{567, 84}, {567, 85}, {567, 86}, {567, 87}, {567, 88}, {567, 89}, {567, 90}, {567, 91}, {567, 92}, {567, 93}, {567, 94}, {567, 95}, {567, 96},
		{568, 86}, {568, 87}, {568, 88}, {568, 89}, {568, 91}, {568, 92}, {568, 93}, {568, 94}, {568, 95}, {568, 96}, {568, 97},
		{569, 86}, {569, 87}, {569, 88}, {569, 89}, {569, 91}, {569, 92}, {569, 93}, {569, 94}, {569, 95}, {569, 96}, {569, 97}, {569, 98}, {569, 99},
		{570, 85}, {570, 86}, {570, 87}, {570, 88}, {570, 89}, {570, 90}, {570, 91}, {570, 92}, {570, 93}, {570, 94}, {570, 95}, {570, 96}, {570, 97}, {570, 98}, {570, 99}, {570, 100}, {570, 101}, {570, 105}, {570, 106}, {570, 107}, {570, 108},
		{571, 85}, {571, 86}, {571, 87}, {571, 88}, {571, 89}, {571, 90}, {571, 91}, {571, 92}, {571, 93}, {571, 94}, {571, 95}, {571, 96}, {571, 97}, {571, 98}, {571, 99}, {571, 100}, {571, 101}, {571, 105}, {571, 106}, {571, 107}, {571, 108},
		{572, 85}, {572, 86}, {572, 87}, {572, 88}, {572, 89}, {572, 90}, {572, 91}, {572, 92}, {572, 93}, {572, 94}, {572, 95}, {572, 96}, {572, 97}, {572, 98}, {572, 99}, {572, 100}, {572, 101}, {572, 104}, {572, 105}, {572, 106}, {572, 107},
		{573, 84}, {573, 85}, {573, 86}, {573, 87}, {573, 88}, {573, 89}, {573, 90}, {573, 91}, {573, 92}, {573, 93}, {573, 94}, {573, 95}, {573, 96}, {573, 97}, {573, 98}, {573, 99}, {573, 100}, {573, 101}, {573, 102}, {573, 103}, {573, 104}, {573, 105}, {573, 106}, {573, 107},
		{574, 84}, {574, 85}, {574, 86}, {574, 87}, {574, 88}, {574, 89}, {574, 90}, {574, 91}, {574, 92}, {574, 93}, {574, 94}, {574, 95}, {574, 96}, {574, 97}, {574, 98}, {574, 99}, {574, 100}, {574, 101}, {574, 102}, {574, 103}, {574, 104}, {574, 105}, {574, 106}, {574, 107},
		{575, 84}, {575, 85}, {575, 86}, {575, 87}, {575, 88}, {575, 89}, {575, 90}, {575, 91}, {575, 92}, {575, 93}, {575, 94}, {575, 95}, {575, 96}, {575, 97}, {575, 98}, {575, 99}, {575, 100}, {575, 101}, {575, 102}, {575, 103}, {575, 104}, {575, 105}, {575, 106}, {575, 107},
		{576, 84}, {576, 85}, {576, 86}, {576, 87}, {576, 88}, {576, 89}, {576, 90}, {576, 91}, {576, 92}, {576, 93}, {576, 94}, {576, 95}, {576, 96}, {576, 97}, {576, 98}, {576, 99}, {576, 100}, {576, 101}, {576, 102}, {576, 103}, {576, 104}, {576, 105}, {576, 106}, {576, 107},
		{577, 84}, {577, 85}, {577, 86}, {577, 87}, {577, 88}, {577, 89}, {577, 90}, {577, 91}, {577, 92}, {577, 93}, {577, 94}, {577, 95}, {577, 96}, {577, 97}, {577, 98}, {577, 99}, {577, 100}, {577, 101}, {577, 102}, {577, 103}, {577, 104}, {577, 105}, {577, 106}, {577, 107}, {577, 108}, {577, 109},
		{578, 84}, {578, 85}, {578, 86}, {578, 87}, {578, 88}, {578, 89}, {578, 90}, {578, 91}, {578, 92}, {578, 93}, {578, 94}, {578, 95}, {578, 96}, {578, 97}, {578, 98}, {578, 99}, {578, 100}, {578, 101}, {578, 102}, {578, 103}, {578, 104}, {578, 105}, {578, 106}, {578, 107}, {578, 108}, {578, 109},
		{579, 83}, {579, 84}, {579, 85}, {579, 86}, {579, 87}, {579, 88}, {579, 89}, {579, 90}, {579, 91}, {579, 92}, {579, 93}, {579, 94}, {579, 95}, {579, 96}, {579, 97}, {579, 98}, {579, 99}, {579, 100}, {579, 101}, {579, 102}, {579, 103}, {579, 104}, {579, 105}, {579, 106}, {579, 107}, {579, 108}, {579, 109},
		{580, 82}, {580, 83}, {580, 84}, {580, 85}, {580, 86}, {580, 87}, {580, 88}, {580, 89}, {580, 90}, {580, 91}, {580, 92}, {580, 93}, {580, 94}, {580, 95}, {580, 96}, {580, 97}, {580, 98}, {580, 99}, {580, 100}, {580, 101}, {580, 102}, {580, 103}, {580, 104}, {580, 105}, {580, 106}, {580, 107}, {580, 108}, {580, 109}, {580, 110}, {580, 111},
		{581, 83}, {581, 84}, {581, 85}, {581, 86}, {581, 87}, {581, 88}, {581, 89}, {581, 90}, {581, 91}, {581, 92}, {581, 93}, {581, 94}, {581, 95}, {581, 96}, {581, 97}, {581, 98}, {581, 99}, {581, 100}, {581, 101}, {581, 102}, {581, 103}, {581, 104}, {581, 105}, {581, 106}, {581, 107}, {581, 108}, {581, 109}, {581, 110}, {581, 111}, {581, 112},
		{582, 83}, {582, 84}, {582, 85}, {582, 86}, {582, 87}, {582, 88}, {582, 89}, {582, 90}, {582, 91}, {582, 92}, {582, 93}, {582, 94}, {582, 95}, {582, 96}, {582, 97}, {582, 98}, {582, 99}, {582, 100}, {582, 101}, {582, 102}, {582, 103}, {582, 104}, {582, 105}, {582, 106}, {582, 107}, {582, 108}, {582, 109}, {582, 110}, {582, 111},
		{583, 82}, {583, 83}, {583, 84}, {583, 85}, {583, 86}, {583, 87}, {583, 88}, {583, 89}, {583, 90}, {583, 91}, {583, 92}, {583, 93}, {583, 94}, {583, 95}, {583, 96}, {583, 97}, {583, 98}, {583, 99}, {583, 100}, {583, 101}, {583, 102}, {583, 103}, {583, 104}, {583, 105}, {583, 106}, {583, 107}, {583, 108}, {583, 109}, {583, 110}, {583, 111}, {583, 112},
		{584, 82}, {584, 83}, {584, 84}, {584, 85}, {584, 86}, {584, 87}, {584, 88}, {584, 89}, {584, 90}, {584, 91}, {584, 92}, {584, 93}, {584, 94}, {584, 95}, {584, 96}, {584, 97}, {584, 98}, {584, 99}, {584, 100}, {584, 101}, {584, 102}, {584, 103}, {584, 104}, {584, 105}, {584, 106}, {584, 107}, {584, 108}, {584, 109}, {584, 110}, {584, 111}, {584, 112},
		{585, 82}, {585, 83}, {585, 84}, {585, 85}, {585, 86}, {585, 87}, {585, 88}, {585, 89}, {585, 90}, {585, 91}, {585, 92}, {585, 93}, {585, 94}, {585, 95}, {585, 96}, {585, 97}, {585, 98}, {585, 99}, {585, 100}, {585, 101}, {585, 102}, {585, 103}, {585, 104}, {585, 105}, {585, 106}, {585, 107}, {585, 108}, {585, 109}, {585, 110}, {585, 111},
		{586, 82}, {586, 83}, {586, 85}, {586, 86}, {586, 87}, {586, 88}, {586, 89}, {586, 90}, {586, 91}, {586, 92}, {586, 93}, {586, 94}, {586, 95}, {586, 96}, {586, 97}, {586, 98}, {586, 99}, {586, 100}, {586, 101}, {586, 102}, {586, 103}, {586, 104}, {586, 105}, {586, 106}, {586, 107}, {586, 108}, {586, 109}, {586, 110}, {586, 111}, {586, 112}, {586, 113},
		{587, 82}, {587, 83}, {587, 85}, {587, 86}, {587, 87}, {587, 88}, {587, 89}, {587, 90}, {587, 91}, {587, 92}, {587, 93}, {587, 94}, {587, 95}, {587, 96}, {587, 97}, {587, 98}, {587, 99}, {587, 100}, {587, 101}, {587, 102}, {587, 103}, {587, 104}, {587, 105}, {587, 106}, {587, 107}, {587, 108}, {587, 109}, {587, 110}, {587, 111}, {587, 112}, {587, 113},
		{588, 82}, {588, 83}, {588, 84}, {588, 85}, {588, 86}, {588, 87}, {588, 88}, {588, 89}, {588, 90}, {588, 91}, {588, 92}, {588, 93}, {588, 94}, {588, 95}, {588, 96}, {588, 97}, {588, 98}, {588, 99}, {588, 100}, {588, 101}, {588, 102}, {588, 103}, {588, 104}, {588, 105}, {588, 106}, {588, 107}, {588, 108}, {588, 109}, {588, 110}, {588, 111}, {588, 112},
		{589, 82}, {589, 83}, {589, 84}, {589, 85}, {589, 86}, {589, 87}, {589, 88}, {589, 89}, {589, 90}, {589, 91}, {589, 92}, {589, 93}, {589, 94}, {589, 95}, {589, 96}, {589, 97}, {589, 98}, {589, 99}, {589, 100}, {589, 101}, {589, 102}, {589, 103}, {589, 104}, {589, 105}, {589, 106}, {589, 107}, {589, 108}, {589, 109}, {589, 110}, {589, 111},
		{590, 82}, {590, 83}, {590, 84}, {590, 85}, {590, 86}, {590, 87}, {590, 88}, {590, 89}, {590, 90}, {590, 91}, {590, 92}, {590, 93}, {590, 94}, {590, 95}, {590, 96}, {590, 97}, {590, 98}, {590, 99}, {590, 100}, {590, 101}, {590, 102}, {590, 103}, {590, 104}, {590, 105}, {590, 106}, {590, 107}, {590, 108}, {590, 109}, {590, 110},
		{591, 82}, {591, 83}, {591, 84}, {591, 85}, {591, 86}, {591, 87}, {591, 88}, {591, 89}, {591, 90}, {591, 91}, {591, 92}, {591, 93}, {591, 94}, {591, 95}, {591, 96}, {591, 97}, {591, 98}, {591, 99}, {591, 100}, {591, 101}, {591, 102}, {591, 103}, {591, 104}, {591, 105}, {591, 106}, {591, 107}, {591, 108}, {591, 109}, {591, 110},
		{592, 82}, {592, 83}, {592, 84}, {592, 85}, {592, 86}, {592, 87}, {592, 88}, {592, 89}, {592, 90}, {592, 91}, {592, 92}, {592, 93}, {592, 94}, {592, 95}, {592, 96}, {592, 97}, {592, 98}, {592, 99}, {592, 100}, {592, 101}, {592, 102}, {592, 103}, {592, 104}, {592, 105}, {592, 106}, {592, 107}, {592, 108}, {592, 109}, {592, 110},
		{593, 82}, {593, 83}, {593, 84}, {593, 85}, {593, 86}, {593, 87}, {593, 88}, {593, 89}, {593, 90}, {593, 91}, {593, 92}, {593, 93}, {593, 94}, {593, 95}, {593, 96}, {593, 97}, {593, 98}, {593, 99}, {593, 100}, {593, 101}, {593, 102}, {593, 103}, {593, 104}, {593, 105}, {593, 106}, {593, 107}, {593, 108}, {593, 109}, {593, 110},
		{594, 82}, {594, 83}, {594, 84}, {594, 85}, {594, 86}, {594, 87}, {594, 88}, {594, 89}, {594, 90}, {594, 91}, {594, 92}, {594, 93}, {594, 94}, {594, 95}, {594, 96}, {594, 97}, {594, 98}, {594, 99}, {594, 100}, {594, 101}, {594, 102}, {594, 103}, {594, 104}, {594, 105}, {594, 106}, {594, 107}, {594, 108}, {594, 109}, {594, 110}, {594, 111}, {594, 112},
		{595, 82}, {595, 83}, {595, 84}, {595, 85}, {595, 86}, {595, 87}, {595, 88}, {595, 89}, {595, 90}, {595, 91}, {595, 92}, {595, 93}, {595, 94}, {595, 95}, {595, 96}, {595, 97}, {595, 98}, {595, 99}, {595, 100}, {595, 101}, {595, 102}, {595, 103}, {595, 104}, {595, 105}, {595, 106}, {595, 107}, {595, 108}, {595, 109}, {595, 110}, {595, 111}, {595, 112}, {595, 113},
		{596, 82}, {596, 83}, {596, 84}, {596, 85}, {596, 86}, {596, 87}, {596, 88}, {596, 89}, {596, 90}, {596, 91}, {596, 92}, {596, 93}, {596, 94}, {596, 95}, {596, 96}, {596, 97}, {596, 98}, {596, 99}, {596, 100}, {596, 101}, {596, 102}, {596, 103}, {596, 104}, {596, 105}, {596, 106}, {596, 107}, {596, 108}, {596, 109}, {596, 110}, {596, 111}, {596, 112}, {596, 113},
		{597, 82}, {597, 83}, {597, 84}, {597, 85}, {597, 86}, {597, 87}, {597, 88}, {597, 89}, {597, 90}, {597, 91}, {597, 92}, {597, 93}, {597, 94}, {597, 95}, {597, 96}, {597, 97}, {597, 98}, {597, 99}, {597, 100}, {597, 101}, {597, 102}, {597, 103}, {597, 104}, {597, 105}, {597, 106}, {597, 107}, {597, 108}, {597, 109}, {597, 110}, {597, 111}, {597, 112}, {597, 113}, {597, 114},
		{598, 82}, {598, 83}, {598, 84}, {598, 85}, {598, 86}, {598, 87}, {598, 88}, {598, 89}, {598, 90}, {598, 91}, {598, 92}, {598, 93}, {598, 94}, {598, 95}, {598, 96}, {598, 97}, {598, 98}, {598, 99}, {598, 100}, {598, 101}, {598, 102}, {598, 103}, {598, 104}, {598, 105}, {598, 106}, {598, 107}, {598, 108}, {598, 109}, {598, 110}, {598, 111}, {598, 112}, {598, 113}, {598, 114},
		{599, 82}, {599, 83}, {599, 84}, {599, 85}, {599, 86}, {599, 87}, {599, 88}, {599, 89}, {599, 90}, {599, 91}, {599, 92}, {599, 93}, {599, 94}, {599, 95}, {599, 96}, {599, 97}, {599, 98}, {599, 99}, {599, 100}, {599, 101}, {599, 102}, {599, 103}, {599, 104}, {599, 105}, {599, 106}, {599, 107}, {599, 108}, {599, 109}, {599, 110}, {599, 111}, {599, 112}, {599, 113}, {599, 114},
		{600, 82}, {600, 83}, {600, 84}, {600, 85}, {600, 86}, {600, 87}, {600, 88}, {600, 89}, {600, 90}, {600, 91}, {600, 92}, {600, 93}, {600, 94}, {600, 95}, {600, 96}, {600, 97}, {600, 98}, {600, 99}, {600, 100}, {600, 101}, {600, 102}, {600, 103}, {600, 104}, {600, 105}, {600, 106}, {600, 107}, {600, 108}, {600, 109}, {600, 110}, {600, 111}, {600, 112}, {600, 113}, {600, 114},
		{601, 82}, {601, 83}, {601, 84}, {601, 85}, {601, 86}, {601, 87}, {601, 88}, {601, 89}, {601, 90}, {601, 91}, {601, 92}, {601, 93}, {601, 94}, {601, 95}, {601, 96}, {601, 97}, {601, 98}, {601, 99}, {601, 100}, {601, 101}, {601, 102}, {601, 103}, {601, 104}, {601, 105}, {601, 106}, {601, 107}, {601, 108}, {601, 109}, {601, 110}, {601, 111}, {601, 112}, {601, 113}, {601, 114},
		{602, 82}, {602, 83}, {602, 84}, {602, 85}, {602, 86}, {602, 87}, {602, 88}, {602, 89}, {602, 90}, {602, 91}, {602, 92}, {602, 93}, {602, 94}, {602, 95}, {602, 96}, {602, 97}, {602, 98}, {602, 99}, {602, 100}, {602, 101}, {602, 102}, {602, 103}, {602, 104}, {602, 105}, {602, 106}, {602, 107}, {602, 108}, {602, 109}, {602, 110}, {602, 111}, {602, 112}, {602, 113}, {602, 114}, {602, 115},
		{603, 82}, {603, 83}, {603, 84}, {603, 85}, {603, 86}, {603, 87}, {603, 88}, {603, 89}, {603, 90}, {603, 91}, {603, 92}, {603, 93}, {603, 94}, {603, 95}, {603, 96}, {603, 97}, {603, 98}, {603, 99}, {603, 100}, {603, 101}, {603, 102}, {603, 103}, {603, 104}, {603, 105}, {603, 106}, {603, 107}, {603, 108}, {603, 109}, {603, 110}, {603, 111}, {603, 112}, {603, 113}, {603, 114},
		{604, 82}, {604, 83}, {604, 84}, {604, 85}, {604, 86}, {604, 87}, {604, 88}, {604, 89}, {604, 90}, {604, 91}, {604, 92}, {604, 93}, {604, 94}, {604, 95}, {604, 96}, {604, 97}, {604, 98}, {604, 99}, {604, 100}, {604, 101}, {604, 102}, {604, 103}, {604, 104}, {604, 105}, {604, 106}, {604, 107}, {604, 108}, {604, 109}, {604, 110}, {604, 111}, {604, 112}, {604, 113}, {604, 114}, {604, 115}, {604, 117},
		{605, 82}, {605, 83}, {605, 84}, {605, 85}, {605, 86}, {605, 87}, {605, 88}, {605, 89}, {605, 90}, {605, 91}, {605, 92}, {605, 93}, {605, 94}, {605, 95}, {605, 96}, {605, 97}, {605, 98}, {605, 99}, {605, 100}, {605, 101}, {605, 102}, {605, 103}, {605, 104}, {605, 105}, {605, 106}, {605, 107}, {605, 108}, {605, 109}, {605, 110}, {605, 111}, {605, 112}, {605, 113}, {605, 114}, {605, 115}, {605, 116}, {605, 117},
		{606, 82}, {606, 83}, {606, 84}, {606, 85}, {606, 86}, {606, 87}, {606, 88}, {606, 89}, {606, 90}, {606, 91}, {606, 92}, {606, 93}, {606, 94}, {606, 95}, {606, 96}, {606, 97}, {606, 98}, {606, 99}, {606, 100}, {606, 101}, {606, 102}, {606, 103}, {606, 104}, {606, 105}, {606, 106}, {606, 107}, {606, 108}, {606, 109}, {606, 110}, {606, 111}, {606, 112}, {606, 113}, {606, 114}, {606, 115}, {606, 116}, {606, 117},
		{607, 82}, {607, 83}, {607, 84}, {607, 85}, {607, 86}, {607, 87}, {607, 88}, {607, 89}, {607, 90}, {607, 91}, {607, 92}, {607, 93}, {607, 94}, {607, 95}, {607, 96}, {607, 97}, {607, 98}, {607, 99}, {607, 100}, {607, 101}, {607, 102}, {607, 103}, {607, 104}, {607, 105}, {607, 106}, {607, 107}, {607, 108}, {607, 109}, {607, 110}, {607, 111}, {607, 112}, {607, 113}, {607, 114}, {607, 115}, {607, 116},
		{608, 82}, {608, 83}, {608, 84}, {608, 85}, {608, 86}, {608, 87}, {608, 88}, {608, 89}, {608, 90}, {608, 91}, {608, 92}, {608, 93}, {608, 94}, {608, 95}, {608, 96}, {608, 97}, {608, 98}, {608, 99}, {608, 100}, {608, 101}, {608, 102}, {608, 103}, {608, 104}, {608, 105}, {608, 106}, {608, 107}, {608, 108}, {608, 109}, {608, 110}, {608, 111}, {608, 112}, {608, 113}, {608, 114}
	},
	SettlementLocation = {587, 97}, -- Moscow
	Map = "maps/earth/novgorod.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"norse", "Holmgard",
		"slav", "Budini Tribe",
		"slav", "Muscovy",
		"slav", "Russia"
	},
	Regions = {"Eurasia", "Europe"}
})

DefineProvince("Salzburg", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Salzburg", "settlement-derived-name" -- presumably
	},
	Tiles = {
		{515, 121},
		{516, 119}, {516, 120}, {516, 121},
		{517, 120}, {517, 121},
		{518, 121}
	},
	SettlementLocation = {516, 119}, -- Salzburg
	Map = "maps/earth/salzburg.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"celt", "Norici Tribe",
		"teuton", "Austria",
		"teuton", "Holy Rome"
	},
	HistoricalOwners = {
		-800, "celt", "Norici Tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "Rome", -- Noricum acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "Ostrogoth Tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		537, "teuton", "Francia", -- region of Altbayern, Salzburg and Tyrol conquered by the Franks in 537; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "Holy Rome" -- Duchy of Bavaria within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		-15, "latin", "Rome",
		537, "teuton", "Francia",
		919, "teuton", "Bavaria" -- Duchy of Bavaria within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-800, "celt"
	},
	Regions = {"Cisleithania", "Europe", "Germany-Netherlands", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Sardinia", {
	World = "Earth",
	CulturalNames = {
		"latin", "Sardinia"
	},
	Tiles = {
--		{126, 36}, -- old map
		{504, 140}, {504, 141}, {504, 142}, {504, 143}, {504, 144},
		{505, 139}, {505, 140}, {505, 141}, {505, 142}, {505, 143}, {505, 144},
		{506, 139}, {506, 140}, {506, 141}, {506, 142}, {506, 143},
		{507, 140}
	},
	SettlementLocation = {505, 144}, -- Cagliari
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Savoy", {
	World = "Earth",
	CulturalNames = {
		"latin", "Pennine Alps"
	},
	Tiles = {
		{496, 126},
		{497, 125}, {497, 126},
		{498, 124}, {498, 125}, {498, 126}, {498, 127},
		{499, 124}, {499, 125}, {499, 126}, {499, 127},
		{500, 126}, {500, 127}
	},
	SettlementLocation = {496, 126}, -- Chambéry
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
--		"latin", "France",
--		"latin", "Savoy"
	},
	Regions = {"Europe", "France", "Gaul", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Scania", {
	World = "Earth",
	FactionCulturalNames = {
		"basque", "Gylfing Tribe", "Gylveland"
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
	SettlementLocation = {517, 97}, -- Malmö
	Map = "maps/earth/malmo.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"basque", "Ertebolle Tribe",
		"basque", "Gylfing Tribe",
		"norse", "Dane Tribe",
		"norse", "Scania"
	},
	HistoricalOwners = {
		-5800, "basque", "Ertebolle Tribe", -- Coastal Ertebolle Mesolithic sites and shell middens begin being occupied c. 5800 BC; they lived in eastern Jutland (i.e. Ertebolle itself on the Limfjord in northern Jutland, Bjornsholm), the Danish isles (the Karrebaek-Dybso Fjord sites in Zealand - which could sustain c. 250 people), and southern Sweden (Tagerup in a fjord on Scania - this site had a previous Kongemose occupation); Ertebolle people used pottery and did large-quantity fishing via traps or weirs; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 136.
		-3000, "basque", "Gylfing Tribe", -- around this time Gylve or his ancestors should have begun to rule in Scania
		-2800, "germanic", "Asa Tribe", -- in the Ynglinga saga, "Odin's people", the Asa, settle Scandinavia in a manner not too dissimilar from what archaeological findings tell us of Indo-European settlement in the region; thus the name "Asa Tribe" is used here to denote the Indo-European-speaking peoples who settled in Scandinavia, and were the precursors of the Germanic peoples 
		-2770, "germanic", "Yngling Tribe", -- estimated date
		-264, "", "", -- remove the Proto-Germanics
		526, "norse", "Dane Tribe", -- Danes were in Scania in 526-600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1560, "norse", "Denmark" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-2800, "germanic", "Asa Tribe"
	},
	HistoricalCultures = {
		-5800, "basque",
		-2800, "germanic",
		526, "norse"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Schleswig", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Schleswig" -- is this a settlement-derived name?
	},
	Tiles = {
		{505, 98}, {505, 99}, {505, 100},
		{506, 98}, {506, 99}, {506, 100},
		{507, 100}
	},
	SettlementLocation = {506, 100}, -- Flensburg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Angle Tribe",
		"teuton", "Avione Tribe"
	},
	Coastal = true,
	HistoricalOwners = {
		-264, "teuton", "Angle Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		919, "norse", "Denmark" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-264, "teuton"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Serbia", {
	World = "Earth",
	Tiles = {
--		{134, 32}, {135, 32}, {135, 33}, -- old map
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
		"latin", "Upper Moesia"
	},
	SettlementLocation = {538, 129}, -- Belgrade
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"thracian", "Triballi Tribe"
	},
	Regions = {"Europe", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Silesia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Schlesien"
	},
	Tiles = {
--		{130, 27}, {131, 27}, {132, 27}, {132, 28}, -- old map
		{523, 108}, {523, 109}, {523, 110},
		{524, 108}, {524, 109}, {524, 110},
		{525, 108}, {525, 109}, {525, 110}, {525, 111},
		{526, 109}, {526, 110}, {526, 111}, {526, 112},
		{527, 109}, {527, 110}, {527, 111}, {527, 112}, {527, 113},
		{528, 109}, {528, 110}, {528, 111}, {528, 112},
		{529, 109}, {529, 110}, {529, 111}, {529, 112},
		{530, 110}, {530, 111}, {530, 112}, {530, 113},
		{531, 111}, {531, 112}, {531, 113},
		{532, 111}, {532, 112}, {532, 113},
		{533, 112}, {533, 113},
		{534, 113}
	},
	SettlementLocation = {526, 110}, -- Breslau
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"goth", "Lugii Tribe",
		"goth", "Silingae Tribe"
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Skopje", {
	World = "Earth",
	CulturalNames = {
		"latin", "Scupi", "settlement-derived-name"
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
	SettlementLocation = {540, 136}, -- Skopje
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"phrygian", "Bryges Tribe"
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Slovakia", {
	World = "Earth",
	CulturalNames = {
		"slav", "Slovakia"
	},
	Tiles = {
		{528, 117}, {528, 118},
		{529, 117}, {529, 118}, {529, 119},
		{530, 117}, {530, 118}, {530, 119},
		{531, 117}, {531, 118}, {531, 119},
		{532, 116}, {532, 117}, {532, 118}, {532, 119},
		{533, 115}, {533, 116}, {533, 117}, {533, 118}, {533, 119},
		{534, 115}, {534, 116}, {534, 117}, {534, 118},
		{535, 115}, {535, 116}, {535, 117}, {535, 118},
		{536, 115}, {536, 116}, {536, 117},
		{537, 115}, {537, 116}, {537, 117}, {537, 118},
		{538, 115}, {538, 116}, {538, 117},
		{539, 115}, {539, 116},
		{540, 115}, {540, 116},
		{541, 115}, {541, 116},
		{542, 116}, {542, 117},
		{543, 116}, {543, 117},
		{544, 117}, {544, 118},
		{545, 117}, {545, 118},
		{546, 117}, {546, 118},
		{547, 118},
		{548, 118},
		{549, 118}
	},
	SettlementLocation = {528, 118}, -- Bratislava
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Linearware Tribe",
		"celt", "Cotini Tribe",
		"goth", "Gepidae Tribe",
		"teuton", "Quadi Tribe",
		"thracian", "Carpi Tribe"
	},
	HistoricalOwners = {
		-5500, "basque", "Linearware Tribe", -- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "celt", "Cotini Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		-9, "teuton", "Quadi Tribe", -- if the Boii were conquered by the Marcomanni in 9 BC, the Quadi probably moved to Moravia and Slovakia at around the same time
		526, "teuton", "Lombard Tribe", -- political situation in 526-600 in Europe; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		919, "magyar", "Hungary", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "Austria", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-5500, "basque",
		-264, "celt",
		-9, "teuton"
	},
	HistoricalModifiers = {
		1465, "upgrade-university", true -- University founded in Bratislava in 1465. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Czechoslovakia", "Europe", "West and Central Europe"}
})

DefineProvince("South Trondelag", {
	World = "Earth",
	Tiles = {
		{504, 75},
		{505, 75}, {505, 76},
		{506, 75}, {506, 76}, {506, 78},
		{507, 75}, {507, 76}, {507, 77}, {507, 78},
		{508, 74}, {508, 75}, {508, 76}, {508, 77}, {508, 78},
		{509, 73}, {509, 74}, {509, 75}, {509, 76}, {509, 77},
		{510, 73}, {510, 75}, {510, 76}, {510, 77},
		{511, 76}, {511, 77},
		{512, 76}, {512, 77}, {512, 78},
		{513, 77}, {513, 78},
		{514, 78}
	},
	CulturalNames = {
		"norse", "Sør-Trøndelag"
	},
	SettlementLocation = {509, 75}, -- Trondheim
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"norse", "Norway"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Styria", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Styria", "name-elements", { -- Steiermark
--			"compound", "prefix", -- ?
			"compound", "suffix", "high-german", "noun", {"March"}, "singular", "Mark"
		}
	},
	Tiles = {
		{518, 120},
		{519, 120}, {519, 121},
		{520, 120}, {520, 121},
		{521, 120}, {521, 121},
		{522, 120}, {522, 121}, {522, 122}, {522, 123}, {522, 124},
		{523, 120}, {523, 121}, {523, 122}, {523, 123}, {523, 124},
		{524, 120}, {524, 121}, {524, 122}, {524, 123}, {524, 124},
		{525, 120}, {525, 121}, {525, 122}, {525, 123}
	},
	SettlementLocation = {523, 121}, -- Graz
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"celt", "Norici Tribe",
		"teuton", "Austria",
		"teuton", "Holy Rome"
	},
	HistoricalOwners = {
		-800, "celt", "Norici Tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "Rome", -- Noricum acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "Ostrogoth Tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "Holy Rome", -- Duchy of Carinthia within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "Austria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "Rome",
		919, "teuton", "Carinthia", -- Duchy of Carinthia within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-800, "celt"
	},
	HistoricalModifiers = {
		1585, "upgrade-university", true -- University founded in Graz in 1585. Source: The Cambridge Modern History Atlas, p. 9.
	},
	Regions = {"Cisleithania", "Europe", "Germany-Netherlands", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Sussex", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "Angle Tribe", "Sussex",
		"teuton", "England", "Sussex", "name-elements", {
			"compound", "prefix", "english", "noun", "Sus",
			"compound", "suffix", "english", "noun", "plural", "Sex"
		}
	},
	Tiles = {
		{477, 111},
		{478, 111},
		{479, 111},
		{480, 111}
	},
	SettlementLocation = {480, 111}, -- Newhaven
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"teuton", "England"
	},
	HistoricalOwners = {
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "Saxon Tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "Rome"
	},
	HistoricalCultures = {
		526, "teuton"
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Sweden", {
	World = "Earth",
	Tiles = {
--		{129, 20}, {130, 20}, {130, 21}, {131, 21}, {132, 21}, -- old map
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
	CulturalNames = {
		"norse", "Sweden"
	},
	SettlementLocation = {531, 87}, -- Stockholm / Sigtun
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"germanic", "Yngling Tribe",
		"norse", "Swede Tribe"
	},
	HistoricalOwners = {
		-2800, "germanic", "Asa Tribe", -- in the Ynglinga saga, "Odin's people", the Asa, settle Scandinavia in a manner not too dissimilar from what archaeological findings tell us of Indo-European settlement in the region; thus the name "Asa Tribe" is used here to denote the Indo-European-speaking peoples who settled in Scandinavia, and were the precursors of the Germanic peoples 
		-2770, "germanic", "Yngling Tribe", -- estimated date
		-264, "norse", "Swede Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "norse", "Sweden" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-2800, "germanic", "Asa Tribe"
	},
	HistoricalCultures = {
		-2800, "germanic",
		-264, "norse"
	},
	HistoricalSettlementBuildings = {
--		-2800, "unit-teuton-temple", true -- in the Ynglinga saga, Odin erects a large temple after he arrived in Sigtun (here understood to correspond to the time when Indo-Europeans reached Scandinavia); Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 220.
	},
	HistoricalModifiers = {
		1477, "upgrade-university", true -- University founded in Uppsala in 1477. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Switzerland", {
	World = "Earth",
	CulturalNames = {
		"celt", "Helvetia",
		"latin", "Helvetia",
		"teuton", "Switzerland"
	},
	Tiles = {
--		{125, 30}, {126, 30}, -- old map
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
	SettlementLocation = {501, 122}, -- Bern
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Mountains",
	Claims = {
		"celt", "Helvetii Tribe",
		"teuton", "Switzerland",
		"teuton", "Holy Rome"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in St. Gallen during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Disentis during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in St. Maurice during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1365, "upgrade-university", true, -- University founded in Geneva in 1365. Source: Atlas de História Mundial, p. 144.
		1459, "upgrade-university", true, -- University founded in Basel in 1459. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1521, "upgrade-university", true -- University founded in Zurich in 1521. Source: The Cambridge Modern History Atlas, 1912, p. 9.
	},
	Regions = {"Europe", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Syracuse", {
	World = "Earth",
	CulturalNames = {
		"greek", "Syracusae", "settlement-derived-name", -- presumably, since a settlement with that name exists there
		"latin", "Syracusae", "settlement-derived-name" -- presumably, since a settlement with that name exists there
	},
	Tiles = {
		{520, 148}, {520, 149}, {520, 150},
		{521, 148}, {521, 149}, {521, 150},
		{522, 147}, {522, 148}, {522, 149}, {522, 150}, {522, 151},
		{523, 147}
	},
	SettlementLocation = {522, 150}, -- Syracuse
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"latin", "Sicel Tribe"
--		"latin", "Sicily"
	},
	HistoricalOwners = {
		-500, "latin", "Sicel Tribe", -- Situation of Italy in (apparently) 500 BC; Sicily was inhabited by the Elymians, Sicanians and Sicels; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		-241, "latin", "Rome", -- Sicily acquired by Rome in 241 BC; the city of Syracuse was acquired only in 212 BC, but the overwhelming majority of the eastern side of the island was acquired in 241 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "Ostrogoth Tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		1061, "latin", "Sicily", -- Robert Guiscard invades Sicily in 1061 AD with 13 ships and 270 knights, to which 170 knights were joined in the conquest of Messina (but the source also mentions the victorious battle having 700 knights against 15,000 Muslims); Messina is on the eastern side of the island; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 233.
		1560, "latin", "Spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-500, "latin"
	},
	HistoricalClaims = {
		-241, "latin", "Rome"
	},
	HistoricalModifiers = {
		1444, "upgrade-university", true, -- University founded in Catania in 1444. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1548, "upgrade-university", true -- University founded in Messina in 1548. Source: The Cambridge Modern History Atlas, p. 9.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Thessaly", {
	World = "Earth",
	Tiles = {
		{541, 142}, {541, 143}, {541, 144},
		{542, 142}, {542, 143}, {542, 144},
		{543, 142}, {543, 143}, {543, 144},
		{544, 142}, {544, 143}, {544, 144}
	},
	CulturalNames = {
		"greek", "Thessaly"
	},
	SettlementLocation = {543, 143}, -- Larissa
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"minoan", "Impressedware Tribe"
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Thrace", {
	World = "Earth",
	Tiles = {
--		{138, 34}, {139, 34}, -- old map
		{555, 138}, {555, 139},
		{556, 137}, {556, 138}, {556, 139},
		{557, 137}, {557, 138}, {557, 139},
		{558, 137}, {558, 138},
		{559, 137}, {559, 138},
		{560, 138},
		{561, 138}
	},
	SettlementLocation = {561, 138}, -- Constantinople
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"thracian", "Apsinthii Tribe",
		"greek", "Thrace"
	},
	Regions = {"Europe", "Greece", "West and Central Europe"}
})

DefineProvince("Thuringia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Thüringen"
	},
	Tiles = {
		{508, 110}, {508, 111},
		{509, 110}, {509, 111}, {509, 112},
		{510, 110}, {510, 111}, {510, 112}, {510, 113},
		{511, 110}, {511, 111}, {511, 112}, {511, 113},
		{512, 110}, {512, 111}, {512, 112},
		{513, 110}, {513, 111}, {513, 112},
		{514, 110}, {514, 111}, {514, 112},
		{515, 110}
	},
	SettlementLocation = {511, 110}, -- Erfurt
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Hermunduri Tribe",
		"teuton", "Holy Rome"
	},
	HistoricalModifiers = {
		1379, "upgrade-university", true, -- University founded in Erfurt in 1379. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1557, "upgrade-university", true -- University founded in Jena in 1557. Source: The Cambridge Modern History Atlas, 1912, p. 9.
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Transylvania", {
	World = "Earth",
	CulturalNames = {
		"latin", "Upper Dacia",
		"teuton", "Siebenbürgen", "name-elements", {
			"compound", "prefix", "high-german", "numeral", "Sieben",
			"compound", "suffix", "high-german", "noun", "plural", "Burg" -- not exact, because the plural of "Burg" is written "Burgen", and not "Bürgen"
		}
	},
	Tiles = {
--		{136, 30}, {136, 31}, {137, 30}, {137, 31}, {138, 30}, {138, 31}, -- old map
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
	SettlementLocation = {545, 122}, -- Cluj/Klausenburg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
--		"latin", "Transylvania"
		"minoan", "Paintedware Tribe"
	},
	HistoricalModifiers = {
		1580, "upgrade-university", true, -- University founded in Cluj in 1580. Source: The Cambridge Modern History Atlas, p. 9.
	},
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Tuscany", {
	World = "Earth",
	CulturalNames = {
		"latin", "Etruria",
		"etruscan", "Etruria"
	},
	Tiles = {
		{509, 131},
		{510, 131}, {510, 132}, {510, 133},
		{511, 130}, {511, 131}, {511, 132}, {511, 133}, {511, 134},
		{512, 130}, {512, 131}, {512, 132}, {512, 133}, {512, 134},
		{513, 130}, {513, 131}, {513, 132}, {513, 133},
		{514, 131}, {514, 132}
	},
	SettlementLocation = {512, 131}, -- Florence
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"etruscan", "Etruscan Tribe",
		"etruscan", "Etruria"
	},
	HistoricalModifiers = {
		1215, "upgrade-university", true, -- University founded in Arezzo in 1215. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1348, "upgrade-university", true, -- University founded in Pisa in 1348. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1369, "upgrade-university", true -- University founded in Lucca in 1369. Source: Atlas de História Mundial, 2001, p. 144.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Tyrol", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Tyrol"
	},
	Tiles = {
		{507, 121},
		{508, 121},
		{509, 121},
		{510, 121}, {510, 122}, {510, 123}, {510, 124}, {510, 125},
		{511, 121}, {511, 122}, {511, 123}, {511, 124}, {511, 125},
		{512, 120}, {512, 121}, {512, 122}, {512, 123}, {512, 124},
		{513, 120}, {513, 121}, {513, 122}, {513, 123},
		{514, 120}, {514, 121}, {514, 122}, {514, 123},
		{515, 120}, {515, 122},
		{516, 122}
	},
	SettlementLocation = {512, 121}, -- Innsbruck
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Mountains",
	Claims = {
		"celt", "Norici Tribe",
		"teuton", "Austria",
		"teuton", "Holy Rome"
	},
	HistoricalOwners = {
		-800, "celt", "Norici Tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "Rome", -- Raetia acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "Ostrogoth Tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		537, "teuton", "Francia", -- region of Altbayern, Salzburg and Tyrol conquered by the Franks in 537; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "Holy Rome", -- Duchy of Bavaria within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "Austria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-800, "celt"
	},
	HistoricalClaims = {
		-15, "latin", "Rome",
		537, "teuton", "Francia",
		784, "teuton", "Bavaria"
	},
	Regions = {"Cisleithania", "Europe", "Germany-Netherlands", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Ukraine", {
	World = "Earth",
	CulturalNames = {
		"goth", "Danparstathir", -- name used in the Hervararsaga for a field of battle between the Goths and Huns, possibly the region of the Dnieper; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 484.
		"norse", "Danparstathir",
	},
	FactionCulturalNames = {
		"slav", "Muscovy", "Ukraine",
		"slav", "Poland", "Ukraine",
		"slav", "Russia", "Ukraine"
	},
	Tiles = {
--		{139, 28}, {140, 27}, {140, 28}, {140, 29}, {141, 27}, {141, 28}, {141, 29}, {141, 30}, {142, 27}, {142, 28}, {142, 29}, {142, 30}, {143, 27}, {143, 28}, {143, 29}, {143, 30}, {144, 27}, {144, 28}, {144, 29}, {144, 30}, {144, 31}, {145, 28}, {145, 29}, {145, 30}, {146, 28}, {146, 29}, {146, 30}, {147, 28}, {147, 29}, -- old map
		{548, 110}, {548, 111}, {548, 112},
		{549, 110}, {549, 111}, {549, 112},
		{550, 109}, {550, 110}, {550, 111}, {550, 112},
		{551, 109}, {551, 110}, {551, 111}, {551, 112}, {551, 113},
		{552, 109}, {552, 110}, {552, 111}, {552, 112}, {552, 113},
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
	SettlementLocation = {566, 112}, -- Kiev
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"persian", "Alazone Tribe",
		"persian", "Navari Tribe",
		"persian", "Roxolani Tribe",
		"persian", "Scythian Tribe",
		"slav", "Venedae Tribe"
	},
	Regions = {"Eurasia", "Europe"}
})

DefineProvince("Umbria", {
	World = "Earth",
	CulturalNames = {
		"latin", "Umbria"
	},
	Tiles = {
		{515, 131}, {515, 132}, {515, 133}, {515, 134},
		{516, 131}, {516, 132}, {516, 133}, {516, 134}, {516, 135},
		{517, 132}, {517, 133},
		{518, 132}, {518, 133}
	},
	SettlementLocation = {515, 134}, -- Perugia
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"latin", "Aequian Tribe",
		"latin", "Picentian Tribe",
		"latin", "Sabine Tribe",
		"latin", "Umbrian Tribe"
	},
	HistoricalModifiers = {
		1308, "upgrade-university", true, -- University founded in Perugia in 1308. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1540, "upgrade-university", true -- University founded in Macerata in 1540. Source: The Cambridge Modern History Atlas, p. 9.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Upper Austria", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Upper Austria"
	},
	Tiles = {
		{517, 119},
		{518, 118}, {518, 119},
		{519, 118}, {519, 119},
		{520, 118}, {520, 119},
		{521, 118}
	},
	SettlementLocation = {520, 118}, -- Linz
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"celt", "Norici Tribe",
		"teuton", "Austria",
		"teuton", "Holy Rome"
	},
	HistoricalOwners = {
		-800, "celt", "Norici Tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "Rome", -- Noricum acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "Ostrogoth Tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "Holy Rome", -- Duchy of Bavaria within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "Austria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "Rome",
		919, "teuton", "Bavaria" -- Duchy of Bavaria within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-800, "celt"
	},
	Regions = {"Cisleithania", "Europe", "Germany-Netherlands", "Roman Danube", "West and Central Europe"}
})

DefineProvince("Upper Lusatia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Upper Lusatia"
	},
	Tiles = {
		{518, 109},
		{519, 109},
		{520, 109}, {520, 110},
		{521, 110}
	},
	SettlementLocation = {520, 109}, -- Bautzen
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Upper Saxony", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Obersachsen"
	},
	Tiles = {
		{515, 109}, {515, 111}, {515, 112},
		{516, 109}, {516, 110}, {516, 111}, {516, 112},
		{517, 109}, {517, 110}, {517, 111},
		{518, 110}, {518, 111},
		{519, 110}
	},
	SettlementLocation = {515, 109}, -- Leipzig
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Hermunduri Tribe",
		"teuton", "Holy Rome"
	},
	HistoricalModifiers = {
		1409, "upgrade-university", true, -- University founded in Leipzig in 1409. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
--		1846, "upgrade-university", true -- Bergakademie Freiberg existent in Chemnitz in 1846. Source: Silvia Fernanda de Mendonça Figueirôa, "Ciência e tecnologia no Brasil Imperial: Guilherme Schüch, Barão de Capanema (1824-1908)", 2005, p. 443.
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("Varmland", {
	World = "Earth",
	Tiles = {
		{514, 85}, {514, 86},
		{515, 83}, {515, 85}, {515, 86}, {515, 87},
		{516, 83}, {516, 84}, {516, 85}, {516, 86}, {516, 87},
		{517, 83}, {517, 84}, {517, 85}, {517, 86}, {517, 87},
		{518, 84}, {518, 85}, {518, 86},
		{519, 84}, {519, 85}, {519, 86},
		{520, 85}, {520, 86}, {520, 87}
	},
	CulturalNames = {
		"norse", "Värmland"
	},
	SettlementLocation = {518, 86}, -- Karlstad
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"norse", "Swede Tribe"
	},
	HistoricalOwners = {
		-264, "norse", "Swede Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "norse", "Sweden" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "norse"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Venetia", {
	World = "Earth",
	CulturalNames = {
		"latin", "Venetia"
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
	SettlementLocation = {515, 126}, -- Venice
	Map = "maps/earth/oderzo.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"latin", "Venetian Tribe"
--		"latin", "Venice"
	},
	HistoricalModifiers = {
		1204, "upgrade-university", true, -- University founded in Vicenza in 1204. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1222, "upgrade-university", true, -- University founded in Padua in 1222. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1318, "upgrade-university", true, -- University founded in Treviso in 1318. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
		1353, "upgrade-university", true -- University founded in Cividale in 1353. Source: Atlas de História Mundial, 2001, p. 144.
	},
	Regions = {"Europe", "Italy", "West and Central Europe"}
})

DefineProvince("Vestfold", {
	World = "Earth",
	Tiles = {
		{508, 87},
		{509, 86}, {509, 87}
	},
	CulturalNames = {
		"norse", "Vestfold"
	},
	SettlementLocation = {509, 87}, -- Tønsberg
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"norse", "Norway"
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

DefineProvince("Vojvodina", {
	World = "Earth",
	Tiles = {
		{534, 125}, {534, 126}, {534, 127},
		{535, 125}, {535, 126}, {535, 127},
		{536, 125}, {536, 126}, {536, 127},
		{537, 125}, {537, 126}, {537, 127}, {537, 128},
		{538, 126}, {538, 127}, {538, 128},
		{539, 127}, {539, 128},
		{540, 128}
	},
	SettlementLocation = {536, 127}, -- Novi Sad
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Wales", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "England", "Wales"
	},
	Tiles = {
		{465, 108},
		{466, 108},
		{467, 105}, {467, 108},
		{468, 104}, {468, 105}, {468, 106}, {468, 107}, {468, 108},
		{469, 104}, {469, 105}, {469, 106}, {469, 107}, {469, 108}, {469, 109},
		{470, 104}, {470, 105}, {470, 106}, {470, 107}, {470, 108}, {470, 109}
	},
	SettlementLocation = {470, 109}, -- Cardiff
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"basque", "Bellbeaker Tribe",
		"celt", "Gwynedd", -- Gwynedd is in north Wales
		"celt", "Powys", -- Powys encompassed the area between the upper Severn and the Dee rivers; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
		"teuton", "England"
	},
	HistoricalOwners = {
		-7000, "basque", "Bellbeaker Tribe", -- Bell Beaker culture existed in Normandy and the southwestern parts of Great Britain between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		613, "celt", "Powys", -- at some point between 613 and 616, the king of Powys was defeated by the Bernicians at Chester, so the kingdom must have existed by then; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-7000, "basque",
		613, "celt"
	},
	HistoricalClaims = {
		43, "latin", "Rome"
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Wallachia", {
	World = "Earth",
	CulturalNames = {
		"latin", "Southern Lower Dacia"
	},
	Tiles = {
--		{136, 32}, {137, 32}, {138, 32}, {139, 32}, {140, 32}, -- old map
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
	SettlementLocation = {554, 129}, -- Bucharest
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
--		"latin", "Wallachia",
		"minoan", "Paintedware Tribe",
		"thracian", "Getae Tribe"
	},
	Regions = {"Europe", "West and Central Europe"}
})

DefineProvince("Wessex", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "Angle Tribe", "Wessex",
		"teuton", "England", "Wessex", "name-elements", {
			"compound", "prefix", "english", "noun", "Wes",
			"compound", "suffix", "english", "noun", "plural", "Sex"
		}
	},
	Tiles = {
		{467, 111},
		{468, 110}, {468, 111}, {468, 112},
		{469, 110}, {469, 111}, {469, 112},
		{470, 110}, {470, 111},
		{471, 110}, {471, 111},
		{472, 109}, {472, 110}, {472, 111},
		{473, 108}, {473, 109}, {473, 110}, {473, 111},
		{474, 108}, {474, 109}, {474, 110}, {474, 111},
		{475, 108}, {475, 109}, {475, 110}, {475, 111},
		{476, 108}, {476, 109}, {476, 110}, {476, 111},
		{477, 109}, {477, 110},
		{478, 110},
		{479, 110}
	},
	SettlementLocation = {476, 110}, -- Winchester
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"basque", "Bellbeaker Tribe",
		"teuton", "England"
	},
	HistoricalOwners = {
		-7000, "basque", "Bellbeaker Tribe", -- Bell Beaker culture existed in Normandy and the southwestern parts of Great Britain between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "Saxon Tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-7000, "basque",
		526, "teuton"
	},
	HistoricalClaims = {
		43, "latin", "Rome"
	},
	HistoricalModifiers = {
		1909, "upgrade-university", true -- University founded in Bristol in 1909. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("West Galicia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Westgalizien", "name-elements", {
			"compound", "prefix", "high-german", "noun", "singular", "West",
--			"compound", "suffix", -- ?
		}
	},
	Tiles = {
		{537, 109}, {537, 110}, {537, 111}, {537, 112},
		{538, 109}, {538, 110}, {538, 111}, {538, 112},
		{539, 109}, {539, 110}, {539, 111}, {539, 112},
		{540, 107}, {540, 108}, {540, 109}, {540, 110}, {540, 111}, {540, 112},
		{541, 107}, {541, 108}, {541, 109}, {541, 110}, {541, 111},
		{542, 107}, {542, 108}, {542, 109}, {542, 110}, {542, 111},
		{543, 108}, {543, 109}, {543, 110}, {543, 111}, {543, 112},
		{544, 108}, {544, 109}, {544, 110}, {544, 111}, {544, 112},
		{545, 108}, {545, 109}, {545, 110}, {545, 111}, {545, 112},
		{546, 108}, {546, 109}, {546, 110}, {546, 111}, {546, 112},
		{547, 111}, {547, 112}
	},
	SettlementLocation = {543, 110}, -- Lublin
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"slav", "Venedae Tribe",
		"slav", "Poland"
	},
	Regions = {"Europe", "Poland", "West and Central Europe"}
})

DefineProvince("Westphalia", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Westfalen", "name-elements", {
			"compound", "prefix", "high-german", "noun", "singular", "West",
--			"compound", "suffix", -- ?
		}
	},
	Tiles = {
--		{125, 26}, {125, 27}, {125, 28}, {126, 26}, {126, 27}, {126, 28}, {127, 26}, -- old map
		{497, 108},
		{498, 108}, {498, 109}, {498, 110},
		{499, 107}, {499, 108}, {499, 109}, {499, 110}, {499, 111},
		{500, 107}, {500, 108}, {500, 109}, {500, 110}, {500, 111},
		{501, 107}, {501, 108}, {501, 109}, {501, 110}, {501, 111}, {501, 112},
		{502, 107}, {502, 108}, {502, 109}, {502, 110}, {502, 111},
		{503, 108}, {503, 109}, {503, 110}, {503, 111},
		{504, 107}, {504, 108}, {504, 109}, {504, 110},
		{505, 107}, {505, 108},
		{506, 107}, {506, 108}
	},
	SettlementLocation = {500, 109}, -- Düsseldorf
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Sugambri Tribe",
		"teuton", "Westphalia",
		"teuton", "Holy Rome"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Werden during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Corvey during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1614, "upgrade-university", true -- University founded in Paderborn in 1614. Source: The Cambridge Modern History Atlas, 1912, p. 9.
	},
	Regions = {"Europe", "Germany-Netherlands", "West and Central Europe"}
})

DefineProvince("White Russia", {
	World = "Earth",
	CulturalNames = {
		"slav", "White Russia"
	},
	Tiles = {
--		{136, 25}, {136, 26}, {136, 27}, {137, 25}, {137, 26}, {137, 27}, {138, 25}, {138, 26}, {138, 27}, {139, 24}, {139, 25}, {139, 26}, {139, 27}, -- old map
		{543, 107},
		{544, 101}, {544, 102}, {544, 103}, {544, 104}, {544, 105}, {544, 106}, {544, 107},
		{545, 101}, {545, 102}, {545, 103}, {545, 104}, {545, 105}, {545, 106}, {545, 107},
		{546, 101}, {546, 102}, {546, 103}, {546, 104}, {546, 105}, {546, 106}, {546, 107},
		{547, 102}, {547, 103}, {547, 104}, {547, 105}, {547, 106}, {547, 107}, {547, 108}, {547, 109}, {547, 110},
		{548, 102}, {548, 103}, {548, 104}, {548, 105}, {548, 106}, {548, 107}, {548, 108}, {548, 109},
		{549, 102}, {549, 103}, {549, 104}, {549, 105}, {549, 106}, {549, 107}, {549, 108}, {549, 109},
		{550, 101}, {550, 102}, {550, 103}, {550, 104}, {550, 105}, {550, 106}, {550, 107}, {550, 108},
		{551, 101}, {551, 102}, {551, 103}, {551, 104}, {551, 105}, {551, 106}, {551, 107}, {551, 108},
		{552, 101}, {552, 102}, {552, 103}, {552, 104}, {552, 105}, {552, 106}, {552, 107}, {552, 108},
		{553, 100}, {553, 101}, {553, 102}, {553, 103}, {553, 104}, {553, 105}, {553, 106}, {553, 107}, {553, 108},
		{554, 100}, {554, 101}, {554, 102}, {554, 103}, {554, 104}, {554, 105}, {554, 106}, {554, 107}, {554, 108}, {554, 109},
		{555, 100}, {555, 101}, {555, 102}, {555, 103}, {555, 104}, {555, 105}, {555, 106}, {555, 107}, {555, 108}, {555, 109},
		{556, 98}, {556, 99}, {556, 100}, {556, 101}, {556, 102}, {556, 103}, {556, 104}, {556, 105}, {556, 106}, {556, 107}, {556, 108}, {556, 109},
		{557, 97}, {557, 98}, {557, 99}, {557, 100}, {557, 101}, {557, 102}, {557, 103}, {557, 104}, {557, 105}, {557, 106}, {557, 107}, {557, 108}, {557, 109},
		{558, 97}, {558, 98}, {558, 99}, {558, 100}, {558, 101}, {558, 102}, {558, 103}, {558, 104}, {558, 105}, {558, 106}, {558, 107}, {558, 108}, {558, 109},
		{559, 96}, {559, 97}, {559, 98}, {559, 99}, {559, 100}, {559, 101}, {559, 102}, {559, 103}, {559, 104}, {559, 105}, {559, 106}, {559, 107}, {559, 108}, {559, 109},
		{560, 96}, {560, 97}, {560, 98}, {560, 99}, {560, 100}, {560, 101}, {560, 102}, {560, 103}, {560, 104}, {560, 105}, {560, 106}, {560, 107}, {560, 108}, {560, 109},
		{561, 96}, {561, 97}, {561, 98}, {561, 99}, {561, 100}, {561, 101}, {561, 102}, {561, 103}, {561, 104}, {561, 105}, {561, 106}, {561, 107}, {561, 108}, {561, 109},
		{562, 96}, {562, 97}, {562, 98}, {562, 99}, {562, 100}, {562, 101}, {562, 102}, {562, 103}, {562, 104}, {562, 105}, {562, 106}, {562, 107}, {562, 108}, {562, 109},
		{563, 98}, {563, 99}, {563, 100}, {563, 101}, {563, 102}, {563, 103}, {563, 104}, {563, 105}, {563, 106}, {563, 107}, {563, 108}, {563, 109},
		{564, 98}, {564, 99}, {564, 100}, {564, 101}, {564, 102}, {564, 103}, {564, 104}, {564, 105}, {564, 106}, {564, 107}, {564, 108}, {564, 109},
		{565, 97}, {565, 98}, {565, 99}, {565, 100}, {565, 101}, {565, 102}, {565, 103}, {565, 104}, {565, 105}, {565, 106}, {565, 107}, {565, 108}, {565, 109},
		{566, 97}, {566, 98}, {566, 99}, {566, 100}, {566, 101}, {566, 102}, {566, 103}, {566, 104}, {566, 105}, {566, 106}, {566, 107}, {566, 108}, {566, 109},
		{567, 97}, {567, 98}, {567, 99}, {567, 100}, {567, 101}, {567, 102}, {567, 103}, {567, 104}, {567, 105}, {567, 106}, {567, 107}, {567, 108},
		{568, 98}, {568, 99}, {568, 100}, {568, 101}, {568, 102}, {568, 103}, {568, 104}, {568, 105}, {568, 106}, {568, 107}, {568, 108},
		{569, 100}, {569, 101}, {569, 102}, {569, 103}, {569, 104}, {569, 105}, {569, 106}, {569, 107}, {569, 108},
		{570, 102}, {570, 103}, {570, 104},
		{571, 102}, {571, 103}, {571, 104},
		{572, 102}, {572, 103}
	},
	SettlementLocation = {559, 102}, -- Minsk
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"slav", "Poland"
	},
	Regions = {"Eurasia", "Europe"}
})

DefineProvince("Wurtemberg", {
	World = "Earth",
	CulturalNames = {
		"teuton", "Württemberg" -- is this a settlement-derived name?
	},
	Tiles = {
		{504, 118},
		{505, 117}, {505, 118},
		{506, 117}, {506, 118},
		{507, 117}, {507, 118}, {507, 119}, {507, 120},
		{508, 116}, {508, 117}, {508, 118}, {508, 119}, {508, 120},
		{509, 117}
	},
	SettlementLocation = {506, 117}, -- Stuttgart
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"teuton", "Alamanni Tribe",
		"teuton", "Swabia", -- Part of the Duchy of Swabia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "Wurtemberg",
		"teuton", "Holy Rome"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Hirsau during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Ellwangen during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1416, "upgrade-university", true -- University founded in Tubingen in 1416. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Germany-Netherlands", "Roman Danube", "West and Central Europe"}
})

DefineProvince("York", {
	World = "Earth",
	FactionCulturalNames = {
		"teuton", "Angle Tribe", "Deira",
		"teuton", "England", "York", "settlement-derived-name" -- presumably a settlement-derived name
	},
	Tiles = {
		{473, 102},
		{474, 101}, {474, 102}, {474, 103},
		{475, 101}, {475, 102}, {475, 103},
		{476, 101}, {476, 102}, {476, 103},
		{477, 101}, {477, 102},
		{478, 101}, {478, 102},
		{479, 102}
	},
	SettlementLocation = {477, 102}, -- York
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Coastal = true,
	Claims = {
		"celt", "Brigantes Tribe",
		"teuton", "Dere Tribe", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
		"teuton", "England",
		"teuton", "Northumbria"
	},
	HistoricalOwners = {
		-- The Star Carr site (in Yorkshire, England) underwent two occupation periods in the middle of the 9th millenium BC; in the site were found microliths (i.e. arrowheads), barbed antler points, moose bones, wild cattle bones, red and roe deer bones, pine marten bones, fox bones, beaver bones, remains of birds such as the red-breasted-merganser, red-throated diver and great crested grebe, water chestnuts, bog bean, fat hen, nettle and hazelnuts; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 146.
		-- Occupation of the Star Carr site (in North Yorkshire, England) occurred from c. 8700 BC to c. 8400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 154.
		-264, "celt", "Brigantes Tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		43, "latin", "Rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		500, "teuton", "Dere Tribe", -- The Dere (a collection of Anglian peoples) were in possession of York in 500 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
		588, "teuton", "Bernicia", -- according to tradition, Æthelric of Bernicia acquired the kingdom of Deira upon its king Ælle's death in 588 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
		654, "teuton", "Northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		1560, "teuton", "England" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "Rome",
		588, "teuton", "Deira" -- since their king died in this year, the kingdom existed then
	},
	HistoricalCultures = {
		-264, "celt",
		500, "teuton"
	},
	HistoricalModifiers = {
		1904, "upgrade-university", true, -- University founded in Leeds in 1904. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
		1905, "upgrade-university", true -- University founded in Sheffield in 1905. Source: David Thomson, Europe Since Napoleon, 1966, p. 449.
	},
	Regions = {"British Isles", "England", "Europe", "Northwest Europe", "West and Central Europe"}
})

DefineProvince("Zealand", {
	World = "Earth",
	Tiles = {
		{508, 98},
		{509, 98},
		{510, 98},
		{512, 97}, {512, 98}, {512, 100},
		{513, 97}, {513, 98},
		{514, 97}, {514, 98},
		{515, 97}
	},
	CulturalNames = {
		"norse", "Sjaelland"
	},
	SettlementLocation = {515, 97}, -- Copenhagen
	Map = "maps/random/random-map-forest.smp",
	SettlementTerrain = "Plains",
	Claims = {
		"basque", "Ertebolle Tribe",
		"basque", "Funnelbeaker Tribe",
		"basque", "Maglemose Tribe",
		"basque", "Kongemose Tribe",
		"germanic", "Skeldung Tribe",
		"goth", "Herulian Tribe",
		"norse", "Dane Tribe"
	},
	Coastal = true,
	HistoricalOwners = {
		-9000, "basque", "Maglemose Tribe", -- Maglemose culture arose in Zealand in 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
		-6400, "basque", "Kongemose Tribe", -- Maglemose cultured ended and Kongemose culture arose in Zealand in 6400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
		-5400, "basque", "Ertebolle Tribe", -- Kongemose cultured ended and Ertebolle culture arose in Zealand in 5400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
		-3950, "basque", "Funnelbeaker Tribe", -- Ertebolle cultured ended and Funnel Beaker culture arose in Zealand in 3950 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
		-2800, "germanic", "Skeldung Tribe", -- Funnel Beaker culture ended in Zealand in 2800 BC and the Corded Ware culture (neolithic) began; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 38.
		-264, "", "", -- remove Proto-Germanics
		-27, "goth", "Herulian Tribe", -- political situation in Europe (presumably) at the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		526, "norse", "Dane Tribe", -- Danes were in Zealand in 526-600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		919, "norse", "Denmark" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-9000, "basque",
		-2800, "germanic",
		-27, "goth",
		526, "norse"
	},
	HistoricalModifiers = {
		1478, "upgrade-university", true -- University founded in Copenhagen in 1478. Source: William R. Shepherd, Historical Atlas, 1923, p. 100.
	},
	Regions = {"Europe", "Scandinavia", "West and Central Europe"}
})

-- The ancient Sarmatia was known as "Swithiod the Great" or "Swithiod the Cold" to the Norse; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 216.
