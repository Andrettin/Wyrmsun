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

DefineSpecies("ischyromys", {
	Name = "Ischyromys",
	Homeworld = "earth",
	EvolvesFrom = {"alphadon", "crusafontia", "leptictidium", "megazostrodon", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("megacricetodon-collongensis", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 37.
	Name = "Megacricetodon", -- Megacricetodon collongensis
	Category = "megacricetodon",
	ScientificName = "Megacricetodon collongensis",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"ischyromys"},
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- had an omnivore diet with a high proportion of insects
	-- lived in Europe
	-- had a length of 8-13 cm
})

DefineSpecies("beaver", {
	Name = "Beaver",
	Homeworld = "earth",
	EvolvesFrom = {"megacricetodon-collongensis"}, -- earlier rodent
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("carrat", { -- rodent with the morphology akin to that of a canid; goblins keep this beast as a mount
	Name = "Carrat",
--	Family = "muridae", -- same as rats
	Homeworld = "nidavellir",
	Terrains = {"cave-floor", "rockbound-cave-floor", "dry-mud", "mud"}, -- correct?
	EvolvesFrom = {"megacricetodon-collongensis"}, -- shares a common ancestor with rats
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("mouse", {
	Name = "Mouse",
	Homeworld = "earth",
	EvolvesFrom = {"megacricetodon-collongensis"}, -- earlier rodent
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("rat", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180363
	Name = "Rat",
	Category = "rattus",
	ScientificName = "Rattus norvegicus",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "cave-floor", "rockbound-cave-floor"}, -- correct?
	EvolvesFrom = {"megacricetodon-collongensis"}, -- earlier rodent
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("squirrel", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=632439
	Name = "Squirrel", -- Eurasian Red Squirrel
	Category = "sciurus",
	ScientificName = "Sciurus vulgaris",
	Homeworld = "earth",
	EvolvesFrom = {"megacricetodon-collongensis"}, -- earlier rodent
	ChildUpgrade = "upgrade-child"
})

