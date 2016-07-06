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

DefineSpecies("adelobasileus", { -- Source: Spencer G. Lucas and Zhexi Luo, "Adelobasileus from the Upper Triassic of West Texas: The Oldest Mammal", 1993, p. 309; Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=53175 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1196072
	Name = "Adelobasileus",
	Family = "synapsida",
	Genus = "adelobasileus",
	Species = "cromptoni",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	ChildUpgrade = "upgrade-child"
	-- scansorial insectivore
})

DefineSpecies("tyrannosaurus-rex", { -- Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=54833 ; Source: http://www.marine.csiro.au/mirrorsearch/ir_search.list_species?gen_id=1206683
	Name = "Tyrannosaurus Rex",
	Genus = "tyrannosaurus",
	Species = "rex",
	Homeworld = "Earth",
	Family = "tyrannosauridae",
	ChildUpgrade = "upgrade-child"
	-- weighted 3.97 tons
	-- ground dwelling carnivore
})
