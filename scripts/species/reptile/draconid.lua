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

DefineSpeciesFamily("draconidae", {
	Name = "Draconidae",
	Order = "saurischia"
})

DefineSpeciesGenus("draco", {
	Name = "Draco", -- "dragon" in Latin
	CommonName = "Dragon",
	Family = "draconidae"
})

DefineSpeciesGenus("vurmus", {
	Name = "Vurmus", -- tentative rendering of "wyrm" in Latin
	CommonName = "Wyrm",
	Family = "draconidae"
})

DefineSpecies("black-dragon", {
	Name = "Black Dragon",
	Genus = "draco",
	Species = "nigrans", -- "black" in Latin
	Homeworld = "Jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("blue-dragon", {
	Name = "Blue Dragon",
	Genus = "draco",
	Species = "caeruleus", -- "blue" in Latin
	Homeworld = "Jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("brass-dragon", {
	Name = "Brass Dragon",
	Genus = "draco",
	Species = "orichalcinus", -- "brass" in Latin
	Homeworld = "Jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("bronze-dragon", {
	Name = "Bronze Dragon",
	Genus = "draco",
	Species = "aeneolus", -- "bronze" in Latin
	Homeworld = "Jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("copper-dragon", {
	Name = "Copper Dragon",
	Genus = "draco",
	Species = "chalceus", -- "copper" in Latin
	Homeworld = "Jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("gold-dragon", {
	Name = "Gold Dragon",
	Genus = "draco",
	Species = "aureus", -- "gold" in Latin
	Homeworld = "Jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("green-dragon", {
	Name = "Green Dragon",
	Genus = "draco",
	Species = "viridis", -- "green" in Latin
	Homeworld = "Jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("red-dragon", {
	Name = "Red Dragon",
	Genus = "draco",
	Species = "rubeus", -- "red" in Latin
	Homeworld = "Jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("rust-dragon", {
	Name = "Rust Dragon",
	Genus = "draco",
	Species = "ferrugo", -- "brass" in Latin
	Homeworld = "Jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("silver-dragon", {
	Name = "Silver Dragon",
	Genus = "draco",
	Species = "argenteus", -- "silver" in Latin
	Homeworld = "Jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("white-dragon", {
	Name = "White Dragon",
	Genus = "draco",
	Species = "albus", -- "white" in Latin
	Homeworld = "Jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("wyrm", {
	Name = "Wyrm",
	Genus = "vurmus",
	Homeworld = "Nidavellir",
	Environments = {"swamp", "cave"},
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	Era = "holocene",
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("wyvern", {
	Name = "Wyvern",
--	Family = "draconidae",
	Homeworld = "Jotunheim",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("kobold", {
	Name = "Kobold",
--	Family = "draconidae",
	Species = "sapiens",
	Homeworld = "Nidavellir",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	Sapient = true
	-- Kobolds believe that they are descendants of wyrms, but in truth they share a common ancestor
})
