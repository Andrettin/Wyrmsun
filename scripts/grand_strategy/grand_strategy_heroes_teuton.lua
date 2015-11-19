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
--      grand_strategy_factions.lua - Defines the grand strategy factions.
--
--      (c) Copyright 2015 by Andrettin
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

DefineGrandStrategyHero("Ariovistus", {
	Name = "Ariovistus",
	Gender = "male",
	DefaultType = "unit-suebi-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Brandenburg",
	Year = -71, -- Ariovistus invades Gaul in 71 BC
	DeathYear = -58 -- Ariovistus beaten by Caesar in 58 BC
})

DefineGrandStrategyHero("Marbod", {
	Name = "Marbod",
	DefaultType = "unit-hero-marbod",
	Civilization = "teuton",
	ProvinceOfOrigin = "Brandenburg",
	Year = -9, -- Marbod, king of the Suebic tribe of the Marcomanni, conquers Bohemia in 9 BC
	DeathYear = 19 + 15 -- Marbod deposed in 19 AD; give +15 years of life
})

-- personnages from the Volsungasaga, presumed Teuton since Sigurd was a Frank
DefineGrandStrategyHero("Volsung", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3.
	Name = "Volsung",
	Gender = "male",
	DefaultType = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineGrandStrategyHero("Signy", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, pp. 2-3.
	Name = "Signy",
	Gender = "female",
	DefaultType = "unit-teuton-archer",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
	Father = "Volsung"
	-- wedded to Siggeir
})

DefineGrandStrategyHero("Siggeir", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, pp. 2-3.
	Name = "Siggeir",
	Gender = "male",
	DefaultType = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
	-- wedded to Signy
})

DefineGrandStrategyHero("Siegmund", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3.
	Name = "Siegmund", -- also known as Sigmund in the Norse myths; tenth and youngest son of Volsung
	Gender = "male",
	DefaultType = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Volsung"
})

DefineGrandStrategyHero("Sieglind", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94.
	Name = "Sieglind",
	Gender = "female",
	DefaultType = "unit-teuton-archer",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineGrandStrategyHero("Sinfiotli", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3.
	Name = "Sinfiotli", -- born out of the incestuous relationship between Siegmund and his sister Signy
	Gender = "male",
	DefaultType = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Siegmund",
	Mother = "Signy"
})

DefineGrandStrategyHero("Siegfried", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94.
	Name = "Siegfried", -- Son of Siegmund and Sieglind; Gudrun's husband
	Gender = "male",
	DefaultType = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Siegmund",
	Mother = "Sieglind"
})
