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

DefineCharacter("Chlodio", { -- Source: "Medieval Warfare V.2", 2013, p. 6.
	Name = "Chlodio",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Frank Tribe",
	ProvinceOfOrigin = "Picardy", -- conquered the area around Cambrai at some point (so this likely isn't his province of origin, but it'll do while we don't have better information)
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Frank Tribe" -- Frankish king
	}
})

DefineCharacter("Merovech", { -- Source: "Medieval Warfare V.2", 2013, p. 6.
	Name = "Merovech",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Frank Tribe",
	Father = "Chlodio",
	ProvinceOfOrigin = "Picardy", -- his father conquered the area around Cambrai
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Frank Tribe"
	}
})

DefineCharacter("Clovis Merovingian", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 97, 99; Source: "Medieval Warfare V.2", 2013, p. 6.
	Name = "Clovis", -- Frankish king and husband of Clothilda (daughter of the Burgundian king Chilperic); converted to Catholic Christianity
	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	Father = "Merovech",
	ProvinceOfOrigin = "Picardy", -- his grandfather conquered the area around Cambrai
	Year = 481, -- reign began
	DeathYear = 511, -- died
	HistoricalTitles = {
		"head-of-state", 481, 511, "teuton", "Francia" -- Clovis I
	}
})

DefineCharacter("Bertha", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 79.
	Name = "Bertha", -- Bertha of Paris; wife of Æthelberht of Kent; was either a Merovingian or had family links to them
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton", -- probably a Frank
	Faction = "Francia",
	ProvinceOfOrigin = "France", -- possibly
	DateReferenceCharacter = "Æthelberht"
})

DefineCharacter("Dagobert Merovingian", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81; Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Dagobert", -- kinsman of Edwin of Deira's wife
	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	ProvinceOfOrigin = "France", -- possibly
	DeathYear = 639, -- died
	HistoricalTitles = {
		"head-of-state", 0, 639, "teuton", "Francia" -- king of the Franks as Dagobert I
	}
})

DefineCharacter("Pepin of Herstal", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Pepin",
	ExtraName = "of Herstal",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Austrasia",
	ProvinceOfOrigin = "Liege", -- presumably from Herstal
	Year = 675,
	DeathYear = 714, -- died
	HistoricalTitles = {
		"head-of-government", 675, 0, "teuton", "Austrasia" -- became Mayor of the Palace of Austrasia in 675
	}
})

DefineCharacter("Berchar", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Berchar",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Neustria",
	ProvinceOfOrigin = "France", -- correct?
	DeathYear = 687, -- was defeated in the Battle of Tertry against Pepin of Herstal (Mayor of the Palace of Austrasia) in 687
	HistoricalTitles = {
		"head-of-government", 0, 687, "teuton", "Neustria" -- was Mayor of the Palace of Neustria (presumably) until 687, when he was defeated in the Battle of Tertry
	}
})

DefineCharacter("Charles Martel", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Charles",
	ExtraName = "Martel",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	ProvinceOfOrigin = "Liege", -- correct? his father was presumably from Herstal
	Year = 718, -- term as Mayor of the Palace of Francia began
	DeathYear = 741, -- died
	Father = "Pepin of Herstal",
	HistoricalTitles = {
		"head-of-government", 718, 741, "teuton", "Francia" -- became Mayor of the Palace of Francia from 718 until 741
	}
})

DefineCharacter("Theoderic Merovingian", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Theoderic",
	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	ProvinceOfOrigin = "France", -- correct?
	DeathYear = 737, -- died
	HistoricalTitles = {
		"head-of-state", 0, 737, "teuton", "Francia" -- ruled the Franks as Theoderic IV
	}
})

DefineCharacter("Pepin the Short Carolingian", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Pepin",
	ExtraName = "the Short",
	FamilyName = "Carolingian",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	ProvinceOfOrigin = "Liege", -- correct? his grandfather was presumably from Herstal
	Father = "Charles Martel",
	Year = 741, -- with Charles Martel's death in 741, Francia was split between Pepin, Carloman and Grifo
	DeathYear = 768, -- died
	HistoricalTitles = {
		"head-of-state", 751, 768, "teuton", "Francia" -- became king of the Franks in 751
	}
})

DefineCharacter("Carloman Carolingian", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Carloman",
	FamilyName = "Carolingian",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	ProvinceOfOrigin = "Liege", -- correct? his grandfather was presumably from Herstal
	Father = "Charles Martel",
	Year = 741 -- with Charles Martel's death in 741, Francia was split between Pepin, Carloman and Grifo
})

DefineCharacter("Grifo Carolingian", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Grifo",
	FamilyName = "Carolingian",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	ProvinceOfOrigin = "Liege", -- correct? his grandfather was presumably from Herstal
	Father = "Charles Martel",
	Year = 741 -- with Charles Martel's death in 741, Francia was split between Pepin, Carloman and Grifo
})

DefineCharacter("Drogo Carolingian", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Drogo",
	FamilyName = "Carolingian",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	ProvinceOfOrigin = "Liege", -- correct? his great-grandfather was presumably from Herstal
	Father = "Carloman Carolingian",
	Year = 747 -- two years after 745 his father abdicated and put Drogo in power
})

DefineCharacter("Charles the Great Carolingian", { -- Source: "Medieval Warfare V.2", 2013, pp. 7-9.
	Name = "Charles",
	ExtraName = "the Great",
	FamilyName = "Carolingian",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	ProvinceOfOrigin = "Liege", -- correct? his great-grandfather was presumably from Herstal
	Father = "Pepin the Short Carolingian",
	Year = 748, -- born; he was 66 years old when he died in 814
	DeathYear = 814, -- died of illness on 28 January 814 at Aachen
	HistoricalTitles = {
		"head-of-state", 768, 0, "teuton", "Francia" -- succeeded his father together with Carloman in 768, and became sole ruler of the Franks in 771
	}
})

DefineCharacter("Carloman the Younger Carolingian", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Carloman",
	ExtraName = "the Younger",
	FamilyName = "Carolingian",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	ProvinceOfOrigin = "Liege", -- correct? his great-grandfather was presumably from Herstal
	Father = "Pepin the Short Carolingian",
	Year = 751, -- born (was 20 years old when he died of illness in 771)
	DeathYear = 771 -- died of illness
	-- succeeded his father on the Frankish throne together with Charles in 768
})


DefineCharacter("Louis the Pious Carolingian", { -- Source: "Medieval Warfare V.2", 2013, p. 9.
	Name = "Louis",
	ExtraName = "the Pious",
	FamilyName = "Carolingian",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	ProvinceOfOrigin = "Liege", -- correct? his great-great-grandfather was presumably from Herstal
	Father = "Charles the Great Carolingian",
	Year = 813, -- made co-emperor with his father in 813
	Trait = "upgrade-pious" -- presumably
})
