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
	"verbs", {
		"Bairiþ", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Bears",
			-- infinitive form?
			"singular-third-person-present", "Bairiþ"
		},
		"Hausjan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Hear",
			"infinitive", "Hausjan"
		},
		"Hilpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Help",
			"infinitive", "Hilpan"
		},
		"Hlaupan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Run",
			"infinitive", "Hlaupan"
		},
		"Itan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Eat",
			"infinitive", "Itan"
		},
		"Laihun", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Lent", -- "we lent"
			-- infinitive form?
			"plural-first-person-past", "Laihun"
		},
		"Laisjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-5.
			"meaning", "Teach",
			"infinitive", "Laisjan" -- causative verb
		},
		"Ganasjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "Make Healthy, Heal, Rescue",
			"infinitive", "Ganasjan" -- source gives "(ga)nasjan"
		},
		"Saihan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "See",
			"infinitive", "Saihan"
		},
		"Stautan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Push", -- source gives translation as the German word "stoßen"
			"infinitive", "Stautan"
		},
		"Wairþan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Become",
			"infinitive", "Wairþan"
		},
		"Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Know",
			"infinitive", "Witan"
		}
	},
	"adjectives", {
		"Faihs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Shining"
		},
		"Hauhs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "High" -- source gives translation as the German word "hoch"
		},
		"Juggs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Young"
		},
		"Laus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Empty" -- source gives translation as the German words "los" and "leer"
		},
		"Laus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Loose" -- source gives translation as the German words "los" and "leer"
		},
		"Maiza", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "More", -- perhaps a "determiner" class of words should be added?
			"comparative", "Maiza", -- Richard M. Runge gives meaning as "larger", Sean Crist indicates that it is the comparative of "Maiza" (More); Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
			"superlative", "Maists" -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
		},
		"Rauþs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Red"
		}
	},
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
	Civilization = "goth",
	Meaning = "Property", -- source gives the German "Besitz"
	SingularNominative = "Aihts"
})

DefineLanguageNoun("Aiweins", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Civilization = "goth",
	Meaning = "Lifetime", -- seemingly etymologically, if not actually
	SingularNominative = "Aiweins"
})

DefineLanguageNoun("Aiz", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Civilization = "goth",
	Meaning = "Bronze",
	SingularNominative = "Aiz"
})

DefineLanguageNoun("Augo", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Civilization = "goth",
	Meaning = "Eye",
	SingularNominative = "Augo"
})

DefineLanguageNoun("Auso", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Civilization = "goth",
	Meaning = "Ear", -- seemingly etymologically, if not actually
	SingularNominative = "Auso"
})

DefineLanguageNoun("Dails", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Civilization = "goth",
	Meaning = "Part",
	SingularNominative = "Dails"
})

DefineLanguageNoun("Dauþus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Civilization = "goth",
	Meaning = "Death",
	SingularNominative = "Dauþus"
})

DefineLanguageNoun("Dius", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Civilization = "goth",
	Meaning = "Animal",
	SingularNominative = "Dius"
})

DefineLanguageNoun("Fisks", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Civilization = "goth",
	Meaning = "Fish",
	SingularNominative = "Fisks"
})

DefineLanguageNoun("Gazds", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Civilization = "goth",
	Meaning = "Prickle",
	SingularNominative = "Gazds",
	Gender = "Masculine"
})

DefineLanguageNoun("Hairto", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Civilization = "goth",
	Meaning = "Heart",
	SingularNominative = "Hairto"
})

DefineLanguageNoun("Haubiþ", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Civilization = "goth",
	Meaning = "Main", -- source gives German noun "Haupt" as transation
	SingularNominative = "Haubiþ"
})

DefineLanguageNoun("Hlaifs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Civilization = "goth",
	Meaning = "Bread",
	SingularNominative = "Hlaifs"
})

DefineLanguageNoun("Hunds", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Civilization = "goth",
	Meaning = "Dog",
	SingularNominative = "Hunds"
})

DefineLanguageNoun("Huzd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Civilization = "goth",
	Meaning = "Treasure",
	SingularNominative = "Huzd"
})

DefineLanguageNoun("Kas", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Civilization = "goth",
	Meaning = "Container",
	SingularNominative = "Kas"
})

DefineLanguageNoun("Laun", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Civilization = "goth",
	Meaning = "Pay", -- source gives German word "Lohn" as transation
	SingularNominative = "Laun"
})

DefineLanguageNoun("Mizdon", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Civilization = "goth",
	Meaning = "Reward",
	SingularNominative = "Mizdon",
	Gender = "Feminine"
})

DefineLanguageNoun("Raus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Civilization = "goth",
	Meaning = "Tube", -- seemingly etymologically, if not actually
	SingularNominative = "Raus"
})

DefineLanguageNoun("Razda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Civilization = "goth",
	Meaning = "Voice, Pronunciation, Speech",
	SingularNominative = "Razda",
	Gender = "Feminine"
})

DefineLanguageNoun("Razn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Civilization = "goth",
	Meaning = "House",
	SingularNominative = "Razn",
	Gender = "Neuter"
})

DefineLanguageNoun("Sair", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Civilization = "goth",
	Meaning = "Wound",
	SingularNominative = "Sair"
})

DefineLanguageNoun("Saiwala", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Civilization = "goth",
	Meaning = "Soul",
	SingularNominative = "Saiwala"
})

DefineLanguageNoun("Sauhts", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Civilization = "goth",
	Meaning = "Sickness",
	SingularNominative = "Sauhts"
})

DefineLanguageNoun("Waurms", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Civilization = "goth",
	Meaning = "Worm, Serpent", -- probably could be extended to mean "wyrm" as well
	SingularNominative = "Waurms"
})

DefineLanguageNoun("Wigs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Civilization = "goth",
	Meaning = "Way",
	SingularNominative = "Wigs"
})
