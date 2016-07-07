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

DefineSpeciesClass("mammalia", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=179913
	Name = "Mammalia",
	Phylum = "chordata",
	Subphylum = "vertebrata",
	Infraphylum = "gnathostomata",
	Superclass = "tetrapoda"
})

DefineSpeciesOrder("artiodactyla", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180692
	Name = "Artiodactyla",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria"
})

DefineSpeciesOrder("perissodactyla", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180687
	Name = "Perissodactyla",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria"
})

DefineSpeciesFamily("antilocapridae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=552305
	Name = "Antilocapridae",
	Order = "artiodactyla"
})

DefineSpecies("alphadon", {
	Name = "Alphadon",
	Homeworld = "Earth",
--	EvolvesFrom = {"dicynodon", "dimetrodon", "lycaenops", "lystrosaurus", "thrinaxodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("crusafontia", {
	Name = "Crusafontia",
	Homeworld = "Earth",
--	EvolvesFrom = {"dicynodon", "dimetrodon", "lycaenops", "lystrosaurus", "thrinaxodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("leptictidium", {
	Name = "Leptictidium",
	Homeworld = "Earth",
--	EvolvesFrom = {"dicynodon", "dimetrodon", "lycaenops", "lystrosaurus", "thrinaxodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("megazostrodon", {
	Name = "Megazostrodon",
	Homeworld = "Earth",
--	EvolvesFrom = {"dicynodon", "dimetrodon", "lycaenops", "lystrosaurus", "thrinaxodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("zalambdalestes", {
	Name = "Zalambdalestes",
	Homeworld = "Earth",
--	EvolvesFrom = {"dicynodon", "dimetrodon", "lycaenops", "lystrosaurus", "thrinaxodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("amphicyon", {
	Name = "Amphicyon",
	Homeworld = "Earth",
	EvolvesFrom = {
		"adelobasileus", -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
--		"alphadon", "leptictidium", "zalambdalestes"
	},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("borhyaena", {
	Name = "Borhyaena",
	Homeworld = "Earth",
	EvolvesFrom = {"alphadon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("thylacosmilus", {
	Name = "Thylacosmilus",
	Homeworld = "Earth",
	EvolvesFrom = {"borhyaena"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("chriacus", {
	Name = "Chriacus",
	Homeworld = "Earth",
	EvolvesFrom = {
		"adelobasileus", -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
--		"crusafontia", "megazostrodon", "zalambdalestes"
	},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hemicyon", {
	Name = "Hemicyon",
	Homeworld = "Earth",
	EvolvesFrom = {
		"adelobasileus", -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
--		"alphadon", "leptictidium", "zalambdalestes"
	},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("marsupial-mouse", {
	Name = "Marsupial Mouse",
	Homeworld = "Earth",
	EvolvesFrom = {"alphadon", "crusafontia", "megazostrodon"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("miacis", {
	Name = "Miacis",
	Homeworld = "Earth",
	EvolvesFrom = {
		"adelobasileus", -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
--		"crusafontia", "megazostrodon", "zalambdalestes"
	},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("possum", {
	Name = "Possum",
	Homeworld = "Earth",
	EvolvesFrom = {"alphadon", "crusafontia", "megazostrodon"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("rabbit", {
	Name = "Rabbit",
	Homeworld = "Earth",
	EvolvesFrom = {
		"adelobasileus", -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
--		"alphadon", "leptictidium", "zalambdalestes"
	},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("thylacoleo", {
	Name = "Thylacoleo",
	Homeworld = "Earth",
	EvolvesFrom = {"alphadon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("thylacinus", {
	Name = "Thylacinus",
	Homeworld = "Earth",
	EvolvesFrom = {"thylacoleo"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("bear", {
	Name = "Bear",
	Homeworld = "Earth",
	EvolvesFrom = {"amphicyon", "hemicyon", "miacis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("chapalmalania", {
	Name = "Chapalmalania",
	Homeworld = "Earth",
	EvolvesFrom = {"amphicyon", "hemicyon", "miacis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hyena", {
	Name = "Hyena",
	Homeworld = "Earth",
	EvolvesFrom = {"amphicyon", "hemicyon", "miacis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("nimravus", {
	Name = "Nimravus",
	Homeworld = "Earth",
	EvolvesFrom = {"amphicyon", "hemicyon", "miacis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("raccoon", {
	Name = "Raccoon",
	Homeworld = "Earth",
	EvolvesFrom = {"amphicyon", "hemicyon", "miacis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("weasel", {
	Name = "Weasel",
	Homeworld = "Earth",
	EvolvesFrom = {"miacis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("kangaroo", {
	Name = "Kangaroo",
	Homeworld = "Earth",
	EvolvesFrom = {"marsupial-mouse", "possum"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("koala", {
	Name = "Koala",
	Homeworld = "Earth",
	EvolvesFrom = {"marsupial-mouse", "possum"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("procoptodon", {
	Name = "Procoptodon",
	Homeworld = "Earth",
	EvolvesFrom = {"marsupial-mouse", "possum"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("wombat", {
	Name = "Wombat",
	Homeworld = "Earth",
	EvolvesFrom = {"marsupial-mouse", "possum"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("diprotodon", {
	Name = "Diprotodon",
	Homeworld = "Earth",
	EvolvesFrom = {"wombat"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("palorchestes", {
	Name = "Palorchestes",
	Homeworld = "Earth",
	EvolvesFrom = {"wombat"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hyopsodus", {
	Name = "Hyopsodus",
	Homeworld = "Earth",
	EvolvesFrom = {
		"adelobasileus", -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
--		"leptictidium", "zalambdalestes"
	},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("phenacodus", {
	Name = "Phenacodus",
	Homeworld = "Earth",
	EvolvesFrom = {
		"adelobasileus", -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
--		"alphadon", "zalambdalestes"
	},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("diacodexis", {
	Name = "Diacodexis",
	Homeworld = "Earth",
	EvolvesFrom = {"chriacus", "hyopsodus", "phenacodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("deer", {
	Name = "Deer",
	Homeworld = "Earth",
	EvolvesFrom = {"diacodexis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("giraffe", {
	Name = "Giraffe",
	Homeworld = "Earth",
	EvolvesFrom = {"diacodexis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("ilingoceros", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=42728
	Name = "Ilingoceros",
	Family = "antilocapridae",
	Genus = "ilingoceros",
	Species = "alexandrae", -- type species of the Ilingoceros genus
	Homeworld = "Earth",
	EvolvesFrom = {"diacodexis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling browser-grazer
})

DefineSpecies("megaloceros", {
	Name = "Megaloceros",
	Homeworld = "Earth",
	EvolvesFrom = {"diacodexis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("antelope", {
	Name = "Antelope",
	Homeworld = "Earth",
	EvolvesFrom = {"ilingoceros"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("bison", {
	Name = "Bison",
	Homeworld = "Earth",
	EvolvesFrom = {"ilingoceros"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("didolodus", {
	Name = "Didolodus",
	Homeworld = "Earth",
	EvolvesFrom = {"chriacus", "hyopsodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("astrapotherium", {
	Name = "Astrapotherium",
	Homeworld = "Earth",
	EvolvesFrom = {"didolodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("diadiaphorus", {
	Name = "Diadiaphorus",
	Homeworld = "Earth",
	EvolvesFrom = {"didolodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("macrauchenia", {
	Name = "Macrauchenia",
	Homeworld = "Earth",
	EvolvesFrom = {"diadiaphorus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("scarrittia", {
	Name = "Scarrittia",
	Homeworld = "Earth",
	EvolvesFrom = {"didolodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("pachyrukhos", {
	Name = "Pachyrukhos",
	Homeworld = "Earth",
	EvolvesFrom = {"scarrittia"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("helohyus", {
	Name = "Helohyus",
	Homeworld = "Earth",
	EvolvesFrom = {"chriacus", "phenacodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("boar", {
	Name = "Boar",
	Homeworld = "Earth",
	EvolvesFrom = {"helohyus"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hippopotamus", {
	Name = "Hippopotamus",
	Homeworld = "Earth",
	EvolvesFrom = {"helohyus"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("mesonyx", {
	Name = "Mesonyx",
	Homeworld = "Earth",
	EvolvesFrom = {"chriacus", "hyopsodus", "phenacodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("palaeotherium", {
	Name = "Palaeotherium",
	Homeworld = "Earth",
	EvolvesFrom = {"phenacodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("coelodonta", {
	Name = "Coelodonta",
	Homeworld = "Earth",
	EvolvesFrom = {"palaeotherium"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("indricotherium", {
	Name = "Indricotherium",
	Homeworld = "Earth",
	EvolvesFrom = {"palaeotherium"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("rhinoceros", {
	Name = "Rhinoceros",
	Homeworld = "Earth",
	EvolvesFrom = {"palaeotherium"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("phiomia", {
	Name = "Phiomia",
	Homeworld = "Earth",
	EvolvesFrom = {"chriacus", "hyopsodus", "phenacodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("elephant", {
	Name = "Elephant",
	Homeworld = "Earth",
	EvolvesFrom = {"phiomia"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("mammoth", {
	Name = "Mammoth",
	Homeworld = "Earth",
	EvolvesFrom = {"phiomia"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("platybeledon", {
	Name = "Platybeledon",
	Homeworld = "Earth",
	EvolvesFrom = {"phiomia"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("poebrodon", {
	Name = "Poebrodon",
	Homeworld = "Earth",
	EvolvesFrom = {"chriacus", "hyopsodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("camel", {
	Name = "Camel",
	Homeworld = "Earth",
	EvolvesFrom = {"poebrodon"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("proailurus", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=40900#
	Name = "Proailurus",
	Genus = "proailurus",
	Species = "lemanensis", -- sole species of the Proailurus genus
	Homeworld = "Earth",
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling carnivore-omnivore
	-- likely ancestor of sabertooths and modern cats; Source: http://www.wildworldvisuals.com/product/proailurus/
})

DefineSpecies("bat", {
	Name = "Bat",
	Homeworld = "Earth",
	Environments = {"cave"}, -- correct?
	EvolvesFrom = {
		"adelobasileus", -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
--		"leptictidium", "zalambdalestes"
	},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("blood-bat", {
	Name = "Blood Bat",
	Homeworld = "Nidavellir",
	Environments = {"cave", "swamp"},
	EvolvesFrom = { -- has a common ancestor with bats
		"adelobasileus", -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
--		"leptictidium", "zalambdalestes"
	},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dread-bat", {
	Name = "Dread Bat",
	Homeworld = "Nidavellir",
	Environments = {"cave", "swamp"}, -- correct?
	EvolvesFrom = { -- has a common ancestor with bats
		"adelobasileus", -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
--		"leptictidium", "zalambdalestes"
	},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hyaenodon", {
	Name = "Hyaenodon",
	Homeworld = "Earth",
	EvolvesFrom = {"crusafontia", "megazostrodon", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("metacheiromys", {
	Name = "Metacheiromys",
	Homeworld = "Earth",
	EvolvesFrom = {"crusafontia", "megazostrodon", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("armadillo", {
	Name = "Armadillo",
	Homeworld = "Earth",
	EvolvesFrom = {"metacheiromys"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("glyptotherium", {
	Name = "Glyptotherium",
	Homeworld = "Earth",
	EvolvesFrom = {"metacheiromys"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hedgehog", {
	Name = "Hedgehog",
	Homeworld = "Earth",
	EvolvesFrom = {"zalambdalestes"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("megatherium", {
	Name = "Megatherium",
	Homeworld = "Earth",
	EvolvesFrom = {"metacheiromys"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("sloth", {
	Name = "Sloth",
	Homeworld = "Earth",
	EvolvesFrom = {"metacheiromys"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("steropodon", {
	Name = "Steropodon",
	Homeworld = "Earth",
	EvolvesFrom = {"megazostrodon"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("platypus", {
	Name = "Platypus",
	Homeworld = "Earth",
	EvolvesFrom = {"steropodon"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("uintathere", {
	Name = "Uintathere",
	Homeworld = "Earth",
	EvolvesFrom = {"crusafontia", "leptictidium", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("gnoll", {
	Name = "Gnoll",
	Homeworld = "Alfheim",
	EvolvesFrom = {"amphicyon", "hemicyon", "miacis"}, -- common ancestor with hyenas
	Sapient = true
})
