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

DefineSpeciesOrder("artiodactyla", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180692
	Name = "Artiodactyla",
	Class = "mammalia",
	Subclass = "theria",
	Infraclass = "eutheria"
})

DefineSpeciesFamily("antilocapridae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=552305
	Name = "Antilocapridae",
	Order = "artiodactyla"
})

DefineSpeciesFamily("cainotheriidae", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=67948
	Name = "Cainotheriidae",
	Order = "artiodactyla",
	Suborder = "tylopoda"
})

DefineSpeciesFamily("helohyidae", { -- Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_genera?fam_id=111988
	Name = "Helohyidae",
	Order = "artiodactyla"
})

DefineSpeciesFamily("moschidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=624921
	Name = "Moschidae",
	Order = "artiodactyla"
})

DefineSpeciesFamily("palaeomerycidae", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=42624
	Name = "Palaeomerycidae",
	Order = "artiodactyla"
})

DefineSpeciesFamily("tragulidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=624919
	Name = "Tragulidae",
	Order = "artiodactyla"
})

DefineSpeciesGenus("cainotherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 19.
	Name = "Cainotherium",
	Family = "cainotheriidae" -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=77399
})

DefineSpeciesGenus("dorcatherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 58-59.
	Name = "Dorcatherium",
	Family = "tragulidae"
})

DefineSpeciesGenus("ilingoceros", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=42728
	Name = "Ilingoceros",
	Family = "antilocapridae"
})

DefineSpeciesGenus("helohyus", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=42348 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1446494
	Name = "Helohyus",
	Family = "helohyidae"
})

DefineSpeciesGenus("micromeryx", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 58-59.
	Name = "Micromeryx",
	Family = "moschidae"
})

DefineSpeciesGenus("triceromeryx", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 18, 64-65.
	Name = "Triceromeryx",
	Family = "palaeomerycidae"
})

DefineSpecies("diacodexis", {
	Name = "Diacodexis",
	Homeworld = "earth",
	EvolvesFrom = {"chriacus", "hyopsodus", "phenacodus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("helohyus", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=42348 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1446494
	Name = "Helohyus",
	Category = "helohyus",
	Homeworld = "earth",
	EvolvesFrom = {"chriacus", "phenacodus"},
	Era = "eocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- amphibious herbivore-omnivore
})

DefineSpecies("cainotherium-miocaenicum", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 19.
	Name = "Cainotherium",
	Category = "cainotherium",
	ScientificName = "Cainotherium miocaenicum",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"diacodexis"},
	Era = "miocene", -- Middle Aragonian
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dorcatherium-crassum", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 58-59.
	Name = "Dorcatherium", -- Dorcatherium crassum
	Category = "dorcatherium",
	ScientificName = "Dorcatherium crassum",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"diacodexis"},
	Era = "miocene", -- Lower Miocene to the Lower Pliocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- lived in Eurasia and Africa
	-- 25-80cm shoulder height
	-- ate fruits and leaves, as well as worms and other invertebrates
})

DefineSpecies("ilingoceros", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=42728
	Name = "Ilingoceros",
	Category = "ilingoceros",
	ScientificName = "Ilingoceros alexandrae", -- type species of the Ilingoceros genus
	Homeworld = "earth",
	EvolvesFrom = {"diacodexis"},
	Era = "miocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling browser-grazer
})

DefineSpecies("megaloceros", {
	Name = "Megaloceros",
	Homeworld = "earth",
	EvolvesFrom = {"diacodexis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("micromeryx-azanzae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 58-59.
	Name = "Micromeryx", -- Micromeryx azanzae
	Category = "micromeryx",
	ScientificName = "Micromeryx azanzae",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"diacodexis"},
	Era = "miocene", -- end of the Middle Miocene and beginning of the Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 35-38cm shoulder height
	-- lived in Spain
	-- used its large upper canine teeth to fight with other males for females
	-- males have large canine teeth
})

DefineSpecies("micromeryx-soriae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 58-59.
	Name = "Micromeryx Soriae", -- Micromeryx soriae
	Category = "micromeryx",
	ScientificName = "Micromeryx soriae",
	Homeworld = "earth",
	EvolvesFrom = {"diacodexis"},
	Era = "miocene", -- Upper Vallensian
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("triceromeryx-pachecoi", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 18, 64-65.
	Name = "Triceromeryx",
	Category = "triceromeryx",
	ScientificName = "Triceromeryx pachecoi",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"diacodexis"},
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 125cm shoulder height
	-- lived in Spain
})

DefineSpecies("antelope", {
	Name = "Antelope",
	Homeworld = "earth",
	EvolvesFrom = {"ilingoceros"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("bison", {
	Name = "Bison",
	Homeworld = "earth",
	EvolvesFrom = {"ilingoceros"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("giraffe", {
	Name = "Giraffe",
	Homeworld = "earth",
	EvolvesFrom = {"diacodexis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("hippopotamus", {
	Name = "Hippopotamus",
	Homeworld = "earth",
	EvolvesFrom = {"helohyus"},
	ChildUpgrade = "upgrade-child"
})

Load("scripts/species/mammal/artiodactyl/bovid.lua")
Load("scripts/species/mammal/artiodactyl/cervid.lua")
Load("scripts/species/mammal/artiodactyl/suid.lua")
