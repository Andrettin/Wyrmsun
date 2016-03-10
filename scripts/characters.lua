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

Load("scripts/civilizations/dwarf/characters.lua")
Load("scripts/civilizations/elf/characters.lua")
Load("scripts/civilizations/germanic/characters.lua")
Load("scripts/civilizations/goth/characters.lua")
Load("scripts/civilizations/latin/characters.lua")
Load("scripts/civilizations/norse/characters.lua")
Load("scripts/civilizations/teuton/characters.lua")

-- Gnome heroes

DefineCharacter("Pypo", {
	Name = "Pypo",
	NameElements = {"word", "gnomish", "noun", "Pypo"},
	Gender = "male",
	Type = "unit-gnomish-master-at-arms",
	Civilization = "gnome",
	ProvinceOfOrigin = "Brown Hills",
	Year = -1,
	DeathYear = 40 -- last we hear of him
})

-- Goblin heroes

DefineCharacter("Greebo", {
	Name = "Greebo",
	NameElements = {"word", "goblin", "noun", "Greebo"},
	Gender = "male",
	Type = "unit-goblin-spearman",
	Civilization = "goblin",
	Description = _("Greebo is a scoundrel, simply put. He lives in a rocky hideout, and survives by stealing from the farms in the region. He is quick to thrust his short sword into those who get in his way, holding love only for his baby child."),
	Trait = "upgrade-strong", -- seems appropriate, but maybe something else for this character would be better?
	ProvinceOfOrigin = "Caverns of Flame", -- placeholder (this character needs to have a province of origin since he has a hero unit type)
	Year = 3000, -- placeholder (this character needs to have a year since he has a hero unit type)
	DeathYear = 3000 + 30 -- placeholder (this character needs to have a death year since he has a hero unit type)
})

-- Basque heroes

DefineCharacter("Gylve", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Gylve", -- ruled over Scania; contemporary of Voden
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "basque",
	ProvinceOfOrigin = "Scania",
	Year = -3000 + 12 + (10 * 18),
	DeathYear = -2800 + (30 * 1)
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
