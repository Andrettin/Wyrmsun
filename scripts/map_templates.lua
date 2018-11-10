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
--      (c) Copyright 2016-2018 by Andrettin
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

DefineMapTemplate("aethermaw", {
	Name = "Aethermaw",
	Plane = "aethermaw",
	Width = 51,
	Height = 42,
	TerrainImage = "scripts/map_templates/aethermaw.png"
})

DefineMapTemplate("alfheim", {
	Name = "Alfheim",
	World = "alfheim",
	Width = 984,
	Height = 728,
	TerrainImage = "scripts/map_templates/alfheim.png",
	GeneratedNeutralUnits = {
		"unit-gold-deposit", 4,
		"unit-silver-deposit", 4,
		"unit-copper-deposit", 4,
		"unit-iron-deposit", 12,
		"unit-tree-stump", 16,
		"unit-unicorn", 32
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

DefineMapTemplate("asgard", {
	Name = "Asgard",
	Plane = "asgard",
	Width = 256,
	Height = 256,
	TerrainImage = "scripts/map_templates/asgard.png",
	GeneratedNeutralUnits = {
		"unit-yale", 4,
		"unit-goat", 8,
		"unit-horse", 4
	}
})

DefineMapTemplate("earth", {
	Name = "Earth",
	World = "earth",
	Width = 8192,
	Height = 4096,
--	Scale = 2,
	TerrainImage = "scripts/map_templates/earth.png",
	GeneratedTerrains = {
		"rock", "low",
--		"limestone-rock", "very-low"
	},
	GeneratedNeutralUnits = {
		"unit-diamond-deposit", 1,
		"unit-gold-deposit", 2,
		"unit-silver-deposit", 2,
		"unit-copper-deposit", 2,
		"unit-iron-deposit", 6,
		"unit-tree-stump", 16,
		"unit-bee", 64,
		"unit-fly", 64,
		"unit-bug", 64,
		"unit-worm", 64,
		"unit-snail", 64,
		"unit-slug", 64,
		"unit-frog", 64,
		"unit-bird", 64,
		"unit-crow", 64,
		"unit-rat", 64,
		"unit-goat", 32,
		"unit-boar", 32,
		"unit-horse", 16,
		"unit-wolf", 32
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 8
	}
})

DefineMapTemplate("jotunheim", {
	Name = "Jotunheim",
	World = "jotunheim",
	Width = 984,
	Height = 728,
	TerrainImage = "scripts/map_templates/jotunheim.png",
	OverlayTerrainImage = "scripts/map_templates/jotunheim_overlay.png",
	GeneratedNeutralUnits = {
		"unit-gold-deposit", 1,
		"unit-silver-deposit", 1,
		"unit-copper-deposit", 1,
		"unit-iron-deposit", 3,
		"unit-tree-stump", 4
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

DefineMapTemplate("nidavellir-underground", {
	Name = "Nidavellir Underground",
	World = "nidavellir",
	SurfaceLayer = 1,
	Width = 984,
	Height = 728,
	TerrainImage = "scripts/map_templates/nidavellir_underground.png",
	OverlayTerrainImage = "scripts/map_templates/nidavellir_underground_overlay.png",
	GeneratedNeutralUnits = {
--		"unit-gold-deposit", 2,
--		"unit-silver-deposit", 2,
--		"unit-copper-deposit", 2,
--		"unit-iron-deposit", 6,
		"unit-copper-deposit", 1,
		"unit-iron-deposit", 1,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
		"unit-wood-pile", 64,
--		"unit-snigill", 64,
--		"unit-slime", 32,
--		"unit-blood-bat", 16,
--		"unit-dread-bat", 8,
--		"unit-wyrm", 4
		"unit-snigill", 16,
		"unit-slime", 4
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

DefineMapTemplate("niflheim", {
	Name = "Niflheim",
	Plane = "niflheim",
	Width = 256,
	Height = 256,
	TerrainImage = "scripts/map_templates/niflheim.png",
	OverlayTerrainImage = "scripts/map_templates/niflheim_overlay.png",
	GeneratedNeutralUnits = {
		"unit-wolf", 64,
		"unit-wyrm", 8,
		"unit-roaming-fog", 64
	}
})

-- Subtemplates that have subtemplates of their own

DefineMapTemplate("island-of-the-lizard-god", {
	Name = "Island of the Kobold God",
	MainTemplate = "nidavellir",
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
	MainTemplate = "nidavellir-underground",
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
