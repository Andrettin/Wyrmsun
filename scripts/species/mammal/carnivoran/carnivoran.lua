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

DefineSpecies("eomellivora-wimani", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 38.
	Name = "Eomellivora",
	Category = "eomellivora",
	ScientificName = "Eomellivora wimani",
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
	Category = "nimravus",
	Homeworld = "earth",
--	EvolvesFrom = {"amphicyon", "hemicyon", "miacis"},
--	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes", "miacis"},
	EvolvesFrom = {"alphadon", "zalambdalestes", "miacis"},
	Era = "eocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling carnivore
})

Load("scripts/species/mammal/carnivoran/ailurid.lua")
Load("scripts/species/mammal/carnivoran/felid.lua")
