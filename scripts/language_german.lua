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

DefineCivilizationLanguage("teuton", -- German
	"nouns", {
		"Adel", {
			"meaning", "Noble",
			"singular-nominative", "Adel",
			"singular-genitive", "Adels",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-settlement-name", true -- example: "Adelsberg"
		},
		"Bär", { -- Source: http://www.duden.de/rechtschreibung/Baer_Raubtier
			"meaning", "Bear",
			"singular-nominative", "Bär",
			"singular-accusative", "Bären",
			"singular-dative", "Bären",
			"singular-genitive", "Bären",
			"plural-nominative", "Bären",
			"plural-accusative", "Bären",
			"plural-dative", "Bären",
			"plural-genitive", "Bären",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-terrain-name", "Hills", true, -- example: "Bärenberg"
		},
		"Berg", {
			"meaning", "Mountain, Hill",
			"singular-nominative", "Berg",
			"plural-nominative", "Berge",
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-province-name", true, -- example: "Vorarlberg" (Vorarlberg is a special case, however - ideally we should generate mountain names like "Arlberg", and then have the possibility of adding the prefix "Vor" regarding the mountain, if it is on the edge of the province
			"suffix-settlement-name", true, -- examples: "Adelsberg", "Lemberg", "Königsberg", "Spielberg"
			"suffix-terrain-name", "Hills", true, -- example: "Hackenberg"
			"suffix-terrain-name", "Mountains", true -- example: "Schneeberg"
		},
		"Bruck", {
			"meaning", "Bridge",
			"singular-nominative", "Bruck",
			"plural-nominative", "Brucken",
			"gender", "Feminine",
			"suffix-singular", true,
			"suffix-settlement-name", true -- example: "Innsbruck"
		},
		"Burg", {
			"meaning", "Castle",
			"singular-nominative", "Burg",
			"plural-nominative", "Burgen",
			"gender", "Feminine",
			"prefix-plural", true,
			"prefix-province-name", true, -- example: "Burgenland"
			"suffix-singular", true,
			"suffix-province-name", true, -- example: "Brandenburg"
			"suffix-settlement-name", true -- examples: Hamburg, Klausenburg, Marburg, Nikolsburg, Ödenburg, Regensburg, Salzburg, Schässburg
		},
		"Dorf", {
			"meaning", "Village",
			"singular-nominative", "Dorf",
			"plural-nominative", "Dörfer",
			"gender", "Neuter",
			"suffix-singular", true,
			"suffix-settlement-name", true -- examples: Frohsdorf, Gänserndorf
		},
		"Drasch", {
			"meaning", "Precipitation",
			"singular-nominative", "Drasch",
			"singular-accusative", "Drasch",
			"singular-dative", "Drasch",
			"singular-genitive", "Draschs",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-terrain-name", "Mountains", true -- example: "Draschturm"
		},
		"Eisen", {
			"meaning", "Iron",
			"singular-nominative", "Eisen",
			"gender", "Neuter",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-settlement-name", true -- examples: "Eisenerz", "Eisenstadt"
		},
		"Erz", {
			"meaning", "Ore",
			"singular-nominative", "Erz",
			"singular-accusative", "Erz",
			"singular-dative", "Erz",
			"singular-genitive", "Erzes",
			"plural-nominative", "Erze",
			"plural-accusative", "Erze",
			"plural-dative", "Erzen",
			"plural-genitive", "Erze",
			"gender", "Neuter",
			"suffix-singular", true,
			"suffix-settlement-name", true -- example: "Eisenerz"
		},
		"Gott", {
			"meaning", "God",
			"singular-nominative", "Gott",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-personal-name", true -- example: Gottfried
		},
		"Hacken", {
			"meaning", "Heel",
			"singular-nominative", "Hacken",
			"singular-accusative", "Hacken",
			"singular-dative", "Hacken",
			"singular-genitive", "Hackens",
			"plural-nominative", "Hacken",
			"plural-accusative", "Hacken",
			"plural-dative", "Hacken",
			"plural-genitive", "Hacken",
			"gender", "Masculine",
			"prefix-plural", true, -- should it really be so? at least this makes the correct form of the name be preserved
			"prefix-terrain-name", "Hills", true -- example: "Hackenberg"
		},
		"Hagen", { -- Source: http://www.duden.de/rechtschreibung/Hagen
			"meaning", "?", -- personal name
			"singular-nominative", "Hagen",
			"singular-accusative", "Hagen", -- source also gives the alternative form "Hagens"
			"singular-dative", "Hagen",
			"singular-genitive", "Hagen",
			"gender", "Masculine",
			"personal-name", true
		},
		"Hof", {
			"meaning", "Court",
			"singular-nominative", "Hof",
			"plural-nominative", "Höfe",
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-settlement-name", true -- example: "Königinhof"
		},
		"Horn", {
			"meaning", "Horn",
			"singular-nominative", "Horn",
			"singular-genitive", "Horns",
			"plural-nominative", "Hörner",
			"gender", "Neuter",
			"suffix-singular", true,
			"suffix-terrain-name", "Mountains", true -- example: "Teufelshorn"
		},
		"Huhn", {
			"meaning", "Chicken",
			"singular-nominative", "Huhn",
			"singular-genitive", "Huhns", -- could also be "Huhnes"
			"plural-nominative", "Hühner",
			"plural-genitive", "Hühner",
			"gender", "Neuter",
			"prefix-plural", true,
			"prefix-settlement-name", true -- example: "Hühnerwasser"
		},
		"Hunger", { -- Source: http://www.duden.de/rechtschreibung/Hunger
			"meaning", "Hunger",
			"singular-nominative", "Hunger",
			"singular-accusative", "Hunger",
			"singular-dative", "Hunger",
			"singular-genitive", "Hungers",
			"gender", "Masculine",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-terrain-name", "Hills", true -- example: "Hungerberg"
		},
		"Hügel", {
			"meaning", "Hill",
			"singular-nominative", "Hügel",
			"singular-accusative", "Hügel",
			"singular-dative", "Hügel",
			"singular-genitive", "Hügels",
			"plural-nominative", "Hügel",
			"plural-accusative", "Hügel",
			"plural-dative", "Hügeln",
			"plural-genitive", "Hügel",
			"gender", "Masculine",
			"suffix-plural", true,
			"suffix-terrain-name", "Hills", true -- example: "Konstantinhügel" (http://www.wien.gv.at/umwelt/parks/anlagen/prater.html)
		},
		"Kirche", {
			"meaning", "Church",
			"singular-nominative", "Kirche",
			"plural-nominative", "Kirchen",
			"gender", "Feminine",
			"suffix-plural", true,
			"suffix-settlement-name", true -- examples: "Fünfkirchen", "Weisskirchen"
		},
		"König", {
			"meaning", "King",
			"singular-nominative", "König",
			"singular-genitive", "Königs",
			"plural-nominative", "Könige",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-settlement-name", true -- examples: "Königgrätz", "Königsberg"
		},
		"Königin", {
			"meaning", "Queen",
			"singular-nominative", "Königin",
			"singular-genitive", "Königin",
			"plural-nominative", "Königinnen",
			"gender", "Feminine",
			"prefix-singular", true,
			"prefix-settlement-name", true -- example: "Königinhof"
		},
		"Kugel", {
			"meaning", "Ball, Globe",
			"singular-nominative", "Kugel",
			"singular-accusative", "Kugel",
			"singular-dative", "Kugel",
			"singular-genitive", "Kugel",
			"plural-nominative", "Kugeln",
			"plural-accusative", "Kugeln",
			"plural-dative", "Kugeln",
			"plural-genitive", "Kugeln",
			"gender", "Feminine",
			"suffix-singular", true,
			"suffix-terrain-name", "Mountains", true -- example: "Weißkugel"
		},
		"Land", {
			"meaning", "Country",
			"singular-nominative", "Land",
			"singular-genitive", "Landes",
			"plural-nominative", "Länder",
			"plural-genitive", "Länder",
			"gender", "Neuter",
			"suffix-singular", true,
			"suffix-province-name", true -- example: "Burgenland"
		},
		"Mann", {
			"meaning", "Man",
			"singular-nominative", "Mann",
			"plural-nominative", "Männer",
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: Hermann, Karlmann
		},
		"Mark", {
			"meaning", "March",
			"singular-nominative", "Mark",
			"plural-nominative", "Marken",
			"gender", "Feminine",
			"suffix-singular", true,
			"suffix-province-name", true -- example: "Steiermark" (Styria)
		},
		"Mut", {
			"meaning", "Courage",
			"singular-nominative", "Mut",
			"gender", "Masculine",
			"uncountable", true,
			"suffix-singular", true,
			"suffix-personal-name", true
		},
		"Nuss", { -- Source: http://www.duden.de/rechtschreibung/Nuss
			"meaning", "Nut",
			"singular-nominative", "Nuss",
			"singular-accusative", "Nuss",
			"singular-dative", "Nuss",
			"singular-genitive", "Nuss",
			"plural-nominative", "Nüsse",
			"plural-accusative", "Nüsse",
			"plural-dative", "Nüssen",
			"plural-genitive", "Nüsse",
			"gender", "Feminine",
			"prefix-singular", true,
			"prefix-terrain-name", "Hills", true -- example: "Nussberg"
		},
		"Ost", {
			"meaning", "Ost",
			"singular-nominative", "Ost",
			"singular-genitive", "Ost",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-province-name", true -- example: "Ostmark"
		},
		"Rose", { -- Source: http://www.duden.de/rechtschreibung/Rose_Pflanze_Bluete_Verdickung
			"meaning", "Rose",
			"singular-nominative", "Rose",
			"singular-accusative", "Rose",
			"singular-dative", "Rose",
			"singular-genitive", "Rose",
			"plural-nominative", "Rosen",
			"plural-accusative", "Rosen",
			"plural-dative", "Rosen",
			"plural-genitive", "Rosen",
			"gender", "Feminine",
			"prefix-plural", true,
			"prefix-terrain-name", "Hills", true -- example: "Rosenhügel"
		},
		"Salz", {
			"meaning", "Salt",
			"singular-nominative", "Salz",
			"gender", "Masculine",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-settlement-name", true -- example: Salzburg
		},
		"Schaf", {
			"meaning", "Sheep",
			"singular-nominative", "Schaf",
			"singular-accusative", "Schaf",
			"singular-dative", "Schaf",
--			"singular-genitive", "Schafes", -- source also gives the alternative form "Schafs" 
			"plural-nominative", "Schafe",
			"plural-accusative", "Schafe",
			"plural-dative", "Schafen",
			"plural-genitive", "Schafe",
			"gender", "Neuter",
			"prefix-singular", true,
			"prefix-terrain-name", "Hills", true -- example: "Schafberg"
		},
		"Schloss", { -- Source: http://www.duden.de/rechtschreibung/Schloss
			"meaning", "Castle, Palace",
			"singular-nominative", "Schloss",
			"singular-accusative", "Schloss",
			"singular-dative", "Schloss",
			"singular-genitive", "Schlosses",
			"plural-nominative", "Schlösser",
			"plural-accusative", "Schlösser",
			"plural-dative", "Schlössern",
			"plural-genitive", "Schlösser",
			"gender", "Neuter",
		},
		"Schlossberg", { -- Source: http://www.duden.de/rechtschreibung/Schlossberg
			"meaning", "Hill under a Castle, Hill under a Palace, Mountain under a Castle, Mountain under a Palace",
			"singular-nominative", "Schlossberg",
			"gender", "Masculine"
--			"terrain-name", "Hills", true -- example: "Schlossberg" (Graz)
		},
		"Schnee", {
			"meaning", "Snow",
			"singular-nominative", "Schnee",
			"gender", "Masculine",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-terrain-name", "Mountains", true -- example: "Schneeberg"
		},
		"Sieg", {
			"meaning", "Victory",
			"singular-nominative", "Sieg",
			"plural-nominative", "Siege",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-personal-name", true
		},
		"Spitze", {
			"meaning", "Tip, Peak",
			"singular-nominative", "Spitze",
			"singular-accusative", "Spitze",
			"singular-dative", "Spitze",
			"singular-genitive", "Spitze",
			"plural-nominative", "Spitzen",
			"plural-accusative", "Spitzen",
			"plural-dative", "Spitzen",
			"plural-genitive", "Spitzen",
			"gender", "Feminine",
			"suffix-singular", true,
			"suffix-terrain-name", "Mountains", true -- example: "Wildspitze"
		},
		"Stadt", {
			"meaning", "City",
			"singular-nominative", "Stadt",
			"plural-nominative", "Städte",
			"gender", "Feminine",
			"suffix-singular", true,
			"suffix-settlement-name", true -- examples: "Eisenstadt", "Josefstadt", "Kronstadt", "Leopoldstadt"
		},
		"Stuhl", {
			"meaning", "Chair",
			"singular-nominative", "Stuhl",
			"singular-genitive", "Stuhls",
			"gender", "Masculine"
			-- Stuhlweissenburg uses as a prefix, but without being genitive?
		},
		"Tal", {
			"meaning", "Valley",
			"singular-nominative", "Tal",
			"plural-nominative", "Täler",
			"gender", "Neuter",
			"suffix-singular", true,
			"suffix-settlement-name", true -- examples: "Zillertal"
		},
		"Teufel", {
			"meaning", "Devil",
			"singular-nominative", "Teufel",
			"singular-accusative", "Teufel",
			"singular-dative", "Teufel",
			"singular-genitive", "Teufels",
			"plural-nominative", "Teufel",
			"plural-accusative", "Teufel",
			"plural-dative", "Teufeln",
			"plural-genitive", "Teufel",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-terrain-name", "Mountains", true -- example: "Teufelshorn"
		},
		"Turm", {
			"meaning", "Tower",
			"singular-nominative", "Turm",
			"singular-accusative", "Turm",
			"singular-dative", "Turm",
			"singular-genitive", "Turms",
			"plural-nominative", "Türme",
			"plural-accusative", "Türme",
			"plural-dative", "Türmen",
			"plural-genitive", "Türme",
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-terrain-name", "Mountains", true -- example: "Draschturm"
		},
		"Waid", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
			"meaning", "Woad",
			"singular-nominative", "Waid"
		},
		"Wasser", {
			"meaning", "Water",
			"singular-nominative", "Wasser",
			"gender", "Neuter",
			"uncountable", true,
			"suffix-singular", true,
			"suffix-settlement-name", true -- example: "Hühnerwasser"
		},
		"West", {
			"meaning", "West",
			"singular-nominative", "West",
			"singular-genitive", "West",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-province-name", true -- example: "Westphalien"
		},
		"Wolf", {
			"meaning", "Wolf",
			"singular-nominative", "Wolf",
			"plural-nominative", "Wölfe",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-personal-name", true
		}
	},
	"verbs", {
		"Hacken", {
			"meaning", "Chop",
			"infinitive", "Hacken",
			"singular-first-person-present", "Hacke",
			"singular-second-person-present", "Hackst",
			"singular-third-person-present", "Hackt",
			"plural-first-person-present", "Hacken",
			"plural-second-person-present", "Hackt",
			"plural-third-person-present", "Hacken",
			"singular-first-person-past", "Hackte",
			"singular-second-person-past", "Hacktest",
			"singular-third-person-past", "Hackte",
			"plural-first-person-past", "Hackten",
			"plural-second-person-past", "Hacktet",
			"plural-third-person-past", "Hackten",
			"participle-present", "Hackend",
			"participle-past", "Gehackt"
		},
	},
	"adjectives", {
		"Alt", {
			"meaning", "Old",
			"prefix-settlement-name", true -- example: "Altsohl"
		},
		"Neu", {
			"meaning", "New",
			"prefix-settlement-name", true -- example: "Neusohl"
		},
		"Weiß", {
			"meaning", "White",
			"prefix-settlement-name", true, -- example: "Weisskirchen"
			"prefix-terrain-name", "Mountains", true -- example: "Weißkugel"
		},
		"Wild", {
			"meaning", "Wild",
			"prefix-terrain-name", "Mountains", true -- example: "Wildspitze"
		}
	},
	"adverbs", {
		"Mehr", {
			"meaning", "More"
		}
	},
	"numerals", {
		"Fünf", {
			"number", 5,
			"prefix-settlement-name", true -- example: "Fünfkirchen"
		}
	}
)
