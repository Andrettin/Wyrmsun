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

DefineSpeciesOrder("saurischia", { -- Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_family?ordername=Saurischia
	Name = "Saurischia",
	Class = "reptilia"
})

DefineSpeciesFamily("tyrannosauridae", { -- Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_genera?fam_id=116228
	Name = "Tyrannosauridae",
	Order = "saurischia"
})

DefineSpeciesGenus("adelobasileus", { -- Source: Spencer G. Lucas and Zhexi Luo, "Adelobasileus from the Upper Triassic of West Texas: The Oldest Mammal", 1993, p. 309; Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=53175 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1196072
	Name = "Adelobasileus",
	Family = "synapsida"
})
	
DefineSpeciesGenus("tyrannosaurus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=38613
	Name = "Tyrannosaurus",
	CommonName = "Tyrannosaur",
	Family = "tyrannosauridae"
})

DefineSpecies("edaphosaurus", {
	Name = "Edaphosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"hylonomus", "pantylus", "tuditanus"}
})

DefineSpecies("pareiasaurus", {
	Name = "Pareiasaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"diadectes", "hylonomus", "pantylus", "platyhystrix", "tuditanus"}
})

DefineSpecies("petrolacosaurus", {
	Name = "Petrolacosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"hylonomus", "pantylus", "peltobatrachus", "platyhystrix", "tuditanus"}
})

DefineSpecies("sphenacodon", {
	Name = "Sphenacodon",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"diadectes", "peltobatrachus", "platyhystrix", "seymouria"}
})

DefineSpecies("thadeosaurus", {
	Name = "Thadeosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"diadectes", "petrolacosaurus", "seymouria"}
})

DefineSpecies("dryosaurus", {
	Name = "Dryosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"pareiasaurus", "petrolacosaurus", "thadeosaurus"}
})

DefineSpecies("ornithosuchus", {
	Name = "Ornithosuchus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"hylonomus", "petrolacosaurus", "thadeosaurus"}
})

DefineSpecies("saltopus", {
	Name = "Saltopus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "petrolacosaurus", "thadeosaurus"}
})

DefineSpecies("scelidosaurus", {
	Name = "Scelidosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "petrolacosaurus", "sphenacodon", "thadeosaurus"}
})

DefineSpecies("ticinosuchus", {
	Name = "Ticinosuchus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"hylonomus", "pareiasaurus", "petrolacosaurus", "sphenacodon", "thadeosaurus"}
})

DefineSpecies("allosaurus", {
	Name = "Allosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"saltopus"}
})

DefineSpecies("apatosaurus", {
	Name = "Apatosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"saltopus", "ticinosuchus"}
})

DefineSpecies("brachiosaurus", {
	Name = "Brachiosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"saltopus", "scelidosaurus"}
})

DefineSpecies("compsognathus", {
	Name = "Compsognathus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"ornithosuchus", "saltopus", "ticinosuchus"}
})

DefineSpecies("deinonychus", {
	Name = "Deinonychus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "saltopus"}
})

DefineSpecies("dilophosaurus", {
	Name = "Dilophosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"ornithosuchus", "saltopus"}
})

DefineSpecies("gracilisuchus", {
	Name = "Gracilisuchus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"ornithosuchus", "ticinosuchus"}
})

DefineSpecies("iguanodon", {
	Name = "Iguanodon",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "ornithosuchus", "saltopus", "scelidosaurus"}
})

DefineSpecies("kentrosaurus", {
	Name = "Kentrosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "saltopus", "scelidosaurus"}
})

DefineSpecies("pachycephalosaurus", {
	Name = "Pachycephalosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "ornithosuchus", "scelidosaurus"}
})

DefineSpecies("protoceratops", {
	Name = "Protoceratops",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "scelidosaurus", "ticinosuchus"}
})

DefineSpecies("ramphorhynchus", {
	Name = "Ramphorhynchus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"ornithosuchus", "ticinosuchus"}
})

DefineSpecies("stegosaurus", {
	Name = "Stegosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "scelidosaurus", "ticinosuchus"}
})

DefineSpecies("velociraptor", {
	Name = "Velociraptor",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"compsognathus", "deinonychus"}
})

DefineSpecies("ankylosaurus", {
	Name = "Ankylosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"kentrosaurus", "protoceratops", "stegosaurus"}
})

DefineSpecies("deinosuchus", {
	Name = "Deinosuchus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"gracilisuchus"}
})

DefineSpecies("diplodocus", {
	Name = "Diplodocus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"apatosaurus", "brachiosaurus"}
})

DefineSpecies("parasaurolophus", {
	Name = "Parasaurolophus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"iguanodon", "pachycephalosaurus"}
})

DefineSpecies("pterodactylus", {
	Name = "Pterodactylus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"ramphorhynchus"}
})

DefineSpecies("triceratops", {
	Name = "Triceratops",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"kentrosaurus", "protoceratops", "stegosaurus"}
})

DefineSpecies("tyrannosaurus-rex", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=54833 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1206683
	Name = "Tyrannosaurus Rex",
	Genus = "tyrannosaurus",
	Species = "rex",
	Homeworld = "earth",
	EvolvesFrom = {"allosaurus", "dilophosaurus"}, -- should be ancestors to all Tyrannosauruses
	Era = "cretaceous",
	Description = "The mighty tyrannosaurus rex was a fierce predator. The goddess Gaia brought a few of them to Jotunheim, where they originated the first draconic creatures."
	-- weighted 3.97 tons
	-- ground dwelling carnivore
})

DefineSpecies("dicynodon", {
	Name = "Dicynodon",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "petrolacosaurus", "sphenacodon", "thadeosaurus"}
})

DefineSpecies("dimetrodon", {
	Name = "Dimetrodon",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "hylonomus", "petrolacosaurus", "sphenacodon"}
})

DefineSpecies("lycaenops", {
	Name = "Lycaenops",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "pareiasaurus", "sphenacodon", "thadeosaurus"}
})

DefineSpecies("lystrosaurus", {
	Name = "Lystrosaurus",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "sphenacodon"}
})

DefineSpecies("thrinaxodon", {
	Name = "Thrinaxodon",
	Supertaxon = "reptilia",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "pareiasaurus", "sphenacodon"}
})

DefineSpecies("adelobasileus-cromptoni", { -- Source: Spencer G. Lucas and Zhexi Luo, "Adelobasileus from the Upper Triassic of West Texas: The Oldest Mammal", 1993, p. 309; Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=53175 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1196072
	Name = "Adelobasileus",
	Genus = "adelobasileus",
	Species = "cromptoni",
	Homeworld = "earth",
	Terrains = {"grass", "dirt"}, -- correct?
	EvolvesFrom = {"dicynodon", "dimetrodon", "lycaenops", "lystrosaurus", "thrinaxodon"},
	Era = "triassic"
	-- scansorial insectivore
})

Load("scripts/species/reptile/testudine.lua")
Load("scripts/species/reptile/draconid.lua") -- mythical dragons and dragon-like creatures
