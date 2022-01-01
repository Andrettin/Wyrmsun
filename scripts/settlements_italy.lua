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

DefineSite("aleria", {
	Name = "Aleria",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("aquileia", {
	Name = "Aquileia",
	MapTemplate = "old_earth",
	Position = {4143, 1004},
	BaseUnitType = "unit_settlement_site",
	CulturalNames = {
		"latin", "Aquileia" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 26-27, 29; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		-184, "rome", -- Aquileia founded as a colony in 184 BC; Source: William R. Shepherd, "Historical Atlas", 1911, p. 29.
		1815, "austria" -- Aquileia's area was a part of the Empire of Austria in 1815; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	},
	HistoricalBuildings = {
		-184, 0, "town_hall"
	},
	Regions = {"italy"}
})

DefineSite("ariminum", {
	Name = "Ariminum",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("brindisi", {
	Name = "Brindisi",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("cosa", {
	Name = "Cosa",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("cremona", {
	Name = "Cremona",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("firmum", {
	Name = "Firmum",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("florence", {
	Name = "Florence",
	MapTemplate = "old_earth",
	Position = {4095, 1054},
	BaseUnitType = "unit_settlement_site",
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
		-750, 0, "town_hall"
	},
	Regions = {"italy"}
})

DefineSite("hatria", {
	Name = "Hatria",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("luni-sul-mignone", {
	Name = "Luni sul Mignone",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("modena", {
	Name = "Modena",
	MapTemplate = "old_earth",
	Position = {4089, 1032},
	BaseUnitType = "unit_settlement_site",
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
		-218, 0, "town_hall"
	},
	Regions = {"modena"}
})

DefineSite("novum-castrum", {
	Name = "Novum Castrum",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("oderzo", {
	Name = "Oderzo",
	MapTemplate = "old_earth",
	Position = {4122, 1005},
	CulturalNames = {
		"italian", "Oderzo", -- Source: "Ancient Warfare VII.6", 2013, p. 7.
		"latin", "Opitergium" -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 26-27; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalOwners = {
		161, "rome" -- Opitergium was in existence in the 161-180 AD period, and under Roman ownership; Source: "Ancient Warfare VII.6", 2013, p. 7.
	},
	HistoricalBuildings = {
		161, 1815, "town_hall"
	},
	Regions = {"italy"}
})

DefineSite("paestum", {
	Name = "Paestum",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("poggiomarino", {
	Name = "Poggiomarino",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("sena-gallica", {
	Name = "Sena Gallica",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})

DefineSite("spoletum", {
	Name = "Spoletum",
	MapTemplate = "old_earth",
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
	Regions = {"italy"}
})
