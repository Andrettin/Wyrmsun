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

DefineSpecies("aragoral", { -- Source: http://fossilworks.org/bridge.pl?action=taxonInfo&taxon_no=86341
	Name = "Aragoral",
	Category = "aragoral",
	Homeworld = "earth",
	EvolvesFrom = {"diacodexis"}, -- presumably, since Ilingoceros does
	Era = "miocene",
	Prehistoric = true,
	ChildUpgrade = "upgrade-child",
	Description = "The aragorals are the oldest caprines to have existed. The Aesir transported a few of them to Nidavellir, where they eventually evolved into yales."
	-- ground dwelling grazer-browser
})

DefineSpecies("tethytragus-langai", { -- Source: Mauricio Antón and Jorge Morales, "Madrid antes del hombre", 2009, pp. 60-61.
	Name = "Tethytragus", -- Tethytragus langai
	Category = "tethytragus",
	ScientificName = "Tethytragus langai",
	Homeworld = "earth",
	Terrains = {"grass", "dirt", "dry-mud", "mud"}, -- this species lived in Miocene Madrid, which was mostly arid with a swampy lake in the middle
	EvolvesFrom = {"diacodexis"},
	Era = "miocene", -- Middle Miocene
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
	-- 70cm shoulder height
	-- lived in Spain
})

DefineSpecies("cow", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=183838
	Name = "Cow",
	Category = "bos",
	ScientificName = "Bos taurus",
	Homeworld = "earth",
	EvolvesFrom = {"ilingoceros"}, -- shares a common ancestor with the bison
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("goat", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180715
	Name = "Goat",
	Category = "capra",
	ScientificName = "Capra hircus",
	Homeworld = "earth",
	Terrains = {"grass", "dirt"},
	EvolvesFrom = {"aragoral"}, -- oldest member of the Caprinae subfamily
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("yale", {
	Name = "Yale",
	Category = "eale",
	Homeworld = "nidavellir",
	Terrains = {"dry-mud", "snow"},
	EvolvesFrom = {"aragoral"}, -- oldest member of the Caprinae subfamily
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("minotaur", {
	Name = "Minotaur",
--	Family = "bovidae",
	Homeworld = "jotunheim",
	Era = "holocene",
	Sapient = true
})
