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

DefineCharacter("Mojmír", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 606.
	Name = "Mojmír",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Moravia",
	Year = 830, -- reign began
	DeathYear = 846, -- reign ended
	HistoricalTitles = {
		"head-of-state", 830, 846, "slav", "moravia"
	}
})

DefineCharacter("Ratislav", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 606-608.
	Name = "Ratislav",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Moravia",
	Year = 846,
	Trait = "upgrade-wise", -- described as clear-headed and able
	HistoricalTitles = {
		"head-of-state", 846, 869, "slav", "moravia" -- Ratislav succeeded Mojmír in Moravia in 846; Ratislav was captured and placed on a monastery by the Franks in 869
	}
	-- was a Christian
})

DefineCharacter("Viztrach", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 606.
	Name = "Viztrach",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	HistoricalTitles = {
		"head-of-state", 0, 0, "slav", "bohemia" -- Viztrach was duke of Bohemia
	}
})

DefineCharacter("Slavitah", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 606.
	Name = "Slavitah",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 857,
	Father = "Viztrach",
	HistoricalTitles = {
		"head-of-state", 857, 857, "slav", "bohemia" -- Duke Slavitah of Bohemia was driven from his lands by the Franks two years after Lothar I's attack on Moravia in 855
	}
})

DefineCharacter("Svatopluk", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 606-607.
	Name = "Svatopluk",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Moravia",
	Year = 869, -- Svatopluk raided the frontier of Bavaria in 869
	DeathYear = 892, -- died
	HistoricalTitles = {
		"head-of-state", 874, 892, "slav", "moravia" -- Svatopluk was (apparently) duke of Moravia in 874 when peace was made with East Francia
	}
})

DefineCharacter("Bořivoj", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
	Name = "Bořivoj",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 874,
	HistoricalTitles = {
		"head-of-state", 874, 0, "slav", "bohemia" -- Bořivoj was duke of Bohemia in 874 when he recognized the overlordship of Svatopluk of Moravia
	}
})

DefineCharacter("Spytihněv", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
	Name = "Spytihněv",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Father = "Bořivoj",
	Year = 895, -- recognized German overlordship in 895
	HistoricalTitles = {
		"head-of-state", 0, 0, "slav", "bohemia" -- duke of Bohemia
	}
})

DefineCharacter("Vratislav", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
	Name = "Vratislav",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Father = "Bořivoj",
	DeathYear = 921,
	HistoricalTitles = {
		"head-of-state", 0, 921, "slav", "bohemia" -- succeeded his brother Spytihněv as duke of Bohemia, reigning until 921
	}
})

DefineCharacter("Václav", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 613.
	Name = "Václav",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Father = "Vratislav",
	Year = 921,
	HistoricalTitles = {
		"head-of-state", 921, 0, "slav", "bohemia" -- Václav succeeded his father Vratislav in 921
	}
})

DefineCharacter("Boleslav", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 615.
	Name = "Boleslav", -- Boleslav I of Bohemia
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 929,
	DeathYear = 967,
	HistoricalTitles = {
		"head-of-state", 929, 967, "slav", "bohemia" -- ruled over Bohemia in 929-967
	}
})

DefineCharacter("Boleslav II", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 616-617.
	Name = "Boleslav", -- Boleslav II of Bohemia
	ExtraName = "II", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 995, -- massacred House Slavnik in 995
	DeathYear = 999,
	HistoricalTitles = {
		"head-of-state", 0, 999, "slav", "bohemia" -- duke of Bohemia until 999, when he died
	}
})

DefineCharacter("Vojtěch Slavnik", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 617.
	Name = "Vojtěch",
	FamilyName = "Slavnik",
	Gender = "male",
	Type = "unit-teuton-priest", -- known as St. Adalbert, in 983 became bishop of Prague
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 956, -- born
	DeathYear = 997, -- murdered on 23 April 997
	ViolentDeath = true
})

DefineCharacter("Boleslav III", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
	Name = "Boleslav", -- Boleslav III of Bohemia
	ExtraName = "III", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 999,
	HistoricalTitles = {
		"head-of-state", 999, 0, "slav", "bohemia" -- succeeded Boleslav II of Bohemia
	}
})

DefineCharacter("Spytihněv the Younger", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
	Name = "Spytihněv",
	ExtraName = "the Younger", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	-- brother to Boleslav III of Bohemia
	DateReferenceCharacter = "Boleslav III",
	HistoricalTitles = {
		"head-of-state", 0, 0, "slav", "bohemia" -- deposed his brother and took control of Bohemia
	}
})

DefineCharacter("Jaromíř", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 618.
	Name = "Jaromíř",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 1004, -- reign began
	HistoricalTitles = {
		"head-of-state", 1004, 0, "slav", "bohemia" -- became duke of Bohemia in 1004
	}
})

DefineCharacter("Oldřich", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 618.
	Name = "Oldřich",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	DeathYear = 1037, -- reign ended
	HistoricalTitles = {
		"head-of-state", 0, 1037, "slav", "bohemia" -- was duke of Bohemia until 1037
	}
})

DefineCharacter("Břetislav", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 618.
	Name = "Břetislav",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 1037, -- reign began
	DeathYear = 1055, -- reign ended
	HistoricalTitles = {
		"head-of-state", 1037, 1055, "slav", "bohemia" -- Duke Břetislav I of Bohemia in 1037-1055
	}
})

DefineCharacter("Spytihněv II", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 620.
	Name = "Spytihněv",
	ExtraName = "II", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Father = "Břetislav",
	Mother = "Judith von Babenberg",
	Year = 1055, -- reign began
	DeathYear = 1061, -- reign ended
	HistoricalTitles = {
		"head-of-state", 1055, 1061, "slav", "bohemia" -- was Duke Spytihněv II of Bohemia in 1055-1061
	}
})

DefineCharacter("Břetislav II", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 621.
	Name = "Břetislav",
	ExtraName = "II", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 1061, -- reign began
	DeathYear = 1092, -- reign ended
	HistoricalTitles = {
		"head-of-state", 1061, 1092, "slav", "bohemia" -- Břetislav II of Bohemia in 1061-1092
	}
})

DefineCharacter("Bořivoj II", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 622.
	Name = "Bořivoj",
	ExtraName = "II", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	DeathYear = 1120, -- reign ended
	HistoricalTitles = {
		"head-of-state", 0, 1120, "slav", "bohemia" -- Bořivoj II of Bohemia until 1120, when he was driven out by his brother Vladislav
	}
})

DefineCharacter("Vladislav", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 622.
	Name = "Vladislav",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 1120, -- reign began
	DeathYear = 1125, -- died
	HistoricalTitles = {
		"head-of-state", 1120, 1125, "slav", "bohemia" -- drove out his brother, Bořivoj II of Bohemia, in 1120, becoming Vladislav I of Bohemia
	}
})

DefineCharacter("Judita", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 45.
	Name = "Judita", -- Wife of Vladislav II
	Gender = "female",
	Type = "unit-teuton-priest", -- should be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1158 -- ordered Judita Bridge (across the Vltava river in Prague) built
})

DefineCharacter("Soběslav", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 628.
	Name = "Soběslav",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 1173, -- reign began
	DeathYear = 1179, -- reign ended
	HistoricalTitles = {
		"head-of-state", 1173, 1179, "slav", "bohemia" -- King Soběslav II of Bohemia in 1173-1179
	}
})

DefineCharacter("Otakar", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 628.
	Name = "Otakar",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 1198, -- reign began
	DeathYear = 1230, -- reign ended
	HistoricalTitles = {
		"head-of-state", 1173, 1179, "slav", "bohemia" -- King Otakar I of Bohemia in 1198-1230
	}
})

DefineCharacter("Václav the Younger", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 627.
	Name = "Václav",
	ExtraName = "the Younger", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia",
	Year = 1230, -- reign began
	DeathYear = 1253, -- reign ended
	HistoricalTitles = {
		"head-of-state", 1230, 1253, "slav", "bohemia" -- King Václav I of Bohemia in 1230-1253
	}
})

DefineCharacter("Agnes Přemyslid", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 36.
	Name = "Agnes", -- Agnes Přemyslovna, youngest daughter of the Czech king Přemysl Otakar I
	FamilyName = "Přemyslid",
	Gender = "female",
	Type = "unit-teuton-priest",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Father = "Otakar",
	Year = 1231 -- founded St. Agnes' Cloister (in Prague), and became its mother superior
})

DefineCharacter("Petr Parléř", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 45.
	Name = "Petr",
	ExtraName = "Parléř",
	Gender = "male",
	Type = "unit-teuton-worker",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1357 -- The foundation stone of a new bridge to replace Judita Bridge was laid in the 9th of July 1357 by Emperor and King Charles IV; the construction of this new bridge was entrusted to Petr Parléř, who had built St Vitus' Cathedral
})

DefineCharacter("Charles", { -- Source: Alena Ježková, "77 Prague Legends", 2006, pp. 45, 87.
	Name = "Charles", -- Emperor and king Charles IV
	Gender = "male",
	Type = "unit-teuton-ritter",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1357, -- The foundation stone of a new bridge to replace Judita Bridge was laid in the 9th of July 1357 by Emperor and King Charles IV
	DeathYear = 1378, -- Charles IV was on his deathbed in November 1378, in Prague Castle
	HistoricalTitles = {
		"head-of-state", 0, 1378, "slav", "bohemia"
	}
})

DefineCharacter("Mikulás of Kadaň", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 10.
	Name = "Mikulás",
	ExtraName = "of Kadaň",
	Gender = "male",
	Type = "unit-teuton-priest", -- should probably be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1410 -- Built Prague's Old Town Astronomical Clock before 1410
})

DefineCharacter("Hanuš of Růže", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 10.
	Name = "Hanuš", -- Master Hanuš of Růže, perfected Prague's Old Town Astronomical Clock in the 15th century
	ExtraName = "of Růže",
	Gender = "male",
	Type = "unit-teuton-priest", -- should probably be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
--	Year = ?, -- lived in the 15th century
--	DeathYear = ? -- lived in the 15th century
})

DefineCharacter("Vacláv Budovec of Budov", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
	Name = "Vacláv", -- Scholar and writer who was executed for rebelling against Emperor Ferdinand II
	ExtraName = "Budovec of Budov",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1547, -- born
	DeathYear = 1621, -- Executed in the 21st of June 1621 for his role in the rebellion against Emperor Ferdinand II; he was 74 years old when executed; only 10 years later it would be allowed to take his head from public display and be buried
	ViolentDeath = true
})

DefineCharacter("Kryštof Harant of Polžice", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
	Name = "Kryštof", -- Traveller who was executed for rebelling against Emperor Ferdinand II
	ExtraName = "Harant of Polžice",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- perhaps should be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	DeathYear = 1621, -- Executed in the 21st of June 1621 for rebelling against Emperor Ferdinand II; only 10 years later it would be allowed to take his head from public display and be buried
	ViolentDeath = true
})

DefineCharacter("Jan Jesenius", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
	Name = "Jan", -- Physician and professor of Prague's Charles University who was executed for rebelling against Emperor Ferdinand II
	ExtraName = "Jesenius",
	Gender = "male",
	Type = "unit-teuton-priest", -- should be something else
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	DeathYear = 1621, -- Executed in the 21st of June 1621 for rebelling against Emperor Ferdinand II; only 10 years later it would be allowed to take his head from public display and be buried
	ViolentDeath = true
})

DefineCharacter("Mydlář", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
	Name = "Mydlář", -- Executioner who killed the Czech lords that had rebelled against Emperor Ferdinand II
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1621 -- Executed the Czech lords in 21st of June 1621
})

DefineCharacter("Humprecht Černín of Chudenice", { -- Source: Alena Ježková, "77 Prague Legends", 2006, p. 94.
	Name = "Humprecht", -- Imperial envoy to Venice
	ExtraName = "Černín of Chudenice",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "slav",
	ProvinceOfOrigin = "Bohemia", -- presumably
	Year = 1669 -- Had the Černín Palace built in Prague for him in 1669
})
