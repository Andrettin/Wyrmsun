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

DefineSettlement("berlin", {
	Name = "Berlin",
	MapTemplate = "earth",
	Position = {4145, 853},
	Major = true,
	CulturalNames = {
		"teuton", "Berlin"
	},
	Cores = {
		"semnone-tribe",
		"suebi-tribe",
		"brandenburg"
	},
	HistoricalOwners = {
		-264, "semnone-tribe" -- Berlin's area was territory of the Sueves/Semnones in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("bernstorf", { -- Bernstorf, Bavaria
	Name = "Bernstorf",
	MapTemplate = "earth",
	Position = {4104, 946},
	CulturalNames = {
		"teuton", "Bernstorf"
	},
	HistoricalOwners = {
		-1600, "celtic-cimmerian-tribe",
		-1400, ""
	},
	HistoricalBuildings = {
		-1600, -1400, "watch-tower" -- a fortified settlement existed c. 1600-1400 BC in Bernstorf (Bavaria); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 29.
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("bremen", {
	Name = "Bremen",
	MapTemplate = "earth",
	Position = {4044, 841},
	Major = true,
	CulturalNames = {
		"teuton", "Bremen"
	},
	Cores = {
		"chauci-tribe",
		"bremen",
		"holy-rome"
	},
	HistoricalOwners = {
		-264, "chauci-tribe", -- Bremen's area was territory of the Chauci in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "saxon-tribe" -- Bremen's area was a Saxon possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		785, 0, "temple" -- Willehad became bishop of Bremen in 785; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 176.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("cologne", {
	Name = "Cologne",
	MapTemplate = "earth",
	Position = {3998, 887},
	Major = true,
	CulturalNames = {
		"french", "Cologne",
		"latin", "Colonia Agrippina", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39; Source: "Ancient Warfare VII.6", 2013, p. 7.
		"teuton", "Cologne" -- "Köln"
	},
	HistoricalOwners = {
		-50, "rome", -- Gaul (where Colonia Agrippina was located) was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		486, "francia", -- Cologne was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia", -- Colonia Agrippina went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1815, "prussia" -- Cologne was a possession of the Kingdom of Prussia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-50, 1815, "town-hall",
		-- Colonia Agrippina was a Roman provincial capital in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, 486, "guard-tower", -- Legionary base present in a location near Colonia Agrippina in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		395, 1815, "temple", -- Cologne was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- Archbishopric existent in Cologne during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		1388, 1815, "university", -- University founded in Cologne in 1388; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1815, 0, "stronghold", -- Cologne possessed a fortress in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1815, 0, "temple",
		1815, 0, "university"
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("eichstatt", {
	Name = "Eichstatt",
	MapTemplate = "earth",
	Position = {4092, 926},
	CulturalNames = {
		"teuton", "Eichstatt" -- "Eichstätt"
	},
	HistoricalOwners = {
		526, "thuringian-tribe", -- Eichstätt's area was a Thuringian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		741, 0, "temple" -- the bishopric of Eichstätt existed as of 741; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 175.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("eining", {
	Name = "Eining",
	MapTemplate = "earth",
	Position = {4104, 936},
	CulturalNames = {
		"teuton", "Eining"
	},
	HistoricalOwners = {
		173, "rome",
		179, ""
	},
	HistoricalUnits = {
		173, "unit-teuton-swordsman", 5000, "rome", -- the "Legio III Italica" was stationed at the location of Eining from c. 173 to 179; Source: "Ancient Warfare VII.6", 2013, p. 25.
		179, "unit-teuton-swordsman", 0, "rome"
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("eresburg", {
	Name = "Eresburg",
	MapTemplate = "earth",
	Position = {4043, 879},
	CulturalNames = {
		"frankish", "Eresburg",
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
	Position = {4054, 802},
	Major = true,
	CulturalNames = {
		"teuton", "Flensburg"
	},
	Cores = {
		"angle-tribe"
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

DefineSettlement("freising", {
	Name = "Freising",
	MapTemplate = "earth",
	Position = {4114, 947},
	CulturalNames = {
		"teuton", "Freising"
	},
	HistoricalOwners = {
		526, "bavarian-tribe", -- Freising's area was in Bavarian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		739, 0, "temple" -- Freising became a bishopric in 739; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 169.
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("fulda", {
	Name = "Fulda",
	MapTemplate = "earth",
	Position = {4058, 895},
	CulturalNames = {
		"teuton", "Fulda"
	},
	HistoricalOwners = {
		526, "thuringian-tribe", -- Fulda's area was in Thuringian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		744, 0, "temple" -- the abbey of Fulda was founded on 744 by Boniface; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 172.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("hanover", {
	Name = "Hanover",
	MapTemplate = "earth",
	Position = {4063, 855},
	Major = true,
	CulturalNames = {
		"teuton", "Hanover" -- "Hannover"
	},
	Cores = {
		"lombard-tribe",
		"brunswick",
		"holy-rome"
	},
	HistoricalOwners = {
		-264, "lombard-tribe" -- Hanover's area was territory of the Lombards in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("kiel", {
	Name = "Kiel",
	MapTemplate = "earth",
	Position = {4068, 811},
	Major = true,
	CulturalNames = {
		"teuton", "Kiel"
	},
	Cores = {
		"hersing-tribe",
		"teuton-tribe"
	},
	HistoricalOwners = {
		-1600, "hersing-tribe", -- Hersir's tribe, from the Norse myth of Rig; in the myths, there was a boggy ground between Jarl's hall and that of Hersir
		-264, "teuton-tribe", -- Kiel's area was territory of the Teutones in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1815, "denmark" -- Kiel was a possession of the Kingdom of Denmark in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-1600, 0, "town-hall",
		-1600, 1815, "farm",
		-1600, 1815, "farm",
		-1600, 1815, "farm",
		-1600, 1815, "barracks",
		-1600, 1815, "smithy",
		-1600, 1815, "lumber-mill",
		-1600, 1815, "watch-tower",
		-1600, 1815, "watch-tower"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("konnenberg", {
	Name = "Konnenberg",
	MapTemplate = "earth",
	Position = {4045, 857},
	CulturalNames = {
		"teuton", "Konnenberg"
	},
	HistoricalOwners = {
		526, "saxon-tribe" -- Konnenberg was in Saxon possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		526, 0, "farm"
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

DefineSettlement("lubeck", {
	Name = "Lubeck",
	MapTemplate = "earth",
	Position = {4083, 821},
	Major = true,
	CulturalNames = {
		"teuton", "Lubeck" -- "Lübeck"
	},
	Cores = {
		"saxon-tribe"
	},
	HistoricalOwners = {
		-264, "saxon-tribe" -- Lübeck's area was territory of the Saxons in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("magdeburg", {
	Name = "Magdeburg",
	MapTemplate = "earth",
	Position = {4104, 861},
	Major = true,
	CulturalNames = {
		"teuton", "Magdeburg"
	},
	Cores = {
		"cherusci-tribe",
		"magdeburg",
		"holy-rome"
	},
	HistoricalOwners = {
		-264, "cherusci-tribe" -- Magdeburg's area was territory of the Cherusci in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalBuildings = {
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("mainz", {
	Name = "Mainz",
	MapTemplate = "earth",
	Position = {4029, 911},
	Major = true,
	CulturalNames = {
		"french", "Mayence",
		"latin", "Mogontiacum", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
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
		-50, 161, "town-hall",
		161, 0, "stronghold", -- Legionary base present in Mogontiacum in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, 0, "barracks",
		395, 0, "temple", -- Mayence was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- in 747 Wynfrith/Boniface settled the seat of his archbishopric at Mainz; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 169.
		1476, 0, "university" -- University founded in Mainz in 1476; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		-- Mayence possessed a fortress in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("mittelberg", {
	Name = "Mittelberg",
	MapTemplate = "earth",
	Position = {4101, 882},
	CulturalNames = {
		"teuton", "Mittelberg"
	},
	HistoricalOwners = {
		-1600, "celtic-cimmerian-tribe",
		-1599, ""
	},
	HistoricalBuildings = {
		-1600, -1599, "watch-tower" -- the fortified settlement of Mittelberg (near Nebra) existed in 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 27.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("munster", {
	Name = "Münster",
	MapTemplate = "earth",
	Position = {3992, 865},
	Major = true,
	CulturalNames = {
		"teuton", "Munster" -- "Münster"
	},
	Cores = {
--		"westphalia"
	},
	HistoricalOwners = {
		-264, "sugambri-tribe", -- Münster's area was territory of the Sugambri in the 264 BC-180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1815, "prussia" -- Münster was a part of the Kingdom of Prussia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
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

DefineSettlement("paderborn", {
	Name = "Paderborn",
	MapTemplate = "earth",
	Position = {4033, 873},
	CulturalNames = {
		"teuton", "Paderborn"
	},
	HistoricalOwners = {
		919, "saxony" -- Paderborn was a part of the Duchy of Saxony (within the Holy Roman Empire) in the 919-1125 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalBuildings = {
		919, 1614, "farm",
		1614, 0, "university" -- University founded in Paderborn in 1614; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("passau", {
	Name = "Passau",
	MapTemplate = "earth",
	Position = {4149, 945},
	CulturalNames = {
		"teuton", "Passau"
	},
	HistoricalOwners = {
		526, "bavarian-tribe", -- Passau's area was in Bavarian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		739, 0, "temple" -- Passau became a bishopric in 739; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 169.
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("regensburg", {
	Name = "Regensburg",
	MapTemplate = "earth",
	Position = {4116, 932},
	CulturalNames = {
		"latin", "Regina Castra",
		"teuton", "Regensburg"
		-- Ratisbon
	},
	HistoricalOwners = {
		170, "rome", -- a Roman camp at Regensburg-Kumpfmühl was destroyed during the First Marcomannic War in 172; it thus likely existed at the beginning of that war; Source: "Ancient Warfare VII.6", 2013, p. 25.
		172, "",
		175, "rome",
		526, "bavarian-tribe", -- Ratisbon was in Bavarian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1815, "bavaria" -- Regensburg was a possession of the Kingdom of Bavaria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		170, 172, "guard-tower",
		175, 526, "guard-tower", -- The Legio III Italica began building in 175 the fortress of Castra Regina near where the Regensburg-Kumpfmühl camp had been; Source: "Ancient Warfare VII.6", 2013, p. 25.
		526, 0, "town-hall",
		739, 0, "temple" -- Regensburg became a bishopric in 739; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 169.
	},
	HistoricalUnits = {
		170, "unit-teuton-swordsman", 375, "rome", -- the "Cohors II Aquitanorum equitata civium Romanorum" (a mixed unit, which contained circa 375 auxiliary infantry and 125 cavalry) was stationed at Regensburg-Kumpfmühl when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		170, "unit-teuton-ritter", 125, "rome",
		172, "unit-teuton-swordsman", 0, "rome",
		172, "unit-teuton-ritter", 0, "rome"
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSettlement("rostock", {
	Name = "Rostock",
	MapTemplate = "earth",
	Position = {4126, 817},
	Major = true,
	CulturalNames = {
		"teuton", "Rostock"
	},
	Cores = {
		"mecklenburg"
	},
	HistoricalOwners = {
	},
	HistoricalBuildings = {
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("scheidungen", {
	Name = "Scheidungen",
	MapTemplate = "earth",
	Position = {4107, 873},
	CulturalNames = {
		"teuton", "Scheidungen"
	},
	HistoricalOwners = {
		526, "thuringian-tribe" -- Scheidungen was in Thuringian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		526, 0, "farm"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
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
		"frankish", "Syburg",
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

DefineSettlement("tauberbischofsheim", {
	Name = "Tauberbischofsheim",
	MapTemplate = "earth",
	Position = {4044, 922},
	CulturalNames = {
		"teuton", "Tauberbischofsheim"
	},
	HistoricalOwners = {
		526, "francia", -- Tauberbischofsheim's area was a part of Francia in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		754, 0, "temple" -- the abbey of Tauberbischofsheim existed as of 754; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 173.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("trier", {
	Name = "Trier",
	MapTemplate = "earth",
	Position = {3993, 917},
	Major = true,
	CulturalNames = {
		"french", "Treves", -- "Trèves"
		"teuton", "Trier"
	},
	HistoricalOwners = {
		395, "rome", -- Trèves was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		486, "francia", -- Trèves was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia", -- Treveri went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1815, "prussia" -- Trier was a possession of the Kingdom of Prussia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		395, 0, "town-hall",
		395, 0, "temple", -- Trèves was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- Archbishopric existent in Trier during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		1454, 0, "university" -- University founded in Trier in 1454; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})

DefineSettlement("worms", {
	Name = "Worms",
	MapTemplate = "earth",
	Position = {4033, 920},
	Major = true,
	CulturalNames = {
		"latin", "Borbetomagus", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
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
		395, 0, "town-hall",
		395, 0, "temple" -- Worms was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})
