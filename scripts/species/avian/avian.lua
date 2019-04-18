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

DefineSpecies("archaeopteryx", {
	Name = "Archaeopteryx",
	Homeworld = "earth",
	EvolvesFrom = {"compsognathus", "deinonychus", "saltopus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("gallimimus", {
	Name = "Gallimimus",
	Homeworld = "earth",
	EvolvesFrom = {"compsognathus", "deinonychus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("ichthyornis", {
	Name = "Ichthyornis",
	Homeworld = "earth",
	EvolvesFrom = {"archaeopteryx", "gallimimus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("presbyornis", {
	Name = "Presbyornis",
	Homeworld = "earth",
	EvolvesFrom = {"archaeopteryx", "gallimimus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hoatzin", {
	Name = "Hoatzin",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("bald-eagle", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=175420
	Name = "Eagle", -- Bald Eagle
	Category = "haliaeetus",
	ScientificName = "Haliaeetus leucocephalus",
	Homeworld = "earth",
--	Terrains = {"grass", "dirt", "pine-tree", "rock"}, -- correct?
	EvolvesFrom = {"hoatzin"},
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("bird", {
	Name = "Bird",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "pine-tree", "rock", "shallow-water", "dry-mud", "mud", "snow", "ice"}, -- correct?
	EvolvesFrom = {"ichthyornis", "presbyornis"}, -- seems sensible, given the songbird is set to descend from these
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("crow", {
	Name = "Crow",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "pine-tree", "rock"}, -- correct?
	EvolvesFrom = {"ichthyornis", "presbyornis"}, -- seems sensible, given the songbird is set to descend from these
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("diatryma", {
	Name = "Diatryma",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("duck", {
	Name = "Duck",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("ostrich", {
	Name = "Ostrich",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("owl", {
	Name = "Owl",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("parrot", {
	Name = "Parrot",
	Homeworld = "earth",
	EvolvesFrom = {"hoatzin"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("passenger-pigeon", {
	Name = "Passenger Pigeon",
	Homeworld = "earth",
	EvolvesFrom = {"hoatzin"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("pelican", {
	Name = "Pelican",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("phorusrhacus", {
	Name = "Phorusrhacus",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("songbird", {
	Name = "Songbird",
	Homeworld = "earth",
	EvolvesFrom = {"ichthyornis", "presbyornis"},
	ChildUpgrade = "upgrade-child"
})
