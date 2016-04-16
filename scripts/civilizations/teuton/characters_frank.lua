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

DefineCharacter("Clovis", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 97, 99.
	Name = "Clovis", -- Frankish king and husband of Clothilda (daughter of the Burgundian king Chilperic); converted to Catholic Christianity
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
--	ProvinceOfOrigin = "?",
	DeathYear = 511 -- died
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

DefineCharacter("Dagobert", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	Name = "Dagobert", -- kinsman of Edwin of Deira's wife
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	Faction = "Francia",
	ProvinceOfOrigin = "France", -- possibly
	DateReferenceCharacter = "Edwin", -- contemporary of Edwin of Deira
	HistoricalTitles = {
		"head-of-state", 0, 0, "teuton", "Francia" -- king of the Franks as Dagobert I
	}
})
