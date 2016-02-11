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
--      (c) Copyright 2016 by Andrettin
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

DefineLanguageWord("Drósir", { -- this is the plural; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Women"},
	NumberCaseInflections = {
		"plural", "nominative", "Drósir"
	}
})

DefineLanguageWord("Dýrt", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Dear", "Expensive"}
})

DefineLanguageWord("Eyra", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Ear"}
})

DefineLanguageWord("Ker", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Container"}
})

DefineLanguageWord("Lín", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Linen"}
})

DefineLanguageWord("Meiri", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 3.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"More"} -- perhaps a "determiner" class of words should be added?
})

DefineLanguageWord("Reyrr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Tube"}
})

DefineLanguageWord("Sár", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 3.
	Language = "old-icelandic",
	Type = "noun",
	Meanings = {"Wound"}
})

DefineLanguageWord("Spunno", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-icelandic",
	Type = "verb",
	Meanings = {"Spun"},
	NumberPersonTenseMoodInflections = {
		"plural", "third-person", "past", "indicative", "Spunno"
	}
})

DefineLanguageWord("Suðrœnar", { -- is this the plural inflection of the adjective? Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "old-icelandic",
	Type = "adjective",
	Meanings = {"Southern"}
})

DefineLanguageWord("Tuǽr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "old-icelandic",
	Type = "numeral",
	Number = 2
})
