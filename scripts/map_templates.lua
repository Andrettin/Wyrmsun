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

-- Subtemplates that have subtemplates of their own

DefineMapTemplate("island-of-the-lizard-god", {
	Name = "Island of the Kobold God",
	TerrainImage = "scripts/map_templates/nidavellir/island_of_the_lizard_god/island_of_the_lizard_god.png",
	Width = 160,
	Height = 128,
	SubtemplatePositionTopLeft = {748, 536},
	GeneratedNeutralUnits = {
		"unit-copper-deposit", 4,
		"unit-tree-stump", 4,
		"unit-snigill", 16,
		"unit-slime", 16,
		"unit-blood-bat", 8,
		"unit-yale-cave", 2,
		"unit-dread-bat", 4
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

DefineMapTemplate("island-of-the-lizard-god-underground", {
	Name = "Island of the Kobold God Underground",
	TerrainImage = "scripts/map_templates/nidavellir/island_of_the_lizard_god/island_of_the_lizard_god_underground.png",
	OverlayTerrainImage = "scripts/map_templates/nidavellir/island_of_the_lizard_god/island_of_the_lizard_god_underground_overlay.png",
	Width = 160,
	Height = 128,
	SubtemplatePositionTopLeft = {748, 536},
	GeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 32,
		"unit-wood-pile", 32,
		"unit-wood-pile", 32,
		"unit-wood-pile", 32,
		"unit-wood-pile", 32,
		"unit-wood-pile", 32,
		"unit-snigill", 8,
		"unit-slime", 4
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})
