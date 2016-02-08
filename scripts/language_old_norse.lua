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
--      (c) Copyright 2015-2016 by Andrettin
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

DefineLanguageWord("Aldr", { -- Source: Geir T. Zoëga, "A Concise Dictionary of Old Icelandic", 1910, p. 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Age", "Lifetime"},
	SingularNominative = "Aldr",
	SingularGenitive = "Aldrs",
	Gender = "Masculine"
})

DefineLanguageWord("Aldrnari", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Fire"},
	SingularNominative = "Aldrnari", -- Compound of the words "Aldr" and "Nari", literally "life-sustainer"
	Gender = "Masculine"
})

DefineLanguageWord("Ār", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Year"}, -- derived from Proto-Germanic "Yēra", which means "Year"
	SingularNominative = "Ār"
})

DefineLanguageWord("Bōk", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Book"}, -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	SingularNominative = "Bōk"
})

DefineLanguageWord("Bǫrr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wheat", "Spelt"}, -- the word means one of these, not both
	SingularNominative = "Bǫrr"
})

DefineLanguageWord("Broddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Point", "Sprout"},
	SingularNominative = "Broddr",
	Gender = "Masculine"
})

DefineLanguageWord("Dyrr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Door"}, -- derived from Proto-Germanic "Durez", which has the meaning of "door"
	PluralNominative = "Dyrr"
})

DefineLanguageWord("Fé", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Cattle"},
	SingularNominative = "Fé"
})

DefineLanguageWord("Fiskr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Fish"},
	SingularNominative = "Fiskr"
})

DefineLanguageWord("Flōđ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Flood"}, -- derived from the Proto-Germanic "Flōduz", which means "Flood"
	SingularNominative = "Flōđ"
})

DefineLanguageWord("Fōtr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Foot"}, -- derived from Proto-Germanic "Fōts", which has the meaning of "foot"
	SingularNominative = "Fōtr"
})

DefineLanguageWord("Gaddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Prickle"},
	SingularNominative = "Gaddr",
	Gender = "Masculine"
})

DefineLanguageWord("Garđr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Garden"}, -- derived from Proto-Germanic "Gárdiz", which has the meaning of "garden"
	SingularNominative = "Garđr"
})

DefineLanguageWord("Greddir", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Feeder", "Satisfier"},
	SingularNominative = "Greddir"
})

DefineLanguageWord("Haddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 3, 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Woman's Long Hair"},
	SingularNominative = "Haddr",
	Gender = "Masculine"
})

DefineLanguageWord("Hafr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Male Goat"},
	SingularNominative = "Hafr"
})

DefineLanguageWord("Hane", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Rooster"},
	SingularNominative = "Hane"
})

DefineLanguageWord("Hodd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Treasure"},
	SingularNominative = "Hodd"
})

DefineLanguageWord("Hrǫnn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wave"},
	SingularNominative = "Hrǫnn",
	Gender = "Feminine"
})

DefineLanguageWord("Hundr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Dog"},
	SingularNominative = "Hundr"
})

DefineLanguageWord("Hurđ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wattle"}, -- derived from Proto-Germanic "Χŕdiz", which has the meaning of "wattle"
	SingularNominative = "Hurđ"
})

DefineLanguageWord("Kona", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Woman"},
	SingularNominative = "Kona"
})

DefineLanguageWord("Korn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Grain"}, -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	SingularNominative = "Korn"
})

DefineLanguageWord("Kyn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Race"},
	SingularNominative = "Kyn"
})

DefineLanguageWord("Māttr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Might"}, -- derived from Proto-Germanic "Maχtiz", which has the meaning of "Might"
	SingularNominative = "Māttr"
})

DefineLanguageWord("Meir", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-norse",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-norse",
	Type = "pronoun",
	Meanings = {"Me"}, -- dative
	Dative = "Mēr"
})

DefineLanguageWord("Mergr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Marrow in a Bone"},
	SingularNominative = "Mergr",
	SingularGenitive = "Mergjar",
	Gender = "Masculine"
})

DefineLanguageWord("Nātt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Night"}, -- derived from Proto-Germanic "Naχts", which means "Night"
	SingularNominative = "Nātt"
})

DefineLanguageWord("Oddr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Point", "Place"},
	SingularNominative = "Oddr",
	SingularGenitive = "Odds",
	Gender = "Masculine"
})

DefineLanguageWord("Orlǫg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Fate"},
	SingularNominative = "Orlǫg" -- is singular or plural?
})

DefineLanguageWord("Rann", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"House"},
	SingularNominative = "Rann",
	Gender = "Neuter"
})

DefineLanguageWord("Rǫdd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Sound", "Voice", "Vowel"},
	SingularNominative = "Rǫdd",
	Gender = "Feminine"
})

DefineLanguageWord("Sāđ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Seed"}, -- derived from the Proto-Germanic "Sēþiz", which means "Seed"
	SingularNominative = "Sāđ"
})

DefineLanguageWord("Síði", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Magic-Worker"},
	SingularNominative = "Síði"
})

DefineLanguageWord("Síða", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Work Magic"},
	Infinitive = "Síða"
})

DefineLanguageWord("Sunna", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Sun"}, -- derived from Proto-Germanic "Sunōn", which has the meaning of "Sun"
	SingularNominative = "Sunna"
})

DefineLanguageWord("Svīn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Pig"}, -- derived from the Proto-Germanic "Swīnaz", which means "Pig"
	SingularNominative = "Svīn"
})

DefineLanguageWord("Vagn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Wagon"},
	SingularNominative = "Vagn"
})

DefineLanguageWord("Valkyrja", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Valkyrie"},
	SingularNominative = "Valkyrja",
	Gender = "feminine"
})

DefineLanguageWord("Vegr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Way"},
	SingularNominative = "Vegr"
})

DefineLanguageWord("Vēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-norse",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Vēr"
})

DefineLanguageWord("Verr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "noun",
	Meanings = {"Man"},
	SingularNominative = "Verr"
})

DefineLanguageWord("Bauþ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Offered"},
	ParticiplePast = "Bauþ" -- "offered"
})

DefineLanguageWord("Bera", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Type = "verb",
	Meanings = {},
	Infinitive = "Bera"
})

DefineLanguageWord("Bīta", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Bite"},
	Infinitive = "Bīta"
})

DefineLanguageWord("Eta", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Eat"},
	Infinitive = "Eta"
})

DefineLanguageWord("Grenna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Feed"},
	Infinitive = "Grenna"
})

DefineLanguageWord("Hnīga", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Bow"},
	Infinitive = "Hnīga"
})

DefineLanguageWord("Koma", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Come"},
	Infinitive = "Koma"
})

DefineLanguageWord("Ljā", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Lend"},
	Infinitive = "Ljā"
})

DefineLanguageWord("Mala", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Grind"},
	Infinitive = "Mala"
})

DefineLanguageWord("Nara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Live"},
	Infinitive = "Nara"
})

DefineLanguageWord("Nema", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Take", "Accept"},
	Infinitive = "Nema"
})

DefineLanguageWord("Stīga", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Climb"},
	Infinitive = "Stīga"
})

DefineLanguageWord("Tvinna", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Double", "Duplicate"},
	Infinitive = "Tvinna"
})

DefineLanguageWord("Verða", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Become"},
	Infinitive = "Verða"
})

DefineLanguageWord("Vita", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-norse",
	Type = "verb",
	Meanings = {"Know"},
	Infinitive = "Vita",
	PluralFirstPersonPresent = "Vitom" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
})

DefineLanguageWord("Djūpr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Deep"}, -- derived from Proto-Germanic "Déwpaz", which has the meaning of "deep"
	Positive = "Djūpr"
})

DefineLanguageWord("Fūll", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	Positive = "Fūll"
})

DefineLanguageWord("Hvītr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"White"},
	Positive = "Hvītr"
})

DefineLanguageWord("Kvikr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Alive"},
	Positive = "Kvikr"
})

DefineLanguageWord("Langr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	Positive = "Langr"
})

DefineLanguageWord("Meiri", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"More"},
	Positive = "Meiri", -- given by Lehmann, but it is not entirely clear if he meant that this is the positive version of the word
	Comparative = "Meiri",
	Superlative = "Mestr"
})

DefineLanguageWord("Rauðr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Red"},
	Positive = "Rauðr"
})

DefineLanguageWord("Rēttr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Right", "Straight"}, -- derived from Proto-Germanic "Reχtaz", which means "Right, Straight"
	Positive = "Rēttr"
})

DefineLanguageWord("Seiðr", { -- maybe is the past participle of Síði instead? Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 118.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Magic Worked"},
	Positive = "Seiðr"
})

DefineLanguageWord("Tvennr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Twofold"}, -- maybe is an adverb instead?
	-- source also gives "Tvinnr" as an alternative form
	Positive = "Tvennr"
})

DefineLanguageWord("Þrennr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Threefold"}, -- maybe is an adverb instead?
	-- source also gives "Þrinnr" as an alternative form
	Positive = "Þrennr"
})

DefineLanguageWord("Þurr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adjective",
	Meanings = {"Dry"}, -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	Positive = "Þurr"
})

DefineLanguageWord("Af", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adposition",
	Meanings = {"From"} -- derived from Proto-Germanic "Af", which means "From"
})

DefineLanguageWord("Yfir", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-norse",
	Type = "adposition",
	Meanings = {"Over"} -- derived from the Proto-Germanic "Ufar", which means "Over"
})
