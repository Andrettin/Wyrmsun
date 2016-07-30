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
	Homeworld = "Earth",
	EvolvesFrom = {"hylonomus", "pantylus", "tuditanus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("pareiasaurus", {
	Name = "Pareiasaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"diadectes", "hylonomus", "pantylus", "platyhystrix", "tuditanus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("petrolacosaurus", {
	Name = "Petrolacosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"hylonomus", "pantylus", "peltobatrachus", "platyhystrix", "tuditanus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("sphenacodon", {
	Name = "Sphenacodon",
	Homeworld = "Earth",
	EvolvesFrom = {"diadectes", "peltobatrachus", "platyhystrix", "seymouria"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("thadeosaurus", {
	Name = "Thadeosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"diadectes", "petrolacosaurus", "seymouria"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dryosaurus", {
	Name = "Dryosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"pareiasaurus", "petrolacosaurus", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("lizard", {
	Name = "Lizard",
	Homeworld = "Earth",
	EvolvesFrom = {"petrolacosaurus", "thadeosaurus"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("ornithosuchus", {
	Name = "Ornithosuchus",
	Homeworld = "Earth",
	EvolvesFrom = {"hylonomus", "petrolacosaurus", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("saltopus", {
	Name = "Saltopus",
	Homeworld = "Earth",
	EvolvesFrom = {"edaphosaurus", "petrolacosaurus", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("scelidosaurus", {
	Name = "Scelidosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"edaphosaurus", "petrolacosaurus", "sphenacodon", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("snake", {
	Name = "Snake",
	Homeworld = "Earth",
	EvolvesFrom = {"petrolacosaurus", "thadeosaurus"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("ticinosuchus", {
	Name = "Ticinosuchus",
	Homeworld = "Earth",
	EvolvesFrom = {"hylonomus", "pareiasaurus", "petrolacosaurus", "sphenacodon", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("allosaurus", {
	Name = "Allosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"saltopus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("apatosaurus", {
	Name = "Apatosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"saltopus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("brachiosaurus", {
	Name = "Brachiosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"saltopus", "scelidosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("compsognathus", {
	Name = "Compsognathus",
	Homeworld = "Earth",
	EvolvesFrom = {"ornithosuchus", "saltopus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("deinonychus", {
	Name = "Deinonychus",
	Homeworld = "Earth",
	EvolvesFrom = {"dryosaurus", "saltopus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dilophosaurus", {
	Name = "Dilophosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"ornithosuchus", "saltopus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("gracilisuchus", {
	Name = "Gracilisuchus",
	Homeworld = "Earth",
	EvolvesFrom = {"ornithosuchus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("iguanodon", {
	Name = "Iguanodon",
	Homeworld = "Earth",
	EvolvesFrom = {"dryosaurus", "ornithosuchus", "saltopus", "scelidosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("kentrosaurus", {
	Name = "Kentrosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"dryosaurus", "saltopus", "scelidosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("pachycephalosaurus", {
	Name = "Pachycephalosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"dryosaurus", "ornithosuchus", "scelidosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("protoceratops", {
	Name = "Protoceratops",
	Homeworld = "Earth",
	EvolvesFrom = {"dryosaurus", "scelidosaurus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("ramphorhynchus", {
	Name = "Ramphorhynchus",
	Homeworld = "Earth",
	EvolvesFrom = {"ornithosuchus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("stegosaurus", {
	Name = "Stegosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"dryosaurus", "scelidosaurus", "ticinosuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("velociraptor", {
	Name = "Velociraptor",
	Homeworld = "Earth",
	EvolvesFrom = {"compsognathus", "deinonychus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("ankylosaurus", {
	Name = "Ankylosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"kentrosaurus", "protoceratops", "stegosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("deinosuchus", {
	Name = "Deinosuchus",
	Homeworld = "Earth",
	EvolvesFrom = {"gracilisuchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("diplodocus", {
	Name = "Diplodocus",
	Homeworld = "Earth",
	EvolvesFrom = {"apatosaurus", "brachiosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("parasaurolophus", {
	Name = "Parasaurolophus",
	Homeworld = "Earth",
	EvolvesFrom = {"iguanodon", "pachycephalosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("pterodactylus", {
	Name = "Pterodactylus",
	Homeworld = "Earth",
	EvolvesFrom = {"ramphorhynchus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("triceratops", {
	Name = "Triceratops",
	Homeworld = "Earth",
	EvolvesFrom = {"kentrosaurus", "protoceratops", "stegosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("tyrannosaurus-rex", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=54833 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1206683
	Name = "Tyrannosaurus Rex",
	Genus = "tyrannosaurus",
	Species = "rex",
	Homeworld = "Earth",
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
	Homeworld = "Earth",
	EvolvesFrom = {"edaphosaurus", "petrolacosaurus", "sphenacodon", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dimetrodon", {
	Name = "Dimetrodon",
	Homeworld = "Earth",
	EvolvesFrom = {"edaphosaurus", "hylonomus", "petrolacosaurus", "sphenacodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("lycaenops", {
	Name = "Lycaenops",
	Homeworld = "Earth",
	EvolvesFrom = {"edaphosaurus", "pareiasaurus", "sphenacodon", "thadeosaurus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("lystrosaurus", {
	Name = "Lystrosaurus",
	Homeworld = "Earth",
	EvolvesFrom = {"edaphosaurus", "sphenacodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("thrinaxodon", {
	Name = "Thrinaxodon",
	Homeworld = "Earth",
	EvolvesFrom = {"edaphosaurus", "pareiasaurus", "sphenacodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("adelobasileus-cromptoni", { -- Source: Spencer G. Lucas and Zhexi Luo, "Adelobasileus from the Upper Triassic of West Texas: The Oldest Mammal", 1993, p. 309; Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=53175 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1196072
	Name = "Adelobasileus",
	Genus = "adelobasileus",
	Species = "cromptoni",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	EvolvesFrom = {"dicynodon", "dimetrodon", "lycaenops", "lystrosaurus", "thrinaxodon"},
	Era = "triassic",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- scansorial insectivore
})

DefineSpecies("basilisk", {
	Name = "Basilisk",
	Homeworld = "Alfheim",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("crocodile", {
	Name = "Crocodile",
	Homeworld = "Earth",
	EvolvesFrom = {"deinosuchus"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hydra", {
	Name = "Hydra",
	Homeworld = "Jotunheim",
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
