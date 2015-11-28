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

-- Dwarven heroes

DefineCharacter("Modsognir", { -- one of the earliest dwarven leaders; in Norse mythology Modsognir was the mightiest and first of dwarves
	Name = "Modsognir",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30, -- estimated
	Persistent = true
})

DefineCharacter("Durin", { -- deputy of Modsognir
	Name = "Durin",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30, -- estimated
	Persistent = true
})

DefineCharacter("Thjodrorir", { -- dwarven sage of Modsognir's clan; in Norse mythology, a dwarf who knew a charm of power to the gods
	Name = "Thjodrorir",
	Type = "unit-dwarven-steelclad", -- should be a priest
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30 -- estimated
})

DefineCharacter("Ivaldi", { -- his sons were skilled craftsmen; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 63.
	Name = "Ivaldi",
	Type = "unit-dwarven-steelclad", -- should be a runesmith?
	Civilization = "dwarf",
	Trait = "upgrade-mighty", -- described as mighty
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000 - (30 * 1),
	DeathYear = -3000
})

DefineCharacter("Thursagan", {
	Name = "Thursagan",
	Type = "unit-dwarven-thane",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40 + 10, -- died in 40 AD of a violent death, but was already rather old; +10 years
	Persistent = true
})

DefineCharacter("Baglur", {
	Name = "Baglur",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40 + 10, -- died in 40 AD of a violent death, but was already rather old; +10 years
	Persistent = true
})

DefineCharacter("Durstorn", {
	Name = "Durstorn",
	Type = "unit-dwarven-thane",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 35 + 15, -- died in 35 AD of a violent death, but was already somewhat old; +15 years
	Persistent = true
})

DefineCharacter("Glonoin", {
	Name = "Glonoin",
	Gender = "male",
	Type = "unit-dwarven-thane",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Shorbear Hills",
	Year = -1,
	DeathYear = 29 + 15 -- Shorbear Hold conquered in 29 AD by Rugnur's and Durstorn's Clan
})

DefineCharacter("Rugnur", {
	Name = "Rugnur",
	Type = "unit-dwarven-axefighter",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = 25,
	DeathYear = 40 + 30, -- died in 40 AD of a violent death, and wasn't old; +30 years
	Persistent = true
})

DefineCharacter("Oin", {
	Name = "Oin",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = 437 - (30 * 3),
	DeathYear = 437 - (30 * 2)
})

DefineCharacter("Andvari", { -- dwarf who possessed a lot of gold, including a golden ring (Andvaranaut); was possibly one of the settlers of Joruvellir; son of Oin
	Name = "Andvari",
	Type = "unit-dwarven-steelclad",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = 437 - (30 * 2),
	DeathYear = 437 - (30 * 1), -- Gunnar died in 437 AD; Andvari comes from one generation before him
	Father = "Oin"
})

DefineCharacter("Regin", { -- skilled smith
	Name = "Regin",
	Type = "unit-dwarven-steelclad", -- should be a runesmith
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = 437 - (30 * 2),
	DeathYear = 437 - (30 * 1) -- Gunnar died in 437 AD; Regin comes from one generation before him
	-- in the Norse myths Regin was the son of Hreidmar; but whereas Regin has been identified as a dwarf, to my knowledge Hreidmar hasn't
})

DefineCharacter("Dain", { -- dwarven mastersmith; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 100.
	Name = "Dain",
	Type = "unit-dwarven-steelclad", -- should be a runesmith
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
--	Year = ?, -- contemporary of Ottar, who lived after Siegfried
--	DeathYear = ?
})

DefineCharacter("Nabbi", { -- dwarven mastersmith; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 100.
	Name = "Nabbi",
	Type = "unit-dwarven-steelclad", -- should be a runesmith
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
--	Year = ?, -- contemporary of Ottar, who lived after Siegfried
--	DeathYear = ?
})
