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
--      (c) Copyright 2016-2019 by Andrettin
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

DefineCharacter("snio-the-old", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	Name = "Snio",
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "finnish" -- presumably
})

DefineCharacter("drisa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	Name = "Drisa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "finnish", -- presumably
	Father = "snio-the-old"
})

DefineCharacter("hulda", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	Name = "Hulda",
	Gender = "female",
	Type = "unit-teuton-priest",
	Civilization = "finnish" -- presumably
	-- placed a charm on Vanland Yngling for Drisa
})

DefineCharacter("froste", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 233.
	Name = "Froste",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "finnish", -- presumably
	HistoricalTitles = {
		"head-of-state", 0, 0, "fenni-tribe" -- he was chieftain over the Finns, and the Fenni tribe seems like a fair enough representation of that
	}
})

DefineCharacter("skialf", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 233-234.
	Name = "Skialf",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "finnish", -- presumably
	Father = "froste",
	-- Skialf was married to Agne Yngling after he invaded Finland, killed her father and took her and her brother to Sweden
	Quote = "\"How do ye like the high-souled maid,\nWho, with the grim Fate-goddess' aid,\nAvenged her sire? Made Swithiod's king\nThrough air in golden halter swing?\"\n- Thiodolf of Huine"
})

DefineCharacter("loge", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 233.
	Name = "Loge",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "finnish", -- presumably
	Father = "froste"
})

