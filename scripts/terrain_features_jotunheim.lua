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
--      (c) Copyright 2017-2018 by Andrettin
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

DefineTerrainFeature("forest-of-thelien", { -- from Battle for Wesnoth: Son of the Black–Eye
	Name = "Forest of Thelien",
	TerrainType = "flamefood-tree",
	World = "jotunheim",
	CulturalNames = {
		"orc", "Forest of Thelien"
	}
})

DefineTerrainFeature("green-forest", { -- from Battle for Wesnoth: Son of the Black–Eye
	Name = "Green Forest",
	TerrainType = "flamefood-tree",
	World = "jotunheim",
	CulturalNames = {
		"orc", "Green Forest"
	}
})

DefineTerrainFeature("hnitbjorg", { -- mountain in Jotunheim in Norse mythology; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 99.
	Name = "Hnitbjorg",
	TerrainType = "rock", -- mountain
	World = "jotunheim",
	CulturalNames = {
		"ettin", "Hnitbjorg" -- "Hnitbjörg"
	}
})

DefineTerrainFeature("lyfjaberg", { -- mountain next to Menglad's hall in Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 247.
	Name = "Lyfjaberg",
	TerrainType = "rock", -- mountain
	World = "jotunheim",
	CulturalNames = {
		"ettin", "Lyfjaberg" -- name means "Hill of Healing"
	}
})

DefineTerrainFeature("mountains-of-haag", { -- from Battle for Wesnoth: Son of the Black–Eye
	Name = "Mountains of Haag",
	TerrainType = "rock",
	World = "jotunheim",
	Color = {128, 144, 176},
	CulturalNames = {
		"ettin", "Mountains of Haag",
		"orc", "Mountains of Haag"
	}
})

DefineTerrainFeature("silent-forest", { -- from Battle for Wesnoth: Son of the Black–Eye
	Name = "Silent Forest",
	TerrainType = "flamefood-tree",
	World = "jotunheim",
	CulturalNames = {
		"orc", "Silent Forest"
	}
})
