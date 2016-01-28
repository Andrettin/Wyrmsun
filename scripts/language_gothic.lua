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

DefineCivilizationLanguage("goth", -- Gothic
	"pronouns", {
		"Mis", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "Me", -- dative
			"dative", "Mis"
		},
		"Weis", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "We",
			"nominative", "Weis"
		}
	},
	"adverbs", {
		"Aufto", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Perhaps"
		},
		"Auk", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Also" -- source gives translation as the German word "auch"
		},
		"Mais", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
			"meaning", "More"
		},
		"Us", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Out"
		},
		"Waila", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Well"
		}
	},
	"conjunctions", {
		"Aiþþau", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Or"
		}
	}
)

DefineLanguageNoun("Aihts", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Property", -- source gives the German "Besitz"
	SingularNominative = "Aihts"
})

DefineLanguageNoun("Aiweins", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Lifetime", -- seemingly etymologically, if not actually
	SingularNominative = "Aiweins"
})

DefineLanguageNoun("Aiz", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Meaning = "Bronze",
	SingularNominative = "Aiz"
})

DefineLanguageNoun("Augo", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Eye",
	SingularNominative = "Augo"
})

DefineLanguageNoun("Auso", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Meaning = "Ear", -- seemingly etymologically, if not actually
	SingularNominative = "Auso"
})

DefineLanguageNoun("Dails", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Part",
	SingularNominative = "Dails"
})

DefineLanguageNoun("Dauþus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Death",
	SingularNominative = "Dauþus"
})

DefineLanguageNoun("Dius", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Meaning = "Animal",
	SingularNominative = "Dius"
})

DefineLanguageNoun("Faíhu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Meaning = "Cattle",
	SingularNominative = "Faíhu"
})

DefineLanguageNoun("Fisks", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Fish",
	SingularNominative = "Fisks"
})

DefineLanguageNoun("Gazds", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "gothic",
	Meaning = "Prickle",
	SingularNominative = "Gazds",
	Gender = "Masculine"
})

DefineLanguageNoun("Hairto", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Heart",
	SingularNominative = "Hairto"
})

DefineLanguageNoun("Haubiþ", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Main", -- source gives German noun "Haupt" as transation
	SingularNominative = "Haubiþ"
})

DefineLanguageNoun("Hlaifs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Bread",
	SingularNominative = "Hlaifs"
})

DefineLanguageNoun("Hunds", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Dog",
	SingularNominative = "Hunds"
})

DefineLanguageNoun("Huzd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "gothic",
	Meaning = "Treasure",
	SingularNominative = "Huzd"
})

DefineLanguageNoun("Kas", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Meaning = "Container",
	SingularNominative = "Kas"
})

DefineLanguageNoun("Laun", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Pay", -- source gives German word "Lohn" as transation
	SingularNominative = "Laun"
})

DefineLanguageNoun("Lein", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Meaning = "Linen",
	SingularNominative = "Lein"
})

DefineLanguageNoun("Mizdon", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "gothic",
	Meaning = "Reward",
	SingularNominative = "Mizdon",
	Gender = "Feminine"
})

DefineLanguageNoun("Raus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Meaning = "Tube", -- seemingly etymologically, if not actually
	SingularNominative = "Raus"
})

DefineLanguageNoun("Razda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "gothic",
	Meaning = "Voice, Pronunciation, Speech",
	SingularNominative = "Razda",
	Gender = "Feminine"
})

DefineLanguageNoun("Razn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "gothic",
	Meaning = "House",
	SingularNominative = "Razn",
	Gender = "Neuter"
})

DefineLanguageNoun("Sair", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Wound",
	SingularNominative = "Sair"
})

DefineLanguageNoun("Saiwala", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Soul",
	SingularNominative = "Saiwala"
})

DefineLanguageNoun("Sauhts", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Sickness",
	SingularNominative = "Sauhts"
})

DefineLanguageNoun("Waurms", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Worm, Serpent", -- probably could be extended to mean "wyrm" as well
	SingularNominative = "Waurms"
})

DefineLanguageNoun("Wigs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Meaning = "Way",
	SingularNominative = "Wigs"
})

DefineLanguageVerb("Andbeitan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Meaning = "?", -- cognates have "bite" as their meaning
	Infinitive = "Andbeitan",
	SingularThirdPersonPast = "Andbait",
	PluralThirdPersonPast = "Andbitan",
	ParticiplePast = "Andbitans"
})

DefineLanguageVerb("Bairan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Meaning = "?",
	Infinitive = "Bairan",
	SingularThirdPersonPast = "Bar", -- correct?
	PluralThirdPersonPast = "Baurun", -- correct?
	ParticiplePast = "Baurans" -- correct?
})

DefineLanguageVerb("Bairiþ", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Bears",
	-- infinitive form? maybe is the same word as "bairan", since the Latin cognate of "bairan", "ferō", means "I bear"
	SingularThirdPersonPresent = "Bairiþ"
})

DefineLanguageVerb("Hausjan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Hear",
	Infinitive = "Hausjan"
})

DefineLanguageVerb("Hilpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Meaning = "Help",
	Infinitive = "Hilpan"
})

DefineLanguageVerb("Hlaupan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Run",
	Infinitive = "Hlaupan"
})

DefineLanguageVerb("Itan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Meaning = "Eat",
	Infinitive = "Itan"
})

DefineLanguageVerb("Laihun", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Lent", -- "we lent"
	-- infinitive form?
	PluralFirstPersonPast = "Laihun"
})

DefineLanguageVerb("Laisjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-5.
	Language = "gothic",
	Meaning = "Teach",
	Infinitive = "Laisjan" -- causative verb
})

DefineLanguageVerb("Ganasjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "gothic",
	Meaning = "Make Healthy, Heal, Rescue",
	Infinitive = "Ganasjan" -- source gives "(ga)nasjan"
})

DefineLanguageVerb("Saihan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "See",
	Infinitive = "Saihan"
})

DefineLanguageVerb("Stautan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Push", -- source gives translation as the German word "stoßen"
	Infinitive = "Stautan"
})

DefineLanguageVerb("Wairþan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Become",
	Infinitive = "Wairþan"
})

DefineLanguageVerb("Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Know",
	Infinitive = "Witan"
})

DefineLanguageAdjective("Faihs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Shining",
	Positive = "Faihs"
})

DefineLanguageAdjective("Hauhs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "High", -- source gives translation as the German word "hoch"
	Positive = "Hauhs"
})

DefineLanguageAdjective("Juggs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meaning = "Young",
	Positive = "Juggs"
})

DefineLanguageAdjective("Laus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Empty, Loose", -- source gives translation as the German words "los" and "leer"
	Positive = "Laus"
})

DefineLanguageAdjective("Maiza", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, pp. 236, 242; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "gothic",
	Meaning = "More", -- perhaps a "determiner" class of words should be added?
	Positive = "Maiza", -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, pp. 236;
	Comparative = "Maiza", -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Superlative = "Maists" -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
})

DefineLanguageAdjective("Rauþs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meaning = "Red",
	Positive = "Rauþs"
})
