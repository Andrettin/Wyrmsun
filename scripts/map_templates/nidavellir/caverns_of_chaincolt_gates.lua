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
	GeneratedNeutralUnits = {
		"unit-copper-deposit", 1
	}
})

SetMapTemplateLayerConnector("nidavellir", "unit-cavern-entrance", {459, 228}, 1)
SetMapTemplateLayerConnector("nidavellir-underground", "unit-cavern-entrance", {459, 228}, 0)

-- stepping on all the glyphs should deactivate (or reactivate) the connection between the cavern entrances
SetMapTemplateUnit("nidavellir-underground", "unit-glyph", "", {450 + 3, 213 + 5})
SetMapTemplateUnit("nidavellir-underground", "unit-glyph", "", {450 + 9, 213 + 11})
SetMapTemplateUnit("nidavellir-underground", "unit-glyph", "", {450 + 14, 213 + 3})
SetMapTemplateUnit("nidavellir-underground", "unit-glyph", "", {450 + 17, 213 + 15})
SetMapTemplateUnit("nidavellir-underground", "unit-glyph", "", {450 + 23, 213 + 24})
SetMapTemplateUnit("nidavellir-underground", "unit-glyph", "", {450 + 30, 213 + 19})

SetMapTemplateUnit("nidavellir-underground", "unit-dwarven-guard", "norlund-clan", {450 + 10, 213 + 13}, 24)
SetMapTemplateUnit("nidavellir-underground", "unit-dwarven-guard", "norlund-clan", {450 + 14, 213 + 15}, 24)
SetMapTemplateUnit("nidavellir-underground", "unit-dwarven-guard", "norlund-clan", {450 + 12, 213 + 11}, 24)
SetMapTemplateUnit("nidavellir-underground", "unit-dwarven-guard", "norlund-clan", {450 + 15, 213 + 13}, 24)

-- should give these goblins to a faction later
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {6, 3}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {6, 3}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {6, 3}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {30, 25}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {30, 25}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {30, 25}, 24, 25)
SetMapTemplateUnit("caverns-of-chaincolt-gates-underground", "unit-goblin-swordsman", "", {30, 25}, 24, 25)

-- Road present in 25, as seen in Battle for Wesnoth: The Sceptre of Fire (Closing the Gates)
SetMapTemplateTileTerrain("nidavellir", "road", {460, 230}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {460, 231}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {460, 232}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {460, 233}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {460, 234}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {460, 235}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {460, 236}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {460, 237}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {460, 238}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {460, 239}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {461, 239}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {462, 239}, 25)
SetMapTemplateTileTerrain("nidavellir", "road", {462, 240}, 25)
