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
	SingularNominative = "Adel",
	SingularGenitive = "Adels",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Adelsberg"
})

DefineLanguageWord("Amboss", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Anvil"},
	SingularNominative = "Amboss",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Arl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Arl",
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Arlberg"
})

DefineLanguageWord("Arnulf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Arnulf",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Au", { -- Source: http://www.duden.de/rechtschreibung/Au_feuchte_Niederung
	Language = "high-german",
	Type = "noun",
	Meanings = {"Flat Terrain with Lush Meadows"},
	SingularNominative = "Au",
	SingularAccusative = "Au",
	SingularDative = "Au",
	SingularGenitive = "Au",
	PluralNominative = "Auen",
	PluralAccusative = "Auen",
	PluralDative = "Auen",
	PluralGenitive = "Auen",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Blumenau"
})

DefineLanguageWord("Bach", { -- Source: http://www.duden.de/rechtschreibung/Bach_Wasserlauf
	Language = "high-german",
	Type = "noun",
	Meanings = {"Stream"},
	DerivesFrom = {"middle-high-german", "noun", "Bach"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	SingularNominative = "Bach",
	SingularAccusative = "Bach",
	SingularDative = "Bach",
	SingularGenitive = "Baches", -- source also gives alternative form "Bachs"
	PluralNominative = "Bäche",
	PluralAccusative = "Bäche",
	PluralDative = "Bächen",
	PluralGenitive = "Bäche",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Mühlenbach"
})

DefineLanguageWord("Bad", { -- Source: http://www.duden.de/rechtschreibung/Bad
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bath", "Baths"},
	DerivesFrom = {"middle-high-german", "noun", "Bat"},
	SingularNominative = "Bad",
	SingularAccusative = "Bad",
	SingularDative = "Bad",
	SingularGenitive = "Bades", -- source also gives alternative form "Bads"
	PluralNominative = "Bäder",
	PluralAccusative = "Bäder",
	PluralDative = "Bädern",
	PluralGenitive = "Bäder",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Karlsbad"
})

DefineLanguageWord("Bär", { -- Source: http://www.duden.de/rechtschreibung/Baer_Raubtier
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bear"},
	DerivesFrom = {"old-high-german", "noun", "Bero"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	SingularNominative = "Bär",
	SingularAccusative = "Bären",
	SingularDative = "Bären",
	SingularGenitive = "Bären",
	PluralNominative = "Bären",
	PluralAccusative = "Bären",
	PluralDative = "Bären",
	PluralGenitive = "Bären",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"terrain-hills"}, -- example: "Bärenberg"
})

DefineLanguageWord("Berg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Mountain", "Hill"},
	DerivesFrom = {"middle-high-german", "noun", "Berc"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	SingularNominative = "Berg",
	PluralNominative = "Berge",
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
	SingularNominative = "Bernhard",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Blume", { -- Source: http://www.duden.de/rechtschreibung/Blume
	Language = "high-german",
	Type = "noun",
	Meanings = {"Flower"},
	SingularNominative = "Blume",
	SingularAccusative = "Blume",
	SingularDative = "Blume",
	SingularGenitive = "Blume",
	PluralNominative = "Blumen",
	PluralAccusative = "Blumen",
	PluralDative = "Blumen",
	PluralGenitive = "Blumen",
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Blumenau"
})

DefineLanguageWord("Bruck", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bridge"},
	SingularNominative = "Bruck",
	PluralNominative = "Brucken",
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
	SingularNominative = "Burg",
	PluralNominative = "Burgen",
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"province"}, -- example: "Burgenland"
	SuffixSingular = true,
	SuffixTypeName = {
		"settlement", -- examples: "Hamburg", "Klausenburg", "Marburg", "Nikolsburg", "Ödenburg", "Regensburg", "Salzburg", "Schässburg"
		"province" -- example: "Brandenburg"
	}
})

DefineLanguageWord("Dorf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Village"},
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"},
	SingularNominative = "Dorf",
	PluralNominative = "Dörfer",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Frohsdorf", "Gänserndorf"
})

DefineLanguageWord("Drasch", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Precipitation"},
	SingularNominative = "Drasch",
	SingularAccusative = "Drasch",
	SingularDative = "Drasch",
	SingularGenitive = "Draschs",
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Draschturm"
})

DefineLanguageWord("Eisen", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Iron"},
	SingularNominative = "Eisen",
	Gender = "Neuter",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- examples: "Eisenerz", "Eisenstadt"
})

DefineLanguageWord("Erz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ore"},
	DerivesFrom = {"proto-germanic", "noun", "Aiza"},
	SingularNominative = "Erz",
	SingularAccusative = "Erz",
	SingularDative = "Erz",
	SingularGenitive = "Erzes",
	PluralNominative = "Erze",
	PluralAccusative = "Erze",
	PluralDative = "Erzen",
	PluralGenitive = "Erze",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Eisenerz"
})

DefineLanguageWord("Esse", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Forge"},
	DerivesFrom = {"proto-germanic", "noun", "Asjôn"},
	SingularNominative = "Esse",
	SingularAccusative = "Esse",
	SingularDative = "Esse",
	SingularGenitive = "Esse",
	PluralNominative = "Essen",
	PluralAccusative = "Essen",
	PluralDative = "Essen",
	PluralGenitive = "Essen",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Feuer", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 127.
	Language = "high-german",
	Type = "noun",
	Meanings = {"Fire"}, -- source gives "Feuer" as the meaning
	DerivesFrom = {"middle-high-german", "noun", "Viur"},
	SingularNominative = "Feuer",
	Gender = "Neuter"
})

DefineLanguageWord("Fisch", { -- Source: http://www.duden.de/rechtschreibung/Fisch
	Language = "high-german",
	Type = "noun",
	Meanings = {"Fish"},
	DerivesFrom = {"old-high-german", "noun", "Fisk"},
	SingularNominative = "Feuer",
	Gender = "Masculine"
})

DefineLanguageWord("Franz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Franz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Fried", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Fried",
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageWord("Friedrich", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Friedrich",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Furt", { -- Source: http://www.duden.de/rechtschreibung/Furt
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ford"},
	SingularNominative = "Furt",
	SingularAccusative = "Furt",
	SingularDative = "Furt",
	SingularGenitive = "Furt",
	PluralNominative = "Furten",
	PluralAccusative = "Furten",
	PluralDative = "Furten",
	PluralGenitive = "Furten",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Klagenfurt"
})

DefineLanguageWord("Gang", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Gang",
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageWord("Gau", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"District"},
	DerivesFrom = {"proto-germanic", "noun", "Gavja"},
	SingularNominative = "Gau",
	Gender = "Masculine"
})

DefineLanguageWord("Gerhard", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Gerhard",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Gott", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"God"},
	SingularNominative = "Gott",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: Gottfried
})

DefineLanguageWord("Gunther", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Gunther",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Gustav", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Gustav",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hacken", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Heel"},
	SingularNominative = "Hacken",
	SingularAccusative = "Hacken",
	SingularDative = "Hacken",
	SingularGenitive = "Hackens",
	PluralNominative = "Hacken",
	PluralAccusative = "Hacken",
	PluralDative = "Hacken",
	PluralGenitive = "Hacken",
	Gender = "Masculine",
	PrefixPlural = true, -- should it really be so? at least this makes the correct form of the name be preserved
	PrefixTypeName = {"terrain-hills"} -- example: "Hackenberg"
})

DefineLanguageWord("Hagen", { -- Source: http://www.duden.de/rechtschreibung/Hagen
	Language = "high-german",
	Type = "noun",
	Meanings = {}, -- personal name
	SingularNominative = "Hagen",
	SingularAccusative = "Hagen", -- source also gives the alternative form "Hagens"
	SingularDative = "Hagen",
	SingularGenitive = "Hagen",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hammer", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hammer"},
	DerivesFrom = {"proto-germanic", "noun", "Hamara"},
	SingularNominative = "Hammer",
	SingularAccusative = "Hammer",
	SingularDative = "Hammer",
	SingularGenitive = "Hammers",
	PluralNominative = "Hämmer",
	PluralAccusative = "Hämmer",
	PluralDative = "Hämmern",
	PluralGenitive = "Hämmer",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Hans", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Hans",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Heim", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Home"},
	DerivesFrom = {"proto-germanic", "noun", "Haima"},
	SingularNominative = "Heim",
	Gender = "Neuter"
})

DefineLanguageWord("Heinrich", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Heinrich",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Hel",
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageWord("Herd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "middle-high-german",
	Type = "noun",
	Meanings = {"Stove"}, -- source gives "Herd" as the meaning
	DerivesFrom = {"middle-high-german", "noun", "Hert"},
	SingularNominative = "Herd",
	Gender = "Masculine"
})

DefineLanguageWord("Hermann", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Hermann",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Hof", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Court"},
	SingularNominative = "Hof",
	PluralNominative = "Höfe",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Königinhof"
})

DefineLanguageWord("Horn", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Horn"},
	SingularNominative = "Horn",
	SingularGenitive = "Horns",
	PluralNominative = "Hörner",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"terrain-mountains"} -- example: "Teufelshorn"
})

DefineLanguageWord("Huhn", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Chicken"},
	SingularNominative = "Huhn",
	SingularGenitive = "Huhns", -- could also be "Huhnes"
	PluralNominative = "Hühner",
	PluralGenitive = "Hühner",
	Gender = "Neuter",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Hühnerwasser"
})

DefineLanguageWord("Hunger", { -- Source: http://www.duden.de/rechtschreibung/Hunger
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hunger"},
	SingularNominative = "Hunger",
	SingularAccusative = "Hunger",
	SingularDative = "Hunger",
	SingularGenitive = "Hungers",
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"terrain-hills"} -- example: "Hungerberg"
})

DefineLanguageWord("Hügel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hill"},
	SingularNominative = "Hügel",
	SingularAccusative = "Hügel",
	SingularDative = "Hügel",
	SingularGenitive = "Hügels",
	PluralNominative = "Hügel",
	PluralAccusative = "Hügel",
	PluralDative = "Hügeln",
	PluralGenitive = "Hügel",
	Gender = "Masculine",
	SuffixPlural = true,
	SuffixTypeName = {"terrain-hills"} -- example: "Konstantinhügel" (http://www.wien.gv.at/umwelt/parks/anlagen/prater.html)
})

DefineLanguageWord("Johann", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Johann",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Karl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Karl",
	NameSingular = true,
	TypeName = {"person"},
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageWord("Kirche", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Church"},
	SingularNominative = "Kirche",
	PluralNominative = "Kirchen",
	Gender = "Feminine",
	SuffixPlural = true,
	SuffixTypeName = {"settlement"} -- examples: "Fünfkirchen", "Weisskirchen"
})

DefineLanguageWord("Klage", { -- Source: http://www.duden.de/rechtschreibung/Klage
	Language = "high-german",
	Type = "noun",
	Meanings = {"Complaint"},
	SingularNominative = "Klage",
	SingularAccusative = "Klage",
	SingularDative = "Klage",
	SingularGenitive = "Klage",
	PluralNominative = "Klagen",
	PluralAccusative = "Klagen",
	PluralDative = "Klagen",
	PluralGenitive = "Klagen",
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Klagenfurt"
})

DefineLanguageWord("Klaus", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Klaus",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Klause", { -- Source: http://www.duden.de/rechtschreibung/Klause
	Language = "high-german",
	Type = "noun",
	Meanings = {"Cloister"},
	SingularNominative = "Klause",
	SingularAccusative = "Klause",
	SingularDative = "Klause",
	SingularGenitive = "Klause",
	PluralNominative = "Klausen",
	PluralAccusative = "Klausen",
	PluralDative = "Klausen",
	PluralGenitive = "Klausen",
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Klausenburg"
})

DefineLanguageWord("König", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"King"},
	SingularNominative = "König",
	SingularGenitive = "Königs",
	PluralNominative = "Könige",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- examples: "Königgrätz", "Königsberg"
})

DefineLanguageWord("Königin", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Queen"},
	SingularNominative = "Königin",
	SingularGenitive = "Königin",
	PluralNominative = "Königinnen",
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Königinhof"
})

DefineLanguageWord("Kugel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ball", "Globe"},
	SingularNominative = "Kugel",
	SingularAccusative = "Kugel",
	SingularDative = "Kugel",
	SingularGenitive = "Kugel",
	PluralNominative = "Kugeln",
	PluralAccusative = "Kugeln",
	PluralDative = "Kugeln",
	PluralGenitive = "Kugeln",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"terrain-mountains"} -- example: "Weißkugel"
})

DefineLanguageWord("Kurt", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Kurt",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Lai", { -- Source: http://www.duden.de/rechtschreibung/Lai
	Language = "high-german",
	Type = "noun",
	Meanings = {"Old French Poetry"},
	SingularNominative = "Lai",
	SingularGenitive = "Lai", -- source also gives alternative form "Lais"
	PluralNominative = "Lais",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Laibach"
})

DefineLanguageWord("Land", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Country"},
	DerivesFrom = {"proto-germanic", "noun", "Landa"},
	SingularNominative = "Land",
	SingularGenitive = "Landes",
	PluralNominative = "Länder",
	PluralGenitive = "Länder",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Burgenland"
})

DefineLanguageWord("Lothar", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Lothar",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Ludwig", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Ludwig",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Manfred", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Manfred",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Mann", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Man"},
	SingularNominative = "Mann",
	PluralNominative = "Männer",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: Hermann, Karlmann
})

DefineLanguageWord("Mark", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"March"},
	DerivesFrom = {"proto-germanic", "noun", "Mark"},
	SingularNominative = "Mark",
	PluralNominative = "Marken",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Steiermark" (Styria)
})

DefineLanguageWord("Mühle", { -- Source: http://www.duden.de/rechtschreibung/Muehle
	Language = "high-german",
	Type = "noun",
	Meanings = {"Mill"},
	SingularNominative = "Mühle",
	SingularAccusative = "Mühle",
	SingularDative = "Mühle",
	SingularGenitive = "Mühle",
	PluralNominative = "Mühlen",
	PluralAccusative = "Mühlen",
	PluralDative = "Mühlen",
	PluralGenitive = "Mühlen",
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Mühlenbach"
})

DefineLanguageWord("Mut", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Courage"},
	SingularNominative = "Mut",
	Gender = "Masculine",
	Uncountable = true,
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageWord("Nuss", { -- Source: http://www.duden.de/rechtschreibung/Nuss
	Language = "high-german",
	Type = "noun",
	Meanings = {"Nut"},
	SingularNominative = "Nuss",
	SingularAccusative = "Nuss",
	SingularDative = "Nuss",
	SingularGenitive = "Nuss",
	PluralNominative = "Nüsse",
	PluralAccusative = "Nüsse",
	PluralDative = "Nüssen",
	PluralGenitive = "Nüsse",
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"terrain-hills"} -- example: "Nussberg"
})

DefineLanguageWord("Ort", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Place"},
	DerivesFrom = {"middle-high-german", "noun", "Ort"},
	SingularNominative = "Ort"
})

DefineLanguageWord("Ost", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Ost"},
	DerivesFrom = {"proto-germanic", "noun", "Austa"},
	SingularNominative = "Ost",
	SingularGenitive = "Ost",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Ostmark"
})

DefineLanguageWord("Otto", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Otto",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Peter", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Peter",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Pippin", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Pippin",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Reich", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Realm", "Empire"},
	DerivesFrom = {"proto-germanic", "noun", "Rîkia"},
	SingularNominative = "Reich",
	Gender = "Neuter"
})

DefineLanguageWord("Rose", { -- Source: http://www.duden.de/rechtschreibung/Rose_Pflanze_Bluete_Verdickung
	Language = "high-german",
	Type = "noun",
	Meanings = {"Rose"},
	SingularNominative = "Rose",
	SingularAccusative = "Rose",
	SingularDative = "Rose",
	SingularGenitive = "Rose",
	PluralNominative = "Rosen",
	PluralAccusative = "Rosen",
	PluralDative = "Rosen",
	PluralGenitive = "Rosen",
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"terrain-hills"} -- example: "Rosenhügel"
})

DefineLanguageWord("Salz", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Salt"},
	SingularNominative = "Salz",
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: Salzburg
})

DefineLanguageWord("Schaf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Sheep"},
	SingularNominative = "Schaf",
	SingularAccusative = "Schaf",
	SingularDative = "Schaf",
--			SingularGenitive = "Schafes", -- source also gives the alternative form "Schafs" 
	PluralNominative = "Schafe",
	PluralAccusative = "Schafe",
	PluralDative = "Schafen",
	PluralGenitive = "Schafe",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"terrain-hills"} -- example: "Schafberg"
})

DefineLanguageWord("Schloss", { -- Source: http://www.duden.de/rechtschreibung/Schloss
	Language = "high-german",
	Type = "noun",
	Meanings = {"Castle", "Palace"},
	SingularNominative = "Schloss",
	SingularAccusative = "Schloss",
	SingularDative = "Schloss",
	SingularGenitive = "Schlosses",
	PluralNominative = "Schlösser",
	PluralAccusative = "Schlösser",
	PluralDative = "Schlössern",
	PluralGenitive = "Schlösser",
	Gender = "Neuter",
})

DefineLanguageWord("Schlossberg", { -- Source: http://www.duden.de/rechtschreibung/Schlossberg
	Language = "high-german",
	Type = "noun",
	Meanings = {"Hill under a Castle", "Hill under a Palace", "Mountain under a Castle", "Mountain under a Palace"},
	SingularNominative = "Schlossberg",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"terrain-hills"} -- example: "Schlossberg" (Graz)
})

DefineLanguageWord("Schmiede", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Smithy"},
	DerivesFrom = {"proto-germanic", "noun", "Smiþjôn"},
	SingularNominative = "Schmiede",
	SingularAccusative = "Schmiede",
	SingularDative = "Schmiede",
	SingularGenitive = "Schmiede",
	PluralNominative = "Schmieden",
	PluralAccusative = "Schmieden",
	PluralDative = "Schmieden",
	PluralGenitive = "Schmieden",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"unit-class-smithy"} -- seems sensible
})

DefineLanguageWord("Schnee", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Snow"},
	DerivesFrom = {"proto-germanic", "noun", "Snaigva"},
	SingularNominative = "Schnee",
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Schneeberg"
})

DefineLanguageWord("Sieg", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Victory"},
	SingularNominative = "Sieg",
	PluralNominative = "Siege",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageWord("Spitze", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Tip", "Peak"},
	SingularNominative = "Spitze",
	SingularAccusative = "Spitze",
	SingularDative = "Spitze",
	SingularGenitive = "Spitze",
	PluralNominative = "Spitzen",
	PluralAccusative = "Spitzen",
	PluralDative = "Spitzen",
	PluralGenitive = "Spitzen",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"terrain-mountains"} -- example: "Wildspitze"
})

DefineLanguageWord("Stadt", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"City"},
	SingularNominative = "Stadt",
	PluralNominative = "Städte",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Eisenstadt", "Josefstadt", "Kronstadt", "Leopoldstadt"
})

DefineLanguageWord("Stuhl", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Chair"},
	SingularNominative = "Stuhl",
	SingularGenitive = "Stuhls",
	Gender = "Masculine"
	-- Stuhlweissenburg uses as a prefix, but without being genitive?
})

DefineLanguageWord("Tal", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Valley"},
	SingularNominative = "Tal",
	PluralNominative = "Täler",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Zillertal"
})

DefineLanguageWord("Teufel", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Devil"},
	SingularNominative = "Teufel",
	SingularAccusative = "Teufel",
	SingularDative = "Teufel",
	SingularGenitive = "Teufels",
	PluralNominative = "Teufel",
	PluralAccusative = "Teufel",
	PluralDative = "Teufeln",
	PluralGenitive = "Teufel",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Teufelshorn"
})

DefineLanguageWord("Turm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Tower"},
	SingularNominative = "Turm",
	SingularAccusative = "Turm",
	SingularDative = "Turm",
	SingularGenitive = "Turms",
	PluralNominative = "Türme",
	PluralAccusative = "Türme",
	PluralDative = "Türmen",
	PluralGenitive = "Türme",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"terrain-mountains"} -- example: "Draschturm"
})

DefineLanguageWord("Waid", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "high-german",
	Type = "noun",
	Meanings = {"Woad"},
	DerivesFrom = {"proto-germanic", "noun", "Waida"},
	SingularNominative = "Waid"
})

DefineLanguageWord("Walter", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Walter",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Wasser", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Water"},
	SingularNominative = "Wasser",
	Gender = "Neuter",
	Uncountable = true,
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Hühnerwasser"
})

DefineLanguageWord("Werner", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Werner",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("West", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"West"},
	SingularNominative = "West",
	SingularGenitive = "West",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Westphalien"
})

DefineLanguageWord("Wilhelm", {
	Language = "high-german",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Wilhelm",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageWord("Wolf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Wolf"},
	SingularNominative = "Wolf",
	PluralNominative = "Wölfe",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageWord("Hacken", {
	Language = "high-german",
	Type = "verb",
	Meanings = {"Chop"},
	Infinitive = "Hacken",
	SingularFirstPersonPresent = "Hacke",
	SingularSecondPersonPresent = "Hackst",
	SingularThirdPersonPresent = "Hackt",
	PluralFirstPersonPresent = "Hacken",
	PluralSecondPersonPresent = "Hackt",
	PluralThirdPersonPresent = "Hacken",
	SingularFirstPersonPast = "Hackte",
	SingularSecondPersonPast = "Hacktest",
	SingularThirdPersonPast = "Hackte",
	PluralFirstPersonPast = "Hackten",
	PluralSecondPersonPast = "Hacktet",
	PluralThirdPersonPast = "Hackten",
	ParticiplePresent = "Hackend",
	ParticiplePast = "Gehackt"
})

DefineLanguageWord("Alt", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Old"},
	Positive = "Alt",
	PrefixTypeName = {"settlement"} -- example: "Altsohl"
})

DefineLanguageWord("Brennend", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Burning"},
	Positive = "Brennend",
	PrefixTypeName = {
		"unit-class-smithy" -- seems sensible
	}
})

DefineLanguageWord("Feurig", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Fiery"},
	Positive = "Feurig",
	PrefixTypeName = {
		"unit-class-smithy" -- seems sensible
	}
})

DefineLanguageWord("Hart", { -- Source: http://www.duden.de/rechtschreibung/hart
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Hard"},
	Positive = "Hart",
	Comparative = "Härter",
	Superlative = "Härteste",
	SuffixTypeName = {"person"} -- examples: "Alphart", "Wolfhart"
})

DefineLanguageWord("Neu", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"New"},
	Positive = "Neu",
	PrefixTypeName = {
		"settlement",
		"unit-class-smithy" -- seems sensible
	} -- example: "Neusohl"
})

DefineLanguageWord("Schwartz", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Black"},
	Positive = "Schwartz",
	PrefixTypeName = {
		"unit-class-smithy" -- seems sensible
	}
})

DefineLanguageWord("Weiß", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"White"},
	Positive = "Weiß",
	PrefixTypeName = {
		"settlement", -- example: "Weisskirchen"
		"terrain-mountains", -- example: "Weißkugel"
		"unit-class-smithy" -- seems sensible
	}
})

DefineLanguageWord("Wild", {
	Language = "high-german",
	Type = "adjective",
	Meanings = {"Wild"},
	Positive = "Wild",
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
