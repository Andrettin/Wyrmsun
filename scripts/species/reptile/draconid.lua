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

DefineSpecies("black-dragon", {
	Name = "Black Dragon",
	Category = "draco",
	ScientificName = "Draco nigrans", -- "nigrans" means "black" in Latin
	Homeworld = "jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("blue-dragon", {
	Name = "Blue Dragon",
	Category = "draco",
	ScientificName = "Draco caeruleus", -- "caeruleus" means "blue" in Latin
	Homeworld = "jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("brass-dragon", {
	Name = "Brass Dragon",
	Category = "draco",
	ScientificName = "Draco orichalcinus", -- "orichalcinus" means "brass" in Latin
	Homeworld = "jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("bronze-dragon", {
	Name = "Bronze Dragon",
	Category = "draco",
	ScientificName = "Draco aeneolus", -- "aeneolus" means "bronze" in Latin
	Homeworld = "jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("copper-dragon", {
	Name = "Copper Dragon",
	Category = "draco",
	ScientificName = "Draco chalceus", -- "chalceus" means "copper" in Latin
	Homeworld = "jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("gold-dragon", {
	Name = "Gold Dragon",
	Category = "draco",
	ScientificName = "Draco aureus", -- "aureus" means "gold" in Latin
	Homeworld = "jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("green-dragon", {
	Name = "Green Dragon",
	Category = "draco",
	ScientificName = "Draco viridis", -- "viridis" means "green" in Latin
	Homeworld = "jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("red-dragon", {
	Name = "Red Dragon",
	Category = "draco",
	ScientificName = "Draco rubeus", -- "rubeus" means "red" in Latin
	Homeworld = "jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("rust-dragon", {
	Name = "Rust Dragon",
	Category = "draco",
	ScientificName = "Draco ferrugo",
	Homeworld = "jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("silver-dragon", {
	Name = "Silver Dragon",
	Category = "draco",
	ScientificName = "Draco argenteus", -- "argenteus" means "silver" in Latin
	Homeworld = "jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("white-dragon", {
	Name = "White Dragon",
	Category = "draco",
	ScientificName = "Draco albus", -- "albus" means "white" in Latin
	Homeworld = "jotunheim",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("wyrm", {
	Name = "Wyrm",
	Category = "vurmus",
	Homeworld = "nidavellir",
	Terrains = {"cave-floor", "rockbound-cave-floor", "dry-mud", "mud", "desert-sand"},
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	Era = "holocene",
	ChildUpgrade = "upgrade-wyrm-child"
})

DefineSpecies("wyvern", {
	Name = "Wyvern",
--	Family = "draconidae",
	Homeworld = "jotunheim",
	ChildUpgrade = "upgrade-child"
})

DefineSpecies("kobold", {
	Name = "Kobold",
	Category = "koboldus",
	ScientificName = "Koboldus sapiens",
	Homeworld = "nidavellir",
	EvolvesFrom = {"tyrannosaurus-rex"}, -- seems sensible, given how the Tyrannosaurus rex has dragon-like features, so it could be an ancestor to mythical dragons
	Sapient = true
	-- Kobolds believe that they are descendants of wyrms, but in truth they share a common ancestor
})
