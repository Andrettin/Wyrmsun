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

DefineSpeciesFamily("felidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33; Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180580
	Name = "Felidae",
	Order = "carnivora",
	Suborder = "feliformia"
})

DefineSpeciesGenus("felis", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 46-47.
	Name = "Felis",
	Family = "felidae",
	Subfamily = "felinae"
})

DefineSpeciesGenus("machairodus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 48-49.
	Name = "Machairodus",
	Family = "felidae",
	Subfamily = "machairodontinae"
})

DefineSpeciesGenus("panthera", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180592
	Name = "Panthera",
	CommonName = "Panther",
	Family = "felidae",
	Subfamily = "pantherinae"
})

DefineSpeciesGenus("pristinosmilus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 48-49.
	Name = "Pristinosmilus",
	Family = "felidae",
	Subfamily = "machairodontinae"
})

DefineSpeciesGenus("proailurus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 46.
	Name = "Proailurus",
	Family = "felidae"
})

DefineSpeciesGenus("pseudaelurus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 46, 48.
	Name = "Pseudaelurus",
	Family = "felidae",
	Subfamily = "machairodontinae"
})

DefineSpeciesGenus("schizaelurus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 46-47.
	Name = "Schizaelurus",
	Family = "felidae",
	Subfamily = "felinae"
})

DefineSpecies("proailurus-lemanensis", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 46.
	Name = "Proailurus", -- Proailurus lemanensis
	Genus = "proailurus",
	Species = "lemanensis",
	Homeworld = "Earth",
	EvolvesFrom = {"nimravus"}, -- earlier feliform
	Era = "oligocene", -- Upper Oligocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- first known felid
	-- had the size of a small lynx
})

DefineSpecies("felis-attica", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 46-47.
	Name = "Felis", -- Felis attica
	Genus = "felis",
	Species = "attica",
	Homeworld = "Earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"proailurus-lemanensis"}, -- earlier felid
	Era = "miocene", -- Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 35 cm shoulder height
	-- lived in Eurasia
	-- as fast and agile as a mountain cat
})

DefineSpecies("machairodus-aphanistus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 48-49.
	Name = "Machairodus", -- Machairodus aphanistus
	Genus = "machairodus",
	Species = "aphanistus",
	Homeworld = "Earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"proailurus-lemanensis"}, -- earlier felid
	Era = "miocene", -- Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 100 cm shoulder height
	-- lived in Eurasia and Africa
	-- the size of a lion
	-- his size and strength made him the predominant predator of his environment and era
	-- high great weight reduced his climbing ability
})

DefineSpecies("pristinosmilus-ogygia", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 48-49.
	Name = "Pristinosmilus", -- Pristinosmilus ogygia
	Genus = "pristinosmilus",
	Species = "ogygia",
	Homeworld = "Earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"proailurus-lemanensis"}, -- earlier felid
	Era = "miocene", -- Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 60 cm shoulder height
	-- lived in Eurasia
	-- had the size similar to that of a modern leopard
	-- efficient climber
	-- hunted his prey on land but climbed up trees to escape from the threat of larger predators
})

DefineSpecies("pseudaelurus-quadridentatus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 46, 48.
	Name = "Pseudaelurus", -- Pseudaelurus quadridentatus
	Genus = "pseudaelurus",
	Species = "quadridentatus",
	Homeworld = "Earth",
	EvolvesFrom = {"proailurus-lemanensis"}, -- earlier felid
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- first known machairodontine
	-- lived in Europe
	-- somewhat smaller than a puma
	-- possessed compressed canine teeth
})

DefineSpecies("schizaelurus-lorteti", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 46-47.
	Name = "Schizaelurus", -- Schizaelurus lorteti
	Genus = "schizaelurus",
	Species = "lorteti",
	Homeworld = "Earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"proailurus-lemanensis"}, -- earlier felid
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- had the size of a lynx
	-- 45 cm shoulder height
	-- likely inhabited areas with abundant vegetation
	-- lived in Eurasia
})

DefineSpecies("lion", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=183803
	Name = "Lion",
	Genus = "panthera",
	Species = "leo",
	Homeworld = "Earth",
	EvolvesFrom = {"felis-attica", "schizaelurus-lorteti"}, -- earlier felines (the pantherinae originated from the felinae)
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("sabertooth", {
	Name = "Sabertooth",
	Homeworld = "Earth",
	EvolvesFrom = {"proailurus-lemanensis"}, -- earlier felid
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("tiger", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=183805
	Name = "Tiger",
	Genus = "panthera",
	Species = "tigris",
	Homeworld = "Earth",
	EvolvesFrom = {"felis-attica", "schizaelurus-lorteti"}, -- earlier felines (the pantherinae originated from the felinae)
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})
