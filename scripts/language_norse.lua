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

DefineCivilizationLanguage("norse", -- Old Norse
	"verbs", {
		"Eta", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Eat",
			"infinitive", "Eta"
		},
		"Grenna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Feed",
			"infinitive", "Grenna"
		},
		"Nara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Live",
			"infinitive", "Nara"
		},
		"Tvinna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "Double", -- source gives meaning as "Double, Duplicate"
			"infinitive", "Tvinna"
		},
		"Verða", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Become",
			"infinitive", "Verða"
		},
		"Vita", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Know",
			"infinitive", "Vita"
		}
	},
	"adjectives", {
		"Meiri", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "More",
			"comparative", "Meiri",
			"superlative", "Mestr"
		},
		"Tvennr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
			"meaning", "Twofold" -- maybe is an adverb instead?
			-- source also gives "Tvinnr" as an alternative form
		},
		"Þrennr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"meaning", "Threefold" -- maybe is an adverb instead?
			-- source also gives "Þrinnr" as an alternative form
		}
	},
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

DefineLanguageWord("Aldr", { -- Source: Geir T. Zoëga, "A Concise Dictionary of Old Icelandic", 1910, p. 8.
	Civilization = "norse",
	Meaning = "Age, Lifetime",
	SingularNominative = "Aldr",
	SingularGenitive = "Aldrs",
	Gender = "Masculine"
})

DefineLanguageWord("Aldrnari", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Civilization = "norse",
	Meaning = "Fire",
	SingularNominative = "Aldrnari", -- Compound of the words "Aldr" and "Nari", literally "life-sustainer"
	Gender = "Masculine"
})

DefineLanguageWord("Broddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Civilization = "norse",
	Meaning = "Point, Sprout",
	SingularNominative = "Broddr",
	Gender = "Masculine"
})

DefineLanguageWord("Fiskr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Civilization = "norse",
	Meaning = "Fish",
	SingularNominative = "Fiskr"
})

DefineLanguageWord("Gaddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Civilization = "norse",
	Meaning = "Prickle",
	SingularNominative = "Gaddr",
	Gender = "Masculine"
})

DefineLanguageWord("Greddir", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Civilization = "norse",
	Meaning = "Feeder, Satisfier",
	SingularNominative = "Greddir"
})

DefineLanguageWord("Haddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 3, 8.
	Civilization = "norse",
	Meaning = "Woman's Long Hair",
	SingularNominative = "Haddr",
	Gender = "Masculine"
})

DefineLanguageWord("Hodd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Civilization = "norse",
	Meaning = "Treasure",
	SingularNominative = "Hodd"
})

DefineLanguageWord("Hrǫnn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Civilization = "norse",
	Meaning = "Wave",
	SingularNominative = "Hrǫnn",
	Gender = "Feminine"
})

DefineLanguageWord("Hundr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Civilization = "norse",
	Meaning = "Dog",
	SingularNominative = "Hundr"
})

DefineLanguageWord("Mergr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Civilization = "norse",
	Meaning = "Marrow in a Bone",
	SingularNominative = "Mergr",
	SingularGenitive = "Mergjar",
	Gender = "Masculine"
})

DefineLanguageWord("Oddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Civilization = "norse",
	Meaning = "Point, Place",
	SingularNominative = "Oddr",
	SingularGenitive = "Odds",
	Gender = "Masculine"
})

DefineLanguageWord("Orlǫg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Civilization = "norse",
	Meaning = "Fate",
	SingularNominative = "Orlǫg" -- is singular or plural?
})

DefineLanguageWord("Rann", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Civilization = "norse",
	Meaning = "House",
	SingularNominative = "Rann",
	Gender = "Neuter"
})

DefineLanguageWord("Rǫdd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Civilization = "norse",
	Meaning = "Sound, Voice, Vowel",
	SingularNominative = "Rǫdd",
	Gender = "Feminine"
})

DefineLanguageWord("Síði", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Civilization = "norse",
	Meaning = "Magic-Worker",
	SingularNominative = "Síði"
})

DefineLanguageVerb("Síða", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Civilization = "norse",
	Meaning = "Work Magic",
	Infinitive = "Síða"
})

DefineLanguageWord("Valkyrja", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Civilization = "norse",
	Meaning = "Valkyrie",
	SingularNominative = "Valkyrja",
	Gender = "feminine"
})

DefineLanguageWord("Vegr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Civilization = "norse",
	Meaning = "Way",
	SingularNominative = "Vegr"
})

DefineLanguageAdjective("Seiðr", { -- maybe is the past participle of Síði instead? Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Civilization = "norse",
	Meaning = "Magic Worked"
})
