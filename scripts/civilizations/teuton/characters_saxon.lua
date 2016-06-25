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

DefineCharacter("Geirthiof", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 244.
	Name = "Geirthiof",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Holstein", -- correct? was from "Saxonland"
	DateReferenceCharacter = "Adils Yngling", -- Adils Yngling went on a viking expedition to raid Saxonland when Geirthiof was king there
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Saxon Tribe" -- was king of "Saxonland"
	}
	-- married to Alof the Great
})

DefineCharacter("Alof the Great", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 244.
	Name = "Alof",
	ExtraName = "the Great",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton",
	ProvinceOfOrigin = "Holstein", -- correct? was from "Saxonland"
	DateReferenceCharacter = "Geirthiof" -- married to Geirthiof
})

DefineCharacter("Yrsa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 244-245.
	Name = "Yrsa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton",
	ProvinceOfOrigin = "Holstein", -- correct? was from "Saxonland"
	Father = "Helge Skjoldung", 
	Mother = "Alof the Great", 
	Trait = "upgrade-intelligent" -- described as intelligent, as speaking well and being in all respects well behaved
	-- captured during a viking expedition led by Adils Yngling (king of Sweden), and then taken to Sweden, where she was married to Adils and became queen; later captured by king Helge of Denmark during his invasion of Sweden and married to him
})

DefineCharacter("Rolf Krake Skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 244-245.
	Name = "Rolf Krake", -- placed here (despite being Norse) because his mother is Saxon, and the Saxon characters are loaded after the Norse ones
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "Helge Skjoldung",
	Mother = "Yrsa",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "Dane Tribe"
	}
})

DefineCharacter("Widukind", {
	Name = "Widukind",
	NameElements = {
--		"compound", "prefix", -- ?
		"compound", "suffix", "old-saxon", "noun", "Kind" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Saxon Tribe",
--	ProvinceOfOrigin = ?
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Henry of Saxony", { -- Source: Susan D. Fuller, "Pagan Charms in Tenth-Century Saxony? The Function of the Merseburg Charms", 1909, pp. 166-167.
	Name = "Henry",
	ExtraName = "of Saxony", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-ritter", -- noble, and during his reign horses were made a main element of the Saxon military
	Civilization = "teuton",
	ProvinceOfOrigin = "Hannover", -- correct?
--	Noble = true,
	Year = 919, -- reign began
	DeathYear = 936, -- reign ended
	HistoricalTitles = {
		"head-of-state", 919, 936, "teuton", "Holy Rome",
		"head-of-state", 919, 936, "teuton", "Saxony" -- duke of Saxony (from when until when? here we use the same dates as for his other title)
	}
})
