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

DefineCharacter("snio-the-old", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	Name = "Snio",
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "finnish", -- presumably
	ProvinceOfOrigin = "Finland"
})

DefineCharacter("drisa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	Name = "Drisa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "finnish", -- presumably
	ProvinceOfOrigin = "Finland",
	Father = "snio-the-old"
})

DefineCharacter("hulda", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	Name = "Hulda",
	Gender = "female",
	Type = "unit-teuton-priest",
	Civilization = "finnish", -- presumably
	ProvinceOfOrigin = "Finland",
	DateReferenceCharacter = "drisa" -- placed a charm on Vanland Yngling for Drisa
})

DefineCharacter("froste", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 233.
	Name = "Froste",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "finnish", -- presumably
	ProvinceOfOrigin = "Finland",
	HistoricalTitles = {
		"head-of-state", 0, 0, "finnish", "fenni-tribe" -- he was chieftain over the Finns, and the Fenni tribe seems like a fair enough representation of that
	}
})

DefineCharacter("loge", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 233.
	Name = "Loge",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "finnish", -- presumably
	ProvinceOfOrigin = "Finland",
	Father = "froste"
})

