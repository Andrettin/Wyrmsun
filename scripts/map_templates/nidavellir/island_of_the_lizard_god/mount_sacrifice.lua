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
--      (c) Copyright 2017-2020 by Andrettin
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

DefineMapTemplate("mount-sacrifice", {
	Name = "Mount Sacrifice",
	MainTemplate = "island-of-the-lizard-god-underground",
	Width = 32,
	Height = 24,
	SubtemplatePositionTopLeft = {128, 53},
	TerrainImage = "scripts/map_templates/nidavellir/island_of_the_lizard_god/mount_sacrifice.png",
	OverlayTerrainImage = "scripts/map_templates/nidavellir/island_of_the_lizard_god/mount_sacrifice_overlay.png"
})

SetMapTemplateLayerConnector("island-of-the-lizard-god", "unit-cavern-entrance", {133, 72}, 1)
SetMapTemplateLayerConnector("island-of-the-lizard-god-underground", "unit-cavern-entrance", {133, 72}, 0)

-- "Surprisingly lightly guarded entry chamber"
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {3, 13})

-- "Hundreds of lizardmen cavorting on a ramshackle platform above a sacrifice pool filled with ravenous crocodiles."
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {10, 13})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {10, 13})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {10, 13})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {10, 13})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {12, 11})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {12, 11})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {12, 11})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {12, 11})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {12, 15})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {12, 15})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {12, 15})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {12, 15})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {13, 13})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {13, 13})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {13, 13})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {13, 13})

-- "Guard room staffed by drunken lizardmen"
SetMapTemplateUnit("mount-sacrifice", "unit-table", "", {4, 5})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {4, 5})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {4, 5})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {4, 5})

-- "Lizard king's throne room. Beware his champion!"
SetMapTemplateUnit("mount-sacrifice", "unit-chair", "", {12, 2})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-champion", "grafvolling-tribe", {12, 2}) -- Kobold king's champion

-- "Lizard king's throne chambers. (Lots of treasure!)"
SetMapTemplateUnit("mount-sacrifice", "unit-gold-chest", "", {17, 2})
SetMapTemplateUnit("mount-sacrifice", "unit-bed", "", {21, 2})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-champion", "grafvolling-tribe", {17, 2}) -- Kobold king

-- "Prisoners kept here prior to sacrifice."
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {17, 12}) -- prison guard
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {17, 14})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {21, 12})
SetMapTemplateUnit("mount-sacrifice", "unit-kobold-footpad", "grafvolling-tribe", {21, 14})

-- "Prisoners tortured here prior to sacrifice."
SetMapTemplateUnit("mount-sacrifice", "unit-volcanic-crater", "", {28, 12})
