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
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-ritter", -- section chief who was the right-hand of the Minister-President (the Baron of Pillersdorf) in March of 1848
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1789, -- born
	DeathYear = 1858, -- died
	Noble = true,
	HistoricalTitles = {
		"head-of-state", 1853, 1858, "teuton", "Salzgeber" -- became Freiherr (Baron) of Salzgeber in 1853
	}
})

DefineCharacter("Wilhelmina von Salzgeber", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "Wilhelmina",
	NameElements = {"word", "high-german", "noun", "Wilhelmina"},
	FamilyName = "von Salzgeber", -- this is her name after marrying Peter von Salzgeber; should be set to her maiden name instead
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "female",
	Type = "unit-teuton-archer", -- baroness; should be a different unit type that is more appropriate
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1801, -- born
	DeathYear = 1860, -- died
	Noble = true
	-- married to Peter von Salzgeber
})

DefineCharacter("Joseph Anton von Lasser", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 41.
	Name = "Joseph Anton",
	NameElements = {
		"word", "high-german", "noun", "Joseph",
		"word", "high-german", "noun", "Anton"
	},
	FamilyName = "von Lasser",
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-ritter", -- bureaucrat in the Allgemeinen Hofkammer, in 1848 a deputy in the Austrian Reichstag and in the Frankfurter Parliament; was minister without portfolio in the 1860s during the government of the Archduke Rainer-Mensdorff-Pouilly; was governor of Tyrol; in the 1870s he was a liberal deputy
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1814, -- born
	DeathYear = 1879, -- died
	Noble = true,
	HistoricalTitles = {
		"head-of-state", 0, 1879, "teuton", "Lasser" -- Freiherr (Baron) of Lasser
	}
})

DefineCharacter("Leopold Hasner", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 41.
	Name = "Leopold",
	NameElements = {"word", "high-german", "noun", "Leopold"},
	FamilyName = "Hasner", -- apparently
	Gender = "male",
	Type = "unit-teuton-ritter", -- bureaucrat of the Finanzlandesdirektion in Prague; later bureaucrat of the Hofkammerprokuratur of Vienna; in the 1860s professor of political sciences in the University of Vienna and was head (Leiter) of the Department of Education (Unterrichtsdepartement) (which was in effect the education ministry) during the government of Prince (Fürst) Karl Auersperg
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1818, -- born
	DeathYear = 1891 -- died
	-- Knight (Ritter) of Artha
})

DefineCharacter("Wilhelmina the Younger von Salzgeber", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "Wilhelmina",
	NameElements = {"word", "high-german", "noun", "Wilhelmina"},
	ExtraName = "the Younger", -- to differentiate her from her mother
	FamilyName = "von Salzgeber",
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "female",
	Type = "unit-teuton-archer", -- should be a different unit type that is more appropriate
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1821, -- born
	DeathYear = 1896, -- died
	Noble = true
	-- married to Josef Russegger
})

DefineCharacter("Josef Russegger", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "Josef",
	NameElements = {"word", "high-german", "noun", "Josef"},
	FamilyName = "Russegger",
	Gender = "male",
	Type = "unit-teuton-ritter", -- bureaucrat, literate, geological researcher (also did geological scientific travels), worked as saline director in various mines in Austria (such as Wieliczka in Galicia)
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1853 -- knighted (became "Ritter von Russegger")
})

DefineCharacter("von Pillersdorf", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "von Pillersdorf", -- this is actually his family name, since we don't have his given name
--	FamilyName = "von Pillersdorf",
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-ritter", -- high-ranking bureaucrat of the Finance Ministry, and later Minister-President of Austria
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1848, -- became Minister-President of Austria in 1848
	Noble = true,
	HistoricalTitles = {
		"head-of-government", 1848, 1848, "teuton", "Austria", -- was Minister-President of Austria during 1848
		"head-of-state", 1848, 0, "teuton", "Pillersdorf" -- was alreadyFreiherr (Baron) of Pillersdorf in 1848
	}
})

DefineCharacter("Johann Baptist von Hoffinger", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 41.
	Name = "Johann Baptist",
	NameElements = {
		"word", "high-german", "noun", "Johann",
		"word", "high-german", "noun", "Baptist"
	},
	FamilyName = "von Hoffinger",
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-ritter", -- Ministerialsekretär in the Police Ministry (Polizeiministerium), at least during the 1867-1869 period
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Austria", -- presumably
	Year = 1867,
	Noble = true
	-- Knight (Ritter) of Hoffinger
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
	Faction = "Austria",
	ProvinceOfOrigin = "Austria",
	Year = 1889, -- born
	DeathYear = 1963 -- died
})
