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
	Meanings = {"Property"}, -- source gives the German "Besitz"
	SingularNominative = "Aihts"
})

DefineLanguageNoun("Aírþa", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Earth"}, -- derived from Proto-Germanic "Erþō", which means "Earth"
	SingularNominative = "Aírþa"
})

DefineLanguageNoun("Aiweins", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"Lifetime"}, -- seemingly etymologically, if not actually
	SingularNominative = "Aiweins"
})

DefineLanguageNoun("Aiz", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Meanings = {"Bronze"},
	SingularNominative = "Aiz"
})

DefineLanguageNoun("Augo", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Eye"},
	SingularNominative = "Augo"
})

DefineLanguageNoun("Auso", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Meanings = {"Ear"}, -- seemingly etymologically, if not actually
	SingularNominative = "Auso"
})

DefineLanguageNoun("Bōka", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Book"}, -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	SingularNominative = "Bōka"
})

DefineLanguageNoun("Dags", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Meanings = {"Day"},
	SingularNominative = "Dags"
})

DefineLanguageNoun("Dails", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Part"},
	SingularNominative = "Dails"
})

DefineLanguageNoun("Dauhtar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Meanings = {"Daughter"},
	SingularNominative = "Dauhtar"
})

DefineLanguageNoun("Daúr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Door"}, -- derived from Proto-Germanic "Durez", which has the meaning of "door"
	SingularNominative = "Daúr"
})

DefineLanguageNoun("Dauþus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Death"},
	SingularNominative = "Dauþus"
})

DefineLanguageNoun("Dius", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Meanings = {"Animal"},
	SingularNominative = "Dius"
})

DefineLanguageNoun("Faíhu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Meanings = {"Cattle"},
	SingularNominative = "Faíhu"
})

DefineLanguageNoun("Fisks", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"Fish"},
	SingularNominative = "Fisks"
})

DefineLanguageNoun("Flōdus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Flood"}, -- derived from the Proto-Germanic "Flōduz", which means "Flood"
	SingularNominative = "Flōdus"
})

DefineLanguageNoun("Gaits", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "gothic",
	Meanings = {"Goat"},
	SingularNominative = "Gaits"
})

DefineLanguageNoun("Gards", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Garden"}, -- derived from Proto-Germanic "Gárdiz", which has the meaning of "garden"
	SingularNominative = "Gards"
})

DefineLanguageNoun("Gazds", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "gothic",
	Meanings = {"Prickle"},
	SingularNominative = "Gazds",
	Gender = "Masculine"
})

DefineLanguageNoun("Hairto", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "gothic",
	Meanings = {"Heart"},
	SingularNominative = "Hairto"
})

DefineLanguageNoun("Haubiþ", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Main"}, -- source gives German noun "Haupt" as transation
	SingularNominative = "Haubiþ"
})

DefineLanguageNoun("Haúrds", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Wattle"}, -- derived from Proto-Germanic "Χŕdiz", which has the meaning of "wattle"
	SingularNominative = "Haúrds"
})

DefineLanguageNoun("Haurn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Horn"},
	SingularNominative = "Haurn"
})

DefineLanguageNoun("Hlaifs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Bread"},
	SingularNominative = "Hlaifs"
})

DefineLanguageNoun("Hunds", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"Dog"},
	SingularNominative = "Hunds"
})

DefineLanguageNoun("Huzd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "gothic",
	Meanings = {"Treasure"},
	SingularNominative = "Huzd"
})

DefineLanguageNoun("Jēr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Year"}, -- derived from Proto-Germanic "Yēra", which means "Year"
	SingularNominative = "Jēr"
})

DefineLanguageNoun("Kas", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Meanings = {"Container"},
	SingularNominative = "Kas"
})

DefineLanguageNoun("Kaúrn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Grain"}, -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	SingularNominative = "Kaúrn"
})

DefineLanguageNoun("Laun", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Pay"}, -- source gives German word "Lohn" as transation
	SingularNominative = "Laun"
})

DefineLanguageNoun("Lein", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Meanings = {"Linen"},
	SingularNominative = "Lein"
})

DefineLanguageNoun("Mahts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Might"}, -- derived from Proto-Germanic "Maχtiz", which has the meaning of "Might"
	SingularNominative = "Mahts"
})

DefineLanguageNoun("Manasēþs", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {}, -- the "Sēþiz" Proto-Germanic word from which the "-sēþs" element in this word originates means "Seed"
	SingularNominative = "Manasēþs"
})

DefineLanguageNoun("Mizdon", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "gothic",
	Meanings = {"Reward"},
	SingularNominative = "Mizdon",
	Gender = "Feminine"
})

DefineLanguageNoun("Nahts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Night"}, -- derived from Proto-Germanic "Naχts", which means "Night"
	SingularNominative = "Nahts"
})

DefineLanguageNoun("Raus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "gothic",
	Meanings = {"Tube"}, -- seemingly etymologically, if not actually
	SingularNominative = "Raus"
})

DefineLanguageNoun("Razda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "gothic",
	Meanings = {"Voice", "Pronunciation", "Speech"},
	SingularNominative = "Razda",
	Gender = "Feminine"
})

DefineLanguageNoun("Razn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "gothic",
	Meanings = {"House"},
	SingularNominative = "Razn",
	Gender = "Neuter"
})

DefineLanguageNoun("Sair", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"Wound"},
	SingularNominative = "Sair"
})

DefineLanguageNoun("Saiwala", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Soul"},
	SingularNominative = "Saiwala"
})

DefineLanguageNoun("Sauhts", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"Sickness"},
	SingularNominative = "Sauhts"
})

DefineLanguageNoun("Sunnō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Sun"}, -- derived from Proto-Germanic "Sunōn", which means "Sun"
	SingularNominative = "Sunnō"
})

DefineLanguageNoun("Swein", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Pig"}, -- derived from the Proto-Germanic "Swīnaz", which means "Pig"
	SingularNominative = "Swein"
})

DefineLanguageNoun("Waurms", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"Worm", "Serpent"}, -- probably could be extended to mean "wyrm" as well
	SingularNominative = "Waurms"
})

DefineLanguageNoun("Wigs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Meanings = {"Way"},
	SingularNominative = "Wigs"
})

DefineLanguageVerb("Andbeitan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Meanings = {}, -- cognates have "bite" as their meaning
	Infinitive = "Andbeitan",
	SingularThirdPersonPast = "Andbait",
	PluralThirdPersonPast = "Andbitan",
	ParticiplePast = "Andbitans"
})

DefineLanguageVerb("Bairan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "gothic",
	Meanings = {},
	Infinitive = "Bairan",
	SingularThirdPersonPast = "Bar", -- correct?
	PluralThirdPersonPast = "Baurun", -- correct?
	ParticiplePast = "Baurans" -- correct?
})

DefineLanguageVerb("Bairiþ", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"Bears"},
	-- infinitive form? maybe is the same word as "bairan", since the Latin cognate of "bairan", "ferō", means "I bear"
	SingularThirdPersonPresent = "Bairiþ"
})

DefineLanguageVerb("Biudan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2-3.
	Language = "gothic",
	Meanings = {"Bid", "Offer", "Order"},
	Infinitive = "Biudan",
	ParticiplePast = "Báuþ" -- "offered" / "ordered"
})

DefineLanguageVerb("Hausjan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Hear"},
	Infinitive = "Hausjan"
})

DefineLanguageVerb("Hilpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "gothic",
	Meanings = {"Help"},
	Infinitive = "Hilpan"
})

DefineLanguageVerb("Hlaupan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Run"},
	Infinitive = "Hlaupan"
})

DefineLanguageVerb("Itan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "gothic",
	Meanings = {"Eat"},
	Infinitive = "Itan"
})

DefineLanguageVerb("Laihun", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"Lent"}, -- "we lent"
	-- infinitive form?
	PluralFirstPersonPast = "Laihun"
})

DefineLanguageVerb("Laisjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-5.
	Language = "gothic",
	Meanings = {"Teach"},
	Infinitive = "Laisjan" -- causative verb
})

DefineLanguageVerb("Ganasjan", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "gothic",
	Meanings = {"Make Healthy", "Heal", "Rescue"},
	Infinitive = "Ganasjan" -- source gives "(ga)nasjan"
})

DefineLanguageVerb("Saihan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"See"},
	Infinitive = "Saihan"
})

DefineLanguageVerb("Siggwan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "gothic",
	Meanings = {"Sing"}, -- apparently, but not entirely clear from source
	Infinitive = "Siggwan"
})

DefineLanguageVerb("Skeinan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Meanings = {"Shine"},
	Infinitive = "Skeinan"
})

DefineLanguageVerb("Speiwan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Meanings = {"Spit"},
	Infinitive = "Speiwan"
})

DefineLanguageVerb("Standan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "gothic",
	Meanings = {"Stand"},
	Infinitive = "Standan"
})

DefineLanguageVerb("Stautan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Push"}, -- source gives translation as the German word "stoßen"
	Infinitive = "Stautan"
})

DefineLanguageVerb("Steigan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2, 4.
	Language = "gothic",
	Meanings = {"Climb"},
	Infinitive = "Steigan",
	ParticiplePast = "Stáig"
})

DefineLanguageVerb("Tagr", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "gothic",
	Meanings = {"Tear"},
	Infinitive = "Tagr"
})

DefineLanguageVerb("Tiuhan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Pull"}, -- derived from Proto-Germanic "Téuχanan", which has the meaning of "pull"
	Infinitive = "Tiuhan"
})

DefineLanguageVerb("Trauan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "gothic",
	Meanings = {"Trust"},
	Infinitive = "Trauan"
})

DefineLanguageVerb("Wairþan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"Become"},
	Infinitive = "Wairþan"
})

DefineLanguageVerb("Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241; Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 3.
	Language = "gothic",
	Meanings = {"Know", "Keep Watch Over"},
	Infinitive = "Witan",
	SingularFirstPersonPresent = "Wait",
	PluralFirstPersonPresent = "Witum"
})

DefineLanguageAdjective("Diups", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Deep"}, -- derived from Proto-Germanic "Déwpaz", which means "Deep"
	Positive = "Diups"
})

DefineLanguageAdjective("Faihs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"Shining"},
	Positive = "Faihs"
})

DefineLanguageAdjective("Fūls", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	Positive = "Fūls"
})

DefineLanguageAdjective("Grēdags", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Meanings = {"Hungry"},
	Positive = "Grēdags"
})

DefineLanguageAdjective("Hauhs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"High"}, -- source gives translation as the German word "hoch"
	Positive = "Hauhs"
})

DefineLanguageAdjective("Juggs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "gothic",
	Meanings = {"Young"},
	Positive = "Juggs"
})

DefineLanguageAdjective("Lagg", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	Positive = "Lagg"
})

DefineLanguageAdjective("Laus", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Empty", "Loose"}, -- source gives translation as the German words "los" and "leer"
	Positive = "Laus"
})

DefineLanguageAdjective("Maiza", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, pp. 236, 242; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"More"}, -- perhaps a "determiner" class of words should be added?
	Positive = "Maiza", -- Lehmann gives "Máiza", while Runge gives "Maiza"
	Comparative = "Maiza", -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Superlative = "Maists" -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
})

DefineLanguageAdjective("Raíhts", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Right", "Straight"}, -- derived from Proto-Germanic "Reχtaz", which means "Right, Straight"
	Positive = "Raíhts"
})

DefineLanguageAdjective("Rauþs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "gothic",
	Meanings = {"Red"},
	Positive = "Rauþs"
})

DefineLanguageAdjective("Þaúrsus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Dry"}, -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	Positive = "Þaúrsus"
})

DefineLanguagePronoun("Mis", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "gothic",
	Meanings = {"Me"}, -- dative
	Dative = "Mis"
})

DefineLanguagePronoun("Weis", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 5, Subsection 1.
	Language = "gothic",
	Meanings = {"We"},
	Nominative = "Weis"
})

DefineLanguagePronoun("Izwis", { -- should be the nominative form; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 5, Subsection 1.
	Language = "gothic",
	Meanings = {"You"}, -- second person plural
	-- what is the nominative form?
	Accusative = "Izwis",
	Dative = "Izwis"
})

DefineLanguageAdposition("Af", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"From"} -- derived from Proto-Germanic "Af", which means "From"
})

DefineLanguageAdposition("Ufar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "gothic",
	Meanings = {"Over"} -- derived from the Proto-Germanic "Ufar", which means "Over"
})

DefineLanguageNumeral("Sibun", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "gothic",
	Number = 7
})

DefineLanguageNumeral("Ainlif", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "gothic",
	Number = 11
})

DefineLanguageNumeral("Twalif", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "gothic",
	Number = 12
})
