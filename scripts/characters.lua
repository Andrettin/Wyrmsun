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

if (OldDefineCharacter == nil) then
	OldDefineCharacter = DefineCharacter
end

function DefineCharacter(character, data)
	if (data.Civilization ~= nil or data.Faction ~= nil or data.Type ~= nil or data.Gender ~= nil or data.Noble ~= nil) then
		local preliminary_data = {}
		if (data.Civilization ~= nil) then
			preliminary_data.Civilization = data.Civilization
		end
		if (data.Faction ~= nil) then
			preliminary_data.Faction = data.Faction
		end
		if (data.Type ~= nil) then
			preliminary_data.Type = data.Type
		end
		if (data.Gender ~= nil) then
			preliminary_data.Gender = data.Gender
		end
		if (data.Noble ~= nil) then
			preliminary_data.Noble = data.Noble
		end
		OldDefineCharacter(character, preliminary_data)
		data.Civilization = nil
		data.Faction = nil
		data.Type = nil
		data.Gender = nil
		data.Noble = nil
	end
	
	data.Defined = true
	
	OldDefineCharacter(character, data)
end

Load("scripts/civilizations/finnish/characters.lua")
Load("scripts/civilizations/germanic/characters.lua")
Load("scripts/civilizations/gnome/characters.lua")
Load("scripts/civilizations/goblin/characters.lua")
Load("scripts/civilizations/goth/characters.lua")
Load("scripts/civilizations/greek/characters.lua")
Load("scripts/civilizations/latin/characters.lua")
Load("scripts/civilizations/norse/characters.lua")
Load("scripts/civilizations/teuton/characters.lua")
Load("scripts/civilizations/celt/characters.lua") -- define after Teuton ones, because some Celtic characters refer to Teutonic ones
Load("scripts/civilizations/slav/characters.lua") -- define after Teuton ones, because some Slavic characters refer to Teutonic ones

-- load characters of fictional species afterwards, since many of them use human characters as a date reference
Load("scripts/civilizations/dwarf/characters.lua")
Load("scripts/civilizations/elf/characters.lua")

-- Basque heroes

DefineCharacter("Gylve", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Gylve", -- ruled over Scania; contemporary of Voden
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "basque",
	ProvinceOfOrigin = "Scania",
	HistoricalTitles = {
		"head-of-state", 0, 0, "basque", "Gylfing Tribe"
	},
	DateReferenceCharacter = "Vóden" -- contemporary of Vóden
})

-- Hun heroes

DefineCharacter("Attila", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 93-94; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
	Name = "Attila", -- also known as Atli in Norse myths, in which he married Gudrun
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "persian", -- should be Hun
--	ProvinceOfOrigin = "?",
	Year = 437, -- invasion of Gundahar's kingdom in 437 AD by Attila's Huns
	DeathYear = 453 -- died
})

-- load the unique animals
Load("scripts/characters_fauna.lua")
