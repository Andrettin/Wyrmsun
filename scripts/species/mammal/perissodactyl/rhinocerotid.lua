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

DefineSpeciesFamily("rhinocerotidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Rhinocerotidae",
	Order = "perissodactyla"
})

DefineSpeciesGenus("aceratherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 54-55.
	Name = "Aceratherium",
	Family = "rhinocerotidae"
})

DefineSpeciesGenus("hispanotherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 18, 54-55.
	Name = "Hispanotherium",
	Family = "rhinocerotidae"
})

DefineSpeciesGenus("rhinoceros", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=624934
	Name = "Rhinoceros",
	Family = "rhinocerotidae"
})

DefineSpecies("aceratherium-incisivum", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 54-55.
	Name = "Aceratherium", -- Aceratherium incisivum
	Genus = "aceratherium",
	Species = "incisivum",
	Homeworld = "Earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"palaeotherium"},
	Era = "miocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- lived in Western Europe
	-- 120cm shoulder height
	-- adapted to eat soft vegetals like bush leaves and fruits, but could also eat a larger range of vegetals according to the situation
})

DefineSpecies("hispanotherium-matritense", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 18, 54-55.
	Name = "Hispanotherium", -- Madrilenian Hispanotherium
	Genus = "hispanotherium",
	Species = "matritense",
	Homeworld = "Earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"palaeotherium"},
	Era = "miocene", -- Middle and Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- dwelled in open environments which possessed few trees
	-- lived in Western Europe, Turkey and China
	-- 100cm shoulder height
	-- its teeth were adapted to eat hard vegetable matter
	-- adapted to running and to open and dry spaces
})

DefineSpecies("rhinoceros-unicornis", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=625005
	Name = "Rhinoceros", -- One-Horned Rhinoceros
	Genus = "rhinoceros",
	Species = "unicornis",
	Homeworld = "Earth",
	EvolvesFrom = {"aceratherium-incisivum", "hispanotherium-matritense"}, -- earlier Rhinocerotids
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

