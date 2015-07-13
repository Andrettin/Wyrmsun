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
	"nouns", {
		"Aihts", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Property", -- source gives the German "Besitz"
			"singular-nominative", "Aihts"
		},
		"Aiweins", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Lifetime", -- seemingly etymologically, if not actually
			"singular-nominative", "Aiweins"
		},
		"Aiz", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Bronze",
			"singular-nominative", "Aiz"
		},
		"Augo", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Eye",
			"singular-nominative", "Augo"
		},
		"Auso", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Ear", -- seemingly etymologically, if not actually
			"singular-nominative", "Auso"
		},
		"Dails", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Part",
			"singular-nominative", "Dails"
		},
		"Dauþus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Death",
			"singular-nominative", "Dauþus"
		},
		"Dius", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Animal",
			"singular-nominative", "Dius"
		},
		"Fisks", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Fish",
			"singular-nominative", "Fisks"
		},
		"Gazds", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Prickle",
			"singular-nominative", "Gazds",
			"gender", "Masculine"
		},
		"Hairto", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Heart",
			"singular-nominative", "Hairto"
		},
		"Haubiþ", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Main", -- source gives German noun "Haupt" as transation
			"singular-nominative", "Haubiþ"
		},
		"Hlaifs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Bread",
			"singular-nominative", "Hlaifs"
		},
		"Hunds", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Dog",
			"singular-nominative", "Hunds"
		},
		"Huzd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
			"meaning", "Treasure",
			"singular-nominative", "Huzd"
		},
		"Kas", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Container",
			"singular-nominative", "Kas"
		},
		"Laun", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Pay", -- source gives German word "Lohn" as transation
			"singular-nominative", "Laun"
		},
		"Mizdon", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
			"meaning", "Reward",
			"singular-nominative", "Mizdon",
			"gender", "Feminine"
		},
		"Raus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"meaning", "Tube", -- seemingly etymologically, if not actually
			"singular-nominative", "Raus"
		},
		"Razda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
			"meaning", "Voice, Pronunciation, Speech",
			"singular-nominative", "Razda",
			"gender", "Feminine"
		},
		"Razn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
			"meaning", "House",
			"singular-nominative", "Razn",
			"gender", "Neuter"
		},
		"Sair", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Wound",
			"singular-nominative", "Sair"
		},
		"Saiwala", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
			"meaning", "Soul",
			"singular-nominative", "Saiwala"
		},
		"Sauhts", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Sickness",
			"singular-nominative", "Sauhts"
		},
		"Waurms", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
			"meaning", "Worm, Serpent", -- probably could be extended to mean "wyrm" as well
			"singular-nominative", "Waurms"
		},
		"Wigs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
			"meaning", "Way",
			"singular-nominative", "Wigs"
		}
	},
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
