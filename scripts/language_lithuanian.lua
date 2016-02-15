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

DefineLanguageWord("Aslà", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "lithuanian",
	Type = "noun",
	Meanings = {} -- source gives the German "der aus Lehm geschlagene Fußboden gehört wohl hierher" as the meaning
})

DefineLanguageWord("Ausztrìnis", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "lithuanian",
	Type = "noun",
	Meanings = {"East Wind"} -- source gives the German "Ostwind" as the meaning
})

DefineLanguageWord("Bė́gu", { -- source also gives the alternative form "Bė́gti"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "lithuanian",
	Type = "verb", -- correct?
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "verb", "Bheg"}
})

DefineLanguageWord("Bė́ras", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "lithuanian",
	Type = "adjective",
	Meanings = {"Brown"} -- source gives the German "Braun" as the meaning
})

DefineLanguageWord("Bruvìs", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "lithuanian",
	Type = "noun",
	Meanings = {"Eyebrow"}, -- source gives the German "Augenbraue" as the meaning
	Gender = "masculine"
})

DefineLanguageWord("Dubùs", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "lithuanian",
	Type = "adjective",
	Meanings = {"Deep"}
})

DefineLanguageWord("Dvýlika", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "lithuanian",
	Type = "numeral",
	Number = 12
})

DefineLanguageWord("Jéras", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "lithuanian",
	Type = "noun",
	Meanings = {"Yearling Lamb"}
})

DefineLanguageWord("Liūdė", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "lithuanian",
	Type = "noun",
	Meanings = {"Lead Lot"}, -- source gives the German "Bleiloth" as the meaning
	Gender = "neuter"
})

DefineLanguageWord("Pẽkus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "lithuanian",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Pū́lias", { -- this is the plural; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "lithuanian",
	Type = "noun",
	Meanings = {"Pus"},
	NumberCaseInflections = {
		"plural", "nominative", "Pū́lias"
	}
})

DefineLanguageWord("Raũdas", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "lithuanian",
	Type = "adjective",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "adjective", "Rowdho"}
})

DefineLanguageWord("Saĩsti", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 121.
	Language = "lithuanian",
	Type = "verb",
	Meanings = {"Interpret a Sign or Prophesy"}
})

DefineLanguageWord("Spiáuju", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "lithuanian",
	Type = "verb",
	Meanings = {"Spit"}
})

DefineLanguageWord("Vakaraĩ", { -- this is the plural; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "lithuanian",
	Type = "noun",
	Meanings = {"West"}, -- source gives the German "West" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Vekero"},
	NumberCaseInflections = {
		"plural", "nominative", "Vakaraĩ"
	}
})

DefineLanguageWord("Vãkaras", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "lithuanian",
	Type = "noun",
	Meanings = {"Evening"}, -- source gives the German "Abend" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Vekero"}
})

DefineLanguageWord("Vienúolika", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "lithuanian",
	Type = "numeral",
	Number = 11
})

DefineLanguageWord("Źengiù", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "lithuanian",
	Type = "verb",
	Meanings = {"Go", "Stride"}
})

DefineLanguageWord("Žìrnis", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "lithuanian",
	Type = "noun",
	Meanings = {"Pea"}
})
