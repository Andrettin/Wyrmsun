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

DefineSpeciesFamily("suidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180720
	Name = "Suidae",
	Order = "artiodactyla"
})

DefineSpeciesGenus("bunolistriodon", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 19, 56.
	Name = "Bunolistriodon",
	Family = "suidae",
	Subfamily = "listriodontinae"
})

DefineSpeciesGenus("conohyus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 56-57.
	Name = "Conohyus",
	Family = "suidae",
	Subfamily = "tetraconodontinae"
})

DefineSpeciesGenus("microstonyx", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 56-57.
	Name = "Microstonyx",
	Family = "suidae"
})

DefineSpeciesGenus("seta", { -- fictional genus
	Name = "Seta",
	Family = "suidae"
})

DefineSpeciesGenus("sus", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180721
	Name = "Sus",
	CommonName = "Pig",
	Family = "suidae",
	Subfamily = "suinae",
	Tribe = "suini"
})

DefineSpecies("bunolistriodon-lockarti", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 19, 56.
	Name = "Bunolistriodon", -- Bunolistriodon lockarti
	Genus = "bunolistriodon",
	Species = "lockarti",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"helohyus"},
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- primarily herbivore
	-- 65cm shoulder height
	-- lived in Eurasia
})

DefineSpecies("conohyus-simorrense", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 56-57.
	Name = "Conohyus", -- Conohyus simorrense
	Genus = "conohyus",
	Species = "simorrense",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"helohyus"},
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 60cm shoulder height
	-- lived in Eurasia and Africa
	-- could chew hard objects like bones
	-- carrion was probably an important part of its diet
})

DefineSpecies("microstonyx-major", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 56-57.
	Name = "Microstonyx", -- Microstonyx major
	Genus = "microstonyx",
	Species = "major",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"helohyus"},
	Era = "miocene", -- Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- lived in Eurasia
	-- 100 cm shoulder height
	-- weighted about 300kg
})

DefineSpecies("boar", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180722
	Name = "Boar",
	Genus = "sus",
	Species = "scrofa",
	Homeworld = "earth",
	Terrains = {"grass"},
	EvolvesFrom = {"bunolistriodon-lockarti", "conohyus-simorrense", "microstonyx-major"}, -- earlier suids
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("gullinbursti", { -- named after the mythical boar (in Norse mythology) Gullinbursti
	Name = "Gullinbursti",
	Genus = "seta", -- "bristle" in Latin
	Species = "aurea", -- "golden" in Latin
	Homeworld = "nidavellir",
	Terrains = {"dry-mud", "mud"}, -- should be dark dirt instead of dry-mud and mud
	EvolvesFrom = {"bunolistriodon-lockarti", "conohyus-simorrense", "microstonyx-major"}, -- earlier suids
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})
