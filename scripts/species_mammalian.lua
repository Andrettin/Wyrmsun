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

DefineSpeciesOrder("primates", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180089
	Name = "Primates",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria"
})

DefineSpeciesOrder("rodentia", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180130
	Name = "Rodentia",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria"
})

DefineSpeciesFamily("antilocapridae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=552305
	Name = "Antilocapridae",
	Order = "artiodactyla"
})

DefineSpeciesFamily("bovidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180704
	Name = "Bovidae",
	Order = "artiodactyla"
})

DefineSpeciesFamily("equidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180688
	Name = "Equidae",
	Order = "perissodactyla"
})

DefineSpeciesFamily("hominidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180090
	Name = "Hominidae",
	Order = "primates",
	Suborder = "haplorrhini",
	Infraorder = "simiiformes",
	Superfamily = "hominoidea"
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

DefineSpecies("ilingoceros", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=42728
	Name = "Ilingoceros",
	Family = "antilocapridae",
	Genus = "ilingoceros",
	Species = "alexandrae", -- type species of the Ilingoceros genus
	Homeworld = "Earth",
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	Prehistoric = true,
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
	Prehistoric = true,
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
	Homeworld = "Earth",
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
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
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("unicorn", {
	Name = "Unicorn",
	Homeworld = "Alfheim",
	ChildUpgrade = "upgrade-child"
})


DefineSpecies("bat", {
	Name = "Bat",
	Homeworld = "Earth",
	Environments = {"cave"}, -- correct?
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("blood-bat", {
	Name = "Blood Bat",
	Homeworld = "Nidavellir",
	Environments = {"cave", "swamp"},
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dread-bat", {
	Name = "Dread Bat",
	Homeworld = "Nidavellir",
	Environments = {"cave", "swamp"}, -- correct?
	EvolvesFrom = {"adelobasileus"}, -- possibly, since Adelobasileus is a very early mammal (or is related to the earliest mammals)
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("cyclops", {
	Name = "Cyclops",
	Genus = "gigans", -- "giant" in Latin; cyclops are of the same genus as ettins
	Species = "cyclops",
	Homeworld = "Jotunheim",
	Sapient = true
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

DefineSpecies("ettin", {
	Name = "Ettin",
	Genus = "gigans", -- "giant" in Latin
	Species = "sapiens",
	Homeworld = "Jotunheim",
	Sapient = true
})

DefineSpecies("gnoll", {
	Name = "Gnoll",
	Homeworld = "Alfheim",
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

DefineSpecies("goblin", {
	Name = "Goblin",
	Genus = "gobelinus", -- "goblin" in Latin
	Species = "brevis", -- "small"/"short" in Latin (as it is smaller than a hobgoblin)
	Homeworld = "Nidavellir",
	Sapient = true
})

DefineSpecies("hobgoblin", {
	Name = "Hobgoblin",
	Genus = "gobelinus", -- "goblin" in Latin
	Species = "magnus", -- "big" in Latin" (as it is bigger than a goblin)
	Homeworld = "Nidavellir",
	Sapient = true
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

DefineSpecies("minotaur", {
	Name = "Minotaur",
	Homeworld = "Jotunheim",
	Sapient = true
})

DefineSpecies("ogre", {
	Name = "Ogre",
	Species = "sapiens",
	Homeworld = "Jotunheim",
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
