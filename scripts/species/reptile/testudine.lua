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
--      (c) Copyright 2016-2018 by Andrettin
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

DefineSpeciesOrder("testudines", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=56475
	Name = "Testudines",
	Class = "reptilia"
})

DefineSpeciesFamily("testudinidae", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=37739
	Name = "Testudinidae",
	Order = "testudines",
	Suborder = "cryptodira",
	Superfamily = "testudinoidea"
})

DefineSpeciesGenus("cheirogaster", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 35; Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=268039
	Name = "Cheirogaster",
--	Order = "testudines"
})

DefineSpeciesGenus("geochelone", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 18; Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=173853
	Name = "Geochelone",
	Family = "testudinidae"
})

DefineSpecies("cheirogaster-bolivari", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 18, 35.
	Name = "Cheirogaster", -- Giant Tortoise
	Genus = "cheirogaster", -- on page 18 the species is given as "Geochelone bolivari" (with a reconstruction being provided), but on page 35 the same reconstruction is assigned to the Cheirogaster genus, of fossils "found in the Bolívar street"; furthermore, in fossilworks.org (http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=268039) there is no entry for a Geochelone bolivari, but there is a Cheirogaster bolivari
	Species = "bolivari",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"pareiasaurus"},
	Era = "miocene", -- Middle Aragonian
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("tortoise", {
	Name = "Tortoise",
	Homeworld = "earth",
	EvolvesFrom = {"cheirogaster-bolivari"}, -- earlier tortoise
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})
