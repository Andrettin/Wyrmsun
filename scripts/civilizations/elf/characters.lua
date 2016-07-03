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

DefineCharacter("Arawn", { -- Arawn was king of the otherworld Annwn in Welsh legends; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 10, 119-120.
	Name = "Arawn",
	Gender = "male",
	Type = "unit-elven-swordsman",
	Civilization = "elf",
	Faction = "Annwn",
--	ProvinceOfOrigin = "Annwn",
	HistoricalTitles = {
--		"head-of-state", 0, 0, "elf", "Annwn" -- king of Annwn
	}
})

DefineCharacter("Hafgan", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 11.
	Name = "Hafgan",
	Gender = "male",
	Type = "unit-elven-swordsman",
	Civilization = "elf",
	Faction = "Annwn",
--	ProvinceOfOrigin = "Annwn"
	-- king in Annwn who opposed Arawn
})

DefineCharacter("Argante", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 90.
	Name = "Argante", -- Elven Queen whom King Arthur met; described as beautiful
	Gender = "female",
	Type = "unit-elven-swordsman",
	Civilization = "elf",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})
