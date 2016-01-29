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

DefineCivilizationLanguage("old-high-german", -- Old High German
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

DefineLanguageNoun("Brart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-high-german",
	Meaning = "Edge, Forepart of a Ship",
	SingularNominative = "Brart",
	Gender = "Masculine"
})

DefineLanguageNoun("Brort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-high-german",
	Meaning = "Skewer, Projectile, Edge, Rim, Forepart of a Ship",
	SingularNominative = "Brort",
	Gender = "Masculine"
})

DefineLanguageNoun("Chien", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-high-german",
	Meaning = "Resinous Wood",
	SingularNominative = "Chien" -- source also gives alternative forms "Kien" and "Kên"
})

DefineLanguageNoun("Ēht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Property", -- source gives the German "Besitz"
	SingularNominative = "Ēht"
})

DefineLanguageNoun("Fehu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Meaning = "Cattle",
	SingularNominative = "Fehu"
})

DefineLanguageNoun("Fisk", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meaning = "Fish",
	SingularNominative = "Fisk"
})

DefineLanguageNoun("Gart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Meaning = "Rod, Prickle",
	SingularNominative = "Gart"
})

DefineLanguageNoun("Hagazussa", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 200.
	Language = "old-high-german",
	Meaning = "Travelling Actor or Minstrel who Performs in Women's Clothing",
	SingularNominative = "Hagazussa",
	PluralNominative = "Hagazussan"
})

DefineLanguageNoun("Herza", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Meaning = "Heart",
	SingularNominative = "Herza"
})

DefineLanguageNoun("Hleib", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Bread",
	SingularNominative = "Hleib"
})

DefineLanguageNoun("Hort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-high-german",
	Meaning = "Treasure",
	SingularNominative = "Hort"
})

DefineLanguageNoun("Houbit", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Main", -- source gives German noun "Haupt" as transation
	SingularNominative = "Houbit"
})

DefineLanguageNoun("Hunt", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meaning = "Dog",
	SingularNominative = "Hunt"
})

DefineLanguageNoun("Kōl", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Cabbage",
	SingularNominative = "Kōl"
})

DefineLanguageNoun("Lōn", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Pay", -- source gives German word "Lohn" as transation
	SingularNominative = "Lōn"
})

DefineLanguageNoun("Marc", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-high-german",
	Meaning = "Marrow",
	SingularNominative = "Marc",
	SingularGenitive = "Marges" -- source also gives "Marages" as a possible genitive
})

DefineLanguageNoun("Mēta", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Meaning = "Reward, Payment",
	SingularNominative = "Mēta" -- source also gives as alternatives the forms "Miata" and "Mieta"
})

DefineLanguageNoun("Nara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-high-german",
	Meaning = "Salvation, Rescue, Nourishment, Sustenance", -- meaning given for Middle High German, but not for Old High German, presumably because both are the same
	SingularNominative = "Nara",
	Gender = "Feminine"
})

DefineLanguageNoun("Orlac", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-high-german",
	Meaning = "Fate",
	SingularNominative = "Orlac",
	Gender = "Masculine"
})

DefineLanguageNoun("Ort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-high-german",
	Meaning = "Point, Corner, Edge of a Part, Edge of a Piece, Edge of a Small Coin",
	SingularNominative = "Ort",
	Gender = "Masculine"
})

DefineLanguageNoun("Ouga", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Eye",
	SingularNominative = "Ouga"
})

DefineLanguageNoun("Rarta", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 10.
	Language = "old-high-german",
	Meaning = "Voice, Modulation",
	SingularNominative = "Rarta",
	Gender = "Feminine"
})

DefineLanguageNoun("Sēula", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Soul",
	SingularNominative = "Sēula" -- source also gives "Sēla"
})

DefineLanguageNoun("Suht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meaning = "Sickness",
	SingularNominative = "Suht"
})

DefineLanguageNoun("Teil", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Part",
	SingularNominative = "Teil"
})

DefineLanguageNoun("Tōd", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Death",
	SingularNominative = "Tōd"
})

DefineLanguageNoun("Urlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-high-german",
	Meaning = "Fate",
	SingularNominative = "Urlaga",
	Gender = "Feminine"
})

DefineLanguageNoun("Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-high-german",
	Meaning = "Way",
	SingularNominative = "Weg"
})

DefineLanguageNoun("Weit", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Language = "old-high-german",
	Meaning = "Woad",
	SingularNominative = "Weit",
	Gender = "Masculine"
})

DefineLanguageNoun("Wurm", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meaning = "Worm, Serpent", -- probably could be extended to mean "wyrm" as well
	SingularNominative = "Wurm"
})

DefineLanguageVerb("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Meaning = "?",
	Infinitive = "Beran"
})

DefineLanguageVerb("Birit", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meaning = "Bears",
	-- infinitive form? maybe is the same word as "beran", since the Latin cognate of "beran", "ferō", means "I bear"
	SingularThirdPersonPresent = "Birit"
})

DefineLanguageVerb("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Meaning = "Bite",
	Infinitive = "Bītan"
})

DefineLanguageVerb("Ezzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Meaning = "Eat",
	Infinitive = "Ezzan"
})

DefineLanguageVerb("Helfan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-high-german",
	Meaning = "Help",
	Infinitive = "Helfan"
})

DefineLanguageVerb("Hōren", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Hear",
	Infinitive = "Hōren"
})

DefineLanguageVerb("Lēren", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-high-german",
	Meaning = "Teach",
	Infinitive = "Lēren" -- causative verb
})

DefineLanguageVerb("Lernēn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Meaning = "Learn",
	Infinitive = "Lernēn" -- source also gives "Lirnēn" as an alternative
})

DefineLanguageVerb("Loufan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Run",
	Infinitive = "Loufan"
})

DefineLanguageVerb("Liwum", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meaning = "Lent", -- "we lent"
	-- infinitive form?
	PluralFirstPersonPast = "Liwum"
})

DefineLanguageVerb("Nerjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-high-german",
	Meaning = "Heal, Sustain the Life of, Save, Protect, Nourish", -- meaning given for Middle High German, but not for Old High German, presumably because both are the same
	Infinitive = "Nerjan" -- source also gives alternative forms "Nerren" and "Neren"
})

DefineLanguageVerb("Scrīban", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Meaning = "Write",
	Infinitive = "Scrīban"
})

DefineLanguageVerb("Sehan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meaning = "See",
	Infinitive = "Sehan"
})

DefineLanguageVerb("Standan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Meaning = "Stand",
	Infinitive = "Standan"
})

DefineLanguageVerb("Stōzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Push", -- source gives translation as the German word "stoßen"
	Infinitive = "Stōzan"
})

DefineLanguageVerb("Trūēn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Meaning = "Trust",
	Infinitive = "Trūēn"
})

DefineLanguageVerb("Zahar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Meaning = "Tear",
	Infinitive = "Zahar"
})

DefineLanguageVerb("Werdan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meaning = "Become",
	Infinitive = "Werdan"
})

DefineLanguageVerb("Wizzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meaning = "Know",
	Infinitive = "Wizzan"
})

DefineLanguageVerb("Zwirnēn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-high-german",
	Meaning = "Twine",
	Infinitive = "Zwirnēn" -- source also gives the alternative form "Zwirnōn"
})

DefineLanguageAdjective("Hōh", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "High", -- source gives translation as the German word "hoch"
	Positive = "Hōh"
})

DefineLanguageAdjective("Jung", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meaning = "Young",
	Positive = "Jung"
})

DefineLanguageAdjective("Lōs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Empty, Loose", -- source gives translation as the German words "los" and "leer"
	Positive = "Lōs"
})

DefineLanguageAdjective("Mēro", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-high-german",
	Meaning = "More", -- perhaps a "determiner" class of words should be added?
	Positive = "Mēro", -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, pp. 236;
	Comparative = "Mēro", -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Superlative = "Mēst" -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
})

DefineLanguageAdjective("Rōt", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meaning = "Red",
	Positive = "Rōt"
})
