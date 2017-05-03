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
	Width = 26,
	Height = 33,
	SubtemplatePositionTopLeft = {31, 34},
	TerrainImage = "scripts/map_templates/nidavellir/island_of_the_lizard_god/crucible_of_steel.png",
	OverlayTerrainImage = "scripts/map_templates/nidavellir/island_of_the_lizard_god/crucible_of_steel_overlay.png"
})

SetMapTemplateLayerConnector("island-of-the-lizard-god", "unit-cavern-entrance", {36, 35}, 1)
SetMapTemplateLayerConnector("island-of-the-lizard-god-underground", "unit-cavern-entrance", {36, 35}, 0)

SetMapTemplateResource("crucible-of-steel", "unit-gold-deposit", {6, 31}) -- should be a mithril deposit

SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 9})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 10})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 11})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 12})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 13})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 14})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 15})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 16})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 17})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 19})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 21})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 22})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 23})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 24})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 25})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 26})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 27})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 28})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {5, 29})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {6, 9})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {6, 27})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {6, 28})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {6, 29})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 9})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 10})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 11})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 12})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 13})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 14})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 15})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 16})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 17})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 18})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 19})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 20})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 21})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 22})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 23})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 24})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 25})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 26})
SetMapTemplateTileTerrain("crucible-of-steel", "railroad", {7, 27})

SetMapTemplateUnit("crucible-of-steel", "unit-dwarven-smithy", "whitesteel-clan", {6, 7})
SetMapTemplateUnit("crucible-of-steel", "unit-minecart", "whitesteel-clan", {5, 13})
SetMapTemplateUnit("crucible-of-steel", "unit-minecart", "whitesteel-clan", {5, 15})
SetMapTemplateUnit("crucible-of-steel", "unit-minecart", "whitesteel-clan", {5, 17})
