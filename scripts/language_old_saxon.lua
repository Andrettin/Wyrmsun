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
--      (c) Copyright 2016 by Andrettin
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

DefineCivilizationLanguage("old-saxon", -- Old Saxon
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

DefineLanguageNoun("Fehu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-saxon",
	Meanings = {"Cattle"},
	SingularNominative = "Fehu"
})

DefineLanguageNoun("Fisc", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Meanings = {"Fish"},
	SingularNominative = "Fisc"
})

DefineLanguageNoun("Gard", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-saxon",
	Meanings = {"Staff", "Rod"},
	SingularNominative = "Gard"
})

DefineLanguageNoun("Herta", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Meanings = {"Heart"},
	SingularNominative = "Herta"
})

DefineLanguageNoun("Hord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-saxon",
	Meanings = {"Treasure", "Closed Interior", "Hidden Interior"},
	SingularNominative = "Hord"
})

DefineLanguageNoun("Hund", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Meanings = {"Dog"},
	SingularNominative = "Hund"
})

DefineLanguageNoun("Hurth", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-saxon",
	Meanings = {"Wattle"}, -- derived from Proto-Germanic "Χŕdiz", which has the meaning of "wattle"
	SingularNominative = "Hurth"
})

DefineLanguageNoun("Līfnara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-saxon",
	Meanings = {"Food", "Nourishment"},
	SingularNominative = "Līfnara",
	Gender = "Feminine"
})

DefineLanguageNoun("Merg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-saxon",
	Meanings = {"Marrow"},
	SingularNominative = "Merg"
})

DefineLanguageNoun("Mēda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "old-saxon",
	Meanings = {"Payment"},
	SingularNominative = "Mēda", -- source also gives as an alternatives the form "Mieda"
	Gender = "Feminine"
})

DefineLanguageNoun("Ord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-saxon",
	Meanings = {"Point", "Edge of a Blade"},
	SingularNominative = "Ord",
	Gender = "Masculine"
})

DefineLanguageNoun("Orlag", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-saxon",
	Meanings = {"Fate"},
	SingularNominative = "Orlag" -- source also gives the alternative form "Orlagi"
})

DefineLanguageNoun("Suht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Meanings = {"Sickness"},
	SingularNominative = "Suht"
})

DefineLanguageNoun("Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-saxon",
	Meanings = {"Way"},
	SingularNominative = "Weg"
})

DefineLanguageNoun("Wurm", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Meanings = {"Worm", "Serpent"}, -- probably could be extended to mean "wyrm" as well
	SingularNominative = "Wurm"
})

DefineLanguageVerb("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-saxon",
	Meanings = {},
	Infinitive = "Beran"
})

DefineLanguageVerb("Birid", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Meanings = {"Bears"},
	-- infinitive form? maybe is the same word as "beran", since the Latin cognate of "beran", "ferō", means "I bear"
	SingularThirdPersonPresent = "Birid"
})

DefineLanguageVerb("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-saxon",
	Meanings = {"Bite"},
	Infinitive = "Bītan"
})

DefineLanguageVerb("Etan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-saxon",
	Meanings = {"Eat"},
	Infinitive = "Etan"
})

DefineLanguageVerb("Helpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-saxon",
	Meanings = {"Help"},
	Infinitive = "Helpan"
})

DefineLanguageVerb("Lērian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-saxon",
	Meanings = {"Teach"},
	Infinitive = "Lērian" -- causative verb
})

DefineLanguageVerb("Līnōn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-saxon",
	Meanings = {"Learn"},
	Infinitive = "Līnōn"
})

DefineLanguageVerb("Nerian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-saxon",
	Meanings = {"Save"},
	Infinitive = "Nerian"
})

DefineLanguageVerb("Scrīban", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-saxon",
	Meanings = {"Write"},
	Infinitive = "Scrīban"
})

DefineLanguageVerb("Sehan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Meanings = {"See"},
	Infinitive = "Sehan"
})

DefineLanguageVerb("Werthan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Meanings = {"Become"},
	Infinitive = "Werthan"
})

DefineLanguageVerb("Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-saxon",
	Meanings = {"Know"},
	Infinitive = "Witan"
})

DefineLanguageAdjective("Jung", {
	Language = "old-saxon",
	Meanings = {"Young"}, -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Positive = "Jung"
})

DefineLanguageAdjective("Mēro", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-saxon",
	Meanings = {"More"},
	Comparative = "Mēro",
	Superlative = "Mēst"
})

DefineLanguageAdjective("Reht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-saxon",
	Meanings = {"Right", "Straight"}, -- derived from Proto-Germanic "Reχtaz", which means "Right, Straight"
	Positive = "Reht"
})
