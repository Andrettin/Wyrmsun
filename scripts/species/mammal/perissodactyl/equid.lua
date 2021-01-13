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
--      (c) Copyright 2016-2021 by Andrettin
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

DefineSpeciesGenus("anchitherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 52-53.
	Name = "Anchitherium",
	Family = "equidae"
})

DefineSpeciesGenus("centaurus", {
	Name = "Centaurus",
	CommonName = "Centaur",
	Family = "equidae"
})

DefineSpeciesGenus("equus", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180689
	Name = "Equus",
	Family = "equidae"
})

DefineSpeciesGenus("hipparion", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 52-53.
	Name = "Hipparion",
	Family = "equidae"
})

DefineSpeciesGenus("pegasus", {
	Name = "Pegasus",
	CommonName = "Pegasus",
	Family = "equidae"
})

DefineSpeciesGenus("sleipnir", {
	Name = "Sleipnir",
	Family = "equidae"
})

DefineSpeciesGenus("unicornis", {
	Name = "Unicornis",
	CommonName = "Unicorn",
	Family = "equidae"
})

DefineSpecies("anchitherium-alberdiae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 52-53.
	Name = "Alberd Anchitherium", -- Anchitherium alberdiae
	Genus = "anchitherium",
	Species = "alberdiae",
	Homeworld = "earth"
	-- present in Madrid
})

DefineSpecies("anchitherium-cursor", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 52-53.
	Name = "Anchitherium", -- Anchitherium cursor
	Genus = "anchitherium",
	Species = "cursor",
	Homeworld = "earth",
	Terrains = {"grass", "semi_dry_grass", "dry_grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene" -- Middle Miocene
	-- lived in Madrid
	-- 100cm shoulder height
	-- great runner
})

DefineSpecies("hipparion-primigenium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 52-53.
	Name = "Hipparion", -- Hipparion primigenium
	Genus = "hipparion",
	Species = "primigenium",
	Homeworld = "earth",
	Terrains = {"grass", "semi_dry_grass", "dry_grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene" -- Upper Miocene
	-- 135cm shoulder height
	-- lived in Eurasia
	-- their teeth allowed them to eat almost any kind of vegetable (including harder and more fibrous ones)
})

DefineSpecies("merychippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43009
	Name = "Merychippus",
	Genus = "merychippus",
	Homeworld = "earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene"
	-- ground dwelling grazer-browser
})

DefineSpecies("nannippus", { -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=43012
	Name = "Nannippus",
	Genus = "nannippus",
	Homeworld = "earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene"
	-- ground dwelling grazer
})

DefineSpecies("parahippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43016
	Name = "Parahippus",
	Genus = "parahippus",
	Species = "cognatus", -- type species of the Parahippus genus
	Homeworld = "earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene" -- also occurred in the Oligocene, but in a much lesser frequency; Parahippus cognatus (the type species) is given as appearing only in the Miocene, Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=44053
	-- ground dwelling browser
})

DefineSpecies("pliohippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43019
	Name = "Pliohippus",
	Genus = "pliohippus",
	Homeworld = "earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene"
	-- ground dwelling browser
})
