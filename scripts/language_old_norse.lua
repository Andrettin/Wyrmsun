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

DefineLanguageNoun("Ār", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Year", -- derived from Proto-Germanic "Yēra", which means "Year"
	SingularNominative = "Ār"
})

DefineLanguageNoun("Bōk", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Book", -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	SingularNominative = "Bōk"
})

DefineLanguageNoun("Bǫrr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-norse",
	Meaning = "Wheat or Spelt", -- the word means one of these, not both
	SingularNominative = "Bǫrr"
})

DefineLanguageNoun("Broddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-norse",
	Meaning = "Point, Sprout",
	SingularNominative = "Broddr",
	Gender = "Masculine"
})

DefineLanguageNoun("Dyrr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Door", -- derived from Proto-Germanic "Durez", which has the meaning of "door"
	PluralNominative = "Dyrr"
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

DefineLanguageNoun("Flōđ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Flood", -- derived from the Proto-Germanic "Flōduz", which means "Flood"
	SingularNominative = "Flōđ"
})

DefineLanguageNoun("Fōtr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Foot", -- derived from Proto-Germanic "Fōts", which has the meaning of "foot"
	SingularNominative = "Fōtr"
})

DefineLanguageNoun("Gaddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-norse",
	Meaning = "Prickle",
	SingularNominative = "Gaddr",
	Gender = "Masculine"
})

DefineLanguageNoun("Garđr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Garden", -- derived from Proto-Germanic "Gárdiz", which has the meaning of "garden"
	SingularNominative = "Garđr"
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

DefineLanguageNoun("Hafr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-norse",
	Meaning = "Male Goat",
	SingularNominative = "Hafr"
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

DefineLanguageNoun("Hurđ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Wattle", -- derived from Proto-Germanic "Χŕdiz", which has the meaning of "wattle"
	SingularNominative = "Hurđ"
})

DefineLanguageNoun("Korn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Grain", -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	SingularNominative = "Korn"
})

DefineLanguageNoun("Māttr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Might", -- derived from Proto-Germanic "Maχtiz", which has the meaning of "Might"
	SingularNominative = "Māttr"
})

DefineLanguageNoun("Mergr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-norse",
	Meaning = "Marrow in a Bone",
	SingularNominative = "Mergr",
	SingularGenitive = "Mergjar",
	Gender = "Masculine"
})

DefineLanguageNoun("Nātt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Night", -- derived from Proto-Germanic "Naχts", which means "Night"
	SingularNominative = "Nātt"
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

DefineLanguageNoun("Sāđ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Seed", -- derived from the Proto-Germanic "Sēþiz", which means "Seed"
	SingularNominative = "Sāđ"
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

DefineLanguageNoun("Sunna", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Sun", -- derived from Proto-Germanic "Sunōn", which has the meaning of "Sun"
	SingularNominative = "Sunna"
})

DefineLanguageNoun("Svīn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Pig", -- derived from the Proto-Germanic "Swīnaz", which means "Pig"
	SingularNominative = "Svīn"
})

DefineLanguageNoun("Vagn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-norse",
	Meaning = "Wagon",
	SingularNominative = "Vagn"
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

DefineLanguageVerb("Bauþ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Offered",
	ParticiplePast = "Bauþ" -- "offered"
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

DefineLanguageVerb("Stīga", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Climb",
	Infinitive = "Stīga"
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
	Infinitive = "Vita",
	PluralFirstPersonPresent = "Vitom" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
})

DefineLanguageAdjective("Djūpr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Deep", -- derived from Proto-Germanic "Déwpaz", which has the meaning of "deep"
	Positive = "Djūpr"
})

DefineLanguageAdjective("Fūll", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Foul", -- derived from the Proto-Germanic "Fūla", which means "Foul"
	Positive = "Fūll"
})

DefineLanguageAdjective("Langr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Long", -- derived from Proto-Germanic "Langaz", which means "Long"
	Positive = "Langr"
})

DefineLanguageAdjective("Meiri", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "More",
	Positive = "Meiri", -- given by Lehmann, but it is not entirely clear if he meant that this is the positive version of the word
	Comparative = "Meiri",
	Superlative = "Mestr"
})

DefineLanguageAdjective("Rēttr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Right, Straight", -- derived from Proto-Germanic "Reχtaz", which means "Right, Straight"
	Positive = "Rēttr"
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

DefineLanguageAdjective("Þurr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Dry", -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	Positive = "Þurr"
})

DefineLanguageAdposition("Af", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "From" -- derived from Proto-Germanic "Af", which means "From"
})

DefineLanguageAdposition("Yfir", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Meaning = "Over" -- derived from the Proto-Germanic "Ufar", which means "Over"
})
