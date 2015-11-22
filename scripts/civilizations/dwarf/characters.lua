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

DefineCharacter("Modsognir", {
	Name = "Modsognir",
	Type = "unit-hero-modsognir",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30 -- estimated
})

DefineCharacter("Durin", {
	Name = "Durin",
	Type = "unit-hero-durin",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30 -- estimated
})

DefineCharacter("Thursagan", {
	Name = "Thursagan",
	Type = "unit-hero-thursagan",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40 + 10 -- died in 40 AD of a violent death, but was already rather old; +10 years
})

DefineCharacter("Baglur", {
	Name = "Baglur",
	Type = "unit-hero-baglur",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40 + 10 -- died in 40 AD of a violent death, but was already rather old; +10 years
})

DefineCharacter("Durstorn", {
	Name = "Durstorn",
	Type = "unit-hero-durstorn",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 35 + 15 -- died in 35 AD of a violent death, but was already somewhat old; +15 years
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
	Type = "unit-hero-rugnur",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = 25,
	DeathYear = 40 + 30 -- died in 40 AD of a violent death, and wasn't old; +30 years
})
