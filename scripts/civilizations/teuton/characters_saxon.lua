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

DefineCharacter("geirthiof", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 244.
	Name = "Geirthiof",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- king
	Civilization = "teuton",
	ProvinceOfOrigin = "Holstein", -- correct? was from "Saxonland"
	-- Adils Yngling went on a viking expedition to raid Saxonland when Geirthiof was king there
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "saxon-tribe" -- was king of "Saxonland"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "saxon-tribe") then
			return true
		end
		return false
	end
	-- married to Alof the Great
})

DefineCharacter("alof-the-great", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 244.
	Name = "Alof",
	ExtraName = "the Great",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton",
	Faction = "saxon-tribe",
	ProvinceOfOrigin = "Holstein", -- correct? was from "Saxonland"
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "saxon-tribe") then
			return true
		end
		return false
	end
	-- married to Geirthiof
})

DefineCharacter("yrsa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 244-245.
	Name = "Yrsa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton",
	Faction = "saxon-tribe",
	ProvinceOfOrigin = "Holstein", -- correct? was from "Saxonland"
	Father = "helge-skjoldung", 
	Mother = "alof-the-great", 
	Trait = "upgrade-intelligent", -- described as intelligent, as speaking well and being in all respects well behaved
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "saxon-tribe") then
			return true
		end
		return false
	end
	-- captured during a viking expedition led by Adils Yngling (king of Sweden), and then taken to Sweden, where she was married to Adils and became queen; later captured by king Helge of Denmark during his invasion of Sweden and married to him
})

DefineCharacter("rolf-krake-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 244-245.
	Name = "Rolf", -- placed here (despite being Norse) because his mother is Saxon, and the Saxon characters are loaded after the Norse ones
	ExtraName = "Krake",
	FamilyName = "Skjoldung", -- correct?
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand",
	Father = "helge-skjoldung",
	Mother = "yrsa",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norse", "dane-tribe"
	}
})

DefineCharacter("widukind", { -- Saxon leader who resisted Charlemagne's forces from 772 to 802; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 603.
	Name = "Widukind",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- chieftain
	Civilization = "teuton",
	Faction = "saxon-tribe",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "saxon-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("gottschalk", { -- 9th century Saxon monk; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 605.
	Name = "Gottschalk",
	Gender = "male",
	Type = "unit-teuton-priest", -- monk
	Civilization = "teuton",
	Faction = "saxony",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "saxony") then
			return true
		end
		return false
	end
})

--[[
DefineCharacter("henry-of-saxony", { -- Source: Susan D. Fuller, "Pagan Charms in Tenth-Century Saxony? The Function of the Merseburg Charms", 1909, pp. 166-167.
	Name = "Henry",
	ExtraName = "of Saxony", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-knight-lord", -- noble, and during his reign horses were made a main element of the Saxon military; duke
	Civilization = "teuton",
	ProvinceOfOrigin = "Hanover", -- correct?
	Year = 919, -- reign began
	DeathYear = 936, -- reign ended
	HistoricalTitles = {
		"head-of-state", 919, 936, "teuton", "holy-rome",
		"head-of-state", 919, 936, "teuton", "saxony" -- duke of Saxony (from when until when? here we use the same dates as for his other title)
	}
})
--]]

DefineCharacter("bernhard-of-saxony", { -- duke of Saxony (apparently a contemporary of bishop Thietmar of Merseburg); Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 613.
	Name = "Bernhard",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- duke
	Civilization = "teuton",
	Faction = "saxony",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "saxony") then
			return true
		end
		return false
	end
})

DefineCharacter("thietmar", { -- Saxon bishop of Merseburg; was alive in 1002; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 613.
	Name = "Thietmar",
	Gender = "male",
	Type = "unit-teuton-priest", -- bishop
	Civilization = "teuton",
	Faction = "saxony",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "saxony") then
			return true
		end
		return false
	end
})

