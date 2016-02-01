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

DefineLanguageNoun("Ærn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Meanings = {"House"},
	SingularNominative = "Ærn",
	Gender = "Neuter"
})

DefineLanguageNoun("Adl", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 114.
	Language = "old-english",
	Meanings = {"Illness"},
	SingularNominative = "Adl"
})

DefineLanguageNoun("Bearn", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Meanings = {"Child"},
	SingularNominative = "Bearn"
})

DefineLanguageNoun("Bōc", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Book"}, -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	SingularNominative = "Bōc"
})

DefineLanguageNoun("Breord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Meanings = {"Shore", "Edge"},
	SingularNominative = "Breord"
})

DefineLanguageNoun("Brord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-english",
	Meanings = {"Point", "Sprout"},
	SingularNominative = "Brord",
	Gender = "Masculine"
})

DefineLanguageNoun("Cên", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-7.
	Language = "old-english",
	Meanings = {"Pine", "Fir", "Spruce"},
	SingularNominative = "Cên",
	Gender = "Masculine"
})

DefineLanguageNoun("Corn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Grain"}, -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	SingularNominative = "Corn"
})

DefineLanguageNoun("Cost", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Meanings = {"Object of Choice"},
	SingularNominative = "Cost"
})

DefineLanguageNoun("Duru", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Door"}, -- derived from Proto-Germanic "Durez", which has the meaning of "door"
	SingularNominative = "Duru"
})

DefineLanguageNoun("Ealdorneru", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Meanings = {"Saving of a Life"},
	SingularNominative = "Ealdorneru",
	Gender = "Feminine"
})

DefineLanguageNoun("Eorþe", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Earth"},
	SingularNominative = "Eorþe", -- Runge gives "Eorþe", while Lehmann gives "Eorþ"
	Uncountable = true
})

DefineLanguageNoun("Feoh", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2..
	Language = "old-english",
	Meanings = {"Cattle"},
	SingularNominative = "Feoh"
})

DefineLanguageNoun("Fiðelestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 77.
	Language = "old-english",
	Meanings = {"Fiddler"},
	SingularNominative = "Fiðelestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageNoun("Fisc", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Meanings = {"Fish"},
	SingularNominative = "Fisc"
})

DefineLanguageNoun("Fōt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Foot"}, -- derived from Proto-Germanic "Fōts", which has the meaning of "foot"
	SingularNominative = "Fōt"
})

DefineLanguageNoun("Gēar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Year"}, -- derived from Proto-Germanic "Yēra", which means "Year"
	SingularNominative = "Gēar"
})

DefineLanguageNoun("Geard", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Garden"}, -- derived from Proto-Germanic "Gárdiz", which has the meaning of "garden"
	SingularNominative = "Geard"
})

DefineLanguageNoun("Gereord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Meanings = {"Meal", "Feast", "Food"},
	SingularNominative = "Gereord",
	Gender = "Neuter"
})

DefineLanguageNoun("Gierd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Meanings = {"Rod", "Prickle"},
	SingularNominative = "Gierd"
})

DefineLanguageNoun("Glīwmǣden", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 77.
	Language = "old-english",
	Meanings = {"Musician"},
	SingularNominative = "Glīwmǣden",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageNoun("God", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Meanings = {"God"},
	SingularNominative = "God",
	Gender = "Masculine"
})

DefineLanguageNoun("Gyden", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Meanings = {"Goddess"},
	SingularNominative = "Gyden",
	PluralNominative = "Gydena",
	Gender = "Feminine"
})

DefineLanguageNoun("Hād", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 3.
	Language = "old-english",
	Meanings = {"Hair"},
	SingularNominative = "Hād"
})

DefineLanguageNoun("Hearpestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Meanings = {"Harp Player"},
	SingularNominative = "Hearpestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageNoun("Heordan", { -- this is the plural, what is the singular? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-english",
	Meanings = {"Hards of Flax"},
	PluralNominative = "Heordan"
})

DefineLanguageNoun("Heorde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Meanings = {"Flax Fiber"},
	SingularNominative = "Heorde",
	Uncountable = true -- as a material, it is likely to be uncountable, specially since there is a word for "hards of flax"
})

DefineLanguageNoun("Heorte", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Meanings = {"Heart"},
	SingularNominative = "Heorte"
})

DefineLanguageNoun("Hlēapestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Meanings = {"Dancer"},
	SingularNominative = "Hlēapestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageNoun("Hoppestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Meanings = {"Dancer"},
	SingularNominative = "Hoppestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageNoun("Hræn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-english",
	Meanings = {"Wave", "Sea"},
	SingularNominative = "Hræn", -- source also gives the alternative form "Hærn"
	Gender = "Feminine"
})

DefineLanguageNoun("Hweowol", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Meanings = {"Wheel"},
	SingularNominative = "Hweowol"
})

DefineLanguageNoun("Hléor", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-english",
	Meanings = {"Cheek"},
	SingularNominative = "Hléor"
})

DefineLanguageNoun("Hord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-english",
	Meanings = {"Treasure", "Amassed Wealth"},
	SingularNominative = "Hord"
})

DefineLanguageNoun("Hund", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Meanings = {"Dog"},
	SingularNominative = "Hund"
})

DefineLanguageNoun("Leoðurun", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 124.
	Language = "old-english",
	Meanings = {"Sung Mistery"},
	SingularNominative = "Leoðurun"
})

DefineLanguageNoun("Mann", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 85-86, 89.
	Language = "old-english",
	Meanings = {"Person"},
	SingularNominative = "Mann",
	PluralNominative = "Menn", -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Gender = "Masculine"
})

DefineLanguageNoun("Meaht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Might"}, -- derived from Proto-Germanic "Maχtiz", which has the meaning of "Might"
	SingularNominative = "Meaht"
})

DefineLanguageNoun("Mearg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Meanings = {"Marrow"},
	SingularNominative = "Mearg"
})

DefineLanguageNoun("Mēd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "old-english",
	Meanings = {"Reward", "Payment"},
	SingularNominative = "Mēd", -- source also gives as an alternative the form "Meord"
	Gender = "Feminine"
})

DefineLanguageNoun("Mennen", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Meanings = {"Handmaid", "Female Slave"},
	SingularNominative = "Mennen",
	Gender = "Feminine"
})

DefineLanguageNoun("Munuc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Meanings = {"Monk"},
	SingularNominative = "Munuc",
	Gender = "Masculine"
})

DefineLanguageNoun("Mynecenu", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Meanings = {"Nun"},
	SingularNominative = "Mynecenu",
	Gender = "Feminine"
})

DefineLanguageNoun("Neaht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Night"},
	SingularNominative = "Neaht"
})

DefineLanguageNoun("Ord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-english",
	Meanings = {"Point", "Spearpoint"},
	SingularNominative = "Ord",
	Gender = "Masculine"
})

DefineLanguageNoun("Orlæg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Meanings = {"Fate"},
	SingularNominative = "Orlæg",
	Gender = "Neuter"
})

DefineLanguageNoun("Plegestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Meanings = {"Athlete"},
	SingularNominative = "Plegestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageNoun("Ræsn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Meanings = {"Plank", "Ceiling"},
	SingularNominative = "Ræsn",
	Gender = "Neuter"
})

DefineLanguageNoun("Reord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-english",
	Meanings = {"Voice", "Sound", "Speech"},
	SingularNominative = "Reord",
	Gender = "Feminine"
})

DefineLanguageNoun("Sǣd", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Seed"}, -- derived from the Proto-Germanic "Sēþiz", which means "Seed"
	SingularNominative = "Sǣd"
})

DefineLanguageNoun("Sangestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Meanings = {"Singer"},
	SingularNominative = "Sangestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageNoun("Scernicge", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Meanings = {"Actress"},
	SingularNominative = "Scernicge",
	Gender = "Feminine"
})

DefineLanguageNoun("Sealticge", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Meanings = {"Dancer"},
	SingularNominative = "Sealticge",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageNoun("Sperehealf", { -- also given as Sperehand; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Meanings = {"Spear-Side", "Patrilineal Ancestry"},
	SingularNominative = "Sperehealf"
})

DefineLanguageNoun("Spinelhealf", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Meanings = {"Spindle-Side"},
	SingularNominative = "Spinelhealf"
})

DefineLanguageNoun("Sunna", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Sun"}, -- derived from Proto-Germanic "Sunōn", which has the meaning of "Sun"
	SingularNominative = "Sunna"
})

DefineLanguageNoun("Swīn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Pig"}, -- derived from the Proto-Germanic "Swīnaz", which means "Pig"
	SingularNominative = "Swīn"
})

DefineLanguageNoun("Twīn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Language = "old-english",
	Meanings = {"Canvas", "Screen"},
	SingularNominative = "Twīn"
})

DefineLanguageNoun("Þunorrad", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 169.
	Language = "old-english",
	Meanings = {"Peal of Thunder"}, -- literally: "thunder-ride" or "Thunor-ride"
	SingularNominative = "Þunorrad"
})

DefineLanguageNoun("Wâd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-english",
	Meanings = {"Woad"},
	SingularNominative = "Wâd"
})

DefineLanguageNoun("Wægn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Wagon"}, -- derived from Proto-Germanic "Waganaz", which means "Wagon"
	SingularNominative = "Wægn"
})

DefineLanguageNoun("Wælcyrige", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Meanings = {"Sorceress"},
	SingularNominative = "Wælcyrige",
	Gender = "feminine"
})

DefineLanguageNoun("Wæpnedmann", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Meanings = {"Armed Person"},
	SingularNominative = "Wæpnedmann"
})

DefineLanguageNoun("Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Meanings = {"Way"},
	SingularNominative = "Weg"
})

DefineLanguageNoun("Wif", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 85.
	Language = "old-english",
	Meanings = {"Woman"},
	SingularNominative = "Wif",
	Gender = "Neuter"
})

DefineLanguageNoun("Wifmann", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Meanings = {"Woman-Person"},
	SingularNominative = "Wifmann"
})

DefineLanguageNoun("Wihte", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 102.
	Language = "old-english",
	Meanings = {"Being"},
	PluralNominative = "Wihte"
})

DefineLanguageVerb("Aseowen", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 239.
	Language = "old-english",
	Meanings = {"Sifted"}, -- it seems like Aseowen corresponds to the English past participle of "sift" (the source says simply Aseowen = Sifted); maybe it is an adjective instead?
	-- infinitive form?
	ParticiplePast = "Aseowen"
})

DefineLanguageVerb("Bēodan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Bid", "Offer", "Order"},
	Infinitive = "Bēodan"
})

DefineLanguageVerb("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Meanings = {},
	Infinitive = "Beran"
})

DefineLanguageVerb("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Meanings = {"Bite"},
	Infinitive = "Bītan"
})

DefineLanguageVerb("Cēosan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Meanings = {"Choose"},
	Infinitive = "Cēosan"
	-- source also gives the forms "cēas", "curon" and "coren" (presumably conjugations of the verb)
})

DefineLanguageVerb("Cēowan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Meanings = {"Chew"},
	Infinitive = "Cēowan"
	-- source also gives the forms "cēaw", "cuwon" and "cowen" (presumably conjugations of the verb)
})

DefineLanguageVerb("Etan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Meanings = {"Eat"},
	Infinitive = "Etan"
})

DefineLanguageVerb("Gengan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-english",
	Meanings = {"Go", "Stride"},
	Infinitive = "Gengan"
})

DefineLanguageVerb("Gereordian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Meanings = {"Feed", "Entertain", "Feast"},
	Infinitive = "Gereordian"
})

DefineLanguageVerb("Grīpan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Meanings = {"Grab"},
	Infinitive = "Grīpan"
	-- source also gives the forms "grāp", "gripon" and "gripen" (presumably conjugations of the verb)
})

DefineLanguageVerb("Healdan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Meanings = {"Hold"},
	Infinitive = "Healdan"
})

DefineLanguageVerb("Helpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Meanings = {"Help"},
	Infinitive = "Helpan"
})

DefineLanguageVerb("Leornian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Meanings = {"Learn"},
	Infinitive = "Leornian"
})

DefineLanguageVerb("Lǣran", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-english",
	Meanings = {"Teach"},
	Infinitive = "Lǣran" -- causative verb
})

DefineLanguageVerb("Ligon", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Meanings = {"Lent"}, -- "we lent"
	-- infinitive form?
	PluralFirstPersonPast = "Ligon" -- source actually gives "-ligon"
})

DefineLanguageVerb("Nerian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Meanings = {"Save", "Protect"},
	Infinitive = "Nerian"
})

DefineLanguageVerb("Rīdan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-english",
	Meanings = {"Travel"},
	Infinitive = "Rīdan"
})

DefineLanguageVerb("Scrīfan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Meanings = {"Write"},
	Infinitive = "Scrīfan"
})

DefineLanguageVerb("Seah", { -- should be infinitive form; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Meanings = {"Saw"},
	-- infinitive form?
	SingularThirdPersonPast = "Seah"
})

DefineLanguageVerb("Sēoðan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Meanings = {"Boil"},
	Infinitive = "Sēoðan"
	-- source also gives the forms "sēað", "sudon" and "sodden" (presumably conjugations of the verb)
})

DefineLanguageVerb("Standan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Meanings = {"Stand"},
	Infinitive = "Standan"
})

DefineLanguageVerb("Stīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Climb"},
	Infinitive = "Stīgan"
})

DefineLanguageVerb("Tēar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Meanings = {"Tear"},
	Infinitive = "Tēar"
})

DefineLanguageVerb("Tēon", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Push"}, -- derived from Proto-Germanic "Téuχanan", which has the meaning of "push"
	Infinitive = "Tēon"
})

DefineLanguageVerb("Tiohhian", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 239.
	Language = "old-english",
	Meanings = {"Consider"},
	Infinitive = "Tiohhian"
})

DefineLanguageVerb("Trūwian", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Meanings = {"Trust"},
	Infinitive = "Trūwian"
})

DefineLanguageVerb("Wesan", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 110.
	Language = "old-english",
	Meanings = {"Be"},
	Infinitive = "Wesan",
	SingularThirdPersonPresentSubjunctive = "Sy"
})

DefineLanguageVerb("Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Meanings = {"Know"},
	Infinitive = "Witan",
	PluralFirstPersonPresent = "Witom" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
})

DefineLanguageAdjective("Ceorlisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Meanings = {"Of a Churl", "Common"},
	Positive = "Ceorlisc"
})

DefineLanguageAdjective("Cildisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Meanings = {"Childish"},
	Positive = "Cildisc"
})

DefineLanguageAdjective("Denisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Meanings = {"Danish"},
	Positive = "Denisc"
})

DefineLanguageAdjective("Dēop", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Deep"}, -- derived from Proto-Germanic "Déwpaz", which has the meaning of "deep"
	Positive = "Dēop"
})

DefineLanguageAdjective("Fūl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	Positive = "Fūl"
})

DefineLanguageAdjective("Gydig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Meanings = {"Possessed (by a God)"},
	Positive = "Gydig"
})

DefineLanguageAdjective("Long", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	Positive = "Long"
})

DefineLanguageAdjective("Māra", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"More"},
	Positive = "Māra",
	Comparative = "Māra",
	Superlative = "Māst"
})

DefineLanguageAdjective("Mennisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Meanings = {"Human"},
	Positive = "Mennisc"
})

DefineLanguageAdjective("Sælig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Meanings = {"Happy", "Prosperous"},
	Positive = "Sælig"
})

DefineLanguageAdjective("Þyrre", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Dry"}, -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	Positive = "Þyrre"
})

DefineLanguageAdjective("Werig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Meanings = {"Weary", "Tired", "Exhausted"},
	Positive = "Werig"
})

DefineLanguageAdjective("Wod", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 96.
	Language = "old-english",
	Meanings = {"Frenzied", "Enraged", "Mad"},
	Positive = "Wod"
})

DefineLanguagePronoun("Mē", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Meanings = {"Me"}, -- dative
	Dative = "Mē"
})

DefineLanguagePronoun("Wē", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Meanings = {"We"},
	Nominative = "Wē"
})

DefineLanguageAdverb("Mā", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Meanings = {"More"}
})

DefineLanguageAdverb("Wel", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Meanings = {"Well"}
})

DefineLanguageConjunction("Eþþa", { -- Also given as "Oþþe", are Eþþa and Oþþe two forms of "or" in Old English, or are they just different ways to write the same word in that language?; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Meanings = {"Or"}
})

DefineLanguageAdposition("Of", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"From"} -- derived from Proto-Germanic "Af", which means "From"
})

DefineLanguageAdposition("Ofer", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Meanings = {"Over"} -- derived from the Proto-Germanic "Ufar", which means "Over"
})
