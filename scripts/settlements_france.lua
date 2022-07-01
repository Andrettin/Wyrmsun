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
--      (c) Copyright 2017-2022 by Andrettin
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

DefineSite("cambrai", {
	Name = "Cambrai",
	MapTemplate = "old_earth",
	Position = {3917, 903},
	CulturalNames = {
		"french", "Cambrai"
	},
	HistoricalOwners = {
		481, "francia", -- Cambray's area was a Frankish possession as of 481; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
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
