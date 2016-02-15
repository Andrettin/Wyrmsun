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
--      (c) Copyright 2015-2016 by Andrettin
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
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Adelsberg"
})

DefineLanguageWord("Amboss", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Anvil"},
	Gender = "masculine"
})

DefineLanguageWord("Arl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	AffixNameTypes = {"compound", "prefix", "singular", "terrain-mountains"} -- example: "Arlberg"
})

DefineLanguageWord("Arnulf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
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
	Gender = "feminine",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Blumenau"
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
	Gender = "masculine",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Mühlenbach"
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
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Karlsbad"
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
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "terrain-hills"}, -- example: "Bärenberg"
})

DefineLanguageWord("Berg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Mountain", "Hill"},
	DerivesFrom = {"middle-high-german", "noun", "Berc"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	NumberCaseInflections = {
		"plural", "nominative", "Berge"
	},
	Gender = "masculine",
	AffixNameTypes = {
		"compound", "suffix", "singular", "settlement", -- examples: "Adelsberg", "Lemberg", "Königsberg", "Spielberg"
		"compound", "suffix", "singular", "province", -- example: "Vorarlberg" (Vorarlberg is a special case, however - ideally we should generate mountain names like "Arlberg", and then have the possibility of adding the prefix "Vor" regarding the mountain, if it is on the edge of the province
		"compound", "suffix", "singular", "terrain-hills", -- examples: "Bärenberg", "Hackenberg"
		"compound", "suffix", "singular", "terrain-mountains" -- example: "Arlberg", "Schneeberg"
	}
})

DefineLanguageWord("Bernhard", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Blei", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Lead"},
	DerivesFrom = {"middle-high-german", "noun", "Blî"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 148.
	Gender = "neuter"
})

DefineLanguageWord("Bleiern", {
	Language = "high-german",
	Type = "adjective",
	DerivesFrom = {"middle-high-german", "noun", "Blî"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 148.
	Meanings = {"Lead"}
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
	Gender = "feminine",
	AffixNameTypes = {"compound", "prefix", "plural", "settlement"} -- example: "Blumenau"
})

DefineLanguageWord("Bronze", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bronze"},
	Gender = "feminine"
})

DefineLanguageWord("Bronzen", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Bronze"}
})

DefineLanguageWord("Bruck", { -- used in placenames, but not in actual speech
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bridge"},
	NumberCaseInflections = {
		"plural", "nominative", "Brucken"
	},
	Gender = "feminine",
	DerivesFrom = {"middle-high-german", "noun", "Brücke"}, -- presumably, since the High German word "Brücke" does come from Middle High German "Brücke"
	NameTypes = {"settlement"}, -- example: "Bruck"
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Innsbruck"
})

DefineLanguageWord("Brücke", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bridge"},
	NumberCaseInflections = {
		"plural", "nominative", "Brücken",
		"plural", "accusative", "Brücken",
		"plural", "dative", "Brücken",
		"plural", "genitive", "Brücken"
	},
	Gender = "feminine",
	DerivesFrom = {"middle-high-german", "noun", "Brücke"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
})

DefineLanguageWord("Burg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Castle"},
	DerivesFrom = {"middle-high-german", "noun", "Burc"},
	NumberCaseInflections = {
		"plural", "nominative", "Burgen"
	},
	Gender = "feminine",
	AffixNameTypes = {
		"compound", "prefix", "plural", "province", -- example: "Burgenland"
		"compound", "suffix", "singular", "settlement", -- examples: "Hamburg", "Klausenburg", "Marburg", "Nikolsburg", "Ödenburg", "Regensburg", "Salzburg", "Schässburg"
		"compound", "suffix", "singular", "province" -- example: "Brandenburg"
	}
})

DefineLanguageWord("Darm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Intestine"},
	DerivesFrom = {"middle-high-german", "noun", "Darm"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Darmes", -- alternatively "Darms"
		"plural", "nominative", "Därme",
		"plural", "accusative", "Därme",
		"plural", "dative", "Därmen",
		"plural", "genitive", "Därme"
	},
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Darmstadt"
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
	Gender = "neuter"
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
	Gender = "masculine"
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
	Gender = "feminine"
})

DefineLanguageWord("Dorf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Village"},
	DerivesFrom = {"middle-high-german", "noun", "Dorf"},
	Gender = "neuter",
	NumberCaseInflections = {
		"plural", "nominative", "Dörfer"
	},
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Frohsdorf", "Gänserndorf"
})

DefineLanguageWord("Drasch", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Precipitation"},
	NumberCaseInflections = {
		"singular", "genitive", "Draschs"
	},
	Gender = "masculine",
	Uncountable = true,
	AffixNameTypes = {"compound", "prefix", "singular", "terrain-mountains"} -- example: "Draschturm"
})

DefineLanguageWord("Eisen", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Iron"},
	DerivesFrom = {"middle-high-german", "noun", "Îsern"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
	Gender = "neuter",
	Uncountable = true,
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- examples: "Eisenerz", "Eisenstadt"
})
	
DefineLanguageWord("Eisern", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Iron"},
	DerivesFrom = {"middle-high-german", "noun", "Îsern"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 24.
})

DefineLanguageWord("Erz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ore"},
	DerivesFrom = {"middle-high-german", "noun", "Êr"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Erzes",
		"plural", "nominative", "Erze",
		"plural", "accusative", "Erze",
		"plural", "dative", "Erzen",
		"plural", "genitive", "Erze"
	},
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Eisenerz"
})

DefineLanguageWord("Esse", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Forge"},
	DerivesFrom = {"old-high-german", "noun", "Essa"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Essen",
		"plural", "accusative", "Essen",
		"plural", "dative", "Essen",
		"plural", "genitive", "Essen"
	}
})

DefineLanguageWord("Feuer", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "high-german",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	DerivesFrom = {"middle-high-german", "noun", "Viur"},
	Gender = "neuter"
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
	Gender = "masculine"
})

DefineLanguageWord("Franz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Fried", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	AffixNameTypes = {"compound", "suffix", "singular", "person"} -- example: "Gottfried"
})

DefineLanguageWord("Friedrich", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Furt", { -- Source: http://www.duden.de/rechtschreibung/Furt
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ford"},
	DerivesFrom = {"middle-high-german", "noun", "Vurt"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 120-121.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Furten",
		"plural", "accusative", "Furten",
		"plural", "dative", "Furten",
		"plural", "genitive", "Furten"
	},
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Klagenfurt"
})

DefineLanguageWord("Gang", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	AffixNameTypes = {"compound", "suffix", "singular", "person"}
})

DefineLanguageWord("Gau", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"District"},
	DerivesFrom = {"proto-germanic", "noun", "Gavja"},
	Gender = "masculine"
})

DefineLanguageWord("Gerhard", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Glänzend", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Shining"},
	DerivesFrom = {"middle-high-german", "adjective", "Glanz"}, -- presumably
	ComparisonDegreeInflections = {
		"comparative", "Glänzender",
		"superlative", "Glänzendsten"
	}
})

DefineLanguageWord("Gold", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Gold"},
	DerivesFrom = {"middle-high-german", "noun", "Golt"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Gender = "neuter"
})

DefineLanguageWord("Golden", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Golden"},
	DerivesFrom = {"middle-high-german", "noun", "Golt"} -- presumably, since the corresponding noun derives from that word
})

DefineLanguageWord("Gott", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"God"},
	DerivesFrom = {"middle-high-german", "noun", "Got"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- example: "Gottfried"
})

DefineLanguageWord("Gunther", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Gustav", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Hacken", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Heel"},
	NumberCaseInflections = {
		"singular", "genitive", "Hackens"
	},
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "terrain-hills"} -- example: "Hackenberg"
})

DefineLanguageWord("Hagen", { -- Source: http://www.duden.de/rechtschreibung/Hagen
	Language = "high-german",
	Type = "noun",
	Meanings = {}, -- personal name
	-- source also gives the alternative form "Hagens" for the genitive
	Gender = "masculine",
	NameTypes = {"person"}
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
	Gender = "masculine"
})

DefineLanguageWord("Hans", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Hart", { -- Source: http://www.duden.de/rechtschreibung/hart
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Hard"},
	ComparisonDegreeInflections = {
		"comparative", "Härter",
		"superlative", "Härteste"
	},
	AffixNameTypes = {"compound", "suffix", "singular", "person"} -- examples: "Alphart", "Wolfhart"
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
	Gender = "neuter"
})

DefineLanguageWord("Heinrich", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Hel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	AffixNameTypes = {"compound", "prefix", "singular", "person"}
})

DefineLanguageWord("Herd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "high-german",
	Type = "noun",
	Meanings = {"Stove"}, -- source gives "Herd" as the meaning
	DerivesFrom = {"middle-high-german", "noun", "Hert"},
	Gender = "masculine"
})

DefineLanguageWord("Hermann", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Hof", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Court"},
	NumberCaseInflections = {
		"plural", "nominative", "Höfe"
	},
	Gender = "masculine",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Königinhof"
})

DefineLanguageWord("Horn", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Horn"},
	NumberCaseInflections = {
		"singular", "genitive", "Horns",
		"plural", "nominative", "Hörner"
	},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "terrain-mountains"} -- example: "Teufelshorn"
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
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "plural", "settlement"} -- example: "Hühnerwasser"
})

DefineLanguageWord("Hunger", { -- Source: http://www.duden.de/rechtschreibung/Hunger
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hunger"},
	NumberCaseInflections = {
		"singular", "genitive", "Hungers"
	},
	Gender = "masculine",
	Uncountable = true,
	AffixNameTypes = {"compound", "prefix", "singular", "terrain-hills"} -- example: "Hungerberg"
})

DefineLanguageWord("Hügel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hill"},
	NumberCaseInflections = {
		"singular", "genitive", "Hügels",
		"plural", "dative", "Hügeln"
	},
	Gender = "masculine",
	AffixNameTypes = {"compound", "suffix", "singular", "terrain-hills"} -- example: "Konstantinhügel" (http://www.wien.gv.at/umwelt/parks/anlagen/prater.html)
})

DefineLanguageWord("Johann", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Karl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"},
	AffixNameTypes = {"compound", "prefix", "singular", "person"}
})

DefineLanguageWord("Kettenhemd", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Mail"},
	Gender = "neuter"
})

DefineLanguageWord("Kirche", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Church"},
	NumberCaseInflections = {
		"plural", "nominative", "Kirchen"
	},
	Gender = "feminine",
	AffixNameTypes = {"compound", "suffix", "plural", "settlement"} -- examples: "Fünfkirchen", "Weisskirchen"
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
	Gender = "feminine",
	AffixNameTypes = {"compound", "prefix", "plural", "settlement"} -- example: "Klagenfurt"
})

DefineLanguageWord("Klaus", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
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
	Gender = "feminine",
	AffixNameTypes = {"compound", "prefix", "plural", "settlement"} -- example: "Klausenburg"
})

DefineLanguageWord("König", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"King"},
	NumberCaseInflections = {
		"singular", "genitive", "Königs",
		"plural", "nominative", "Könige"
	},
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- examples: "Königgrätz", "Königsberg"
})

DefineLanguageWord("Königin", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Queen"},
	NumberCaseInflections = {
		"plural", "nominative", "Königinnen"
	},
	Gender = "feminine",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Königinhof"
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
	Gender = "feminine",
	AffixNameTypes = {"compound", "suffix", "singular", "terrain-mountains"} -- example: "Weißkugel"
})

DefineLanguageWord("Kupfer", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Copper"},
	Gender = "neuter"
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
	NameTypes = {"person"}
})

DefineLanguageWord("Lai", { -- Source: http://www.duden.de/rechtschreibung/Lai
	Language = "high-german",
	Type = "noun",
	Meanings = {"Old French Poetry"},
	-- source also gives alternative form "Lais" for the genitive
	NumberCaseInflections = {
		"plural", "nominative", "Lais"
	},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Laibach"
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
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "province"} -- example: "Burgenland"
})

DefineLanguageWord("Lot", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Lot"},
	DerivesFrom = {"middle-high-german", "noun", "Lôt"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Gender = "neuter"
})

DefineLanguageWord("Lothar", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Ludwig", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
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
	NameTypes = {"person"}
})

DefineLanguageWord("Mann", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Man"},
	NumberCaseInflections = {
		"plural", "nominative", "Männer"
	},
	Gender = "masculine",
	AffixNameTypes = {"compound", "suffix", "singular", "person"} -- examples: Hermann, Karlmann
})

DefineLanguageWord("Mark", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"March"},
	DerivesFrom = {"proto-germanic", "noun", "Mark"},
	NumberCaseInflections = {
		"plural", "nominative", "Marken"
	},
	Gender = "feminine",
	AffixNameTypes = {"compound", "suffix", "singular", "province"} -- example: "Steiermark" (Styria)
})

DefineLanguageWord("Messing", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Brass"},
	Gender = "neuter"
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
	Gender = "feminine",
	AffixNameTypes = {"compound", "prefix", "plural", "settlement"} -- example: "Mühlenbach"
})

DefineLanguageWord("Mut", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Courage"},
	Gender = "masculine",
	Uncountable = true,
	AffixNameTypes = {"compound", "suffix", "singular", "person"}
})

DefineLanguageWord("Nord", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"North"},
	DerivesFrom = {"old-high-german", "noun", "Nord"}, -- seems sensible
	Gender = "masculine"
})

DefineLanguageWord("Norden", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"North"},
	DerivesFrom = {"old-high-german", "noun", "Nord"}, -- seems sensible
	Gender = "masculine"
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
	Gender = "feminine",
	AffixNameTypes = {"compound", "prefix", "singular", "terrain-hills"} -- example: "Nussberg"
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
	Meanings = {"East"},
	DerivesFrom = {"middle-high-german", "noun", "Ôsten"}, -- correct? seems sensible
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Ostmark"
})

DefineLanguageWord("Osten", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"East"},
	DerivesFrom = {"middle-high-german", "noun", "Ôsten"},
	Gender = "masculine"
})

DefineLanguageWord("Otto", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Peter", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Pippin", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Reich", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Realm", "Empire"},
	DerivesFrom = {"proto-germanic", "noun", "Rîkia"},
	Gender = "neuter"
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
	Gender = "feminine",
	AffixNameTypes = {"compound", "prefix", "plural", "terrain-hills"} -- example: "Rosenhügel"
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
	Gender = "masculine",
	Uncountable = true,
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: Salzburg
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
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "terrain-hills"} -- example: "Schafberg"
})

DefineLanguageWord("Schild", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Shield"},
	Gender = "masculine"
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
	Gender = "neuter",
})

DefineLanguageWord("Schlossberg", { -- Source: http://www.duden.de/rechtschreibung/Schlossberg
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hill under a Castle", "Hill under a Palace", "Mountain under a Castle", "Mountain under a Palace"},
	Gender = "masculine",
	NameTypes = {"terrain-hills"} -- example: "Schlossberg" (Graz)
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
	Gender = "feminine"
})

DefineLanguageWord("Schnee", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Snow"},
	DerivesFrom = {"proto-germanic", "noun", "Snaigva"},
	Gender = "masculine",
	Uncountable = true,
	AffixNameTypes = {"compound", "prefix", "singular", "terrain-mountains"} -- example: "Schneeberg"
})

DefineLanguageWord("Sieg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Victory"},
	NumberCaseInflections = {
		"plural", "nominative", "Siege"
	},
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "person"}
})

DefineLanguageWord("Silber", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Silver"},
	DerivesFrom = {"middle-high-german", "noun", "Silber"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Gender = "neuter"
})

DefineLanguageWord("Silbern", {
	Language = "high-german",
	Type = "adjective",
	DerivesFrom = {"middle-high-german", "noun", "Silber"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Meanings = {"Silver"}
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
	Gender = "feminine",
	AffixNameTypes = {"compound", "suffix", "singular", "terrain-mountains"} -- example: "Wildspitze"
})

DefineLanguageWord("Stadt", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"City", "Town"},
	NumberCaseInflections = {
		"plural", "nominative", "Städte"
	},
	Gender = "feminine",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Darmstadt", "Eisenstadt", "Josefstadt", "Kronstadt", "Leopoldstadt"
})

DefineLanguageWord("Stuhl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Chair"},
	NumberCaseInflections = {
		"singular", "genitive", "Stuhls"
	},
	Gender = "masculine"
	-- Stuhlweissenburg uses as a prefix, but without being genitive?
})

DefineLanguageWord("Süd", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"South"},
	DerivesFrom = {"middle-low-german", "adverb", "Sûd"}, -- High German "Süd" comes from the Low German, according to the source; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Gender = "masculine"
})

DefineLanguageWord("Süden", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"South"},
	DerivesFrom = {"middle-low-german", "adverb", "Sûd"}, -- seems sensible, considering "Süd" comes the Low German
	Gender = "masculine"
})

DefineLanguageWord("Tal", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Valley"},
	NumberCaseInflections = {
		"plural", "nominative", "Täler"
	},
	Gender = "neuter",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Zillertal"
})

DefineLanguageWord("Teufel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Devil"},
	NumberCaseInflections = {
		"singular", "genitive", "Teufels",
		"plural", "dative", "Teufeln"
	},
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "terrain-mountains"} -- example: "Teufelshorn"
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
	Gender = "masculine",
	AffixNameTypes = {"compound", "suffix", "singular", "terrain-mountains"} -- example: "Draschturm"
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
	NameTypes = {"person"}
})

DefineLanguageWord("Wasser", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Water"},
	Gender = "neuter",
	Uncountable = true,
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Hühnerwasser"
})

DefineLanguageWord("Werner", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("West", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"West"},
	DerivesFrom = {"old-high-german", "noun", "West"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Westphalien"
})

DefineLanguageWord("Wilhelm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Wolf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Wolf"},
	NumberCaseInflections = {
		"plural", "nominative", "Wölfe"
	},
	Gender = "masculine",
	AffixNameTypes = {"compound", "prefix", "singular", "person"}
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
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Altsohl"
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
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement" -- example: "Neusohl"
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
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Weisskirchen"
		"compound", "prefix", "singular", "terrain-mountains" -- example: "Weißkugel"
	}
})

DefineLanguageWord("Wild", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Wild"},
	AffixNameTypes = {"compound", "prefix", "singular", "terrain-mountains"} -- example: "Wildspitze"
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
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Fünfkirchen"
})

DefineLanguageWord("Sieben", {
	Language = "high-german",
	Type = "numeral",
	Number = 7,
	AffixNameTypes = {"compound", "prefix", "singular", "province"} -- example: "Siebenbürgen"
})
