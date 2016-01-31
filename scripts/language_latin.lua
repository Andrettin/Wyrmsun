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

DefineLanguageNoun("Alucitae", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Meanings = {"Gnats", "Mosquitos"},
	PluralNominative = "Alucitae"
})

DefineLanguageNoun("Caesaries", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "latin",
	Meanings = {"Head Hair"},
	SingularNominative = "Caesaries"
})

DefineLanguageNoun("Caper", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "latin",
	Meanings = {"Male Goat"},
	SingularNominative = "Caper"
})

DefineLanguageNoun("Caulis", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "latin",
	Meanings = {"?"}, -- words derived from it mean (in German) "Kohl"
	SingularNominative = "Caulis"
})

DefineLanguageNoun("Conopes", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Meanings = {"Gnats"},
	PluralNominative = "Conopes"
})

DefineLanguageNoun("Conopeum", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 102.
	Language = "latin",
	Meanings = {"Mosquito Net"},
	SingularNominative = "Conopeum"
})

DefineLanguageNoun("Custos", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "latin",
	Meanings = {"Guard"}, -- source gives meaning as "a Guard"
	SingularNominative = "Custos"
})

DefineLanguageNoun("Far", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "latin",
	Meanings = {"Wheat", "Spelt"}, -- the word means one of these, not both
	SingularNominative = "Far"
})

DefineLanguageNoun("Gallus", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Meanings = {"Eunuch"},
	SingularNominative = "Gallus",
	PluralNominative = "Galli"
})

DefineLanguageNoun("Haedus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "latin",
	Meanings = {"Goat"},
	SingularNominative = "Haedus"
})

DefineLanguageNoun("Hasta", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "latin",
	Meanings = {"Rod", "Shaft", "Spear"},
	SingularNominative = "Hasta"
})

DefineLanguageNoun("Pecu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "latin",
	Meanings = {"Herd"},
	SingularNominative = "Pecu"
})

DefineLanguageNoun("Sūs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "latin",
	Meanings = {"Sow"},
	SingularNominative = "Sūs"
})

DefineLanguageVerb("Alucinare", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Meanings = {"To Wander in Mind", "Speak while in such a State"},
	Infinitive = "Alucinare" -- presumably it is the infinitive
})

DefineLanguageVerb("Ferō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "latin",
	Meanings = {"Bear"},
	SingularFirstPersonPresent = "Ferō"
})

DefineLanguageVerb("Scrībere", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "latin",
	Meanings = {"?"}, -- cognates have "write" as the meaning
	Infinitive = "Scrībere"
})

DefineLanguageAdjective("Verus", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 99.
	Language = "latin",
	Meanings = {"True", "Real"},
	Positive = "Verus"
})

DefineLanguagePronoun("Egō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 1.
	Language = "latin",
	Meanings = {"I"}, -- is a cognate of Proto-Germanic "eka"/"ek", so possibly has the same meaning
	Nominative = "Egō"
})

DefineLanguagePronoun("Vōs", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 5, Subsection 1.
	Language = "latin",
	Meanings = {"You"}, -- second person plural
	Nominative = "Vōs"
})
