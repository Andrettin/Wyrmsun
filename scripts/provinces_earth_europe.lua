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
--      (c) Copyright 2016-2018 by Andrettin
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

DefineProvince("Alentejo", {
	World = "earth",
	FactionCulturalNames = {
		"portuguese", "portugal", "Alentejo"
	},
--	SettlementLocation = {457, 146}, -- Evora
	Claims = {
--		"portuguese", "portugal"
	},
	HistoricalOwners = {
		-138, "latin", "rome", -- Lusitania acquired by Rome in 138 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "goth", "visigothia", -- Alentejo was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "portuguese", "portugal" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-138, "latin", "rome"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineProvince("Alsace", {
	World = "earth",
	CulturalNames = {
		"teuton", "Alsace" -- Elsass
	},
	Claims = {
		"gaul", "tribocci-tribe",
		"suebi", "alamanni-tribe",
		"teuton", "swabia", -- Part of the Duchy of Swabia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "holy-rome"				
	},
	HistoricalOwners = {
		-61, "suebi", "suebi-tribe", -- The Battle of Magetobria, in which Ariovistus defeated a number of Gaulish tribes, and afterwards established himself in Alsace and began lording over the Gauls, occurred in 61 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 139; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 218.
		-58, "", "", -- in 58 BC Caesar fought Ariovistus' Suebi and the latter were terribly beaten; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 219.
		-54, "gaul", "tribocci-tribe", -- the Tribocci held the lands between Strasbourg and Artzenheim (apparently) in 54 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 222.
		-50, "latin", "rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		481, "suebi", "alamanni-tribe", -- Political situation of the territories surrounding the Frankish realm in 481-814 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		506, "frankish", "francia", -- Alemanni lands (Alsace, Baden, Wurtemberg, Augsburg and etc.) conquered by the Franks in 506; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "holy-rome" -- Duchy of Swabia; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		-50, "latin", "rome",
		506, "frankish", "francia"
	},
	HistoricalCultures = {
		-54, "celt",
		481, "teuton"
	},
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain existent in Colmar in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Andalusia", {
	World = "earth",
	CulturalNames = {
		"latin", "Farther Baetica"
	},
	FactionCulturalNames = {
		"portuguese", "portugal", "Andalusia",
		"castillian", "spain", "Andalusia"
	},
--	SettlementLocation = {466, 148}, -- Cordoba
	HistoricalOwners = {
		-218, "phoenician", "carthage", -- Carthaginian territory in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 32.
		-197, "latin", "rome", -- Hispania Tarraconensis and (most of) Farther Baetica acquired by Rome in 197 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "goth", "visigothia", -- Kingdom of the Visigoths; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "castillian", "spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-197, "latin", "rome"
	},
	HistoricalModifiers = {
		1548, "upgrade-university", true, -- Minor university founded in Osuna in 1548; Source: "The Cambridge Modern History Atlas", 1912, p. 9; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		1553, "upgrade-university", true, -- University founded in Baena in 1553; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
--		1807, "upgrade-university", false -- Minor university abolished in Osuna in 1807; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineProvince("Apulia", {
	World = "earth",
	CulturalNames = {
		"latin", "Apulia" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 30-31.
	},
--	SettlementLocation = {527, 139}, -- Bari
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Aquitaine", {
	World = "earth",
	CulturalNames = {
		"latin", "Aquitania",
	},
	FactionCulturalNames = {
		"french", "france", "Aquitaine"
	},
--	SettlementLocation = {484, 131}, -- Toulouse
	Claims = {
		"gaul", "arverni-tribe"
--		"french", "france"
	},
	HistoricalOwners = {
		-- The Suebic king Ariovistus enters Gaul at the request of the Arverni and the Sequani to fight the Aedui in 71 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
		-- The Arverni inhabited Aquitania; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		-71, "gaul", "arverni-tribe",
		-50, "latin", "rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		412, "goth", "visigoth-tribe", -- The Visigoths migrated to Aquitaine in 412 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		507, "frankish", "francia", -- political situation in 507-534 in Europe; Aquitania conquered by the Franks in 507; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		1560, "french", "france" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-50, "latin", "rome",
		507, "frankish", "francia"
	},
	HistoricalCultures = {
		-71, "celt"
	},
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux existent in Limoges in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chambre des comptes and prévôt des maréchaux existent in Montauban in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain and prévôt des maréchaux existent in Pau in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Aragon", {
	World = "earth",
	CulturalNames = {
		"latin", "Hither Baetica"
	},
	FactionCulturalNames = {
		"portuguese", "portugal", "Aragon",
		"castillian", "spain", "Aragon"
	},
--	SettlementLocation = {477, 137}, -- Zaragoza
	Claims = {
		"basque", "cardialware-tribe"
	},
	HistoricalOwners = {
		-7000, "basque", "cardialware-tribe", -- Cardial Pottery culture existed in the eastern Iberian coast between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-201, "latin", "rome", -- Hither Baetica acquired by Rome in 201 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "goth", "visigothia", -- Kingdom of the Visigoths; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "castillian", "spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-7000, "basque" -- Cardial Pottery culture existed in the eastern Iberian coast between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
	},
	HistoricalClaims = {
		-201, "latin", "rome"
	},
	HistoricalModifiers = {
		1354, "upgrade-university", true, -- Major university founded in Huesca in 1354; Source: "The Cambridge Modern History Atlas", 1912, p. 9, Atlas de História Mundial, 2001, p. 144; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		1483, "upgrade-university", true, -- University founded in Palma in 1483; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1599, "upgrade-university", true, -- Minor university founded in Vich in 1599; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
--		1707, "upgrade-university", false -- Minor university in Vich abolished in 1707; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineProvince("Argolis", {
	World = "earth",
	CulturalNames = {
		"greek", "Argolis"
	},
--	SettlementLocation = {544, 148}, -- Argos
	Claims = {
		"greek", "argos",
		"greek", "mycenae"
	},
	HistoricalSettlementBuildings = {
		-1700, "unit-teuton-stronghold", true, -- Mycenaean fortifications present in Argos, Tirinto, Dendra and Kastro between 1700 and 1200 BC, as well as in Araxos (in the Achaean coast) and in Kolonna (in the isle of Aegina); Source: "Atlas de História Mundial", 2001, p. 67.
		-1190, "unit-teuton-stronghold", false -- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Astrakhan", {
	World = "earth",
	CulturalNames = {
		"germanic", "Ansulanda" -- rendering of "Asaland" in Proto-Germanic, as in the Ynglinga saga's story Asaland is the region in "Asia" in which Odin's people (here understood as the Indo-Europeans who went on to settle Scandinavia and become speakers of Proto-Germanic) used to live until they migrated to Scandinavia; alternatively called "Asaheim"; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
	},
--	SettlementLocation = {618, 124}, -- Astrakhan
	Claims = {
		"germanic", "asa-tribe",
		"persian", "aorsi-tribe",
		"persian", "sarmatian-tribe"
	},
	HistoricalOwners = {
		-3000, "germanic", "asa-tribe",
		-2800, "", "", -- Proto-Indo-Europeans who would give origin to the Germanic peoples concluded their migration to Scandinavia at this date
		-336, "persian", "sarmatian-tribe", -- Macedonian Empire (and environs) in 336-323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		-264, "persian", "aorsi-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "persian", "sarmatian-tribe", -- The area was inhabited by the Sarmatae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1557, "slav", "muscovy", -- Astrakhan acquired by Muscovy in 1557 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-336, "persian",
	},
	Regions = {"eurasia", "europe"}
})

DefineProvince("Asturias", {
	World = "earth",
	FactionCulturalNames = {
		"castillian", "spain", "Asturias"
	},
--	SettlementLocation = {463, 132}, -- Oviedo
	Claims = {
		"gaul", "cantabri-tribe"
	},
	HistoricalOwners = {
		-264, "gaul", "cantabri-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		17, "latin", "rome", -- Asturias acquired by Rome in 17 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "castillian", "spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "celt"
	},
	HistoricalClaims = {
		17, "latin", "rome"
	},
	HistoricalModifiers = {
		-- Pottery existent in the Cantabrian Coast in c. 4900 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 159.
		-- Domesticated animals existent in the Cantabrian Coast in c. 4200 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 159.
		-- First sure evidence of farming in the Cantabrian coast in c. 4150 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 160.
		1580, "upgrade-university", true, -- University founded in Oviedo in 1580; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
		1608, "upgrade-university", false -- University abolished in Oviedo in 1608; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineProvince("Attica", {
	World = "earth",
	CulturalNames = {
		"greek", "Attica"
	},
	Claims = {
		"greek", "athens"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Augsburg", {
	World = "earth",
	CulturalNames = {
		"latin", "Augusta Vindelicorum",
		"teuton", "Augsburg"
	},
--	SettlementLocation = {510, 118}, -- Augsburg
	Claims = {
		"suebi", "alamanni-tribe",
		"teuton", "swabia", -- Part of the Duchy of Swabia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "holy-rome"
	},
	HistoricalModifiers = {
		1549, "upgrade-university", true -- University founded in Dillingen in 1549; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Baden", {
	World = "earth",
	CulturalNames = {
		"latin", "Agri Decumates", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		"teuton", "Baden"
	},
--	SettlementLocation = {503, 117}, -- Rastatt
	Claims = {
		"suebi", "alamanni-tribe",
		"teuton", "baden",
		"teuton", "swabia", -- Part of the Duchy of Swabia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "holy-rome"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in St. Peter during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Reichenau during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1385, "upgrade-university", true, -- University founded in Heidelberg in 1385; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1455, "upgrade-university", true -- University founded in Freiburg in 1455; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Bavaria", {
	World = "earth",
	CulturalNames = {
		"latin", "Raetia",
		"teuton", "Bavaria"
	},
	FactionCulturalNames = {
		"teuton", "bavaria", "Bavaria",
		"teuton", "bavarian-tribe", "Bavaria"
	},
--	SettlementLocation = {514, 116}, -- Regensburg
	Claims = {
		"teuton", "bavarian-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-800, "gaul", "norici-tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "rome", -- Raetia and Vindelicia acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "ostrogoth-tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		526, "teuton", "bavarian-tribe", -- political situation in 526 in Europe; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		537, "frankish", "francia", -- region of Altbayern, Salzburg and Tyrol conquered by the Franks in 537; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		784, "teuton", "bavaria", -- Bavaria revolted against Frankish rule under Tassilo in 784; Source: "Medieval Warfare V.2", 2013, p. 8.
		787, "frankish", "francia", -- Bavarian revolt against Frankish rule quashed by Charles the Great three years after 784; Source: "Medieval Warfare V.2", 2013, p. 8.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "bavaria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "rome",
		537, "frankish", "francia",
		919, "teuton", "bavaria" -- Political situation in Central Europe in 919-1125; Duchy of Bavaria; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
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
		1459, "upgrade-university", true -- University founded in Ingolstadt in 1459; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Beira", {
	World = "earth",
	FactionCulturalNames = {
		"portuguese", "portugal", "Beira"
	},
--	SettlementLocation = {453, 145}, -- Lisbon
	Claims = {
--		"portuguese", "portugal"
	},
	HistoricalOwners = {
		-138, "latin", "rome", -- Lusitania acquired by Rome in 138 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		450, "suebi", "suebi-tribe", -- The Suebi were in possession of most of modern Portugal (pretty much everything up to the Tagus river) by around 450 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 48.
		486, "goth", "visigothia", -- Portugal up to the Tagus river was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "portuguese", "portugal" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-138, "latin", "rome"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineProvince("Belgium", {
	World = "earth",
	CulturalNames = {
		"latin", "Belgica"
	},
	FactionCulturalNames = {
		"frankish", "francia", "Austrasia",
		"frankish", "frank-tribe", "Austrasia"
	},
--	SettlementLocation = {492, 111}, -- Brussels
	Claims = {
		"frankish", "austrasia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
	},
	HistoricalOwners = {
		-50, "latin", "rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		450, "frankish", "frank-tribe", -- Frankish territory in 450 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 48.
		481, "frankish", "francia", -- Frankish territory in 481 AD, and the Franks had already established their kingdom; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		919, "teuton", "holy-rome", -- Duchy of Lower Lorraine; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "castillian", "spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-50, "latin", "rome",
		481, "frankish", "francia"
	},
	HistoricalCultures = {
		-71, "celt"
	},
	HistoricalModifiers = {
		1425, "upgrade-university", true -- University founded in Louvain in 1425; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Berry", {
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "Berry" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
--	SettlementLocation = {487, 122}, -- Bourges
	Claims = {
--		"french", "france"
	},
	HistoricalOwners = {
		-50, "latin", "rome" -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalClaims = {
		-50, "latin", "rome"
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Bessarabia", {
	World = "earth",
--	SettlementLocation = {562, 122}, -- Kishinev
	Claims = {
		"goth", "bastarnae-tribe"
--		"romanian", "moldavia"
	},
	HistoricalOwners = {
		-336, "persian", "scythian-tribe", -- Macedonian Empire and environs in 336-323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		-264, "goth", "bastarnae-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "goth", "bastarnae-tribe", -- The area was inhabited by the Bastarnae (and the Costoboci to the north) in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		200, "goth", "visigoth-tribe", -- The western goths had migrated to the area of modern Romania / ancient Dacia in about 200 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		397, "", "", -- The Visigoths migrated to the Western Balkans in 397 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		1560, "romanian", "moldavia" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-336, "persian", "scythian-tribe"
	},
	HistoricalCultures = {
		-336, "persian",
		-264, "goth"
	},
	Regions = {"eurasia", "europe"}
})

DefineProvince("Boeotia", {
	World = "earth",
	CulturalNames = {
		"greek", "Boeotia"
	},
--	SettlementLocation = {546, 146}, -- Thebes
	Claims = {
		"greek", "thebes"
	},
	HistoricalSettlementBuildings = {
		-1700, "unit-teuton-stronghold", true, -- Mycenaean fortifications present in Eutresis, Kastri, Aghia Marina, Gla, Aghios Ioannis, Chantsa, Stroviki, Pyrgos and Panopeus between 1700 and 1200 BC, as well as in Aghia Irini (in the island of Ceos); Source: "Atlas de História Mundial", 2001, p. 67.
		-1190, "unit-teuton-stronghold", false -- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Bohemia", {
	World = "earth",
	CulturalNames = {
		"celt", "Boiohaemum",
		"gaul", "Boiohaemum",
		"germanic", "Boiohaemum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"latin", "Boiohaemum",
		"slav", "Bohemia",
		"teuton", "Bohemia" -- Böhmen
	},
	FactionCulturalNames = {
		"suebi", "marcomanni-tribe", "Marcomannia",
		"suebi", "suebi-tribe", "Marcomannia"
	},
--	SettlementLocation = {520, 113}, -- Prague
	Claims = {
		"basque", "linearware-tribe",
		"gaul", "boii-tribe",
		"slav", "bohemia",
		"suebi", "marcomanni-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-5500, "basque", "linearware-tribe", -- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-400, "gaul", "boii-tribe", -- Boii attested c. 400 BC; Source: John T. Koch, "Celtic Culture: Aberdeen breviary-celticism", 2006, pp. 223-224.
		-9, "suebi", "marcomanni-tribe", -- Marbod, king of the Suebic tribe of the Marcomanni, conquers Bohemia
		526, "teuton", "bavarian-tribe", -- political situation in 526 in Europe; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		788, "slav", "bohemia", -- (Slavic) Bohemians inhabited Bohemia in 788; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 611.
		919, "teuton", "holy-rome", -- Duchy of Bohemia; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "austria", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-5500, "basque",
		-400, "celt",
		-9, "teuton",
		788, "slav" -- (Slavic) Bohemians inhabited Bohemia in 788; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 611.
	},
	HistoricalSettlementBuildings = {
		993, "unit-teuton-temple", true, -- a Benedictine monastery was founded in Břevnov (near Prague) in 993; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 615.
		998, "unit-teuton-temple", true, -- the Benedictine monastery of St. John on the Ostrov was founded on an island in the Moldau river near Davle (south of Prague) in 999; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 615.
		1115, "unit-teuton-temple", true, -- the Benedictine abbey of Kladruby (in German: Kladrau) was founded to the west of Pilsen in 1115; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 622.
		1140, "unit-teuton-temple", true, -- the Premonstratensian house (monastery?) of "Mount Zion" was founded in Strahov (near Prague Castle) in 1140; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 623.
		1213, "unit-teuton-temple", true, -- a Premonstratensian monastery was founded in Chotěšov (German: Choteschau) (southwest of Pilsen) in 1213; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 627.
		1213, "unit-teuton-temple", true -- a Benedictine priory was founded in Politz (in Bohemia, near the Silesian Glatz) in 1213; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 627.
	},
	HistoricalModifiers = {
		-- Olomouc-Prague State Railroad Company opened for business in 1845; Source: Chad Bryant, "Into an Uncertain Future: Railroads and Vormärz Liberalism in Brno, Vienna, and Prague", 2009, p. 187.
	},
	Regions = {"cisleithania", "czechoslovakia", "europe", "west-and-central-europe"}
})

DefineProvince("Bornholm", {
	World = "earth",
	CulturalNames = {
		"goth", "Burgundarholm",
		"norse", "Burgundarholm" -- Old Norse name of the island; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 89.
	},
--	SettlementLocation = {522, 99},
	Claims = {
		"goth", "burgundian-tribe"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Bosnia", {
	World = "earth",
--	SettlementLocation = {532, 131}, -- Sarajevo
	Regions = {"europe", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Brandenburg", {
	World = "earth",
	CulturalNames = {
		"teuton", "Brandenburg"
	},
	FactionCulturalNames = {
		"suebi", "semnone-tribe", "Semnonia",
		"suebi", "suebi-tribe", "Semnonia"
	},
--	SettlementLocation = {518, 106}, -- Berlin
	Claims = {
		"suebi", "semnone-tribe",
		"suebi", "suebi-tribe",
		"teuton", "brandenburg"
	},
	HistoricalOwners = {
		-264, "suebi", "semnone-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		-71, "suebi", "suebi-tribe", -- Suebi attested in 71 BC; since the Suebi were in existence then, they were also probably already settled where Tacitus had described the Suebic Semnones as living in, since the other territories settled by Suebic tribes (Bohemia and Moravia) were only conquered later on
		161, "suebi", "semnone-tribe", -- The area was inhabited by the Semnones in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "teuton", "brandenburg" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "teuton"
	},
	HistoricalModifiers = {
		1502, "upgrade-university", true -- University founded in Wittenberg in 1502; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Bremen", {
	World = "earth",
	CulturalNames = {
		"teuton", "Bremen"
	},
--	SettlementLocation = {504, 104}, -- Bremen
	Claims = {
		"basque", "funnelbeaker-tribe",
		"teuton", "chauci-tribe",
		"teuton", "bremen",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-3950, "basque", "funnelbeaker-tribe", -- Funnel Beaker culture existed in parts of Northern Europe between 7000 and 2000 BC; since the other source gives them as being present in Zealand in 3950 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "teuton", "chauci-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "teuton", "lombard-tribe", -- The area was inhabited by the Langobardi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1648, "norse", "sweden" -- Political situation in Central Europe in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalClaims = {
		919, "teuton", "saxony" -- Part of the Duchy of Saxony within the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-3950, "basque",
		-264, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Brittany", {
	World = "earth",
	CulturalNames = {
		"celt", "Armorica",
		"latin", "Armorica"
	},
	FactionCulturalNames = {
		"french", "france", "Brittany"
	},
--	SettlementLocation = {475, 119}, -- Rennes
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true, -- Chambre des comptes existent in Nantes in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain, court of admiralty and prévôt des maréchaux existent in Rennes in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Brunswick", {
	World = "earth",
	CulturalNames = {
		"teuton", "Brunswick" -- Braunschweig
	},
--	SettlementLocation = {509, 107}, -- Brunswick
	Claims = {
		"teuton", "cherusci-tribe",
		"teuton", "brunswick",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-264, "teuton", "cherusci-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "teuton", "cherusci-tribe", -- The area was inhabited by the Cherusci in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		919, "teuton", "saxony" -- Part of the Duchy of Saxony within the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-264, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Bukowina", {
	World = "earth",
	CulturalNames = {
		"teuton", "Bukowina"
	},
--	SettlementLocation = {552, 119}, -- Czernowitz / Chernivtsi
	Claims = {
		"slav", "poland",
		"thracian", "costoboci-tribe"
	},
	HistoricalOwners = {
		161, "thracian", "costoboci-tribe", -- The area was inhabited by the Costoboci in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "romanian", "moldavia" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		161, "thracian"
	},
	Regions = {"cisleithania", "eurasia", "europe", "poland"}
})

DefineProvince("Bulgaria", {
	World = "earth",
	CulturalNames = {
		"latin", "Lower Moesia" -- Lower Moesia encompassed most of Bulgaria, but left out large parts of its south, including Sofia, which were part of the Thrace province of Rome; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	},
--	SettlementLocation = {546, 134}, -- Sofia
	Claims = {
		"greek", "thrace",
		"thracian", "odrysae-tribe"
	},
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true, -- Legionary base present in Novae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, "unit-latin-barracks", true -- Legionary base present in Durostorum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"europe", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Burgundy", {
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "Bourgogne"
	},
--	SettlementLocation = {494, 121}, -- Dijon
	Claims = {
		"gaul", "aedui-tribe"
--		"french", "france"
	},
	HistoricalOwners = {
		-- The Suebic king Ariovistus enters Gaul at the request of the Arverni and the Sequani to fight the Aedui in 71 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
		-- The Aedui inhabited modern Bourgogne; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		-71, "gaul", "aedui-tribe",
		-50, "latin", "rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		919, "french", "france" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		-50, "latin", "rome"
	},
	HistoricalCultures = {
		-71, "celt"
	},
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain, chambre des comptes, prévôt des maréchaux and chief court of the salt tax existent in Dijon in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Calabria", {
	World = "earth",
	CulturalNames = {
		"latin", "Brutium" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 30-31.
	},
	FactionCulturalNames = {
		"italian", "italy", "Calabria"
	},
--	SettlementLocation = {526, 145}, -- Catanzaro
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Carinthia", {
	World = "earth",
	CulturalNames = {
		"teuton", "Carinthia"
	},
--	SettlementLocation = {520, 123}, -- Klagenfurt
	Claims = {
		"gaul", "norici-tribe",
		"teuton", "austria",
		"teuton", "carinthia",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-800, "gaul", "norici-tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "rome", -- Noricum acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "ostrogoth-tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "holy-rome", -- Duchy of Carinthia within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "austria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "rome"
	},
	HistoricalCultures = {
		-800, "celt"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Carniola", {
	World = "earth",
	CulturalNames = {
		"teuton", "Krain"
	},
--	SettlementLocation = {521, 125}, -- Laibach/Ljubljana
	Regions = {"cisleithania", "europe", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Castille", {
	World = "earth",
	CulturalNames = {
		"latin", "Hispania Tarraconensis"
	},
	FactionCulturalNames = {
		"portuguese", "portugal", "Castille",
		"castillian", "spain", "Castille"
	},
--	SettlementLocation = {469, 141}, -- Madrid
	HistoricalOwners = {
		-- Interior "mesetas" of Iberia settled by farmers c. 4000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 157.
		-197, "latin", "rome", -- Hispania Tarraconensis and (most of) Farther Baetica acquired by Rome in 197 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "goth", "visigothia", -- Kingdom of the Visigoths; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "castillian", "spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-197, "latin", "rome"
	},
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true -- Legionary base present in Castra Legionis in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalModifiers = {
		1212, "upgrade-university", true, -- University founded in Palencia in 1212; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1230, "upgrade-university", true, -- University founded in Salamanca in 1230; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1346, "upgrade-university", true, -- University founded in Valladolid in 1346; Source: "Atlas de História Mundial", 2001, p. 144.
		1489, "upgrade-university", true, -- Minor university founded in Siguenza in 1489; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		1499, "upgrade-university", true, -- University founded in Alcalá de Henares in 1499; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1542, "upgrade-university", true, -- Minor university founded in Oñate in 1542; Source: "The Cambridge Modern History Atlas", 1912, p. 9; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		1550, "upgrade-university", true, -- Minor university founded in Avila in 1550; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		1550, "upgrade-university", true, -- Minor university founded in Osma in 1550; Source: "The Cambridge Modern History Atlas", 1912, p. 9; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		1553, "upgrade-university", true, -- Minor university founded in Almagro in 1553; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		1605, "upgrade-university", true, -- Minor university founded in Irache in 1605; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
		1628, "upgrade-university", true, -- Major university founded in Pamplona in 1628; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
--		1703, "upgrade-university", false, -- Minor university abolished in Siguenza in 1703; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
--		1725, "upgrade-university", false, -- Major university abolished in Pamplona in 1725; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
--		1787, "upgrade-university", false, -- Minor university abolished in Avila in 1787; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
--		1787, "upgrade-university", false, -- Minor university abolished in Almagro in 1787; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
--		1807, "upgrade-university", false, -- Minor university abolished in Osma in 1807; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
--		1807, "upgrade-university", false, -- Minor university abolished in Oñate in 1807; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
--		1807, "upgrade-university", false -- Minor university in Irache abolished in 1807; Source: Enrique Martínez Ruiz, Consuelo Maqueda, "Atlas Histórico de España I", 2000, p. 225.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineProvince("Champagne", { -- includes Brie
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "Champagne"
	},
--	SettlementLocation = {491, 118}, -- Troyes
	Claims = {
		"frankish", "neustria", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
--		"french", "france"
	},
	HistoricalOwners = {
		-50, "latin", "rome" -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalClaims = {
		-50, "latin", "rome"
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Connaught", {
	World = "earth",
	CulturalNames = {
		"gael", "Connaught"
	},
	FactionCulturalNames = {
		"english", "england", "Connaught"
	},
--	SettlementLocation = {456, 103}, -- Roscommon
	Claims = {
		"gael", "gangani-tribe"
	},
	HistoricalOwners = {
		-27, "gael", "gangani-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		161, "gael", "scot-tribe" -- The area was inhabited by the Scotti in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalCultures = {
		-27, "celt"
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Corinth", {
	World = "earth",
	CulturalNames = {
		"greek", "Corinth"
	},
--	SettlementLocation = {545, 148}, -- Corinth
	Claims = {
		"greek", "corinth"
	},
	Regions = {"europe", "greece", "west-and-central-europe"},
	HistoricalSettlementBuildings = {
		-1700, "unit-teuton-stronghold", true, -- Mycenaean fortifications present in Korakou and Perdikaria (both in the isthmus of Corinth); Source: "Atlas de História Mundial", 2001, p. 67.
		-1190, "unit-teuton-stronghold", false -- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	}
})

DefineProvince("Cornwall", {
	World = "earth",
	FactionCulturalNames = {
		"english", "england", "Cornwall"
	},
--	SettlementLocation = {465, 113}, -- Falmouth
	Claims = {
		"briton", "dumnonii-tribe",
		"english", "england"
	},
	HistoricalOwners = {
		-27, "briton", "dumnonii-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	HistoricalCultures = {
		-27, "celt"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Corsica", {
	World = "earth",
	CulturalNames = {
		"latin", "Corsica"
	},
--	SettlementLocation = {506, 136},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Courland", {
	World = "earth",
	CulturalNames = {
		"teuton", "Kurland"
	},
--	SettlementLocation = {547, 95},
	Claims = {
		"uralic", "uralic-tribe"
	},
	HistoricalOwners = {
		-9000, "uralic", "uralic-tribe", -- The ancestors of Finno-Ugric speaking peoples settled the eastern Baltic (apparently meaning Estonia and Latvia) c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
		1560, "teuton", "prussia", -- Teutonic Order; Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1561, "norse", "sweden" -- Estonia acquired by Sweden in 1561; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119, 120.
	},
	HistoricalCultures = {
		-9000, "uralic" -- The ancestors of Finno-Ugric speaking peoples settled the eastern Baltic (apparently meaning Estonia and Latvia) c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Crete", {
	World = "earth",
	CulturalNames = {
		"greek", "Crete"
	},
--	SettlementLocation = {551, 155}, -- Knossos
	Claims = {
		"minoan", "minoan-tribe",
		"minoan", "crete",
		"greek", "krete"
	},
	HistoricalOwners = {
		-3000, "minoan", "minoan-tribe" -- Minoans inhabited the island of Crete in 3000 BC; Source: Rodney Castleden, "Minoans", 2002, p. 4.
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Crimea", {
	World = "earth",
	CulturalNames = {
		"greek", "Tauric Chersonese",
		"latin", "Tauric Chersonese" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
--	SettlementLocation = {576, 128}, -- Simferopol
	Claims = {
		"greek", "cimmerian-bosphorus"
--		"turkish", "crimea"
	},
	HistoricalOwners = {
		-264, "greek", "cimmerian-bosphorus", -- Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "persian", "scythian-tribe", -- The area was inhabited by the Scythae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "turkish", "crimea" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		161, "persian"
	},
	Regions = {"eurasia", "europe"}
})

DefineProvince("Cumbria", {
	World = "earth",
	FactionCulturalNames = {
		"english", "england", "Cumbria"
	},
--	SettlementLocation = {471, 100}, -- Carlisle
	Claims = {
		"briton", "brigantes-tribe",
		"briton", "selgovae-tribe",
		"english", "england"
	},
	HistoricalOwners = {
		-264, "briton", "brigantes-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	HistoricalCultures = {
		-264, "celt",
		1560, "teuton"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Dalmatia", {
	World = "earth",
	CulturalNames = {
		"latin", "Illyricum",
		"teuton", "Dalmatia"
	},
--	SettlementLocation = {523, 130}, -- Zara
	Claims = {
		"illyrian", "illyrian-tribe"
	},
	HistoricalOwners = {
		-750, "illyrian", "illyrian-tribe", -- Eastern Mediterranean between 750 and 625 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-219, "latin", "rome", -- Istria and the Dalmatian coast acquired by Rome in 219 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		397, "goth", "visigoth-tribe", -- The Visigoths migrated to the Western Balkans in 397 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		412, "", "", -- The Visigoths migrated to Aquitaine in 412 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		507, "goth", "ostrogoth-tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		803, "frankish", "francia", -- Charles the Great of Francia acquired Dalmatia in 803/806 AD; Source: "Medieval Warfare V.2", 2013, p. 9.
		1560, "italian", "venice" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-219, "latin", "rome"
	},
	HistoricalCultures = {
		-750, "illyrian"
	},
	Regions = {"europe", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Dauphiny", {
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "Dauphiny" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
--	SettlementLocation = {496, 128}, -- Grenoble
	Claims = {
--		"french", "france"
	},
	HistoricalOwners = {
		-121, "latin", "rome", -- Gallia Narbonensis acquired by Rome in 121 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		534, "frankish", "francia", -- The Burgundian realm, which included Dauphiny, was conquered by the Franks in 534; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		1560, "french", "france" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-121, "latin", "rome",
		534, "frankish", "francia"
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Devon", {
	World = "earth",
	FactionCulturalNames = {
		"anglo-saxon", "angle-tribe", "Devon",
		"english", "england", "Devon"
	},
--	SettlementLocation = {470, 111}, -- Exeter
	Claims = {
		"basque", "bellbeaker-tribe",
		"briton", "dumnonii-tribe",
		"english", "england"
	},
	HistoricalOwners = {
		-7000, "basque", "bellbeaker-tribe", -- Bell Beaker culture existed in Normandy and the southwestern parts of Great Britain between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-27, "briton", "dumnonii-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	HistoricalCultures = {
		-7000, "basque",
		-27, "celt"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Dobruja", {
	World = "earth",
	CulturalNames = {
		"latin", "Lesser Scythia"
	},
--	SettlementLocation = {560, 130}, -- Constanta
	Claims = {
		"greek", "thrace",
		"thracian", "getae-tribe"
	},
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true -- Legionary base present in Troesmis in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"europe", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Don", {
	World = "earth",
	CulturalNames = {
		"greek", "Tanais"
	},
	FactionCulturalNames = {
		"celt", "vana-tribe", "Vanaland" -- alternatively called "Vanaheim"; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
	},
--	SettlementLocation = {592, 121}, -- Rostov-on-Don
	Claims = {
		"celt", "vana-tribe"
	},
	HistoricalOwners = {
		161, "persian", "sarmatian-tribe", -- The area was inhabited by the Sarmatae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "turkish", "crimea" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		161, "persian"
	},
	Regions = {"eurasia", "europe"}
})

DefineProvince("Douro", {
	World = "earth",
	FactionCulturalNames = {
		"portuguese", "portugal", "Douro"
	},
--	SettlementLocation = {456, 137}, -- Braga
	Claims = {
--		"portuguese", "portugal"
	},
	HistoricalOwners = {
		-138, "latin", "rome", -- Lusitania acquired by Rome in 138 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		411, "suebi", "suebi-tribe", -- The Suebi conquered the area between the Minho and the Douro in Portugal in 411 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		486, "suebi", "galicia", -- Suebic kingdom of Galicia; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "portuguese", "portugal" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-138, "latin", "rome"
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineProvince("Drenthe", {
	World = "earth",
	FactionCulturalNames = {
		"teuton", "netherlands", "Drenthe" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	},
--	SettlementLocation = {498, 105}, -- Assen
	Claims = {
		"basque", "funnelbeaker-tribe",
		"frankish", "ampsivarii-tribe",
		"teuton", "drenthe",
		"teuton", "netherlands",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-3950, "basque", "funnelbeaker-tribe", -- Funnel Beaker culture existed in parts of Northern Europe between 7000 and 2000 BC; since the other source gives them as being present in Zealand in 3950 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-27, "frankish", "ampsivarii-tribe", -- Political situation in Europe (presumably) at the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		161, "teuton", "frisian-tribe", -- Drenthe owned by the Frisii in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		481, "frankish", "francia", -- Frankish territory in 481 AD, and the Franks had already established their kingdom; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "castillian", "spain", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1648, "teuton", "netherlands" -- Political situation in Central Europe in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalClaims = {
		481, "frankish", "francia"
	},
	HistoricalCultures = {
		-3950, "basque",
		-27, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Durham", {
	World = "earth",
	FactionCulturalNames = {
		"english", "england", "Durham"
	},
--	SettlementLocation = {475, 100}, -- Durham
	Claims = {
		"english", "england",
		"anglo-saxon", "northumbria"
	},
	HistoricalOwners = {
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "anglo-saxon", "angle-tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		654, "anglo-saxon", "northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		526, "teuton"
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Dyfed", {
	World = "earth",
	CulturalNames = {
		"welsh", "Dyfed",
		"latin", "Demetia" -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	},
--	SettlementLocation = {466, 108}, -- Arberth
	Claims = {
		"basque", "bellbeaker-tribe",
		"briton", "demetae-tribe", -- The main settlement of the Demetae was Moridunum (modern Carmarthen); Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"welsh", "dyfed"
	},
	HistoricalOwners = {
		-7000, "basque", "bellbeaker-tribe", -- Bell Beaker culture existed in Normandy and the southwestern parts of Great Britain between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-7000, "basque"
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("East Anglia", {
	World = "earth",
	FactionCulturalNames = {
		"english", "england", "East Anglia"
	},
--	SettlementLocation = {484, 106}, -- Yarmouth
	Claims = {
		"briton", "iceni-tribe",
		"english", "england"
	},
	HistoricalOwners = {
		-27, "briton", "iceni-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "anglo-saxon", "angle-tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		616, "anglo-saxon", "east-anglia", -- we have notice that Rædwald was king of East Anglia then; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-79.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "rome",
		616, "anglo-saxon", "east-anglia"
	},
	HistoricalCultures = {
		-27, "celt",
		526, "teuton"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("East Friesland", { -- also includes Osnabrück
	World = "earth",
	CulturalNames = {
		"teuton", "East Friesland"
	},
	FactionCulturalNames = {
		"teuton", "frisian-tribe", "East Friesland",
		"teuton", "netherlands", "East Friesland"
	},
--	SettlementLocation = {500, 104}, -- Emden
	Claims = {
		"basque", "funnelbeaker-tribe",
		"teuton", "frisian-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-3950, "basque", "funnelbeaker-tribe", -- Funnel Beaker culture existed in parts of Northern Europe between 7000 and 2000 BC; since the other source gives them as being present in Zealand in 3950 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "teuton", "frisian-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "teuton", "chauci-tribe", -- The area was inhabited by the Chauci in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-3950, "basque",
		-264, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Epirus", {
	World = "earth",
	CulturalNames = {
		"greek", "Epirus"
	},
--	SettlementLocation = {538, 144}, -- Nicopolis
	Claims = {
		"greek", "chaoni-tribe",
		"greek", "epirus"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Essex", {
	World = "earth",
	FactionCulturalNames = {
		"anglo-saxon", "angle-tribe", "Essex",
		"english", "england", "Essex"
	},
--	SettlementLocation = {480, 109}, -- London
	Claims = {
		"briton", "trinobantes-tribe",
		"anglo-saxon", "gumeninga-tribe", -- the Gumeningas were present in Harrow on the Hill (which was in Old English called "Gumeninga hearh"); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
		"english", "england"
	},
	HistoricalOwners = {
		-27, "briton", "trinobantes-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "saxon-tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	HistoricalCultures = {
		-27, "celt",
		526, "teuton"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Estonia", {
	World = "earth",
	CulturalNames = {
		"teuton", "Estland"
	},
	Claims = {
		"uralic", "uralic-tribe"
	},
	HistoricalOwners = {
		-9000, "uralic", "uralic-tribe", -- The ancestors of Finno-Ugric speaking peoples settled the eastern Baltic (apparently meaning Estonia and Latvia) c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
		1560, "teuton", "prussia", -- Teutonic Order; Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1561, "norse", "sweden" -- Estonia acquired by Sweden in 1561; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119, 120.
	},
	HistoricalCultures = {
		-9000, "uralic" -- The ancestors of Finno-Ugric speaking peoples settled the eastern Baltic (apparently meaning Estonia and Latvia) c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Euboea", { -- to make this island appear separated from Attica, it was necessary to "bump" it one tile to the north and one tile to the east into the sea
	World = "earth",
	CulturalNames = {
		"greek", "Euboea"
	},
--	SettlementLocation = {548, 145}, -- Chalcis
	Claims = {
		"minoan", "impressedware-tribe"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Farther Pomerania", {
	World = "earth",
	CulturalNames = {
		"teuton", "Farther Pomerania" -- Hinterpommern
	},
--	SettlementLocation = {523, 102}, -- Kolberg
	Claims = {
		"goth", "rugian-tribe",
		"goth", "turcilingian-tribe"
	},
	HistoricalOwners = {
		-264, "goth", "turcilingian-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "goth", "rugian-tribe", -- The area was inhabited by the Rugii in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1648, "teuton", "brandenburg" -- Farther Pomerania was acquired by Brandenburg in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 6.
	},
	HistoricalCultures = {
		-264, "goth"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Finland", {
	World = "earth",
	CulturalNames = {
		"finnish", "Finland",
		"norse", "Finland"
	},
	Claims = {
		"finnish", "fenni-tribe",
		"uralic", "uralic-tribe"
	},
	HistoricalOwners = {
		-7500, "uralic", "uralic-tribe",
		-264, "finnish", "fenni-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "norse", "sweden" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-7500, "uralic", -- The ancestors of Finno-Ugric speaking peoples (or their descendants) settled the coast of the Bothnian Gulf in Finland 7500-6400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
		-264, "finnish"
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("France", {
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "France",
		"frankish", "francia", "Neustria", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 53-55.
		"frankish", "frank-tribe", "Neustria"
	},
--	SettlementLocation = {486, 117}, -- Paris
	Claims = {
		"frankish", "neustria", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
--		"french", "france"
	},
	HistoricalOwners = {
		-50, "latin", "rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "frankish", "francia", -- The Frankish Merovingian king Clovis conquers Syagrius' realm, the last Roman territory in Gaul in 486; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "french", "france" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		-50, "latin", "rome",
		486, "frankish", "francia"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in St. Denis during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1250, "upgrade-university", true, -- University existent in Angers in 1250; Source: "Atlas de História Mundial", 2001, p. 144.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain, cour des aides, cambre des comptes, court of admiralty, cour des monnaies, prévôt des maréchaux and chief court of the salt tax existent in Paris in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux and chief court of the salt tax existent in Soissons in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chambre des comptes existent in Nevers in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux and chief court of the salt tax existent in Angers in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chief court of the salt tax existent in Laval in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chief court of the salt tax existent in Le Mans in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true -- Prévôt des maréchaux and chief court of the salt tax existent in Orléans in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Franche Comte", {
	World = "earth",
	CulturalNames = {
		"celt", "Maxima Sequanorum",
		"latin", "Maxima Sequanorum" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	FactionCulturalNames = {
		"french", "france", "Franche Comté"
	},
--	SettlementLocation = {497, 121}, -- Besançon
	Claims = {
		"gaul", "sequani-tribe"
--		"french", "france"
	},
	HistoricalOwners = {
		-- The Suebic king Ariovistus enters Gaul at the request of the Arverni and the Sequani to fight the Aedui in 71 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
		-- The Sequani inhabited the Franche-Comté; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		-71, "gaul", "sequani-tribe",
		-50, "latin", "rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		451, "goth", "burgundy", -- Burgundians fought on both the Roman and Hunnic sides in the Battle of the Catalaunian Fields in (June) 451 AD; with the Roman victory, the Burgundians under Gundioc were granted more land; Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 94-95.
		534, "frankish", "francia", -- The Burgundian realm, which included the Franche Comté, Burgundy, Savoy and most of Switzerland, was conquered by the Franks in 534; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		1560, "castillian", "spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-50, "latin", "rome",
		451, "goth", "burgundy",
		534, "frankish", "francia"
	},
	HistoricalCultures = {
		-71, "celt"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Luxeuil during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1422, "upgrade-university", true, -- University founded in Dôle in 1422; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain and prévôt des maréchaux existent in Besançon in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Franconia", {
	World = "earth",
	CulturalNames = {
		"teuton", "Franconia"
	},
	FactionCulturalNames = {
		"frankish", "frank-tribe", "Franconia",
		"teuton", "netherlands", "Franconia"
	},
--	SettlementLocation = {508, 114}, -- Würzburg
	Claims = {
		"basque", "linearware-tribe",
		"gaul", "turone-tribe",
		"suebi", "hermunduri-tribe",
		"suebi", "thuringian-tribe",
		"teuton", "franconia", -- Part of the Duchy of Franconia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-5500, "basque", "linearware-tribe", -- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "suebi", "hermunduri-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		-27, "gaul", "turone-tribe", -- Political situation in Europe (presumably) at the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		161, "suebi", "hermunduri-tribe", -- The area was inhabited by the Hermunduri in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		507, "suebi", "thuringian-tribe", -- Political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		531, "frankish", "francia", -- Conquest of the Thuringian lands by Francia in 531 AD; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "holy-rome" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		531, "frankish", "francia"
	},
	HistoricalCultures = {
		-5500, "basque",
		-264, "teuton",
		-27, "celt",
		161, "teuton"
	},
	HistoricalModifiers = {
		1402, "upgrade-university", true -- University founded in Wurzburg in 1402; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Friesland", {
	World = "earth",
	CulturalNames = {
		"teuton", "Friesland" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	},
	FactionCulturalNames = {
		"teuton", "frisian-tribe", "Frisia",
		"teuton", "netherlands", "Friesland" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	},
--	SettlementLocation = {496, 104}, -- Leeuwarden
	Claims = {
		"basque", "funnelbeaker-tribe",
		"teuton", "frisian-tribe",
		"teuton", "friesland",
		"teuton", "netherlands",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-3950, "basque", "funnelbeaker-tribe", -- Funnel Beaker culture existed in parts of Northern Europe between 7000 and 2000 BC; since the other source gives them as being present in Zealand in 3950 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "teuton", "frisian-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "teuton", "frisian-tribe", -- Friesland owned by the Frisii in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		734, "frankish", "francia", -- Franks conquered Holland and Friesland in 734 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "castillian", "spain", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1648, "teuton", "netherlands" -- Political situation in Central Europe in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalClaims = {
		734, "frankish", "francia"
	},
	HistoricalCultures = {
		-3950, "basque",
		-264, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Galicia", {
	World = "earth",
	CulturalNames = {
		"suebi", "Galicia"
	},
--	SettlementLocation = {547, 114}, -- Lvov / Lemberg
	Claims = {
		"goth", "bastarnae-tribe",
		"goth", "gepidae-tribe",
		"slav", "poland",
		"suebi", "buri-tribe"
	},
	HistoricalOwners = {
		-264, "goth", "bastarnae-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "suebi", "buri-tribe", -- The area was inhabited by the Buri in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "slav", "poland" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-264, "goth",
		161, "teuton"
	},
	Regions = {"cisleithania", "europe", "poland", "west-and-central-europe"}
})

DefineProvince("Gallaecia", {
	World = "earth",
	CulturalNames = {
		"latin", "Gallaecia"
	},
	FactionCulturalNames = {
		"suebi", "galicia", "Galicia",
		"portuguese", "portugal", "Galicia",
		"castillian", "spain", "Galicia"
	},
--	SettlementLocation = {456, 132}, -- Corunna
	Claims = {
		"suebi", "galicia"
	},
	HistoricalOwners = {
		-17, "latin", "rome", -- Gallaecia and Asturias acquired by Rome in 17 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		411, "suebi", "suebi-tribe", -- The Suebi conquered Gallaecia in 411 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		486, "suebi", "galicia", -- Suebi kingdom of Galicia; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "castillian", "spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-17, "latin", "rome"
	},
	HistoricalModifiers = {
		1532, "upgrade-university", true -- University founded in Santiago de Compostela in 1532; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "iberia", "west-and-central-europe"}
})

DefineProvince("Galloway", {
	World = "earth",
	FactionCulturalNames = {
		"english", "england", "Galloway"
	},
--	SettlementLocation = {469, 99}, -- Dumfries
	Claims = {
		"briton", "sovantae-tribe",
		"english", "scotland"
	},
	HistoricalOwners = {
		-27, "briton", "sovantae-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		80, "latin", "rome", -- The area between the Wall of Antoninus (or Severus) and Hadrian's Wall was acquired by Rome in 80 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "briton", "selgovae-tribe", -- The area was inhabited by the Selgovae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "english", "scotland" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		80, "latin", "rome"
	},
	HistoricalCultures = {
		-27, "celt"
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Gotaland", {
	World = "earth",
	CulturalNames = {
		"goth", "Gothland",
		"norse", "Gotaland"
	},
--	SettlementLocation = {513, 91}, -- Gothenburg
	Claims = {
		"goth", "goth-tribe",
		"norse", "geat-tribe"
	},
	HistoricalOwners = {
		-2800, "germanic", "asa-tribe", -- in the Ynglinga saga, "Odin's people", the Asa, settle Scandinavia in a manner not too dissimilar from what archaeological findings tell us of Indo-European settlement in the region; thus the name "Asa Tribe" is used here to denote the Indo-European-speaking peoples who settled in Scandinavia, and were the precursors of the Germanic peoples 
		-2770, "germanic", "yngling-tribe", -- estimated date
		-325, "goth", "goth-tribe", -- Pytheas sets out on an exploration voyage in 325 BC; Pliny (in his Natural History) gives Pytheas as an authority for the existence of the Goths; Source: Carl Waldman and Catherine Mason, "Encyclopedia of European Peoples", 2006, p. 350; Source: Pliny the Elder, "The Natural History", 37.11; the Goths's earliest known homeland was Götaland; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		161, "norse", "swede-tribe", -- The area was inhabited by the Suiones in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "norse", "sweden" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-2800, "germanic", "asa-tribe"
	},
	HistoricalCultures = {
		-2800, "germanic",
		-325, "goth",
		161, "norse"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Gotland", {
	World = "earth",
	CulturalNames = {
		"goth", "Gotland"
	},
--	SettlementLocation = {532, 92},
	HistoricalOwners = {
		-325, "goth", "goth-tribe", -- maybe should be later?
		200, "", "", -- Goths migrated south about 200 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		1560, "norse", "denmark" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-325, "goth",
		1560, "norse"
	},
	HistoricalClaims = {
		-325, "goth", "goth-tribe"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Gwynedd", { -- also includes Clwyd
	World = "earth",
	CulturalNames = {
		"welsh", "Gwynedd"
	},
--	SettlementLocation = {467, 105}, -- Caernafon
	Claims = {
		"basque", "bellbeaker-tribe",
		"briton", "ordovices-tribe",
		"welsh", "gwynedd"
	},
	HistoricalOwners = {
		-7000, "basque", "bellbeaker-tribe", -- Bell Beaker culture existed in Normandy and the southwestern parts of Great Britain between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-27, "briton", "ordovices-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-7000, "basque",
		-27, "celt"
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Hanover", {
	World = "earth",
	CulturalNames = {
		"teuton", "Hannover"
	},
--	SettlementLocation = {507, 107}, -- Hanover
	Claims = {
		"teuton", "lombard-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-264, "teuton", "lombard-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "teuton", "lombard-tribe", -- The area was inhabited by the Langobardi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		919, "teuton", "saxony" -- Part of the Duchy of Saxony within the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-264, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Hesse", {
	World = "earth",
	CulturalNames = {
		"teuton", "Hesse" -- Hessen
	},
--	SettlementLocation = {506, 109}, -- Kassel
	Claims = {
		"frankish", "chatti-tribe",
		"frankish", "ubii-tribe",
		"frankish", "austrasia", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		"teuton", "franconia", -- Part of the Duchy of Franconia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "hesse",
		"teuton", "holy-rome" -- Part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalOwners = {
		-55, "frankish", "ubii-tribe", -- The Ubii dwelled north of the Main and bordering on the Rhine in 55 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 227-228.
		161, "frankish", "chatti-tribe", -- The area was inhabited by the Chatti in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1648, "teuton", "hesse" -- Political situation in Central Europe in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalCultures = {
		-55, "teuton"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Hersfeld during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Fulda during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Lorsch during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-stronghold", true -- Fort existent in Büraburg during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1527, "upgrade-university", true, -- University founded in Marburg in 1527; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
		1607, "upgrade-university", true -- University founded in Giessen in 1607; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Highland Scotland", {
	World = "earth",
	CulturalNames = {
		"celt", "Caledonia",
		"latin", "Caledonia"
	},
	FactionCulturalNames = {
		"english", "england", "Highland Scotland",
		"gael", "scot-tribe", "Highland Scotland",
		"english", "scotland", "Highland Scotland"
	},
--	SettlementLocation = {473, 93}, -- Aberdeen
	Claims = {
		"briton", "caledonii-tribe",
		"briton", "pict-tribe",
		"english", "scotland"
	},
	HistoricalOwners = {
		-27, "briton", "caledonii-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		161, "briton", "caledonii-tribe", -- The area was inhabited by the Caledonii in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		395, "briton", "pict-tribe", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		1560, "english", "scotland" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-27, "celt"
	},
	HistoricalModifiers = {
		1413, "upgrade-university", true, -- University founded in St. Andrews in 1413; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1494, "upgrade-university", true -- University founded in Aberdeen in 1494; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Hither Pomerania", {
	World = "earth",
	CulturalNames = {
		"teuton", "Hither Pomerania" -- Vorpommern
	},
--	SettlementLocation = {521, 103}, -- Stettin
	Claims = {
		"basque", "funnelbeaker-tribe",
		"goth", "rugian-tribe",
		"suebi", "semnone-tribe"
	},
	HistoricalOwners = {
		-3950, "basque", "funnelbeaker-tribe", -- Funnel Beaker culture existed in parts of Northern Europe between 7000 and 2000 BC; since the other source gives them as being present in Zealand in 3950 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "goth", "rugian-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "suebi", "semnone-tribe", -- The area was inhabited by the Semnones in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1648, "norse", "sweden" -- Political situation in Central Europe in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalCultures = {
		-3950, "basque",
		-264, "goth",
		161, "teuton"
	},
	HistoricalModifiers = {
		1456, "upgrade-university", true -- University founded in Greifswald in 1456; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Holland", {
	World = "earth",
	CulturalNames = {
		"latin", "Batavia"
	},
	FactionCulturalNames = {
		"frankish", "batavian-tribe", "Batavia",
		"teuton", "netherlands", "Holland"
	},
--	SettlementLocation = {493, 107}, -- Amsterdam
	Claims = {
		"frankish", "batavian-tribe",
		"frankish", "frank-tribe",
		"teuton", "holland",
		"teuton", "netherlands",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-264, "frankish", "batavian-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		150, "frankish", "frank-tribe", -- Franks were the people settled in the Gelderland and in the German Lower Rhine in (presumably) 150 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		450, "", "", -- Franks had left most of the modern Netherlands by 450 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 48.
		526, "teuton", "frisian-tribe", -- Political situation in 526 in Europe; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		734, "frankish", "francia", -- Franks conquered Holland and Friesland in 734 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "castillian", "spain", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1648, "teuton", "netherlands" -- Political situation in Central Europe in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalClaims = {
		734, "frankish", "francia"
	},
	HistoricalCultures = {
		-264, "teuton"
	},
	HistoricalModifiers = {
		1575, "upgrade-university", true -- University founded in Leyden in 1575; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Holstein", {
	World = "earth",
	CulturalNames = {
		"teuton", "Holstein"
	},
--	SettlementLocation = {508, 101}, -- Kiel
	Claims = {
		"basque", "funnelbeaker-tribe",
		"teuton", "saxon-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-3950, "basque", "funnelbeaker-tribe", -- Funnel Beaker culture existed in parts of Northern Europe between 7000 and 2000 BC; since the other source gives them as being present in Zealand in 3950 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "teuton", "saxon-tribe", -- also inhabited by the Teutones; Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "teuton", "saxon-tribe", -- The area was inhabited by the Saxones in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "norse", "denmark" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		919, "teuton", "saxony" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-3950, "basque",
		-264, "teuton"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-stronghold", true -- Fort existent in Esesfeld during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Hordaland", {
	World = "earth",
	CulturalNames = {
		"norse", "Hordaland"
	},
--	SettlementLocation = {495, 84}, -- Bergen
	Claims = {
		"norse", "hordaland",
		"norse", "norway"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Hungary", {
	World = "earth",
	FactionCulturalNames = {
		"magyar", "hungary", "Hungary"
	},
--	SettlementLocation = {535, 120}, -- Pest
	Claims = {
		"magyar", "hungary",
		"persian", "iazyge-tribe"
	},
	HistoricalOwners = {
		-264, "persian", "iazyge-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
--		161, "goth", "vandal-tribe", -- Parts of northern Hungary were inhabited by the Vandali in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, "persian", "iazyge-tribe", -- The area was inhabited by the Iazyges in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		896, "magyar", "magyar-tribe", -- Magyars held the lands between the Danube and the Theiss in 896; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 610.
		919, "magyar", "hungary", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "turkish", "turkey" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "persian",
--		161, "goth"
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Iceland", {
	World = "earth",
--	SettlementLocation = {418, 73}, -- Reykjavik
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Ingria", {
	World = "earth",
	CulturalNames = {
		"norse", "Ingermanland",
		"slav", "Ingria"
	},
--	SettlementLocation = {566, 86}, -- Saint Petersburg
	Claims = {
		"slav", "russia",
		"uralic", "uralic-tribe"
	},
	HistoricalOwners = {
		-9000, "uralic", "uralic-tribe", -- The ancestors of Finno-Ugric speaking peoples settled the Karelian Isthmus c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
		1560, "slav", "muscovy" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-9000, "uralic" -- The ancestors of Finno-Ugric speaking peoples settled the Karelian Isthmus c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
	},
	Regions = {"eurasia", "europe"}
})

DefineProvince("Istria", {
	World = "earth",
	CulturalNames = {
		"latin", "Istria",
		"teuton", "Küstenland"
	},
--	SettlementLocation = {519, 126}, -- Trieste
	Claims = {
		"basque", "castelnovian-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-6500, "basque", "castelnovian-tribe", -- In the Grotta dell'Edera site (near Trieste) a Castelnovian fireplace was found, dated to c. 6500 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 171.
		507, "goth", "ostrogoth-tribe", -- Political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "holy-rome" -- March of Istria within the Duchy of Carinthia; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		919, "teuton", "carinthia" -- March of Istria within the Duchy of Carinthia; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-6500, "basque"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Jutland", {
	World = "earth",
	CulturalNames = {
		"goth", "Reidgothland", -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
		"teuton", "Jutland",
		"norse", "Jutland"
	},
	FactionCulturalNames = {
		"anglo-saxon", "jute-tribe", "Jutland"
	},
--	SettlementLocation = {508, 96}, -- Aarhus
	Claims = {
		"germanic", "skeldung-tribe",
		"norse", "dane-tribe",
		"anglo-saxon", "charude-tribe",
		"anglo-saxon", "jute-tribe",
		"anglo-saxon", "teuton-tribe"
	},
	HistoricalOwners = {
		-5800, "basque", "ertebolle-tribe", -- Coastal Ertebolle Mesolithic sites and shell middens begin being occupied c. 5800 BC; they lived in eastern Jutland (i.e. Ertebolle itself on the Limfjord in northern Jutland, Bjornsholm), the Danish isles (the Karrebaek-Dybso Fjord sites in Zealand - which could sustain c. 250 people), and southern Sweden (Tagerup in a fjord on Scania - this site had a previous Kongemose occupation); Ertebolle people used pottery and did large-quantity fishing via traps or weirs; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 136.
		-- Ringkloster (Late Mesolithic interior site in eastern Jutland, c. 20 km inland and by lake Skanderborg) begins being irregularly occupied at around 5400 BC; wild boars were hunted for their meat; pine martens and otters were hunted for their fur; the site was generally occupied between Fall and early Spring; Ringkloster may have been occupied by Ertebolle foragers, who would pass the remnant of the year at the coast; it may also have been inhabited by a people distinct from the coast-inhabitants; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 135.
		-- Ringkloster (Late Mesolithic interior site in eastern Jutland, c. 20 km inland and by lake Skanderborg) ceases being irregularly occupied at around 3550 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 135.
		-2800, "germanic", "skeldung-tribe", -- in the Ynglinga saga, "Odin's people", the Asa, settle Scandinavia in a manner not too dissimilar from what archaeological findings tell us of Indo-European settlement in the region; thus the name "Asa Tribe" is used here to denote the Indo-European-speaking peoples who settled in Scandinavia, and were the precursors of the Germanic peoples
		-27, "anglo-saxon", "charude-tribe", -- political situation in Europe (presumably) at the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		161, "anglo-saxon", "teuton-tribe", -- The area was inhabited by the Teutones in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "norse", "denmark" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
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
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Kent", {
	World = "earth",
	FactionCulturalNames = {
		"anglo-saxon", "angle-tribe", "Kent",
		"english", "england", "Kent"
	},
--	SettlementLocation = {483, 110}, -- Dover
	Claims = {
		"briton", "cantii-tribe",
		"english", "england"
	},
	HistoricalOwners = {
		-27, "briton", "cantii-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "anglo-saxon", "jute-tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	HistoricalCultures = {
		-27, "celt",
		526, "teuton"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Khersonska", {
	World = "earth",
	CulturalNames = {
		"slav", "Khersons'ka"
	},
--	SettlementLocation = {572, 123}, -- Kherson
	Claims = {
		"persian", "alazone-tribe"
	},
	HistoricalOwners = {
		-264, "persian", "alazone-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "persian", "scythian-tribe", -- The area was inhabited by the Scythae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "turkish", "crimea" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "persian"
	},
	Regions = {"eurasia", "europe"}
})

DefineProvince("Lacedaemonia", {
	World = "earth",
	CulturalNames = {
		"greek", "Lacedaemonia"
	},
--	SettlementLocation = {543, 150}, -- Sparta
	Claims = {
		"greek", "sparta"
	},
	HistoricalSettlementBuildings = {
		-1700, "unit-teuton-stronghold", true, -- Mycenaean fortifications present in Elliniko and Peristeria (both in the western coast of Messenia) between 1700 and 1200 BC; Source: "Atlas de História Mundial", 2001, p. 67.
		-1190, "unit-teuton-stronghold", false -- Mycenaean palaces were abandoned in 1190 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Latium", {
	World = "earth",
	CulturalNames = {
		"latin", "Latium"
	},
--	SettlementLocation = {515, 136}, -- Rome
	Claims = {
		"latin", "latin-tribe",
		"latin", "rome"
	},
	HistoricalOwners = {
		-750, "latin", "latin-tribe", -- Latins present in Latium by 750-625 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-500, "latin", "rome", -- Roman territory in 500 BC; was not actually all of Latium, but only the vicinity of the city of Rome; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		493, "goth", "ostrogoth-tribe" -- Ostrogoths conquered Italy in 493 AD; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 8-9; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
	},
	HistoricalCultures = {
		-750, "latin"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Farfa during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		166, "upgrade-smallpox", true -- a sort of smallpox reached Rome from the east in 166; Source: "Ancient Warfare VII.6", 2013, p. 6.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Latvia", {
	World = "earth",
	CulturalNames = {
		"teuton", "Lettland"
	},
	Claims = {
		"uralic", "uralic-tribe"
	},
	HistoricalOwners = {
		-9000, "uralic", "uralic-tribe", -- The ancestors of Finno-Ugric speaking peoples settled the eastern Baltic (apparently meaning Estonia and Latvia) c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
		1560, "teuton", "prussia", -- Teutonic Order; Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1629, "norse", "sweden" -- Sweden acquired Livonia in 1629; Source: William R. Shepherd, "Historical Atlas", 1911, p. 120.
	},
	HistoricalCultures = {
		-9000, "uralic" -- The ancestors of Finno-Ugric speaking peoples settled the eastern Baltic (apparently meaning Estonia and Latvia) c. 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 184.
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Leinster", {
	World = "earth",
	CulturalNames = {
		"gael", "Leinster"
	},
	FactionCulturalNames = {
		"english", "england", "Leinster"
	},
--	SettlementLocation = {462, 104}, -- Dublin
	Claims = {
		"gael", "cauci-tribe",
		"gael", "scot-tribe"
	},
	HistoricalOwners = {
		-27, "gael", "cauci-tribe", -- British tribes (apparently) in the time of Augustus; the Brigantes occupied the extreme south of Leinster; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		161, "gael", "hibernii-tribe", -- The area was inhabited by the Hibernii in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		395, "gael", "scot-tribe" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	HistoricalCultures = {
		-27, "celt"
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Liege", { -- also includes Namur and Belgian Limburg
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "Liège"
	},
--	SettlementLocation = {495, 112}, -- Liège
	Claims = {
		"gaul", "caerasi-tribe", -- The Caerasi inhabited the Pagus Caroascus/Carascus in 54 BC (was that actually within the boundaries of this province?); Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
		"gaul", "condrusi-tribe", -- The Condrusi inhabited the strip of land from Namur towards Lüttich called Condruz/le Condros/Pagus Condrosius/Condruscus/Condrust/Condorusts in 54 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
		"gaul", "eburones-tribe",
		"gaul", "poemanni-tribe", -- The Poemanni inhabited the distric of Famen (also known as Pagus Falmenna/Pagus Falmenensis) in 54 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
		"gaul", "segni-tribe", -- The Segni inhabited the location of the modern town of Sinei/Signei in the county of Namur in 54 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
		"frankish", "austrasia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
	},
	HistoricalOwners = {
		-54, "gaul", "eburones-tribe", -- The Eburones lived largely between the Maas and the Rhine in 54 BC (both the modern cities of Tongres and Spa were in their territory), when they entered conflict with the Romans; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 223-226.
		-51, "", "", -- Caesar's Roman forces ravaged the Eburones' land, nigh annihilating them; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 226.
		-50, "latin", "rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		450, "frankish", "frank-tribe", -- Frankish territory in 450 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 48.
		481, "frankish", "francia", -- Frankish territory in 481 AD, and the Franks had already established their kingdom; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		919, "teuton", "holy-rome" -- Duchy of Lower Lorraine; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		-50, "latin", "rome",
		481, "frankish", "francia"
	},
	HistoricalCultures = {
		-54, "celt",
		-51, ""
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Stavelot during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Liguria", {
	World = "earth",
	CulturalNames = {
		"gaul", "Liguria",
		"latin", "Liguria"
	},
--	SettlementLocation = {505, 129}, -- Genoa
	Claims = {
		"gaul", "ligurian-tribe"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Lincoln", {
	World = "earth",
	FactionCulturalNames = {
		"english", "england", "Lincoln"
	},
--	SettlementLocation = {478, 104}, -- Lincoln
	Claims = {
		"briton", "coritani-tribe",
		"english", "england"
	},
	HistoricalOwners = {
		-27, "briton", "coritani-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "anglo-saxon", "angle-tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		654, "anglo-saxon", "middle-anglia", -- Peada was king of the Middle Angles when Penda fell; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		656, "anglo-saxon", "northumbria", -- After the murder of Peada in 656, Middle Anglia became a province of the Kingdom of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		657, "anglo-saxon", "mercia", -- Wulfhere proclaimed Mercian king in 657, ending Northumbrian dominion (apparently from the source not only in Mercia but also in Middle Anglia); Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "rome",
		654, "anglo-saxon", "middle-anglia"
	},
	HistoricalCultures = {
		-27, "celt",
		526, "teuton"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Lithuania", {
	World = "earth",
	CulturalNames = {
		"teuton", "Litauen"
	},
--	SettlementLocation = {552, 100}, -- Vilnius
	Claims = {
		"baltic", "aestui-tribe"
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Lombardy", {
	World = "earth",
	CulturalNames = {
		"gaul", "Transpadane Gaul",
		"latin", "Transpadane Gaul"
	},
--	SettlementLocation = {506, 126}, -- Milan
	Claims = {
		"basque", "castelnovian-tribe"
	},
	HistoricalOwners = {
		-5930, "basque", "castelnovian-tribe", -- a site belonging to the Castelnovian culture in Laghetti del Crestoso (in the Brescian Alps) was dated to 5930-5445 BC and 5849-5592; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 170.
		-- Carbonized hazelnut shells found in the Sopra Fienile Rossino site (in the Brescian Alps), the site being dated to 5765-5528 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 170.
		-191, "latin", "rome", -- Cisalpine Gaul acquired by Rome in 191 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		493, "goth", "ostrogoth-tribe" -- Ostrogoths conquer Italy in 493 AD; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 8-9; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
	},
	HistoricalClaims = {
		-191, "latin", "rome"
	},
	HistoricalCultures = {
		-5930, "basque"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Lorraine", {
	World = "earth",
	CulturalNames = {
		"teuton", "Lothringen"
	},
	FactionCulturalNames = {
		"french", "france", "Lorraine"
	},
--	SettlementLocation = {496, 118}, -- Nancy
	Claims = {
		"teuton", "holy-rome"
	},
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain and prévôt des maréchaux existent in Nancy in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Lothian", { -- includes Borders
	World = "earth",
	CulturalNames = {
		"latin", "Valentia" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	},
	FactionCulturalNames = {
		"english", "england", "Lothian"
	},
--	SettlementLocation = {470, 97}, -- Edinburgh
	Claims = {
		"briton", "otalini-tribe",
		"english", "scotland"
	},
	HistoricalOwners = {
		-27, "briton", "otalini-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		80, "latin", "rome", -- The area between the Wall of Antoninus (or Severus) and Hadrian's Wall was acquired by Rome in 80 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "briton", "selgovae-tribe", -- The area was inhabited by the Selgovae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "english", "scotland" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		80, "latin", "rome"
	},
	HistoricalCultures = {
		-27, "celt"
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Lower Austria", {
	World = "earth",
	CulturalNames = {
		"teuton", "Lower Austria"
	},
--	SettlementLocation = {526, 118}, -- Vienna
	Claims = {
		"basque", "linearware-tribe",
		"gaul", "norici-tribe",
		"teuton", "austria",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-- The people of the Linear Pottery culture arrived in northern Poland and Germany about 5500 BC, possessing knowledge of agriculture; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 139.
		-- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-5500, "basque", "linearware-tribe",
		-800, "gaul", "norici-tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "rome", -- Noricum acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "ostrogoth-tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "holy-rome", -- Bavarian East March; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "austria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "rome",
		919, "teuton", "bavaria", -- Bavarian East March within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-5500, "basque",
		-800, "gaul"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Lower Lusatia", {
	World = "earth",
	CulturalNames = {
		"teuton", "Lower Lusatia"
	},
--	SettlementLocation = {521, 108}, -- Guben
	Claims = {
		"suebi", "suebi-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		161, "suebi", "suebi-tribe", -- The area was inhabited by the Suebi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "austria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		161, "teuton"
	},
	HistoricalModifiers = {
		1506, "upgrade-university", true -- University founded in Frankfort-on-the-Oder in 1506; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Lower Rhine", {
	World = "earth",
--	SettlementLocation = {498, 111}, -- Cologne
	Claims = {
		"frankish", "austrasia", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		"teuton", "holy-rome"
	},
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true, -- Legionary base present in the area in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, "unit-latin-barracks", true, -- Legionary base present (apparently) between the Meuse and Rhine rivers in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Prüm during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Luxemburg", {
	World = "earth",
	CulturalNames = {
		"teuton", "Luxemburg"
	},
	FactionCulturalNames = {
		"french", "france", "Luxembourg"
	},
--	SettlementLocation = {497, 115}, -- Luxemburg
	Claims = {
		"frankish", "austrasia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
	},
	HistoricalOwners = {
		-50, "latin", "rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		450, "frankish", "frank-tribe", -- Frankish territory in 450 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 48.
		481, "frankish", "francia", -- Frankish territory in 481 AD, and the Franks had already established their kingdom; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		919, "teuton", "holy-rome", -- Duchy of Upper Lorraine; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "castillian", "spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-50, "latin", "rome",
		481, "frankish", "francia"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Echternach (in modern Luxembourg) during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Lyonnais", {
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "Lyonnais" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
--	SettlementLocation = {493, 125}, -- Lyons
	Claims = {
--		"french", "france"
	},
	HistoricalOwners = {
		-50, "latin", "rome" -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalClaims = {
		-50, "latin", "rome"
	},
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true -- Chief court of the salt tax existent in Lyon in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Macedonia", {
	World = "earth",
	CulturalNames = {
		"greek", "Macedonia"
	},
--	SettlementLocation = {542, 140}, -- Aegae
	Claims = {
		"greek", "macedon",
		"thracian", "edoni-tribe", -- inhabited the region between Stryinon and Nestus rivers
		"thracian", "odomanti-tribe" -- inhabited the region between Stryinon and Nestus rivers
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Magdeburg", {
	World = "earth",
	CulturalNames = {
		"teuton", "Magdeburg"
	},
--	SettlementLocation = {513, 107}, -- Magdeburg
	Claims = {
		"teuton", "cherusci-tribe",
		"teuton", "magdeburg",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-264, "teuton", "cherusci-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "teuton", "lombard-tribe", -- The area was inhabited by the Langobardi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1547, "teuton", "magdeburg" -- Political situation in Central Europe in 1547; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 114-115.
	},
	HistoricalClaims = {
		919, "teuton", "saxony" -- Part of the Duchy of Saxony within the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-264, "teuton"
	},
	HistoricalModifiers = {
		1576, "upgrade-university", true -- University founded in Helmstadt in 1576; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Malta", {
	World = "earth",
	CulturalNames = {
		"latin", "Melita" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
--	SettlementLocation = {521, 153},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Marche", {
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "Marche" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
--	SettlementLocation = {485, 124}, -- Guéret
	Claims = {
--		"french", "france"
	},
	HistoricalOwners = {
		-50, "latin", "rome" -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalClaims = {
		-50, "latin", "rome"
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Mazovia", {
	World = "earth",
	CulturalNames = {
		"slav", "Mazovia"
	},
--	SettlementLocation = {538, 107}, -- Warsaw
	Claims = {
		"goth", "vandal-tribe",
		"slav", "poland"
	},
	HistoricalOwners = {
		-264, "goth", "vandal-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "goth", "burgundian-tribe", -- The area was inhabited by the Burgundiones in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "slav", "poland" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-264, "goth"
	},
	Regions = {"europe", "poland", "west-and-central-europe"}
})

DefineProvince("Mecklenburg", {
	World = "earth",
	CulturalNames = {
		"teuton", "Mecklenburg"
	},
--	SettlementLocation = {512, 103}, -- Schwerin
	Claims = {
		"basque", "ertebolle-tribe",
		"basque", "funnelbeaker-tribe",
		"teuton", "varini-tribe",
		"teuton", "mecklenburg"
	},
	HistoricalOwners = {
		-4400, "basque", "ertebolle-tribe", -- Timmendorf-Nordmole site (belonging to the Ertebolle/Ellerbek culture) in Poel isle (in Wismar Bay in Mecklenburg) began being occupied around 4400 BC; fishing gear existed there; they had dugout canoes; fish (particularly eel and cod), sea mammals and birds were caught/hunted; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 138.
		-4100, "", "", -- Timmendorf-Nordmole site (belonging to the Ertebolle/Ellerbek culture) in Poel isle (in Wismar Bay in Mecklenburg) ceases being occupied around 4100 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 138.
		-3950, "basque", "funnelbeaker-tribe", -- Funnel Beaker culture existed in parts of Northern Europe between 7000 and 2000 BC; since the other source gives them as being present in Zealand in 3950 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "teuton", "varini-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "teuton", "saxon-tribe" -- The area was inhabited by the Saxones in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalCultures = {
		-4400, "basque",
		-4100, "",
		-3950, "basque",
		-264, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Mercia", {
	World = "earth",
	FactionCulturalNames = {
		"anglo-saxon", "angle-tribe", "Mercia",
		"english", "england", "Mercia"
	},
--	SettlementLocation = {475, 106}, -- Tamworth
	Claims = {
		"briton", "coritani-tribe",
		"english", "england"
	},
	HistoricalOwners = {
		-27, "briton", "coritani-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "anglo-saxon", "angle-tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		632, "anglo-saxon", "mercia", -- Penda became king of Mercia in 632 after the demise of Edwin of Deira; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75, 80-81, 83-84.
		654, "anglo-saxon", "middle-anglia", -- Peada, king of the Middle Angles, ruled over the Mercian lands south of the Trent after Penda fell; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		656, "anglo-saxon", "northumbria", -- After the murder of Peada in 656, Mercia became a province of the Kingdom of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		657, "anglo-saxon", "mercia", -- Wulfhere proclaimed Mercian king in 657, ending Northumbrian dominion; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "rome",
		632, "anglo-saxon", "mercia"
	},
	HistoricalCultures = {
		-27, "celt",
		526, "teuton"
	},
	HistoricalModifiers = {
		1250, "upgrade-university", true, -- University existent in Oxford in 1250; Source: "Atlas de História Mundial", p. 144.
		1851, "upgrade-university", true, -- University founded in Manchester in 1851; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
		1900, "upgrade-university", true, -- University founded in Birmingham in 1900; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
		1903, "upgrade-university", true -- University founded in Liverpool in 1903; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
	},
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true -- Legionary base present in Deva in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Modena", {
	World = "earth",
--	SettlementLocation = {511, 129}, -- Modena
	HistoricalModifiers = {
		1250, "upgrade-university", true -- University existent in Reggio in 1250; Source: "Atlas de História Mundial", 2001, p. 144.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Moldavia", {
	World = "earth",
	CulturalNames = {
		"latin", "Northern Lower Dacia"
	},
--	SettlementLocation = {557, 121}, -- Jassy/Iași
	Claims = {
--		"romanian", "moldavia",
		"thracian", "costoboci-tribe"
	},
	HistoricalOwners = {
		-336, "persian", "scythian-tribe", -- Macedonian Empire and environs in 336-323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		107, "latin", "rome", -- Dacia acquired by Rome in 107 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "thracian", "costoboci-tribe", -- The area was inhabited by the Costoboci in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		200, "goth", "visigoth-tribe", -- The western goths had migrated to the area of modern Romania / ancient Dacia in about 200 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
--		275, "", "", -- Dacia lost by Rome in 275 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		397, "", "", -- The Visigoths migrated to the Western Balkans in 397 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		1560, "romanian", "moldavia" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-336, "persian", "scythian-tribe",
		107, "latin", "rome"
	},
	HistoricalCultures = {
		-336, "persian",
		161, "thracian",
		200, "goth"
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Montenegro", {
	World = "earth",
--	SettlementLocation = {534, 135}, -- Podgorica
	Regions = {"europe", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Moravia", {
	World = "earth",
	CulturalNames = {
		"slav", "Moravia",
		"teuton", "Moravia" -- Mähren
	},
--	SettlementLocation = {527, 116}, -- Brünn
	Claims = {
		"basque", "linearware-tribe",
		"slav", "moravia",
		"suebi", "buri-tribe",
		"suebi", "quadi-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-5500, "basque", "linearware-tribe", -- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-9, "suebi", "quadi-tribe", -- if the Boii were conquered by the Marcomanni in 9 BC, the Quadi probably moved to Moravia and Slovakia at around the same time
		161, "teuton", "lombard-tribe", -- The area was inhabited by the Langobardi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		830, "slav", "moravia", -- Mojmír was duke of Moravia 830-846; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 606.
		869, "frankish", "east-francia", -- Moravia conquered by East Francia in 869; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		871, "slav", "moravia", -- Moravia rose against East Frankish domination in 871; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		906, "magyar", "magyar-tribe", -- Magyars conquered Moravia in 906; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 610.
		1003, "slav", "poland", -- Moravia conquered by Poland in 1003; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 611.
		1030, "slav", "bohemia", -- Moravia acquired by Boleslav I of Bohemia in 1030; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 611.
		1560, "teuton", "austria", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-5500, "basque",
		-9, "teuton",
		830, "slav" -- Moravia inhabited by Slavic peoples at the time of Mojmír's reign; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 606.
	},
	HistoricalSettlementBuildings = {
		1225, "unit-teuton-temple", true, -- a nunnery was founded by Hedwig of Znojmo in Oslavany (or Marienthal) (near Brno) in 1225; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 627.
		1232, "unit-teuton-temple", true, -- Queen Constance founded a cloister called "The Door to Heaven" in Tišňov in 1232; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 627.
		1251, "unit-teuton-temple", true -- Boček (lord of Kunštát and Poděbrady) founded a monastery in Ždár (Saar) in 1251; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 627.
	},
	HistoricalModifiers = {
		-- First trains from Vienna arrived in Brünn on the 07.07.1839; Source: Chad Bryant, "Into an Uncertain Future: Railroads and Vormärz Liberalism in Brno, Vienna, and Prague", 2009, p. 183.
		-- Nordbahn reached Olmütz in 1841; Source: Chad Bryant, "Into an Uncertain Future: Railroads and Vormärz Liberalism in Brno, Vienna, and Prague", 2009, p. 187.
	},
	Regions = {"cisleithania", "czechoslovakia", "europe", "west-and-central-europe"}
})

DefineProvince("Moselle", {
	World = "earth",
--	SettlementLocation = {496, 116}, -- Metz
	Claims = {
		"teuton", "holy-rome"
	},
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain and prévôt des maréchaux existent in Metz in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Munster", {
	World = "earth",
	CulturalNames = {
		"gael", "Munster"
	},
	FactionCulturalNames = {
		"english", "england", "Munster"
	},
--	SettlementLocation = {458, 106}, -- Clonmel
	Claims = {
		"gael", "gangani-tribe",
		"gael", "hibernii-tribe",
		"gael", "scot-tribe"
	},
	HistoricalOwners = {
		-27, "gael", "hibernii-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		161, "gael", "hibernii-tribe", -- The area was inhabited by the Hibernii in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		395, "gael", "scot-tribe" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	HistoricalCultures = {
		-27, "celt"
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Naples", {
	World = "earth",
	CulturalNames = {
		"greek", "Magna Graecia",
		"latin", "Campania" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 30-31.
	},
--	SettlementLocation = {520, 139}, -- Naples
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Monte Cassino during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1250, "upgrade-university", true -- University existent in Salerno in 1250; Source: "Atlas de História Mundial", 2001, p. 144.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Neumark", {
	World = "earth",
	CulturalNames = {
		"teuton", "Neumark" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 134-135.
	},
--	SettlementLocation = {522, 106}, -- Küstrin
	Claims = {
		"suebi", "suebi-tribe",
		"teuton", "brandenburg"
	},
	HistoricalOwners = {
		161, "suebi", "suebi-tribe", -- The area was inhabited by the Suebi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "teuton", "brandenburg" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		161, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Nordland", {
	World = "earth",
	CulturalNames = {
		"norse", "Nordland"
	},
--	SettlementLocation = {521, 64}, -- Bodø
	Claims = {
		"norse", "halogaland",
		"norse", "norway"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Normandy", {
	World = "earth",
	CulturalNames = {
		"norse", "Normandy"
	},
	FactionCulturalNames = {
		"french", "france", "Normandy"
	},
--	SettlementLocation = {482, 115}, -- Rouen
	Claims = {
		"basque", "bellbeaker-tribe"
	},
	HistoricalOwners = {
		-7000, "basque", "bellbeaker-tribe", -- Bell Beaker culture existed in Normandy and the western parts of Great Britain between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-50, "latin", "rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "frankish", "francia", -- The Frankish Merovingian king Clovis conquers Syagrius' realm, the last Roman territory in Gaul; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		1560, "french", "france", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-50, "latin", "rome",
		486, "frankish", "francia"
	},
	HistoricalCultures = {
		-7000, "basque"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in St. Wandrille during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1437, "upgrade-university", true, -- University founded in Caen in 1437; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain, cambre des comptes, court of admiralty, prévôt des maréchaux and chief court of the salt tax existent in Rouen in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux and chief court of the salt tax existent in Alençon in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true -- Chief court of the salt tax and prévôt des maréchaux existent in Caen in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Norrland", {
	World = "earth",
	CulturalNames = {
		"norse", "Norrland"
	},
--	SettlementLocation = {530, 77}, -- Härnösand
	Claims = {
		"norse", "sitone-tribe"
	},
	HistoricalOwners = {
		-264, "norse", "sitone-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "norse", "sweden" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "norse"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("North Brabant", {
	World = "earth",
	FactionCulturalNames = {
		"teuton", "netherlands", "Noord-Brabant"
	},
--	SettlementLocation = {494, 109}, -- 's-Hertogenbosch
	Claims = {
		"gaul", "menapii-tribe",
		"teuton", "brabant",
		"teuton", "netherlands",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-56, "gaul", "menapii-tribe", -- correct? The Menapii inhabited the part of the Rhine not far from where it meets the sea (apparently) in 56 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 223.
		-50, "latin", "rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		481, "frankish", "francia", -- Frankish territory in 481 AD, and the Franks had already established their kingdom; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		919, "teuton", "holy-rome", -- Duchy of Lower Lorraine; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "castillian", "spain", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1648, "teuton", "netherlands" -- Political situation in Central Europe in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalClaims = {
		-50, "latin", "rome",
		481, "frankish", "francia"
	},
	HistoricalCultures = {
		-56, "gaul"
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("North Trondelag", {
	World = "earth",
	CulturalNames = {
		"norse", "Nørd-Trøndelag"
	},
--	SettlementLocation = {512, 73}, -- Steinkjet
	Claims = {
		"norse", "norway"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Northumberland", {
	World = "earth",
	FactionCulturalNames = {
		"anglo-saxon", "angle-tribe", "Bernicia",
		"english", "england", "Northumberland"
	},
--	SettlementLocation = {475, 98}, -- Bamburgh; was the chief stronghold of the Bernice people, who lived in the region; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
	Claims = {
		"anglo-saxon", "bernice-tribe", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
		"english", "england",
		"anglo-saxon", "northumbria"
	},
	HistoricalOwners = {
		80, "latin", "rome", -- The area between the Wall of Antoninus (or Severus) and Hadrian's Wall was acquired by Rome in 80 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "briton", "selgovae-tribe", -- The area was inhabited by the Selgovae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		526, "anglo-saxon", "bernice-tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		547, "anglo-saxon", "bernicia", -- the Kingdom of Bernicia was founded in 547 AD; in 600 AD, the Bernice people (who were Anglians) were centered in Bamburgh; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 74-75.
		654, "anglo-saxon", "northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		80, "latin", "rome",
		547, "anglo-saxon", "bernicia" -- the Kingdom of Bernicia was founded in 547 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	},
	HistoricalCultures = {
		161, "celt",
		526, "teuton"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Odeska", {
	World = "earth",
	CulturalNames = {
		"slav", "Odes'ka"
	},
--	SettlementLocation = {567, 123}, -- Odesa
	Claims = {
		"goth", "bastarnae-tribe",
		"persian", "scythian-tribe"
	},
	HistoricalOwners = {
		-336, "persian", "scythian-tribe", -- Macedonian Empire and environs in 336-323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		161, "goth", "bastarnae-tribe", -- The area was inhabited by the Bastarnae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "turkish", "turkey" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-336, "persian",
		161, "goth"
	},
	Regions = {"eurasia", "europe"}
})

DefineProvince("Oldenburg", {
	World = "earth",
	CulturalNames = {
		"teuton", "Oldenburg"
	},
--	SettlementLocation = {503, 104}, -- Oldenburg
	Claims = {
		"basque", "funnelbeaker-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-3950, "basque", "funnelbeaker-tribe", -- Funnel Beaker culture existed in parts of Northern Europe between 7000 and 2000 BC; since the other source gives them as being present in Zealand in 3950 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "teuton", "chauci-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "teuton", "lombard-tribe", -- The area was inhabited by the Langobardi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome" -- part of the Duchy of Saxony within the Holy Roman Empire in the 919-1125 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		919, "teuton", "saxony" -- Part of the Duchy of Saxony within the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-3950, "basque",
		-264, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Oppland", {
	World = "earth",
	CulturalNames = {
		"norse", "Oppland"
	},
--	SettlementLocation = {510, 81}, -- Lillehammar
	Claims = {
		"norse", "norway"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Orkney", {
	World = "earth",
--	SettlementLocation = {470, 87},
	Claims = {
		"norse", "orkney",
		"english", "scotland"
	},
	HistoricalOwners = {
		1099, "norse", "orkney", -- since the faction had a ruler at this date, then it must have existed
		1560, "english", "scotland" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Ostfold", {
	World = "earth",
	CulturalNames = {
		"norse", "Østfold"
	},
--	SettlementLocation = {511, 86}, -- Oslo
	Claims = {
		"norse", "norway"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Overijssel", {
	World = "earth",
	FactionCulturalNames = {
		"teuton", "netherlands", "Overijssel" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	},
--	SettlementLocation = {497, 106}, -- Zwolle
	Claims = {
		"frankish", "chamavi-tribe",
		"teuton", "overijssel",
		"teuton", "netherlands",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-27, "frankish", "chamavi-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "teuton", "chauci-tribe", -- The area was inhabited by the Chauci in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		481, "frankish", "francia", -- Frankish territory in 481 AD, and the Franks had already established their kingdom; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "castillian", "spain", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1648, "teuton", "netherlands" -- Political situation in Central Europe in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalClaims = {
		481, "frankish", "francia"
	},
	HistoricalCultures = {
		-27, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Palatinate", {
	World = "earth",
	CulturalNames = {
		"teuton", "Pfalz"
	},
--	SettlementLocation = {502, 115}, -- Kaiserslautern
	Claims = {
		"teuton", "franconia", -- Part of the Duchy of Franconia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "holy-rome"
	},
	HistoricalModifiers = {
		1578, "upgrade-university", true -- University founded in Neustadt in 1578; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Palermo", {
	World = "earth",
	CulturalNames = {
		"greek", "Panormus",
		"latin", "Panormus"
	},
--	SettlementLocation = {517, 147}, -- Palermo
	Coastal = true, -- this variable is calculated automatically, but we place it here anyway for the random map generation (this will mean that this province is generated near a water body)
	Claims = {
		"latin", "elymian-tribe",
		"latin", "sicanian-tribe"
--		"italian", "sicily"
	},
	HistoricalOwners = {
		-500, "latin", "sicanian-tribe", -- Situation of Italy in (apparently) 500 BC; Sicily was inhabited by the Elymians, Sicanians and Sicels; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		-241, "latin", "rome", -- Sicily acquired by Rome in 241 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "ostrogoth-tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		1072, "italian", "sicily", -- Palermo was conquered by the Norman forces in Sicily in 1072 AD; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 233.
		1560, "castillian", "spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-750, "phoenician", -- Phoenician settlements existed in Phoenicia proper, western north Africa, western Sicily and southern Cyprus between 750 and 625 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.	
		-500, "latin"
	},
	HistoricalClaims = {
		-241, "latin", "rome"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Pannonia", {
	World = "earth",
	CulturalNames = {
		"latin", "Pannonia"
	},
--	SettlementLocation = {534, 120}, -- Buda
	Claims = {
		"basque", "linearware-tribe",
		"magyar", "hungary"
	},
	HistoricalOwners = {
		-5500, "basque", "linearware-tribe", -- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		10, "latin", "rome", -- Pannonia was acquired by Rome in 10 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		453, "goth", "ostrogoth-tribe", -- Walamer was king over the Ostrogoths in Pannonia (between the Danube and the Drave) when Attila's empire collapsed in 453 AD; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
		474, "", "", -- In 474 AD the Ostrogoths left Pannonia to settle in Macedonia under the aegis of the Eastern Roman Emperor, and in that same year Theodemer died, being succeeded by Theoderic; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 7.
		919, "magyar", "hungary", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "turkish", "turkey" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-5500, "basque"
	},
	HistoricalClaims = {
		10, "latin", "rome"
	},
	HistoricalSettlementBuildings = {
		850, "unit-teuton-temple", true -- in 850 Archbishop Liutpram consecrated the first church built at Moosburg (on the Platten See, in Lower Pannonia); Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 608.
	},
	HistoricalModifiers = {
		1367, "upgrade-university", true -- University founded in Fünfkirchen in 1367; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Parma", {
	World = "earth",
	CulturalNames = {
		"latin", "Aemilia"
	},
--	SettlementLocation = {509, 128}, -- Parma
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Bobbio during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Picardy", { -- also includes French Flanders, Hainaut and Artois
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "Picardy" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
--	SettlementLocation = {486, 114}, -- Amiens
	Claims = {
		"frankish", "austrasia", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
--		"french", "france"
	},
	HistoricalOwners = {
		-50, "latin", "rome", -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		481, "frankish", "francia", -- Picardy was a part of Frankish territory in 481 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		919, "french", "france" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		-50, "latin", "rome",
		481, "frankish", "francia"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in St. Riquier during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Corbie during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1582, "upgrade-university", true, -- University founded in Douai in 1582; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux existent in Amiens in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Chief court of the salt tax existent in Abbeville in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Parlement or conseil souverain existent in Arras in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true, -- Prévôt des maréchaux existent in Lille in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
		1789, "upgrade-courthouse", true -- Prévôt des maréchaux existent in Valenciennes in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Piedmont", {
	World = "earth",
--	SettlementLocation = {502, 127}, -- Turin
	HistoricalModifiers = {
		1228, "upgrade-university", true, -- University founded in Vercelli in 1228; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1405, "upgrade-university", true -- University founded in Turin in 1405; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Poitou", {
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "Poitou"
	},
--	SettlementLocation = {480, 123}, -- Poitiers
	Claims = {
--		"french", "france"
	},
	HistoricalOwners = {
		-50, "latin", "rome" -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalClaims = {
		-50, "latin", "rome"
	},
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true -- Prévôt des maréchaux existent in Poitiers in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Pomerelia", {
	World = "earth",
	CulturalNames = {
		"goth", "Gothiscandza",
		"slav", "Pomerelia",
		"teuton", "West Prussia" -- Westpreussen
	},
--	SettlementLocation = {532, 101}, -- Danzig
	Claims = {
		"slav", "poland",
		"teuton", "prussia"
	},
	HistoricalOwners = {
		-264, "goth", "goth-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "goth", "goth-tribe", -- The area was inhabited by the Gothones in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		200, "", "", -- The Goths migrated south in about 200 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		1560, "slav", "poland" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-264, "goth", "goth-tribe"
	},
	HistoricalCultures = {
		-264, "goth",
		200, ""
	},
	HistoricalModifiers = {
		1366, "upgrade-university", true -- University founded in Kulm in 1366; Source: "Atlas de História Mundial", 2001, p. 144.
	},
	Regions = {"europe", "poland", "west-and-central-europe"}
})

DefineProvince("Posen", {
	World = "earth",
	CulturalNames = {
		"teuton", "Posen"
	},
--	SettlementLocation = {528, 107}, -- Posen
	Claims = {
		"goth", "vandal-tribe",
		"slav", "poland"
	},
	Regions = {"europe", "poland", "west-and-central-europe"}
})

DefineProvince("Provence", {
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "Provence"
	},
--	SettlementLocation = {495, 132}, -- Marseilles
	Claims = {
--		"french", "france"
	},
	HistoricalOwners = {
		-121, "latin", "rome", -- Gallia Narbonensis acquired by Rome in 121 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		537, "frankish", "francia", -- Provence conquered by the Franks in 537; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		1560, "french", "france" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-121, "latin", "rome",
		537, "frankish", "francia"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Archbishopric existent in Aix during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1409, "upgrade-university", true, -- University founded in Aix-en-Provence in 1409; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1789, "upgrade-courthouse", true -- Parlement or conseil souverain, chambre des comptes, court of admiralty, chief court of the salt tax and prévôt des maréchaux existent in Aix-en-Provence in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Prussia", {
	World = "earth",
	CulturalNames = {
		"teuton", "East Prussia" -- Ostpreussen
	},
--	SettlementLocation = {537, 100}, -- Königsberg
	Claims = {
		"teuton", "prussia"
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Rhodes", {
	World = "earth",
	CulturalNames = {
		"greek", "Rhodes"
	},
--	SettlementLocation = {559, 152}, -- Ialysus
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Rhodope", {
	World = "earth",
	CulturalNames = {
		"greek", "Rodópi"
	},
--	SettlementLocation = {552, 139}, -- Komotini
	Claims = {
		"greek", "thrace"
	},
	HistoricalOwners = {
		-500, "persian", "persia", -- Persian Empire about 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 8.
		-450, "", "", -- Greece circa 450 BC (height of the Athenian empire); Source: William R. Shepherd, "Historical Atlas", 1911, p. 13.
		-336, "greek", "macedon", -- Macedonian Empire in 336-323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		-301, "greek", "thrace", -- Kingdoms of the Diadochi about 301 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		-200, "greek", "macedon", -- Kingdoms of the Diadochi about 200 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		-146, "latin", "rome" -- Macedonia acquired by Rome in 146 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalCultures = {
		-1450, "phoenician", -- The isle of Thasos and the coastal areas around it were settled by the Phoenicians around 1450 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 4.
		-550, "greek" -- Greek and Phoenician settlements about 550 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 12.
	},
	HistoricalClaims = {
		-146, "latin", "rome"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Rogaland", {
	World = "earth",
	CulturalNames = {
		"norse", "Rogaland"
	},
--	SettlementLocation = {496, 88}, -- Stavanger
	Claims = {
		"norse", "norway"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Romagna", {
	World = "earth",
	CulturalNames = {
		"gaul", "Cispadane Gaul",
		"latin", "Cispadane Gaul"
	},
--	SettlementLocation = {512, 129}, -- Bologna
	HistoricalModifiers = {
		1391, "upgrade-university", true -- University founded in Ferrara in 1391; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Russia", {
	World = "earth",
	CulturalNames = {
		"norse", "Gardarike",
		"slav", "Russia"
	},
	FactionCulturalNames = {
		"slav", "muscovy", "Russia",
		"slav", "russia", "Russia"
	},
--	SettlementLocation = {587, 97}, -- Moscow
	Claims = {
		"norse", "holmgard",
		"slav", "budini-tribe",
		"slav", "muscovy",
		"slav", "russia"
	},
	HistoricalOwners = {
		-264, "slav", "budini-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
--		161, "finnish", "fenni-tribe", -- Small parts of western Russia were inhabited by the Fenni in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
--		161, "slav", "venedae-tribe", -- Small parts of western Russia were inhabited by the Venedi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "slav", "muscovy", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "slav"
	},
	Regions = {"eurasia", "europe"}
})

DefineProvince("Salzburg", {
	World = "earth",
	CulturalNames = {
		"teuton", "Salzburg"
	},
--	SettlementLocation = {516, 119}, -- Salzburg
	Claims = {
		"gaul", "norici-tribe",
		"teuton", "austria",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-800, "gaul", "norici-tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "rome", -- Noricum acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "ostrogoth-tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		537, "frankish", "francia", -- region of Altbayern, Salzburg and Tyrol conquered by the Franks in 537; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "holy-rome" -- Duchy of Bavaria within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		-15, "latin", "rome",
		537, "frankish", "francia",
		919, "teuton", "bavaria" -- Duchy of Bavaria within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-800, "gaul"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Sardinia", {
	World = "earth",
	CulturalNames = {
		"latin", "Sardinia"
	},
--	SettlementLocation = {505, 144}, -- Cagliari
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Savoy", {
	World = "earth",
	CulturalNames = {
		"latin", "Pennine Alps"
	},
--	SettlementLocation = {496, 126}, -- Chambéry
	Claims = {
--		"french", "france",
--		"italian", "savoy"
	},
	HistoricalOwners = {
		-15, "latin", "rome", -- Pennine Alps acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		451, "goth", "burgundy", -- Burgundians fought on both the Roman and Hunnic sides in the Battle of the Catalaunian Fields in (June) 451 AD; with the Roman victory, the Burgundians under Gundioc were granted more land; Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 94-95.
		534, "frankish", "francia", -- The Burgundian realm, which included Savoy, was conquered by the Franks in 534; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		1560, "italian", "savoy" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "rome",
		451, "goth", "burgundy",
		534, "frankish", "francia"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true -- Archbishopric existent in Tarentaise during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Scania", {
	World = "earth",
	CulturalNames = {
		"norse", "Scania"
	},
	FactionCulturalNames = {
		"basque", "gylfing-tribe", "Gylveland"
	},
--	SettlementLocation = {517, 97}, -- Malmö
	Claims = {
		"basque", "ertebolle-tribe",
		"basque", "gylfing-tribe",
		"basque", "kongemose-tribe",
		"norse", "dane-tribe",
		"norse", "scania"
	},
	HistoricalOwners = {
		-7000, "basque", "kongemose-tribe", -- Kongemose culture present in Scania c. 7000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 185.
		-5800, "basque", "ertebolle-tribe", -- Coastal Ertebolle Mesolithic sites and shell middens begin being occupied c. 5800 BC; they lived in eastern Jutland (i.e. Ertebolle itself on the Limfjord in northern Jutland, Bjornsholm), the Danish isles (the Karrebaek-Dybso Fjord sites in Zealand - which could sustain c. 250 people), and southern Sweden (Tagerup in a fjord on Scania - this site had a previous Kongemose occupation); Ertebolle people used pottery and did large-quantity fishing via traps or weirs; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 136.
		-3000, "basque", "gylfing-tribe", -- around this time Gylve or his ancestors should have begun to rule in Scania
		-2800, "germanic", "asa-tribe", -- in the Ynglinga saga, "Odin's people", the Asa, settle Scandinavia in a manner not too dissimilar from what archaeological findings tell us of Indo-European settlement in the region; thus the name "Asa Tribe" is used here to denote the Indo-European-speaking peoples who settled in Scandinavia, and were the precursors of the Germanic peoples 
		-2770, "germanic", "yngling-tribe", -- estimated date
		-264, "", "", -- remove the Proto-Germanics
		161, "norse", "swede-tribe", -- The area was inhabited by the Suiones in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		526, "norse", "dane-tribe", -- Danes were in Scania in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1560, "norse", "denmark" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-2800, "germanic", "asa-tribe"
	},
	HistoricalCultures = {
		-5800, "basque",
		-2800, "germanic",
		161, "norse"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Schleswig", {
	World = "earth",
	CulturalNames = {
		"teuton", "Schleswig"
	},
--	SettlementLocation = {506, 100}, -- Flensburg
	Claims = {
		"anglo-saxon", "angle-tribe",
		"anglo-saxon", "avione-tribe"
	},
	HistoricalOwners = {
		-264, "anglo-saxon", "angle-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "anglo-saxon", "angle-tribe", -- The area was inhabited by the Anglii in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "norse", "denmark" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-264, "teuton"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Serbia", {
	World = "earth",
	CulturalNames = {
		"latin", "Upper Moesia"
	},
--	SettlementLocation = {538, 129}, -- Belgrade
	Claims = {
		"minoan", "lepenskivir-tribe",
		"thracian", "triballi-tribe"
	},
	HistoricalOwners = {
		-7000, "minoan", "lepenskivir-tribe", -- The Lepenski Vir culture existed between c. 7000 and c. 5500 BC (they were presumably named after the site of Lepenski Vir, in Serbia); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 175.
		-336, "thracian", "triballi-tribe", -- they were also in western Bulgaria; Macedonian Empire and its environs in 336-323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		-29, "latin", "rome", -- Lower Moesia and Upper Moesia were acquired by Rome in 29 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		488, "goth", "ostrogoth-tribe" -- Ostrogoths commissioned by the Eastern Roman Emperor in 488 to wrest control of Italy from Odoacer; as a result, the Ostrogoths marched from Moesia to Italy (this means that by 488 they were in Moesia), with a quarter of a million men, women and children; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 7-8.
	},
	HistoricalClaims = {
		-29, "latin", "rome"
	},
	HistoricalCultures = {
		-7000, "minoan",
		-336, "thracian"
	},
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true -- Legionary base present in Viminacium in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"europe", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Silesia", {
	World = "earth",
	CulturalNames = {
		"teuton", "Silesia" -- Schlesien
	},
--	SettlementLocation = {526, 110}, -- Breslau
	Claims = {
		"goth", "lugii-tribe",
		"goth", "silingae-tribe"
	},
	HistoricalOwners = {
		-264, "goth", "silingae-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "suebi", "marcomanni-tribe", -- The area was inhabited by the Marcomanni in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "slav", "poland", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "austria", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1740, "teuton", "brandenburg" -- Brandenburg acquired Silesia in 1740; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 6.
	},
	HistoricalCultures = {
		-264, "goth",
		161, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Skopje", {
	World = "earth",
	CulturalNames = {
		"latin", "Scupi"
	},
--	SettlementLocation = {540, 136}, -- Skopje
	Claims = {
		"phrygian", "bryges-tribe"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Slovakia", {
	World = "earth",
	CulturalNames = {
		"slav", "Slovakia"
	},
--	SettlementLocation = {528, 118}, -- Bratislava
	Claims = {
		"basque", "linearware-tribe",
		"gaul", "cotini-tribe",
		"goth", "gepidae-tribe",
		"suebi", "quadi-tribe",
		"thracian", "carpi-tribe"
	},
	HistoricalOwners = {
		-5500, "basque", "linearware-tribe", -- Linear Pottery culture existed in parts of Central Europe between 7000 and 2000 BC; since the other source gives them as arriving in northern Poland and Germany c. 5500 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "gaul", "cotini-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		-9, "suebi", "quadi-tribe", -- if the Boii were conquered by the Marcomanni in 9 BC, the Quadi probably moved to Moravia and Slovakia at around the same time
		161, "suebi", "quadi-tribe", -- Slovakia was inhabited by the Quadi in 161-180 AD (while the Cotini inhabited eastern Slovakia); Source: "Ancient Warfare VII.6", 2013, p. 7.
		526, "teuton", "lombard-tribe", -- Political situation in 526 in Europe; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		919, "magyar", "hungary", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "austria", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-5500, "basque",
		-264, "gaul",
		-9, "teuton"
	},
	HistoricalSettlementBuildings = {
		830, "unit-teuton-temple", true -- a Christian church finished construction in Nitra c. 830; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 608.
	},
	HistoricalModifiers = {
		1465, "upgrade-university", true -- University founded in Bratislava in 1465; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"czechoslovakia", "europe", "west-and-central-europe"}
})

DefineProvince("Somerset", {
	World = "earth",
	FactionCulturalNames = {
		"anglo-saxon", "angle-tribe", "Somerset",
		"english", "england", "Somerset"
	},
--	SettlementLocation = {473, 110}, -- Wells
	Claims = {
		"basque", "bellbeaker-tribe",
		"briton", "belgae-tribe",
		"english", "england"
	},
	HistoricalOwners = {
		-7000, "basque", "bellbeaker-tribe", -- Bell Beaker culture existed in Normandy and the southwestern parts of Great Britain between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-27, "briton", "belgae-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-7000, "basque",
		-27, "briton"
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("South Trondelag", {
	World = "earth",
	CulturalNames = {
		"norse", "Sør-Trøndelag"
	},
--	SettlementLocation = {509, 75}, -- Trondheim
	Claims = {
		"norse", "norway"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Strathclyde", {
	World = "earth",
	CulturalNames = {
		"celt", "Strathclyde"
	},
	FactionCulturalNames = {
		"english", "england", "Strathclyde"
	},
--	SettlementLocation = {467, 97}, -- Glasgow
	Claims = {
		"briton", "damnii-tribe",
		"briton", "strathclyde",
		"english", "scotland"
	},
	HistoricalOwners = {
		-27, "briton", "damnii-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		80, "latin", "rome", -- The area between the Wall of Antoninus (or Severus) and Hadrian's Wall was acquired by Rome in 80 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "briton", "selgovae-tribe", -- The area was inhabited by the Selgovae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "english", "scotland" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		80, "latin", "rome"
	},
	HistoricalCultures = {
		-27, "celt"
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Styria", {
	World = "earth",
	CulturalNames = {
		"teuton", "Styria" -- Steiermark
	},
--	SettlementLocation = {523, 121}, -- Graz
	Claims = {
		"gaul", "norici-tribe",
		"teuton", "austria",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-800, "gaul", "norici-tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "rome", -- Noricum acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "ostrogoth-tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "holy-rome", -- Duchy of Carinthia within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "austria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "rome",
		919, "teuton", "carinthia", -- Duchy of Carinthia within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-800, "gaul"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Sussex", {
	World = "earth",
	FactionCulturalNames = {
		"anglo-saxon", "angle-tribe", "Sussex",
		"english", "england", "Sussex"
	},
--	SettlementLocation = {480, 111}, -- Newhaven
	Claims = {
		"english", "england"
	},
	HistoricalOwners = {
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "saxon-tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	HistoricalCultures = {
		526, "teuton"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Sweden", {
	World = "earth",
	CulturalNames = {
		"norse", "Sweden"
	},
--	SettlementLocation = {531, 87}, -- Stockholm / Sigtun
	Claims = {
		"germanic", "yngling-tribe",
		"norse", "swede-tribe"
	},
	HistoricalOwners = {
		-2800, "germanic", "asa-tribe", -- in the Ynglinga saga, "Odin's people", the Asa, settle Scandinavia in a manner not too dissimilar from what archaeological findings tell us of Indo-European settlement in the region; thus the name "Asa Tribe" is used here to denote the Indo-European-speaking peoples who settled in Scandinavia, and were the precursors of the Germanic peoples 
		-2770, "germanic", "yngling-tribe", -- estimated date
		-264, "norse", "swede-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "norse", "sweden" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-2800, "germanic", "asa-tribe"
	},
	HistoricalCultures = {
		-2800, "germanic",
		-264, "norse"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Switzerland", {
	World = "earth",
	CulturalNames = {
		"gaul", "Helvetia",
		"latin", "Helvetia",
		"teuton", "Switzerland"
	},
--	SettlementLocation = {501, 122}, -- Bern
	Claims = {
		"gaul", "helvetii-tribe",
		"teuton", "switzerland",
		"teuton", "holy-rome"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in St. Gallen during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Disentis during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in St. Maurice during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1365, "upgrade-university", true, -- University founded in Geneva in 1365; Source: "Atlas de História Mundial", p. 144.
		1459, "upgrade-university", true, -- University founded in Basel in 1459; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1521, "upgrade-university", true -- University founded in Zurich in 1521; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Syracuse", {
	World = "earth",
--	SettlementLocation = {522, 150}, -- Syracuse
	Claims = {
		"latin", "sicel-tribe"
--		"italian", "sicily"
	},
	HistoricalOwners = {
		-500, "latin", "sicel-tribe", -- Situation of Italy in (apparently) 500 BC; Sicily was inhabited by the Elymians, Sicanians and Sicels; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		-241, "latin", "rome", -- Sicily acquired by Rome in 241 BC; the city of Syracuse was acquired only in 212 BC, but the overwhelming majority of the eastern side of the island was acquired in 241 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "ostrogoth-tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		1061, "italian", "sicily", -- Robert Guiscard invaded Sicily in 1061 AD with 13 ships and 270 knights, to which 170 knights were joined in the conquest of Messina (but the source also mentions the victorious battle having 700 knights against 15,000 Muslims); Messina is on the eastern side of the island; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 233.
		1560, "castillian", "spain" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-500, "latin"
	},
	HistoricalClaims = {
		-241, "latin", "rome"
	},
	HistoricalModifiers = {
		1444, "upgrade-university", true, -- University founded in Catania in 1444; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1548, "upgrade-university", true -- University founded in Messina in 1548; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Thessaly", {
	World = "earth",
	CulturalNames = {
		"greek", "Thessaly"
	},
--	SettlementLocation = {543, 143}, -- Larissa
	Claims = {
		"minoan", "impressedware-tribe"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Thrace", {
	World = "earth",
--	SettlementLocation = {561, 138}, -- Constantinople
	Claims = {
		"thracian", "apsinthii-tribe",
		"greek", "thrace"
	},
	Regions = {"europe", "greece", "west-and-central-europe"}
})

DefineProvince("Thuringia", {
	World = "earth",
	CulturalNames = {
		"teuton", "Thuringia" -- Thüringen
	},
--	SettlementLocation = {511, 110}, -- Erfurt
	Claims = {
		"suebi", "hermunduri-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-264, "suebi", "hermunduri-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "frankish", "ubii-tribe", -- The area was inhabited by the Ubii in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-264, "teuton"
	},
	HistoricalModifiers = {
		1379, "upgrade-university", true, -- University founded in Erfurt in 1379; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1557, "upgrade-university", true -- University founded in Jena in 1557; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Touraine", {
	World = "earth",
	FactionCulturalNames = {
		"french", "france", "Touraine" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
--	SettlementLocation = {482, 121}, -- Tours
	Claims = {
--		"french", "france"
	},
	HistoricalOwners = {
		-50, "latin", "rome" -- Gaul conquered by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalClaims = {
		-50, "latin", "rome"
	},
	HistoricalModifiers = {
		1789, "upgrade-courthouse", true -- Chief court of the salt tax existent in Tours in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Transylvania", {
	World = "earth",
	CulturalNames = {
		"latin", "Upper Dacia",
		"teuton", "Siebenbürgen"
	},
--	SettlementLocation = {545, 122}, -- Cluj/Klausenburg
	Claims = {
--		"romanian", "transylvania"
		"minoan", "paintedware-tribe",
		"thracian", "daci-tribe"
	},
	HistoricalOwners = {
		-7000, "minoan", "paintedware-tribe", -- Balkan Painted Pottery / Impressed Cardial Pottery culture existed in Transylvania and Wallachia between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		107, "latin", "rome", -- Dacia acquired by Rome in 107 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
--		142, "goth", "vandal-tribe", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		161, "latin", "rome", -- The Transylvanian Carpathians were inhabited by the Daci in 161-180 AD, but the Romans held the most of Transylvania; Source: "Ancient Warfare VII.6", 2013, p. 7.
		275, "", "", -- Dacia lost by Rome in 275 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "romanian", "transylvania", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		107, "latin", "rome"
	},
	HistoricalCultures = {
		-7000, "minoan"
	},
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true -- Legionary base present in Apulum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalModifiers = {
		1580, "upgrade-university", true, -- University founded in Cluj in 1580; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Tuscany", {
	World = "earth",
	CulturalNames = {
		"latin", "Etruria",
		"etruscan", "Etruria"
	},
--	SettlementLocation = {512, 131}, -- Florence
	Claims = {
		"etruscan", "etruscan-tribe",
		"etruscan", "etruria"
	},
	HistoricalModifiers = {
		1215, "upgrade-university", true, -- University founded in Arezzo in 1215; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1348, "upgrade-university", true, -- University founded in Pisa in 1348; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1369, "upgrade-university", true -- University founded in Lucca in 1369; Source: "Atlas de História Mundial", 2001, p. 144.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Tyrol", {
	World = "earth",
	CulturalNames = {
		"teuton", "Tyrol"
	},
--	SettlementLocation = {512, 121}, -- Innsbruck
	Claims = {
		"basque", "sauveterrian-tribe",
		"gaul", "norici-tribe",
		"teuton", "austria",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-7040, "basque", "sauveterrian-tribe", -- a site belonging to the Sauveterrian culture existed between 7040 and 6813 BC in the Lago delle Buse; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 170.
		-800, "gaul", "norici-tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "rome", -- Raetia acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "ostrogoth-tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		537, "frankish", "francia", -- region of Altbayern, Salzburg and Tyrol conquered by the Franks in 537; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "holy-rome", -- Duchy of Bavaria within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "austria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "rome",
		537, "frankish", "francia",
		784, "teuton", "bavaria"
	},
	HistoricalCultures = {
		-7040, "basque",
		-800, "gaul"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Ukraine", {
	World = "earth",
	CulturalNames = {
		"goth", "Danparstathir", -- name used in the Hervararsaga for a field of battle between the Goths and Huns, possibly the region of the Dnieper; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 484.
		"norse", "Danparstathir",
		"slav", "Ukraine"
	},
	FactionCulturalNames = {
		"slav", "muscovy", "Ukraine",
		"slav", "poland", "Ukraine",
		"slav", "russia", "Ukraine"
	},
--	SettlementLocation = {566, 112}, -- Kiev
	Claims = {
		"persian", "navari-tribe",
		"persian", "roxolani-tribe",
		"persian", "scythian-tribe",
		"slav", "venedae-tribe"
	},
	HistoricalOwners = {
		-336, "persian", "scythian-tribe", -- Macedonian Empire and environs in 336-323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		-264, "persian", "roxolani-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "persian", "sarmatian-tribe", -- The area was inhabited by the Sarmatae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		200, "goth", "ostrogoth-tribe", -- The eastern goths had migrated to the area of modern Ukraine in about 200 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		453, "", "", -- Walamer was king over the Ostrogoths in Pannonia (between the Danube and the Drave) when Attila's empire collapsed in 453 AD (so the Ostrogoths had already migrated away from this area); Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
		1560, "slav", "poland" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-336, "persian",
		200, "goth"
	},
	Regions = {"eurasia", "europe"}
})

DefineProvince("Ulster", {
	World = "earth",
	CulturalNames = {
		"gael", "Ulster"
	},
	FactionCulturalNames = {
		"english", "england", "Ulster"
	},
--	SettlementLocation = {463, 100}, -- Belfast
	Claims = {
		"gael", "darini-tribe",
		"gael", "scot-tribe"
	},
	HistoricalOwners = {
		-- The Mount Sandel site (River Bann valley, Northern Ireland) was occupied in the late 9th millenium BC; in the site were found narrow-bladed, geometric microliths, wild boar bones, remains of birds such as mallard, teal, wigeon, grouse, capercaillie and snipe/woodcock, remains of fishes such as salmon, sea trout, eel and bass, hazelnuts, pears, apples and water-lilies; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 146.
		-- Occupation of Mount Sandel in Ireland may have begun by 8000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 152.
		-27, "gael", "darini-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		161, "gael", "scot-tribe", -- The area was inhabited by the Scotti in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		395, "gael", "scot-tribe" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	HistoricalCultures = {
		-27, "gael"
	},
	Regions = {"british-isles", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Umbria", {
	World = "earth",
	CulturalNames = {
		"latin", "Umbria"
	},
--	SettlementLocation = {515, 134}, -- Perugia
	Claims = {
		"latin", "aequian-tribe",
		"latin", "picentian-tribe",
		"latin", "sabine-tribe",
		"latin", "umbrian-tribe"
	},
	HistoricalModifiers = {
		1308, "upgrade-university", true, -- University founded in Perugia in 1308; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1540, "upgrade-university", true -- University founded in Macerata in 1540; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Upper Austria", {
	World = "earth",
	CulturalNames = {
		"teuton", "Upper Austria"
	},
--	SettlementLocation = {520, 118}, -- Linz
	Claims = {
		"gaul", "norici-tribe",
		"teuton", "austria",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-800, "gaul", "norici-tribe", -- Hallstatt culture in southern Germany and adjacent areas c. 800-400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 87.
		-15, "latin", "rome", -- Noricum acquired by Rome in 15 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		507, "goth", "ostrogoth-tribe", -- political situation in 507-534 in Europe; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		919, "teuton", "holy-rome", -- Duchy of Bavaria within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "austria" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		-15, "latin", "rome",
		919, "teuton", "bavaria" -- Duchy of Bavaria within the Holy Roman Empire; political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-800, "gaul"
	},
	Regions = {"cisleithania", "europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineProvince("Upper Lusatia", {
	World = "earth",
	CulturalNames = {
		"teuton", "Upper Lusatia"
	},
--	SettlementLocation = {520, 109}, -- Bautzen
	Claims = {
		"suebi", "suebi-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		161, "suebi", "suebi-tribe", -- The area was inhabited by the Suebi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1560, "teuton", "austria", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1635, "teuton", "saxony" -- Saxony acquired Upper Lusatia in 1635; Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 6.
	},
	HistoricalCultures = {
		161, "teuton"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Upper Saxony", {
	World = "earth",
	CulturalNames = {
		"teuton", "Upper Saxony" -- Obersachsen
	},
--	SettlementLocation = {515, 109}, -- Leipzig
	Claims = {
		"suebi", "hermunduri-tribe",
		"suebi", "suebi-tribe",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-264, "suebi", "hermunduri-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "suebi", "suebi-tribe", -- The area was inhabited by the Suebi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-264, "teuton",
		874, "slav" -- The land between the Upper Elbe and the Saale was inhabited by the Sorbs in 874; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
	},
	HistoricalModifiers = {
		1409, "upgrade-university", true, -- University founded in Leipzig in 1409; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
--		1846, "upgrade-college", true -- Bergakademie Freiberg existent in Chemnitz in 1846; Source: Silvia Fernanda de Mendonça Figueirôa, "Ciência e tecnologia no Brasil Imperial: Guilherme Schüch, Barão de Capanema (1824-1908)", 2005, p. 443.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("Varmland", {
	World = "earth",
	CulturalNames = {
		"norse", "Värmland"
	},
--	SettlementLocation = {518, 86}, -- Karlstad
	Claims = {
		"norse", "swede-tribe"
	},
	HistoricalOwners = {
		-264, "norse", "swede-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "norse", "sweden" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "norse"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineProvince("Venetia", {
	World = "earth",
	CulturalNames = {
		"latin", "Venetia"
	},
	Claims = {
		"basque", "castelnovian-tribe",
		"basque", "sauveterrian-tribe",
		"latin", "venetian-tribe",
--		"italian", "venice"
	},
	HistoricalOwners = {
		-6500, "basque", "sauveterrian-tribe", -- The Monteval de Sora site (in San Vito di Cadore, Belluno) belonged to the Sauveterrian culture c. 6500 BC and to the Castelnovian culture c. 5500 BC); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 170.
		-5500, "basque", "castelnovian-tribe",
		-500, "latin", "venetian-tribe", -- Situation of Italy in (apparently) 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		-191, "latin", "rome", -- Cisalpine Gaul acquired by Rome in 191 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		919, "italian", "venice" -- Duchy of Venice; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalClaims = {
		-191, "latin", "rome"
	},
	HistoricalCultures = {
		-6500, "basque",
		-500, "latin"
	},
	HistoricalModifiers = {
		1204, "upgrade-university", true, -- University founded in Vicenza in 1204; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1222, "upgrade-university", true, -- University founded in Padua in 1222; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1318, "upgrade-university", true, -- University founded in Treviso in 1318; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1353, "upgrade-university", true -- University founded in Cividale in 1353; Source: "Atlas de História Mundial", 2001, p. 144.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineProvince("Vinnytska", {
	World = "earth",
	CulturalNames = {
		"slav", "Vinnyts'ka"
	},
--	SettlementLocation = {561, 116}, -- Vinnytsya
	Claims = {
		"goth", "bastarnae-tribe",
		"persian", "navari-tribe"
	},
	HistoricalOwners = {
		-264, "persian", "navari-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "goth", "bastarnae-tribe", -- The area was inhabited by the Bastarnae in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "slav", "poland" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-264, "persian",
		161, "goth"
	},
	Regions = {"eurasia", "europe"}
})

DefineProvince("Vojvodina", {
	World = "earth",
--	SettlementLocation = {536, 127}, -- Novi Sad
	Claims = {
		"minoan", "starcevo-tribe"
	},
	HistoricalOwners = {
		-6000, "minoan", "starcevo-tribe", -- The Starčevo culture began c. 6000 BC (they were presumably named after the site of Starčevo, in Vojvodina); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 177.
		107, "latin", "rome", -- Dacia acquired by Rome in 107 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		275, "", "", -- Dacia lost by Rome in 275 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1560, "turkish", "turkey" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		107, "latin", "rome"
	},
	HistoricalCultures = {
		-6000, "minoan"
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Wales", {
	World = "earth",
	CulturalNames = {
		"welsh", "Wales"
	},
	FactionCulturalNames = {
		"english", "england", "Wales"
	},
--	SettlementLocation = {470, 109}, -- Cardiff
	Claims = {
		"basque", "bellbeaker-tribe",
		"briton", "silures-tribe",
		"welsh", "powys" -- Powys encompassed the area between the upper Severn and the Dee rivers; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
	},
	HistoricalOwners = {
		-7000, "basque", "bellbeaker-tribe", -- Bell Beaker culture existed in Normandy and the southwestern parts of Great Britain between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-27, "briton", "silures-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		613, "welsh", "powys", -- at some point between 613 and 616, the king of Powys was defeated by the Bernicians at Chester, so the kingdom must have existed by then; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-7000, "basque",
		-27, "celt"
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	HistoricalSettlementBuildings = {
		161, "unit-latin-barracks", true -- Legionary base present in Isca Silurum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Wallachia", {
	World = "earth",
	CulturalNames = {
		"latin", "Southern Lower Dacia"
	},
--	SettlementLocation = {554, 129}, -- Bucharest
	Claims = {
--		"romanian", "wallachia",
		"minoan", "paintedware-tribe",
		"thracian", "daci-tribe",
		"thracian", "getae-tribe"
	},
	HistoricalOwners = {
		-7000, "minoan", "paintedware-tribe", -- Balkan Painted Pottery / Impressed Cardial Pottery culture existed in Transylvania and Wallachia between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-336, "thracian", "getae-tribe", -- Macedonian Empire and environs in 336-323 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 18-19.
		107, "latin", "rome", -- Dacia acquired by Rome in 107 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "thracian", "daci-tribe", -- The area was inhabited by the Daci (and the Roxolani) in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		200, "goth", "visigoth-tribe", -- The western goths had migrated to the area of modern Romania / ancient Dacia in about 200 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
--		275, "", "", -- Dacia lost by Rome in 275 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		397, "", "", -- The Visigoths migrated to the Western Balkans in 397 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 45.
		1560, "romanian", "wallachia" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		107, "latin", "rome"
	},
	HistoricalCultures = {
		-7000, "minoan",
		-336, "thracian",
		200, "goth"
	},
	Regions = {"europe", "west-and-central-europe"}
})

DefineProvince("Wessex", {
	World = "earth",
	FactionCulturalNames = {
		"anglo-saxon", "angle-tribe", "Wessex",
		"english", "england", "Wessex"
	},
--	SettlementLocation = {476, 110}, -- Winchester
	Claims = {
		"basque", "bellbeaker-tribe",
		"briton", "regni-tribe",
		"english", "england"
	},
	HistoricalOwners = {
		-7000, "basque", "bellbeaker-tribe", -- Bell Beaker culture existed in Normandy and the southwestern parts of Great Britain between 7000 and 2000 BC; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-27, "briton", "regni-tribe", -- British tribes (apparently) in the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "teuton", "saxon-tribe", -- by 526 AD the Anglo-Saxons had become masters of most of Roman Britannia; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		-7000, "basque",
		-27, "celt",
		526, "teuton"
	},
	HistoricalClaims = {
		43, "latin", "rome"
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("West Galicia", {
	World = "earth",
	CulturalNames = {
		"teuton", "Westgalizien"
	},
--	SettlementLocation = {543, 110}, -- Lublin
	Claims = {
		"slav", "venedae-tribe",
		"slav", "poland"
	},
	HistoricalOwners = {
		-264, "slav", "venedae-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "goth", "vandal-tribe", -- The area was inhabited by the Vandali in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "slav", "poland" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-264, "slav",
		161, "goth"
	},
	Regions = {"europe", "poland", "west-and-central-europe"}
})

DefineProvince("Westphalia", {
	World = "earth",
	CulturalNames = {
		"teuton", "Westphalia" -- Westfalen
	},
--	SettlementLocation = {500, 109}, -- Düsseldorf
	Claims = {
		"frankish", "sugambri-tribe",
		"teuton", "westphalia",
		"teuton", "holy-rome"
	},
	HistoricalOwners = {
		-264, "frankish", "sugambri-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "teuton", "cherusci-tribe", -- The area was inhabited by the Cherusci in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "teuton", "holy-rome", -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1648, "teuton", "westphalia" -- Political situation in Central Europe in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalClaims = {
		919, "teuton", "saxony" -- Part of the Duchy of Saxony within the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-264, "teuton"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Werden during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Corvey during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineProvince("White Russia", {
	World = "earth",
	CulturalNames = {
		"slav", "White Russia"
	},
--	SettlementLocation = {559, 102}, -- Minsk
	Claims = {
		"finnish", "fenni-tribe",
		"slav", "venedae-tribe",
		"slav", "poland"
	},
	HistoricalOwners = {
		161, "finnish", "fenni-tribe", -- Northern Belarus was inhabited by the Fenni in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
--		161, "slav", "venedae-tribe", -- Southern Belarus was inhabited by the Venedi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1560, "slav", "poland", -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalCultures = {
		161, "finnish",
	},
	Regions = {"eurasia", "europe"}
})

DefineProvince("Wurtemberg", {
	World = "earth",
	CulturalNames = {
		"teuton", "Württemberg"
	},
--	SettlementLocation = {506, 117}, -- Stuttgart
	Claims = {
		"suebi", "alamanni-tribe",
		"teuton", "swabia", -- Part of the Duchy of Swabia in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		"teuton", "wurtemberg",
		"teuton", "holy-rome"
	},
	HistoricalSettlementBuildings = {
		768, "unit-teuton-temple", true, -- Monastery or abbey existent in Hirsau during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		768, "unit-teuton-temple", true -- Monastery or abbey existent in Ellwangen during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	HistoricalModifiers = {
		1416, "upgrade-university", true -- University founded in Tubingen in 1416; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineProvince("York", {
	World = "earth",
	FactionCulturalNames = {
		"anglo-saxon", "angle-tribe", "Deira",
		"english", "england", "York"
	},
	Claims = {
		"briton", "brigantes-tribe",
		"anglo-saxon", "dere-tribe", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
		"english", "england",
		"anglo-saxon", "northumbria"
	},
	HistoricalOwners = {
		-- The Star Carr site (in Yorkshire, England) underwent two occupation periods in the middle of the 9th millenium BC; in the site were found microliths (i.e. arrowheads), barbed antler points, moose bones, wild cattle bones, red and roe deer bones, pine marten bones, fox bones, beaver bones, remains of birds such as the red-breasted-merganser, red-throated diver and great crested grebe, water chestnuts, bog bean, fat hen, nettle and hazelnuts; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 146.
		-- Occupation of the Star Carr site (in North Yorkshire, England) occurred from c. 8700 BC to c. 8400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 154.
		-264, "briton", "brigantes-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		43, "latin", "rome", -- Britannia acquired by Rome in 43 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		500, "anglo-saxon", "dere-tribe", -- The Dere (a collection of Anglian peoples) were in possession of York in 500 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
		588, "anglo-saxon", "bernicia", -- according to tradition, Æthelric of Bernicia acquired the kingdom of Deira upon its king Ælle's death in 588 AD; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
		654, "anglo-saxon", "northumbria", -- Northumbria unified by Oswiu of Bernicia in 654
		1560, "english", "england" -- Political situation in Europe in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalClaims = {
		43, "latin", "rome",
		588, "anglo-saxon", "deira" -- since their king died in this year, the kingdom existed then
	},
	HistoricalCultures = {
		-264, "briton",
		500, "teuton"
	},
	HistoricalModifiers = {
		1905, "upgrade-university", true -- University founded in Sheffield in 1905; Source: David Thomson, "Europe Since Napoleon", 1966, p. 449.
	},
	Regions = {"british-isles", "england", "europe", "northwest-europe", "west-and-central-europe"}
})

DefineProvince("Zealand", {
	World = "earth",
	CulturalNames = {
		"norse", "Sjaelland"
	},
--	SettlementLocation = {515, 97}, -- Copenhagen
	Claims = {
		"basque", "ertebolle-tribe",
		"basque", "funnelbeaker-tribe",
		"basque", "maglemose-tribe",
		"basque", "kongemose-tribe",
		"germanic", "skeldung-tribe",
		"goth", "herulian-tribe",
		"norse", "dane-tribe"
	},
	HistoricalOwners = {
		-9000, "basque", "maglemose-tribe", -- Maglemose culture arose in Zealand in 9000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
		-6400, "basque", "kongemose-tribe", -- Maglemose cultured ended and Kongemose culture arose in Zealand in 6400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
		-- Tybrind Vig (in the coast of the Danish island of Fyn) begins being occupied around 5500 BC (it pertained to the Ertebolle culture); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 142.
		-5400, "basque", "ertebolle-tribe", -- Kongemose cultured ended and Ertebolle culture arose in Zealand in 5400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
		-3950, "basque", "funnelbeaker-tribe", -- Ertebolle cultured ended and Funnel Beaker culture arose in Zealand in 3950 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 37.
		-2800, "germanic", "skeldung-tribe", -- Funnel Beaker culture ended in Zealand in 2800 BC and the Corded Ware culture (neolithic) began; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 38.
		-- Corded Ware culture (neolithic) ends in Zealand in 2400 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 38.
		-264, "", "", -- remove Proto-Germanics
		-27, "goth", "herulian-tribe", -- political situation in Europe (presumably) at the time of Augustus; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		526, "norse", "dane-tribe", -- Danes were in Zealand in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		919, "norse", "denmark" -- Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalCultures = {
		-9000, "basque",
		-2800, "germanic",
		-27, "goth",
		526, "norse"
	},
	HistoricalModifiers = {
		1478, "upgrade-university", true -- University founded in Copenhagen in 1478; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

-- The ancient Sarmatia was known as "Swithiod the Great" or "Swithiod the Cold" to the Norse; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 216.
