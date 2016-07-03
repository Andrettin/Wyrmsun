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

LanguageCacheOutdated = false
if (CanAccessFile("cache/languages.lua")) then
	local language_cache_date = GetFileLastModified("cache/languages.lua")
	
	local fileslist = ListFilesInDirectory("scripts/")
	for i,f in ipairs(fileslist) do
		local file_name = "scripts/" .. f
		if ((string.find(file_name, "language") ~= nil or string.find(file_name, "province") ~= nil or string.find(file_name, "tiles") ~= nil or string.find(file_name, "character") ~= nil or string.find(file_name, "unique_item") ~= nil or string.find(file_name, "works") ~= nil) and GetFileLastModified(file_name) > language_cache_date) then
			LanguageCacheOutdated = true
			break
		end
	end
	
	if (LanguageCacheOutdated == false) then
		local fileslist = ListFilesInDirectory("scripts/languages/")
		for i,f in ipairs(fileslist) do
			local file_name = "scripts/languages/" .. f
			if (GetFileLastModified(file_name) > language_cache_date) then
				LanguageCacheOutdated = true
				break
			end
		end
			
		local dirs = ListDirsInDirectory("scripts/languages/")
		for i,f in ipairs(dirs) do
			local directory = f .. "/"
			local fileslist = ListFilesInDirectory(directory)
			for second_i,second_f in ipairs(fileslist) do
				local file_name = "scripts/languages/" .. directory .. second_f
				if (GetFileLastModified(file_name) > language_cache_date) then
					LanguageCacheOutdated = true
					break
				end
			end
		end
	end
	
	if (LanguageCacheOutdated == false) then
		local dirs = ListDirsInDirectory("scripts/civilizations/")
		for i,f in ipairs(dirs) do
			local directory = f .. "/"
			local fileslist = ListFilesInDirectory(directory)
			for second_i,second_f in ipairs(fileslist) do
				local file_name = "scripts/civilizations/" .. directory .. second_f
				if ((string.find(file_name, "character") ~= nil or string.find(file_name, "unique_item") ~= nil or string.find(file_name, "works") ~= nil) and GetFileLastModified(file_name) > language_cache_date) then
					LanguageCacheOutdated = true
					break
				end
			end
		end
	end
else
	LanguageCacheOutdated = true
end

if not (LanguageCacheOutdated) then
	Load("cache/languages.lua")
	return;
end

DefineLanguage("proto-indo-european", {
	Name = "Proto-Indo-European"
})

DefineLanguage("albanian", {
	Name = "Albanian"
})

DefineLanguage("armenian", {
	Name = "Armenian"
})

DefineLanguage("avestan", {
	Name = "Avestan",
	SkipNameTypeInheritance = true
})

DefineLanguage("illyrian", {
	Name = "Illyrian"
})

DefineLanguage("phrygian", {
	Name = "Phrygian",
	SkipNameTypeInheritance = true
})

DefineLanguage("sanskrit", {
	Name = "Sanskrit"
})

DefineLanguage("thracian", {
	Name = "Thracian",
	SkipNameTypeInheritance = true
})

DefineLanguage("proto-uralic", {
	Name = "Proto-Uralic",
	SkipNameTypeInheritance = true
})

DefineLanguage("finnish", {
	Name = "Finnish",
	SkipNameTypeInheritance = true
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

Load("scripts/languages_baltic.lua")
Load("scripts/languages_celtic.lua")
Load("scripts/languages_germanic.lua")
Load("scripts/languages_hellenic.lua")
Load("scripts/languages_italic.lua")
Load("scripts/languages_slavic.lua")

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

