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

DefineSpeciesFamily("rhinocerotidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=624916
	Name = "Rhinocerotidae",
	Order = "perissodactyla"
})

DefineSpeciesGenus("hispanotherium", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 18.
	Name = "Hispanotherium",
	Family = "rhinocerotidae", -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=56993
	Subfamily = "rhinocerotinae", -- Source: http://fossilworks.org/?a=taxonInfo&taxon_no=97723
	Tribe = "elasmotheriini" -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=43207
})

DefineSpeciesGenus("rhinoceros", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=624934
	Name = "Rhinoceros",
	Family = "rhinocerotidae"
})

DefineSpecies("hispanotherium-matritense", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 18.
	Name = "Hispanotherium", -- Madrilenian Hispanotherium
	Genus = "hispanotherium",
	Species = "matritense",
	Homeworld = "Earth",
	EvolvesFrom = {"palaeotherium"},
	Era = "miocene", -- Middle Aragonian
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- dwelled in open environments which possessed few trees
})

DefineSpecies("rhinoceros-unicornis", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=625005
	Name = "Rhinoceros", -- One-Horned Rhinoceros
	Genus = "rhinoceros",
	Species = "unicornis",
	Homeworld = "Earth",
	EvolvesFrom = {"hispanotherium-matritense"}, -- earlier Rhinocerotid
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

