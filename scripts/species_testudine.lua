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

DefineSpeciesGenus("geochelone", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 18; Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=37740
	Name = "Geochelone",
	Family = "testudinidae"
})

DefineSpecies("geochelone-bolivari", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 18.
	Name = "Geochelone", -- Giant Tortoise
	Genus = "geochelone",
	Species = "bolivari",
	Homeworld = "Earth",
	EvolvesFrom = {"pareiasaurus"},
	Era = "miocene", -- Middle Aragonian
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("tortoise", {
	Name = "Tortoise",
	Homeworld = "Earth",
	EvolvesFrom = {"geochelone-bolivari"}, -- earlier tortoise
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})
