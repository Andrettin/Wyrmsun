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

DefineSpeciesFamily("antilocapridae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=552305
	Name = "Antilocapridae",
	Kingdom = "animalia",
	Subkingdom = "bilateria",
	Infrakingdom = "deuterostomia",
	Phylum = "chordata",
	Subphylum = "vertebrata",
	Infraphylum = "gnathostomata",
	Superclass = "tetrapoda",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria",
	Order = "artiodactyla"
})

DefineSpeciesFamily("bovidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180704
	Name = "Bovidae",
	Kingdom = "animalia",
	Subkingdom = "bilateria",
	Infrakingdom = "deuterostomia",
	Phylum = "chordata",
	Subphylum = "vertebrata",
	Infraphylum = "gnathostomata",
	Superclass = "tetrapoda",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria",
	Order = "artiodactyla"
})

DefineSpeciesFamily("equidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180688
	Name = "Equidae",
	Kingdom = "animalia",
	Subkingdom = "bilateria",
	Infrakingdom = "deuterostomia",
	Phylum = "chordata",
	Subphylum = "vertebrata",
	Infraphylum = "gnathostomata",
	Superclass = "tetrapoda",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria",
	Order = "perissodactyla"
})

DefineSpeciesFamily("hominidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180090
	Name = "Hominidae",
	Kingdom = "animalia",
	Subkingdom = "bilateria",
	Infrakingdom = "deuterostomia",
	Phylum = "chordata",
	Subphylum = "vertebrata",
	Infraphylum = "gnathostomata",
	Superclass = "tetrapoda",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria",
	Order = "primates",
	Suborder = "haplorrhini",
	Infraorder = "simiiformes",
	Superfamily = "hominoidea"
})

DefineSpeciesFamily("muridae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180360
	Name = "Muridae",
	Kingdom = "animalia",
	Subkingdom = "bilateria",
	Infrakingdom = "deuterostomia",
	Phylum = "chordata",
	Subphylum = "vertebrata",
	Infraphylum = "gnathostomata",
	Superclass = "tetrapoda",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria",
	Order = "rodentia",
	Suborder = "myomorpha",
	Superfamily = "muroidea"
})

DefineSpeciesFamily("sciuridae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180135
	Name = "Sciuridae",
	Kingdom = "animalia",
	Subkingdom = "bilateria",
	Infrakingdom = "deuterostomia",
	Phylum = "chordata",
	Subphylum = "vertebrata",
	Infraphylum = "gnathostomata",
	Superclass = "tetrapoda",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria",
	Order = "rodentia",
	Suborder = "sciuromorpha"
})

DefineSpecies("adelobasileus", { -- Source: Spencer G. Lucas and Zhexi Luo, "Adelobasileus from the Upper Triassic of West Texas: The Oldest Mammal", 1993, p. 309; Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=86341
	Name = "Adelobasileus",
	Genus = "adelobasileus",
	Species = "cromptoni",
	Homeworld = "Earth",
	ChildUpgrade = "upgrade-child"
	-- scansorial insectivore
})

DefineSpecies("ilingoceros", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=42728
	Name = "Ilingoceros",
	Family = "antilocapridae",
	Genus = "ilingoceros",
	Species = "alexandrae", -- type species of the Ilingoceros genus
	Homeworld = "Earth",
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
	-- ground dwelling browser-grazer
})

DefineSpecies("aragoral", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=86341
	Name = "Aragoral",
	Family = "bovidae",
	Subfamily = "caprinae",
	Genus = "aragoral",
	Species = "mudejar", -- sole species of the Aragoral genus
	Homeworld = "Earth",
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
	-- ground dwelling grazer-browser
})

DefineSpecies("goat", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180715
	Name = "Goat",
	Family = "bovidae",
	Subfamily = "caprinae",
	Genus = "capra",
	Species = "hircus",
	Homeworld = "Earth",
	EvolvesFrom = {"aragoral"}, -- oldest member of the Caprinae subfamily
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("yale", {
	Name = "Yale",
	Family = "bovidae",
	Subfamily = "caprinae",
	Genus = "eale",
	Homeworld = "Nidavellir",
	Environments = {"swamp"}, -- should be dark plains
	EvolvesFrom = {"aragoral"}, -- oldest member of the Caprinae subfamily
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("horse", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180691
	Name = "Horse",
	Family = "equidae",
	Genus = "equus",
	Species = "caballus",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("rat", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180363
	Name = "Rat",
	Family = "muridae",
	Subfamily = "murinae",
	Genus = "rattus",
	Species = "norvegicus",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn", "cave"}, -- correct?
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("squirrel", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=632439
	Name = "Squirrel", -- Eurasian Red Squirrel
	Family = "sciuridae",
	Subfamily = "sciurinae",
	Tribe = "sciurini",
	Genus = "sciurus",
	Species = "vulgaris",
	Homeworld = "Earth",
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("proailurus", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=40900#
	Name = "Proailurus",
	Genus = "proailurus",
	Species = "lemanensis", -- sole species of the Proailurus genus
	ChildUpgrade = "upgrade-child",
	Homeworld = "Earth",
	EvolvesFrom = {"adelobasileus"} -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	-- ground dwelling carnivore-omnivore
	-- likely ancestor of sabertooths and modern cats; Source: http://www.wildworldvisuals.com/product/proailurus/
})

DefineSpecies("australopithecus", {
	Name = "Australopithecus",
	Family = "hominidae", -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=40900 ; Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=83061
	Genus = "australopithecus",
	Species = "afarensis",
	Homeworld = "Earth",
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dwarf", {
	Name = "Dwarf",
	Family = "hominidae",
	Genus = "nanus", -- "dwarf" in Latin
	Species = "sapiens",
	Homeworld = "Nidavellir",
	EvolvesFrom = {"australopithecus"}, -- could descend from another closely-related species instead; dwarves and gnomes should have a common ancestor
	Sapient = true
	-- in prehistoric times, the ancestors of dwarves and gnomes were transported to Nidavellir by the magic of the Aesir
})

DefineSpecies("elf", {
	Name = "Elf",
	Family = "hominidae",
	Genus = "alfus", -- "elf" in Latin
	Species = "sapiens",
	Homeworld = "Alfheim",
	EvolvesFrom = {"australopithecus"}, -- could descend from another closely-related species instead
	Sapient = true
})

DefineSpecies("gnome", {
	Name = "Gnome",
	Family = "hominidae",
	Genus = "gnomus", -- "gnome" in Latin
	Species = "sapiens",
	Homeworld = "Nidavellir",
	EvolvesFrom = {"australopithecus"}, -- could descend from another closely-related species instead; dwarves and gnomes should have a common ancestor
	Sapient = true
	-- in prehistoric times, the ancestors of dwarves and gnomes were transported to Nidavellir by the magic of the Aesir
})

DefineSpecies("derro", {
	Name = "Derro",
	Family = "hominidae",
	Genus = "gnomus", -- "gnome" in Latin
	Species = "detrimenti", -- "detrimental" in Latin
	Homeworld = "Nidavellir",
	EvolvesFrom = {"australopithecus"}, -- could descend from another closely-related species instead; dwarves and gnomes should have a common ancestor
	Sapient = true
	-- in prehistoric times, the ancestors of dwarves and gnomes were transported to Nidavellir by the magic of the Aesir
})

DefineSpecies("human", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180092
	Name = "Human",
	Family = "hominidae",
	Subfamily = "homininae",
	Genus = "homo",
	Species = "sapiens",
	Homeworld = "Earth",
	EvolvesFrom = {"australopithecus"}, -- possibly
	Sapient = true
})

DefineSpecies("ettin", {
	Name = "Ettin",
	Genus = "gigans", -- "giant" in Latin
	Species = "sapiens",
	Homeworld = "Jotunheim",
	Sapient = true
})

DefineSpecies("goblin", {
	Name = "Goblin",
	Genus = "gobelinus", -- "goblin" in Latin
	Species = "sapiens",
	Homeworld = "Nidavellir",
	Sapient = true
})

DefineSpecies("kobold", { -- reptilian
	Name = "Kobold",
	Homeworld = "Nidavellir",
	Sapient = true
})

DefineSpecies("orc", {
	Name = "Orc",
	Genus = "orcus", -- "orc" in Latin
	Species = "sapiens",
	Homeworld = "Jotunheim",
	Sapient = true
})

DefineSpecies("troll", {
	Name = "Troll",
	Homeworld = "Alfheim",
	Sapient = true
})

DefineSpecies("bat", {
	Name = "Bat",
	Homeworld = "Earth",
	Environments = {"cave"}, -- correct?
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("bee", {
	Name = "Bee",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("bird", {
	Name = "Bird",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("blood-bat", {
	Name = "Blood Bat",
	Homeworld = "Nidavellir",
	Environments = {"cave", "swamp"},
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("bug", {
	Name = "Bug",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("crow", {
	Name = "Crow",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dread-bat", {
	Name = "Dread Bat",
	Homeworld = "Nidavellir",
	Environments = {"cave", "swamp"}, -- correct?
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("fly", {
	Name = "Fly",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("frog", {
	Name = "Frog",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("gryphon", {
	Name = "Gryphon",
	Homeworld = "Nidavellir",
	Environments = {"swamp"}, -- should be dark plains
	ChildUpgrade = "upgrade-gryphon-child"
})

DefineSpecies("slime", {
	Name = "Slime",
	Homeworld = "Nidavellir",
	Environments = {"cave", "swamp"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("slug", {
	Name = "Slug",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("snail", {
	Name = "Snail",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("snigill", {
	Name = "Snigill",
	Homeworld = "Nidavellir",
	Environments = {"swamp", "cave"},
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("worm", {
	Name = "Worm",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-bee-child"
})

DefineSpecies("wyrm", {
	Name = "Wyrm",
	Homeworld = "Nidavellir",
	Environments = {"swamp", "cave"},
	ChildUpgrade = "upgrade-wyrm-child"
})
