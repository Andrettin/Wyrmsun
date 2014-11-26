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
--      scripts.lua - The craft configuration language.
--
--      (c) Copyright 2005 by Jimmy Salmon
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

-- Set the unit type graphics to the correct tileset
table.foreach(UnitTypeFiles,
	function(k, v) DefineUnitType(k, {Image = {"file", v[wyrmsun.tileset]}}) end)


-- Fix critters sounds and name
local CritterNames = {
	cave = _("Rat"),
	dungeon = _("Rat"),
	fairlimbed_forest = _("Rat"),
	forest = _("Rat"),
	swamp = _("Rat")
}

DefineUnitType("unit-critter", {
  Name = CritterNames[wyrmsun.tileset]
})

--local CritterSounds = {
--	swamp = "pig-selected"
--}

-- different ferns depending on tileset (normal graphic-per-tileset setting was resulting in bugs with the fern)
if (wyrmsun.tileset == "swamp" or wyrmsun.tileset == "cave" or wyrmsun.tileset == "dungeon") then
	DefineUnitType("unit-fern", {
		Image = {"file", "tilesets/swamp/neutral/decorations/fern.png", "size", {48, 48}},
	} )
elseif (wyrmsun.tileset == "forest" or wyrmsun.tileset == "fairlimbed_forest") then
	DefineUnitType("unit-fern", {
		Image = {"file", "tilesets/forest/neutral/decorations/fern.png", "size", {48, 48}},
	} )
end


--MapSound("critter-selected", CritterSounds[wyrmsun.tileset])

-- different lumber-harvesting methods depending on tileset
if (wyrmsun.tileset == "cave" or wyrmsun.tileset == "dungeon") then
	DefineUnitType("unit-dwarven-miner", {
		Image = {"file", "dwarf/units/miner.png", "size", {72, 72}},
		CanGatherResources = {
			{"file-when-loaded", "dwarf/units/miner_with_gold.png",
			"resource-id", "gold",
--			"harvest-from-outside",
			"resource-capacity", 100,
			"wait-at-resource", 120,
			"wait-at-depot", 150},
			{"file-when-loaded", "dwarf/units/miner_with_lumber.png",
			"resource-id", "lumber",
			"harvest-from-outside",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 29,
			"wait-at-depot", 150},
			{"file-when-loaded", "dwarf/units/miner_with_coal.png",
			"resource-id", "coal",
			"resource-capacity", 100,
			"wait-at-resource", 120,
			"wait-at-depot", 150}
		}
	} )
	DefineUnitType("unit-germanic-worker", {
		Image = {"file", "germanic/units/worker.png", "size", {72, 72}},
		CanGatherResources = {
			{"file-when-loaded", "germanic/units/worker_with_gold.png",
			"resource-id", "gold",
--			"harvest-from-outside",
			"resource-capacity", 100,
			"wait-at-resource", 150,
			"wait-at-depot", 150},
			{"file-when-loaded", "germanic/units/worker_with_lumber.png",
			"resource-id", "lumber",
			"harvest-from-outside",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 24,
			"wait-at-depot", 150}
		}
	} )
	DefineUnitType("unit-gnomish-worker", {
		Image = {"file", "gnome/units/gnomish_worker.png", "size", {72, 72}},
		CanGatherResources = {
			{"file-when-loaded", "gnome/units/gnomish_worker_with_gold.png",
			"resource-id", "gold",
--			"harvest-from-outside",
			"resource-capacity", 100,
			"wait-at-resource", 150,
			"wait-at-depot", 150},
			{"file-when-loaded", "gnome/units/gnomish_worker_with_lumber.png",
			"resource-id", "lumber",
			"harvest-from-outside",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 24,
			"wait-at-depot", 150}
		}
	} )
	DefineUnitType("unit-goblin-worker", {
		Image = {"file", "goblin/units/goblin_worker.png", "size", {72, 72}},
		CanGatherResources = {
			{"file-when-loaded", "goblin/units/goblin_worker_with_gold.png",
			"resource-id", "gold",
--			"harvest-from-outside",
			"resource-capacity", 100,
			"wait-at-resource", 150,
			"wait-at-depot", 150},
			{"file-when-loaded", "goblin/units/goblin_worker_with_lumber.png",
			"resource-id", "lumber",
			"harvest-from-outside",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 24,
			"wait-at-depot", 150}
		}
	} )
else
	DefineUnitType("unit-dwarven-miner", {
		Image = {"file", "dwarf/units/miner.png", "size", {72, 72}},
		CanGatherResources = {
			{"file-when-loaded", "dwarf/units/miner_with_gold.png",
			"resource-id", "gold",
--			"harvest-from-outside",
			"resource-capacity", 100,
			"wait-at-resource", 120,
			"wait-at-depot", 150},
			{"file-when-loaded", "dwarf/units/miner_with_lumber.png",
			"resource-id", "lumber",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 29,
			"wait-at-depot", 150,
			"terrain-harvester"},
			{"file-when-loaded", "dwarf/units/miner_with_coal.png",
			"resource-id", "coal",
			"resource-capacity", 100,
			"wait-at-resource", 120,
			"wait-at-depot", 150}
		}
	} )
	DefineUnitType("unit-germanic-worker", {
		Image = {"file", "germanic/units/worker.png", "size", {72, 72}},
		CanGatherResources = {
			{"file-when-loaded", "germanic/units/worker_with_gold.png",
			"resource-id", "gold",
--			"harvest-from-outside",
			"resource-capacity", 100,
			"wait-at-resource", 150,
			"wait-at-depot", 150},
			{"file-when-loaded", "germanic/units/worker_with_lumber.png",
			"resource-id", "lumber",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 24,
			"wait-at-depot", 150,
			"terrain-harvester"}
		}
	} )
	DefineUnitType("unit-gnomish-worker", {
		Image = {"file", "gnome/units/gnomish_worker.png", "size", {72, 72}},
		CanGatherResources = {
			{"file-when-loaded", "gnome/units/gnomish_worker_with_gold.png",
			"resource-id", "gold",
--			"harvest-from-outside",
			"resource-capacity", 100,
			"wait-at-resource", 150,
			"wait-at-depot", 150},
			{"file-when-loaded", "gnome/units/gnomish_worker_with_lumber.png",
			"resource-id", "lumber",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 24,
			"wait-at-depot", 150,
			"terrain-harvester"}
		}
	} )
	DefineUnitType("unit-goblin-worker", {
		Image = {"file", "goblin/units/goblin_worker.png", "size", {72, 72}},
		CanGatherResources = {
			{"file-when-loaded", "goblin/units/goblin_worker_with_gold.png",
			"resource-id", "gold",
--			"harvest-from-outside",
			"resource-capacity", 100,
			"wait-at-resource", 150,
			"wait-at-depot", 150},
			{"file-when-loaded", "goblin/units/goblin_worker_with_lumber.png",
			"resource-id", "lumber",
			"resource-capacity", 100,
			"resource-step", 2,
			"wait-at-resource", 24,
			"wait-at-depot", 150,
			"terrain-harvester"}
		}
	} )
end

-- Icon and construction graphics also depend on the tileset

Load("scripts/icons.lua")
Load("scripts/constructions.lua")

StopMusic()
MusicStopped()

if (wyrmsun.tileset == "cave") then -- ugly way to make sure the cave water appears properly
	ClearAllColorCyclingRange()
	AddColorCyclingRange(38, 46) -- water
else
	ClearAllColorCyclingRange()
	AddColorCyclingRange(38, 47) -- water
end
