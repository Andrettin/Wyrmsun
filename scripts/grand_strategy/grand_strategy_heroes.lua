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
--      grand_strategy_factions.lua - Defines the grand strategy factions.
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

-- Germanic heroes

DefineGrandStrategyHero("Lóríkus", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 6.
	Name = "Lóríkus", -- Duke of Thrudheim, married to Lórá (also called Glórá)
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000, -- beginning of the process of the Indo-European migrations to Scandinavia
	DeathYear = -3000 + 12 -- Trór becomes 12 years old and slays Lóríkus
})

DefineGrandStrategyHero("Trór", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 6.
	Name = "Trór", -- was goodly to look upon, his hair was fairer than gold
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000,
	DeathYear = -3000 + 12 + 10 -- 30 years is the default lifetime of a hero after having risen to prominence, but here we use 10 to make the genealogy fit from 3000 to 2800 BC, by when Scandinavia was settled by Indo-Europeans (in the Ynglinga Saga, with an euhemerized Odin leading the Asa there)
})

DefineGrandStrategyHero("Lóridi", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Lóridi", -- resembled his father, Trór
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 1),
	DeathYear = -3000 + 12 + (10 * 2),
	Father = "Trór"
})

DefineGrandStrategyHero("Einridi", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Einridi",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 2),
	DeathYear = -3000 + 12 + (10 * 3),
	Father = "Loridi"
})

DefineGrandStrategyHero("Vingethor", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vingethor",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 3),
	DeathYear = -3000 + 12 + (10 * 4),
	Father = "Einridi"
})

DefineGrandStrategyHero("Vingener", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vingener",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 4),
	DeathYear = -3000 + 12 + (10 * 5),
	Father = "Vingethor"
})

DefineGrandStrategyHero("Móda", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Móda",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 5),
	DeathYear = -3000 + 12 + (10 * 6),
	Father = "Vingener"
})

DefineGrandStrategyHero("Magi", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Magi",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 6),
	DeathYear = -3000 + 12 + (10 * 7),
	Father = "Móda"
})

DefineGrandStrategyHero("Seskef", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Seskef",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 7),
	DeathYear = -3000 + 12 + (10 * 8),
	Father = "Magi"
})

DefineGrandStrategyHero("Bedvig", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Bedvig",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 8),
	DeathYear = -3000 + 12 + (10 * 9),
	Father = "Seskef"
})

DefineGrandStrategyHero("Athra", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Athra",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 9),
	DeathYear = -3000 + 12 + (10 * 10),
	Father = "Bedvig"
})

DefineGrandStrategyHero("Ítermann", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Ítermann",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 10),
	DeathYear = -3000 + 12 + (10 * 11),
	Father = "Athra"
})

DefineGrandStrategyHero("Heremód", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Heremód",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 11),
	DeathYear = -3000 + 12 + (10 * 12),
	Father = "Ítermann"
})

DefineGrandStrategyHero("Skjaldun", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Skjaldun",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 12),
	DeathYear = -3000 + 12 + (10 * 13),
	Father = "Heremód"
})

DefineGrandStrategyHero("Bjáf", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Bjáf",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 13),
	DeathYear = -3000 + 12 + (10 * 14),
	Father = "Skjaldun"
})

DefineGrandStrategyHero("Ját", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Ját",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 14),
	DeathYear = -3000 + 12 + (10 * 15),
	Father = "Bjáf"
})

DefineGrandStrategyHero("Gudólfr", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Gudólfr",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 15),
	DeathYear = -3000 + 12 + (10 * 16),
	Father = "Ját"
})

DefineGrandStrategyHero("Finn", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Finn",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 16),
	DeathYear = -3000 + 12 + (10 * 17),
	Father = "Gudólfr"
})

DefineGrandStrategyHero("Fríallaf", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Fríallaf",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 17),
	DeathYear = -3000 + 12 + (10 * 18),
	Father = "Finn"
})

DefineGrandStrategyHero("Vóden", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
	Name = "Vóden", -- euhemerized version of Odin
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -3000 + 12 + (10 * 18),
	DeathYear = -2800 + (30 * 1), -- with Voden begins a new genealogy, and he can live the standard 30 years
	Father = "Fríallaf"
})

DefineGrandStrategyHero("Skjöldr", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Skjöldr",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -2800,
	DeathYear = -2800 + (30 * 2), -- 30 years is the default lifetime of a hero after having risen to prominence
	Father = "Vóden"
})

DefineGrandStrategyHero("Yngve", { -- Source: Snorri Sturlson, "Heimskringla", 1844; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 9.
	Name = "Yngve",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Astrakhan",
	Year = -2800,
	DeathYear = -2800 + (30 * 2),
	Father = "Vóden"
})

DefineGrandStrategyHero("Saeming", { -- Source: Snorri Sturlson, "Heimskringla", 1844.
	Name = "Saeming",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Sweden",
	Year = -2800 + (30 * 1),
	DeathYear = -2800 + (30 * 2),
	Father = "Vóden"
})

DefineGrandStrategyHero("Fridleifr", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Fridleifr",
	Dynasty = "Skjoldung",
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "germanic",
	ProvinceOfOrigin = "Zealand",
	Year = -2800 + (30 * 2),
	DeathYear = -2800 + (30 * 3),
	Father = "Skjöldr"
})

-- Teuton heroes

DefineGrandStrategyHero("Marbod", {
	Name = "Marbod",
	DefaultType = "unit-hero-marbod",
	Civilization = "teuton",
	ProvinceOfOrigin = "Brandenburg",
	Year = -9, -- Marbod, king of the Suebic tribe of the Marcomanni, conquers Bohemia in 9 BC
	DeathYear = 19 + 15 -- Marbod deposed in 19 AD; give +15 years of life
})

-- Dwarven heroes

DefineGrandStrategyHero("Baglur", {
	Name = "Baglur",
	DefaultType = "unit-hero-baglur",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40 + 10 -- died in 40 AD of a violent death, but was already rather old; +10 years
})

DefineGrandStrategyHero("Durin", {
	Name = "Durin",
	DefaultType = "unit-hero-durin",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30 -- estimated
})

DefineGrandStrategyHero("Durstorn", {
	Name = "Durstorn",
	DefaultType = "unit-hero-durstorn",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 35 + 15 -- died in 35 AD of a violent death, but was already somewhat old; +15 years
})

DefineGrandStrategyHero("Modsognir", {
	Name = "Modsognir",
	DefaultType = "unit-hero-modsognir",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Svarinshaug",
	Year = -3000,
	DeathYear = -3000 + 30 -- estimated
})

DefineGrandStrategyHero("Rugnur", {
	Name = "Rugnur",
	DefaultType = "unit-hero-rugnur",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = 25,
	DeathYear = 40 + 30 -- died in 40 AD of a violent death, and wasn't old; +30 years
})

DefineGrandStrategyHero("Thursagan", {
	Name = "Thursagan",
	DefaultType = "unit-hero-thursagan",
	Civilization = "dwarf",
	ProvinceOfOrigin = "Caverns of Chaincolt",
	Year = -1,
	DeathYear = 40 + 10 -- died in 40 AD of a violent death, but was already rather old; +10 years
})

-- Goblin heroes

DefineGrandStrategyHero("Greebo", {
	Name = "Greebo",
	DefaultType = "unit-hero-greebo",
	Civilization = "goblin"
})

-- Basque heroes

DefineGrandStrategyHero("Gylve", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Gylve", -- ruled over Scania; contemporary of Voden
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "basque",
	ProvinceOfOrigin = "Scania",
	Year = -3000 + 12 + (10 * 18),
	DeathYear = -2800 + (30 * 1)
})
