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
--      (c) Copyright 2017-2021 by Andrettin
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

DefineSite("amiens", {
	Name = "Amiens",
	MapTemplate = "old_earth",
	Position = {3888, 913},
	CulturalNames = {
		"celt", "Samarobriva",
		"frankish", "Ambiani",
		"french", "Amiens", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
		"gaul", "Samarobriva",
		"latin", "Samarobriva" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
	},
	HistoricalOwners = {
		395, "rome", -- Amiens' area was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		{486, 12, 30}, "francia", -- Amiens' area became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "salia", -- Ambiani went to Chilperich when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Amiens was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"france", "gaul"}
})

DefineSite("antibes", {
	Name = "Antibes",
	MapTemplate = "old_earth",
	Position = {3995, 1056},
	CulturalNames = {
		"frankish", "Antipolis",
		"french", "Antibes"
	},
	HistoricalOwners = {
		561, "burgundia", -- Antipolis went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Antibes' area was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"france", "gaul"}
})

DefineSite("arles", {
	Name = "Arles",
	MapTemplate = "old_earth",
	Position = {3948, 1053},
	CulturalNames = {
		"frankish", "Arelatum",
		"french", "Arles"
	},
	HistoricalOwners = {
		395, "rome", -- Arles was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		480, "visigothia", -- Arles became a part of the Kingdom of the Visigoths in 480; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		526, "ostrogothia", -- Arles was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		561, "burgundia", -- Arelatum went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Arles was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Arles was the seat of a metropolitanate (archbishopric) in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"france", "gaul"}
})

DefineSite("autun", {
	Name = "Autun",
	MapTemplate = "old_earth",
	Position = {3933, 981},
	CulturalNames = {
		"frankish", "Augustodunum",
		"french", "Autun"
	},
	HistoricalOwners = {
		481, "burgundy", -- Autun was a Burgundian possession in the 481-532 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "burgundy", -- Autun was a part of the Kingdom of the Burgundians in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia", -- Augustodunum went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Autun's area was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		481, 0, "farm"
	},
	Regions = {"france", "gaul"}
})

DefineSite("avignon", {
	Name = "Avignon",
	MapTemplate = "old_earth",
	Position = {3952, 1045},
	CulturalNames = {
		"frankish", "Avinio",
		"french", "Avignon"
	},
	HistoricalOwners = {
		561, "austrasia", -- Avinio went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "papal-states" -- Avignon was a Papal possession in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		561, 1303, "farm",
		1303, 0, "university" -- University founded in Avignon in 1303; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"france", "gaul"}
})

DefineSite("cambrai", {
	Name = "Cambrai",
	MapTemplate = "old_earth",
	Position = {3917, 903},
	CulturalNames = {
		"french", "Cambrai"
	},
	Cores = {
		"france"
	},
	HistoricalOwners = {
		481, "frank-tribe", -- Cambray's area was a Frankish possession as of 481; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		{486, 12, 30}, "francia", -- Cambray was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1560, "spain", -- Cambray was a Spanish possession about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1668, "france" -- Cambray became a French possession in 1668-1679; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalBuildings = {
		{486, 12, 30}, 0, "farm"
	},
	Regions = {"france", "gaul"}
})

DefineSite("chalons", {
	Name = "Chalons",
	MapTemplate = "old_earth",
	Position = {3947, 941},
	CulturalNames = {
		"french", "Chalons" -- "Châlons"
	},
	HistoricalOwners = {
		395, "rome", -- Châlons was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		{486, 12, 30}, "francia", -- Châlons' area became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia", -- Châlons' area went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Châlons was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 0, "farm"
	},
	Regions = {"france", "gaul"}
})

DefineSite("clermont-ferrand", {
	Name = "Clermont-Ferrand",
	MapTemplate = "old_earth",
	Position = {3909, 1006},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"frankish", "Arverni",
		"french", "Clermont-Ferrand"
	},
	HistoricalOwners = {
		-71, "arverni-tribe", -- the Suebic king Ariovistus entered Gaul at the request of the Arverni and the Sequani to fight the Aedui in 71 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
		481, "visigothia", -- Clermont-Ferrand's area was a Visigothic possession in the 481-507 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "visigothia", -- Clermont was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia", -- Arverni went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Clermont-Ferrand was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		-71, 0, "town_hall"
		-- Chief court of the salt tax existent in Clermont-Ferrand in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	HistoricalUnits = {
		-71, -61, "unit-teuton-swordsman", 6000, "arverni-tribe",
		-71, -61, "unit-teuton-archer", 3000, "arverni-tribe"
	},
	Regions = {"france", "gaul"}
})

DefineSite("embrun", {
	Name = "Embrun",
	MapTemplate = "old_earth",
	Position = {3985, 1033},
	CulturalNames = {
		"french", "Embrun"
	},
	HistoricalOwners = {
		486, "burgundy", -- Embrun's area was a part of the Kingdom of the Burgundians in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia", -- Embrun's area went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Embrun's area was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		768, 0, "temple" -- Archbishopric existent in Embrun during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"france", "gaul"}
})

DefineSite("ferrieres", {
	Name = "Ferrieres",
	MapTemplate = "old_earth",
	Position = {3898, 956},
	CulturalNames = {
		"french", "Ferrieres" -- "Ferrières"
	},
	HistoricalOwners = {
		782, "francia",
		1789, "france" -- Ferrières' area was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		782, 0, "temple" -- Alcuin moved from England to the court of Charlemagne in 782, and received the abbey of Ferrières; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 188-189.
	},
	Regions = {"france", "gaul"}
})

DefineSite("langres", {
	Name = "Langres",
	MapTemplate = "old_earth",
	Position = {3958, 963},
	CulturalNames = {
		"frankish", "Lingones",
		"french", "Langres"
	},
	HistoricalOwners = {
		486, "burgundy", -- Langres was a part of the Kingdom of the Burgundians in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia", -- Lingones went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Langres was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		486, 0, "farm"
	},
	Regions = {"france", "gaul"}
})

DefineSite("metz", {
	Name = "Metz",
	MapTemplate = "old_earth",
	Position = {3981, 931},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"frankish", "Mettis",
		"french", "Metz"
	},
	Cores = {
		"france"
	},
	HistoricalOwners = {
		395, "rome", -- Metz was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "frank-tribe", -- Metz was a Frankish possession as of 481; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		{486, 12, 30}, "francia", -- Metz was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia", -- Mettis went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1648, "france" -- Metz was a French possession about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalBuildings = {
		395, 0, "town_hall",
		395, 0, "temple" -- Metz was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"france", "gaul"}
})

DefineSite("montpellier", {
	Name = "Montpellier",
	MapTemplate = "old_earth",
	Position = {3924, 1054},
	CulturalNames = {
		"french", "Montpellier"
	},
	HistoricalOwners = {
		1560, "france" -- Montpellier's area was a part of the Kingdom of France in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
	},
	HistoricalBuildings = {
		1250, 0, "university" -- University existent in Montpellier in 1250; Source: "Atlas de História Mundial", 2001, p. 144.
		-- Cour des aides and chief court of the salt tax existent in Montpellier in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"france", "gaul"}
})

DefineSite("narbonne", {
	Name = "Narbonne",
	MapTemplate = "old_earth",
	Position = {3913, 1062},
	CulturalNames = {
		"frankish", "Namnetes",
		"french", "Narbonne"
	},
	HistoricalOwners = {
		395, "rome", -- Narbonne was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "visigothia", -- Narbonne was a Visigothic possession in the 481-537/559 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "visigothia", -- Narbonne was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1789, "france" -- Narbonne was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Narbonne was the seat of a metropolitanate (archbishopric) in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- Chief court of the salt tax existent in Narbonne in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"france", "gaul"}
})

DefineSite("nice", {
	Name = "Nice",
	MapTemplate = "old_earth",
	Position = {4006, 1051},
	CulturalNames = {
		"celt", "Nicaea",
		"frankish", "Nicea",
		"french", "Nice",
		"gaul", "Nicaea",
		"latin", "Nicaea"
	},
	HistoricalOwners = {
		395, "rome", -- Nicaea was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		480, "visigothia", -- Nice's area became a part of the Kingdom of the Visigoths in 480; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		526, "ostrogothia", -- Nice was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		561, "burgundia", -- Nicea went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1477, "savoy", -- Nice's area was a Savoyard possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1494, "savoy", -- Nice was a possession of the Duchy of Savoy in 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1789, "sardinia" -- Nice's area was a possession of the Kingdom of Sardinia in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Nicaea was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"france", "gaul"}
})

DefineSite("perpignan", {
	Name = "Perpignan",
	MapTemplate = "old_earth",
	Position = {3907, 1077},
	CulturalNames = {
		"french", "Perpignan"
	},
	HistoricalOwners = {
		1560, "spain", -- Perpignan was a part of the Kingdom of Spain in 1560 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 118-119.
		1789, "france" -- Perpignan was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		1349, 0, "university" -- University founded in Perpignan in 1349; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		-- Parlement or conseil souverain and prévôt des maréchaux existent in Perpignan in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"france", "gaul"}
})

DefineSite("poitiers", {
	Name = "Poitiers",
	MapTemplate = "old_earth",
	Position = {3845, 990},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"frankish", "Pictavis",
		"french", "Poitiers" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalOwners = {
		395, "rome", -- Poitiers was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "visigothia", -- Poitiers was a Visigothic possession in the 481-507 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "visigothia", -- Poitiers was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		526, "francia", -- Poitiers' area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		561, "neustria", -- Pictavis went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Poitiers was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 0, "town_hall",
		395, 0, "temple", -- Poitiers was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		1431, 0, "university" -- University founded in Poitiers in 1431; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"france", "gaul"}
})

DefineSite("reims", {
	Name = "Reims",
	MapTemplate = "old_earth",
	Position = {3930, 926},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"celt", "Durocortorum",
		"frankish", "Remi",
		"french", "Reims",
		"gaul", "Durocortorum",
		"latin", "Durocortorum" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-50, "rome", -- Durocortorum was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		{486, 12, 30}, "francia", -- Reims became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		526, "francia", -- Reims was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		561, "austrasia", -- Chlothar (Frankish king) died in 561, and Reims/Remi went to his son Sigibert, becoming his capital; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328; Gregory of Tours, "History of the Franks", IV.22; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Reims was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		-50, 0, "town_hall",
		395, 0, "temple", -- Reims was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- Archbishopric existent in Reims during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		1547, 0, "university" -- University founded in Reims in 1547; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"france", "gaul"}
})

DefineSite("rodez", {
	Name = "Rodez",
	MapTemplate = "old_earth",
	Position = {3895, 1030},
	CulturalNames = {
		"frankish", "Ruthenis",
		"french", "Rodez"
	},
	HistoricalOwners = {
		561, "austrasia", -- Ruthenis went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Rodez was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		561, 0, "farm"
		-- Chief court of the salt tax existent in Rodez in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"france", "gaul"}
})

DefineSite("rouen", {
	Name = "Rouen",
	MapTemplate = "old_earth",
	Position = {3871, 926},
	CulturalNames = {
		"frankish", "Rotomagus",
		"french", "Rouen"
	},
	HistoricalOwners = {
		395, "rome", -- Rouen was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		{486, 12, 30}, "francia", -- Rouen's area became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "neustria", -- Rotomagus went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Rouen was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 768, "farm",
		768, 0, "temple" -- Archbishopric existent in Rouen during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"france", "gaul"}
})

DefineSite("sens", {
	Name = "Sens",
	MapTemplate = "old_earth",
	Position = {3911, 958},
	CulturalNames = {
		"frankish", "Senonae",
		"french", "Sens"
	},
	HistoricalOwners = {
		395, "rome", -- Sens was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		{486, 12, 30}, "francia", -- Sens' area became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia", -- Senonae went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Sens' area was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 768, "farm",
		768, 0, "temple" -- Archbishopric existent in Sens in the 768-814 AD period; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"france", "gaul"}
})

DefineSite("soissons", {
	Name = "Soissons",
	MapTemplate = "old_earth",
	Position = {3915, 923},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"french", "Soissons"
	},
	HistoricalOwners = {
		395, "rome", -- Soissons was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		{486, 12, 30}, "francia", -- Soissons became a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		526, "francia", -- Soissons was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		561, "salia", -- Chlothar (Frankish king) died in 561, and Soissons went to his son Chilperich; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328; Gregory of Tours, "History of the Franks", IV.22.
		1789, "france" -- Soissons was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 0, "town_hall",
		395, 0, "temple" -- Soissons was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"france", "gaul"}
})

DefineSite("strassburg", {
	Name = "Strasbourg",
	MapTemplate = "old_earth",
	Position = {4010, 945},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"celt", "Argentoratum",
		"frankish", "Argentoratum",
		"french", "Strasbourg",
		"gaul", "Argentoratum",
		"latin", "Argentoratum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"teuton", "Strassburg"
	},
	HistoricalOwners = {
		-61, "suebi_tribe", -- the Battle of Magetobria, in which Ariovistus defeated a number of Gaulish tribes, and afterwards established himself in Alsace and began lording over the Gauls, occurred in 61 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 139; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 218.
		-58, "", -- in 58 BC Caesar fought Ariovistus' Suebi and the latter were terribly beaten; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 219.
		-54, "tribocci-tribe", -- the Tribocci held the lands between Strasbourg and Artzenheim (apparently) in 54 BC; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 222.
		-50, "rome", -- Gaul (where Argentoratum was located) was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		413, "burgundy", -- Argentoratum/Strassburg conquered by the Burgundians in 413 AD, after which they founded a kingdom that lasted until 436; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
		436, "",
		481, "alamanni-tribe", -- Strasburg was an Alamannic possession in the 481-536 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		506, "francia", -- the Alemanni lands (Alsace, Baden, Wurtemberg, Augsburg and etc.) were conquered by the Franks in 506; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		561, "austrasia", -- Argentoratum went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		919, "holy-rome", -- Duchy of Swabia within the Holy Roman Empire; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1789, "france" -- Strasburg was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		-61, 161, "town_hall",
		161, 0, "stronghold", -- Legionary base present in Argentorate in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, 0, "barracks",
		395, 0, "temple" -- Strassburg was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- Bureau de finance and chambre du domaine existent in Strasbourg in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		-- Prévôt des maréchaux existent in Strasbourg in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	HistoricalUnits = {
		-61, -58, "unit-suebi-swordsman", 135000, "suebi_tribe" -- 135,000 (15,000 + 120,000) Germanic warriors participated in Ariovistus' invasion of Gaul; Source: Caius Julius Caesar, "Caesar's Commentaries", 1915, Section XXXI.
		-- in 58 BC Caesar fought Ariovistus' Suebi and the latter were terribly beaten; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 219.
	},
	Regions = {"france", "gaul"}
})

DefineSite("toul", {
	Name = "Toul",
	MapTemplate = "old_earth",
	Position = {3969, 948},
	CulturalNames = {
		"french", "Toul"
	},
	HistoricalOwners = {
		395, "rome", -- Toul was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "frank-tribe", -- Toul's area was a Frankish possession as of 481; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		{486, 12, 30}, "francia", -- Toul's area was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia", -- Toul's area went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Toul was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Toul was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"france", "gaul"}
})

DefineSite("toulon", {
	Name = "Toulon",
	MapTemplate = "old_earth",
	Position = {3974, 1065},
	CulturalNames = {
		"frankish", "Tolo",
		"french", "Toulon"
	},
	HistoricalOwners = {
		561, "burgundia", -- Tolo went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Toulon was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"france", "gaul"}
})

DefineSite("tours", {
	Name = "Tours",
	MapTemplate = "old_earth",
	Position = {3857, 971},
	CulturalNames = {
		"frankish", "Turones",
		"french", "Tours" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalOwners = {
		395, "rome", -- Tours was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "visigothia", -- Tours was a Visigothic possession in the 481-507 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "visigothia", -- Tours was a part of the Kingdom of the Visigoths in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		526, "francia", -- Tours' area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		561, "neustria", -- Turones went to Charibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		796, "francia",
		1789, "france" -- Tours was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Tours was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- Archbishopric existent in Tours during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		-- Alcuin received the greater abbey of St. Martin at Tours from Charlemagne in 796; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 188-189.
	},
	Regions = {"france", "gaul"}
})

DefineSite("uzes", {
	Name = "Uzes",
	MapTemplate = "old_earth",
	Position = {3941, 1044},
	CulturalNames = {
		"frankish", "Ucetia",
		"french", "Uzes" -- "Uzès"
	},
	HistoricalOwners = {
		561, "austrasia", -- Ucetia went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Uzès' area was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"france", "gaul"}
})

DefineSite("valence", {
	Name = "Valence",
	MapTemplate = "old_earth",
	Position = {3952, 1026},
	CulturalNames = {
		"frankish", "Valentia",
		"french", "Valence"
	},
	HistoricalOwners = {
		561, "burgundia", -- Valentia went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Valence was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		561, 1459, "farm",
		1459, 0, "university" -- University founded in Valence in 1459; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		-- Chief court of the salt tax existent in Valence in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, p. 147.
	},
	Regions = {"france", "gaul"}
})

DefineSite("vienne", {
	Name = "Vienne",
	MapTemplate = "old_earth",
	Position = {3959, 1012},
	CulturalNames = {
		"french", "Vienne"
	},
	HistoricalOwners = {
		395, "rome", -- Vienne was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "burgundy", -- Vienne's area was a Burgundian possession in the 481-532 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		486, "burgundy", -- Vienne was a part of the Kingdom of the Burgundians in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia", -- Vienne's area went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Vienne was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Vienne was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- Archbishopric existent in Vienne during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"france", "gaul"}
})
