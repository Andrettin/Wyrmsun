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

DefineSpeciesFamily("ailuridae", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 32-33; Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=726241
	Name = "Ailuridae",
	Order = "carnivora",
	Suborder = "caniformia"
})

DefineSpeciesGenus("amphictis", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 40.
	Name = "Amphictis",
	Family = "ailuridae"
})

DefineSpeciesGenus("magerictis", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 40-41.
	Name = "Magerictis",
	Family = "ailuridae"
})

DefineSpeciesGenus("simocyon", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 41.
	Name = "Simocyon",
	Family = "ailuridae"
})

DefineSpecies("amphictis-ambiguus", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 40.
	Name = "Amphictis",
	Category = "amphictis",
	ScientificName = "Amphictis ambiguus",
	Homeworld = "earth",
--	EvolvesFrom = {"amphicyon", "hemicyon", "miacis"},
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes", "miacis"},
	Era = "oligocene", -- Upper Oligocene and Lower Miocene (25-18 million years ago)
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- oldest ailurid
	-- was of a similar size as the modern red panda
	-- carnivore (its teeth were adapted to the consumption of meat)
})

DefineSpecies("magerictis-imperialensis", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 40-41.
	Name = "Magerictis", -- Magerictis imperialensis
	Category = "magerictis",
	ScientificName = "Magerictis imperialensis",
	Homeworld = "earth",
	EvolvesFrom = {"amphictis-ambiguus"}, -- earlier ailurid
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 30 cm shoulder height
	-- inhabited Spain
})

DefineSpecies("simocyon-batalleri", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, p. 41.
	Name = "Simocyon", -- Simocyon batalleri
	Category = "simocyon",
	ScientificName = "Simocyon batalleri",
	Homeworld = "earth",
	EvolvesFrom = {"amphictis-ambiguus"}, -- earlier ailurid
	Era = "miocene", -- Upper Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 70 cm shoulder height
	-- inhabited Eurasia and Africa
	-- weighted up to 65kg
})

