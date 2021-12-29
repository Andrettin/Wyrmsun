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

DefineSite("augsburg", {
	Name = "Augsburg",
	MapTemplate = "old_earth",
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
	Regions = {"germany"}
})

DefineSite("bernstorf", { -- Bernstorf, Bavaria
	Name = "Bernstorf",
	MapTemplate = "old_earth",
	Position = {4104, 946},
	CulturalNames = {
		"teuton", "Bernstorf"
	},
	HistoricalOwners = {
		-1600, "celtic-cimmerian-tribe",
		-1400, ""
	},
	HistoricalBuildings = {
		-1600, -1400, "watch_tower" -- a fortified settlement existed c. 1600-1400 BC in Bernstorf (Bavaria); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 29.
	},
	Regions = {"germany"}
})

DefineSite("bremen", {
	Name = "Bremen",
	MapTemplate = "old_earth",
	Position = {4044, 841},
	BaseUnitType = "unit_settlement_site",
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
		-264, 0, "town_hall",
		785, 0, "temple" -- Willehad became bishop of Bremen in 785; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 176.
	},
	Regions = {"germany"}
})

DefineSite("eichstatt", {
	Name = "Eichstatt",
	MapTemplate = "old_earth",
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
	Regions = {"germany"}
})

DefineSite("eining", {
	Name = "Eining",
	MapTemplate = "old_earth",
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
	Regions = {"germany"}
})

DefineSite("eresburg", {
	Name = "Eresburg",
	MapTemplate = "old_earth",
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
		775, 1815, "guard_tower"
	},
	Regions = {"germany"}
})

DefineSite("freising", {
	Name = "Freising",
	MapTemplate = "old_earth",
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
	Regions = {"germany"}
})

DefineSite("fulda", {
	Name = "Fulda",
	MapTemplate = "old_earth",
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
	Regions = {"germany"}
})

DefineSite("konnenberg", {
	Name = "Konnenberg",
	MapTemplate = "old_earth",
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
	Regions = {"germany"}
})

DefineSite("konstanz", {
	Name = "Konstanz",
	MapTemplate = "old_earth",
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
	Regions = {"germany"}
})

DefineSite("magdeburg", {
	Name = "Magdeburg",
	MapTemplate = "old_earth",
	Position = {4104, 861},
	BaseUnitType = "unit_settlement_site",
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
		-264, 0, "town_hall"
	},
	Regions = {"germany"}
})

DefineSite("mittelberg", {
	Name = "Mittelberg",
	MapTemplate = "old_earth",
	Position = {4101, 882},
	CulturalNames = {
		"teuton", "Mittelberg"
	},
	HistoricalOwners = {
		-1600, "celtic-cimmerian-tribe",
		-1599, ""
	},
	HistoricalBuildings = {
		-1600, -1599, "watch_tower" -- the fortified settlement of Mittelberg (near Nebra) existed in 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 27.
	},
	Regions = {"germany"}
})

DefineSite("munster", {
	Name = "Munster",
	MapTemplate = "old_earth",
	Position = {3992, 865},
	BaseUnitType = "unit_settlement_site",
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
		-264, 0, "town_hall"
	},
	Regions = {"germany"}
})

DefineSite("nuremberg", {
	Name = "Nuremberg",
	MapTemplate = "old_earth",
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
	Regions = {"germany"}
})

DefineSite("passau", {
	Name = "Passau",
	MapTemplate = "old_earth",
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
	Regions = {"germany"}
})

DefineSite("regensburg", {
	Name = "Regensburg",
	MapTemplate = "old_earth",
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
		170, 172, "guard_tower",
		175, 526, "guard_tower", -- The Legio III Italica began building in 175 the fortress of Castra Regina near where the Regensburg-Kumpfmühl camp had been; Source: "Ancient Warfare VII.6", 2013, p. 25.
		526, 739, "farm",
		739, 0, "temple" -- Regensburg became a bishopric in 739; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 169.
	},
	HistoricalUnits = {
		170, 172, "unit-teuton-swordsman", 375, "rome", -- the "Cohors II Aquitanorum equitata civium Romanorum" (a mixed unit, which contained circa 375 auxiliary infantry and 125 cavalry) was stationed at Regensburg-Kumpfmühl when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		170, 172, "unit-teuton-ritter", 125, "rome"
	},
	Regions = {"germany"}
})

DefineSite("scheidungen", {
	Name = "Scheidungen",
	MapTemplate = "old_earth",
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
	Regions = {"germany"}
})

DefineSite("straubing", {
	Name = "Straubing",
	MapTemplate = "old_earth",
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
		170, 172, "guard_tower", -- a Roman double camp at Straubing was destroyed during the First Marcomannic War in 172; it likely existed at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		1815, 0, "farm"
	},
	HistoricalUnits = {
		170, 172, "unit-teuton-swordsman", 500, "rome", -- the "Cohors II Raetorum" (a unit containing 500 infantry) was stationed at Straubing when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
		170, 172, "unit-teuton-archer", 1000, "rome" -- the "Cohors I Flavia Canathenorum milliaria sagittariorum" (a unit containing 1,000 Syrian archers) was stationed at Straubing when it was attacked and destroyed in 172, during the First Marcomannic War; it likely was stationed there at the beginning of that war as well; Source: "Ancient Warfare VII.6", 2013, p. 25.
	},
	Regions = {"germany"}
})

DefineSite("syburg", {
	Name = "Syburg",
	MapTemplate = "old_earth",
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
		775, 1815, "guard_tower"
	},
	Regions = {"germany"}
})

DefineSite("tauberbischofsheim", {
	Name = "Tauberbischofsheim",
	MapTemplate = "old_earth",
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
	Regions = {"germany"}
})

DefineSite("worms", {
	Name = "Worms",
	MapTemplate = "old_earth",
	Position = {4026, 922},
	BaseUnitType = "unit_settlement_site",
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
		395, 0, "town_hall",
		395, 0, "temple" -- Worms was the seat of a bishopric in 395; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 42-43.
	},
	Regions = {"gaul", "germany"}
})

DefineSite("zulpich", {
	Name = "Zulpich",
	MapTemplate = "old_earth",
	Position = {3996, 896},
	CulturalNames = {
		"teuton", "Zulpich" -- "Zülpich"
	},
	HistoricalOwners = {
		481, "francia", -- Zülpich's area was a Frankish possession as of 481; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
		{486, 12, 30}, "francia", -- Zülpich was a part of the Kingdom of the Franks in 486; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 50-51.
		1815, "prussia" -- Zülpich's area was part of the Kingdom of Prussia in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		{486, 12, 30}, 0, "farm"
	},
	Regions = {"gaul", "germany"}
})
