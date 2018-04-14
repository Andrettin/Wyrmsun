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

DefineSpeciesOrder("carnivora", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33; Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180539
	Name = "Carnivora",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria"
})

DefineSpeciesFamily("eupleridae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Eupleridae",
	Order = "carnivora"
})

DefineSpeciesFamily("herpestidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Herpestidae",
	Order = "carnivora"
})

DefineSpeciesFamily("mephitidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Mephitidae",
	Order = "carnivora"
})

DefineSpeciesFamily("mustelidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33; Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180545
	Name = "Mustelidae",
	Order = "carnivora",
	Suborder = "caniformia"
})

DefineSpeciesFamily("nimravidae", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=41036
	Name = "Nimravidae",
	Order = "carnivora",
	Suborder = "feliformia"
})

DefineSpeciesFamily("odobenidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Odobenidae",
	Order = "carnivora"
})

DefineSpeciesFamily("otariidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Otariidae",
	Order = "carnivora"
})

DefineSpeciesFamily("phocidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Phocidae",
	Order = "carnivora"
})

DefineSpeciesFamily("procyonidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Procyonidae",
	Order = "carnivora"
})

DefineSpeciesFamily("viverridae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33.
	Name = "Viverridae",
	Order = "carnivora"
})

DefineSpeciesGenus("eomellivora", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 38.
	Name = "Eomellivora",
	Family = "mustelidae"
})

DefineSpeciesGenus("nimravus", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=41043 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1067195
	Name = "Nimravus",
	Family = "nimravidae",
	Subfamily = "nimravinae"
})

DefineSpecies("eomellivora-wimani", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 38.
	Name = "Eomellivora",
	Genus = "eomellivora",
	Species = "wimani",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes"}, -- common ancestor with Amphicyon, which was also a carnivoran
	Era = "miocene", -- Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 60 cm tall up to the shoulder
	-- lived in Eurasia
	-- inhabited relatively open areas
	-- was a hunter and opportunely also a carrion-eater
})

Load("scripts/species/mammal/carnivoran/amphicyonid.lua")
Load("scripts/species/mammal/carnivoran/ursid.lua")

DefineSpecies("chapalmalania", {
	Name = "Chapalmalania",
	Homeworld = "earth",
	EvolvesFrom = {"amphicyon-giganteus", "amphicyon-major", "hemicyon-sansaniense", "miacis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("nimravus", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=41043 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1067195
	Name = "Nimravus",
	Genus = "nimravus",
	Homeworld = "earth",
--	EvolvesFrom = {"amphicyon", "hemicyon", "miacis"},
--	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes", "miacis"},
	EvolvesFrom = {"alphadon", "zalambdalestes", "miacis"},
	Era = "eocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling carnivore
})

DefineSpecies("raccoon", {
	Name = "Raccoon",
	Homeworld = "earth",
	EvolvesFrom = {"amphicyon-giganteus", "amphicyon-major", "hemicyon-sansaniense", "miacis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("seal", {
	Name = "Seal",
	Homeworld = "earth",
	Terrains = {"snow", "ice"},
	EvolvesFrom = {},
	ChildUpgrade = "upgrade-child"
})

Load("scripts/species/mammal/carnivoran/ailurid.lua")
Load("scripts/species/mammal/carnivoran/canid.lua")
Load("scripts/species/mammal/carnivoran/felid.lua")
Load("scripts/species/mammal/carnivoran/hyenid.lua")
Load("scripts/species/mammal/carnivoran/ursid.lua")
