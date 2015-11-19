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

Load("scripts/grand_strategy/grand_strategy_heroes_dwarf.lua")
Load("scripts/grand_strategy/grand_strategy_heroes_germanic.lua")
Load("scripts/grand_strategy/grand_strategy_heroes_goth.lua")
Load("scripts/grand_strategy/grand_strategy_heroes_latin.lua")
Load("scripts/grand_strategy/grand_strategy_heroes_teuton.lua")

-- Gnome heroes

DefineGrandStrategyHero("Pypo", {
	Name = "Pypo",
	Gender = "male",
	DefaultType = "unit-gnomish-recruit",
	Civilization = "gnome",
	ProvinceOfOrigin = "Brown Hills",
	Year = -1,
	DeathYear = 40 -- last we hear of him
})

-- Goblin heroes

DefineGrandStrategyHero("Greebo", {
	Name = "Greebo",
	DefaultType = "unit-hero-greebo",
	Civilization = "goblin"
})

-- Basque heroes

DefineGrandStrategyHero("Gylve", { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
	Name = "Gylve", -- ruled over Scania; contemporary of Voden
	Gender = "male",
	DefaultType = "unit-germanic-warrior",
	Civilization = "basque",
	ProvinceOfOrigin = "Scania",
	Year = -3000 + 12 + (10 * 18),
	DeathYear = -2800 + (30 * 1)
})

-- Hun heroes

DefineGrandStrategyHero("Attila", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 93-94.
	Name = "Attila", -- also known as Atli in Norse myths, in which he married Gudrun
	Gender = "male",
	DefaultType = "unit-teuton-ritter",
	Civilization = "persian", -- should be Hun
--	ProvinceOfOrigin = "?",
	Year = 437, -- invasion of Gundahar's kingdom in 437 AD by Attila's Huns
	DeathYear = 437 + (30 * 1) -- estimated
})
