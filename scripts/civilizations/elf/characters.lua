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
--      (c) Copyright 2015-2019 by Andrettin
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

DefineCharacter("arawn", { -- Arawn was king of the otherworld Annwn in Welsh legends; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 10, 16, 119-120.
	Name = "Arawn",
	Gender = "male",
	Type = "unit-elven-swordsman", -- should be a rider
	Civilization = "elf",
	Faction = "annwn",
	Trait = "upgrade-wise",
	HistoricalTitles = {
		"head-of-state", 0, 0, "annwn" -- king of Annwn
	}
	-- wore gray-brown clothing when hunting, along with a hunting horn hanging over his neck
})

DefineCharacter("hafgan", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 11.
	Name = "Hafgan",
	Gender = "male",
	Type = "unit-elven-swordsman",
	Civilization = "elf",
	Faction = "annwn"
	-- king in Annwn who opposed Arawn
})

DefineCharacter("volund", { -- elven smith from Norse mythology; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 74-75.
	Name = "Volund", -- "Völundr"
	AlternateNames = {
		"Velent", -- "Vélent"; Völundr's name in the Þiðreks Saga; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 77.
		"Wayland", -- Völundr's English name; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 74.
		"Weland", -- Old English equivalent to Old Norse Völund; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 118; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 77.
		"Wieland" -- Völundr's German name; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 74-75.
	},
	Gender = "male",
	Type = "unit-elven-swordsman", -- elven smith
	Civilization = "elf",
	Faction = "ulfdalir"
})

DefineCharacter("widia", { -- son of Weland (Völund); Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, pp. 113, 118.
	Name = "Widia",
	Gender = "male",
	Type = "unit-elven-swordsman",
	Civilization = "elf",
	Faction = "ulfdalir",
	Father = "volund"
})

DefineCharacter("argante", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 90.
	Name = "Argante", -- elven queen whom King Arthur met; described as beautiful
	Gender = "female",
	Type = "unit-elven-swordsman",
	Civilization = "elf"
})
