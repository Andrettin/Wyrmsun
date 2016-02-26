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

DefineLanguageWord("Adalbert", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

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

DefineLanguageWord("Adler", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Eagle"},
	DerivesFrom = {"old-high-german", "noun", "Adelâr"}, -- Source: http://www.cnrtl.fr/definition/al%C3%A9rion
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Adlers",
		"plural", "dative", "Adlern"
	}
})

DefineLanguageWord("Albert", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Albrecht", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Alp", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Elf"},
	DerivesFrom = {"middle-high-german", "noun", "Alp"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Alps", -- there is also the alternative form "Alpes"
		"plural", "nominative", "Alpe"
	},
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- example: "Alphart"
})

DefineLanguageWord("Alpdrücken", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Nightmare"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Albdrückens"
	}
})

DefineLanguageWord("Alt", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Old"},
	DerivesFrom = {"middle-high-german", "adjective", "Alt"},
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Altsohl"
})

DefineLanguageWord("Amboss", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Anvil"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Ambosses",
		"plural", "nominative", "Ambosse"
	}
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
		"singular", "genitive", "Berges", -- alternatively also "Bergs"
		"plural", "nominative", "Berge",
		"plural", "accusative", "Berge",
		"plural", "dative", "Bergen",
		"plural", "genitive", "Berge"
	},
	Gender = "masculine",
	AffixNameTypes = {
		"compound", "suffix", "singular", "settlement", -- examples: "Adelsberg", "Lemberg", "Königsberg", "Spielberg"
		"compound", "suffix", "singular", "province", -- example: "Vorarlberg" (Vorarlberg is a special case, however - ideally we should generate mountain names like "Arlberg", and then have the possibility of adding the prefix "Vor" regarding the mountain, if it is on the edge of the province
		"compound", "suffix", "singular", "terrain-hills", -- examples: "Bärenberg", "Hackenberg"
		"compound", "suffix", "singular", "terrain-mountains" -- example: "Arlberg", "Schneeberg"
	}
})

DefineLanguageWord("Bergen", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Salvage"}
})

DefineLanguageWord("Bern", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- example: "Bernhard"
})

DefineLanguageWord("Blau", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Blue"},
	DerivesFrom = {"middle-high-german", "adjective", "Blâ"}, -- presumably, since the corresponding adjective does
	Gender = "neuter"
})

DefineLanguageWord("Blau", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Blue"},
	DerivesFrom = {"middle-high-german", "adjective", "Blâ"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 147.
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

DefineLanguageWord("Brennen", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Burn"},
	DerivesFrom = {"middle-high-german", "verb", "Brennen"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
})

DefineLanguageWord("Brennend", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Burning"},
	DerivesFrom = {"middle-high-german", "verb", "Brennen"} -- presumably, since the verb "Brennen" comes from this word
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
		"plural", "nominative", "Brucken",
		"plural", "accusative", "Brucken",
		"plural", "dative", "Brucken",
		"plural", "genitive", "Brucken"
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
		"plural", "nominative", "Burgen",
		"plural", "accusative", "Burgen",
		"plural", "dative", "Burgen",
		"plural", "genitive", "Burgen"
	},
	Gender = "feminine",
	AffixNameTypes = {
		"compound", "prefix", "plural", "province", -- example: "Burgenland"
		"compound", "suffix", "singular", "settlement", -- examples: "Friedeburg", "Hamburg", "Klausenburg", "Marburg", "Nikolsburg", "Ödenburg", "Regensburg", "Salzburg", "Schässburg", "Stuhlweissenburg"
		"compound", "suffix", "singular", "province" -- example: "Brandenburg"
	}
})

DefineLanguageWord("Busch", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bush"},
	DerivesFrom = {"middle-high-german", "noun", "Busch"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 143.
	Gender = "masculine"
})

DefineLanguageWord("Christian", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
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
	ArticleType = "definite",
	GrammaticalNumber = "singular",
	Nominative = "Das",
	Accusative = "Das",
	Dative = "Dem",
	Genitive = "Des",
	Gender = "neuter"
})

DefineLanguageWord("David", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Der", {
	Language = "high-german",
	Type = "article",
	Meanings = {"The"},
	ArticleType = "definite",
	GrammaticalNumber = "singular",
	Nominative = "Der",
	Accusative = "Den",
	Dative = "Dem",
	Genitive = "Des",
	Gender = "masculine"
})

DefineLanguageWord("Die", {
	Language = "high-german",
	Type = "article",
	Meanings = {"The"},
	ArticleType = "definite",
	GrammaticalNumber = "singular",
	Nominative = "Die",
	Accusative = "Die",
	Dative = "Der",
	Genitive = "Der",
	Gender = "feminine"
})

DefineLanguageWord("Die", {
	Language = "high-german",
	Type = "article",
	Meanings = {"The"},
	ArticleType = "definite",
	GrammaticalNumber = "plural",
	Nominative = "Die",
	Accusative = "Die",
	Dative = "Den",
	Genitive = "Der"
})

DefineLanguageWord("Dorf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Village"},
	DerivesFrom = {"middle-high-german", "noun", "Dorf"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Dorfes", -- alternatively also "Dorfs"
		"plural", "nominative", "Dörfer",
		"plural", "accusative", "Dörfer",
		"plural", "dative", "Dörfern",
		"plural", "genitive", "Dörfer"
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

DefineLanguageWord("Eltern", { -- this is the plural
	Language = "high-german",
	Type = "noun",
	Meanings = {"Parents"},
	DerivesFrom = {"middle-high-german", "noun", "Altern"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 19.
	NumberCaseInflections = {
		"plural", "nominative", "Eltern"
	}
})

DefineLanguageWord("Ernst", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
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

DefineLanguageWord("Fabian", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Ferdinand", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
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

DefineLanguageWord("Frei", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Free"},
	ComparisonDegreeInflections = {
		"comparative", "Freier",
		"superlative", "Freiesten" -- alternatively also "freisten"
	},
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Freistadt"
})

DefineLanguageWord("Fried", { -- root present in "Friede" and also in a number of adjectives
	Language = "high-german",
	Type = "noun",
	Meanings = {"Peace"},
	DerivesFrom = {"middle-high-german", "noun", "Vride"}, -- presumably, since "Friede" comes from that word
	AffixNameTypes = {
		"compound", "prefix", "singular", "person", -- example: "Friedrich"
		"compound", "suffix", "singular", "person" -- example: "Gottfried"
	}
})

DefineLanguageWord("Friede", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Peace"},
	DerivesFrom = {"middle-high-german", "noun", "Vride"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Gender = "masculine",
	Uncountable = true,
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement", -- example: "Friedeburg"
	}
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

DefineLanguageWord("Garten", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Garden"},
	DerivesFrom = {"old-high-german", "noun", "Gart"}, -- the first one; Source: http://www.cnrtl.fr/definition/jardin
	Gender = "masculine"
})

DefineLanguageWord("Gau", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"District"},
	DerivesFrom = {"proto-germanic", "noun", "Gavja"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Gaues", -- alternatively also "Gaus"
		"plural", "nominative", "Gaue",
		"plural", "accusative", "Gaue",
		"plural", "dative", "Gauen",
		"plural", "genitive", "Gaue"
	},
	AffixNameTypes = {
		"compound", "suffix", "singular", "province" -- example: "Nordgau"
	}
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

DefineLanguageWord("Grau", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Gray"},
	DerivesFrom = {"middle-high-german", "adjective", "Grâ"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
})

DefineLanguageWord("Greis", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Old"},
	DerivesFrom = {"middle-high-german", "adjective", "Grīs"} -- presumably; Source: http://www.cnrtl.fr/definition/gris
})

DefineLanguageWord("Grün", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Green"},
	DerivesFrom = {"old-high-german", "noun", "Gruoti"}, -- apparently; Source: http://www.cnrtl.fr/definition/gruyer
	Gender = "neuter",
	Uncountable = true
})

DefineLanguageWord("Grün", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Green"},
	DerivesFrom = {"middle-high-german", "adjective", "Grüene"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 80.
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
	DerivesFrom = {"old-high-german", "noun", "Hamar"}, -- presumably; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
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

DefineLanguageWord("Hard", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {},
	AffixNameTypes = {"compound", "suffix", "singular", "person"}, -- examples: "Bernhard", "Richard"
	Archaic = true
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
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Heimes", -- alternatively also "Heims"
		"plural", "nominative", "Heime",
		"plural", "accusative", "Heime",
		"plural", "dative", "Heimen",
		"plural", "genitive", "Heime"
	},
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Rosenheim"
})

DefineLanguageWord("Hein", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- "Heinrich
})

DefineLanguageWord("Heinz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Hel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- example: "Helmut"
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
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Hofes", -- alternatively also "Hofs"
		"plural", "nominative", "Höfe",
		"plural", "accusative", "Höfe",
		"plural", "dative", "Höfen",
		"plural", "genitive", "Höfe"
	},
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- example: "Königinhof"
})

DefineLanguageWord("Horn", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Horn"},
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Horns", -- alternatively also "Hornes"
		"plural", "nominative", "Hörner"
	},
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

DefineLanguageWord("Jakob", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Johann", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Josef", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Joseph", {
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
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Kettenhemdes", -- alternatively also "Kettenhemds"
		"plural", "nominative", "Kettenhemden",
		"plural", "accusative", "Kettenhemden",
		"plural", "dative", "Kettenhemden",
		"plural", "genitive", "Kettenhemden"
	}
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

DefineLanguageWord("Leopold", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
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

DefineLanguageWord("Luitpold", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Lukas", {
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
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Marken",
		"plural", "accusative", "Marken",
		"plural", "dative", "Marken",
		"plural", "genitive", "Marken"
	},
	AffixNameTypes = {"compound", "suffix", "singular", "province"} -- example: "Steiermark" (Styria)
})

DefineLanguageWord("Matthias", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Maximilian", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
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

DefineLanguageWord("Michael", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
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
	Gender = "masculine",
	AffixNameTypes = {
		"compound", "prefix", "singular", "province" -- example: "Nordgau"
	}
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

DefineLanguageWord("Paul", {
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

DefineLanguageWord("Philipp", {
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

DefineLanguageWord("Reich", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Rich"},
	DerivesFrom = {"middle-high-german", "adjective", "Rîche"} -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
})

DefineLanguageWord("Rich", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {},
	DerivesFrom = {"middle-high-german", "adjective", "Rîche"}, -- presumably, since the adjective "reich" does as well
	AffixNameTypes = {
		"compound", "prefix", "singular", "person", -- example: "Richard"
		"compound", "suffix", "singular", "person" -- examples: "Friedrich", "Heinrich"
	},
	Archaic = true
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
	AffixNameTypes = {
		"compound", "prefix", "plural", "settlement", -- example: "Rosenheim"
		"compound", "prefix", "plural", "terrain-hills" -- example: "Rosenhügel"
	}
})

DefineLanguageWord("Rostig", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Rusty"}
})

DefineLanguageWord("Rudolf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
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
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Schildes", -- alternatively also "Schilds"
		"plural", "nominative", "Schilde",
		"plural", "accusative", "Schilde",
		"plural", "dative", "Schilden",
		"plural", "genitive", "Schilde"
	}
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
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Schmieden",
		"plural", "accusative", "Schmieden",
		"plural", "dative", "Schmieden",
		"plural", "genitive", "Schmieden"
	}
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

DefineLanguageWord("Spiel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Game", "Play"},
	NumberCaseInflections = {
		"singular", "genitive", "Spieles", -- alternatively also "Spiels"
		"plural", "nominative", "Spiele",
		"plural", "accusative", "Spiele",
		"plural", "dative", "Spielen",
		"plural", "genitive", "Spiele"
	},
	Gender = "neuter",
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Spielberg"
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
		"plural", "nominative", "Städte",
		"plural", "accusative", "Städte",
		"plural", "dative", "Städten",
		"plural", "genitive", "Städte"
	},
	Gender = "feminine",
	AffixNameTypes = {"compound", "suffix", "singular", "settlement"} -- examples: "Darmstadt", "Eisenstadt", "Josefstadt", "Kronstadt", "Leopoldstadt"
})

DefineLanguageWord("Stein", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Stone"},
	Gender = "masculine"
})

DefineLanguageWord("Steinern", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Stone"}
})

DefineLanguageWord("Stuhl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Chair"},
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Stuhles", -- alternatively also "Stuhls"
		"plural", "nominative", "Stühle",
		"plural", "accusative", "Stühle",
		"plural", "dative", "Stühlen",
		"plural", "genitive", "Stühle"
	},
	AffixNameTypes = {"compound", "prefix", "singular", "settlement"} -- example: "Stuhlweissenburg"
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
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Tales", -- alternatively also "Tals"
		"plural", "nominative", "Täler",
		"plural", "accusative", "Täler",
		"plural", "dative", "Tälern",
		"plural", "genitive", "Täler"
	},
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

DefineLanguageWord("Theodor", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Thomas", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
})

DefineLanguageWord("Tobias", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	NameTypes = {"person"}
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

DefineLanguageWord("Werben", { 
	Language = "high-german",
	Type = "verb",
	Meanings = {"Advertise"},
	DerivesFrom = {"old-high-german", "verb", "Hwerfan"} -- Source: http://www.cnrtl.fr/definition/barguigner
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
	AffixNameTypes = {"compound", "prefix", "singular", "person"} -- examples: "Wolfgang", "Wolfhart"
})

DefineLanguageWord("Wurm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Worm"},
	DerivesFrom = {"middle-high-german", "noun", "Wurm"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Wurms" -- alternatively also "Wurmes"
	}
})

DefineLanguageWord("Neu", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"New"},
	AffixNameTypes = {
		"compound", "prefix", "singular", "settlement" -- example: "Neusohl"
	}
})

DefineLanguageWord("Schwarz", {
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
		"compound", "infix", "singular", "settlement", -- example: "Stuhlweissenburg"
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
