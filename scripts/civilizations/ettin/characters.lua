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

DefineCharacter("geirrod-ettin", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 243; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 90.
	Name = "Geirrod", -- "Geirrøðr"
	Gender = "male",
	Type = "unit-ettin",
	Civilization = "ettin"
})

DefineCharacter("grid", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 243; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 90.
	Name = "Grid", -- "Gríðr"
	Gender = "female",
	Type = "unit-ettin",
	Civilization = "ettin"
	-- giantess who helps Thor and Thialfi against Geirrod in Norse mythology
})

DefineCharacter("gymir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 244; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 90-91.
	Name = "Gymir",
	Gender = "male",
	Type = "unit-ettin", -- frost giant
	Civilization = "ettin"
})

DefineCharacter("hraesvelg", { -- giant who took the form of an eagle in Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 18, 245.
	Name = "Hraesvelg",
	Gender = "male",
	Type = "unit-ettin", -- could be an ettin roc rider
	Civilization = "ettin"
})

DefineCharacter("saekmime", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	Name = "Saekmime", -- "Sækmime"
	Gender = "male",
	Type = "unit-ettin",
	Civilization = "ettin"
})

DefineCharacter("gerd", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 54-58, 243; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 108-120; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 90-91.
	Name = "Gerd", -- "Gerðr"
	Gender = "female",
	Type = "unit-ettin", -- frost giantess
	Civilization = "ettin",
	Father = "gymir"
})
