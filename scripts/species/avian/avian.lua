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
--      (c) Copyright 2016-2020 by Andrettin
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

DefineSpeciesOrder("accipitriformes", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=823961
	Name = "Accipitriformes",
	Class = "aves"
})

DefineSpeciesFamily("accipitridae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=175280
	Name = "Accipitridae",
	Order = "accipitriformes"
})

DefineSpeciesGenus("haliaeetus", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=175418
	Name = "Haliaeetus",
	Family = "accipitridae"
})

DefineSpecies("archaeopteryx", {
	Name = "Archaeopteryx",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"compsognathus", "deinonychus", "saltopus"}
})

DefineSpecies("gallimimus", {
	Name = "Gallimimus",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"compsognathus", "deinonychus"}
})

DefineSpecies("ichthyornis", {
	Name = "Ichthyornis",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"archaeopteryx", "gallimimus"}
})

DefineSpecies("presbyornis", {
	Name = "Presbyornis",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"archaeopteryx", "gallimimus"}
})

DefineSpecies("hoatzin", {
	Name = "Hoatzin",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"}
})

DefineSpecies("bald-eagle", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=175420
	Name = "Eagle", -- Bald Eagle
	Genus = "haliaeetus",
	Species = "leucocephalus",
	Homeworld = "earth",
--	Terrains = {"grass", "dirt", "pine-tree", "rock"}, -- correct?
	EvolvesFrom = {"hoatzin"},
	Era = "holocene"
})

DefineSpecies("bird", {
	Name = "Bird",
	Supertaxon = "aves",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "pine-tree", "rock", "shallow-water", "dry-mud", "mud", "snow", "ice"}, -- correct?
	EvolvesFrom = {"ichthyornis", "presbyornis"} -- seems sensible, given the songbird is set to descend from these
})

DefineSpecies("crow", {
	Name = "Crow",
	Supertaxon = "aves",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "pine-tree", "rock"}, -- correct?
	EvolvesFrom = {"ichthyornis", "presbyornis"} -- seems sensible, given the songbird is set to descend from these
})

DefineSpecies("diatryma", {
	Name = "Diatryma",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"}
})

DefineSpecies("duck", {
	Name = "Duck",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"}
})

DefineSpecies("ostrich", {
	Name = "Ostrich",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"}
})

DefineSpecies("owl", {
	Name = "Owl",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"}
})

DefineSpecies("parrot", {
	Name = "Parrot",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"hoatzin"}
})

DefineSpecies("passenger-pigeon", {
	Name = "Passenger Pigeon",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"hoatzin"}
})

DefineSpecies("pelican", {
	Name = "Pelican",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"}
})

DefineSpecies("phorusrhacus", {
	Name = "Phorusrhacus",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"}
})

DefineSpecies("roc", {
	Name = "Roc",
	Supertaxon = "aves",
	Homeworld = "jotunheim",
	EvolvesFrom = {"hoatzin"}, -- the Roc has a common ancestor with eagles
	Era = "holocene"
})

DefineSpecies("songbird", {
	Name = "Songbird",
	Supertaxon = "aves",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"}
})

Load("scripts/species/avian/gryphid.lua") -- mythical gryphons
