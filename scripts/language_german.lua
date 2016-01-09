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

DefineLanguageNoun("Adel", {
	Civilization = "teuton",
	Meaning = "Noble",
	SingularNominative = "Adel",
	SingularGenitive = "Adels",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Adelsberg"
})

DefineLanguageNoun("Arl", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Arl",
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Arlberg"
})

DefineLanguageNoun("Arnulf", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Arnulf",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Au", { -- Source: http://www.duden.de/rechtschreibung/Au_feuchte_Niederung
	Civilization = "teuton",
	Meaning = "Flat Terrain with Lush Meadows",
	SingularNominative = "Au",
	SingularAccusative = "Au",
	SingularDative = "Au",
	SingularGenitive = "Au", -- source also gives alternative form "Bachs"
	PluralNominative = "Auen",
	PluralAccusative = "Auen",
	PluralDative = "Auen",
	PluralGenitive = "Auen",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Blumenau"
})

DefineLanguageNoun("Bach", { -- Source: http://www.duden.de/rechtschreibung/Bach_Wasserlauf
	Civilization = "teuton",
	Meaning = "Stream",
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

DefineLanguageNoun("Bad", { -- Source: http://www.duden.de/rechtschreibung/Bad
	Civilization = "teuton",
	Meaning = "Baths",
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

DefineLanguageNoun("Bär", { -- Source: http://www.duden.de/rechtschreibung/Baer_Raubtier
	Civilization = "teuton",
	Meaning = "Bear",
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

DefineLanguageNoun("Berg", {
	Civilization = "teuton",
	Meaning = "Mountain, Hill",
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

DefineLanguageNoun("Bernhard", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Bernhard",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Blume", { -- Source: http://www.duden.de/rechtschreibung/Blume
	Civilization = "teuton",
	Meaning = "Flower",
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

DefineLanguageNoun("Bruck", {
	Civilization = "teuton",
	Meaning = "Bridge",
	SingularNominative = "Bruck",
	PluralNominative = "Brucken",
	Gender = "Feminine",
	NameSingular = true,
	TypeName = {"settlement"}, -- example: "Bruck"
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Innsbruck"
})

DefineLanguageNoun("Burg", {
	Civilization = "teuton",
	Meaning = "Castle",
	SingularNominative = "Burg",
	PluralNominative = "Burgen",
	Gender = "Feminine",
	PrefixPlural = true,
	PrefixTypeName = {"province"}, -- example: "Burgenland"
	SuffixSingular = true,
	SuffixTypeName = {
		"settlement", -- examples: Hamburg, Klausenburg, Marburg, Nikolsburg, Ödenburg, Regensburg, Salzburg, Schässburg
		"province" -- example: "Brandenburg"
	}
})

DefineLanguageNoun("Dorf", {
	Civilization = "teuton",
	Meaning = "Village",
	SingularNominative = "Dorf",
	PluralNominative = "Dörfer",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: Frohsdorf, Gänserndorf
})

DefineLanguageNoun("Drasch", {
	Civilization = "teuton",
	Meaning = "Precipitation",
	SingularNominative = "Drasch",
	SingularAccusative = "Drasch",
	SingularDative = "Drasch",
	SingularGenitive = "Draschs",
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Draschturm"
})

DefineLanguageNoun("Eisen", {
	Civilization = "teuton",
	Meaning = "Iron",
	SingularNominative = "Eisen",
	Gender = "Neuter",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- examples: "Eisenerz", "Eisenstadt"
})

DefineLanguageNoun("Erz", {
	Civilization = "teuton",
	Meaning = "Ore",
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

DefineLanguageNoun("Franz", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Franz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Fried", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Fried",
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageNoun("Friedrich", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Friedrich",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Furt", { -- Source: http://www.duden.de/rechtschreibung/Furt
	Civilization = "teuton",
	Meaning = "Ford",
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

DefineLanguageNoun("Gang", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Gang",
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageNoun("Gerhard", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Gerhard",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Gott", {
	Civilization = "teuton",
	Meaning = "God",
	SingularNominative = "Gott",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: Gottfried
})

DefineLanguageNoun("Gunther", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Gunther",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Gustav", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Gustav",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Hacken", {
	Civilization = "teuton",
	Meaning = "Heel",
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

DefineLanguageNoun("Hagen", { -- Source: http://www.duden.de/rechtschreibung/Hagen
	Civilization = "teuton",
	Meaning = "?", -- personal name
	SingularNominative = "Hagen",
	SingularAccusative = "Hagen", -- source also gives the alternative form "Hagens"
	SingularDative = "Hagen",
	SingularGenitive = "Hagen",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Hans", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Hans",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Heinrich", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Heinrich",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Hel", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Hel",
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageNoun("Hermann", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Hermann",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Hof", {
	Civilization = "teuton",
	Meaning = "Court",
	SingularNominative = "Hof",
	PluralNominative = "Höfe",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Königinhof"
})

DefineLanguageNoun("Horn", {
	Civilization = "teuton",
	Meaning = "Horn",
	SingularNominative = "Horn",
	SingularGenitive = "Horns",
	PluralNominative = "Hörner",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"terrain-mountains"} -- example: "Teufelshorn"
})

DefineLanguageNoun("Huhn", {
	Civilization = "teuton",
	Meaning = "Chicken",
	SingularNominative = "Huhn",
	SingularGenitive = "Huhns", -- could also be "Huhnes"
	PluralNominative = "Hühner",
	PluralGenitive = "Hühner",
	Gender = "Neuter",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Hühnerwasser"
})

DefineLanguageNoun("Hunger", { -- Source: http://www.duden.de/rechtschreibung/Hunger
	Civilization = "teuton",
	Meaning = "Hunger",
	SingularNominative = "Hunger",
	SingularAccusative = "Hunger",
	SingularDative = "Hunger",
	SingularGenitive = "Hungers",
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"terrain-hills"} -- example: "Hungerberg"
})

DefineLanguageNoun("Hügel", {
	Civilization = "teuton",
	Meaning = "Hill",
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

DefineLanguageNoun("Johann", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Johann",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Karl", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Karl",
	NameSingular = true,
	TypeName = {"person"},
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageNoun("Kirche", {
	Civilization = "teuton",
	Meaning = "Church",
	SingularNominative = "Kirche",
	PluralNominative = "Kirchen",
	Gender = "Feminine",
	SuffixPlural = true,
	SuffixTypeName = {"settlement"} -- examples: "Fünfkirchen", "Weisskirchen"
})

DefineLanguageNoun("Klage", { -- Source: http://www.duden.de/rechtschreibung/Klage
	Civilization = "teuton",
	Meaning = "Complaint",
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

DefineLanguageNoun("Klaus", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Klaus",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Klause", { -- Source: http://www.duden.de/rechtschreibung/Klause
	Civilization = "teuton",
	Meaning = "Cloister",
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

DefineLanguageNoun("König", {
	Civilization = "teuton",
	Meaning = "King",
	SingularNominative = "König",
	SingularGenitive = "Königs",
	PluralNominative = "Könige",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- examples: "Königgrätz", "Königsberg"
})

DefineLanguageNoun("Königin", {
	Civilization = "teuton",
	Meaning = "Queen",
	SingularNominative = "Königin",
	SingularGenitive = "Königin",
	PluralNominative = "Königinnen",
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Königinhof"
})

DefineLanguageNoun("Kugel", {
	Civilization = "teuton",
	Meaning = "Ball, Globe",
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

DefineLanguageNoun("Kurt", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Kurt",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Lai", { -- Source: http://www.duden.de/rechtschreibung/Lai
	Civilization = "teuton",
	Meaning = "Old French Poetry",
	SingularNominative = "Lai",
	SingularGenitive = "Lai", -- source also gives alternative form "Lais"
	PluralNominative = "Lais",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Laibach"
})

DefineLanguageNoun("Land", {
	Civilization = "teuton",
	Meaning = "Country",
	SingularNominative = "Land",
	SingularGenitive = "Landes",
	PluralNominative = "Länder",
	PluralGenitive = "Länder",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Burgenland"
})

DefineLanguageNoun("Lothar", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Lothar",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Ludwig", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Ludwig",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Manfred", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Manfred",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Mann", {
	Civilization = "teuton",
	Meaning = "Man",
	SingularNominative = "Mann",
	PluralNominative = "Männer",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Hermann, Karlmann
})

DefineLanguageNoun("Mark", {
	Civilization = "teuton",
	Meaning = "March",
	SingularNominative = "Mark",
	PluralNominative = "Marken",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Steiermark" (Styria)
})

DefineLanguageNoun("Mühle", { -- Source: http://www.duden.de/rechtschreibung/Muehle
	Civilization = "teuton",
	Meaning = "Mill",
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

DefineLanguageNoun("Mut", {
	Civilization = "teuton",
	Meaning = "Courage",
	SingularNominative = "Mut",
	Gender = "Masculine",
	Uncountable = true,
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageNoun("Nuss", { -- Source: http://www.duden.de/rechtschreibung/Nuss
	Civilization = "teuton",
	Meaning = "Nut",
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

DefineLanguageNoun("Ost", {
	Civilization = "teuton",
	Meaning = "Ost",
	SingularNominative = "Ost",
	SingularGenitive = "Ost",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Ostmark"
})

DefineLanguageNoun("Otto", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Otto",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Pippin", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Pippin",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Rose", { -- Source: http://www.duden.de/rechtschreibung/Rose_Pflanze_Bluete_Verdickung
	Civilization = "teuton",
	Meaning = "Rose",
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

DefineLanguageNoun("Salz", {
	Civilization = "teuton",
	Meaning = "Salt",
	SingularNominative = "Salz",
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: Salzburg
})

DefineLanguageNoun("Schaf", {
	Civilization = "teuton",
	Meaning = "Sheep",
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

DefineLanguageNoun("Schloss", { -- Source: http://www.duden.de/rechtschreibung/Schloss
	Civilization = "teuton",
	Meaning = "Castle, Palace",
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

DefineLanguageNoun("Schlossberg", { -- Source: http://www.duden.de/rechtschreibung/Schlossberg
	Civilization = "teuton",
	Meaning = "Hill under a Castle, Hill under a Palace, Mountain under a Castle, Mountain under a Palace",
	SingularNominative = "Schlossberg",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"terrain-hills"} -- example: "Schlossberg" (Graz)
})

DefineLanguageNoun("Schnee", {
	Civilization = "teuton",
	Meaning = "Snow",
	SingularNominative = "Schnee",
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Schneeberg"
})

DefineLanguageNoun("Sieg", {
	Civilization = "teuton",
	Meaning = "Victory",
	SingularNominative = "Sieg",
	PluralNominative = "Siege",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageNoun("Spitze", {
	Civilization = "teuton",
	Meaning = "Tip, Peak",
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

DefineLanguageNoun("Stadt", {
	Civilization = "teuton",
	Meaning = "City",
	SingularNominative = "Stadt",
	PluralNominative = "Städte",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Eisenstadt", "Josefstadt", "Kronstadt", "Leopoldstadt"
})

DefineLanguageNoun("Stuhl", {
	Civilization = "teuton",
	Meaning = "Chair",
	SingularNominative = "Stuhl",
	SingularGenitive = "Stuhls",
	Gender = "Masculine"
	-- Stuhlweissenburg uses as a prefix, but without being genitive?
})

DefineLanguageNoun("Tal", {
	Civilization = "teuton",
	Meaning = "Valley",
	SingularNominative = "Tal",
	PluralNominative = "Täler",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Zillertal"
})

DefineLanguageNoun("Teufel", {
	Civilization = "teuton",
	Meaning = "Devil",
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

DefineLanguageNoun("Turm", {
	Civilization = "teuton",
	Meaning = "Tower",
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

DefineLanguageNoun("Waid", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Civilization = "teuton",
	Meaning = "Woad",
	SingularNominative = "Waid"
})

DefineLanguageNoun("Walter", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Walter",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Wasser", {
	Civilization = "teuton",
	Meaning = "Water",
	SingularNominative = "Wasser",
	Gender = "Neuter",
	Uncountable = true,
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Hühnerwasser"
})

DefineLanguageNoun("Werner", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Werner",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("West", {
	Civilization = "teuton",
	Meaning = "West",
	SingularNominative = "West",
	SingularGenitive = "West",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Westphalien"
})

DefineLanguageNoun("Wilhelm", {
	Civilization = "teuton",
	Meaning = "?",
	SingularNominative = "Wilhelm",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Wolf", {
	Civilization = "teuton",
	Meaning = "Wolf",
	SingularNominative = "Wolf",
	PluralNominative = "Wölfe",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageVerb("Hacken", {
	Civilization = "teuton",
	Meaning = "Chop",
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

DefineLanguageAdjective("Alt", {
	Civilization = "teuton",
	Meaning = "Old",
	PrefixTypeName = {"settlement"} -- example: "Altsohl"
})

DefineLanguageAdjective("Hart", { -- Source: http://www.duden.de/rechtschreibung/hart
	Civilization = "teuton",
	Meaning = "Hard",
	Comparative = "Härter",
	Superlative = "Härteste",
	SuffixTypeName = {"person"} -- examples: "Alphart", "Wolfhart"
})

DefineLanguageAdjective("Neu", {
	Civilization = "teuton",
	Meaning = "New",
	PrefixTypeName = {"settlement"} -- example: "Neusohl"
})

DefineLanguageAdjective("Weiß", {
	Civilization = "teuton",
	Meaning = "White",
	PrefixTypeName = {
		"settlement", -- example: "Weisskirchen"
		"terrain-mountains" -- example: "Weißkugel"
	}
})

DefineLanguageAdjective("Wild", {
	Civilization = "teuton",
	Meaning = "Wild",
	PrefixTypeName = {"terrain-mountains"} -- example: "Wildspitze"
})

DefineLanguageAdverb("Mehr", {
	Civilization = "teuton",
	Meaning = "More"
})

DefineLanguageNumeral("Fünf", {
	Number = 5,
	PrefixTypeName = {"settlement"} -- example: "Fünfkirchen"
})

DefineLanguageNumeral("Sieben", {
	Number = 7,
	PrefixTypeName = {"province"} -- example: "Siebenbürgen"
})
