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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineCharacter("adalram", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 608.
	Name = "Adalram",
	Gender = "male",
	Type = "unit-teuton-priest", -- Archbishop of Salzburg
	Civilization = "teuton",
	ProvinceOfOrigin = "Salzburg",
	Year = 821, -- Archbishop of Salzburg from 821 on
	DeathYear = 836, -- Archbishop of Salzburg until 836
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "bavaria" or GetPlayerData(trigger_player, "Faction") == "austria") then
			return true
		end
		return false
	end
})

--[[
DefineCharacter("peter-von-salzgeber", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "Peter",
	FamilyName = "von Salzgeber",
	Gender = "male",
	Type = "unit-teuton-ritter", -- section chief who was the right-hand of the Minister-President (the Baron of Pillersdorf) in March of 1848
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1789, -- born
	DeathYear = 1858 -- died
})

DefineCharacter("wilhelmina-von-salzgeber", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "Wilhelmina",
	FamilyName = "von Salzgeber", -- this is her name after marrying Peter von Salzgeber; should be set to her maiden name instead
	Gender = "female",
	Type = "unit-teuton-archer", -- baroness; should be a different unit type that is more appropriate
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1801, -- born
	DeathYear = 1860 -- died
	-- married to Peter von Salzgeber
})

DefineCharacter("joseph-anton-von-lasser", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 41.
	Name = "Joseph Anton",
	FamilyName = "von Lasser",
	Gender = "male",
	Type = "unit-teuton-ritter", -- bureaucrat in the Allgemeinen Hofkammer, in 1848 a deputy in the Austrian Reichstag and in the Frankfurter Parliament; was minister without portfolio in the 1860s during the government of the Archduke Rainer-Mensdorff-Pouilly; was governor of Tyrol; in the 1870s he was a liberal deputy
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1814, -- born
	DeathYear = 1879 -- died
})

DefineCharacter("leopold-hasner", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 41.
	Name = "Leopold",
	FamilyName = "Hasner", -- apparently
	Gender = "male",
	Type = "unit-teuton-ritter", -- bureaucrat of the Finanzlandesdirektion in Prague; later bureaucrat of the Hofkammerprokuratur of Vienna; in the 1860s professor of political sciences in the University of Vienna and was head (Leiter) of the Department of Education (Unterrichtsdepartement) (which was in effect the education ministry) during the government of Prince (Fürst) Karl Auersperg
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1818, -- born
	DeathYear = 1891, -- died
	HistoricalTitles = {
		"education-minister", 0, 0, "teuton", "austria"
	}
	-- Knight (Ritter) of Artha
})

DefineCharacter("wilhelmina-the-younger-von-salzgeber", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "Wilhelmina",
	FamilyName = "von Salzgeber",
	Gender = "female",
	Type = "unit-teuton-archer", -- should be a different unit type that is more appropriate
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1821, -- born
	DeathYear = 1896 -- died
	-- married to Josef Russegger
})

DefineCharacter("josef-russegger", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "Josef",
	FamilyName = "Russegger",
	Gender = "male",
	Type = "unit-teuton-ritter", -- bureaucrat, literate, geological researcher (also did geological scientific travels), worked as saline director in various mines in Austria (such as Wieliczka in Galicia)
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1853 -- knighted (became "Ritter von Russegger")
})

DefineCharacter("von-pillersdorf", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 39.
	Name = "von Pillersdorf", -- this is actually his family name, since we don't have his given name
--	FamilyName = "von Pillersdorf",
	Gender = "male",
	Type = "unit-teuton-ritter", -- high-ranking bureaucrat of the Finance Ministry, and later Minister-President of Austria
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1848, -- became Minister-President of Austria in 1848
	HistoricalTitles = {
		"head-of-government", 1848, 1848, "teuton", "austria" -- was Minister-President of Austria during 1848
	}
})

DefineCharacter("franz-joseph-von-habsburg", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 48.
	Name = "Franz Joseph",
	FamilyName = "von Habsburg",
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- Emperor of Austria
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1830, -- born (became Emperor in 1848, when he was 18 years old)
	HistoricalTitles = {
		"head-of-state", 1848, 0, "teuton", "austria" -- became Emperor of Austria in 1848
	}
})

DefineCharacter("victor-andrian-werburg", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 46; Source: A.J.P. Taylor, The Habsburg Monarchy, 1809-1918, 1964, pp. 55-56.
	Name = "Victor",
	FamilyName = "Andrian-Werburg", -- presumably
	Gender = "male",
	Type = "unit-teuton-swordsman", -- member of the Tyrolese provincial diet
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Tyrol",
	Year = 1850, -- published "Austria and Her Future" (Österreich und dessen Zukunft") anonymously in 1850
--	AuthoredWorks = {"upgrade-work-austria-and-her-future"}
	-- a "conservative thinker"
})

DefineCharacter("franz-seraph-stadion", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, pp. 50, 54-55.
	Name = "Franz Seraph",
	FamilyName = "Stadion",
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1806, -- born
	DeathYear = 1853, -- died
	HistoricalTitles = {
		"interior-minister", 1848, 1849, "teuton", "austria" -- Interior Minister (Innenminister) of Austria until May 1849, when he became severely ill; was already Interior Minister by 7.11.1848
	}
	-- count (of where?)
})

DefineCharacter("alexander-von-bach", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, pp. 50, 58.
	Name = "Alexander",
	FamilyName = "von Bach",
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1813, -- born
	DeathYear = 1893, -- died
	HistoricalTitles = {
		"interior-minister", 1849, 1859, "teuton", "austria" -- became Interior Minister (Innenminister) of Austria on 15.08.1849, and ceased that function in 1859
	}
})

DefineCharacter("eduard-von-bach", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 52.
	Name = "Eduard",
	FamilyName = "von Bach", -- source gives him as "Eduard Bach"; it is not clear if he and his brother had the "von" predicate from birth or not
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	-- brother of Alexander von Bach
	HistoricalTitles = {
		"governor", 0, 0, "Upper Austria" -- was Statthalter of Upper Austria (Oberösterreich)
	}
})

DefineCharacter("anton-hye-von-glunek", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, pp. 60-61.
	Name = "Anton Hye",
	FamilyName = "von Glunek",
	Gender = "male",
	Type = "unit-teuton-ritter", -- was a liberal member of the Juridico-political Reading Club before 1848; from 1857 to 1867 was a section chief in the Ministry of Justice
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1849, -- became part of the ministerial council of the Austrian Ministry of Justice in 1849
	HistoricalTitles = {
		"justice-minister", 1867, 1867, "teuton", "austria" -- was Justice Minister (Justizminister) of Austria from June to December of 1867
	}
})

DefineCharacter("adolph-pratobevera-von-wiesborn",  { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 61.
	Name = "Adolph Pratobevera",
	FamilyName = "von Wiesborn",
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1852, -- became councillor (Hofrat) in the supreme court (Oberster Gerichtshof) in 1852
	HistoricalTitles = {
		"justice-minister", 1861, 1862, "teuton", "austria" -- was Justice Minister (Justizminister) of Austria from 1861 to 1862
	}
	-- had the reputation of being a freethinker
})

DefineCharacter("johann-baptist-von-hoffinger", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 41.
	Name = "Johann Baptist",
	FamilyName = "von Hoffinger",
	Gender = "male",
	Type = "unit-teuton-ritter", -- Ministerialsekretär in the Police Ministry (Polizeiministerium), at least during the 1867-1869 period
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1867
	-- Knight (Ritter)
})

DefineCharacter("carl-von-hock",  { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 61.
	Name = "Carl",
	FamilyName = "von Hock",
	Gender = "male",
	Type = "unit-teuton-ritter", -- was a section chief in the Finance Ministry
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	-- start year?
	-- economic liberal
})

DefineCharacter("bissingen", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 69.
	Name = "Bissingen", -- likely his family name instead
	Gender = "male",
	Type = "unit-teuton-ritter", -- had the title of Graf (Count)
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Tyrol", -- was Statthalter of Tyrol
	Year = 1852, -- was Statthalter (governor) of Tyrol in 1852 when he wrote complaining of the wages of a governor
	HistoricalTitles = {
		"governor", 1852, 0, "Tyrol" -- was Statthalter (governor) of Tyrol in 1852 when he wrote complaining of the wages of a governor
	}
})

DefineCharacter("georg-von-toggenburg", { -- Source: Waltraud Heindl, "Josephinische Mandarine", 2013, p. 64.
	Name = "Georg",
	FamilyName = "von Toggenburg",
	Gender = "male",
	Type = "unit-teuton-ritter", -- had the title of Knight (Ritter)
	Civilization = "teuton",
	Faction = "austria",
	ProvinceOfOrigin = "Lower Austria", -- was presumably from Austria, put the character in the province where the Austrian capital (Vienna) is, since we don't have more specific information
	Year = 1860, -- became Statthalter of Venice
	HistoricalTitles = {
		"governor", 1860, 1866, "Venetia" -- was Statthalter (governor) of Venice from 1860 to 1866
	}
})
--]]
