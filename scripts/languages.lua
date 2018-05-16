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
--      (c) Copyright 2015-2018 by Andrettin
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

DefineLanguage("proto-indo-european", {
	Name = "Proto-Indo-European"
})

DefineLanguage("hittite", {
	Name = "Hittite"
})

DefineLanguage("illyrian", {
	Name = "Illyrian"
})

DefineLanguage("phrygian", {
	Name = "Phrygian"
})

DefineLanguage("thracian", {
	Name = "Thracian"
})

DefineLanguage("albanian", {
	Name = "Albanian"
})

DefineLanguage("old-armenian", {
	Name = "Old Armenian"
})

DefineLanguage("armenian", {
	Name = "Armenian"
})

DefineLanguage("egyptian", {
	Name = "Egyptian"
})

DefineLanguage("coptic", {
	Name = "Coptic"
})

DefineLanguage("arabic", {
	Name = "Arabic"
})

DefineLanguage("proto-uralic", {
	Name = "Proto-Uralic"
})

DefineLanguage("finnish", {
	Name = "Finnish"
})

DefineLanguage("turkish", {
	Name = "Turkish"
})

DefineLanguage("basque", {
	Name = "Basque"
})

DefineLanguage("etruscan", {
	Name = "Etruscan"
})

DefineLanguage("japanese", {
	Name = "Japanese"
})

DefineLanguage("minoan", {
	Name = "Minoan"
})

DefineLanguage("dwarven", {
	Name = "Dwarven"
})

DefineLanguage("gnomish", {
	Name = "Gnomish"
})

DefineLanguage("goblin", {
	Name = "Goblin"
})

DefineLanguage("kobold", {
	Name = "Kobold"
})

Load("scripts/languages_celtic.lua")
Load("scripts/languages_germanic.lua")
Load("scripts/languages_hellenic.lua")
Load("scripts/languages_indic.lua")
Load("scripts/languages_iranian.lua")
Load("scripts/languages_italic.lua")
Load("scripts/languages_slavic.lua")
Load("scripts/languages_baltic.lua")

DefineLanguage("yakut", {
	Name = "Yakut"
})


local languages = GetLanguages()

-- load the words for each language

for i=1,table.getn(languages) do
	local language_file = "scripts/languages/"
	if (GetLanguageData(languages[i], "Family") ~= "") then
		language_file = language_file .. GetLanguageData(languages[i], "Family") .. "/"
	end
	language_file = language_file .. string.gsub(languages[i], "-", "_") .. ".lua"
	
	if (CanAccessFile(language_file)) then
		Load(language_file)
	end
end

-- load the loanwords for each language
	
for i=1,table.getn(languages) do
	local language_file = "scripts/languages/"
	if (GetLanguageData(languages[i], "Family") ~= "") then
		language_file = language_file .. GetLanguageData(languages[i], "Family") .. "/"
	end
	language_file = language_file .. string.gsub(languages[i], "-", "_") .. "_loanwords.lua"
	
	if (CanAccessFile(language_file)) then
		Load(language_file)
	end
end
	
-- North Slavic (did this really exist?)
--[[
DefineLanguageWord("Kosem", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "north-slavic",
	Type = "noun",
	Meanings = {"Bundle of Flax"}
})
--]]

