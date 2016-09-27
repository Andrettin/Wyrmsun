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

DefineMapTemplate("nidavellir", {
	Name = "Nidavellir",
	World = "Nidavellir",
	Width = 128,
	Height = 128,
	BaseTerrain = "dry-mud",
	GeneratedTerrains = {
		"mud", "medium",
		"shallow-water", "medium",
		"rock", "high",
		"flamefood-tree", "medium"
	},
	GeneratedNeutralUnits = {
		"unit-gold-deposit", 2,
		"unit-silver-deposit", 2,
		"unit-copper-deposit", 2,
		"unit-snigill", 64,
		"unit-slime", 32,
		"unit-blood-bat", 32,
		"unit-yale", 16,
		"unit-dread-bat", 16,
		"unit-gryphon", 8,
		"unit-wyrm", 4
	}
})

SetMapTemplateUnit("nidavellir", "unit-dwarven-town-hall", "Brising Clan", {-1, -1})
SetMapTemplateUnit("nidavellir", "unit-gnomish-town-hall", "Acthnic Tribe", {-1, -1})
SetMapTemplateUnit("nidavellir", "unit-gnomish-town-hall", "Cubital Tribe", {-1, -1})
SetMapTemplateUnit("nidavellir", "unit-gnomish-town-hall", "Sagan Tribe", {-1, -1})
SetMapTemplateUnit("nidavellir", "unit-gnomish-town-hall", "Vulcan Tribe", {-1, -1})
SetMapTemplateUnit("nidavellir", "unit-goblin-town-hall", "Khag Tribe", {-1, -1})
SetMapTemplateUnit("nidavellir", "unit-goblin-town-hall", "Lggi Tribe", {-1, -1})
SetMapTemplateLayerConnector("nidavellir", "unit-glyph", {-1, -1}, "Asgard")

--Load("scripts/map_templates/aurvang.lua")
--Load("scripts/map_templates/joruvellir.lua")
--Load("scripts/map_templates/svarinshaug.lua")
--Load("scripts/map_templates/untersberg.lua")
--Load("scripts/map_templates/caverns_of_chaincolt_city.lua")