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

DefineSpeciesFamily("equidae", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180688
	Name = "Equidae",
	Order = "perissodactyla"
})

DefineSpecies("parahippus", {
	Name = "Parahippus",
	Homeworld = "Earth",
	EvolvesFrom = {"palaeotherium"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("horse", { -- Source: http://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=180691
	Name = "Horse",
	Family = "equidae",
	Genus = "equus",
	Species = "caballus",
	Homeworld = "Earth",
	Environments = {"conifer-forest-summer", "conifer-forest-autumn"}, -- correct?
	EvolvesFrom = {"parahippus"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("unicorn", {
	Name = "Unicorn",
	Homeworld = "Alfheim",
	EvolvesFrom = {"parahippus"}, -- has a common ancestor with horses
	Era = "holocene",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("centaur", {
	Name = "Centaur",
	Homeworld = "Alfheim",
	EvolvesFrom = {"parahippus"}, -- has a common ancestor with horses
	Sapient = true
	-- in Wyrmsun, centaurs are entirely equid, rather than being half-horse, half-human; they keep the same morphology, however; this means that they have a humanoid upper body, but with equid features like fur throughout the body and horse-like facial features
})
