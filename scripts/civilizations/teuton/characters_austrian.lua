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

DefineCharacter("Adalram", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 608.
	Name = "Adalram",
	Gender = "male",
	Type = "unit-teuton-priest", -- Archbishop of Salzburg
	Civilization = "teuton",
	ProvinceOfOrigin = "Salzburg",
	Year = 821, -- Archbishop of Salzburg from 821 on
	DeathYear = 836, -- Archbishop of Salzburg until 836
})

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
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
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
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
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
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1814, -- born
	DeathYear = 1879, -- died
	Noble = true
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
	DeathYear = 1891, -- died
	HistoricalTitles = {
		"education-minister", 0, 0, "teuton", "Austria"
	}
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
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
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
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
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
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1848, -- became Minister-President of Austria in 1848
	Noble = true,
	HistoricalTitles = {
		"head-of-government", 1848, 1848, "teuton", "Austria", -- was Minister-President of Austria during 1848
		"head-of-state", 1848, 0, "teuton", "Pillersdorf" -- was already Freiherr (Baron) of Pillersdorf in 1848
	}
})

DefineCharacter("Franz Joseph von Habsburg", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 48.
	Name = "Franz Joseph",
	NameElements = {
		"word", "high-german", "noun", "Franz",
		"word", "high-german", "noun", "Joseph"
	},
	FamilyName = "von Habsburg",
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-ritter", -- Emperor of Austria
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1830, -- born (became Emperor in 1848, when he was 18 years old)
	Noble = true,
	HistoricalTitles = {
		"head-of-state", 1848, 0, "teuton", "Austria" -- became Emperor of Austria in 1848
	}
})

DefineCharacter("Victor Andrian-Werburg", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 46; Source: A.J.P. Taylor, The Habsburg Monarchy, 1809-1918, 1964, pp. 55-56.
	Name = "Victor",
	NameElements = {"word", "high-german", "noun", "Victor"},
	FamilyName = "Andrian-Werburg", -- presumably
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-swordsman", -- member of the Tyrolese provincial diet
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Tyrol",
	Year = 1850, -- published "Austria and Her Future" (Österreich und dessen Zukunft") anonymously in 1850
	AuthoredWorks = {"upgrade-work-austria-and-her-future"}
	-- a "conservative thinker"
})

DefineCharacter("Franz Seraph Stadion", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, pp. 50, 54-55.
	Name = "Franz Seraph",
	NameElements = {
		"word", "high-german", "noun", "Franz",
		"word", "high-german", "noun", "Seraph"
	},
	FamilyName = "Stadion",
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1806, -- born
	DeathYear = 1853, -- died
	HistoricalTitles = {
		"interior-minister", 1848, 1849, "teuton", "Austria" -- Interior Minister (Innenminister) of Austria until May 1849, when he became severely ill; was already Interior Minister by 7.11.1818
	}
	-- count (of where?)
})

DefineCharacter("Alexander von Bach", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, pp. 50, 58.
	Name = "Alexander",
	NameElements = {"word", "high-german", "noun", "Alexander"},
	FamilyName = "von Bach",
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1813, -- born
	DeathYear = 1893, -- died
	Noble = true,
	HistoricalTitles = {
		"interior-minister", 1849, 1859, "teuton", "Austria", -- became Interior Minister (Innenminister) of Austria in 15.08.1849, and ceased that function in 1859
		"head-of-state", 1853, 1893, "teuton", "Bach" -- became Baron (Freiherr) of Bach in 1853
	}
})

DefineCharacter("Eduard von Bach", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 52.
	Name = "Eduard",
	NameElements = {"word", "high-german", "noun", "Eduard"},
	FamilyName = "von Bach", -- source gives him as "Eduard Bach"; it is not clear if he and his brother had the "von" predicate from birth or not
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	DateReferenceCharacter = "Alexander von Bach", -- brother of Alexander von Bach
	Noble = true,
	HistoricalTitles = {
		"governor", 0, 0, "Upper Austria" -- was Statthalter of Upper Austria (Oberösterreich)
	}
})

DefineCharacter("Anton Hye von Glunek", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, pp. 60-61.
	Name = "Anton Hye",
	NameElements = {"word", "high-german", "noun", "Anton"},
	FamilyName = "von Glunek",
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-ritter", -- was a liberal member of the Juridico-political Reading Club before 1848; from 1857 to 1867 was a section chief in the Ministry of Justice
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1849, -- became part of the ministerial council of the Austrian Ministry of Justice in 1849
	Noble = true,
	HistoricalTitles = {
		"justice-minister", 1867, 1867, "teuton", "Austria" -- was Justice Minister (Justizminister) of Austria from June to December of 1867
	}
})

DefineCharacter("Adolph Pratobevera von Wiesborn",  { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 61.
	Name = "Adolph Pratobevera",
	NameElements = {"word", "high-german", "noun", "Adolph"},
	FamilyName = "von Wiesborn",
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1852, -- became councillor (Hofrat) in the supreme court (Oberster Gerichtshof) in 1852
	Noble = true,
	HistoricalTitles = {
		"justice-minister", 1861, 1862, "teuton", "Austria", -- was Justice Minister (Justizminister) of Austria from 1861 to 1862
		"head-of-state", 0, 0, "teuton", "Wiesborn" -- was Baron (Freiherr) of Wiesborn
	}
	-- had the reputation of being a freethinker
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
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1867,
	Noble = true
	-- Knight (Ritter)
})

DefineCharacter("Carl von Hock",  { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 61.
	Name = "Carl",
	NameElements = {"word", "high-german", "noun", "Carl"},
	FamilyName = "von Hock",
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-ritter", -- was a section chief in the Finance Ministry
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	-- start year?
	Noble = true,
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Hock" -- was Baron (Freiherr) of Hock
	}
	-- economic liberal
})

DefineCharacter("Georg von Toggenburg", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 64.
	Name = "Georg",
	NameElements = {"word", "high-german", "noun", "Georg"},
	FamilyName = "von Toggenburg",
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "male",
	Type = "unit-teuton-ritter", -- had the title of Knight (Ritter)
	Civilization = "teuton",
	Faction = "Austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1860, -- became Statthalter of Venice
	Noble = true,
	HistoricalTitles = {
		"governor", 1860, 1866, "Venetia" -- was Statthalter (governor) of Venice from 1860 to 1866
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
	Faction = "Austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1889, -- born
	DeathYear = 1963 -- died
})
