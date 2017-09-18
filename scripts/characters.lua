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

if (OldDefineCustomHero == nil) then
	OldDefineCustomHero = DefineCustomHero
end

function DefineCustomHero(character, data)
	if (string.find(character, "custom") == nil) then
		character = string.lower(string.gsub(character, " ", "-"))
		character = "custom-" .. character
	end
	
	OldDefineCustomHero(character, data)
end

Load("scripts/characters_aesir.lua")
Load("scripts/characters_vanir.lua")
Load("scripts/civilizations/anglo_saxon/characters.lua")
Load("scripts/civilizations/assyrian/characters.lua")
Load("scripts/civilizations/dwarf/characters.lua")
Load("scripts/civilizations/elf/characters.lua")
Load("scripts/civilizations/ettin/characters.lua")
Load("scripts/civilizations/finnish/characters.lua")
Load("scripts/civilizations/frankish/characters.lua")
Load("scripts/civilizations/gael/characters.lua")
Load("scripts/civilizations/gaul/characters.lua")
Load("scripts/civilizations/germanic/characters.lua")
Load("scripts/civilizations/gnome/characters.lua")
Load("scripts/civilizations/goblin/characters.lua")
Load("scripts/civilizations/goth/characters.lua")
Load("scripts/civilizations/greek/characters.lua")
Load("scripts/civilizations/kobold/characters.lua")
Load("scripts/civilizations/latin/characters.lua")
Load("scripts/civilizations/norse/characters.lua")
Load("scripts/civilizations/persian/characters.lua")
Load("scripts/civilizations/suebi/characters.lua")
Load("scripts/civilizations/teuton/characters.lua")
Load("scripts/civilizations/slav/characters.lua") -- define after Teuton ones, because some Slavic characters refer to Teutonic ones
Load("scripts/civilizations/welsh/characters.lua")

-- Basque heroes

DefineCharacter("gylve", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Gylve", -- ruled over Scania; contemporary of Voden
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "basque",
	Faction = "gylfing-tribe",
	HistoricalTitles = {
		"head-of-state", 0, 0, "gylfing-tribe"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "gylfing-tribe") then
			return true
		end
		return false
	end
	-- contemporary of Vóden
})

-- Hun personal names: "Attila" (known as Atli in Norse myths; invaded Gundahar's kingdom in 437 AD; Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 93-94; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6)

-- Sphinx names: "Tutu" (a female sphinx from Egyptian mythology; the same as the Greek "Titoés"; Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 86)

DefineCharacter("nidhogg", { -- wyrm/dragon in Norse mythology, who lived in Niflheim
	Name = "Nidhogg",
	Gender = "male",
	Type = "unit-wyrm"
})
