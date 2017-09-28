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

DefineCharacter("ymir", { -- the first frost giant in Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 240, 253; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 58.
	Name = "Ymir",
	AlternateNames = {
		"Aurgelmir" -- other name for Ymir, the first frost giant in Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 240; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 58.
	},
	Gender = "male",
	Type = "unit-ettin",
	Civilization = "ettin" -- frost giant
})

DefineCharacter("geirrod-ettin", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 243; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 90.
	Name = "Geirrod", -- "Geirrøðr"
	Gender = "male",
	Type = "unit-ettin",
	Civilization = "ettin",
	Faction = "geirrodung-clan",
	Date = -1101, -- should be present for Thialfi's scenario
	HistoricalLocations = {
		-1101, "jotunheim", "geirrods-hall"
	}
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

DefineCharacter("hrungnir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 245.
	Name = "Hrungnir",
	Gender = "male",
	Type = "unit-ettin",
	Civilization = "ettin",
	Trait = "upgrade-strong"
})

DefineCharacter("hymir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 245; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 102-105.
	Name = "Hymir",
	Gender = "male",
	Type = "unit-ettin", -- frost giant
	Civilization = "ettin"
})

DefineCharacter("mokkurkalfi", { -- giant made of clay from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 247.
	Name = "Mokkurkalfi",
	Gender = "male",
	Type = "unit-ettin",
	Civilization = "ettin",
	Trait = "upgrade-slow"
})

DefineCharacter("saekmime", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 228.
	Name = "Saekmime", -- "Sækmime"
	Gender = "male",
	Type = "unit-ettin",
	Civilization = "ettin"
})

DefineCharacter("thiazi", { -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 251; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 106-109.
	Name = "Thiazi", -- "Þjazi"
	Gender = "male",
	Type = "unit-ettin",
	Civilization = "ettin"
})

DefineCharacter("thrym", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 251; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 109-112.
	Name = "Thrym", -- "Þrymr"
	Gender = "male",
	Type = "unit-ettin",
	Civilization = "ettin" -- frost giant from Norse mythology
})

DefineCharacter("gerd", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 54-58, 243; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 108-120; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 90-91.
	Name = "Gerd", -- "Gerðr"
	Gender = "female",
	Type = "unit-ettin", -- frost giantess
	Civilization = "ettin",
	Father = "gymir"
})

DefineCharacter("skadi", { -- giantess from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 250; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 52, 106, 109.
	Name = "Skadi", -- "Skaði"
	Gender = "female",
	Type = "unit-ettin",
	Civilization = "ettin",
	Father = "thiazi"
})
