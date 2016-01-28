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

DefineCivilizationLanguage("old-norse", -- Old Norse
	"pronouns", {
		"Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Me", -- dative
			"dative", "Mēr"
		},
		"Vēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "We",
			"nominative", "Vēr"
		}
	},
	"adverbs", {
		"Meir", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "More"
		}
	}
)

DefineLanguageNoun("Aldr", { -- Source: Geir T. Zoëga, "A Concise Dictionary of Old Icelandic", 1910, p. 8.
	Language = "old-norse",
	Meaning = "Age, Lifetime",
	SingularNominative = "Aldr",
	SingularGenitive = "Aldrs",
	Gender = "Masculine"
})

DefineLanguageNoun("Aldrnari", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Meaning = "Fire",
	SingularNominative = "Aldrnari", -- Compound of the words "Aldr" and "Nari", literally "life-sustainer"
	Gender = "Masculine"
})

DefineLanguageNoun("Broddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-norse",
	Meaning = "Point, Sprout",
	SingularNominative = "Broddr",
	Gender = "Masculine"
})

DefineLanguageNoun("Fé", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Meaning = "Cattle",
	SingularNominative = "Fé"
})

DefineLanguageNoun("Fiskr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Meaning = "Fish",
	SingularNominative = "Fiskr"
})

DefineLanguageNoun("Gaddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-norse",
	Meaning = "Prickle",
	SingularNominative = "Gaddr",
	Gender = "Masculine"
})

DefineLanguageNoun("Greddir", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Meaning = "Feeder, Satisfier",
	SingularNominative = "Greddir"
})

DefineLanguageNoun("Haddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 3, 8.
	Language = "old-norse",
	Meaning = "Woman's Long Hair",
	SingularNominative = "Haddr",
	Gender = "Masculine"
})

DefineLanguageNoun("Hane", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Meaning = "Rooster",
	SingularNominative = "Hane"
})

DefineLanguageNoun("Hodd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-norse",
	Meaning = "Treasure",
	SingularNominative = "Hodd"
})

DefineLanguageNoun("Hrǫnn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-norse",
	Meaning = "Wave",
	SingularNominative = "Hrǫnn",
	Gender = "Feminine"
})

DefineLanguageNoun("Hundr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Meaning = "Dog",
	SingularNominative = "Hundr"
})

DefineLanguageNoun("Mergr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-norse",
	Meaning = "Marrow in a Bone",
	SingularNominative = "Mergr",
	SingularGenitive = "Mergjar",
	Gender = "Masculine"
})

DefineLanguageNoun("Oddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "old-norse",
	Meaning = "Point, Place",
	SingularNominative = "Oddr",
	SingularGenitive = "Odds",
	Gender = "Masculine"
})

DefineLanguageNoun("Orlǫg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Meaning = "Fate",
	SingularNominative = "Orlǫg" -- is singular or plural?
})

DefineLanguageNoun("Rann", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Meaning = "House",
	SingularNominative = "Rann",
	Gender = "Neuter"
})

DefineLanguageNoun("Rǫdd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-norse",
	Meaning = "Sound, Voice, Vowel",
	SingularNominative = "Rǫdd",
	Gender = "Feminine"
})

DefineLanguageNoun("Síði", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Language = "old-norse",
	Meaning = "Magic-Worker",
	SingularNominative = "Síði"
})

DefineLanguageVerb("Síða", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Language = "old-norse",
	Meaning = "Work Magic",
	Infinitive = "Síða"
})

DefineLanguageNoun("Valkyrja", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Meaning = "Valkyrie",
	SingularNominative = "Valkyrja",
	Gender = "feminine"
})

DefineLanguageNoun("Vegr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-norse",
	Meaning = "Way",
	SingularNominative = "Vegr"
})

DefineLanguageVerb("Bera", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Meaning = "?",
	Infinitive = "Bera"
})

DefineLanguageVerb("Bīta", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Meaning = "Bite",
	Infinitive = "Bīta"
})

DefineLanguageVerb("Eta", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-norse",
	Meaning = "Eat",
	Infinitive = "Eta"
})

DefineLanguageVerb("Grenna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Meaning = "Feed",
	Infinitive = "Grenna"
})

DefineLanguageVerb("Nara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Meaning = "Live",
	Infinitive = "Nara"
})

DefineLanguageVerb("Tvinna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-norse",
	Meaning = "Double", -- source gives meaning as "Double, Duplicate"
	Infinitive = "Tvinna"
})

DefineLanguageVerb("Verða", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Meaning = "Become",
	Infinitive = "Verða"
})

DefineLanguageVerb("Vita", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Meaning = "Know",
	Infinitive = "Vita"
})

DefineLanguageAdjective("Meiri", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-norse",
	Meaning = "More",
	Comparative = "Meiri",
	Superlative = "Mestr"
})

DefineLanguageAdjective("Seiðr", { -- maybe is the past participle of Síði instead? Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Language = "old-norse",
	Meaning = "Magic Worked",
	Positive = "Seiðr"
})

DefineLanguageAdjective("Tvennr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Language = "old-norse",
	Meaning = "Twofold", -- maybe is an adverb instead?
	-- source also gives "Tvinnr" as an alternative form
	Positive = "Tvennr"
})

DefineLanguageAdjective("Þrennr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-norse",
	Meaning = "Threefold", -- maybe is an adverb instead?
	-- source also gives "Þrinnr" as an alternative form
	Positive = "Þrennr"
})
