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

DefineMapTemplate("alfheim", {
	Name = "Alfheim",
	World = "Alfheim",
	Width = 984,
	Height = 728,
	TerrainImage = "scripts/map_templates/alfheim.png",
	GeneratedNeutralUnits = {
		"unit-gold-deposit", 4,
		"unit-silver-deposit", 4,
		"unit-copper-deposit", 4,
		"unit-tree-stump", 16,
		"unit-unicorn", 32,
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

AlfheimStartX = 728
AlfheimStartY = 0

SetMapTemplateUnit("alfheim", "unit-teuton-smithy", "lintanir", {763, 51}) -- smithy in which Volund is set to work in Saevarstad by his enemy king

SetMapTemplateHero("alfheim", "volund", "ulfdalir", {762, 53})

-- the king's sons, maybe their unit type should be thieves since they went to Volund's prison secretly, and since then him killing them wouldn't require being an enemy of the Lintanir faction
SetMapTemplateUnit("alfheim", "unit-elven-swordsman", "lintanir", {764, 54})
SetMapTemplateUnit("alfheim", "unit-elven-swordsman", "lintanir", {765, 53})

SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {760, 48})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {760, 49})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {760, 50})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {760, 51})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {760, 52})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {760, 53})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {760, 54})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {760, 55})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {761, 48})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {761, 55})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {762, 48})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {762, 55})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {763, 48})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {763, 55})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {764, 48})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {764, 55})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {765, 48})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {765, 55})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {766, 48})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {766, 55})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {761, 48})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {761, 55})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {767, 48})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {767, 49})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {767, 50})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {767, 53})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {767, 54})
SetMapTemplateTileTerrain("alfheim", "dwarven-wall", {767, 55})
