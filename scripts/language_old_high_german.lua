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
	Meanings = {"Edge", "Forepart of a Ship"},
	SingularNominative = "Brart",
	Gender = "Masculine"
})

DefineLanguageNoun("Brort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-high-german",
	Meanings = {"Skewer", "Projectile", "Edge", "Rim", "Forepart of a Ship"},
	SingularNominative = "Brort",
	Gender = "Masculine"
})

DefineLanguageNoun("Buoh", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Book"}, -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	SingularNominative = "Buoh"
})

DefineLanguageNoun("Chien", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-high-german",
	Meanings = {"Resinous Wood"},
	SingularNominative = "Chien" -- source also gives alternative forms "Kien" and "Kên"
})

DefineLanguageNoun("Chunni", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Meanings = {"Race"},
	SingularNominative = "Chunni"
})

DefineLanguageNoun("Corn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Grain"}, -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	SingularNominative = "Corn"
})

DefineLanguageNoun("Ēht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Property"}, -- source gives the German "Besitz"
	SingularNominative = "Ēht"
})

DefineLanguageNoun("Erda", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Earth"}, -- derived from Proto-Germanic "Erþō", which means "Earth"
	SingularNominative = "Erda"
})

DefineLanguageNoun("Fehu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Meanings = {"Cattle"},
	SingularNominative = "Fehu"
})

DefineLanguageNoun("Fisk", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meanings = {"Fish"},
	SingularNominative = "Fisk"
})

DefineLanguageNoun("Fluot", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Flood"}, -- derived from the Proto-Germanic "Flōduz", which means "Flood"
	SingularNominative = "Fluot"
})

DefineLanguageNoun("Fuoz", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Foot"}, -- derived from Proto-Germanic "Fōts", which has the meaning of "foot"
	SingularNominative = "Fuoz"
})

DefineLanguageNoun("Gart", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Meanings = {"Rod", "Prickle"},
	SingularNominative = "Gart"
})

DefineLanguageNoun("Gart", { -- is this the same word as the "Gart" which has another meaning detailed above? Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Garden"}, -- derived from Proto-Germanic "Gárdiz", which has the meaning of "garden"
	SingularNominative = "Gart"
})

DefineLanguageNoun("Gisiht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Meanings = {"Sight"},
	SingularNominative = "Gisiht"
})

DefineLanguageNoun("Hagazussa", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 200.
	Language = "old-high-german",
	Meanings = {"Travelling Actor or Minstrel who Performs in Women's Clothing"},
	SingularNominative = "Hagazussa",
	PluralNominative = "Hagazussan"
})

DefineLanguageNoun("Herza", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Meanings = {"Heart"},
	SingularNominative = "Herza"
})

DefineLanguageNoun("Hleib", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Bread"},
	SingularNominative = "Hleib"
})

DefineLanguageNoun("Hort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-high-german",
	Meanings = {"Treasure"},
	SingularNominative = "Hort"
})

DefineLanguageNoun("Houbit", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Main"}, -- source gives German noun "Haupt" as the translation
	SingularNominative = "Houbit"
})

DefineLanguageNoun("Hunt", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meanings = {"Dog"},
	SingularNominative = "Hunt"
})

DefineLanguageNoun("Hurd", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Wattle"}, -- derived from Proto-Germanic "Χŕdiz", which means "wattle"
	SingularNominative = "Hurd"
})

DefineLanguageNoun("Jār", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Year"}, -- derived from Proto-Germanic "Yēra", which means "Year"
	SingularNominative = "Jār"
})

DefineLanguageNoun("Kōl", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Cabbage"},
	SingularNominative = "Kōl"
})

DefineLanguageNoun("Lōn", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Pay"}, -- source gives German word "Lohn" as transation
	SingularNominative = "Lōn"
})

DefineLanguageNoun("Maht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Might"}, -- derived from Proto-Germanic "Maχtiz", which means "Might"
	SingularNominative = "Maht"
})

DefineLanguageNoun("Marc", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-high-german",
	Meanings = {"Marrow"},
	SingularNominative = "Marc",
	SingularGenitive = "Marges" -- source also gives "Marages" as a possible genitive
})

DefineLanguageNoun("Mēta", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Meanings = {"Reward", "Payment"},
	SingularNominative = "Mēta" -- source also gives as alternatives the forms "Miata" and "Mieta"
})

DefineLanguageNoun("Naht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Night"}, -- derived from Proto-Germanic "Naχts", which means "Night"
	SingularNominative = "Naht"
})

DefineLanguageNoun("Nara", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-high-german",
	Meanings = {"Salvation", "Rescue", "Nourishment", "Sustenance"}, -- meaning given for Middle High German, but not for Old High German, presumably because both are the same
	SingularNominative = "Nara",
	Gender = "Feminine"
})

DefineLanguageNoun("Orlac", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-high-german",
	Meanings = {"Fate"},
	SingularNominative = "Orlac",
	Gender = "Masculine"
})

DefineLanguageNoun("Ort", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-high-german",
	Meanings = {"Point", "Corner", "Edge of a Part", "Edge of a Piece", "Edge of a Small Coin"},
	SingularNominative = "Ort",
	Gender = "Masculine"
})

DefineLanguageNoun("Ouga", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Eye"},
	SingularNominative = "Ouga"
})

DefineLanguageNoun("Pfeife", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "old-high-german",
	Meanings = {"Pipe"},
	SingularNominative = "Pfeife"
})

DefineLanguageNoun("Rarta", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 10.
	Language = "old-high-german",
	Meanings = {"Voice", "Modulation"},
	SingularNominative = "Rarta",
	Gender = "Feminine"
})

DefineLanguageNoun("Sāt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Seed"}, -- derived from the Proto-Germanic "Sēþiz", which means "Seed"
	SingularNominative = "Sāt"
})

DefineLanguageNoun("Sēula", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Soul"},
	SingularNominative = "Sēula" -- source also gives "Sēla"
})

DefineLanguageNoun("Skato", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Meanings = {"Shadow"},
	SingularNominative = "Skato"
})

DefineLanguageNoun("Snura", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-high-german",
	Meanings = {"Daughter-in-Law"},
	SingularNominative = "Snura"
})

DefineLanguageNoun("Suht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meanings = {"Sickness"},
	SingularNominative = "Suht"
})

DefineLanguageNoun("Sunno", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Sun"}, -- derived from Proto-Germanic "Sunōn", which has the meaning of "Sun"
	SingularNominative = "Sunno"
})

DefineLanguageNoun("Swigar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-high-german",
	Meanings = {"Mother-in-Law"},
	SingularNominative = "Swigar"
})

DefineLanguageNoun("Swīn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Pig"}, -- derived from the Proto-Germanic "Swīnaz", which means "Pig"
	SingularNominative = "Swīn"
})

DefineLanguageNoun("Teil", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Part"},
	SingularNominative = "Teil"
})

DefineLanguageNoun("Tōd", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Death"},
	SingularNominative = "Tōd"
})

DefineLanguageNoun("Urlaga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-high-german",
	Meanings = {"Fate"},
	SingularNominative = "Urlaga",
	Gender = "Feminine"
})

DefineLanguageNoun("Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-high-german",
	Meanings = {"Way"},
	SingularNominative = "Weg"
})

DefineLanguageNoun("Weit", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4, 7.
	Language = "old-high-german",
	Meanings = {"Woad"},
	SingularNominative = "Weit",
	Gender = "Masculine"
})

DefineLanguageNoun("Wer", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Meanings = {"Man"},
	SingularNominative = "Wer"
})

DefineLanguageNoun("Wurm", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meanings = {"Worm", "Serpent"}, -- probably could be extended to mean "wyrm" as well
	SingularNominative = "Wurm"
})

DefineLanguageVerb("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Meanings = {},
	Infinitive = "Beran"
})

DefineLanguageVerb("Biotan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Bid", "Offer", "Order"},
	Infinitive = "Biotan"
})

DefineLanguageVerb("Birit", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meanings = {"Bears"},
	-- infinitive form? maybe is the same word as "beran", since the Latin cognate of "beran", "ferō", means "I bear"
	SingularThirdPersonPresent = "Birit"
})

DefineLanguageVerb("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Meanings = {"Bite"},
	Infinitive = "Bītan"
})

DefineLanguageVerb("Ezzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Meanings = {"Eat"},
	Infinitive = "Ezzan"
})

DefineLanguageVerb("Helfan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-high-german",
	Meanings = {"Help"},
	Infinitive = "Helfan"
})

DefineLanguageVerb("Hnīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-high-german",
	Meanings = {"Bow"},
	Infinitive = "Hnīgan"
})

DefineLanguageVerb("Hōren", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Hear"},
	Infinitive = "Hōren"
})

DefineLanguageVerb("Kweman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "old-high-german",
	Meanings = {"Come"}, -- apparently, but not entirely clear from source
	Infinitive = "Kweman"
})

DefineLanguageVerb("Lēren", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-high-german",
	Meanings = {"Teach"},
	Infinitive = "Lēren" -- causative verb
})

DefineLanguageVerb("Lernēn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-high-german",
	Meanings = {"Learn"},
	Infinitive = "Lernēn" -- source also gives "Lirnēn" as an alternative
})

DefineLanguageVerb("Līhan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Meanings = {"Lend"},
	Infinitive = "Līhan",
	PluralFirstPersonPast = "Liwum" -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
})

DefineLanguageVerb("Loufan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Run"},
	Infinitive = "Loufan"
})

DefineLanguageVerb("Malan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Meanings = {"Grind"},
	Infinitive = "Malan"
})

DefineLanguageVerb("Nerjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-high-german",
	Meanings = {"Heal", "Sustain the Life of", "Save", "Protect", "Nourish"}, -- meaning given for Middle High German, but not for Old High German, presumably because both are the same
	Infinitive = "Nerjan" -- source also gives alternative forms "Nerren" and "Neren"
})

DefineLanguageVerb("Queman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-high-german",
	Meanings = {"Come"},
	Infinitive = "Queman"
})

DefineLanguageVerb("Scrīban", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-high-german",
	Meanings = {"Write"},
	Infinitive = "Scrīban"
})

DefineLanguageVerb("Skatewen", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Meanings = {"Shadow"}, -- "to shadow"
	Infinitive = "Skatewen"
})

DefineLanguageVerb("Sehan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-high-german",
	Meanings = {"See"},
	Infinitive = "Sehan",
	SingularFirstPersonPast = "Sah",
	SingularThirdPersonPast = "Sah",
	PluralFirstPersonPast = "Sāhum",
	ParticiplePast = "Gisewan"
})

DefineLanguageVerb("Standan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Meanings = {"Stand"},
	Infinitive = "Standan"
})

DefineLanguageVerb("Stīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Climb"},
	Infinitive = "Stīgan",
	ParticiplePast = "Steig"
})

DefineLanguageVerb("Stōzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Push"}, -- source gives translation as the German word "stoßen"
	Infinitive = "Stōzan"
})

DefineLanguageVerb("Trūēn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Meanings = {"Trust"},
	Infinitive = "Trūēn"
})

DefineLanguageVerb("Werdan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meanings = {"Become"},
	Infinitive = "Werdan"
})

DefineLanguageVerb("Wizzan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-high-german",
	Meanings = {"Know"},
	Infinitive = "Wizzan",
	PluralFirstPersonPresent = "Wizzum" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
})

DefineLanguageVerb("Zahar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-high-german",
	Meanings = {"Tear"},
	Infinitive = "Zahar"
})

DefineLanguageVerb("Zeh", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-high-german",
	Meanings = {"Accuse"},
	SingularFirstPersonPast = "Zeh",
	PluralFirstPersonPast = "Zigum"
})

DefineLanguageVerb("Ziohan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Pull"}, -- derived from Proto-Germanic "Téuχanan", which has the meaning of "pull"
	Infinitive = "Ziohan"
})

DefineLanguageVerb("Zwirnēn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-high-german",
	Meanings = {"Twine"},
	Infinitive = "Zwirnēn" -- source also gives the alternative form "Zwirnōn"
})

DefineLanguageAdjective("Durri", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Dry"}, -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	Positive = "Durri"
})

DefineLanguageAdjective("Fūl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	Positive = "Fūl"
})

DefineLanguageAdjective("Hōh", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"High"}, -- source gives translation as the German word "hoch"
	Positive = "Hōh"
})

DefineLanguageAdjective("Jung", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-high-german",
	Meanings = {"Young"},
	Positive = "Jung"
})

DefineLanguageAdjective("Lang", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	Positive = "Lang"
})

DefineLanguageAdjective("Lōs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Empty", "Loose"}, -- source gives translation as the German words "los" and "leer"
	Positive = "Lōs"
})

DefineLanguageAdjective("Mēro", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"More"}, -- perhaps a "determiner" class of words should be added?
	Positive = "Mēro", -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, pp. 236;
	Comparative = "Mēro", -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Superlative = "Mēst" -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
})

DefineLanguageAdjective("Reht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Right", "Straight"}, -- derived from Proto-Germanic "Reχtaz", which means "Right, Straight"
	Positive = "Reht"
})

DefineLanguageAdjective("Rōt", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "old-high-german",
	Meanings = {"Red"},
	Positive = "Rōt"
})

DefineLanguageAdjective("Tiuf", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Deep"}, -- derived from Proto-Germanic "Déwpaz", which has the meaning of "deep"
	Positive = "Tiuf"
})

DefineLanguageAdposition("Aba", { -- Lehmann also gives the alternative form "ab"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"From"} -- derived from the Proto-Germanic "Af", which means "From"
})

DefineLanguageAdposition("Ubir", { -- Lehmann also gives the alternative form "ubar"; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-high-german",
	Meanings = {"Over"} -- derived from the Proto-Germanic "Ufar", which means "Over"
})

DefineLanguageNumeral("Sibun", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-high-german",
	Number = 7
})
