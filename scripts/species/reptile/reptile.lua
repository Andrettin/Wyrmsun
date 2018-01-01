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

DefineSpeciesClass("reptilia", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=173747
	Name = "Reptilia",
	Phylum = "chordata",
	Subphylum = "vertebrata",
	Infraphylum = "gnathostomata",
	Superclass = "tetrapoda"
})

DefineSpeciesOrder("saurischia", { -- Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_family?ordername=Saurischia
	Name = "Saurischia",
	Class = "reptilia"
})

DefineSpeciesOrder("synapsida", { -- Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_family?ordername=Synapsida+(awaiting+allocation)
	Name = "Synapsida",
	Class = "reptilia"
})

DefineSpeciesFamily("synapsida", { -- Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_genera?fam_id=116313
	Name = "Synapsida",
	Order = "synapsida"
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
	Homeworld = "earth",
	EvolvesFrom = {"hylonomus", "pantylus", "tuditanus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("pareiasaurus", {
	Name = "Pareiasaurus",
	Homeworld = "earth",
	EvolvesFrom = {"diadectes", "hylonomus", "pantylus", "platyhystrix", "tuditanus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("petrolacosaurus", {
	Name = "Petrolacosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"hylonomus", "pantylus", "peltobatrachus", "platyhystrix", "tuditanus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("sphenacodon", {
	Name = "Sphenacodon",
	Homeworld = "earth",
	EvolvesFrom = {"diadectes", "peltobatrachus", "platyhystrix", "seymouria"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("thadeosaurus", {
	Name = "Thadeosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"diadectes", "petrolacosaurus", "seymouria"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dryosaurus", {
	Name = "Dryosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"pareiasaurus", "petrolacosaurus", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("lizard", {
	Name = "Lizard",
	Homeworld = "earth",
	EvolvesFrom = {"petrolacosaurus", "thadeosaurus"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("ornithosuchus", {
	Name = "Ornithosuchus",
	Homeworld = "earth",
	EvolvesFrom = {"hylonomus", "petrolacosaurus", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("saltopus", {
	Name = "Saltopus",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "petrolacosaurus", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("scelidosaurus", {
	Name = "Scelidosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "petrolacosaurus", "sphenacodon", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("snake", {
	Name = "Snake",
	Homeworld = "earth",
	EvolvesFrom = {"petrolacosaurus", "thadeosaurus"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("ticinosuchus", {
	Name = "Ticinosuchus",
	Homeworld = "earth",
	EvolvesFrom = {"hylonomus", "pareiasaurus", "petrolacosaurus", "sphenacodon", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("allosaurus", {
	Name = "Allosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"saltopus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("apatosaurus", {
	Name = "Apatosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"saltopus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("brachiosaurus", {
	Name = "Brachiosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"saltopus", "scelidosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("compsognathus", {
	Name = "Compsognathus",
	Homeworld = "earth",
	EvolvesFrom = {"ornithosuchus", "saltopus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("deinonychus", {
	Name = "Deinonychus",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "saltopus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dilophosaurus", {
	Name = "Dilophosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"ornithosuchus", "saltopus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("gracilisuchus", {
	Name = "Gracilisuchus",
	Homeworld = "earth",
	EvolvesFrom = {"ornithosuchus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("iguanodon", {
	Name = "Iguanodon",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "ornithosuchus", "saltopus", "scelidosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("kentrosaurus", {
	Name = "Kentrosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "saltopus", "scelidosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("pachycephalosaurus", {
	Name = "Pachycephalosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "ornithosuchus", "scelidosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("protoceratops", {
	Name = "Protoceratops",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "scelidosaurus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("ramphorhynchus", {
	Name = "Ramphorhynchus",
	Homeworld = "earth",
	EvolvesFrom = {"ornithosuchus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("stegosaurus", {
	Name = "Stegosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"dryosaurus", "scelidosaurus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("velociraptor", {
	Name = "Velociraptor",
	Homeworld = "earth",
	EvolvesFrom = {"compsognathus", "deinonychus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("ankylosaurus", {
	Name = "Ankylosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"kentrosaurus", "protoceratops", "stegosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("deinosuchus", {
	Name = "Deinosuchus",
	Homeworld = "earth",
	EvolvesFrom = {"gracilisuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("diplodocus", {
	Name = "Diplodocus",
	Homeworld = "earth",
	EvolvesFrom = {"apatosaurus", "brachiosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("parasaurolophus", {
	Name = "Parasaurolophus",
	Homeworld = "earth",
	EvolvesFrom = {"iguanodon", "pachycephalosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("pterodactylus", {
	Name = "Pterodactylus",
	Homeworld = "earth",
	EvolvesFrom = {"ramphorhynchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("triceratops", {
	Name = "Triceratops",
	Homeworld = "earth",
	EvolvesFrom = {"kentrosaurus", "protoceratops", "stegosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("tyrannosaurus-rex", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=54833 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1206683
	Name = "Tyrannosaurus Rex",
	Genus = "tyrannosaurus",
	Species = "rex",
	Homeworld = "earth",
	EvolvesFrom = {"allosaurus", "dilophosaurus"}, -- should be ancestors to all Tyrannosauruses
	Era = "cretaceous",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child",
	Description = "The mighty tyrannosaurus rex was a fierce predator. The goddess Gaia brought a few of them to Jotunheim, where they originated the first draconic creatures."
	-- weighted 3.97 tons
	-- ground dwelling carnivore
})

DefineSpecies("dicynodon", {
	Name = "Dicynodon",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "petrolacosaurus", "sphenacodon", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dimetrodon", {
	Name = "Dimetrodon",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "hylonomus", "petrolacosaurus", "sphenacodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("lycaenops", {
	Name = "Lycaenops",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "pareiasaurus", "sphenacodon", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("lystrosaurus", {
	Name = "Lystrosaurus",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "sphenacodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("thrinaxodon", {
	Name = "Thrinaxodon",
	Homeworld = "earth",
	EvolvesFrom = {"edaphosaurus", "pareiasaurus", "sphenacodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("adelobasileus-cromptoni", { -- Source: Spencer G. Lucas and Zhexi Luo, "Adelobasileus from the Upper Triassic of West Texas: The Oldest Mammal", 1993, p. 309; Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=53175 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1196072
	Name = "Adelobasileus",
	Genus = "adelobasileus",
	Species = "cromptoni",
	Homeworld = "earth",
	Terrains = {"grass", "dirt"}, -- correct?
	EvolvesFrom = {"dicynodon", "dimetrodon", "lycaenops", "lystrosaurus", "thrinaxodon"},
	Era = "triassic",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- scansorial insectivore
})

DefineSpecies("basilisk", {
	Name = "Basilisk",
	Homeworld = "alfheim",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("crocodile", {
	Name = "Crocodile",
	Homeworld = "earth",
	EvolvesFrom = {"deinosuchus"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hydra", {
	Name = "Hydra",
	Homeworld = "jotunheim",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("saurian", { -- from Wesnoth
	Name = "Saurian",
	Species = "sapiens",
--	Homeworld = ?
	Sapient = true
	-- sapient species evolved from dinosaurs
})

Load("scripts/species/reptile/testudine.lua")
Load("scripts/species/reptile/draconid.lua") -- mythical dragons and dragon-like creatures
