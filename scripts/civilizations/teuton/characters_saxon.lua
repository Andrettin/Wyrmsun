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
--      (c) Copyright 2016-2018 by Andrettin
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
	Faction = "saxon-tribe", -- was from "Saxonland"
	-- Adils Yngling went on a viking expedition to raid Saxonland when Geirthiof was king there
	Deities = {"odin", "tyr"},
	HistoricalTitles = {
		"head-of-state", 0, 0, "saxon-tribe" -- was king of "Saxonland"
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
	Faction = "saxon-tribe", -- was from "Saxonland"
	Deities = {"odin", "tyr"},
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
	Faction = "saxon-tribe", -- was from "Saxonland"
	Father = "helge-skjoldung", 
	Mother = "alof-the-great", 
	Children = {"rolf-krake-skjoldung"},
	Trait = "upgrade-intelligent", -- described as intelligent, as speaking well and being in all respects well behaved
	Deities = {"odin", "tyr"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "saxon-tribe") then
			return true
		end
		return false
	end
	-- captured during a viking expedition led by Adils Yngling (king of Sweden), and then taken to Sweden, where she was married to Adils and became queen; later captured by king Helge of Denmark during his invasion of Sweden and married to him
	-- in Beowulf, she was named Yrse, and was the daughter of the Danish king Healfdene, and was married to Onela (apparently the same as Ali of the Upplands from the Heimskringla), a Swede who was a king; Source: Stephen Mitchell, "Beowulf", 2017, p. 5.
})

DefineCharacter("widukind", { -- Saxon leader who resisted Charlemagne's forces from 772 to 802; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 603.
	Name = "Widukind",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- chieftain
	Civilization = "teuton",
	Faction = "saxon-tribe",
	StartDate = 772,
	-- led a Saxon rising in 782; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 176.
	Deities = {"odin", "tyr"},
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
	StartDate = 919, -- reign began
	DeathDate = 936, -- reign ended
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 919, 936, "holy-rome",
		"head-of-state", 919, 936, "saxony" -- duke of Saxony (from when until when? here we use the same dates as for his other title)
	}
})
--]]

DefineCharacter("bernhard-of-saxony", { -- duke of Saxony (apparently a contemporary of bishop Thietmar of Merseburg); Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 613.
	Name = "Bernhard",
	Gender = "male",
	Type = "unit-teuton-heroic-swordsman", -- duke
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

