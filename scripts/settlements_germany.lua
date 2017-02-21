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

DefineSettlement("augsburg", {
	Name = "Augsburg",
	MapTemplate = "earth",
	Position = {4090, 942},
	CulturalNames = {
		"latin", "Augusta Vindelicorum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"teuton", "Augsburg" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalOwners = {
		170, "rome", -- the Raetian provincial capital at Augsburg was destroyed during the First Marcomannic War in c. 172; it likely existed at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		172, "",
		1815, "bavaria" -- Augsburg was a possession of the Kingdom of Bavaria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		170, 172, "town-hall",
		1815, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("cologne", {
	Name = "Cologne",
	MapTemplate = "earth",
	Position = {3998, 887},
	CulturalNames = {
		"latin", "Colonia Agrippina",
		"teuton", "Cologne"
	},
	HistoricalOwners = {
		-50, "rome", -- Gaul (where Colonia Agrippina was located) was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "francia", -- Cologne was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia", -- Colonia Agrippina went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1815, "prussia" -- Cologne was a possession of the Kingdom of Prussia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-50, 161, "farm",
		161, 1815, "town-hall", -- Colonia Agrippina was a Roman provincial capital in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, 486, "guard-tower", -- Legionary base present in a location near Colonia Agrippina in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		395, 1815, "temple", -- Cologne was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		1815, 0, "stronghold", -- Cologne possessed a fortress in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1815, 0, "temple"
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("eresburg", {
	Name = "Eresburg",
	MapTemplate = "earth",
	Position = {4043, 879},
	CulturalNames = {
--		"frankish", "Eresburg",
		"teuton", "Eresburg"
	},
	HistoricalOwners = {
		775, "francia", -- a Frankish garrison was established by Charlemagne in Eresburg in 775; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 604.
		1815, ""
	},
	HistoricalBuildings = {
		775, 1815, "guard-tower"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("flensburg", {
	Name = "Flensburg",
	MapTemplate = "earth",
	Position = {4054, 801},
	CulturalNames = {
		"teuton", "Flensburg"
	},
	HistoricalOwners = {
		-264, "angle-tribe", -- tribes in Europe between 264 BC and 180 AD (Schleswig was inhabited by the Angles); Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1815, "denmark" -- Flensburg was a possession of the Kingdom of Denmark in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "scandinavia", "west-and-central-europe"}
})

DefineSettlement("kiel", {
	Name = "Kiel",
	MapTemplate = "earth",
	Position = {4069, 811},
	CulturalNames = {
		"teuton", "Kiel"
	},
	HistoricalOwners = {
		-1600, "hersing-tribe", -- Hersir's tribe, from the Norse myth of Rig; in the myths, there was a boggy ground between Jarl's hall and that of Hersir
		1815, "denmark" -- Kiel was a possession of the Kingdom of Denmark in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-1600, 1815, "town-hall",
		-1600, 1815, "farm",
		-1600, 1815, "farm",
		-1600, 1815, "farm",
		-1600, 1815, "barracks",
		-1600, 1815, "smithy",
		-1600, 1815, "lumber-mill",
		-1600, 1815, "watch-tower",
		-1600, 1815, "watch-tower",
		1815, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("konstanz", {
	Name = "Konstanz",
	MapTemplate = "earth",
	Position = {4051, 965},
	CulturalNames = {
		"teuton", "Konstanz"
	},
	HistoricalOwners = {
		561, "austrasia", -- Constantia went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1815, "baden" -- Constance was a possession of the Grand Duchy of Baden in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		561, 0, "farm"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("mainz", {
	Name = "Mainz",
	MapTemplate = "earth",
	Position = {4029, 911},
	CulturalNames = {
		"latin", "Mogontiacum",
		"teuton", "Mainz"
	},
	HistoricalOwners = {
		-50, "rome", -- Mogontiacum was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "alamanni-tribe", -- Mayence was in possession of the Alamanni in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		526, "francia", -- Mayence was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		561, "austrasia", -- Mogontiacum went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1815, "hesse" -- Mayence was a possession of the Grand Duchy of Hesse in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-50, 161, "farm",
		161, 395, "guard-tower", -- Legionary base present in Mogontiacum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		395, 0, "temple" -- Mayence was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- Mayence possessed a fortress in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("nuremberg", {
	Name = "Nuremberg",
	MapTemplate = "earth",
	Position = {4087, 930},
	CulturalNames = {
		"teuton", "Nuremberg" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalOwners = {
		161, "hermunduri-tribe", -- the Hermunduri inhabited the area immediately north of the Danube in Bavaria, in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1815, "bavaria" -- Nuremberg was a possession of the Kingdom of Bavaria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		161, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("regensburg", {
	Name = "Regensburg",
	MapTemplate = "earth",
	Position = {4116, 932},
	CulturalNames = {
		"latin", "Regina Castra",
		"teuton", "Regensburg"
	},
	HistoricalOwners = {
		170, "rome", -- a Roman camp at Regensburg-Kumpfmühl was destroyed during the First Marcomannic War in 172; it likely existed at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		172, "",
		175, "rome",
		526, "bavarian-tribe", -- Ratisbon was in Bavarian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1815, "bavaria" -- Regensburg was a possession of the Kingdom of Bavaria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		170, 172, "guard-tower",
		175, 526, "guard-tower", -- The Legio III Italica began building in 175 the fortress of Castra Regina near where the Regensburg-Kumpfmühl camp had been; Source: "Ancient Warfare VII.6", 2013, p. 25.
		526, 0, "town-hall"
	},
	HistoricalUnits = {
		170, "unit-teuton-swordsman", 375, "rome", -- the "Cohors II Aquitanorum equitata civium Romanorum" (a mixed unit, which contained circa 375 auxiliary infantry and 125 cavalry) was stationed at Regensburg-Kumpfmühl when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		170, "unit-teuton-ritter", 125, "rome",
		172, "unit-teuton-swordsman", 0, "rome",
		172, "unit-teuton-ritter", 0, "rome"
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("straubing", {
	Name = "Straubing",
	MapTemplate = "earth",
	Position = {4124, 934},
	CulturalNames = {
		"teuton", "Straubing" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalOwners = {
		170, "rome",
		172, "",
		1815, "bavaria" -- Straubing was a possession of the Kingdom of Bavaria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		170, 172, "guard-tower", -- a Roman double camp at Straubing was destroyed during the First Marcomannic War in 172; it likely existed at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		1815, 0, "farm"
	},
	HistoricalUnits = {
		170, "unit-teuton-swordsman", 500, "rome", -- the "Cohors II Raetorum" (a unit containing 500 infantry) was stationed at Straubing when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		170, "unit-teuton-archer", 1000, "rome", -- the "Cohors I Flavia Canathenorum milliaria sagittariorum" (a unit containing 1,000 Syrian archers) was stationed at Straubing when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		172, "unit-teuton-swordsman", 0, "rome",
		172, "unit-teuton-archer", 0, "rome"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("syburg", {
	Name = "Syburg",
	MapTemplate = "earth",
	Position = {4019, 876},
	CulturalNames = {
--		"frankish", "Syburg",
		"teuton", "Syburg"
	},
	HistoricalOwners = {
		775, "francia", -- a Frankish garrison was established by Charlemagne in Syburg in 775; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 604.
		1815, ""
	},
	HistoricalBuildings = {
		775, 1815, "guard-tower"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("trier", {
	Name = "Trier",
	MapTemplate = "earth",
	Position = {3993, 917},
	CulturalNames = {
--		"french", "Treves", -- "Trèves"
		"teuton", "Trier"
	},
	HistoricalOwners = {
		395, "rome", -- Trèves was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		486, "francia", -- Trèves was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia", -- Treveri went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1815, "prussia" -- Trier was a possession of the Kingdom of Prussia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		395, 0, "temple" -- Trèves was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("worms", {
	Name = "Worms",
	MapTemplate = "earth",
	Position = {4033, 920},
	CulturalNames = {
		"latin", "Borbetomagus",
		"teuton", "Worms"
	},
	HistoricalOwners = {
		395, "rome", -- Worms was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		413, "burgundy", -- Borbetomagus/Worms conquered by the Burgundians in 413 AD, after which they founded a kingdom that lasted until 436; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
		486, "alamanni-tribe", -- Worms was in possession of the Alamanni in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		526, "francia", -- Worms' area was a part of the Kingdom of the Franks in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		561, "austrasia", -- Worms' area went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1815, "hesse" -- Worms was a possession of the Grand Duchy of Hesse in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		395, 413, "temple", -- Worms was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		413, 436, "town-hall",
		413, 436, "temple",
		436, 0, "temple"
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})
