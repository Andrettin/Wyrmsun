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

DefineLanguageWord("Aes", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "latin",
	Type = "noun",
	Meanings = {"Ore"}, -- source gives the German "Erz" as the meaning
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Aeris"
	}
})

DefineLanguageWord("Alucinare", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Type = "verb",
	Meanings = {"To Wander in Mind", "Speak while in such a State"}
})

DefineLanguageWord("Alucitae", { -- this is the plural; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Type = "noun",
	Meanings = {"Gnats", "Mosquitos"},
	NumberCaseInflections = {
		"plural", "nominative", "Alucitae"
	}
})

DefineLanguageWord("Âra", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "latin",
	Type = "noun",
	Meanings = {"Altar"} -- source gives the German "Altar" as the meaning
})

DefineLanguageWord("Caesaries", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "latin",
	Type = "noun",
	Meanings = {"Head Hair"}
})

DefineLanguageWord("Caper", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "latin",
	Type = "noun",
	Meanings = {"Male Goat"}
})

DefineLanguageWord("Captus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "latin",
	Type = "adjective",
	Meanings = {"Captured"}
})

DefineLanguageWord("Caulis", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "latin",
	Type = "noun",
	Meanings = {} -- words derived from it mean (in German) "Kohl"
})

DefineLanguageWord("Cōnīveō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "latin",
	Type = "verb",
	Meanings = {"Shut the Eyes"},
	DerivesFrom = {"proto-indo-european", "verb", "Kneygʷh"}
})

DefineLanguageWord("Conopes", { -- this is the plural; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Type = "noun",
	Meanings = {"Gnats"},
	NumberCaseInflections = {
		"plural", "nominative", "Conopes"
	}
})

DefineLanguageWord("Conopeum", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 102.
	Language = "latin",
	Type = "noun",
	Meanings = {"Mosquito Net"}
})

DefineLanguageWord("Crātis", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Wicker-Work"}
})

DefineLanguageWord("Custos", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "latin",
	Type = "noun",
	Meanings = {"Guard"} -- source gives meaning as "a Guard"
})

DefineLanguageWord("Dūcō", { -- this is the singular first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 3-4.
	Language = "latin",
	Type = "verb",
	Meanings = {"Lead"},
	DerivesFrom = {"old-latin", "verb", "Doucō"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Dūcō"
	}
})

DefineLanguageWord("Egō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 1.
	Language = "latin",
	Type = "pronoun",
	Meanings = {"I"}, -- is a cognate of Proto-Germanic "eka"/"ek", so possibly has the same meaning
	Nominative = "Egō"
})

DefineLanguageWord("Fāgus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Beech"}
})

DefineLanguageWord("Far", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "latin",
	Type = "noun",
	Meanings = {"Wheat", "Spelt"} -- the word means one of these, not both
})

DefineLanguageWord("Ferō", { -- this is the singular first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "latin",
	Type = "verb",
	Meanings = {"Bear"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Ferō"
	}
})

DefineLanguageWord("Foris", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Door"}
})

DefineLanguageWord("Frāter", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Brother"}
})

DefineLanguageWord("Gallus", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Type = "noun",
	Meanings = {"Eunuch"},
	NumberCaseInflections = {
		"plural", "nominative", "Galli"
	}
})

DefineLanguageWord("Grānum", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Grain"}
})

DefineLanguageWord("Haedus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "latin",
	Type = "noun",
	Meanings = {"Goat"}
})

DefineLanguageWord("Hasta", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "latin",
	Type = "noun",
	Meanings = {"Rod", "Shaft", "Spear"}
})

DefineLanguageWord("Hortus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Garden"}
})

DefineLanguageWord("Linquō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "latin",
	Type = "verb",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "verb", "Leykʷ"}
})

DefineLanguageWord("Longus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "adjective",
	Meanings = {"Long"} -- presumably, but it is not entirely clear from the source
})

DefineLanguageWord("Molere", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "verb",
	Meanings = {"Grind"}, -- presumably, but it is not entirely clear from the source
	DerivesFrom = {"proto-indo-european", "verb", "Mel"}
	-- also given as "Molō" (if it is indeed the same word); Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
})

DefineLanguageWord("Octō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "numeral",
	Number = 8
})

DefineLanguageWord("Pater", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Father"}
})

DefineLanguageWord("Pecu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "latin",
	Type = "noun",
	Meanings = {"Herd"}
})

DefineLanguageWord("Quod", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "pronoun",
	Meanings = {"What"},
	Nominative = "Quod"
})

DefineLanguageWord("Rectus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "adjective",
	Meanings = {"Straight"} -- presumably, but it is not entirely clear from the source
})

DefineLanguageWord("Scrībere", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "latin",
	Type = "verb",
	Meanings = {} -- cognates have "write" as the meaning
})

DefineLanguageWord("Sequor", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "latin",
	Type = "verb",
	Meanings = {"Follow"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"}
})

DefineLanguageWord("Sēmen", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Seed"}
})

DefineLanguageWord("Sōl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Sun"}
})

DefineLanguageWord("Spuō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "latin",
	Type = "verb",
	Meanings = {"Spit"}
})

DefineLanguageWord("Suīnus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "adjective",
	Meanings = {"of Pig"}
})

DefineLanguageWord("Super", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "adposition",
	Meanings = {"Over"}
})

DefineLanguageWord("Sūs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "latin",
	Type = "noun",
	Meanings = {"Sow"}
})

DefineLanguageWord("Torrus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "adjective",
	Meanings = {"Dry"}
})

DefineLanguageWord("Turba", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "latin",
	Type = "noun",
	Meanings = {"Flock", "Crowd"} -- source gives the German "Schar" as the meaning
})

DefineLanguageWord("Turbâre", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "latin",
	Type = "verb",
	Meanings = {"Confuse"} -- source gives the German "Verwirren" as the meaning
})

DefineLanguageWord("Veniō", { -- alternatively written as "Venio" by the source; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 3, 5.
	Language = "latin",
	Type = "verb",
	Meanings = {"Come"},
	DerivesFrom = {"proto-indo-european", "verb", "Gʷem"}
})

DefineLanguageWord("Verus", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 99.
	Language = "latin",
	Type = "adjective",
	Meanings = {"True", "Real"}
})

DefineLanguageWord("Vir", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "latin",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Wiros"}
})

DefineLanguageWord("Vōs", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 5, Subsection 1.
	Language = "latin",
	Type = "pronoun",
	Meanings = {"You"}, -- second person plural
	Nominative = "Vōs"
})
