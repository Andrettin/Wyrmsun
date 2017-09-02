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

DefineSpeciesFamily("cervidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180693
	Name = "Cervidae",
	Order = "artiodactyla"
})

DefineSpeciesGenus("cervus", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180694
	Name = "Cervus",
	Family = "cervidae",
	Subfamily = "cervinae"
})

DefineSpeciesGenus("heteroprox", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 62-63.
	Name = "Heteroprox",
	Family = "cervidae"
})

DefineSpeciesGenus("procervulus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 62-63.
	Name = "Procervulus",
	Family = "cervidae"
})

DefineSpecies("heteroprox-moralesi", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 62-63.
	Name = "Heteroprox", -- Heteroprox moralesi
	Genus = "heteroprox",
	Species = "moralesi",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"diacodexis"},
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 80cm shoulder height
	-- lived in Spain
	-- had large upper canine teeth
})

DefineSpecies("procervulus-dichotomus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 62-63.
	Name = "Procervulus", -- Procervulus dichotomus
	Genus = "procervulus",
	Species = "dichotomus",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"diacodexis"},
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 55cm shoulder height
	-- lived in Europe
})

DefineSpecies("deer", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180695
	Name = "Deer", -- Red Deer
	Genus = "cervus",
	Species = "elaphus",
	Homeworld = "earth",
	EvolvesFrom = {"heteroprox-moralesi", "procervulus-dichotomus"}, -- earlier cervids
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})
