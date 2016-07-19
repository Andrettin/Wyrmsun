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

DefineSpeciesOrder("rodentia", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180130
	Name = "Rodentia",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria"
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

DefineSpeciesGenus("rattus", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180361
	Name = "Rattus",
	CommonName = "Rat",
	Family = "muridae",
	Subfamily = "murinae",
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
	Homeworld = "Earth",
	EvolvesFrom = {"alphadon", "crusafontia", "leptictidium", "megazostrodon", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("beaver", {
	Name = "Beaver",
	Homeworld = "Earth",
	EvolvesFrom = {"ischyromys"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("carrat", { -- rodent with the morphology akin to that of a canid; goblins keep this beast as a mount
	Name = "Carrat",
--	Family = "muridae", -- same as rats
	Homeworld = "Nidavellir",
	Environments = {"cave", "swamp"},
	EvolvesFrom = {"ischyromys"}, -- shares a common ancestor with rats
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("mouse", {
	Name = "Mouse",
	Homeworld = "Earth",
	EvolvesFrom = {"ischyromys"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("rat", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180363
	Name = "Rat",
	Genus = "rattus",
	Species = "norvegicus",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn", "cave"}, -- correct?
	EvolvesFrom = {"ischyromys"}, -- seems sensible, since the mouse also does
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("squirrel", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=632439
	Name = "Squirrel", -- Eurasian Red Squirrel
	Genus = "sciurus",
	Species = "vulgaris",
	Homeworld = "Earth",
	EvolvesFrom = {"ischyromys"},
	ChildUpgrade = "upgrade-child"
})

