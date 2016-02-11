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

-- Old Slavic / Old Church Slavonic

DefineLanguageWord("Běžą", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-slavic",
	Type = "verb", -- correct?
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "verb", "Bheg"},
	Infinitive = "Běžą" -- source also gives the alternate form "Běžati"
})

DefineLanguageWord("Brěga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-slavic",
	Type = "noun",
	Meanings = {"Shore", "Riverbank"}, -- source gives "Ufer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Berga"} -- according to the source, borrowed from Germanic (or did it mean the Germanic languages?)
})

DefineLanguageWord("Brŭlogŭ", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-slavic",
	Type = "noun",
	Meanings = {"Wild Camp", "Bear Camp"} -- source gives the German "Wildlager, Bärenlager" as the meaning
})

DefineLanguageWord("Kosa", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-slavic",
	Type = "noun",
	Meanings = {"Hair"}
})

DefineLanguageWord("Kosmŭ", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-slavic",
	Type = "noun",
	Meanings = {"Head Hair"}
})

DefineLanguageWord("Mězga", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-slavic",
	Type = "noun",
	Meanings = {"Sap", "Juice"}
})

DefineLanguageWord("Mĭzda", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "old-slavic",
	Type = "noun",
	Meanings = {"Reward"}
})

DefineLanguageWord("Mozgŭ", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-slavic",
	Type = "noun",
	Meanings = {"Brain"}
})

DefineLanguageWord("Žrudŭ", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "old-slavic",
	Type = "noun",
	Meanings = {"Flimsy Pole"}
})

DefineLanguageWord("Svins", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "old-slavic",
	Type = "adjective",
	Meanings = {"of Pig"}
})
