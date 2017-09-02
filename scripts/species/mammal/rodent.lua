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

DefineSpeciesOrder("rodentia", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33; Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180130
	Name = "Rodentia",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria"
})

DefineSpeciesFamily("cricetidae", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=41724
	Name = "Cricetidae",
	Order = "rodentia", -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=970141
	Suborder = "myomorpha", -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=970141
	Superfamily = "muroidea"
})

DefineSpeciesFamily("muridae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180360
	Name = "Muridae",
	Order = "rodentia",
	Suborder = "myomorpha",
	Superfamily = "muroidea"
})

DefineSpeciesFamily("sciuridae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180135
	Name = "Sciuridae",
	Order = "rodentia",
	Suborder = "sciuromorpha"
})

DefineSpeciesGenus("megacricetodon", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 37; Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=121093
	Name = "Megacricetodon",
	Family = "cricetidae",
	Subfamily = "cricetinae"
})

DefineSpeciesGenus("rattus", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180361
	Name = "Rattus",
	CommonName = "Rat",
	Family = "muridae",
	Subfamily = "murinae"
})

DefineSpeciesGenus("sciurus", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180171
	Name = "Sciurus",
	CommonName = "Squirrel",
	Family = "sciuridae",
	Subfamily = "sciurinae",
	Tribe = "sciurini"
})

DefineSpecies("ischyromys", {
	Name = "Ischyromys",
	Homeworld = "earth",
	EvolvesFrom = {"alphadon", "crusafontia", "leptictidium", "megazostrodon", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("megacricetodon-collongensis", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 37.
	Name = "Megacricetodon", -- Megacricetodon collongensis
	Genus = "megacricetodon",
	Species = "collongensis",
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
	Genus = "rattus",
	Species = "norvegicus",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "cave-floor", "rockbound-cave-floor"}, -- correct?
	EvolvesFrom = {"megacricetodon-collongensis"}, -- earlier rodent
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("squirrel", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=632439
	Name = "Squirrel", -- Eurasian Red Squirrel
	Genus = "sciurus",
	Species = "vulgaris",
	Homeworld = "earth",
	EvolvesFrom = {"megacricetodon-collongensis"}, -- earlier rodent
	ChildUpgrade = "upgrade-child"
})

