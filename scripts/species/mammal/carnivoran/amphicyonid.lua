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

DefineSpeciesFamily("amphicyonidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, 32-33, 42-43.
	Name = "Amphicyonidae",
	Order = "carnivora",
	Suborder = "caniformia" -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=41266
})

DefineSpeciesGenus("amphicyon", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 18, 42-43.
	Name = "Amphicyon",
	Family = "amphicyonidae", -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=41271
	Subfamily = "amphicyoninae" -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=41271
})

DefineSpeciesGenus("daphoenodon", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 42.
	Name = "Daphoenodon",
	Family = "amphicyonidae"
})

DefineSpeciesGenus("magericyon", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 43.
	Name = "Magericyon",
	Family = "amphicyonidae"
})

DefineSpecies("amphicyon-giganteus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 42.
	Name = "Giant Amphicyon", -- Amphicyon giganteus
	Genus = "amphicyon",
	Species = "giganteus",
	Homeworld = "Earth",
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes"},
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- weighted more than 200 kg
	-- inhabited Eurasia
})

DefineSpecies("amphicyon-major", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 18, 42-43.
	Name = "Amphicyon", -- Amphicyon major
	Genus = "amphicyon",
	Species = "major",
	Homeworld = "Earth",
	Environments = {"plains"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes"},
	Era = "miocene", -- Middle and Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 90 cm shoulder height
	-- about the same size as a brown bear
	-- was primarily a hunter, but also ate carrion
	-- lived in environments with a lot of vegetation, but not in dense woodlands
	-- inhabited Eurasia
})

DefineSpecies("daphoenodon-superbus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 42.
	Name = "Daphoenodon", -- Daphoenodon superbus
	Genus = "daphoenodon",
	Species = "superbus",
	Homeworld = "Earth",
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes"},
	Era = "miocene", -- Lower Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- had the size of a wolf
	-- adapted for running
})

DefineSpecies("magericyon-anceps", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 43.
	Name = "Magericyon", -- Magericyon anceps
	Genus = "magericyon",
	Species = "anceps", -- "cutting" in Latin
	Homeworld = "Earth",
	Environments = {"plains"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes"},
	Era = "miocene", -- Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 78 cm shoulder height
	-- inhabited Spain
	-- specialized hunter
})

