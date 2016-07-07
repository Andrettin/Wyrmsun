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

DefineSpeciesFamily("felidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180580
	Name = "Felidae",
	Order = "carnivora",
	Suborder = "feliformia"
})

DefineSpecies("proailurus", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=41069 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1340242
	Name = "Proailurus",
	Family = "felidae",
	Genus = "proailurus",
	Homeworld = "Earth",
	EvolvesFrom = {"nimravus"}, -- possibly, since Nimravus is an earlier feliform
	Era = "oligocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling carnivore-omnivore
	-- likely ancestor of sabertooths and modern cats; Source: http://www.wildworldvisuals.com/product/proailurus/
})

DefineSpecies("lion", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=183803
	Name = "Lion",
	Family = "felidae",
	Subfamily = "pantherinae",
	Genus = "panthera",
	Species = "leo",
	Homeworld = "Earth",
	EvolvesFrom = {"proailurus"}, -- possibly, since Proailurus is a much earlier felid
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("sabertooth", {
	Name = "Sabertooth",
	Homeworld = "Earth",
	EvolvesFrom = {"proailurus"}, -- possibly, since Proailurus is a much earlier felid
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("tiger", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=183805
	Name = "Tiger",
	Family = "felidae",
	Subfamily = "pantherinae",
	Genus = "panthera",
	Species = "tigris",
	Homeworld = "Earth",
	EvolvesFrom = {"proailurus"}, -- possibly, since Proailurus is a much earlier felid
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})
