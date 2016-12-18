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

DefineLanguageWord("Eimer", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Bucket"},
	DerivesFrom = {"latin", "noun", "Amphora"}, -- Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, pp. xxxiii-xxxiv.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Eimers",
		"plural", "dative", "Eimern"
	}
})

DefineLanguageWord("Hälfte", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Half"},
	DerivesFrom = {"middle-low-german", "noun", "Helfte"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Hälften",
		"plural", "accusative", "Hälften",
		"plural", "dative", "Hälften",
		"plural", "genitive", "Hälften"
	}
})

DefineLanguageWord("Kirche", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Church"},
	DerivesFrom = {"west-germanic", "noun", "Kirika"}, -- presumably
	Gender = "feminine",
	NumberCaseInflections = {
		"plural", "nominative", "Kirchen",
		"plural", "accusative", "Kirchen",
		"plural", "dative", "Kirchen",
		"plural", "genitive", "Kirchen"
	}
})

DefineLanguageWord("Lied", { -- Source: http://www.duden.de/rechtschreibung/Lied
	Language = "high-german",
	Type = "noun",
	Meanings = {"Song"},
	DerivesFrom = {"middle-low-german", "noun", "Liet"}, -- apparently, but isn't entirely clear from source; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Liedes", -- alternatively also "Lieds"
		"plural", "nominative", "Lieder",
		"plural", "accusative", "Lieder",
		"plural", "dative", "Liedern",
		"plural", "genitive", "Lieder"
	}
})

DefineLanguageWord("Süd", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"South"},
	DerivesFrom = {"middle-low-german", "adverb", "Sûd"}, -- High German "Süd" comes from the Low German, according to the source; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Gender = "masculine"
})

DefineLanguageWord("Süden", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"South"},
	DerivesFrom = {"middle-low-german", "adverb", "Sûd"}, -- seems sensible, considering "Süd" comes from the Low German
	Gender = "masculine"
})

DefineLanguageWord("Torf", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Peat"},
	DerivesFrom = {"middle-low-german", "noun", "Torf"}, -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Torfs", -- alternatively also "Torfes"
		"plural", "nominative", "Torfe"
	}
})

DefineLanguageWord("Wein", {
	Language = "high-german",
	Type = "noun",
	Meanings = {"Wine"},
	DerivesFrom = {"old-high-german", "noun", "Wîn"}, -- presumably
	Gender = "masculine",
	NumberCaseInflections = {
		"singular", "genitive", "Weines", -- alternatively also "Weins"
		"plural", "nominative", "Weine",
		"plural", "accusative", "Weine",
		"plural", "dative", "Weinen",
		"plural", "genitive", "Weine"
	}
})

