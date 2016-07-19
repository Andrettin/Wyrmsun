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

DefineSpeciesOrder("carnivora", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180539
	Name = "Carnivora",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria"
})

DefineSpeciesFamily("amphicyonidae", { -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=41266
	Name = "Amphicyonidae",
	Order = "carnivora",
	Suborder = "caniformia"
})

DefineSpeciesFamily("nimravidae", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=41036
	Name = "Nimravidae",
	Order = "carnivora",
	Suborder = "feliformia"
})

DefineSpeciesGenus("amphicyon", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 18.
	Name = "Amphicyon",
	Family = "amphicyonidae", -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=41271
	Subfamily = "amphicyoninae" -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=41271
})

DefineSpeciesGenus("nimravus", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=41043 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1067195
	Name = "Nimravus",
	Family = "nimravidae",
	Subfamily = "nimravinae"
})

DefineSpecies("amphicyon-major", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 18.
	Name = "Amphicyon",
	Genus = "amphicyon",
	Species = "major",
	Homeworld = "Earth",
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes"},
	Era = "miocene", -- Middle Aragonian
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("bear", {
	Name = "Bear",
	Homeworld = "Earth",
	EvolvesFrom = {"amphicyon-major", "hemicyon", "miacis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("chapalmalania", {
	Name = "Chapalmalania",
	Homeworld = "Earth",
	EvolvesFrom = {"amphicyon-major", "hemicyon", "miacis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hyena", {
	Name = "Hyena",
	Homeworld = "Earth",
	EvolvesFrom = {"amphicyon-major", "hemicyon", "miacis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("nimravus", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=41043 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1067195
	Name = "Nimravus",
	Genus = "nimravus",
	Homeworld = "Earth",
--	EvolvesFrom = {"amphicyon-major", "hemicyon", "miacis"},
	EvolvesFrom = {"hemicyon", "miacis"},
	Era = "eocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling carnivore
})

DefineSpecies("raccoon", {
	Name = "Raccoon",
	Homeworld = "Earth",
	EvolvesFrom = {"amphicyon-major", "hemicyon", "miacis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("gnoll", {
	Name = "Gnoll",
	Homeworld = "Alfheim",
	EvolvesFrom = {"amphicyon-major", "hemicyon", "miacis"}, -- common ancestor with hyenas
	Sapient = true
})
