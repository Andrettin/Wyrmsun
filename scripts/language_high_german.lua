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
--      (c) Copyright 2015 by Andrettin
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

DefineLanguageWord("Adel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Noble"},
	DerivesFrom = {"middle-high-german", "noun", "Adel"},
	NumberCaseInflections = {
		"singular", "genitive", "Adels"
	},
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Adelsberg"
})

DefineLanguageWord("Amboss", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Anvil"},
	Gender = "Masculine"
})

DefineLanguageWord("Arl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Arlberg"
})

DefineLanguageWord("Arnulf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Au", { -- Source: http://www.duden.de/rechtschreibung/Au_feuchte_Niederung
	Language = "high-german",
	Type = "noun",
	Meanings = {"Flat Terrain with Lush Meadows"},
	NumberCaseInflections = {
		"plural", "nominative", "Auen",
		"plural", "accusative", "Auen",
		"plural", "dative", "Auen",
		"plural", "genitive", "Auen"
	},
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Blumenau"
})

DefineLanguageWord("Bach", { -- Source: http://www.duden.de/rechtschreibung/Bach_Wasserlauf
	Language = "high-german",
	Type = "noun",
	Meanings = {"Stream"},
	DerivesFrom = {"middle-high-german", "noun", "Bach"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	NumberCaseInflections = {
		"singular", "genitive", "Baches", -- source also gives alternative form "Bachs"
		"plural", "nominative", "Bäche",
		"plural", "accusative", "Bäche",
		"plural", "dative", "Bächen",
		"plural", "genitive", "Bäche"
	},
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Mühlenbach"
})

DefineLanguageWord("Bad", { -- Source: http://www.duden.de/rechtschreibung/Bad
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bath", "Baths"},
	DerivesFrom = {"middle-high-german", "noun", "Bat"},
	NumberCaseInflections = {
		"singular", "genitive", "Bades", -- source also gives alternative form "Bads"
		"plural", "nominative", "Bäder",
		"plural", "accusative", "Bäder",
		"plural", "dative", "Bädern",
		"plural", "genitive", "Bäder"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Karlsbad"
})

DefineLanguageWord("Bär", { -- Source: http://www.duden.de/rechtschreibung/Baer_Raubtier
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bear"},
	DerivesFrom = {"old-high-german", "noun", "Bero"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	NumberCaseInflections = {
		"singular", "accusative", "Bären",
		"singular", "dative", "Bären",
		"singular", "genitive", "Bären",
		"plural", "nominative", "Bären",
		"plural", "accusative", "Bären",
		"plural", "dative", "Bären",
		"plural", "genitive", "Bären"
	},
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"terrain-hills"}, -- example: "Bärenberg"
})

DefineLanguageWord("Berg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Mountain", "Hill"},
	DerivesFrom = {"middle-high-german", "noun", "Berc"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	NumberCaseInflections = {
		"plural", "nominative", "Berge"
	},
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {
		"settlement", -- examples: "Adelsberg", "Lemberg", "Königsberg", "Spielberg"
		"province", -- example: "Vorarlberg" (Vorarlberg is a special case, however - ideally we should generate mountain names like "Arlberg", and then have the possibility of adding the prefix "Vor" regarding the mountain, if it is on the edge of the province
		"terrain-hills", -- examples: "Bärenberg", "Hackenberg"
		"terrain-mountains" -- example: "Arlberg", "Schneeberg"
	}
})

DefineLanguageWord("Bernhard", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Blume", { -- Source: http://www.duden.de/rechtschreibung/Blume
	Language = "high-german",
	Type = "noun",
	Meanings = {"Flower"},
	DerivesFrom = {"middle-high-german", "noun", "Bluome"},
	NumberCaseInflections = {
		"plural", "nominative", "Blumen",
		"plural", "accusative", "Blumen",
		"plural", "dative", "Blumen",
		"plural", "genitive", "Blumen"
	},
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Blumenau"
})

DefineLanguageWord("Bronze", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bronze"},
	Gender = "Feminine"
})

DefineLanguageWord("Bronzen", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Bronze"}
})

DefineLanguageWord("Bruck", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bridge"},
	NumberCaseInflections = {
		"plural", "nominative", "Brucken"
	},
	Gender = "Feminine",
	NameSingular = true,
	TypeName = {"settlement"}, -- example: "Bruck"
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Innsbruck"
})

DefineLanguageWord("Burg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Castle"},
	DerivesFrom = {"middle-high-german", "noun", "Burc"},
	NumberCaseInflections = {
		"plural", "nominative", "Burgen"
	},
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"province"}, -- example: "Burgenland"
	SuffixSingular = true,
	SuffixTypeName = {
		"settlement", -- examples: "Hamburg", "Klausenburg", "Marburg", "Nikolsburg", "Ödenburg", "Regensburg", "Salzburg", "Schässburg"
		"province" -- example: "Brandenburg"
	}
})

DefineLanguageWord("Das", {
	Language = "high-german",
	Type = "article",
	Meanings = {"The"},
	Nominative = "Das",
	Accusative = "Das",
	Dative = "Dem",
	Genitive = "Des",
	Definite = true,
	Gender = "Neuter"
})

DefineLanguageWord("Der", {
	Language = "high-german",
	Type = "article",
	Meanings = {"The"},
	Nominative = "Der",
	Accusative = "Den",
	Dative = "Dem",
	Genitive = "Des",
	Definite = true,
	Gender = "Masculine"
})

DefineLanguageWord("Die", {
	Language = "high-german",
	Type = "article",
	Meanings = {"The"},
	Nominative = "Die",
	Accusative = "Die",
	Dative = "Der",
	Genitive = "Der",
	Definite = true,
	Gender = "Feminine"
})

DefineLanguageWord("Dorf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Village"},
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"},
	NumberCaseInflections = {
		"plural", "nominative", "Dörfer"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Frohsdorf", "Gänserndorf"
})

DefineLanguageWord("Drasch", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Precipitation"},
	NumberCaseInflections = {
		"singular", "genitive", "Draschs"
	},
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Draschturm"
})

DefineLanguageWord("Eisen", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Iron"},
	Gender = "Neuter",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- examples: "Eisenerz", "Eisenstadt"
})

DefineLanguageWord("Eisern", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Iron"}
})

DefineLanguageWord("Erz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ore"},
	DerivesFrom = {"proto-germanic", "noun", "Aiza"},
	NumberCaseInflections = {
		"singular", "genitive", "Erzes",
		"plural", "nominative", "Erze",
		"plural", "accusative", "Erze",
		"plural", "dative", "Erzen",
		"plural", "genitive", "Erze"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Eisenerz"
})

DefineLanguageWord("Esse", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Forge"},
	DerivesFrom = {"proto-germanic", "noun", "Asjôn"},
	NumberCaseInflections = {
		"plural", "nominative", "Essen",
		"plural", "accusative", "Essen",
		"plural", "dative", "Essen",
		"plural", "genitive", "Essen"
	},
	Gender = "Feminine"
})

DefineLanguageWord("Feuer", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "high-german",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	DerivesFrom = {"middle-high-german", "noun", "Viur"},
	Gender = "Neuter"
})

DefineLanguageWord("Feurig", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Fiery"}
})

DefineLanguageWord("Fisch", { -- Source: http://www.duden.de/rechtschreibung/Fisch
	Language = "high-german",
	Type = "noun",
	Meanings = {"Fish"},
	DerivesFrom = {"old-high-german", "noun", "Fisk"},
	Gender = "Masculine"
})

DefineLanguageWord("Franz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Fried", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageWord("Friedrich", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Furt", { -- Source: http://www.duden.de/rechtschreibung/Furt
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ford"},
	NumberCaseInflections = {
		"plural", "nominative", "Furten",
		"plural", "accusative", "Furten",
		"plural", "dative", "Furten",
		"plural", "genitive", "Furten"
	},
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Klagenfurt"
})

DefineLanguageWord("Gang", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageWord("Gau", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"District"},
	DerivesFrom = {"proto-germanic", "noun", "Gavja"},
	Gender = "Masculine"
})

DefineLanguageWord("Gerhard", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Glänzend", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Shining"},
	ComparisonDegreeInflections = {
		"comparative", "Glänzender",
		"superlative", "Glänzendsten"
	}
})

DefineLanguageWord("Gold", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Gold"},
	Gender = "Neuter"
})

DefineLanguageWord("Golden", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Golden"}
})

DefineLanguageWord("Gott", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"God"},
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: Gottfried
})

DefineLanguageWord("Gunther", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Gustav", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hacken", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Heel"},
	NumberCaseInflections = {
		"singular", "genitive", "Hackens"
	},
	Gender = "Masculine",
	PrefixPlural = true, -- should it really be so? at least this makes the correct form of the name be preserved
	PrefixTypeName = {"terrain-hills"} -- example: "Hackenberg"
})

DefineLanguageWord("Hagen", { -- Source: http://www.duden.de/rechtschreibung/Hagen
	Language = "high-german",
	Type = "noun",
	Meanings = {}, -- personal name
	-- source also gives the alternative form "Hagens" for the accusative
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hammer", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hammer"},
	DerivesFrom = {"proto-germanic", "noun", "Hamara"},
	NumberCaseInflections = {
		"singular", "genitive", "Hammers",
		"plural", "nominative", "Hämmer",
		"plural", "accusative", "Hämmer",
		"plural", "dative", "Hämmern",
		"plural", "genitive", "Hämmer"
	},
	Gender = "Masculine"
})

DefineLanguageWord("Hans", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hart", { -- Source: http://www.duden.de/rechtschreibung/hart
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Hard"},
	ComparisonDegreeInflections = {
		"comparative", "Härter",
		"superlative", "Härteste"
	},
	SuffixTypeName = {"person"} -- examples: "Alphart", "Wolfhart"
})

DefineLanguageWord("Heilig", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Holy"}
})

DefineLanguageWord("Heim", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Home"},
	DerivesFrom = {"proto-germanic", "noun", "Haima"},
	Gender = "Neuter"
})

DefineLanguageWord("Heinrich", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageWord("Herd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Stove"}, -- source gives "Herd" as the meaning
	DerivesFrom = {"middle-high-german", "noun", "Hert"},
	Gender = "Masculine"
})

DefineLanguageWord("Hermann", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hof", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Court"},
	NumberCaseInflections = {
		"plural", "nominative", "Höfe"
	},
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Königinhof"
})

DefineLanguageWord("Horn", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Horn"},
	NumberCaseInflections = {
		"singular", "genitive", "Horns",
		"plural", "nominative", "Hörner"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"terrain-mountains"} -- example: "Teufelshorn"
})

DefineLanguageWord("Huhn", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Chicken"},
	NumberCaseInflections = {
		"singular", "genitive", "Huhns", -- "Huhnes" is an alternative form
		"plural", "nominative", "Hühner",
		"plural", "genitive", "Hühner"
	},
	Gender = "Neuter",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Hühnerwasser"
})

DefineLanguageWord("Hunger", { -- Source: http://www.duden.de/rechtschreibung/Hunger
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hunger"},
	NumberCaseInflections = {
		"singular", "genitive", "Hungers"
	},
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"terrain-hills"} -- example: "Hungerberg"
})

DefineLanguageWord("Hügel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hill"},
	NumberCaseInflections = {
		"singular", "genitive", "Hügels",
		"plural", "dative", "Hügeln"
	},
	Gender = "Masculine",
	SuffixPlural = true,
	SuffixTypeName = {"terrain-hills"} -- example: "Konstantinhügel" (http://www.wien.gv.at/umwelt/parks/anlagen/prater.html)
})

DefineLanguageWord("Johann", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Karl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"},
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageWord("Kettenhemd", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Mail"},
	Gender = "Neuter"
})

DefineLanguageWord("Kirche", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Church"},
	NumberCaseInflections = {
		"plural", "nominative", "Kirchen"
	},
	Gender = "Feminine",
	SuffixPlural = true,
	SuffixTypeName = {"settlement"} -- examples: "Fünfkirchen", "Weisskirchen"
})

DefineLanguageWord("Klage", { -- Source: http://www.duden.de/rechtschreibung/Klage
	Language = "high-german",
	Type = "noun",
	Meanings = {"Complaint"},
	NumberCaseInflections = {
		"plural", "nominative", "Klagen",
		"plural", "accusative", "Klagen",
		"plural", "dative", "Klagen",
		"plural", "genitive", "Klagen"
	},
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Klagenfurt"
})

DefineLanguageWord("Klaus", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Klause", { -- Source: http://www.duden.de/rechtschreibung/Klause
	Language = "high-german",
	Type = "noun",
	Meanings = {"Cloister"},
	NumberCaseInflections = {
		"plural", "nominative", "Klausen",
		"plural", "accusative", "Klausen",
		"plural", "dative", "Klausen",
		"plural", "genitive", "Klausen"
	},
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Klausenburg"
})

DefineLanguageWord("König", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"King"},
	NumberCaseInflections = {
		"singular", "genitive", "Königs",
		"plural", "nominative", "Könige"
	},
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- examples: "Königgrätz", "Königsberg"
})

DefineLanguageWord("Königin", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Queen"},
	NumberCaseInflections = {
		"plural", "nominative", "Königinnen"
	},
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Königinhof"
})

DefineLanguageWord("Kugel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ball", "Globe"},
	NumberCaseInflections = {
		"plural", "nominative", "Kugeln",
		"plural", "accusative", "Kugeln",
		"plural", "dative", "Kugeln",
		"plural", "genitive", "Kugeln"
	},
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"terrain-mountains"} -- example: "Weißkugel"
})

DefineLanguageWord("Kupfer", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Copper"},
	Gender = "Neuter"
})

DefineLanguageWord("Kupfern", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Copper"}
})

DefineLanguageWord("Kurt", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Lai", { -- Source: http://www.duden.de/rechtschreibung/Lai
	Language = "high-german",
	Type = "noun",
	Meanings = {"Old French Poetry"},
	-- source also gives alternative form "Lais" for the genitive
	NumberCaseInflections = {
		"plural", "nominative", "Lais"
	},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Laibach"
})

DefineLanguageWord("Land", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Country"},
	DerivesFrom = {"proto-germanic", "noun", "Landa"},
	NumberCaseInflections = {
		"singular", "genitive", "Landes",
		"plural", "nominative", "Länder",
		"plural", "genitive", "Länder"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Burgenland"
})

DefineLanguageWord("Lothar", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Ludwig", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Magisch", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Magic"}
})

DefineLanguageWord("Manfred", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Mann", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Man"},
	NumberCaseInflections = {
		"plural", "nominative", "Männer"
	},
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: Hermann, Karlmann
})

DefineLanguageWord("Mark", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"March"},
	DerivesFrom = {"proto-germanic", "noun", "Mark"},
	NumberCaseInflections = {
		"plural", "nominative", "Marken"
	},
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Steiermark" (Styria)
})

DefineLanguageWord("Messing", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Brass"},
	Gender = "Neuter"
})

DefineLanguageWord("Messingen", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Brass"}
})

DefineLanguageWord("Mühle", { -- Source: http://www.duden.de/rechtschreibung/Muehle
	Language = "high-german",
	Type = "noun",
	Meanings = {"Mill"},
	NumberCaseInflections = {
		"plural", "nominative", "Mühlen",
		"plural", "accusative", "Mühlen",
		"plural", "dative", "Mühlen",
		"plural", "genitive", "Mühlen"
	},
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Mühlenbach"
})

DefineLanguageWord("Mut", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Courage"},
	Gender = "Masculine",
	Uncountable = true,
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageWord("Nuss", { -- Source: http://www.duden.de/rechtschreibung/Nuss
	Language = "high-german",
	Type = "noun",
	Meanings = {"Nut"},
	NumberCaseInflections = {
		"plural", "nominative", "Nüsse",
		"plural", "accusative", "Nüsse",
		"plural", "dative", "Nüsse",
		"plural", "genitive", "Nüsse"
	},
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"terrain-hills"} -- example: "Nussberg"
})

DefineLanguageWord("Ort", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Place"},
	DerivesFrom = {"middle-high-german", "noun", "Ort"}
})

DefineLanguageWord("Ost", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ost"},
	DerivesFrom = {"proto-germanic", "noun", "Austa"},
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Ostmark"
})

DefineLanguageWord("Otto", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Peter", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Pippin", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Reich", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Realm", "Empire"},
	DerivesFrom = {"proto-germanic", "noun", "Rîkia"},
	Gender = "Neuter"
})

DefineLanguageWord("Rose", { -- Source: http://www.duden.de/rechtschreibung/Rose_Pflanze_Bluete_Verdickung
	Language = "high-german",
	Type = "noun",
	Meanings = {"Rose"},
	NumberCaseInflections = {
		"plural", "nominative", "Rosen",
		"plural", "accusative", "Rosen",
		"plural", "dative", "Rosen",
		"plural", "genitive", "Rosen"
	},
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"terrain-hills"} -- example: "Rosenhügel"
})

DefineLanguageWord("Rostig", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Rusty"}
})

DefineLanguageWord("Salz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Salt"},
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: Salzburg
})

DefineLanguageWord("Schaf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Sheep"},
	NumberCaseInflections = {
		"singular", "genitive", "Schafes", -- source also gives the alternative form "Schafs"
		"plural", "nominative", "Schafe",
		"plural", "accusative", "Schafe",
		"plural", "dative", "Schafen",
		"plural", "genitive", "Schafe"
	},
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"terrain-hills"} -- example: "Schafberg"
})

DefineLanguageWord("Schild", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Shield"},
	Gender = "Masculine"
})

DefineLanguageWord("Schloss", { -- Source: http://www.duden.de/rechtschreibung/Schloss
	Language = "high-german",
	Type = "noun",
	Meanings = {"Castle", "Palace"},
	NumberCaseInflections = {
		"singular", "genitive", "Schlosses",
		"plural", "nominative", "Schlösser",
		"plural", "accusative", "Schlösser",
		"plural", "dative", "Schlössern",
		"plural", "genitive", "Schlösser"
	},
	Gender = "Neuter",
})

DefineLanguageWord("Schlossberg", { -- Source: http://www.duden.de/rechtschreibung/Schlossberg
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hill under a Castle", "Hill under a Palace", "Mountain under a Castle", "Mountain under a Palace"},
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"terrain-hills"} -- example: "Schlossberg" (Graz)
})

DefineLanguageWord("Schmiede", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Smithy"},
	DerivesFrom = {"proto-germanic", "noun", "Smiþjôn"},
	NumberCaseInflections = {
		"plural", "nominative", "Schmieden",
		"plural", "accusative", "Schmieden",
		"plural", "dative", "Schmieden",
		"plural", "genitive", "Schmieden"
	},
	Gender = "Feminine"
})

DefineLanguageWord("Schnee", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Snow"},
	DerivesFrom = {"proto-germanic", "noun", "Snaigva"},
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Schneeberg"
})

DefineLanguageWord("Sieg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Victory"},
	NumberCaseInflections = {
		"plural", "nominative", "Siege"
	},
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageWord("Spitze", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Tip", "Peak"},
	NumberCaseInflections = {
		"plural", "nominative", "Spitzen",
		"plural", "accusative", "Spitzen",
		"plural", "dative", "Spitzen",
		"plural", "genitive", "Spitzen"
	},
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"terrain-mountains"} -- example: "Wildspitze"
})

DefineLanguageWord("Stadt", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"City"},
	NumberCaseInflections = {
		"plural", "nominative", "Städte"
	},
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Eisenstadt", "Josefstadt", "Kronstadt", "Leopoldstadt"
})

DefineLanguageWord("Stuhl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Chair"},
	NumberCaseInflections = {
		"singular", "genitive", "Stuhls"
	},
	Gender = "Masculine"
	-- Stuhlweissenburg uses as a prefix, but without being genitive?
})

DefineLanguageWord("Tal", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Valley"},
	NumberCaseInflections = {
		"plural", "nominative", "Täler"
	},
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Zillertal"
})

DefineLanguageWord("Teufel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Devil"},
	NumberCaseInflections = {
		"singular", "genitive", "Teufels",
		"plural", "dative", "Teufeln"
	},
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Teufelshorn"
})

DefineLanguageWord("Turm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Tower"},
	NumberCaseInflections = {
		"singular", "genitive", "Turms",
		"plural", "nominative", "Türme",
		"plural", "accusative", "Türme",
		"plural", "dative", "Türmen",
		"plural", "genitive", "Türme"
	},
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"terrain-mountains"} -- example: "Draschturm"
})

DefineLanguageWord("Verrostet", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Rusty"}
})

DefineLanguageWord("Waid", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "high-german",
	Type = "noun",
	Meanings = {"Woad"},
	DerivesFrom = {"proto-germanic", "noun", "Waida"}
})

DefineLanguageWord("Walter", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Wasser", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Water"},
	Gender = "Neuter",
	Uncountable = true,
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Hühnerwasser"
})

DefineLanguageWord("Werner", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("West", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"West"},
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Westphalien"
})

DefineLanguageWord("Wilhelm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Wolf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Wolf"},
	NumberCaseInflections = {
		"plural", "nominative", "Wölfe"
	},
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageWord("Hacken", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Chop"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Hacke",
		"singular", "second-person", "present", "indicative", "Hackst",
		"singular", "third-person", "present", "indicative", "Hackt",
		"plural", "second-person", "present", "indicative", "Hackt",
		"singular", "first-person", "past", "indicative", "Hackte",
		"singular", "second-person", "past", "indicative", "Hacktest",
		"singular", "third-person", "past", "indicative", "Hackte",
		"plural", "first-person", "past", "indicative", "Hackten",
		"plural", "second-person", "past", "indicative", "Hacktet",
		"plural", "third-person", "past", "indicative", "Hackten"
	},
	Participles = {
		"present", "Hackend",
		"past", "Gehackt"
	}
})

DefineLanguageWord("Alt", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Old"},
	PrefixTypeName = {"settlement"} -- example: "Altsohl"
})

DefineLanguageWord("Brennend", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Burning"}
})

DefineLanguageWord("Neu", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"New"},
	PrefixTypeName = {
		"settlement" -- example: "Neusohl"
	}
})

DefineLanguageWord("Schwartz", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Black"}
})

DefineLanguageWord("Weiß", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"White"},
	PrefixTypeName = {
		"settlement", -- example: "Weisskirchen"
		"terrain-mountains" -- example: "Weißkugel"
	}
})

DefineLanguageWord("Wild", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Wild"},
	PrefixTypeName = {"terrain-mountains"} -- example: "Wildspitze"
})

DefineLanguageWord("Mehr", {
	Language = "high-german",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Fünf", {
	Language = "high-german",
	Type = "numeral",
	Number = 5,
	PrefixTypeName = {"settlement"} -- example: "Fünfkirchen"
})

DefineLanguageWord("Sieben", {
	Language = "high-german",
	Type = "numeral",
	Number = 7,
	PrefixTypeName = {"province"} -- example: "Siebenbürgen"
})
