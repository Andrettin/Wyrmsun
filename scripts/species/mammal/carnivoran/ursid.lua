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

DefineSpeciesFamily("ursidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Ursidae",
	Order = "carnivora"
})

DefineSpeciesGenus("hemicyon", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 44-45.
	Name = "Hemicyon",
	Family = "ursidae",
	Subfamily = "hemicyoninae"
})

DefineSpeciesGenus("indarctos", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 44-45.
	Name = "Indarctos",
	Family = "ursidae"
})

DefineSpecies("hemicyon-sansaniense", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 44-45.
	Name = "Hemicyon", -- Hemicyon sansaniense
	Category = "hemicyon",
	ScientificName = "Hemicyon sansaniense",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes"},
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 90 cm shoulder height
	-- inhabited Eurasia
})

DefineSpecies("bear", {
	Name = "Bear",
	Homeworld = "earth",
	EvolvesFrom = {"amphicyon-giganteus", "amphicyon-major", "hemicyon-sansaniense", "miacis"},
	ChildUpgrade = "upgrade-child"
})
