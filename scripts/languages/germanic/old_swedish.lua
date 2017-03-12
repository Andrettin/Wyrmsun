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
--      (c) Copyright 2015-2017 by Andrettin
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

DefineLanguageWord("Biari", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-swedish",
	Type = "noun",
	Meanings = {"Bear"}, -- used as a personal name, the meaning is not current
	DerivesFrom = {"old-norse", "noun", "Bjǫrn"},
	Gender = "masculine"
})

DefineLanguageWord("Deggia", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "old-swedish",
	Type = "verb",
	Meanings = {"Suckle"},
	DerivesFrom = {"proto-indo-european", "noun", "Dheʔ"}
})

DefineLanguageWord("Ēr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-swedish",
	Type = "noun",
	Meanings = {"Bronze"}
})

DefineLanguageWord("Mēre", { -- this is the comparative, what is the normal version of the word? Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-swedish",
	Type = "adjective",
	Meanings = {"Larger"}, -- this is the meaning for the comparative, should be replaced when we got hold of the normal version of the adjective
	DerivesFrom = {"old-norse", "adjective", "Meiri"}, -- presumably
	Replaces = {"old-norse", "adjective", "Meiri"},
	ComparisonDegreeCaseInflections = {
		"comparative", "Mēre"
	}
})

DefineLanguageWord("Mygg", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "old-swedish",
	Type = "noun",
	Meanings = {"Midge"}
})

DefineLanguageWord("Strāta", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.3.
	Language = "old-swedish",
	Type = "noun",
	Meanings = {"Street"}
})

DefineLanguageWord("Tuar", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-swedish",
	Type = "numeral",
	Number = 2
})

DefineLanguageWord("Vī", { -- source gives "Vī(r)"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-swedish",
	Type = "pronoun",
	Meanings = {"We"},
	DerivesFrom = {"old-norse", "pronoun", "Vēr"},
	Replaces = {"old-norse", "pronoun", "Vēr"},
	Nominative = "Vī"
})
