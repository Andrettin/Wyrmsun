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

DefineLanguage("armenian", {
	Name = "Armenian"
})

DefineLanguage("avestan", {
	Name = "Avestan"
})

DefineLanguage("basque", {
	Name = "Basque"
})

DefineLanguage("crimean-gothic", {
	Name = "Crimean Gothic"
})

DefineLanguage("dutch", {
	Name = "Dutch"
})

DefineLanguage("dwarven", {
	Name = "Dwarven",
	GenerateMissingWords = true
})

DefineLanguage("english", {
	Name = "English",
	NameTranslations = {
		-- German to English
		"Bernhard", "Bernard",
		"Franz", "Francis",
		"Friedrich", "Frederick",
		"Hannover", "Hanover",
		"Heinrich", "Henry",
		"Hessen", "Hesse",
		"Johann", "John",
		"Karl", "Charles",
		"Ludwig", "Lewis",
		"Peter", "Peter",
		"Thuringen", "Thuringia",
		"Westphalien", "Westphalia",
		"Wien", "Vienna",
		"Wilhelm", "William",
		"Württemberg", "Wurtemberg",
		-- Portuguese to English
		"Lisboa", "Lisbon"
	}
})

DefineLanguage("etruscan", {
	Name = "Etruscan"
})

DefineLanguage("finnish", {
	Name = "Finnish"
})

DefineLanguage("gaulish", {
	Name = "Gaulish"
})

DefineLanguage("gnomish", {
	Name = "Gnomish",
--	GenerateMissingWords = true
})

DefineLanguage("goblin", {
	Name = "Goblin",
	GenerateMissingWords = true
})

DefineLanguage("gothic", {
	Name = "Gothic"
})

DefineLanguage("greek", {
	Name = "Greek"
})

DefineLanguage("high-german", {
	Name = "High German",
	NominativeAdjectiveEndingAfterDefiniteArticle = "e",
	NameTranslations = {
		"Bûra", "Bauer", -- from Proto-Germanic to German
		"Dverga", "Zwerg", -- from Proto-Germanic to German
		"Gastiz", "Gast", -- from Proto-Germanic to German
		"Lanum", "Land", -- example: "Mediolanum" -> "Mailand" (Milan)
		"Medio", "Mai", -- example: "Mediolanum" -> "Mailand" (Milan)
		"Smiþu", "Schmied", -- from Proto-Germanic to German
		"Vindobona", "Wien", -- "Wien" = "Vienna"; from the Latin name "Vindobona"
		"Walakuzjōn", "Walküre", -- from Proto-Germanic to German
		"Ermanaric", "Ermenrich", -- "Ermenrich" is the German form of the Gothic name Ermanaric
		"Theodoric", "Dietrich" -- "Dietrich" is the German form of the Gothic name Theodoric
	}
})

DefineLanguage("illyrian", {
	Name = "Illyrian"
})

DefineLanguage("irish", {
	Name = "Irish"
})

DefineLanguage("japanese", {
	Name = "Japanese"
})

DefineLanguage("kobold", {
	Name = "Kobold",
	GenerateMissingWords = true
})

DefineLanguage("latin", {
	Name = "Latin",
	NameTranslations = {
		"Nea", "Nea", -- example: "Neapolis" -> "Neapolis" (Naples); name remained with no change
		"Polis", "Polis" -- example: "Neapolis" -> "Neapolis" (Naples); name remained with no change
	}
})

DefineLanguage("latvian", {
	Name = "Latvian"
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

DefineLanguage("minoan", {
	Name = "Minoan"
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

DefineLanguage("old-latin", {
	Name = "Old Latin"
})

DefineLanguage("old-low-german", {
	Name = "Old Low German"
})

DefineLanguage("old-norse", {
	Name = "Old Norse"
})

DefineLanguage("old-prussian", {
	Name = "Old Prussian"
})

DefineLanguage("old-saxon", {
	Name = "Old Saxon"
})

DefineLanguage("old-church-slavonic", {
	Name = "Old Church Slavonic"
})

DefineLanguage("old-swedish", {
	Name = "Old Swedish"
})

DefineLanguage("oscan", {
	Name = "Oscan"
})

DefineLanguage("phrygian", {
	Name = "Phrygian"
})

DefineLanguage("proto-celtic", {
	Name = "Proto-Celtic"
})

DefineLanguage("proto-germanic", {
	Name = "Proto-Germanic"
})

DefineLanguage("proto-indo-european", {
	Name = "Proto-Indo-European"
})

DefineLanguage("russian", {
	Name = "Russian"
})

DefineLanguage("sanskrit", {
	Name = "Sanskrit"
})

DefineLanguage("swedish", {
	Name = "Swedish"
})

DefineLanguage("thracian", {
	Name = "Thracian"
})

DefineLanguage("ukrainian", {
	Name = "Ukrainian"
})

DefineLanguage("umbrian", {
	Name = "Umbrian"
})

DefineLanguage("welsh", {
	Name = "Welsh"
})

DefineLanguage("west-germanic", {
	Name = "West Germanic"
})

-- Indo-European languages
Load("scripts/language_proto_indo_european.lua")
Load("scripts/language_armenian.lua")
Load("scripts/language_avestan.lua")
Load("scripts/language_latvian.lua")
Load("scripts/language_lithuanian.lua")
Load("scripts/language_greek.lua")
Load("scripts/language_old_prussian.lua")
Load("scripts/language_oscan.lua")
Load("scripts/language_sanskrit.lua")
Load("scripts/language_umbrian.lua")

-- Celtic languages (branch of the Indo-European family)
Load("scripts/language_gaulish.lua")
Load("scripts/language_welsh.lua")
Load("scripts/language_old_irish.lua")
Load("scripts/language_irish.lua")

-- Germanic languages (branch of the Indo-European family)
Load("scripts/language_proto_germanic.lua")

-- North Germanic languages (branch of the Germanic family)
Load("scripts/language_old_norse.lua")
Load("scripts/language_old_swedish.lua")
Load("scripts/language_old_icelandic.lua")
Load("scripts/language_norwegian.lua")
Load("scripts/language_swedish.lua")

-- West Germanic languages (branch of the Germanic family)
Load("scripts/language_west_germanic.lua")
Load("scripts/language_old_high_german.lua")
Load("scripts/language_middle_high_german.lua")
Load("scripts/language_old_saxon.lua")
Load("scripts/language_old_low_german.lua")
Load("scripts/language_middle_low_german.lua")
Load("scripts/language_high_german.lua")
Load("scripts/language_old_frankish.lua")
Load("scripts/language_middle_dutch.lua")
Load("scripts/language_dutch.lua")
Load("scripts/language_old_frisian.lua")
Load("scripts/language_old_english.lua")
Load("scripts/language_middle_english.lua")
Load("scripts/language_english.lua")

-- East Germanic languages (branch of the Germanic family)
Load("scripts/language_gothic.lua")
Load("scripts/language_crimean_gothic.lua")

-- Latin languages (branch of the Indo-European family)
Load("scripts/language_old_latin.lua")
Load("scripts/language_latin.lua")

-- Slavic languages (branch of the Indo-European family)
Load("scripts/language_old_church_slavonic.lua")
Load("scripts/language_russian.lua")
Load("scripts/language_ukrainian.lua")

-- Non-Indo-European languages
Load("scripts/language_finnish.lua")
Load("scripts/language_japanese.lua")

-- fictional languages
Load("scripts/language_dwarven.lua")
Load("scripts/language_gnomish.lua")
Load("scripts/language_goblin.lua")
Load("scripts/language_kobold.lua")

-- North Slavic (did this really exist?)
--[[
DefineLanguageWord("Kosem", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "north-slavic",
	Type = "noun",
	Meanings = {"Bundle of Flax"}
})
--]]

