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
--      (c) Copyright 2016 by Andrettin
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

DefineCharacter("Peter von Salzgeber", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "Peter",
	NameElements = {"word", "high-german", "noun", "Peter"},
	FamilyName = "von Salzgeber",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- section chief who was the right-hand of the Minister-President (the Baron of Pillersdorf) in March of 1848
	Civilization = "teuton",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1789, -- born
	DeathYear = 1858, -- died
	HistoricalTitles = {
		"head-of-state", 1853, 1858, "teuton", "Salzgeber" -- became Freiherr (Baron) of Salzgeber in 1853
	}
})

DefineCharacter("Wilhelmina von Salzgeber", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "Wilhelmina",
	NameElements = {"word", "high-german", "noun", "Wilhelmina"},
	FamilyName = "von Salzgeber", -- this is her name after marrying Peter von Salzgeber; should be set to her maiden name instead
	Gender = "female",
	Type = "unit-teuton-swordsman", -- baroness; should be a different unit type that is more appropriate
	Civilization = "teuton",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1801, -- born
	DeathYear = 1860 -- died
	-- married to Peter von Salzgeber
})

DefineCharacter("Wilhelmina the Younger von Salzgeber", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "Wilhelmina",
	NameElements = {"word", "high-german", "noun", "Wilhelmina"},
	ExtraName = "the Younger", -- to differentiate her from her mother
	FamilyName = "von Salzgeber",
	Gender = "female",
	Type = "unit-teuton-swordsman", -- should be a different unit type that is more appropriate
	Civilization = "teuton",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1821, -- born
	DeathYear = 1896 -- died
	-- married to Josef Russegger
})

DefineCharacter("Josef Russegger", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "Josef",
	NameElements = {"word", "high-german", "noun", "Josef"},
	FamilyName = "Russegger",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- bureaucrat, literate, geological researcher (also did geological scientific travels), worked as saline director in various mines in Austria (such as Wieliczka in Galicia)
	Civilization = "teuton",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1853 -- knighted (became "Ritter von Russegger")
})

DefineCharacter("von Pillersdorf", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "von Pillersdorf", -- this is actually his family name, since we don't have his given name
--	FamilyName = "von Pillersdorf",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- high-ranking bureaucrat of the Finance Ministry, and later Minister-President of Austria
	Civilization = "teuton",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1848, -- became Minister-President of Austria in 1848
	HistoricalTitles = {
		"head-of-government", 1848, 1848, "teuton", "Austria", -- was Minister-President of Austria during 1848
		"head-of-state", 1848, 0, "teuton", "Pillersdorf" -- was alreadyFreiherr (Baron) of Pillersdorf in 1848
	}
})

DefineCharacter("Otto Friedländer", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 26.
	Name = "Otto",
	NameElements = {"word", "high-german", "noun", "Otto"},
	FamilyName = "Friedländer",
	FamilyNameElements = {
		"compound", "prefix", "high-german", "noun", "Fried",
		"compound", "suffix", "high-german", "noun", "plural", "Land"
	},
	Gender = "male",
	Type = "unit-teuton-worker", -- bureaucrat of the Viennese Chamber of Commerce (during the First Republic period)
	Civilization = "teuton",
	ProvinceOfOrigin = "Austria",
	Year = 1889, -- born
	DeathYear = 1963 -- died
})
