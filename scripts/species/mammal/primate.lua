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

DefineSpeciesOrder("primates", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33; Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180089
	Name = "Primates",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria"
})

DefineSpeciesFamily("hominidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180090
	Name = "Hominidae",
	Order = "primates",
	Suborder = "haplorrhini",
	Infraorder = "simiiformes",
	Superfamily = "hominoidea"
})

DefineSpeciesGenus("alfus", {
	Name = "Alfus", -- "elf" in Latin
	CommonName = "Elfoid",
	Family = "hominidae"
})

DefineSpeciesGenus("australopithecus", {
	Name = "Australopithecus",
	Family = "hominidae" -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=40900 ; Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=83061
})

DefineSpeciesGenus("gigans", {
	Name = "Gigans", -- "giant" in Latin
	CommonName = "Giant"
})

DefineSpeciesGenus("gnomus", {
	Name = "Gnomus", -- "gnome" in Latin
	CommonName = "Gnomoid",
	Family = "hominidae"
})

DefineSpeciesGenus("gobelinus", {
	Name = "Gobelinus", -- "goblin" in Latin
	CommonName = "Goblinoid"
})

DefineSpeciesGenus("homo", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180091
	Name = "Homo",
	CommonName = "Hominoid",
	Family = "hominidae",
	Subfamily = "homininae"
})

DefineSpeciesGenus("nanus", {
	Name = "Nanus", -- "dwarf" in Latin
	CommonName = "Dwarfoid",
	Family = "hominidae"
})

DefineSpeciesGenus("orcus", {
	Name = "Orcus", -- "orc" in Latin
	CommonName = "Orcoid"
})

DefineSpecies("plesiadapis", {
	Name = "Plesiadapis",
	Homeworld = "earth",
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("lemur", {
	Name = "Lemur",
	Homeworld = "earth",
	EvolvesFrom = {"plesiadapis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("monkey", {
	Name = "Monkey",
	Homeworld = "earth",
	EvolvesFrom = {"plesiadapis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dryopithecus", {
	Name = "Dryopithecus",
	Homeworld = "earth",
	EvolvesFrom = {"plesiadapis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("chimpanzee", {
	Name = "Chimpanzee",
	Homeworld = "earth",
	EvolvesFrom = {"dryopithecus"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("australopithecus", {
	Name = "Australopithecus",
	Genus = "australopithecus",
	Species = "afarensis", -- the Australopithecus afarensis is also known as Praeanthropus africanus; Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=83054
	Homeworld = "earth",
	EvolvesFrom = {"dryopithecus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("cyclops", {
	Name = "Cyclops",
	Genus = "gigans", -- "giant" in Latin; cyclops are of the same genus as ettins
	Species = "cyclops",
	Homeworld = "jotunheim",
	Era = "holocene",
	Sapient = true
})

DefineSpecies("derro", {
	Name = "Derro",
	Genus = "gnomus", -- "gnome" in Latin
	Species = "detrimenti", -- "detrimental" in Latin
	Homeworld = "nidavellir",
	EvolvesFrom = {"australopithecus"}, -- could descend from another closely-related species instead; dwarves and gnomes should have a common ancestor
	Era = "holocene",
	Sapient = true
	-- in prehistoric times, the ancestors of dwarves and gnomes were transported to Nidavellir by the magic of the Aesir
})

DefineSpecies("dwarf", {
	Name = "Dwarf",
	Genus = "nanus", -- "dwarf" in Latin
	Species = "sapiens",
	Homeworld = "nidavellir",
	EvolvesFrom = {"australopithecus"}, -- could descend from another closely-related species instead; dwarves and gnomes should have a common ancestor
	Era = "holocene",
	Sapient = true
	-- in prehistoric times, the ancestors of dwarves and gnomes were transported to Nidavellir by the magic of the Aesir
})

DefineSpecies("elf", {
	Name = "Elf",
	Genus = "alfus", -- "elf" in Latin
	Species = "sapiens",
	Homeworld = "alfheim",
	EvolvesFrom = {"australopithecus"}, -- could descend from another closely-related species instead
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

DefineSpecies("gnome", {
	Name = "Gnome",
	Genus = "gnomus", -- "gnome" in Latin
	Species = "sapiens",
	Homeworld = "nidavellir",
	EvolvesFrom = {"australopithecus"}, -- could descend from another closely-related species instead; dwarves and gnomes should have a common ancestor
	Era = "holocene",
	Sapient = true
	-- in prehistoric times, the ancestors of dwarves and gnomes were transported to Nidavellir by the magic of the Aesir
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

DefineSpecies("human", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180092
	Name = "Human",
	Genus = "homo",
	Species = "sapiens",
	Homeworld = "earth",
	EvolvesFrom = {"australopithecus"}, -- possibly
	Era = "holocene",
	Sapient = true
})

DefineSpecies("ogre", {
	Name = "Ogre",
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
	Homeworld = "alfheim",
	Era = "holocene",
	Sapient = true
})
