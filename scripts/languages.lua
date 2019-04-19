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
--      (c) Copyright 2015-2019 by Andrettin
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

Load("scripts/languages_celtic.lua")
Load("scripts/languages_germanic.lua")
Load("scripts/languages_italic.lua")

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

