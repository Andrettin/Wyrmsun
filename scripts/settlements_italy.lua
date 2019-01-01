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
--      (c) Copyright 2017-2019 by Andrettin
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

DefineSite("aleria", {
	Name = "Aleria",
	MapTemplate = "earth",
	Position = {4055, 1090},
	CulturalNames = {
		"greek", "Alalia",
		"latin", "Aleria" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome", -- Aleria was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1789, "france" -- Aleria's area was a possession of the Kingdom of France in 1789; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 146-147.
	},
	HistoricalBuildings = {
		161, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("aquileia", {
	Name = "Aquileia",
	MapTemplate = "earth",
	Position = {4143, 1004},
	Major = true,
	CulturalNames = {
		"latin", "Aquileia" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 26-27, 29; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-184, "rome", -- Aquileia founded as a colony in 184 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1815, "austria" -- Aquileia's area was a part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-184, 0, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("ariminum", {
	Name = "Ariminum",
	MapTemplate = "earth",
	Position = {4123, 1044},
	CulturalNames = {
		"italian", "Rimini", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		"latin", "Ariminum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-268, "rome", -- Ariminum founded as a colony in 268 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "papal-states" -- Rimini was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-268, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("bologna", {
	Name = "Bologna",
	MapTemplate = "earth",
	Position = {4096, 1034},
	CulturalNames = {
		"italian", "Bologna",
		"latin", "Bononia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-189, "rome", -- Bononia founded as a colony in 189 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1477, "papal-states", -- Bologna was a Papal possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1494, "papal-states" -- Bologna was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-189, 1250, "farm",
		1250, 0, "university" -- University existent in Bologna in 1250; Source: "Atlas de História Mundial", 2001, p. 144.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("brindisi", {
	Name = "Brindisi",
	MapTemplate = "earth",
	Position = {4245, 1123},
	CulturalNames = {
		"italian", "Brindisi",
		"latin", "Brundisium" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome", -- Brundisium was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1494, "sicily", -- Brindisi was a possession of the Kingdom of the Two Sicilies about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1560, "spain" -- Brindisi was a Spanish possession about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
	},
	HistoricalBuildings = {
		161, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("caralis", {
	Name = "Caralis",
	MapTemplate = "earth",
	Position = {4047, 1155},
	CulturalNames = {
		"italian", "Cagliari",
		"latin", "Caralis" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome", -- Caralis was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1815, "sardinia" -- Caralis was part of the Kingdom of Sardinia in the 1815-1870 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 161.
	},
	HistoricalBuildings = {
		161, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("cosa", {
	Name = "Cosa",
	MapTemplate = "earth",
	Position = {4095, 1081},
	CulturalNames = {
		"latin", "Cosa" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-273, "rome", -- Cosa founded as a colony in 273 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1815, "tuscany" -- Cosa's area was part of the Grand Duchy of Tuscany in the 1815-1870 period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 161.
	},
	HistoricalBuildings = {
		-273, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("cremona", {
	Name = "Cremona",
	MapTemplate = "earth",
	Position = {4067, 1021},
	CulturalNames = {
		"italian", "Cremona",
		"latin", "Cremona", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		"teuton", "Cremona"
	},
	HistoricalOwners = {
		-218, "rome", -- Cremona founded as a colony in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "milan", -- Cremona was a possession of the Duchy of Milan about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "austria", -- Cremona was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1859, "sardinia" -- Cremona became a possession of Sardinia in 1859; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-218, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("firmum", {
	Name = "Firmum",
	MapTemplate = "earth",
	Position = {4151, 1064},
	CulturalNames = {
		"italian", "Fermo", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		"latin", "Firmum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-264, "rome", -- Firmum founded as a colony in 264 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "papal-states" -- Fermo was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-264, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("florence", {
	Name = "Florence",
	MapTemplate = "earth",
	Position = {4095, 1054},
	Major = true,
	CulturalNames = {
		"italian", "Florence",
		"latin", "Florentia" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-750, "etruscan-tribe", -- Florence's area was Etruscan territory in the 750-625 BC period; Source: William R. Shepherd, "Historical Atlas", 1926, p. 5.
		-264, "rome", -- Florence's area was a part of Roman territory in 264 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		161, "rome", -- Florentia was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1477, "florence", -- Florence was a Florentine possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1494, "florence" -- Florence was a possession of the Republic of Florence about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-750, 0, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("genoa", {
	Name = "Genoa",
	MapTemplate = "earth",
	Position = {4042, 1035},
	Major = true,
	CulturalNames = {
		"italian", "Genoa",
		"latin", "Genua" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
	},
	Cores = {
		"genoa"
	},
	HistoricalOwners = {
		-154, "rome", -- Genua became a Roman possession in 154 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1494, "genoa", -- Genoa was a possession of the Republic of Genoa about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "sardinia" -- Genoa was a possession of the Kingdom of Sardinia in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-154, 0, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("hatria", {
	Name = "Hatria",
	MapTemplate = "earth",
	Position = {4156, 1076},
	CulturalNames = {
		"italian", "Atri", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		"latin", "Hatria" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-298, "rome", -- Hatria founded as a colony in 298 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "sicily" -- Atri was part of the Kingdom of the Two Sicilies about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-298, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("luni-sul-mignone", {
	Name = "Luni sul Mignone",
	MapTemplate = "earth",
	Position = {4111, 1087},
	CulturalNames = {
		"italian", "Luni sul Mignone"
	},
	HistoricalOwners = {
		-1700, "latin-tribe",
		-1350, ""
	},
	HistoricalBuildings = {
		-1700, -1350, "farm" -- two rock-cut longhouses existed at Luni sul Mignone during the Italian Middle Bronze Age (c. 1700-1350 BC); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 34, 36.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("milan", {
	Name = "Milan",
	MapTemplate = "earth",
	Position = {4049, 1013},
	Major = true,
	CulturalNames = {
		"italian", "Milan",
		"latin", "Mediolanum", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"teuton", "Milan" -- Mailand
	},
	HistoricalOwners = {
		-191, "rome", -- Mediolanium became a Roman possession in 191 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1477, "milan", -- Milan was a Milanese possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1494, "milan", -- Milan was a possession of the Duchy of Milan about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1560, "spain", -- Milan was a Spanish possession about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
		1815, "austria", -- Milan was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1859, "sardinia" -- Milan became a possession of Sardinia in 1859; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-191, 0, "town-hall",
		768, 0, "temple", -- Archbishopric existent in Milan during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
		1565, 0, "university" -- University founded in Milan in 1565; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("modena", {
	Name = "Modena",
	MapTemplate = "earth",
	Position = {4089, 1032},
	Major = true,
	CulturalNames = {
		"italian", "Modena",
		"latin", "Mutina" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-183, "rome", -- Mutina founded as a colony in 183 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		-100, "rome", -- Mutina was a Roman possession about 100 BC; Source: William R. Shepherd, "Historical Atlas", 1926, p. 29.
		1477, "modena", -- Modena was a Modenese possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1494, "modena"
	},
	HistoricalBuildings = {
		-218, 0, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("naples", {
	Name = "Naples",
	MapTemplate = "earth",
	Position = {4163, 1116},
	Major = true,
	CulturalNames = {
		"greek", "Neapolis",
		"italian", "Naples",
		"latin", "Neapolis" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-264, "rome", -- Neapolis/Naples was a part of Roman territory in 264 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1204, "sicily", -- Naples was a part of the Kingdom of the Two Sicilies c. 1204; Source: William R. Shepherd, "Historical Atlas", 1911, p. 73.
		1494, "sicily", -- Naples was a possession of the Kingdom of the Two Sicilies about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1560, "spain" -- Naples was a Spanish possession about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
	},
	HistoricalBuildings = {
		-264, 0, "town-hall",
		1224, 0, "university" -- University founded in Naples in 1224; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("novum-castrum", {
	Name = "Novum Castrum",
	MapTemplate = "earth",
	Position = {4154, 1070},
	CulturalNames = {
		"latin", "Novum Castrum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-283, "rome", -- Novum Castrum founded as a colony in 283 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "papal-states" -- Novum Castrum's area was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-283, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("oderzo", {
	Name = "Oderzo",
	MapTemplate = "earth",
	Position = {4122, 1005},
	CulturalNames = {
		"italian", "Oderzo", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"latin", "Opitergium" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 26-27; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome" -- Opitergium was in existence in the 161-180 AD period, and under Roman ownership; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalBuildings = {
		161, 1815, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("paestum", {
	Name = "Paestum",
	MapTemplate = "earth",
	Position = {4181, 1127},
	CulturalNames = {
		"latin", "Paestum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-273, "rome" -- Paestum founded as a colony in 273 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalBuildings = {
		-273, 1494, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("palermo", {
	Name = "Palermo",
	MapTemplate = "earth",
	Position = {4141, 1181},
	Major = true,
	CulturalNames = {
		"greek", "Panormus",
		"italian", "Palermo",
		"latin", "Panormus" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 12.
	},
	HistoricalOwners = {
		-550, "phoenicia", -- Panormus was a Phoenician settlement c. 550 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		-241, "rome", -- Palermo's area was acquired by Rome in 241 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1494, "sicily", -- Palermo was part of the Kingdom of the Two Sicilies about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1560, "spain" -- Palermo was a Spanish possession about 1560; Source: William R. Shepherd, "Historical Atlas", 1926, pp. 118-119.
	},
	HistoricalBuildings = {
		-550, 0, "town-hall",
		1394, 0, "university" -- University founded in Palermo in 1394; Source: "The Cambridge Modern History Atlas", 1912, p. 9.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("piacenza", {
	Name = "Piacenza",
	MapTemplate = "earth",
	Position = {4056, 1028},
	CulturalNames = {
		"italian", "Piacenza",
		"latin", "Placentia" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-218, "rome", -- Placentia founded as a colony in 218 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "milan", -- Placentia was a possession of the Duchy of Milan about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "parma", -- Placentia was a possession of the Duchy of Parma in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
		1860, "sardinia" -- Placentia became a possession of Sardinia in 1860; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-218, 1248, "farm",
		1248, 0, "university" -- University founded in Piacenza in 1248; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("poggiomarino", {
	Name = "Poggiomarino",
	MapTemplate = "earth",
	Position = {4170, 1119},
	CulturalNames = {
		"italian", "Poggiomarino"
	},
	HistoricalOwners = {
		-1600, "samnite-tribe",
		-501, ""
	},
	HistoricalBuildings = {
		-1600, -501, "smithy" -- the settlement of Poggiomarino was inhabited continuously between the 16th and 6th centuries BC; due to environmental reasons the settlement had to be forsaken, at which point they founded the city of Pompeii; Poggiomarino was a major industrial center in southern central Italy; it contained a furnace for copper smelting and mold casts for making bronze objects; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, pp. 42-44.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("ravenna", {
	Name = "Ravenna",
	MapTemplate = "earth",
	Position = {4114, 1035},
	CulturalNames = {
		"italian", "Ravenna",
		"latin", "Ravenna" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome", -- Ravenna was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		526, "ostrogothia", -- Ravenna was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1477, "papal-states", -- Ravenna was a Papal possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1494, "papal-states" -- Ravenna was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		161, 768, "farm",
		768, 0, "temple" -- Archbishopric existent in Ravenna during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("rome", {
	Name = "Rome",
	MapTemplate = "earth",
	Position = {4126, 1096},
	Major = true,
	CulturalNames = {
		"italian", "Rome",
		"latin", "Rome" -- "Roma"; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-750, "latin-tribe", -- Latins present in Latium by 750-625 BC, and Rome was in existence as well; Source: William R. Shepherd, "Historical Atlas", 1911, p. 5.
		-500, "rome", -- Rome had been founded and was independent by 500 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		526, "ostrogothia", -- Rome was a part of the Kingdom of the Ostrogoths in 526; Source: William R. Shepherd, "Historical Atlas", 1911, p. 52.
		1494, "papal-states" -- Rome was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-750, 0, "town-hall",
		-192, 0, "dock", -- Mercantile docks were built at Rome in 192 BC and 174 BC; Source: Tenney Frank, "Mercantilism and Rome's Foreign Policy", 1913, p. 244.
		-40, 0, "temple", -- Temple of Jupiter Capitolinus, Temple of Jupiter Victor, Temple of Vesta, Temple of Fortunus and Temple of Aesculapius existed in Rome in c. 40 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 22-23.
--		-40, 0, "dock", -- Shipyards ("Navalia") existed in Rome in c. 40 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 22-23.
		-40, 0, "road", -- Roads existed in Rome in c. 40 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 22-23.
		1303, 0, "university" -- University founded in Rome in 1303; Source: William R. Shepherd, "Historical Atlas", 1923, p. 100.
	},
	HistoricalPopulation = {
		1600, 100000 -- Rome had a population of 100,000 in 1600; Source: Henry Kamen, "The Iron Century", p. 419.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("sena-gallica", {
	Name = "Sena Gallica",
	MapTemplate = "earth",
	Position = {4138, 1052},
	CulturalNames = {
		"italian", "Sinigaglia", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		"latin", "Sena Gallica" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-283, "rome", -- Sena Gallica founded as a colony in 283 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1494, "papal-states" -- Sinigaglia was a Papal possession about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-283, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("spoletum", {
	Name = "Spoletum",
	MapTemplate = "earth",
	Position = {4127, 1074},
	CulturalNames = {
		"latin", "Spoletum" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalOwners = {
		-240, "rome" -- Spoletum founded as a colony in 240 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
	},
	HistoricalBuildings = {
		-240, 0, "farm"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("syracuse", {
	Name = "Syracuse",
	MapTemplate = "earth",
	Position = {4184, 1204},
	Major = true,
	CulturalNames = {
		"greek", "Syracuse" -- "Syracusae"; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-212, "rome", -- Syracuse was acquired by Rome in 212 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1494, "sicily" -- Syracuse was part of the Kingdom of the Two Sicilies about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
	},
	HistoricalBuildings = {
		-212, 0, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("venice", {
	Name = "Venice",
	MapTemplate = "earth",
	Position = {4121, 1009},
	Major = true,
	CulturalNames = {
		"italian", "Venice",
		-- "teuton", "Venice" -- Venedig
	},
	HistoricalOwners = {
		-500, "venetian-tribe", -- Venice's area was territory of the Venetians in the 500-100 BC period; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		-222, "rome", -- Venice's area was acquired by Rome in 222 BC; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 34-35.
		1477, "venice", -- Venice was a Venetian possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1494, "venice", -- Venice was part of the Venetian Republic about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "austria" -- Venice was part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-500, 0, "town-hall"
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})

DefineSite("verona", {
	Name = "Verona",
	MapTemplate = "earth",
	Position = {4090, 1014},
	CulturalNames = {
		"italian", "Verona", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		"latin", "Verona" -- Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome", -- Verona was in existence and under Roman ownership in the 161-180 AD period; Source: "Ancient Warfare VII.6", 2013, p. 7.
		1477, "venice", -- Verona was a Venetian possession about 1477; Source: William R. Shepherd, "Historical Atlas", 1923, pp. 86-87.
		1494, "venice", -- Verona was a possession of the Venetian Republic about 1494; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 90-91.
		1815, "austria" -- Verona was a possession of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		161, 1815, "farm",
		1815, 0, "guard-tower" -- Verona had a fortress in the 1815-1866 period; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	Regions = {"europe", "italy", "west-and-central-europe"}
})
