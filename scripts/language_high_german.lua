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
	Language = "high-german",
	Meanings = {"Noble"},
	SingularNominative = "Adel",
	SingularGenitive = "Adels",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Adelsberg"
})

DefineLanguageNoun("Amboss", {
	Language = "high-german",
	Meanings = {"Anvil"},
	SingularNominative = "Amboss",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Arl", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Arl",
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Arlberg"
})

DefineLanguageNoun("Arnulf", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Arnulf",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Au", { -- Source: http://www.duden.de/rechtschreibung/Au_feuchte_Niederung
	Language = "high-german",
	Meanings = {"Flat Terrain with Lush Meadows"},
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
	Language = "high-german",
	Meanings = {"Stream"},
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
	Language = "high-german",
	Meanings = {"Baths"},
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
	Language = "high-german",
	Meanings = {"Bear"},
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
	Language = "high-german",
	Meanings = {"Mountain", "Hill"},
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
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Bernhard",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Blume", { -- Source: http://www.duden.de/rechtschreibung/Blume
	Language = "high-german",
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

DefineLanguageNoun("Bruck", {
	Language = "high-german",
	Meanings = {"Bridge"},
	SingularNominative = "Bruck",
	PluralNominative = "Brucken",
	Gender = "Feminine",
	NameSingular = true,
	TypeName = {"settlement"}, -- example: "Bruck"
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Innsbruck"
})

DefineLanguageNoun("Burg", {
	Language = "high-german",
	Meanings = {"Castle"},
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
	Language = "high-german",
	Meanings = {"Village"},
	SingularNominative = "Dorf",
	PluralNominative = "Dörfer",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: Frohsdorf, Gänserndorf
})

DefineLanguageNoun("Drasch", {
	Language = "high-german",
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

DefineLanguageNoun("Eisen", {
	Language = "high-german",
	Meanings = {"Iron"},
	SingularNominative = "Eisen",
	Gender = "Neuter",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- examples: "Eisenerz", "Eisenstadt"
})

DefineLanguageNoun("Erz", {
	Language = "high-german",
	Meanings = {"Ore"},
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

DefineLanguageNoun("Esse", {
	Language = "high-german",
	Meanings = {"Forge"},
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
	SuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Franz", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Franz",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Fried", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Fried",
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageNoun("Friedrich", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Friedrich",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Furt", { -- Source: http://www.duden.de/rechtschreibung/Furt
	Language = "high-german",
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

DefineLanguageNoun("Gang", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Gang",
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageNoun("Gerhard", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Gerhard",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Gott", {
	Language = "high-german",
	Meanings = {"God"},
	SingularNominative = "Gott",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: Gottfried
})

DefineLanguageNoun("Gunther", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Gunther",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Gustav", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Gustav",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Hacken", {
	Language = "high-german",
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

DefineLanguageNoun("Hagen", { -- Source: http://www.duden.de/rechtschreibung/Hagen
	Language = "high-german",
	Meanings = {"?"}, -- personal name
	SingularNominative = "Hagen",
	SingularAccusative = "Hagen", -- source also gives the alternative form "Hagens"
	SingularDative = "Hagen",
	SingularGenitive = "Hagen",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Hammer", {
	Language = "high-german",
	Meanings = {"Hammer"},
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
	SuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Hans", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Hans",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Heinrich", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Heinrich",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Hel", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Hel",
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageNoun("Hermann", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Hermann",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Hof", {
	Language = "high-german",
	Meanings = {"Court"},
	SingularNominative = "Hof",
	PluralNominative = "Höfe",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Königinhof"
})

DefineLanguageNoun("Horn", {
	Language = "high-german",
	Meanings = {"Horn"},
	SingularNominative = "Horn",
	SingularGenitive = "Horns",
	PluralNominative = "Hörner",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"terrain-mountains"} -- example: "Teufelshorn"
})

DefineLanguageNoun("Huhn", {
	Language = "high-german",
	Meanings = {"Chicken"},
	SingularNominative = "Huhn",
	SingularGenitive = "Huhns", -- could also be "Huhnes"
	PluralNominative = "Hühner",
	PluralGenitive = "Hühner",
	Gender = "Neuter",
	PrefixPlural = true,
	PrefixTypeName = {"settlement"} -- example: "Hühnerwasser"
})

DefineLanguageNoun("Hunger", { -- Source: http://www.duden.de/rechtschreibung/Hunger
	Language = "high-german",
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

DefineLanguageNoun("Hügel", {
	Language = "high-german",
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

DefineLanguageNoun("Johann", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Johann",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Karl", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Karl",
	NameSingular = true,
	TypeName = {"person"},
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageNoun("Kirche", {
	Language = "high-german",
	Meanings = {"Church"},
	SingularNominative = "Kirche",
	PluralNominative = "Kirchen",
	Gender = "Feminine",
	SuffixPlural = true,
	SuffixTypeName = {"settlement"} -- examples: "Fünfkirchen", "Weisskirchen"
})

DefineLanguageNoun("Klage", { -- Source: http://www.duden.de/rechtschreibung/Klage
	Language = "high-german",
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

DefineLanguageNoun("Klaus", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Klaus",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Klause", { -- Source: http://www.duden.de/rechtschreibung/Klause
	Language = "high-german",
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

DefineLanguageNoun("König", {
	Language = "high-german",
	Meanings = {"King"},
	SingularNominative = "König",
	SingularGenitive = "Königs",
	PluralNominative = "Könige",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- examples: "Königgrätz", "Königsberg"
})

DefineLanguageNoun("Königin", {
	Language = "high-german",
	Meanings = {"Queen"},
	SingularNominative = "Königin",
	SingularGenitive = "Königin",
	PluralNominative = "Königinnen",
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Königinhof"
})

DefineLanguageNoun("Kugel", {
	Language = "high-german",
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

DefineLanguageNoun("Kurt", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Kurt",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Lai", { -- Source: http://www.duden.de/rechtschreibung/Lai
	Language = "high-german",
	Meanings = {"Old French Poetry"},
	SingularNominative = "Lai",
	SingularGenitive = "Lai", -- source also gives alternative form "Lais"
	PluralNominative = "Lais",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Laibach"
})

DefineLanguageNoun("Land", {
	Language = "high-german",
	Meanings = {"Country"},
	SingularNominative = "Land",
	SingularGenitive = "Landes",
	PluralNominative = "Länder",
	PluralGenitive = "Länder",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Burgenland"
})

DefineLanguageNoun("Lothar", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Lothar",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Ludwig", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Ludwig",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Manfred", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Manfred",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Mann", {
	Language = "high-german",
	Meanings = {"Man"},
	SingularNominative = "Mann",
	PluralNominative = "Männer",
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: Hermann, Karlmann
})

DefineLanguageNoun("Mark", {
	Language = "high-german",
	Meanings = {"March"},
	SingularNominative = "Mark",
	PluralNominative = "Marken",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"province"} -- example: "Steiermark" (Styria)
})

DefineLanguageNoun("Mühle", { -- Source: http://www.duden.de/rechtschreibung/Muehle
	Language = "high-german",
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

DefineLanguageNoun("Mut", {
	Language = "high-german",
	Meanings = {"Courage"},
	SingularNominative = "Mut",
	Gender = "Masculine",
	Uncountable = true,
	SuffixSingular = true,
	SuffixTypeName = {"person"}
})

DefineLanguageNoun("Nuss", { -- Source: http://www.duden.de/rechtschreibung/Nuss
	Language = "high-german",
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

DefineLanguageNoun("Ost", {
	Language = "high-german",
	Meanings = {"Ost"},
	SingularNominative = "Ost",
	SingularGenitive = "Ost",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Ostmark"
})

DefineLanguageNoun("Otto", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Otto",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Pippin", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Pippin",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Rose", { -- Source: http://www.duden.de/rechtschreibung/Rose_Pflanze_Bluete_Verdickung
	Language = "high-german",
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

DefineLanguageNoun("Salz", {
	Language = "high-german",
	Meanings = {"Salt"},
	SingularNominative = "Salz",
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: Salzburg
})

DefineLanguageNoun("Schaf", {
	Language = "high-german",
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

DefineLanguageNoun("Schloss", { -- Source: http://www.duden.de/rechtschreibung/Schloss
	Language = "high-german",
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

DefineLanguageNoun("Schlossberg", { -- Source: http://www.duden.de/rechtschreibung/Schlossberg
	Language = "high-german",
	Meanings = {"Hill under a Castle", "Hill under a Palace", "Mountain under a Castle", "Mountain under a Palace"},
	SingularNominative = "Schlossberg",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"terrain-hills"} -- example: "Schlossberg" (Graz)
})

DefineLanguageNoun("Schmiede", {
	Language = "high-german",
	Meanings = {"Smithy"},
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
	SuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Schnee", {
	Language = "high-german",
	Meanings = {"Snow"},
	SingularNominative = "Schnee",
	Gender = "Masculine",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {"terrain-mountains"} -- example: "Schneeberg"
})

DefineLanguageNoun("Sieg", {
	Language = "high-german",
	Meanings = {"Victory"},
	SingularNominative = "Sieg",
	PluralNominative = "Siege",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageNoun("Spitze", {
	Language = "high-german",
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

DefineLanguageNoun("Stadt", {
	Language = "high-german",
	Meanings = {"City"},
	SingularNominative = "Stadt",
	PluralNominative = "Städte",
	Gender = "Feminine",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Eisenstadt", "Josefstadt", "Kronstadt", "Leopoldstadt"
})

DefineLanguageNoun("Stuhl", {
	Language = "high-german",
	Meanings = {"Chair"},
	SingularNominative = "Stuhl",
	SingularGenitive = "Stuhls",
	Gender = "Masculine"
	-- Stuhlweissenburg uses as a prefix, but without being genitive?
})

DefineLanguageNoun("Tal", {
	Language = "high-german",
	Meanings = {"Valley"},
	SingularNominative = "Tal",
	PluralNominative = "Täler",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Zillertal"
})

DefineLanguageNoun("Teufel", {
	Language = "high-german",
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

DefineLanguageNoun("Turm", {
	Language = "high-german",
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

DefineLanguageNoun("Waid", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "high-german",
	Meanings = {"Woad"},
	SingularNominative = "Waid"
})

DefineLanguageNoun("Walter", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Walter",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Wasser", {
	Language = "high-german",
	Meanings = {"Water"},
	SingularNominative = "Wasser",
	Gender = "Neuter",
	Uncountable = true,
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Hühnerwasser"
})

DefineLanguageNoun("Werner", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Werner",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("West", {
	Language = "high-german",
	Meanings = {"West"},
	SingularNominative = "West",
	SingularGenitive = "West",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"province"} -- example: "Westphalien"
})

DefineLanguageNoun("Wilhelm", {
	Language = "high-german",
	Meanings = {"?"},
	SingularNominative = "Wilhelm",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Wolf", {
	Language = "high-german",
	Meanings = {"Wolf"},
	SingularNominative = "Wolf",
	PluralNominative = "Wölfe",
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {"person"}
})

DefineLanguageVerb("Hacken", {
	Language = "high-german",
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

DefineLanguageAdjective("Alt", {
	Language = "high-german",
	Meanings = {"Old"},
	Positive = "Alt",
	PrefixTypeName = {"settlement"} -- example: "Altsohl"
})

DefineLanguageAdjective("Brennend", {
	Language = "high-german",
	Meanings = {"Burning"},
	Positive = "Brennend",
	PrefixTypeName = {
		"unit-teuton-smithy" -- seems sensible
	}
})

DefineLanguageAdjective("Feurig", {
	Language = "high-german",
	Meanings = {"Fiery"},
	Positive = "Feurig",
	PrefixTypeName = {
		"unit-teuton-smithy" -- seems sensible
	}
})

DefineLanguageAdjective("Hart", { -- Source: http://www.duden.de/rechtschreibung/hart
	Language = "high-german",
	Meanings = {"Hard"},
	Positive = "Hart",
	Comparative = "Härter",
	Superlative = "Härteste",
	SuffixTypeName = {"person"} -- examples: "Alphart", "Wolfhart"
})

DefineLanguageAdjective("Neu", {
	Language = "high-german",
	Meanings = {"New"},
	Positive = "Neu",
	PrefixTypeName = {
		"settlement",
		"unit-teuton-smithy" -- seems sensible
	} -- example: "Neusohl"
})

DefineLanguageAdjective("Schwartz", {
	Language = "high-german",
	Meanings = {"Black"},
	Positive = "Schwartz",
	PrefixTypeName = {
		"unit-teuton-smithy" -- seems sensible
	}
})

DefineLanguageAdjective("Weiß", {
	Language = "high-german",
	Meanings = {"White"},
	Positive = "Weiß",
	PrefixTypeName = {
		"settlement", -- example: "Weisskirchen"
		"terrain-mountains", -- example: "Weißkugel"
		"unit-teuton-smithy" -- seems sensible
	}
})

DefineLanguageAdjective("Wild", {
	Language = "high-german",
	Meanings = {"Wild"},
	Positive = "Wild",
	PrefixTypeName = {"terrain-mountains"} -- example: "Wildspitze"
})

DefineLanguageAdverb("Mehr", {
	Language = "high-german",
	Meanings = {"More"}
})

DefineLanguageNumeral("Fünf", {
	Language = "high-german",
	Number = 5,
	PrefixTypeName = {"settlement"} -- example: "Fünfkirchen"
})

DefineLanguageNumeral("Sieben", {
	Language = "high-german",
	Number = 7,
	PrefixTypeName = {"province"} -- example: "Siebenbürgen"
})
