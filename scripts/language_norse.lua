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
	"nouns", {
		"Aldr", { -- Source: Geir T. Zoëga, "A Concise Dictionary of Old Icelandic", 1910, p. 8.
			"meaning", "Age, Lifetime",
			"singular-nominative", "Aldr",
			"singular-genitive", "Aldrs",
			"gender", "Masculine"
		},
		"Aldrnari", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Fire",
			"singular-nominative", "Aldrnari", -- Compound of the words "Aldr" and "Nari", literally "life-sustainer"
			"gender", "Masculine"
		},
		"Broddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
			"meaning", "Point, Sprout",
			"singular-nominative", "Broddr",
			"gender", "Masculine"
		},
		"Fiskr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Fish",
			"singular-nominative", "Fiskr"
		},
		"Gaddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
			"meaning", "Prickle",
			"singular-nominative", "Gaddr",
			"gender", "Masculine"
		},
		"Greddir", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Feeder, Satisfier",
			"singular-nominative", "Greddir"
		},
		"Haddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 3, 8.
			"meaning", "Woman's Long Hair",
			"singular-nominative", "Haddr",
			"gender", "Masculine"
		},
		"Hodd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Treasure",
			"singular-nominative", "Hodd"
		},
		"Hrǫnn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Wave",
			"singular-nominative", "Hrǫnn",
			"gender", "Feminine"
		},
		"Hundr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Dog",
			"singular-nominative", "Hundr"
		},
		"Mergr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
			"meaning", "Marrow in a Bone",
			"singular-nominative", "Mergr",
			"singular-genitive", "Mergjar",
			"gender", "Masculine"
		},
		"Oddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
			"meaning", "Point, Place",
			"singular-nominative", "Oddr",
			"singular-genitive", "Odds",
			"gender", "Masculine"
		},
		"Orlǫg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Fate",
			"singular-nominative", "Orlǫg" -- is singular or plural?
		},
		"Rann", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "House",
			"singular-nominative", "Rann",
			"gender", "Neuter"
		},
		"Rǫdd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
			"meaning", "Sound, Voice, Vowel",
			"singular-nominative", "Rǫdd",
			"gender", "Feminine"
		},
		"Valkyrja", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
			"meaning", "Valkyrie",
			"singular-nominative", "Valkyrja",
			"gender", "feminine"
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
