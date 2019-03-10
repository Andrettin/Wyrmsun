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

DefineSpecies("mesohippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43010
	Name = "Mesohippus",
	Category = "mesohippus",
	Homeworld = "earth",
	EvolvesFrom = {"palaeotherium"},
	Era = "eocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling browser
})

DefineSpecies("anchitherium-alberdiae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 52-53.
	Name = "Alberd Anchitherium", -- Anchitherium alberdiae
	Category = "anchitherium",
	ScientificName = "Anchitherium alberdiae",
	Homeworld = "earth",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- present in Madrid
})

DefineSpecies("anchitherium-cursor", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 52-53.
	Name = "Anchitherium", -- Anchitherium cursor
	Category = "anchitherium",
	ScientificName = "Anchitherium cursor",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- lived in Madrid
	-- 100cm shoulder height
	-- great runner
})

DefineSpecies("hipparion-primigenium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 52-53.
	Name = "Hipparion", -- Hipparion primigenium
	Category = "hipparion",
	ScientificName = "Hipparion primigenium",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene", -- Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 135cm shoulder height
	-- lived in Eurasia
	-- their teeth allowed them to eat almost any kind of vegetable (including harder and more fibrous ones)
})

DefineSpecies("merychippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43009
	Name = "Merychippus",
	Category = "merychippus",
	Homeworld = "earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling grazer-browser
})

DefineSpecies("nannippus", { -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=43012
	Name = "Nannippus",
	Category = "nannippus",
	Homeworld = "earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling grazer
})

DefineSpecies("parahippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43016
	Name = "Parahippus",
	Category = "parahippus",
	ScientificName = "Parahippus cognatus", -- type species of the Parahippus genus
	Homeworld = "earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene", -- also occurred in the Oligocene, but in a much lesser frequency; Parahippus cognatus (the type species) is given as appearing only in the Miocene, Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=44053
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling browser
})

DefineSpecies("pliohippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43019
	Name = "Pliohippus",
	Category = "pliohippus",
	Homeworld = "earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling browser
})

DefineSpecies("horse", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180691
	Name = "Horse",
	Category = "equus",
	ScientificName = "Equus caballus",
	Homeworld = "earth",
	Terrains = {"grass", "dirt"}, -- correct?
	EvolvesFrom = {"anchitherium-cursor", "hipparion-primigenium", "merychippus", "nannippus", "parahippus", "pliohippus"}, -- earlier equids
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("pegasus", {
	Name = "Pegasus",
	Category = "pegasus",
	Homeworld = "alfheim",
	EvolvesFrom = {"anchitherium-cursor", "hipparion-primigenium", "merychippus", "nannippus", "parahippus", "pliohippus"}, -- earlier equids
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
	-- in Wyrmsun, the wings of pegasuses are not avian, having fur instead of feathers
})

DefineSpecies("sleipnir", {
	Name = "Sleipnir", -- eight-legged horse from Norse mythology
	Category = "sleipnir",
	ScientificName = "Sleipnir polypus", -- "many feet" in Latin
	Homeworld = "jotunheim", -- perhaps should be in Alfheim instead?
	EvolvesFrom = {"anchitherium-cursor", "hipparion-primigenium", "merychippus", "nannippus", "parahippus", "pliohippus"}, -- earlier equids
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
	-- could be made of the suitable size to be mounted by a giant, and thus used for ettin cavalry (as in Norse mythology Sleipnir is the child of a giant's horse)
})

DefineSpecies("unicorn", {
	Name = "Unicorn",
	Category = "unicornis",
	Homeworld = "alfheim",
	Terrains = {"grass"}, -- unicorns live in woodlands
	EvolvesFrom = {"anchitherium-cursor", "hipparion-primigenium", "merychippus", "nannippus", "parahippus", "pliohippus"}, -- earlier equids
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("centaur", {
	Name = "Centaur",
	Category = "centaurus",
	Homeworld = "alfheim",
	EvolvesFrom = {"anchitherium-cursor", "hipparion-primigenium", "merychippus", "nannippus", "parahippus", "pliohippus"}, -- earlier equids
	Sapient = true
	-- in Wyrmsun, centaurs are entirely equid, rather than being half-horse, half-human; they keep the same morphology, however; this means that they have a humanoid upper body, but with equid features like fur throughout the body and horse-like facial features
})
