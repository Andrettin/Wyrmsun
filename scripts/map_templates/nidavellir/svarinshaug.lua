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

DefineMapTemplate("svarinshaug", {
	Name = "Svarinshaug",
	MainTemplate = "nidavellir",
	World = "Nidavellir",
	Width = 128,
	Height = 128,
	BaseTerrain = "dry-mud",
	GeneratedTerrains = {
		"mud", "medium",
		"shallow-water", "low",
		"rock", "high",
		"flamefood-tree", "medium"
	},
	ExternalGeneratedTerrains = {
		"mud", "low",
		"rock", "low",
		"flamefood-tree", "low"
	},
	GeneratedNeutralUnits = {
		"unit-snigill", 16,
		"unit-slime", 8,
		"unit-yale", 32
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

DefineMapTemplate("svarinshaug-underground", {
	Name = "Svarinshaug Underground",
	MainTemplate = "nidavellir-underground-1",
	World = "Nidavellir",
	Width = 64,
	Height = 64,
	BaseTerrain = "cave-floor",
	GeneratedTerrains = {
		"rockbound-cave-floor", "medium",
		"gray-shallow-water", "low",
		"cave-wall", "medium"
	},
	ExternalGeneratedTerrains = {
		"rockbound-cave-floor", "low",
		"cave-wall", "low"
	},
	GeneratedNeutralUnits = {
		"unit-snigill", 8,
		"unit-slime", 4,
		"unit-blood-bat", 4,
		"unit-dread-bat", 2,
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

SetMapTemplateUnit("svarinshaug", "unit-dwarven-town-hall", "brising-clan", {-1, -1}, -2799)
SetMapTemplateUnit("svarinshaug", "unit-brising-miner", "brising-clan", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-brising-miner", "brising-clan", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-brising-miner", "brising-clan", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-brising-miner", "brising-clan", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-brising-miner", "brising-clan", {-1, -1}, -2800, -2799)
SetMapTemplateHero("svarinshaug", "Modsognir", "brising-clan", {-1, -1}, -2800, -2799)
SetMapTemplateHero("svarinshaug", "Durin", "brising-clan", {-1, -1}, -2800, -2799)
SetMapTemplateHero("svarinshaug", "Regin", "brising-clan", {-1, -1}, 561, 566) -- Sigibert's campaign begins in 561; Sigibert's encounter with Regin (which causes the latter's death in the end) should take place between Sigibert's initial defeat of the Avars and Chilperich in 561-562, and Sigibert's marriage to Brunichilde in 566

SetMapTemplateUnit("svarinshaug", "unit-wyrm", "grafvitning-tribe", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-kobold-footpad", "grafvitning-tribe", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-kobold-footpad", "grafvitning-tribe", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-kobold-footpad", "grafvitning-tribe", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-kobold-footpad", "grafvitning-tribe", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-kobold-footpad", "grafvitning-tribe", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-kobold-footpad", "grafvitning-tribe", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-kobold-footpad", "grafvitning-tribe", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-kobold-footpad", "grafvitning-tribe", {-1, -1}, -2800, -2799)
SetMapTemplateUnit("svarinshaug", "unit-kobold-footpad", "grafvitning-tribe", {-1, -1}, -2800, -2799)

--SetMapTemplateLayerConnector("svarinshaug", "unit-cavern-entrance", {-1, -1}, 1)
--SetMapTemplateLayerConnector("svarinshaug-underground", "unit-cavern-entrance", {-1, -1}, 0)
