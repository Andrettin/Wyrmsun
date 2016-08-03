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

DefineCharacter("Isi", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 81.
	Name = "Isi",
	NameElements = {"word", "egyptian", "noun", "Isi"},
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "egyptian",
--	ProvinceOfOrigin = "Edfu",
	Year = -2460,
	HistoricalTitles = {
--		"governor", -2460, 0, "Edfu" -- governor of the nome of Edfu c. 2460 BC
	}
})

DefineCharacter("Amenofis", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 112-114.
	Name = "Amenofis", -- Amenofis IV of Egypt; took the name of Akhenaton in the sixth year of his reign
	NameElements = {"word", "egyptian", "noun", "Amenofis"},
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "egyptian",
	Year = -1352, -- reign began
	DeathYear = -1338, -- reign end
	Trait = "upgrade-pious", -- described as mystic and authoritarian
	HistoricalTitles = {
--		"head-of-state", -1352, -1338, "egyptian", "Egypt" -- king of Egypt 1352-1338 BC
	}
})

DefineCharacter("Seti", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 90.
	Name = "Seti", -- Seti I of Egypt
	NameElements = {"word", "egyptian", "noun", "Seti"},
	Gender = "male",
	Type = "unit-germanic-warrior",
	Civilization = "egyptian",
	Year = -1303, -- reign began
	DeathYear = -1290, -- reign end
	HistoricalTitles = {
--		"head-of-state", -1303, -1290, "egyptian", "Egypt" -- king of Egypt 1303-1290 BC
	}
	-- was buried in Abydos
})
