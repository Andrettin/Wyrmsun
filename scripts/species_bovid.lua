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

DefineSpeciesFamily("bovidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180704
	Name = "Bovidae",
	Order = "artiodactyla"
})

DefineSpecies("aragoral", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=86341
	Name = "Aragoral",
	Family = "bovidae",
	Subfamily = "caprinae",
	Genus = "aragoral",
	Species = "mudejar", -- sole species of the Aragoral genus
	Homeworld = "Earth",
	EvolvesFrom = {"ilingoceros"},
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

DefineSpecies("minotaur", {
	Name = "Minotaur",
	Family = "bovidae",
	Homeworld = "Jotunheim",
	Sapient = true
})
