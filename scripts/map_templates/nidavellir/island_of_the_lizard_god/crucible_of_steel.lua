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
--      (c) Copyright 2017 by Andrettin
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

DefineMapTemplate("crucible-of-steel", {
	Name = "Crucible of Steel",
	MainTemplate = "island-of-the-lizard-god-underground",
	Width = 33,
	Height = 26,
	SubtemplatePositionTopLeft = {33, 37},
	TerrainImage = "scripts/map_templates/nidavellir/island_of_the_lizard_god/crucible_of_steel.png",
	OverlayTerrainImage = "scripts/map_templates/nidavellir/island_of_the_lizard_god/crucible_of_steel_overlay.png"
})

SetMapTemplateLayerConnector("island-of-the-lizard-god", "unit-cavern-entrance", {34, 57}, 1, "crucible-of-steel-entrance")
SetMapTemplateLayerConnector("island-of-the-lizard-god-underground", "unit-cavern-entrance", {34, 57}, 0, "crucible-of-steel-entrance")

SetMapTemplateResource("crucible-of-steel", "unit-copper-deposit", {31, 19}) -- should be an iron deposit

SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {10, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {10, 19})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {10, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {11, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {11, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {12, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {12, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {13, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {13, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {14, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {14, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {15, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {15, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {16, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {16, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {17, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {17, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {18, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {18, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {19, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {19, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {20, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {20, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {21, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {21, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {22, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {22, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {23, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {23, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {24, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {24, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {25, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {25, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {26, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {26, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {27, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {27, 19})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {27, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {28, 19})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {28, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {29, 19})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {29, 20})
