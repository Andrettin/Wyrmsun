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

Load("scripts/language_germanic.lua")
Load("scripts/language_norse.lua")
Load("scripts/language_german.lua")
Load("scripts/language_gothic.lua")
Load("scripts/language_latin.lua")
Load("scripts/language_greek.lua")
Load("scripts/language_dwarven.lua")

-- these are kept for reference, but not used
DefineCivilizationLanguage("old-english", -- Old English
	"nouns", {
		"Ærn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "House",
			"singular-nominative", "Ærn",
			"gender", "Neuter"
		},
		"Bearn", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
			"meaning", "Child",
			"singular-nominative", "Bearn"
		},
		"Breord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Shore, Edge",
			"singular-nominative", "Breord"
		},
		"Brord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
			"meaning", "Point, Sprout",
			"singular-nominative", "Brord",
			"gender", "Masculine"
		},
		"Cên", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-7.
			"meaning", "Pine, Fir, Spruce",
			"singular-nominative", "Cên",
			"gender", "Masculine"
		},
		"Ealdorneru", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Saving of a Life",
			"singular-nominative", "Ealdorneru",
			"gender", "Feminine"
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
		"Gereord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Meal, Feast, Food",
			"singular-nominative", "Gereord",
			"gender", "Neuter"
		},
		"Gierd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Rod, Prickle",
			"singular-nominative", "Gierd"
		},
		"Hād", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 3.
			"meaning", "Hair",
			"singular-nominative", "Hād"
		},
		"Heordan", { -- this is the plural, what is the singular? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Hards of Flax",
			"plural-nominative", "Heordan"
		},
		"Heorde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Flax Fiber",
			"singular-nominative", "Heorde",
			"uncountable", true -- as a material, it is likely to be uncountable, specially since there is a word for "hards of flax"
		},
		"Hræn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Wave, Sea",
			"singular-nominative", "Hræn", -- source also gives the alternative form "Hærn"
			"gender", "Feminine"
		},
		"Hweowol", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
			"meaning", "Wheel",
			"singular-nominative", "Hweowol"
		},
		"Hléor", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Cheek",
			"singular-nominative", "Hléor"
		},
		"Hord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Treasure, Amassed Wealth",
			"singular-nominative", "Hord"
		},
		"Hund", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Dog",
			"singular-nominative", "Hund"
		},
		"Mearg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Marrow",
			"singular-nominative", "Mearg"
		},
		"Mēd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
			"meaning", "Reward, Payment",
			"singular-nominative", "Mēd", -- source also gives as an alternative the form "Meord"
			"gender", "Feminine"
		},
		"Neaht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
			"meaning", "Night",
			"singular-nominative", "Neaht"
		},
		"Ord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Point, Spearpoint",
			"singular-nominative", "Ord",
			"gender", "Masculine"
		},
		"Orlæg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Fate",
			"singular-nominative", "Orlæg",
			"gender", "Neuter"
		},
		"Ræsn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Plank, Ceiling",
			"singular-nominative", "Ræsn",
			"gender", "Neuter"
		},
		"Reord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
			"meaning", "Voice, Sound, Speech",
			"singular-nominative", "Reord",
			"gender", "Feminine"
		},
		"Twīn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
			"meaning", "Canvas, Screen",
			"singular-nominative", "Twīn"
		},
		"Wâd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
			"meaning", "Woad",
			"singular-nominative", "Wâd"
		},
		"Wælcyrige", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Sorceress",
			"singular-nominative", "Wælcyrige",
			"gender", "feminine"
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
		"Gereordian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Feed, Entertain, Feast",
			"infinitive", "Gereordian"
		},
		"Healdan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
			"meaning", "Hold",
			"infinitive", "Healdan"
		},
		"Helpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Help",
			"infinitive", "Helpan"
		},
		"Leornian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Learn",
			"infinitive", "Leornian"
		},
		"Lǣran", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
			"meaning", "Teach",
			"infinitive", "Lǣran" -- causative verb
		},
		"Ligon", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Lent", -- "we lent"
			-- infinitive form?
			"plural-first-person-past", "Ligon" -- source actually gives "-ligon"
		},
		"Nerian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Save, Protect",
			"infinitive", "Nerian"
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
	"adjectives", {
		"Māra", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "More",
			"comparative", "Māra",
			"superlative", "Māst"
		}
	},
	"pronouns", {
		"Mē", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Me", -- dative
			"dative", "Mē"
		},
		"Wē", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "We",
			"nominative", "Wē"
		}
	},
	"adverbs", {
		"Mā", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "More"
		},
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
		"Brart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Edge, Forepart of a Ship",
			"singular-nominative", "Brart",
			"gender", "Masculine"
		},
		"Brort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
			"meaning", "Skewer, Projectile, Edge, Rim, Forepart of a Ship",
			"singular-nominative", "Brort",
			"gender", "Masculine"
		},
		"Chien", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
			"meaning", "Resinous Wood",
			"singular-nominative", "Chien" -- source also gives alternative forms "Kien" and "Kên"
		},
		"Ēht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Property", -- source gives the German "Besitz"
			"singular-nominative", "Ēht"
		},
		"Fisk", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Fish",
			"singular-nominative", "Fisk"
		},
		"Gart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Rod, Prickle",
			"singular-nominative", "Gart"
		},
		"Herza", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Heart",
			"singular-nominative", "Herza"
		},
		"Hleib", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Bread",
			"singular-nominative", "Hleib"
		},
		"Hort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Treasure",
			"singular-nominative", "Hort"
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
		"Marc", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
			"meaning", "Marrow",
			"singular-nominative", "Marc",
			"singular-genitive", "Marges" -- source also gives "Marages" as a possible genitive
		},
		"Mēta", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Reward, Payment",
			"singular-nominative", "Mēta" -- source also gives as alternatives the forms "Miata" and "Mieta"
		},
		"Nara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Salvation, Rescue, Nourishment, Sustenance", -- meaning given for Middle High German, but not for Old High German, presumably because both are the same
			"singular-nominative", "Nara",
			"gender", "Feminine"
		},
		"Orlac", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Fate",
			"singular-nominative", "Orlac",
			"gender", "Masculine"
		},
		"Ort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Point, Corner, Edge of a Part, Edge of a Piece, Edge of a Small Coin",
			"singular-nominative", "Ort",
			"gender", "Masculine"
		},
		"Ouga", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Eye",
			"singular-nominative", "Ouga"
		},
		"Rarta", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 10.
			"meaning", "Voice, Modulation",
			"singular-nominative", "Rarta",
			"gender", "Feminine"
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
		"Urlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Fate",
			"singular-nominative", "Urlaga",
			"gender", "Feminine"
		},
		"Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Way",
			"singular-nominative", "Weg"
		},
		"Weit", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
			"meaning", "Woad",
			"singular-nominative", "Weit",
			"gender", "Masculine"
		},
		"Wurm", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Worm, Serpent", -- probably could be extended to mean "wyrm" as well
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
		"Lēren", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
			"meaning", "Teach",
			"infinitive", "Lēren" -- causative verb
		},
		"Lernēn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Learn",
			"infinitive", "Lernēn" -- source also gives "Lirnēn" as an alternative
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
		"Nerjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Heal, Sustain the Life of, Save, Protect, Nourish", -- meaning given for Middle High German, but not for Old High German, presumably because both are the same
			"infinitive", "Nerjan" -- source also gives alternative forms "Nerren" and "Neren"
		},
		"Sehan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "See",
			"infinitive", "Sehan"
		},
		"Stōzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Push", -- source gives translation as the German word "stoßen"
			"infinitive", "Stōzan"
		},
		"Zwirnēn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "Twine",
			"infinitive", "Zwirnēn" -- source also gives the alternative form "Zwirnōn"
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
			"meaning", "Empty, Loose" -- source gives translation as the German words "los" and "leer"
		},
		"Mēro", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "More", -- perhaps a "determiner" class of words should be added?
			"comparative", "Mēro", -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"superlative", "Mēst" -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
		},
		"Rōt", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Red",
		}
	},
	"pronouns", {
		"Mir", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Me", -- dative
			"dative", "Mir"
		},
		"Wī̆r", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "We",
			"nominative", "Wī̆r"
		}
	},
	"adverbs", {
		"Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "More"
		},
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

DefineCivilizationLanguage("middle-high-german", -- Middle High German
	"nouns", {
		"Gart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Prickle, Stick for Driving Animals",
			"singular-nominative", "Gart",
			"gender", "Masculine"
		},
		"Hort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Treasure",
			"singular-nominative", "Hort"
		},
		"Kien", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
			"meaning", "Fir, Spruce, Fir Splinter, Fir Torch, Spruce Splinter, Spruce Torch",
			"singular-nominative", "Kien",
			"gender", "Masculine"
		},
		"Marc", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Marrow",
			"singular-nominative", "Marc",
			"singular-genitive", "Marges"
		},
		"Miete", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
			"meaning", "Payment, Reward, Bribe",
			"singular-nominative", "Miete",
			"gender", "Feminine"
		},
		"Nare", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Salvation, Rescue, Nourishment, Sustenance",
			"singular-nominative", "Nare",
			"gender", "Feminine"
		},
		"Ort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Point, Corner, Edge of a Part, Edge of a Piece, Edge of a Small Coin",
			"singular-nominative", "Ort",
			"gender", "Masculine"
		},
		"Rünne", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Storm Surge",
			"singular-nominative", "Rünne",
			"gender", "Feminine"
		},
		"Weit", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
			"meaning", "Woad",
			"singular-nominative", "Weit",
			"gender", "Masculine"
		},
		"Zwirn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1-2, 6.
			"meaning", "Doubly Spun Twine",
			"singular-nominative", "Zwirn"
		}
	},
	"verbs", {
		"Lēren", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
			"meaning", "Teach",
			"infinitive", "Lēren" -- causative verb
		},
		"Lernen", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
			"meaning", "Learn",
			"infinitive", "Lernen"
		},
		"Nerigen", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Heal, Sustain the Life of, Save, Protect, Nourish",
			"infinitive", "Nerigen" -- source also gives alternative forms "Neren" and "Nern"
		},
		"Zwirnen", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "Twist Together Twice, Twine",
			"infinitive", "Zwirnen"
		}
	}
)


DefineCivilizationLanguage("saxon", -- Old Saxon
	"nouns", {
		"Fisc", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Fish",
			"singular-nominative", "Fisc"
		},
		"Gard", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Staff, Rod",
			"singular-nominative", "Gard"
		},
		"Herta", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Heart",
			"singular-nominative", "Herta"
		},
		"Hord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Treasure, Closed Interior, Hidden Interior",
			"singular-nominative", "Hord"
		},
		"Hund", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Dog",
			"singular-nominative", "Hund"
		},
		"Līfnara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Food, Nourishment",
			"singular-nominative", "Līfnara",
			"gender", "Feminine"
		},
		"Merg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Marrow",
			"singular-nominative", "Merg"
		},
		"Mēda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
			"meaning", "Payment",
			"singular-nominative", "Mēda", -- source also gives as an alternatives the form "Mieda"
			"gender", "Feminine"
		},
		"Ord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Point, Edge of a Blade",
			"singular-nominative", "Ord",
			"gender", "Masculine"
		},
		"Orlag", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Fate",
			"singular-nominative", "Orlag" -- source also gives the alternative form "Orlagi"
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
			"meaning", "Worm, Serpent", -- probably could be extended to mean "wyrm" as well
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
		"Lērian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
			"meaning", "Teach",
			"infinitive", "Lērian" -- causative verb
		},
		"Līnōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Learn",
			"infinitive", "Līnōn"
		},
		"Nerian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Save",
			"infinitive", "Nerian"
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
		},
		"Mēro", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "More",
			"comparative", "Mēro",
			"superlative", "Mēst"
		}
	},
	"pronouns", {
		"Mī", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Me", -- dative
			"dative", "Mī"
		},
		"Wī", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "We",
			"nominative", "Wī" -- source also gives "We" as alternative
		}
	},
	"adverbs", {
		"Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "More"
		},
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
		},
		"Sár", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 3.
			"meaning", "Wound",
			"singular-nominative", "Sár"
		}
	},
	"adjectives", {
		"Meiri", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 3.
			"meaning", "More" -- perhaps a "determiner" class of words should be added?
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
	"pronouns", {
		"Vīr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
			"meaning", "We",
			"nominative", "Vīr"
		}
	},
	"numerals", {
		"Tuar", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"number", 2
		}
	}
)

DefineCivilizationLanguage("old-frisian", -- Old Frisian
	"nouns", {
		"Hēde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Flax Fiber",
			"singular-nominative", "Hēde",
			"uncountable", true -- as a material, it is likely to be uncountable
		},
		"Marg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Marrow",
			"singular-nominative", "Marg"
		},
		"Mēde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
			"meaning", "Reward, Rental, Payment, Gift",
			"singular-nominative", "Mēde", -- source also gives as alternatives the forms "Mīde", "Meide" and "Hēde"
			"gender", "Feminine"
		},
		"Ord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Point, Place", -- source gives the meaning as "(spear)point, place"
			"singular-nominative", "Ord"
		},
		"Ransa", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "House",
			"singular-nominative", "Ransa"
		},
		"Wêd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
			"meaning", "Woad",
			"singular-nominative", "Wêd"
		}
	},
	"verbs", {
		"Lēra", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
			"meaning", "Teach",
			"infinitive", "Lēra" -- causative verb
		},
		"Lernēn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Learn",
			"infinitive", "Lernēn" -- source also gives "Lirnēn" as an alternative
		},
		"Nera", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Nurture",
			"infinitive", "Nera"
		}
	},
	"adjectives", {
		"Māra", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "More",
			"comparative", "Māra",
			"superlative", "Māst"
		}
	},
	"pronouns", {
		"Wi", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
			"meaning", "We",
			"nominative", "Wi"
		}
	},
	"adverbs", {
		"Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "More"
		}
	}
)

DefineCivilizationLanguage("middle-low-german", -- Middle Low German
	"nouns", {
		"Hēde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
			"meaning", "Flax Fiber",
			"singular-nominative", "Hēde",
			"uncountable", true, -- as a material, it is likely to be uncountable
			"gender", "Feminine"
		},
		"Kên", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
			"meaning", "Resinous Wood",
			"singular-nominative", "Kên"
		},
		"Twern", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "Doubly Spun Twine",
			"singular-nominative", "Twern"
		},
		"Wêt", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
			"meaning", "Woad",
			"singular-nominative", "Wêt" -- source also gives the alternative form "Wêde"
		}
	},
	"verbs", {
		"Twernen", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "Twine",
			"infinitive", "Twernen"
		}
	}
)

DefineCivilizationLanguage("old-irish", -- Old Irish
	"nouns", {
		"Giús", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
			"meaning", "Fir",
			"singular-nominative", "Giús"
		}
	}
)

DefineCivilizationLanguage("irish", -- Irish
	"nouns", {
		"Árus", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Dwelling",
			"singular-nominative", "Árus"
		},
		"Brot", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Prickle",
			"singular-nominative", "Brot",
			"gender", "Masculine"
		},
		"Gas", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Sapling, Sprout, Shoot",
			"singular-nominative", "Gas",
			"gender", "Feminine"
		},
		"Gat", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Rod",
			"singular-nominative", "Gat"
		},
		"Gius", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
			"meaning", "Fir, Spruce",
			"singular-nominative", "Gius"
		},
		"Kass", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Curl, Tress",
			"singular-nominative", "Kass"
		},
		"Medg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Whey",
			"singular-nominative", "Medg",
			"gender", "Feminine"
		}
	},
	"adjectives", {
		"Máo", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "More", -- "Máo" actually means "größer"
			"comparative", "Máo" -- source also gives alternative form "Móo" (or is that the superlative?)
		}
	}
)

DefineCivilizationLanguage("welsh", -- Welsh
	"verbs", {
		"Brathu", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Prick, Bite",
			"infinitive", "Brathu"
		}
	}
)

DefineCivilizationLanguage("sanskrit", -- Sanskrit
	"nouns", {
		"Késara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
			"meaning", "Hair, Mane",
			"singular-nominative", "Késara",
			"gender", "Masculine"
		},
		"Majjá", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Marrow",
			"singular-nominative", "Majjá", -- the accent in the source was different, but I could not identify the accent to reproduce it here
			"gender", "Feminine"
		},
		"Majján", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Marrow",
			"singular-nominative", "Majján",
			"gender", "Masculine"
		},
		"Mīḍhá", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
			"meaning", "Reward from a Battle, Reward from a Competition",
			"singular-nominative", "Mīḍhá",
			"gender", "Neuter"
		}
	},
	"pronouns", {
		"Vayim", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
			"meaning", "We",
			"nominative", "Vayim"
		}
	}
)

DefineCivilizationLanguage("old-slavic", -- Old Slavic / Old Church Slavonic
	"nouns", {
		"Kosa", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Hair",
			"singular-nominative", "Kosa"
		},
		"Kosmŭ", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Head Hair",
			"singular-nominative", "Kosmŭ"
		},
		"Mězga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Sap, Juice",
			"singular-nominative", "Mězga"
		},
		"Mĭzda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
			"meaning", "Reward",
			"singular-nominative", "Mĭzda"
		},
		"Mozgŭ", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Brain",
			"singular-nominative", "Mozgŭ"
		},
		"Žrudŭ", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Flimsy Pole",
			"singular-nominative", "Žrudŭ"
		}
	}
)

DefineCivilizationLanguage("north-slavic", -- North Slavic (did this really exist?)
	"nouns", {
		"Kosem", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Bundle of Flax",
			"singular-nominative", "Kosem"
		}
	}
)

DefineCivilizationLanguage("russian",
	"nouns", {
		"Mozga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Blood",
			"singular-nominative", "Mozga"
		}
	}
)

DefineCivilizationLanguage("ukrainian",
	"nouns", {
		"Mjazka", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Tree Sap",
			"singular-nominative", "Mjazka"
		},
		"Mjazok", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Marrow",
			"singular-nominative", "Mjazok"
		}
	}
)

DefineCivilizationLanguage("avestan", -- Avestan
	"nouns", {
		"Mīzhda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
			"meaning", "Reward",
			"singular-nominative", "Mīzhda",
			"gender", "Neuter"
		}
	}
)

DefineCivilizationLanguage("middle-dutch", -- Middle Dutch
	"nouns", {
		"Herde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Flax Fiber",
			"singular-nominative", "Herde",
			"uncountable", true -- as a material, it is likely to be uncountable
		}
	}
)

DefineCivilizationLanguage("norwegian", -- Norwegian
	"nouns", {
		"Bradd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Shore, Edge",
			"singular-nominative", "Bradd",
			"gender", "Masculine"
		}
	}
)
