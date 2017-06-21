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
--      (c) Copyright 2017 by Andrettin
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

DefineSettlement("amiens", {
	Name = "Amiens",
	MapTemplate = "earth",
	Position = {3888, 913},
	CulturalNames = {
		"frankish", "Ambiani",
		"french", "Amiens"
	},
	HistoricalOwners = {
		561, "salia" -- Ambiani went to Chilperich when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("antibes", {
	Name = "Antibes",
	MapTemplate = "earth",
	Position = {3995, 1056},
	CulturalNames = {
		"frankish", "Antipolis",
		"french", "Antibes"
	},
	HistoricalOwners = {
		561, "burgundia" -- Antipolis went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("autin", {
	Name = "Autin",
	MapTemplate = "earth",
	Position = {3933, 981},
	CulturalNames = {
		"frankish", "Augustodunum",
		"french", "Autin"
	},
	HistoricalOwners = {
		561, "burgundia" -- Augustodunum went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("avignon", {
	Name = "Avignon",
	MapTemplate = "earth",
	Position = {3952, 1045},
	CulturalNames = {
		"frankish", "Avinio",
		"french", "Avignon"
	},
	HistoricalOwners = {
		561, "austrasia" -- Avinio went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("clermont-ferrand", {
	Name = "Clermont-Ferrand",
	MapTemplate = "earth",
	Position = {3909, 1006},
	CulturalNames = {
		"frankish", "Arverni",
		"french", "Clermont-Ferrand"
	},
	HistoricalOwners = {
		561, "austrasia" -- Arverni went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("dijon", {
	Name = "Dijon",
	MapTemplate = "earth",
	Position = {3955, 994},
	CulturalNames = {
		"frankish", "Divio",
		"french", "Dijon"
	},
	HistoricalOwners = {
		561, "burgundia" -- Divio went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("langres", {
	Name = "Langres",
	MapTemplate = "earth",
	Position = {3958, 963},
	CulturalNames = {
		"frankish", "Lingones",
		"french", "Langres"
	},
	HistoricalOwners = {
		561, "burgundia" -- Lingones went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("lyon", {
	Name = "Lyon",
	MapTemplate = "earth",
	Position = {3947, 1006},
	CulturalNames = {
		"frankish", "Lugdunum",
		"french", "Lyon",
		"latin", "Lugdunum" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome", -- Lugdunum was a Roman provincial capital in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		486, "burgundy", -- Lyon was a part of the Kingdom of the Burgundians in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia" -- Lugdunum went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		161, 0, "town-hall",
		395, 0, "temple" -- Lyon was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- Archbishopric existent in Lyon during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("marseilles", {
	Name = "Marseilles",
	MapTemplate = "earth",
	Position = {3962, 1062},
	CulturalNames = {
		"frankish", "Massilia",
		"french", "Marseilles",
		"latin", "Massilia" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome", -- Massilia was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		480, "visigothia", -- Marseilles became a part of the Kingdom of the Visigoths in 480; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		526, "ostrogothia", -- Marseilles was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia", -- Massilia went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Marseilles was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		161, 395, "farm",
		395, 0, "temple" -- Marseilles was a part of the Roman Empire and was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("nice", {
	Name = "Nice",
	MapTemplate = "earth",
	Position = {4006, 1052},
	CulturalNames = {
		"frankish", "Nicea",
		"french", "Nice",
		"latin", "Nicaea"
	},
	HistoricalOwners = {
		395, "rome", -- Nicaea was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		526, "ostrogothia", -- Nice was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia", -- Nicea went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1494, "savoy" -- Nice was a possession of the Duchy of Savoy in 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Nicaea was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("orleans", {
	Name = "Orleans",
	MapTemplate = "earth",
	Position = {3884, 961},
	CulturalNames = {
		"frankish", "Aurehani",
		"french", "Orleans" -- "Orléans"
	},
	HistoricalOwners = {
		561, "burgundia" -- Chlothar (Frankish king) died in 561, and Orléans/Aurehani went to his son Gunthram; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328; Gregory of Tours, "History of the Franks", IV.22.
	},
	HistoricalBuildings = {
		561, 0, "town-hall"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("rodez", {
	Name = "Rodez",
	MapTemplate = "earth",
	Position = {3895, 1030},
	CulturalNames = {
		"frankish", "Ruthenis",
		"french", "Rodez"
	},
	HistoricalOwners = {
		561, "austrasia" -- Ruthenis went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("strassburg", {
	Name = "Strassburg",
	MapTemplate = "earth",
	Position = {4013, 948},
	CulturalNames = {
		"frankish", "Argentoratum",
		"french", "Strasbourg",
		"latin", "Argentoratum",
		"teuton", "Strassburg"
	},
	HistoricalOwners = {
		-50, "rome", -- Gaul (where Argentoratum was located) was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		413, "burgundy", -- Argentoratum/Strassburg conquered by the Burgundians in 413 AD, after which they founded a kingdom that lasted until 436; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
		436, "",
		481, "alamanni-tribe", -- political situation of the territories surrounding the Frankish realm in 481-814 AD; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		506, "francia", -- the Alemanni lands (Alsace, Baden, Wurtemberg, Augsburg and etc.) were conquered by the Franks in 506; Source: "Historica: Der Grosse Atlas der Weltgeschichte mit über 1200 Karten", 2009, p. 60.
		561, "austrasia", -- Argentoratum went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		919, "holy-rome", -- Duchy of Swabia within the Holy Roman Empire; Political situation in Central Europe in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1789, "france" -- Strasburg was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		-50, 161, "farm",
		161, 0, "stronghold", -- Legionary base present in Argentorate in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, 0, "barracks",
		395, 0, "temple" -- Strassburg was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- Bureau de finance and chambre du domaine existent in Strasburg in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
		-- Prévôt des maréchaux existent in Strasburg in 1789. Source: William R. Shepherd, Historical Atlas, 1911, p. 147.
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("toulon", {
	Name = "Toulon",
	MapTemplate = "earth",
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
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("tournai", {
	Name = "Tournai",
	MapTemplate = "earth",
	Position = {3917, 896},
	CulturalNames = {
		"frankish", "Tornacum",
		"french", "Tournai"
	},
	HistoricalOwners = {
		561, "salia" -- Tornacum went to Chilperich when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("troyes", {
	Name = "Troyes",
	MapTemplate = "earth",
	Position = {3923, 952},
	CulturalNames = {
		"frankish", "Trecae",
		"french", "Troyes"
	},
	HistoricalOwners = {
		561, "burgundia" -- Trecae went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("uzes", {
	Name = "Uzes",
	MapTemplate = "earth",
	Position = {3941, 1044},
	CulturalNames = {
		"frankish", "Ucetia",
		"french", "Uzes" -- "Uzès"
	},
	HistoricalOwners = {
		561, "austrasia" -- Ucetia went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("valence", {
	Name = "Valence",
	MapTemplate = "earth",
	Position = {3952, 1026},
	CulturalNames = {
		"frankish", "Valentia",
		"french", "Valence"
	},
	HistoricalOwners = {
		561, "burgundia" -- Valentia went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})

DefineSettlement("vienne", {
	Name = "Vienne",
	MapTemplate = "earth",
	Position = {3959, 1012},
	CulturalNames = {
		"french", "Vienne"
	},
	HistoricalOwners = {
		395, "rome", -- Vienne was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		486, "burgundy", -- Vienne was a part of the Kingdom of the Burgundians in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "burgundia", -- Vienne's area went to Gunthram when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1789, "france" -- Vienne was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Vienne was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "france", "gaul", "west-and-central-europe"}
})
