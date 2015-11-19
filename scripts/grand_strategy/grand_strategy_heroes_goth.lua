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

DefineGrandStrategyHero("Gibica", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 91.
	Name = "Gibica",
	Gender = "male",
	DefaultType = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia", -- place where the Burgundians dwelled before moving to the area of the Palatinate
	Year = 411 - (30 * 1), -- estimated
	DeathYear = 411
})

DefineGrandStrategyHero("Gundahar", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 91-94.
	Name = "Gundahar", -- also known as Gunnar in Norse myths, and as Günter in the Nibelungenlied
	Gender = "male",
	DefaultType = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia", -- place where the Burgundians dwelled before moving to the area of the Palatinate
	Year = 406, -- Gundahar and his father Gibica brought the Burgundians over the Rhine in 406/407 AD
	DeathYear = 437, -- invasion of Gundahar's kingdom in 437 AD by Attila's Huns
	Father = "Gibica"
})

DefineGrandStrategyHero("Gudrun", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94.
	Name = "Gudrun", -- Gundahar's sister in the Norse myths, in which she would first marry Siegfried (Sigurd), and then Attila (Atli); also known as Kriemhild in the Nibelungenlied
	Gender = "female",
	DefaultType = "unit-teuton-archer",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia", -- place where the Burgundians dwelled before moving to the area of the Palatinate
	Year = 406, -- Gundahar and his father Gibica brought the Burgundians over the Rhine in 406/407 AD
	DeathYear = 437, -- invasion of Gundahar's kingdom in 437 AD by Attila's Huns
	Father = "Gibica" -- presumably, since her brother Gundahar was a son of Gibica, and they seem to have been full-blooded siblings
})

DefineGrandStrategyHero("Gundioc", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 94-96.
	Name = "Gundioc", -- Burgundian king after Gundahar; also known as Gunderic
	Gender = "male",
	DefaultType = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Palatinate",
	Year = 437, -- beginning of reign
	DeathYear = 474, -- end of reign
	Father = "Gundahar" -- from Gibica's line (so presumably a child of Gundahar)
})
