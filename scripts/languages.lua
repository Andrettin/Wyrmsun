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
Load("scripts/language_gnomish.lua")
Load("scripts/language_goblin.lua")
Load("scripts/language_kobold.lua")

-- these are kept for reference, but not used
--Load("scripts/language_avestan.lua")
--Load("scripts/language_english.lua")
--Load("scripts/language_finnish.lua")
--Load("scripts/language_irish.lua")
--Load("scripts/language_lithuanian.lua")
--Load("scripts/language_middle_english.lua")
--Load("scripts/language_old_english.lua")
--Load("scripts/language_old_high_german.lua")
--Load("scripts/language_middle_high_german.lua")
--Load("scripts/language_middle_low_german.lua")
--Load("scripts/language_middle_dutch.lua")
--Load("scripts/language_norwegian.lua")
--Load("scripts/language_old_frisian.lua")
--Load("scripts/language_old_icelandic.lua")
--Load("scripts/language_old_irish.lua")
--Load("scripts/language_old_saxon.lua")
--Load("scripts/language_old_slavic.lua")
--Load("scripts/language_old_swedish.lua")
--Load("scripts/language_russian.lua")
--Load("scripts/language_sanskrit.lua")
--Load("scripts/language_ukrainian.lua")
--Load("scripts/language_welsh.lua")
--Load("scripts/language_west_germanic.lua")

DefineCivilizationLanguage("old-high-german", -- Old High German
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
	"verbs", {
		"Twernen", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "Twine",
			"infinitive", "Twernen"
		}
	}
)

DefineCivilizationLanguage("irish", -- Irish
	"adjectives", {
		"Máo", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "More", -- "Máo" actually means "größer"
			"comparative", "Máo" -- source also gives alternative form "Móo" (or is that the superlative?)
		}
	}
)

DefineCivilizationLanguage("sanskrit", -- Sanskrit
	"pronouns", {
		"Vayim", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
			"meaning", "We",
			"nominative", "Vayim"
		}
	}
)

-- North Slavic (did this really exist?)
DefineLanguageNoun("Kosem", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Civilization = "north-slavic",
	Meaning = "Bundle of Flax",
	SingularNominative = "Kosem"
})

