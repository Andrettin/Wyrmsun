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
--      languages.lua - Defines the civilizations' languages
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

DefineCivilizationLanguage("dwarf", -- Dwarven; mix of Norse, German and fantasy words used in dwarven contexts
	"nouns", {
		"Alf", {
			"meaning", "Elf",
			"singular-nominative", "Alf",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: Gandalf, Vindalf
		},
		"Haug", { -- from Norse mythology, "Svarinshaug" = "Svarin's Mound", "haug" = "mound"
			"meaning", "Mound",
			"singular-nominative", "Haug",
			"suffix-singular", true,
			"suffix-province-name", true -- example: Svarinshaug
		},
		"Joru", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "Joru" = "Sand"
			"meaning", "Sand",
			"singular-nominative", "Joru",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-province-name", true -- example: Joruvellir
		},
		"Mjod", {
			"meaning", "Mead",
			"singular-nominative", "Mjod",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-personal-name", true -- example: Mjodvitnir
		},
		"Skjaldi", {
			"meaning", "Shield",
			"singular-nominative", "Skjaldi",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: Eikinskjaldi
		},
		"Sol", {
			"meaning", "Sun",
			"singular-nominative", "Sol",
			"prefix-singular", true,
			"prefix-personal-name", true -- example: Solblindi
		},
		"Thjof", {
			"meaning", "Thief",
			"singular-nominative", "Thjof",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: Althjof
		},
		"Vellir", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "vellir" = "fields"
			"meaning", "Fields",
			-- what is the singular form?
			"plural-nominative", "Vellir",
			"suffix-plural", true,
			"suffix-province-name", true -- example: Joruvellir
		},
		"Vind", {
			"meaning", "Wind",
			"singular-nominative", "Vind",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-personal-name", true -- example: Vindalf
		},
		"Vitnir", {
			"meaning", "Wolf",
			"singular-nominative", "Vitnir",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: Mjodvitnir
		}
	},
	"verbs", {
		"Blindi", { -- should be infinitive form
			"meaning", "Blinded",
			-- infinitive form?
			"participle-past", "Blindi",
			"suffix-personal-name", true -- example: Solblindi
		},
		"Vis", { -- should be infinitive form
			"meaning", "Knowing",
			-- infinitive form?
			"participle-present", "Vis",
			"suffix-personal-name", true -- example: Alvis (all-knowing)
		}
	},
	"adjectives", {
		"Al", {
			"meaning", "Mighty", -- can also mean "All-"
			"prefix-personal-name", true -- examples: Alvis (all-knowing), Althjof (mighty thief)
		},
		"Eikin", {
			"meaning", "Oaken",
			"prefix-personal-name", true -- example: Eikinskjaldi
		},
		"Gand", {
			"meaning", "Magic",
			"prefix-personal-name", true -- example: Gandalf
		},
		"Rad", {
			"meaning", "Swift",
			"prefix-personal-name", true -- example: Radsvid
		}
	}
)

DefineCivilizationLanguage("germanic", -- Proto-Germanic
	"pronouns", {
		"Miz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Me", -- dative
			"dative", "Miz"
		},
		"Wiz", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "We",
			"nominative", "Wiz"
		}
	}
)

DefineCivilizationLanguage("goth", -- Gothic
	"nouns", {
		"Aihts", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Property", -- source gives the German "Besitz"
			"singular-nominative", "Aihts"
		},
		"Aiweins", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Lifetime", -- seemingly etymologically, if not actually
			"singular-nominative", "Aiweins"
		},
		"Aiz", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Bronze",
			"singular-nominative", "Aiz"
		},
		"Augo", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Eye",
			"singular-nominative", "Augo"
		},
		"Auso", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Ear", -- seemingly etymologically, if not actually
			"singular-nominative", "Auso"
		},
		"Dails", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Part",
			"singular-nominative", "Dails"
		},
		"Dauþus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Death",
			"singular-nominative", "Dauþus"
		},
		"Dius", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Animal",
			"singular-nominative", "Dius"
		},
		"Fisks", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Fish",
			"singular-nominative", "Fisks"
		},
		"Hairto", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Heart",
			"singular-nominative", "Hairto"
		},
		"Haubiþ", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Main", -- source gives German noun "Haupt" as transation
			"singular-nominative", "Haubiþ"
		},
		"Hlaifs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Bread",
			"singular-nominative", "Hlaifs"
		},
		"Hunds", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Dog",
			"singular-nominative", "Hunds"
		},
		"Kas", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Container",
			"singular-nominative", "Kas"
		},
		"Laun", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Pay", -- source gives German word "Lohn" as transation
			"singular-nominative", "Laun"
		},
		"Raus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Tube", -- seemingly etymologically, if not actually
			"singular-nominative", "Raus"
		},
		"Sair", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Wound",
			"singular-nominative", "Sair"
		},
		"Saiwala", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Soul",
			"singular-nominative", "Saiwala"
		},
		"Sauhts", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Sickness",
			"singular-nominative", "Sauhts"
		},
		"Waurms", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Worm", -- can also mean serpent (and probably could be extended to mean "wyrm" as well)
			"singular-nominative", "Waurms"
		},
		"Wigs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Way",
			"singular-nominative", "Wigs"
		}
	},
	"verbs", {
		"Bairiþ", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Bears",
			-- infinitive form?
			"singular-third-person-present", "Bairiþ"
		},
		"Hausjan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Hear",
			"infinitive", "Hausjan"
		},
		"Hilpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Help",
			"infinitive", "Hilpan"
		},
		"Hlaupan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Run",
			"infinitive", "Hlaupan"
		},
		"Itan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Eat",
			"infinitive", "Itan"
		},
		"Laihun", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Lent", -- "we lent"
			-- infinitive form?
			"plural-first-person-past", "Laihun"
		},
		"Saihan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "See",
			"infinitive", "Saihan"
		},
		"Stautan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Push", -- source gives translation as the German word "stoßen"
			"infinitive", "Stautan"
		},
		"Wairþan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Become",
			"infinitive", "Wairþan"
		},
		"Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Know",
			"infinitive", "Witan"
		}
	},
	"adjectives", {
		"Faihs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Shining"
		},
		"Hauhs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "High" -- source gives translation as the German word "hoch"
		},
		"Juggs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Young"
		},
		"Laus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Empty" -- source gives translation as the German words "los" and "leer"
		},
		"Laus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Loose" -- source gives translation as the German words "los" and "leer"
		},
		"Maiza", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "More" -- perhaps a "determiner" class of words should be added?
		},
		"Maiza", { -- is comparative, but shouldn't be; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Larger", -- this is the meaning for the comparative, should be replaced when we got hold of the normal version of the adjective
			"comparative", "Maiza"
		},
		"Rauþs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Red"
		}
	},
	"pronouns", {
		"Mis", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Me", -- dative
			"dative", "Mis"
		},
		"Weis", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "We",
			"nominative", "Weis"
		}
	},
	"adverbs", {
		"Aufto", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Perhaps"
		},
		"Auk", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Also" -- source gives translation as the German word "auch"
		},
		"Us", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Out"
		},
		"Waila", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Well"
		}
	},
	"conjunctions", {
		"Aiþþau", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Or"
		}
	}
)

DefineCivilizationLanguage("latin",
	"nouns", {
		"Sūs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Sow",
			"singular-nominative", "Sūs"
		}
	}
)

DefineCivilizationLanguage("norse", -- Old Norse
	"nouns", {
		"Fiskr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Fish",
			"singular-nominative", "Fiskr"
		},
		"Hundr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Dog",
			"singular-nominative", "Hundr"
		},
		"Vegr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Way",
			"singular-nominative", "Vegr"
		}
	},
	"verbs", {
		"Eta", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Eat",
			"infinitive", "Eta"
		},
		"Verða", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Become",
			"infinitive", "Verða"
		},
		"Vita", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Know",
			"infinitive", "Vita"
		}
	}
)

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
			"suffix-singular", true,
			"suffix-settlement-name", true -- examples: Hamburg, Klausenburg, Marburg, Nikolsburg, Ödenburg, Regensburg, Salzburg, Schässburg
		},
		"Dorf", {
			"meaning", "Village",
			"singular-nominative", "Dorf",
			"plural-nominative", "Dörfer",
			"gender", "Neutral",
			"suffix-singular", true,
			"suffix-settlement-name", true -- examples: Frohsdorf, Gänserndorf
		},
		"Gott", {
			"meaning", "God",
			"singular-nominative", "Gott",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-personal-name", true -- example: Gottfried
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
			"prefix-settlement-name", true -- example: Königgrätz
		},
		"Mann", {
			"meaning", "Man",
			"singular-nominative", "Mann",
			"plural-nominative", "Männer",
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: Hermann, Karlmann
		},
		"Mut", {
			"meaning", "Courage",
			"singular-nominative", "Mut",
			"gender", "Masculine",
			"uncountable", true,
			"suffix-singular", true,
			"suffix-personal-name", true
		},
		"Salz", {
			"meaning", "Salt",
			"singular-nominative", "Salz",
			"gender", "Masculine",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-settlement-name", true -- example: Salzburg
		},
		"Sieg", {
			"meaning", "Victory",
			"singular-nominative", "Sieg",
			"plural-nominative", "Siege",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-personal-name", true
		},
		"Stadt", {
			"meaning", "City",
			"singular-nominative", "Stadt",
			"plural-nominative", "Städte",
			"gender", "Feminine",
			"suffix-singular", true,
			"suffix-settlement-name", true -- examples: "Eisenstadt", "Josefstadt", "Kronstadt", "Leopoldstadt"
		},
		"Tal", {
			"meaning", "Valley",
			"singular-nominative", "Tal",
			"plural-nominative", "Täler",
			"gender", "Neutral",
			"suffix-singular", true,
			"suffix-settlement-name", true -- examples: "Zillertal"
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
	"numerals", {
		"Fünf", {
			"number", 5,
			"prefix-settlement-name", true -- example: "Fünfkirchen"
		}
	}
)

-- these are kept for reference, but not used
DefineCivilizationLanguage("old-english", -- Old English
	"nouns", {
		"Bearn", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
			"meaning", "Child",
			"singular-nominative", "Bearn"
		},
		"Eorþe", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
			"meaning", "Earth",
			"singular-nominative", "Eorþe",
			"uncountable", true
		},
		"Feoh", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
			"meaning", "Cattle",
			"singular-nominative", "Feoh"
		},
		"Fisc", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Fish",
			"singular-nominative", "Fisc"
		},
		"Hweowol", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
			"meaning", "Wheel",
			"singular-nominative", "Hweowol"
		},
		"Hléor", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Cheek",
			"singular-nominative", "Hléor"
		},
		"Hund", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Dog",
			"singular-nominative", "Hund"
		},
		"Neaht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
			"meaning", "Night",
			"singular-nominative", "Neaht"
		},
		"Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Way",
			"singular-nominative", "Weg"
		}
	},
	"verbs", {
		"Aseowen", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 239.
			"meaning", "Sifted", -- it seems like Aseowen corresponds to the English past participle of "sift" (the source says simply Aseowen = Sifted); maybe it is an adjective instead?
			-- infinitive form?
			"participle-past", "Aseowen"
		},
		"Etan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Eat",
			"infinitive", "Etan"
		},
		"Healdan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
			"meaning", "Hold",
			"infinitive", "Healdan"
		},
		"Helpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Help",
			"infinitive", "Helpan"
		},
		"Ligon", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Lent", -- "we lent"
			-- infinitive form?
			"plural-first-person-past", "Ligon" -- source actually gives "-ligon"
		},
		"Seah", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
			"meaning", "Saw",
			-- infinitive form?
			"singular-third-person-past", "Seah"
		},
		"Tiohhian", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 239.
			"meaning", "Consider",
			"infinitive", "Tiohhian"
		},
		"Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Know",
			"infinitive", "Witan"
		}
	},
	"adverbs", {
		"Wel", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Well"
		}
	},
	"conjunctions", {
		"Eþþa", { -- Also given as "Oþþe", are Eþþa and Oþþe two forms of "or" in Old English, or are they just different ways to write the same word in that language?; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Or"
		}
	}
)

DefineCivilizationLanguage("old-high-german", -- Old High German
	"nouns", {
		"Ēht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Property", -- source gives the German "Besitz"
			"singular-nominative", "Ēht"
		},
		"Fisk", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Fish",
			"singular-nominative", "Fisk"
		},
		"Herza", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Heart",
			"singular-nominative", "Herza"
		},
		"Hleib", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Bread",
			"singular-nominative", "Hleib"
		},
		"Houbit", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Main", -- source gives German noun "Haupt" as transation
			"singular-nominative", "Houbit"
		},
		"Hunt", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Dog",
			"singular-nominative", "Hunt"
		},
		"Kōl", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Cabbage",
			"singular-nominative", "Kōl"
		},
		"Lōn", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Pay", -- source gives German word "Lohn" as transation
			"singular-nominative", "Lōn"
		},
		"Ouga", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Eye",
			"singular-nominative", "Ouga"
		},
		"Sēula", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Soul",
			"singular-nominative", "Sēula" -- source also gives "Sēla"
		},
		"Suht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Sickness",
			"singular-nominative", "Suht"
		},
		"Teil", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Part",
			"singular-nominative", "Teil"
		},
		"Tōd", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Death",
			"singular-nominative", "Tōd"
		},
		"Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Way",
			"singular-nominative", "Weg"
		},
		"Wurm", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Worm", -- can also mean serpent (and probably could be extended to mean "wyrm" as well)
			"singular-nominative", "Wurm"
		}
	},
	"verbs", {
		"Birit", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Bears",
			-- infinitive form?
			"singular-third-person-present", "Birit"
		},
		"Ezzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Eat",
			"infinitive", "Ezzan"
		},
		"Helfan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Help",
			"infinitive", "Helfan"
		},
		"Hōren", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Hear",
			"infinitive", "Hōren"
		},
		"Loufan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Run",
			"infinitive", "Loufan"
		},
		"Liwum", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Lent", -- "we lent"
			-- infinitive form?
			"plural-first-person-past", "Liwum"
		},
		"Sehan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "See",
			"infinitive", "Sehan"
		},
		"Stōzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Push", -- source gives translation as the German word "stoßen"
			"infinitive", "Stōzan"
		},
		"Werdan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Become",
			"infinitive", "Werdan"
		},
		"Wizzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Know",
			"infinitive", "Wizzan"
		}
	},
	"adjectives", {
		"Hōh", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "High" -- source gives translation as the German word "hoch"
		},
		"Jung", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Young"
		},
		"Lōs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Empty" -- source gives translation as the German words "los" and "leer"
		},
		"Lōs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Loose" -- source gives translation as the German words "los" and "leer"
		},
		"Mēro", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "More", -- perhaps a "determiner" class of words should be added?
			"singular-nominative", "Mēro"
		},
		"Rōt", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Red",
			"singular-nominative", "Rōt"
		}
	},
	"adverbs", {
		"Ouh", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Also" -- source gives translation as the German word "auch"
		},
		"Wela", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Well"
		}
	},
	"conjunctions", {
		"Eddo", { -- Also given as "Edo", are Eddo and Edo two forms of "or" in Old High German, or are they just different ways to write the same word in that language?; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Or"
		}
	}
)

DefineCivilizationLanguage("saxon", -- Old Saxon
	"nouns", {
		"Fisc", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Fish",
			"singular-nominative", "Fisc"
		},
		"Herta", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Heart",
			"singular-nominative", "Herta"
		},
		"Hund", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Dog",
			"singular-nominative", "Hund"
		},
		"Suht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Sickness",
			"singular-nominative", "Suht"
		},
		"Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Way",
			"singular-nominative", "Weg"
		},
		"Wurm", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Worm", -- can also mean serpent (and probably could be extended to mean "wyrm" as well)
			"singular-nominative", "Wurm"
		}
	},
	"verbs", {
		"Birid", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Bears",
			-- infinitive form?
			"singular-third-person-present", "Birid"
		},
		"Etan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Eat",
			"infinitive", "Etan"
		},
		"Helpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Help",
			"infinitive", "Helpan"
		},
		"Sehan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "See",
			"infinitive", "Sehan"
		},
		"Werthan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Become",
			"infinitive", "Werthan"
		},
		"Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Know",
			"infinitive", "Witan"
		}
	},
	"adjectives", {
		"Jung", {
			"meaning", "Young" -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
		}
	},
	"adverbs", {
		"Wel", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Well"
		}
	}
)

DefineCivilizationLanguage("old-icelandic", -- Old Icelandic
	"nouns", {
		"Eyra", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Ear",
			"singular-nominative", "Eyra"
		},
		"Ker", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Container",
			"singular-nominative", "Ker"
		},
		"Reyrr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Tube",
			"singular-nominative", "Reyrr"
		}
	},
	"numerals", {
		"Tuǽr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"number", 2
		}
	}
)

DefineCivilizationLanguage("old-swedish", -- Old Swedish
	"nouns", {
		"Ēr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Bronze",
			"singular-nominative", "Ēr"
		}
	},
	"adjectives", {
		"Mēre", { -- is comparative, but shouldn't be; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Larger", -- this is the meaning for the comparative, should be replaced when we got hold of the normal version of the adjective
			"comparative", "Mēre"
		}
	},
	"numerals", {
		"Tuar", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"number", 2
		}
	}
)
