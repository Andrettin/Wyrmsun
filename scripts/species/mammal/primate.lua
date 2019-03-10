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

DefineSpecies("plesiadapis", {
	Name = "Plesiadapis",
	Homeworld = "earth",
	EvolvesFrom = {"alphadon", "leptictidium", "zalambdalestes"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("lemur", {
	Name = "Lemur",
	Homeworld = "earth",
	EvolvesFrom = {"plesiadapis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("monkey", {
	Name = "Monkey",
	Homeworld = "earth",
	EvolvesFrom = {"plesiadapis"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("dryopithecus", {
	Name = "Dryopithecus",
	Homeworld = "earth",
	EvolvesFrom = {"plesiadapis"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("chimpanzee", {
	Name = "Chimpanzee",
	Homeworld = "earth",
	EvolvesFrom = {"dryopithecus"},
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("australopithecus", {
	Name = "Australopithecus",
	Category = "australopithecus",
	ScientificName = "Australopithecus afarensis", -- the Australopithecus afarensis is also known as Praeanthropus africanus; Source: http://fossilworks.org/bridge.pl?a=taxonInfo&taxon_no=83054
	Homeworld = "earth",
	EvolvesFrom = {"dryopithecus"},
	Prehistoric = true,
	ChildUpgrade = "upgrade-child"
})
