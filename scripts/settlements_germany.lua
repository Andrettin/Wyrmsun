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
--      (c) Copyright 2017-2018 by Andrettin
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

DefineSite("augsburg", {
	Name = "Augsburg",
	MapTemplate = "earth",
	Position = {4090, 942},
	CulturalNames = {
		"latin", "Augusta Vindelicorum", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"teuton", "Augsburg" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	Cores = {
		"germany", -- Augsburg was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Augsburg was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		170, "rome", -- the Raetian provincial capital at Augsburg was destroyed during the First Marcomannic War in c. 172; it likely existed at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		172, "",
		1815, "bavaria" -- Augsburg was a possession of the Kingdom of Bavaria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		170, 172, "farm",
		1815, 0, "farm"
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSite("berlin", {
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
		"brandenburg",
		"germany" -- Berlin was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		-- "holy-rome" -- Berlin was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		-264, "semnone-tribe", -- Berlin's area was territory of the Sueves/Semnones in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1648, "brandenburg", -- Berlin was a Brandenburgian possession about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
		1815, "prussia" -- Berlin was a part of the Kingdom of Prussia in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("bernstorf", { -- Bernstorf, Bavaria
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

DefineSite("bremen", {
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
		"germany", -- Bremen was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Bremen was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		-264, "chauci-tribe", -- Bremen's area was territory of the Chauci in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		526, "saxon-tribe" -- Bremen's area was a Saxon possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall",
		785, 0, "temple" -- Willehad became bishop of Bremen in 785; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 176.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("cologne", {
	Name = "Cologne",
	MapTemplate = "earth",
	Position = {3992, 897},
	Major = true,
	CulturalNames = {
		"french", "Cologne",
		"latin", "Colonia Agrippina", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39; Source: "Ancient Warfare VII.6", 2013, p. 7.
		"teuton", "Cologne" -- "Köln"
	},
	Cores = {
		"germany", -- Cologne was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Cologne was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		-50, "rome", -- Gaul (where Colonia Agrippina was located) was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		481, "frank-tribe", -- Cologne was a Frankish possession as of 481; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		{486, 12, 30}, "francia", -- Cologne was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		561, "austrasia", -- Colonia Agrippina went to Sigibert when Chlotar I died in 561; Source: Gustav Droysen, "Droysens Allgemeiner Historischer Handatlas", 1886, p. 20.
		1815, "prussia" -- Cologne was a possession of the Kingdom of Prussia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-50, 1815, "town-hall",
		-- Colonia Agrippina was a Roman provincial capital in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		161, 486, "guard-tower", -- Legionary base present in a location near Colonia Agrippina in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		395, 0, "temple", -- Cologne was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		-- Archbishopric existent in Cologne during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		1388, 0, "university", -- University founded in Cologne in 1388; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
		1815, 0, "stronghold" -- Cologne possessed a fortress in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("eichstatt", {
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

DefineSite("eining", {
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
		173, 179, "unit-teuton-swordsman", 5000, "rome" -- the "Legio III Italica" was stationed at the location of Eining from c. 173 to 179; Source: "Ancient Warfare VII.6", 2013, p. 25.
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSite("eresburg", {
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

DefineSite("flensburg", {
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

DefineSite("freising", {
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

DefineSite("fulda", {
	Name = "Fulda",
	MapTemplate = "earth",
	Position = {4058, 895},
	CulturalNames = {
		"teuton", "Fulda"
	},
	Cores = {
		"germany", -- Fulda was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Fulda was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		526, "thuringian-tribe", -- Fulda's area was in Thuringian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
	},
	HistoricalBuildings = {
		744, 0, "temple" -- the abbey of Fulda was founded on 744 by Boniface; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 172.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("hamburg", {
	Name = "Hamburg",
	MapTemplate = "earth",
	Position = {4065, 828},
	Major = true,
	CulturalNames = {
		"teuton", "Hamburg"
	},
	Cores = {
		"saxon-tribe",
		"germany", -- Hamburg was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Hamburg was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		-264, "saxon-tribe" -- Hamburg's area was territory of the Saxons in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("hanover", {
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
		"germany", -- Hanover was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Hanover was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		-264, "lombard-tribe" -- Hanover's area was territory of the Lombards in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("karlsruhe", {
	Name = "Karlsruhe",
	MapTemplate = "earth",
	Position = {4031, 940},
	Major = true,
	CulturalNames = {
		"teuton", "Karlsruhe"
	},
	Cores = {
		"baden",
		"germany", -- Karlsruhe was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Karlsruhe was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		-- the Suebic king Ariovistus entered Gaul at the request of the Arverni and the Sequani to fight the Aedui in 71 BC; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230.
		-71, "suebi-tribe" -- Ariovistus and his people came from the Upper Rhine; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 218.
	},
	HistoricalBuildings = {
		-71, 0, "town-hall"
	},
	HistoricalUnits = {
		-71, -61, "unit-suebi-swordsman", 15000, "suebi-tribe" -- 15,000 Germanics first entered Gaul with Ariovistus; Source: Caius Julius Caesar, "Caesar's Commentaries", 1915, Section XXXI.
		-- in 58 BC Caesar fought Ariovistus' Suebi and the latter were terribly beaten; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 219.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("kiel", {
	Name = "Kiel",
	MapTemplate = "earth",
	Position = {4068, 811},
	Major = true,
	CulturalNames = {
		"teuton", "Kiel"
	},
	Cores = {
		"hersing-tribe",
		"teuton-tribe",
		"germany", -- Kiel was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Kiel was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		-2800, "asa-tribe",
		-1600, "hersing-tribe", -- Hersir's tribe, from the Norse myth of Rig; in the myths, there was a boggy ground between Jarl's hall and that of Hersir
		-264, "teuton-tribe", -- Kiel's area was territory of the Teutones in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1815, "denmark" -- Kiel was a possession of the Kingdom of Denmark in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-1600, 0, "town-hall",
		-1600, 1815, "farm",
		-1600, 1815, "farm",
		-1600, 1815, "farm",
--		-1600, 1815, "barracks", -- remove to prevent them from training troops
--		-1600, 1815, "smithy", -- remove to prevent them from changing faction
		-1600, 1815, "lumber-mill",
		-1600, 1815, "watch-tower",
		-1600, 1815, "watch-tower"
	},
	HistoricalUnits = {
		-2800, {-2800, 12, 30}, "unit-germanic-worker", 5000, "asa-tribe",
		-2800, {-2800, 12, 30}, "unit-germanic-warrior", 2000, "asa-tribe",
		-2800, {-2800, 12, 30}, "unit-germanic-archer", 1000, "asa-tribe",
		-1600, -1599, "unit-germanic-warrior", 6000, "hersing-tribe",
		-1600, -1599, "unit-germanic-archer", 3000, "hersing-tribe"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("konnenberg", {
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

DefineSite("konstanz", {
	Name = "Konstanz",
	MapTemplate = "earth",
	Position = {4051, 965},
	CulturalNames = {
		"teuton", "Konstanz"
	},
	Cores = {
		"germany", -- Konstanz was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Konstanz was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
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

DefineSite("lubeck", {
	Name = "Lubeck",
	MapTemplate = "earth",
	Position = {4083, 821},
	Major = true,
	CulturalNames = {
		"teuton", "Lubeck" -- "Lübeck"
	},
	Cores = {
		"saxon-tribe",
		"germany", -- Lübeck was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Lübeck was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		-264, "saxon-tribe" -- Lübeck's area was territory of the Saxons in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("magdeburg", {
	Name = "Magdeburg",
	MapTemplate = "earth",
	Position = {4104, 861},
	Major = true,
	CulturalNames = {
		"teuton", "Magdeburg"
	},
	Cores = {
		"cherusci-tribe",
		"germany", -- Magdeburg was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"magdeburg",
		"holy-rome" -- Magdeburg was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		-264, "cherusci-tribe", -- Magdeburg's area was territory of the Cherusci in the 264 BC - 180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1648, "magdeburg", -- Magdeburg was a Magdeburgian possession about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
		1680, "brandenburg", -- Magdeburg became a Brandenburgian possession in 1680; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
		1815, "prussia" -- Magdeburg was a part of the Kingdom of Prussia in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("mainz", {
	Name = "Mainz",
	MapTemplate = "earth",
	Position = {4022, 913},
	Major = true,
	CulturalNames = {
		"french", "Mayence",
		"latin", "Mogontiacum", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"teuton", "Mainz"
	},
	Cores = {
		"germany", -- Mainz was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Mainz was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		-50, "rome", -- Mogontiacum was acquired by Rome in 50 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		481, "alamanni-tribe", -- Mayence was an Alamannic possession in the 481-496 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
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

DefineSite("mittelberg", {
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

DefineSite("munster", {
	Name = "Munster",
	MapTemplate = "earth",
	Position = {3992, 865},
	Major = true,
	CulturalNames = {
		"teuton", "Munster" -- "Münster"
	},
	Cores = {
		"germany", -- Münster was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome", -- Münster was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
--		"westphalia"
	},
	HistoricalOwners = {
		-264, "sugambri-tribe", -- Münster's area was territory of the Sugambri in the 264 BC-180 AD period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		481, "saxon-tribe", -- Münster's area was territory of the Saxons in the 481-804 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		1815, "prussia" -- Münster was a part of the Kingdom of Prussia in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("nuremberg", {
	Name = "Nuremberg",
	MapTemplate = "earth",
	Position = {4087, 930},
	CulturalNames = {
		"teuton", "Nuremberg" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	Cores = {
		"germany", -- Nuremberg was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Nuremberg was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		161, "hermunduri-tribe", -- the Hermunduri inhabited the area immediately north of the Danube in Bavaria, in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1815, "bavaria" -- Nuremberg was a possession of the Kingdom of Bavaria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		161, 0, "farm"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("oldenburg", {
	Name = "Oldenburg",
	MapTemplate = "earth",
	Position = {4027, 839},
	CulturalNames = {
		"teuton", "Oldenburg"
	},
	Cores = {
		"germany", -- Oldenburg was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Oldenburg was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		-3950, "funnelbeaker-tribe", -- Funnel Beaker culture existed in parts of Northern Europe between 7000 and 2000 BC; since the other source gives them as being present in Zealand in 3950 BC, let's place their beginnings at that date; Source: "Atlas de História Mundial", 2001, pp. 40-41.
		-264, "chauci-tribe", -- Tribes in Europe between 264 BC and 180 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "lombard-tribe", -- The area was inhabited by the Langobardi in 161-180 AD; Source: "Ancient Warfare VII.6", 2013, p. 7.
		919, "holy-rome" -- part of the Duchy of Saxony within the Holy Roman Empire in the 919-1125 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	},
	HistoricalBuildings = {
		-3950, -3000, "farm",
		-264, -0, "farm"
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("paderborn", {
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

DefineSite("passau", {
	Name = "Passau",
	MapTemplate = "earth",
	Position = {4149, 945},
	CulturalNames = {
		"teuton", "Passau"
	},
	HistoricalOwners = {
		526, "bavarian-tribe", -- Passau's area was in Bavarian possession in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1815, "bavaria" -- Passau was a part of the Kingdom of Bavaria in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		739, 0, "temple" -- Passau became a bishopric in 739; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 169.
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSite("regensburg", {
	Name = "Regensburg",
	MapTemplate = "earth",
	Position = {4116, 932},
	CulturalNames = {
		"latin", "Regina Castra",
		"teuton", "Regensburg"
		-- Ratisbon
	},
	Cores = {
		"germany", -- Regensburg was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Regensburg was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
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
		526, 739, "farm",
		739, 0, "temple" -- Regensburg became a bishopric in 739; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 169.
	},
	HistoricalUnits = {
		170, 172, "unit-teuton-swordsman", 375, "rome", -- the "Cohors II Aquitanorum equitata civium Romanorum" (a mixed unit, which contained circa 375 auxiliary infantry and 125 cavalry) was stationed at Regensburg-Kumpfmühl when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		170, 172, "unit-teuton-ritter", 125, "rome"
	},
	Regions = {"europe", "germany-netherlands", "roman-danube", "west-and-central-europe"}
})

DefineSite("rostock", {
	Name = "Rostock",
	MapTemplate = "earth",
	Position = {4126, 817},
	Major = true,
	CulturalNames = {
		"teuton", "Rostock"
	},
	Cores = {
		"germany",
		"mecklenburg"
	},
	HistoricalOwners = {
		1815, "mecklenburg" -- Rostock was part of the Grand Duchy of Mecklenburg-Schwerin in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		1419, 0, "university" -- University founded in Rostock in 1419; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("scheidungen", {
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

DefineSite("schwerin", {
	Name = "Schwerin",
	MapTemplate = "earth",
	Position = {4093, 827},
	CulturalNames = {
		"teuton", "Schwerin"
	},
	Cores = {
		"germany", -- Schwerin was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Schwerin was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
	},
	HistoricalBuildings = {
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("straubing", {
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
		170, 172, "unit-teuton-swordsman", 500, "rome", -- the "Cohors II Raetorum" (a unit containing 500 infantry) was stationed at Straubing when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		170, 172, "unit-teuton-archer", 1000, "rome" -- the "Cohors I Flavia Canathenorum milliaria sagittariorum" (a unit containing 1,000 Syrian archers) was stationed at Straubing when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("syburg", {
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

DefineSite("tauberbischofsheim", {
	Name = "Tauberbischofsheim",
	MapTemplate = "earth",
	Position = {4044, 922},
	CulturalNames = {
		"teuton", "Tauberbischofsheim"
	},
	HistoricalOwners = {
		526, "francia", -- Tauberbischofsheim's area was a part of Francia in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1815, "baden" -- Tauberbischofsheim was part of the Grand Duchy of Baden in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		754, 0, "temple" -- the abbey of Tauberbischofsheim existed as of 754; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 173.
	},
	Regions = {"europe", "germany-netherlands", "west-and-central-europe"}
})

DefineSite("trier", {
	Name = "Trier",
	MapTemplate = "earth",
	Position = {3993, 917},
	Major = true,
	CulturalNames = {
		"french", "Treves", -- "Trèves"
		"teuton", "Trier"
	},
	Cores = {
		"germany", -- Trier was part of the Germanic Confederation in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		"holy-rome" -- Trier was part of the Holy Roman Empire about 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	},
	HistoricalOwners = {
		395, "rome", -- Trèves was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		481, "frank-tribe", -- Trèves was a Frankish possession as of 481; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		{486, 12, 30}, "francia", -- Treves was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
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

DefineSite("worms", {
	Name = "Worms",
	MapTemplate = "earth",
	Position = {4026, 922},
	Major = true,
	CulturalNames = {
		"latin", "Borbetomagus", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 38-39.
		"teuton", "Worms"
	},
	Cores = {
		"germany",
		"holy-rome"
	},
	HistoricalOwners = {
		395, "rome", -- Worms was a part of the Roman Empire in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
		413, "burgundy", -- Borbetomagus/Worms conquered by the Burgundians in 413 AD, after which they founded a kingdom that lasted until 436; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
		481, "alamanni-tribe", -- Worms' area was Alamanni territory in the 481-496 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
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

DefineSite("zulpich", {
	Name = "Zulpich",
	MapTemplate = "earth",
	Position = {3996, 896},
	CulturalNames = {
		"teuton", "Zulpich" -- "Zülpich"
	},
	HistoricalOwners = {
		481, "frank-tribe", -- Zülpich's area was a Frankish possession as of 481; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		{486, 12, 30}, "francia", -- Zülpich was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1815, "prussia" -- Zülpich's area was part of the Kingdom of Prussia in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		{486, 12, 30}, 0, "farm"
	},
	Regions = {"europe", "gaul", "germany-netherlands", "west-and-central-europe"}
})
