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

DefineSpeciesOrder("proboscidea", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Proboscidea",
	Class = "mammalia"
})

DefineSpeciesFamily("gomphotheriidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 50.
	Name = "Gomphotheriidae",
	Order = "proboscidea"
})

DefineSpeciesGenus("eritherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 50.
	Name = "Eritherium",
--	Order = "proboscidea"
})

DefineSpeciesGenus("gomphotherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 19, 50-51.
	Name = "Gomphotherium",
	Family = "gomphotheriidae"
})

DefineSpeciesGenus("numidotherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 50.
	Name = "Numidotherium",
--	Order = "proboscidea"
})

DefineSpeciesGenus("tetralophodon", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 50-51.
	Name = "Tetralophodon",
	Family = "gomphotheriidae"
})

DefineSpecies("eritherium-azzouzorum", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 50.
	Name = "Eritherium", -- Eritherium azzouzorum
	Genus = "eritherium",
	Species = "azzouzorum",
	Homeworld = "earth",
	EvolvesFrom = {"chriacus", "hyopsodus", "phenacodus"},
	Era = "paleocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- first known proboscid
	-- lived in Africa
	-- weighted up to 5 kg
})

DefineSpecies("numidotherium-koholense", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 50.
	Name = "Numidotherium", -- Numidotherium koholense
	Genus = "numidotherium",
	Species = "koholense",
	Homeworld = "earth",
	EvolvesFrom = {"eritherium-azzouzorum"}, -- earlier proboscid
	Era = "eocene", -- Middle Eocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- weighted more than 200 kg
})

DefineSpecies("phiomia", {
	Name = "Phiomia",
	Homeworld = "earth",
	EvolvesFrom = {"eritherium-azzouzorum"}, -- earlier proboscid
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("gomphotherium-angustidens", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 19, 50-51.
	Name = "Gomphotherium", -- Gomphotherium angustidens
	Genus = "gomphotherium",
	Species = "angustidens",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"numidotherium-koholense", "phiomia"}, -- earlier proboscids
	Era = "miocene", -- Miocene and Pliocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- grazer
	-- ate soft vegetals
	-- robust, with its mass being comparable to that of an Indian elephant
	-- 2.2m shoulder height
	-- lived in Eurasia, Africa and North America
})

DefineSpecies("tetralophodon-longirostris", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 50-51.
	Name = "Tetralophodon", -- Tetralophodon longirostris
	Genus = "tetralophodon",
	Species = "longirostris",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"numidotherium-koholense", "phiomia"}, -- earlier proboscids
	Era = "miocene", -- Miocene and Pliocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 3m shoulder height
	-- lived in Eurasia and Africa
	-- had teeth adapted to a fibrous diet
})

DefineSpecies("elephant", {
	Name = "Elephant",
	Homeworld = "earth",
	EvolvesFrom = {"phiomia"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("mammoth", {
	Name = "Mammoth",
	Homeworld = "earth",
	EvolvesFrom = {"phiomia"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("platybeledon", {
	Name = "Platybeledon",
	Homeworld = "earth",
	EvolvesFrom = {"phiomia"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

