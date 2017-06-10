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

DefineCharacter("aedan-mac-gabrain", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 77, 86.
	Name = "Aedan", -- the king of a kingdom founded in Argyll by Irish settlers
	ExtraName = "mac Gabrain",
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "celt",
	Faction = "argyll",
--	ProvinceOfOrigin = "Highland Scotland",
	Date = 574, -- became king
	-- attacked the Bernicians in 603 AD
	HistoricalTitles = {
		"head-of-state", 574, 0, "celt", "argyll"
	}
})

DefineCharacter("bruide-mac-beli", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 87-88.
	Name = "Bruide",
	ExtraName = "mac Beli";
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "celt",
	Faction = "pict-tribe",
--	ProvinceOfOrigin = "Strathclyde", -- son of the king of Strathclyde
	Date = 672,
	DeathDate = 693, -- died
	HistoricalTitles = {
		"head-of-state", 672, 693, "celt", "pict-tribe" -- became king of the Picts in 672
	}
})

DefineCharacter("dicuil", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 40.
	Name = "Dicuil", -- Irish monk who became notable for his scholarship
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "celt", -- presumably
--	ProvinceOfOrigin = "Leinster", -- correct?
	Date = 825, -- wrote "De Mensura Orbis Terrae"
	AuthoredWorks = {"upgrade-work-de-mensura-orbis-terrae"}
})

Load("scripts/civilizations/celt/characters_briton.lua")
Load("scripts/civilizations/celt/characters_gaul.lua")
