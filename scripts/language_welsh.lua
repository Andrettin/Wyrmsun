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

DefineLanguageWord("Brathu", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "welsh",
	Type = "verb",
	Meanings = {"Prick", "Bite"}
})

DefineLanguageWord("Erw", { -- this is the genitive; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Field"},
	NumberCaseInflections = {
		"singular", "genitive", "Erw"
	}
})

DefineLanguageWord("Hud", { -- presumably a noun; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 121.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Magic"}
})

DefineLanguageWord("Hudo", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 121.
	Language = "welsh",
	Type = "verb",
	Meanings = {"Work Magic", "Work by Magic"}
})

DefineLanguageWord("Ieu", { -- this is the comparative; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "welsh",
	Type = "adjective",
	Meanings = {"Younger"},
	DerivesFrom = {"proto-indo-european", "adjective", "Yehw"},
	ComparisonDegreeInflections = {
		"comparative", "Ieu"
	}
})

DefineLanguageWord("Rhŷd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 121.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Ford"} -- source gives the German "Furt" as the meaning
})
