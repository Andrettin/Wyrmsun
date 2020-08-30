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
--      (c) Copyright 2016-2020 by Andrettin
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

DefineSpecies("acanthostega", {
	Name = "Acanthostega",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"rhipidistian_fish"}
})

DefineSpecies("elginerpeton", {
	Name = "Elginerpeton",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"rhipidistian_fish"}
})

DefineSpecies("hylerpeton", {
	Name = "Hylerpeton",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"rhipidistian_fish"}
})

DefineSpecies("ichthyostega", {
	Name = "Ichthyostega",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"rhipidistian_fish"}
})

DefineSpecies("tulerpeton", {
	Name = "Tulerpeton",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"rhipidistian_fish"}
})

DefineSpecies("ventastega", {
	Name = "Ventastega",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"rhipidistian_fish"}
})

DefineSpecies("aistopod", {
	Name = "Aistopod",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"elginerpeton", "hylerpeton", "tulerpeton"}
})

DefineSpecies("cacops", {
	Name = "Cacops",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"acanthostega", "ichthyostega", "ventastega"}
})

DefineSpecies("diplocaulus", {
	Name = "Diplocaulus",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"elginerpeton", "ichthyostega", "tulerpeton"}
})

DefineSpecies("eogyrinus", {
	Name = "Eogyrinus",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"elginerpeton", "hylerpeton", "ventastega"}
})

DefineSpecies("greererpeton", {
	Name = "Greererpeton",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"acanthostega", "ichthyostega", "tulerpeton"}
})

DefineSpecies("diadectes", {
	Name = "Diadectes",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"cacops", "diplocaulus", "eogyrinus", "greererpeton"}
})

DefineSpecies("pantylus", {
	Name = "Pantylus",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"aistopod", "diplocaulus"}
})

DefineSpecies("peltobatrachus", {
	Name = "Peltobatrachus",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"cacops", "eogyrinus", "greererpeton"}
})

DefineSpecies("platyhystrix", {
	Name = "Platyhystrix",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"cacops", "eogyrinus", "greererpeton"}
})

DefineSpecies("seymouria", {
	Name = "Seymouria",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"acanthostega", "hylerpeton", "ventastega"}
})

DefineSpecies("tuditanus", {
	Name = "Tuditanus",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"aistopod", "diplocaulus"}
})

DefineSpecies("hylonomus", {
	Name = "Hylonomus",
	Supertaxon = "amphibia",
	Homeworld = "earth",
	EvolvesFrom = {"diadectes", "pantylus", "peltobatrachus", "platyhystrix", "seymouria", "tuditanus"}
})
