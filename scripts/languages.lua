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

DefineLanguage("avestan", {
	Name = "Avestan"
})

DefineLanguage("dwarven", {
	Name = "Dwarven"
})

DefineLanguage("english", {
	Name = "English"
})

DefineLanguage("finnish", {
	Name = "Finnish"
})

DefineLanguage("gnomish", {
	Name = "Gnomish"
})

DefineLanguage("goblin", {
	Name = "Goblin"
})

DefineLanguage("gothic", {
	Name = "Gothic"
})

DefineLanguage("greek", {
	Name = "Greek"
})

DefineLanguage("high-german", {
	Name = "High German"
})

DefineLanguage("irish", {
	Name = "Irish"
})

DefineLanguage("kobold", {
	Name = "Kobold"
})

DefineLanguage("latin", {
	Name = "Latin"
})

DefineLanguage("lithuanian", {
	Name = "Lithuanian"
})

DefineLanguage("middle-dutch", {
	Name = "Middle Dutch"
})

DefineLanguage("middle-english", {
	Name = "Middle English"
})

DefineLanguage("middle-high-german", {
	Name = "Middle High German"
})

DefineLanguage("middle-low-german", {
	Name = "Middle Low German"
})

DefineLanguage("norwegian", {
	Name = "Norwegian"
})

DefineLanguage("old-english", {
	Name = "Old English"
})

DefineLanguage("old-frankish", {
	Name = "Old Frankish"
})

DefineLanguage("old-frisian", {
	Name = "Old Frisian"
})

DefineLanguage("old-high-german", {
	Name = "Old High German"
})

DefineLanguage("old-icelandic", {
	Name = "Old Icelandic"
})

DefineLanguage("old-irish", {
	Name = "Old Irish"
})

DefineLanguage("old-norse", {
	Name = "Old Norse"
})

DefineLanguage("old-saxon", {
	Name = "Old Saxon"
})

DefineLanguage("old-slavic", {
	Name = "Old Slavic"
})

DefineLanguage("old-swedish", {
	Name = "Old Swedish"
})

DefineLanguage("proto-germanic", {
	Name = "Proto-Germanic"
})

DefineLanguage("russian", {
	Name = "Russian"
})

DefineLanguage("sanskrit", {
	Name = "Sanskrit"
})

DefineLanguage("ukrainian", {
	Name = "Ukrainian"
})

DefineLanguage("welsh", {
	Name = "Welsh"
})

DefineLanguage("west-germanic", {
	Name = "West Germanic"
})

Load("scripts/language_gothic.lua")
Load("scripts/language_greek.lua")
Load("scripts/language_high_german.lua")
Load("scripts/language_latin.lua")
Load("scripts/language_proto_germanic.lua")
Load("scripts/language_old_frankish.lua")
Load("scripts/language_old_norse.lua")

-- fictional languages
Load("scripts/language_dwarven.lua")
Load("scripts/language_gnomish.lua")
Load("scripts/language_goblin.lua")
Load("scripts/language_kobold.lua")

-- these are kept for reference, but not used
Load("scripts/language_avestan.lua")
Load("scripts/language_english.lua")
Load("scripts/language_finnish.lua")
Load("scripts/language_irish.lua")
Load("scripts/language_lithuanian.lua")
Load("scripts/language_middle_dutch.lua")
Load("scripts/language_middle_english.lua")
Load("scripts/language_middle_high_german.lua")
Load("scripts/language_middle_low_german.lua")
Load("scripts/language_norwegian.lua")
Load("scripts/language_old_english.lua")
Load("scripts/language_old_frisian.lua")
Load("scripts/language_old_high_german.lua")
Load("scripts/language_old_icelandic.lua")
Load("scripts/language_old_irish.lua")
Load("scripts/language_old_saxon.lua")
Load("scripts/language_old_slavic.lua")
Load("scripts/language_old_swedish.lua")
Load("scripts/language_russian.lua")
Load("scripts/language_sanskrit.lua")
Load("scripts/language_ukrainian.lua")
Load("scripts/language_welsh.lua")
Load("scripts/language_west_germanic.lua")

DefineCivilizationLanguage("old-icelandic", -- Old Icelandic
	"numerals", {
		"Tuǽr", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"number", 2
		}
	}
)

DefineCivilizationLanguage("old-swedish", -- Old Swedish
	"pronouns", {
		"Vīr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
			"meaning", "We",
			"nominative", "Vīr"
		}
	},
	"numerals", {
		"Tuar", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
			"number", 2
		}
	}
)

DefineCivilizationLanguage("sanskrit", -- Sanskrit
	"pronouns", {
		"Vayim", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
			"meaning", "We",
			"nominative", "Vayim"
		}
	}
)

-- North Slavic (did this really exist?)
--[[
DefineLanguageNoun("Kosem", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "north-slavic",
	Meaning = "Bundle of Flax",
	SingularNominative = "Kosem"
})
--]]

