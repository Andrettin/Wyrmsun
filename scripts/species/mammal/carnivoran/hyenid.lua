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
--      (c) Copyright 2016-2019 by Andrettin
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

DefineSpeciesFamily("hyaenidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33; Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=621756
	Name = "Hyaenidae",
	Order = "carnivora",
	Suborder = "feliformia"
})

DefineSpeciesGenus("protictitherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 39.
	Name = "Protictitherium",
	Family = "hyaenidae"
})

DefineSpecies("protictitherium-crassum", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 39.
	Name = "Protictitherium", -- Protictitherium crassum
	Genus = "protictitherium",
	Species = "crassum",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
--	EvolvesFrom = {"amphicyon", "hemicyon", "miacis"},
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes", "miacis"},
	Era = "miocene", -- Middle and Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 30 cm tall up to the shoulder
	-- lived in Eurasia
	-- a large proportion of its diet was carrion, but also hunted small prey like rodents and lagomorphs
})

DefineSpecies("hyena", {
	Name = "Hyena",
	Homeworld = "earth",
	EvolvesFrom = {"protictitherium-crassum"}, -- earlier hyenid
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("gnoll", {
	Name = "Gnoll",
	Homeworld = "alfheim",
	EvolvesFrom = {"protictitherium-crassum"}, -- common ancestor with hyenas
	Sapient = true
})

