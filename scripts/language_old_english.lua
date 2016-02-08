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

DefineLanguageWord("Ærn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"House"},
	SingularNominative = "Ærn",
	Gender = "Neuter"
})

DefineLanguageWord("Adl", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 114.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Illness"},
	SingularNominative = "Adl"
})

DefineLanguageWord("Bearn", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Child"},
	SingularNominative = "Bearn"
})

DefineLanguageWord("Bōc", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Book"}, -- derived from Proto-Germanic "Bōks"; the source has the meaning for that word as "'tablet' > 'book'", but it is not clear if it means that the meaning became book in the child languages of Proto-Germanic, or within the timespan of the language itself
	SingularNominative = "Bōc"
})

DefineLanguageWord("Breord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Shore", "Edge"},
	SingularNominative = "Breord"
})

DefineLanguageWord("Brord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Point", "Sprout"},
	SingularNominative = "Brord",
	Gender = "Masculine"
})

DefineLanguageWord("Cên", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 4-7.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Pine", "Fir", "Spruce"},
	SingularNominative = "Cên",
	Gender = "Masculine"
})

DefineLanguageWord("Corn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Grain"}, -- derived from Proto-Germanic "Kŕnam", which has the meaning of "grain"
	SingularNominative = "Corn"
})

DefineLanguageWord("Cost", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Object of Choice"},
	SingularNominative = "Cost"
})

DefineLanguageWord("Cwene", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Woman"},
	SingularNominative = "Cwene"
})

DefineLanguageWord("Cynn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Race"},
	SingularNominative = "Cynn"
})

DefineLanguageWord("Duru", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Door"}, -- derived from Proto-Germanic "Durez", which has the meaning of "door"
	SingularNominative = "Duru"
})

DefineLanguageWord("Ealdorneru", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Saving of a Life"},
	SingularNominative = "Ealdorneru",
	Gender = "Feminine"
})

DefineLanguageWord("Eoh", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Horse"},
	SingularNominative = "Eoh"
})

DefineLanguageWord("Eorþe", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Earth"},
	SingularNominative = "Eorþe", -- Runge gives "Eorþe", while Lehmann gives "Eorþ"
	Uncountable = true
})

DefineLanguageWord("Feoh", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2..
	Language = "old-english",
	Type = "noun",
	Meanings = {"Cattle"},
	SingularNominative = "Feoh"
})

DefineLanguageWord("Fiðelestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 77.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fiddler"},
	SingularNominative = "Fiðelestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Fisc", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fish"},
	SingularNominative = "Fisc"
})

DefineLanguageWord("Fōt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Foot"}, -- derived from Proto-Germanic "Fōts", which has the meaning of "foot"
	SingularNominative = "Fōt"
})

DefineLanguageWord("Gēar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Year"}, -- derived from Proto-Germanic "Yēra", which means "Year"
	SingularNominative = "Gēar"
})

DefineLanguageWord("Geard", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Garden"}, -- derived from Proto-Germanic "Gárdiz", which has the meaning of "garden"
	SingularNominative = "Geard"
})

DefineLanguageWord("Gereord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Meal", "Feast", "Food"},
	SingularNominative = "Gereord",
	Gender = "Neuter"
})

DefineLanguageWord("Gesihþ", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sight"},
	SingularNominative = "Gesihþ"
})

DefineLanguageWord("Gierd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Rod", "Prickle"},
	SingularNominative = "Gierd"
})

DefineLanguageWord("Glīwmǣden", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 77.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Musician"},
	SingularNominative = "Glīwmǣden",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("God", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"God"},
	SingularNominative = "God",
	Gender = "Masculine"
})

DefineLanguageWord("Gyden", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Goddess"},
	SingularNominative = "Gyden",
	PluralNominative = "Gydena",
	Gender = "Feminine"
})

DefineLanguageWord("Hād", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 3.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hair"},
	SingularNominative = "Hād"
})

DefineLanguageWord("Hearpestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Harp Player"},
	SingularNominative = "Hearpestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Heordan", { -- this is the plural, what is the singular? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Hards of Flax"},
	PluralNominative = "Heordan"
})

DefineLanguageWord("Heorde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Flax Fiber"},
	SingularNominative = "Heorde",
	Uncountable = true -- as a material, it is likely to be uncountable, specially since there is a word for "hards of flax"
})

DefineLanguageWord("Heorte", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Heart"},
	SingularNominative = "Heorte"
})

DefineLanguageWord("Hlēapestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Dancer"},
	SingularNominative = "Hlēapestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Hoppestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Dancer"},
	SingularNominative = "Hoppestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Hræn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Wave", "Sea"},
	SingularNominative = "Hræn", -- source also gives the alternative form "Hærn"
	Gender = "Feminine"
})

DefineLanguageWord("Hweowol", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Wheel"},
	SingularNominative = "Hweowol"
})

DefineLanguageWord("Hléor", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Cheek"},
	SingularNominative = "Hléor"
})

DefineLanguageWord("Hord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Treasure", "Amassed Wealth"},
	SingularNominative = "Hord"
})

DefineLanguageWord("Hund", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Dog"},
	SingularNominative = "Hund"
})

DefineLanguageWord("Leoðurun", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 124.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sung Mistery"},
	SingularNominative = "Leoðurun"
})

DefineLanguageWord("Mann", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 85-86, 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Person"},
	SingularNominative = "Mann",
	PluralNominative = "Menn", -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Gender = "Masculine"
})

DefineLanguageWord("Meaht", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Might"}, -- derived from Proto-Germanic "Maχtiz", which has the meaning of "Might"
	SingularNominative = "Meaht"
})

DefineLanguageWord("Mearg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Marrow"},
	SingularNominative = "Mearg"
})

DefineLanguageWord("Mēd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Reward", "Payment"},
	SingularNominative = "Mēd", -- source also gives as an alternative the form "Meord"
	Gender = "Feminine"
})

DefineLanguageWord("Mennen", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Handmaid", "Female Slave"},
	SingularNominative = "Mennen",
	Gender = "Feminine"
})

DefineLanguageWord("Munuc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Monk"},
	SingularNominative = "Munuc",
	Gender = "Masculine"
})

DefineLanguageWord("Mynecenu", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 89.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Nun"},
	SingularNominative = "Mynecenu",
	Gender = "Feminine"
})

DefineLanguageWord("Neaht", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Night"},
	SingularNominative = "Neaht"
})

DefineLanguageWord("Ord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 8.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Point", "Spearpoint"},
	SingularNominative = "Ord",
	Gender = "Masculine"
})

DefineLanguageWord("Orlæg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Fate"},
	SingularNominative = "Orlæg",
	Gender = "Neuter"
})

DefineLanguageWord("Plegestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Athlete"},
	SingularNominative = "Plegestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Ræsn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Plank", "Ceiling"},
	SingularNominative = "Ræsn",
	Gender = "Neuter"
})

DefineLanguageWord("Reord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 9.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Voice", "Sound", "Speech"},
	SingularNominative = "Reord",
	Gender = "Feminine"
})

DefineLanguageWord("Sǣd", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Seed"}, -- derived from the Proto-Germanic "Sēþiz", which means "Seed"
	SingularNominative = "Sǣd"
})

DefineLanguageWord("Sangestre", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Singer"},
	SingularNominative = "Sangestre",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Sceadu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Shadow"},
	SingularNominative = "Sceadu"
})

DefineLanguageWord("Scernicge", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Actress"},
	SingularNominative = "Scernicge",
	Gender = "Feminine"
})

DefineLanguageWord("Sealticge", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, pp. 77-78.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Dancer"},
	SingularNominative = "Sealticge",
	Gender = "Feminine" -- presumably, given the source is talking about occupations for women
})

DefineLanguageWord("Snoru", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Daughter-in-Law"},
	SingularNominative = "Snoru"
})

DefineLanguageWord("Sperehealf", { -- also given as Sperehand; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Spear-Side", "Patrilineal Ancestry"},
	SingularNominative = "Sperehealf"
})

DefineLanguageWord("Spinelhealf", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Spindle-Side"},
	SingularNominative = "Spinelhealf"
})

DefineLanguageWord("Sunna", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sun"}, -- derived from Proto-Germanic "Sunōn", which has the meaning of "Sun"
	SingularNominative = "Sunna"
})

DefineLanguageWord("Swæger", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Mother-in-Law"},
	SingularNominative = "Swæger"
})

DefineLanguageWord("Swīn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Pig"}, -- derived from the Proto-Germanic "Swīnaz", which means "Pig"
	SingularNominative = "Swīn"
})

DefineLanguageWord("Twīn", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Canvas", "Screen"},
	SingularNominative = "Twīn"
})

DefineLanguageWord("Þunorrad", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 169.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Peal of Thunder"}, -- literally: "thunder-ride" or "Thunor-ride"
	SingularNominative = "Þunorrad"
})

DefineLanguageWord("Wâd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Woad"},
	SingularNominative = "Wâd"
})

DefineLanguageWord("Wægn", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Wagon"}, -- derived from Proto-Germanic "Waganaz", which means "Wagon"
	SingularNominative = "Wægn"
})

DefineLanguageWord("Wælcyrige", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Sorceress"},
	SingularNominative = "Wælcyrige",
	Gender = "feminine"
})

DefineLanguageWord("Wæpnedmann", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Armed Person"},
	SingularNominative = "Wæpnedmann"
})

DefineLanguageWord("Weg", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Way"},
	SingularNominative = "Weg"
})

DefineLanguageWord("Wer", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Man"},
	SingularNominative = "Wer"
})

DefineLanguageWord("Wif", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 85.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Woman"},
	SingularNominative = "Wif",
	Gender = "Neuter"
})

DefineLanguageWord("Wifmann", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 197.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Woman-Person"},
	SingularNominative = "Wifmann"
})

DefineLanguageWord("Wihte", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 102.
	Language = "old-english",
	Type = "noun",
	Meanings = {"Being"},
	PluralNominative = "Wihte"
})

DefineLanguageWord("Aseowen", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 239.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Sifted"}, -- it seems like Aseowen corresponds to the English past participle of "sift" (the source says simply Aseowen = Sifted); maybe it is an adjective instead?
	-- infinitive form?
	ParticiplePast = "Aseowen"
})

DefineLanguageWord("Bēodan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 2, 4.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Bid", "Offer", "Order"},
	Infinitive = "Bēodan"
})

DefineLanguageWord("Beran", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {},
	Infinitive = "Beran"
})

DefineLanguageWord("Bītan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Bite"},
	Infinitive = "Bītan"
})

DefineLanguageWord("Cēosan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Choose"},
	Infinitive = "Cēosan"
	-- source also gives the forms "cēas", "curon" and "coren" (presumably conjugations of the verb)
})

DefineLanguageWord("Cēowan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Chew"},
	Infinitive = "Cēowan"
	-- source also gives the forms "cēaw", "cuwon" and "cowen" (presumably conjugations of the verb)
})

DefineLanguageWord("Cuman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Come"},
	Infinitive = "Cuman"
})

DefineLanguageWord("Etan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Eat"},
	Infinitive = "Etan"
})

DefineLanguageWord("Gengan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Go", "Stride"},
	Infinitive = "Gengan"
})

DefineLanguageWord("Gereordian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 10.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Feed", "Entertain", "Feast"},
	Infinitive = "Gereordian"
})

DefineLanguageWord("Grīpan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Grab"},
	Infinitive = "Grīpan"
	-- source also gives the forms "grāp", "gripon" and "gripen" (presumably conjugations of the verb)
})

DefineLanguageWord("Healdan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Hold"},
	Infinitive = "Healdan"
})

DefineLanguageWord("Helpan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Help"},
	Infinitive = "Helpan"
})

DefineLanguageWord("Hnīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Bow"},
	Infinitive = "Hnīgan"
})

DefineLanguageWord("Leornian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Learn"},
	Infinitive = "Leornian"
})

DefineLanguageWord("Lǣran", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Teach"},
	Infinitive = "Lǣran" -- causative verb
})

DefineLanguageWord("Nerian", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Save", "Protect"},
	Infinitive = "Nerian"
})

DefineLanguageWord("Niman", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Take", "Accept"},
	Infinitive = "Niman"
})

DefineLanguageWord("Onlēon", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Lend"},
	Infinitive = "Onlēon",
	PluralFirstPersonPast = "Ligon" -- source actually gives "-ligon"; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
})

DefineLanguageWord("Rīdan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Travel"},
	Infinitive = "Rīdan"
})

DefineLanguageWord("Sceadwian", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Shadow"}, -- "to shadow"
	Infinitive = "Sceadwian"
})

DefineLanguageWord("Scrīfan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Write"},
	Infinitive = "Scrīfan"
})

DefineLanguageWord("Sēoðan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Boil"},
	Infinitive = "Sēoðan"
	-- source also gives the forms "sēað", "sudon" and "sodden" (presumably conjugations of the verb)
})

DefineLanguageWord("Sēon", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 238.
	Language = "old-english",
	Type = "verb",
	Meanings = {"See"},
	Infinitive = "Sēon",
	SingularFirstPersonPast = "Sēah",
	SingularThirdPersonPast = "Sēah", -- Runge gives "Seah" instead
	PluralFirstPersonPast = "Sēgon", -- in the Anglian variety of Old English
	ParticiplePast = "Gesegen", -- in the Anglian variety of Old English
--	PluralFirstPersonPast = "Sāwon", -- in the West Saxon variety of Old English
--	ParticiplePast = "Sewen" -- in the West Saxon variety of Old English
})

DefineLanguageWord("Standan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Stand"},
	Infinitive = "Standan"
})

DefineLanguageWord("Stīgan", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Climb"},
	Infinitive = "Stīgan"
})

DefineLanguageWord("Táh", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Accuse"},
	SingularFirstPersonPast = "Táh",
	PluralFirstPersonPast = "Tigon"
})

DefineLanguageWord("Tēar", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Tear"},
	Infinitive = "Tēar"
})

DefineLanguageWord("Tēon", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Pull"}, -- derived from Proto-Germanic "Téuχanan", which has the meaning of "pull"
	Infinitive = "Tēon",
	SingularThirdPersonPast = "Tēah", -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	PluralThirdPersonPast = "Tugon" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
})

DefineLanguageWord("Tiohhian", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 239.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Consider"},
	Infinitive = "Tiohhian"
})

DefineLanguageWord("Trūwian", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 3, Subsection 1.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Trust"},
	Infinitive = "Trūwian"
})

DefineLanguageWord("Wesan", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 110.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Be"},
	Infinitive = "Wesan",
	SingularThirdPersonPresentSubjunctive = "Sy"
})

DefineLanguageWord("Witan", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 241.
	Language = "old-english",
	Type = "verb",
	Meanings = {"Know"},
	Infinitive = "Witan",
	PluralFirstPersonPresent = "Witom" -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
})

DefineLanguageWord("Ceorlisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Of a Churl", "Common"},
	Positive = "Ceorlisc"
})

DefineLanguageWord("Cildisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Childish"},
	Positive = "Cildisc"
})

DefineLanguageWord("Cwic", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Alive"},
	Positive = "Cwic" -- source gives the word as "Cwic(u)"
})

DefineLanguageWord("Denisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Danish"},
	Positive = "Denisc"
})

DefineLanguageWord("Dēop", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Deep"}, -- derived from Proto-Germanic "Déwpaz", which has the meaning of "deep"
	Positive = "Dēop"
})

DefineLanguageWord("Fūl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Foul"}, -- derived from the Proto-Germanic "Fūla", which means "Foul"
	Positive = "Fūl"
})

DefineLanguageWord("Geong", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Young"},
	Positive = "Geong"
})

DefineLanguageWord("Gydig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Possessed (by a God)"},
	Positive = "Gydig"
})

DefineLanguageWord("Hwīt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"White"},
	Positive = "Hwīt"
})

DefineLanguageWord("Long", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Long"}, -- derived from Proto-Germanic "Langaz", which means "Long"
	Positive = "Long"
})

DefineLanguageWord("Māra", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"More"},
	Positive = "Māra",
	Comparative = "Māra",
	Superlative = "Māst"
})

DefineLanguageWord("Mennisc", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 100.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Human"},
	Positive = "Mennisc"
})

DefineLanguageWord("Rēad", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Red"},
	Positive = "Rēad"
})

DefineLanguageWord("Sælig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Happy", "Prosperous"},
	Positive = "Sælig"
})

DefineLanguageWord("Þyrre", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Dry"}, -- derived from Proto-Germanic "Þrsúz", which has the meaning of "dry"
	Positive = "Þyrre"
})

DefineLanguageWord("Werig", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 94.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Weary", "Tired", "Exhausted"},
	Positive = "Werig"
})

DefineLanguageWord("Wod", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 96.
	Language = "old-english",
	Type = "adjective",
	Meanings = {"Frenzied", "Enraged", "Mad"},
	Positive = "Wod"
})

DefineLanguageWord("Mē", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "pronoun",
	Meanings = {"Me"}, -- dative
	Dative = "Mē"
})

DefineLanguageWord("Wē", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Wē"
})

DefineLanguageWord("Mā", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"More"}
})

DefineLanguageWord("Wel", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Type = "adverb",
	Meanings = {"Well"}
})

DefineLanguageWord("Eþþa", { -- Also given as "Oþþe", are Eþþa and Oþþe two forms of "or" in Old English, or are they just different ways to write the same word in that language?; Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 240.
	Language = "old-english",
	Type = "conjunction",
	Meanings = {"Or"}
})

DefineLanguageWord("Of", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adposition",
	Meanings = {"From"} -- derived from Proto-Germanic "Af", which means "From"
})

DefineLanguageWord("Ofer", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 2.
	Language = "old-english",
	Type = "adposition",
	Meanings = {"Over"} -- derived from the Proto-Germanic "Ufar", which means "Over"
})
