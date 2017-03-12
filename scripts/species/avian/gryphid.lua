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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineSpeciesFamily("gryphidae", {
	Name = "Gryphidae",
	Order = "accipitriformes"
})

DefineSpeciesGenus("gryphus", {
	Name = "Gryphus", -- "gryphon" in Latin
	CommonName = "Gryphon",
	Family = "gryphidae"
})

DefineSpeciesGenus("hippogryphus", {
	Name = "Hippogryphus", -- rendering of "hippogryph" in Latin
	CommonName = "Hippogryph",
	Family = "gryphidae"
})

DefineSpecies("gryphon", {
	Name = "Gryphon",
	Genus = "gryphus",
	Species = "leo", -- "lion" in Latin
	Homeworld = "Nidavellir",
	Terrains = {"dry-mud", "mud", "flamefood-tree", "rock"}, -- should be dark dirt instead of dry mud and mud
	EvolvesFrom = {"hoatzin"}, -- the Gryphon has a common ancestor with eagles
	Era = "holocene",
	ChildUpgrade = "upgrade-gryphon-child"
	-- in mythology, a gryphon is half-eagle and half-lion; but in the Wyrmsun universe, it is entirely avian, although with the body built like a gryphon
})

DefineSpecies("hippogryph", {
	Name = "Hippogryph",
	Genus = "hippogryphus",
	Species = "equus", -- "horse" in Latin (the "horse" element is already present in the "hippo" of the genus, but since there it is Greek and here Latin, it doesn't look too repetitive)
	Homeworld = "Alfheim",
	Terrains = {"grass", "dirt", "fairlimbed-tree", "rock"},
	EvolvesFrom = {"hoatzin"}, -- the Hippogryph has a common ancestor with eagles
	Era = "holocene",
	ChildUpgrade = "upgrade-gryphon-child"
	-- in mythology, a hippogryph is half-eagle and half-horse; but in the Wyrmsun universe, it is entirely avian, although with the body built like an hippogryph
})
