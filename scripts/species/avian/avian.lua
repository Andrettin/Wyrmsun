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
--      (c) Copyright 2016-2022 by Andrettin
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

DefineSpecies("diatryma", {
	Name = "Diatryma",
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

Load("scripts/species/avian/gryphid.lua") -- mythical gryphons
