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
--      (c) Copyright 2016-2020 by Andrettin
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

DefineSpeciesGenus("gigans", {
	Name = "Gigans", -- "giant" in Latin
	CommonName = "Giant"
})

DefineSpeciesGenus("gobelinus", {
	Name = "Gobelinus", -- "goblin" in Latin
	CommonName = "Goblinoid"
})

DefineSpeciesGenus("orcus", {
	Name = "Orcus", -- "orc" in Latin
	CommonName = "Orcoid"
})

DefineSpecies("plesiadapis", {
	Name = "Plesiadapis",
	Supertaxon = "primates",
	Homeworld = "earth",
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes"}
})

DefineSpecies("lemur", {
	Name = "Lemur",
	Supertaxon = "primates",
	Homeworld = "earth",
	EvolvesFrom = {"plesiadapis"}
})

DefineSpecies("monkey", {
	Name = "Monkey",
	Supertaxon = "primates",
	Homeworld = "earth",
	EvolvesFrom = {"plesiadapis"}
})

DefineSpecies("dryopithecus", {
	Name = "Dryopithecus",
	Supertaxon = "primates",
	Homeworld = "earth",
	EvolvesFrom = {"plesiadapis"}
})

DefineSpecies("chimpanzee", {
	Name = "Chimpanzee",
	Supertaxon = "primates",
	Homeworld = "earth",
	EvolvesFrom = {"dryopithecus"}
})

DefineSpecies("australopithecus", {
	Name = "Australopithecus",
	Genus = "australopithecus",
	Species = "afarensis", -- the Australopithecus afarensis is also known as Praeanthropus africanus; Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=83054
	Homeworld = "earth",
	EvolvesFrom = {"dryopithecus"}
})

DefineSpecies("cyclops", {
	Name = "Cyclops",
	Genus = "gigans", -- "giant" in Latin; cyclops are of the same genus as ettins
	Species = "cyclops",
	Homeworld = "jotunheim",
	Era = "holocene",
	Sapient = true
})

DefineSpecies("ettin", {
	Name = "Ettin",
	Genus = "gigans", -- "giant" in Latin
	Species = "sapiens",
	Homeworld = "jotunheim",
	Era = "holocene",
	Sapient = true
})

DefineSpecies("goblin", {
	Name = "Goblin",
	Genus = "gobelinus", -- "goblin" in Latin
	Species = "brevis", -- "small"/"short" in Latin (as it is smaller than a hobgoblin)
	Homeworld = "nidavellir",
	Era = "holocene",
	Sapient = true
})

DefineSpecies("hobgoblin", {
	Name = "Hobgoblin",
	Genus = "gobelinus", -- "goblin" in Latin
	Species = "magnus", -- "big" in Latin" (as it is bigger than a goblin)
	Homeworld = "nidavellir",
	Era = "holocene",
	Sapient = true
})

DefineSpecies("ogre", {
	Name = "Ogre",
	Supertaxon = "primates",
	Species = "sapiens",
	Homeworld = "jotunheim",
	Era = "holocene",
	Sapient = true
})

DefineSpecies("orc", {
	Name = "Orc",
	Genus = "orcus", -- "orc" in Latin
	Species = "sapiens",
	Homeworld = "jotunheim",
	Era = "holocene",
	Sapient = true
})

DefineSpecies("troll", {
	Name = "Troll",
	Supertaxon = "primates",
	Homeworld = "alfheim",
	Era = "holocene",
	Sapient = true
})
