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

DefineSpecies("alphadon", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=39947
	Name = "Alphadon",
	Category = "alphadon",
	Homeworld = "earth",
	EvolvesFrom = {"adelobasileus-cromptoni"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	Era = "cretaceous",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- scansorial omnivore
})

DefineSpecies("crusafontia", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=39892 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1010900
	Name = "Crusafontia",
	Category = "crusafontia",
	ScientificName = "Crusafontia cuencana", -- type species of the Crusafontia genus
	Homeworld = "earth",
	EvolvesFrom = {"adelobasileus-cromptoni"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	Era = "cretaceous",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- scansorial insectivore
})

DefineSpecies("leptictidium", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=40267
	Name = "Leptictidium",
	Category = "leptictidium",
	ScientificName = "Leptictidium auderiense", -- type species of the Leptictidium genus
	Homeworld = "earth",
	EvolvesFrom = {"adelobasileus-cromptoni"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	Era = "eocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- scansorial insectivore
})

DefineSpecies("megazostrodon", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=39752 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1017806
	Name = "Megazostrodon",
	Category = "megazostrodon",
	ScientificName = "Megazostrodon rudnerae", -- type species of the Megazostrodon genus
	Homeworld = "earth",
	EvolvesFrom = {"adelobasileus-cromptoni"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	Era = "jurassic",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- scansorial insectivore
})

DefineSpecies("zalambdalestes", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=40217
	Name = "Zalambdalestes",
	Category = "zalambdalestes",
	ScientificName = "Zalambdalestes lechei", -- type species of the Zalambdalestes genus
	Homeworld = "earth",
	EvolvesFrom = {"adelobasileus-cromptoni"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	Era = "cretaceous",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground-dwelling insectivore
})

DefineSpecies("borhyaena", {
	Name = "Borhyaena",
	Homeworld = "earth",
	EvolvesFrom = {"alphadon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("thylacosmilus", {
	Name = "Thylacosmilus",
	Homeworld = "earth",
	EvolvesFrom = {"borhyaena"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("chriacus", {
	Name = "Chriacus",
	Homeworld = "earth",
	EvolvesFrom = {"crusafontia", "megazostrodon", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("marsupial-mouse", {
	Name = "Marsupial Mouse",
	Homeworld = "earth",
	EvolvesFrom = {"alphadon", "crusafontia", "megazostrodon"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("miacis", {
	Name = "Miacis",
	Homeworld = "earth",
	EvolvesFrom = {"crusafontia", "megazostrodon", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("possum", {
	Name = "Possum",
	Homeworld = "earth",
	EvolvesFrom = {"alphadon", "crusafontia", "megazostrodon"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("rabbit", {
	Name = "Rabbit",
	Homeworld = "earth",
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("thylacoleo", {
	Name = "Thylacoleo",
	Homeworld = "earth",
	EvolvesFrom = {"alphadon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("thylacinus", {
	Name = "Thylacinus",
	Homeworld = "earth",
	EvolvesFrom = {"thylacoleo"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("weasel", {
	Name = "Weasel",
	Homeworld = "earth",
	EvolvesFrom = {"miacis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("kangaroo", {
	Name = "Kangaroo",
	Homeworld = "earth",
	EvolvesFrom = {"marsupial-mouse", "possum"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("koala", {
	Name = "Koala",
	Homeworld = "earth",
	EvolvesFrom = {"marsupial-mouse", "possum"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("procoptodon", {
	Name = "Procoptodon",
	Homeworld = "earth",
	EvolvesFrom = {"marsupial-mouse", "possum"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("wombat", {
	Name = "Wombat",
	Homeworld = "earth",
	EvolvesFrom = {"marsupial-mouse", "possum"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("diprotodon", {
	Name = "Diprotodon",
	Homeworld = "earth",
	EvolvesFrom = {"wombat"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("palorchestes", {
	Name = "Palorchestes",
	Homeworld = "earth",
	EvolvesFrom = {"wombat"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hyopsodus", {
	Name = "Hyopsodus",
	Homeworld = "earth",
	EvolvesFrom = {"leptictidium", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("phenacodus", {
	Name = "Phenacodus",
	Homeworld = "earth",
	EvolvesFrom = {"alphadon", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("didolodus", {
	Name = "Didolodus",
	Homeworld = "earth",
	EvolvesFrom = {"chriacus", "hyopsodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("astrapotherium", {
	Name = "Astrapotherium",
	Homeworld = "earth",
	EvolvesFrom = {"didolodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("diadiaphorus", {
	Name = "Diadiaphorus",
	Homeworld = "earth",
	EvolvesFrom = {"didolodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("macrauchenia", {
	Name = "Macrauchenia",
	Homeworld = "earth",
	EvolvesFrom = {"diadiaphorus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("scarrittia", {
	Name = "Scarrittia",
	Homeworld = "earth",
	EvolvesFrom = {"didolodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("pachyrukhos", {
	Name = "Pachyrukhos",
	Homeworld = "earth",
	EvolvesFrom = {"scarrittia"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("mesonyx", {
	Name = "Mesonyx",
	Homeworld = "earth",
	EvolvesFrom = {"chriacus", "hyopsodus", "phenacodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("poebrodon", {
	Name = "Poebrodon",
	Homeworld = "earth",
	EvolvesFrom = {"chriacus", "hyopsodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("camel", {
	Name = "Camel",
	Homeworld = "earth",
	EvolvesFrom = {"poebrodon"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hyaenodon", {
	Name = "Hyaenodon",
	Homeworld = "earth",
	EvolvesFrom = {"crusafontia", "megazostrodon", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("metacheiromys", {
	Name = "Metacheiromys",
	Homeworld = "earth",
	EvolvesFrom = {"crusafontia", "megazostrodon", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("armadillo", {
	Name = "Armadillo",
	Homeworld = "earth",
	EvolvesFrom = {"metacheiromys"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("glyptotherium", {
	Name = "Glyptotherium",
	Homeworld = "earth",
	EvolvesFrom = {"metacheiromys"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hedgehog", {
	Name = "Hedgehog",
	Homeworld = "earth",
	EvolvesFrom = {"zalambdalestes"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("megatherium", {
	Name = "Megatherium",
	Homeworld = "earth",
	EvolvesFrom = {"metacheiromys"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("sloth", {
	Name = "Sloth",
	Homeworld = "earth",
	EvolvesFrom = {"metacheiromys"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("steropodon", {
	Name = "Steropodon",
	Homeworld = "earth",
	EvolvesFrom = {"megazostrodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("platypus", {
	Name = "Platypus",
	Homeworld = "earth",
	EvolvesFrom = {"steropodon"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("uintathere", {
	Name = "Uintathere",
	Homeworld = "earth",
	EvolvesFrom = {"crusafontia", "leptictidium", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("repenomamus-giganticus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=67606
	Name = "Repenomamus Giganticus",
	Category = "repenomamus",
	ScientificName = "Repenomamus giganticus",
	Homeworld = "earth",
	EvolvesFrom = {"adelobasileus-cromptoni"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	Era = "cretaceous",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling carnivore
})

DefineSpecies("galerix-exilis", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 37.
	Name = "Galerix", -- Galerix exilis
	Category = "galerix",
	ScientificName = "Galerix exilis",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"adelobasileus-cromptoni"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	Era = "miocene", -- Middle and Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- insectivore
	-- lived in Europe
	-- had a length of 10-15 cm
})

Load("scripts/species/mammal/artiodactyl/artiodactyl.lua")
Load("scripts/species/mammal/carnivoran/carnivoran.lua")
Load("scripts/species/mammal/perissodactyl/perissodactyl.lua")
Load("scripts/species/mammal/proboscid/proboscid.lua")
Load("scripts/species/mammal/primate.lua")
Load("scripts/species/mammal/rodent.lua")
