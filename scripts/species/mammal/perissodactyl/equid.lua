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

DefineSpeciesFamily("equidae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33; Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180688
	Name = "Equidae",
	Order = "perissodactyla"
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

DefineSpeciesGenus("merychippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43009
	Name = "Merychippus",
	Family = "equidae",
	Subfamily = "equinae"
})

DefineSpeciesGenus("mesohippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43010
	Name = "Mesohippus",
	Family = "equidae",
	Subfamily = "anchitheriinae"
})

DefineSpeciesGenus("nannippus", { -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=43012
	Name = "Nannippus",
	Family = "equidae",
	Subfamily = "equinae",
	Tribe = "hipparionini"
})

DefineSpeciesGenus("parahippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43016
	Name = "Parahippus",
	Family = "equidae",
	Subfamily = "anchitheriinae"
})

DefineSpeciesGenus("pegasus", {
	Name = "Pegasus",
	CommonName = "Pegasus",
	Family = "equidae"
})

DefineSpeciesGenus("pliohippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43019
	Name = "Pliohippus",
	Family = "equidae",
	Subfamily = "equinae",
	Tribe = "equini"
})

DefineSpeciesGenus("unicornis", {
	Name = "Unicornis",
	CommonName = "Unicorn",
	Family = "equidae"
})

DefineSpecies("mesohippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43010
	Name = "Mesohippus",
	Genus = "mesohippus",
	Homeworld = "Earth",
	EvolvesFrom = {"palaeotherium"},
	Era = "eocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling browser
})

DefineSpecies("merychippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43009
	Name = "Merychippus",
	Genus = "merychippus",
	Homeworld = "Earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling grazer-browser
})

DefineSpecies("nannippus", { -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=43012
	Name = "Nannippus",
	Genus = "nannippus",
	Homeworld = "Earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling grazer
})

DefineSpecies("parahippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43016
	Name = "Parahippus",
	Genus = "parahippus",
	Species = "cognatus", -- type species of the Parahippus genus
	Homeworld = "Earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene", -- also occurred in the Oligocene, but in a much lesser frequency; Parahippus cognatus (the type species) is given as appearing only in the Miocene, Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=44053
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling browser
})

DefineSpecies("pliohippus", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=43019
	Name = "Pliohippus",
	Genus = "pliohippus",
	Homeworld = "Earth",
	EvolvesFrom = {"mesohippus"}, -- earlier equid
	Era = "miocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- ground dwelling browser
})

DefineSpecies("horse", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180691
	Name = "Horse",
	Genus = "equus",
	Species = "caballus",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	EvolvesFrom = {"merychippus", "nannippus", "parahippus", "pliohippus"}, -- earlier equids
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("pegasus", {
	Name = "Pegasus",
	Genus = "pegasus",
	Homeworld = "Alfheim",
	EvolvesFrom = {"merychippus", "nannippus", "parahippus", "pliohippus"}, -- earlier equids
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
	-- in Wyrmsun, the wings of pegasuses are not avian, having fur instead of feathers
})

DefineSpecies("unicorn", {
	Name = "Unicorn",
	Genus = "unicornis",
	Homeworld = "Alfheim",
	EvolvesFrom = {"merychippus", "nannippus", "parahippus", "pliohippus"}, -- earlier equids
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("centaur", {
	Name = "Centaur",
	Genus = "centaurus",
	Homeworld = "Alfheim",
	EvolvesFrom = {"merychippus", "nannippus", "parahippus", "pliohippus"}, -- earlier equids
	Sapient = true
	-- in Wyrmsun, centaurs are entirely equid, rather than being half-horse, half-human; they keep the same morphology, however; this means that they have a humanoid upper body, but with equid features like fur throughout the body and horse-like facial features
})
