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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineMapTemplate("caverns-of-chaincolt-gates", { -- From Battle for Wesnoth: The Sceptre of Fire (Closing the Gates)
	Name = "Caverns of Chaincolt Gates",
	MainTemplate = "nidavellir",
	Width = 34,
	Height = 30,
	SubtemplatePosition = {466, 227},
	TerrainFile = "scripts/map_templates/nidavellir/caverns_of_chaincolt_gates.map",
	OverlayTerrainFile = "scripts/map_templates/nidavellir/caverns_of_chaincolt_gates_overlay.map",
	GeneratedNeutralUnits = {
		"unit-copper-deposit", 1
	}
})

DefineMapTemplate("caverns-of-chaincolt-gates-underground", { -- From Battle for Wesnoth: The Sceptre of Fire (Closing the Gates)
	Name = "Caverns of Chaincolt Gates (Underground)",
	MainTemplate = "nidavellir-underground",
	Width = 34,
	Height = 30,
	SubtemplatePosition = {466, 227},
	TerrainFile = "scripts/map_templates/nidavellir/caverns_of_chaincolt_gates_underground.map",
	GeneratedNeutralUnits = {
		"unit-copper-deposit", 1
	}
})

--SetMapTemplateLayerConnector("caverns-of-chaincolt-gates", "unit-cavern-entrance", {11, 15}, 1)
--SetMapTemplateLayerConnector("caverns-of-chaincolt-gates-underground", "unit-cavern-entrance", {12, 14}, 0)

-- stepping on all the glyphs should deactivate (or reactivate) the connection between the cavern entrances
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-glyph", "", {3, 5})
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-glyph", "", {9, 11})
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-glyph", "", {14, 3})
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-glyph", "", {17, 15})
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-glyph", "", {23, 24})
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-glyph", "", {30, 19})

SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-dwarven-guard-tower", "norlund-clan", {22, 12}, 24)
SetMapTemplateHero("caverns-of-chaincolt-gates-underground", "baglur", "norlund-clan", {22, 11}, 24, 40)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-dwarven-guard", "norlund-clan", {10, 13}, 24)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-dwarven-guard", "norlund-clan", {14, 15}, 24)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-dwarven-guard", "norlund-clan", {12, 11}, 24)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-dwarven-guard", "norlund-clan", {15, 13}, 24)

-- should give these goblins to a faction later
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {6, 3}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {6, 3}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {6, 3}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {30, 25}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {30, 25}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {30, 25}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {30, 25}, 24, 25)
