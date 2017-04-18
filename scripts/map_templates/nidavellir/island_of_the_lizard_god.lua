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

DefineMapTemplate("island-of-the-lizard-god", {
	Name = "Island of the Kobold God",
	MainTemplate = "nidavellir",
	TerrainImage = "scripts/map_templates/island_of_the_lizard_god.png",
	Width = 160,
	Height = 128,
	SubtemplatePositionTopLeft = {748, 536},
	GeneratedNeutralUnits = {
		"unit-copper-deposit", 4,
		"unit-tree-stump", 4,
		"unit-snigill", 16,
		"unit-slime", 16,
		"unit-blood-bat", 8,
		"unit-yale", 16,
		"unit-dread-bat", 4
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

--[[
DefineMapTemplate("lair-of-the-lizard-god", {
	Name = "Lair of the Kobold God",
	MainTemplate = "island-of-the-lizard-god",
	Width = 32,
	Height = 32,
	SubtemplatePositionTopLeft = {0, 48}
})

DefineMapTemplate("crucible-of-steel", {
	Name = "Crucible of Steel",
	MainTemplate = "island-of-the-lizard-god",
	Width = 32,
	Height = 32,
	SubtemplatePositionTopLeft = {32, 32}
})

DefineMapTemplate("siren-swamp", {
	Name = "Siren Swamp",
	MainTemplate = "island-of-the-lizard-god",
	Width = 32,
	Height = 32,
	SubtemplatePositionTopLeft = {32, 64}
})

DefineMapTemplate("driftwood", {
	Name = "Driftwood",
	MainTemplate = "island-of-the-lizard-god",
	Width = 32,
	Height = 32,
	SubtemplatePositionTopLeft = {32, 96}
})

DefineMapTemplate("jungle-of-insanity", {
	Name = "Jungle of Insanity",
	MainTemplate = "island-of-the-lizard-god",
	Width = 32,
	Height = 32,
	SubtemplatePositionTopLeft = {96, 0}
})

DefineMapTemplate("blackfang-river", {
	Name = "Blackfang River",
	MainTemplate = "island-of-the-lizard-god",
	Width = 32,
	Height = 32,
	SubtemplatePositionTopLeft = {96, 64}
})

DefineMapTemplate("mount-sacrifice", {
	Name = "Mount Sacrifice",
	MainTemplate = "island-of-the-lizard-god",
	Width = 32,
	Height = 32,
	SubtemplatePositionTopLeft = {128, 48}
})

DefineMapTemplate("land-of-the-goliaths", {
	Name = "Land of the Goliaths",
	MainTemplate = "island-of-the-lizard-god",
	Width = 32,
	Height = 32,
	SubtemplatePositionTopLeft = {128, 80}
})
--]]

SetMapTemplateUnit("island-of-the-lizard-god", "unit-cavern-entrance", "", {36, 35}) -- should be a connector to the underground level, to the Crucible of Steel
SetMapTemplateUnit("island-of-the-lizard-god", "unit-cavern-entrance", "", {133, 72}) -- should be a connector to the underground level, to Mount Sacrifice
SetMapTemplateUnit("island-of-the-lizard-god", "unit-cavern-entrance", "", {59, 117}) -- should be a connector to the underground level, to Driftwood (which should be an underground settlement)

SetMapTemplateUnit("island-of-the-lizard-god", "unit-dwarven-axefighter", "lyr", {14, 108}, 600)
SetMapTemplateUnit("island-of-the-lizard-god", "unit-dwarven-axefighter", "lyr", {14, 108}, 600)
SetMapTemplateUnit("island-of-the-lizard-god", "unit-dwarven-scout", "lyr", {14, 108}, 600)
SetMapTemplateUnit("island-of-the-lizard-god", "unit-dwarven-miner", "lyr", {14, 108}, 600)
SetMapTemplateUnit("island-of-the-lizard-god", "unit-dwarven-miner", "lyr", {14, 108}, 600)
SetMapTemplateUnit("island-of-the-lizard-god", "unit-dwarven-miner", "lyr", {14, 108}, 600)
SetMapTemplateUnit("island-of-the-lizard-god", "unit-dwarven-miner", "lyr", {14, 108}, 600)
SetMapTemplateUnit("island-of-the-lizard-god", "unit-dwarven-miner", "lyr", {14, 108}, 600)

SetMapTemplateHero("island-of-the-lizard-god", "grafvolluth", "grafvolling-tribe", {3,62})
SetMapTemplateUnit("island-of-the-lizard-god", "unit-goblin-guard-tower", "grafvolling-tribe", {101, 68}) -- location of the main kobold Blackfang river fortification
SetMapTemplateUnit("island-of-the-lizard-god", "unit-kobold-footpad", "grafvolling-tribe", {101, 68})
SetMapTemplateUnit("island-of-the-lizard-god", "unit-kobold-footpad", "grafvolling-tribe", {101, 68})
SetMapTemplateUnit("island-of-the-lizard-god", "unit-kobold-footpad", "grafvolling-tribe", {101, 68})
SetMapTemplateUnit("island-of-the-lizard-god", "unit-kobold-footpad", "grafvolling-tribe", {101, 68})

SetMapTemplateUnit("island-of-the-lizard-god", "unit-goblin-guard-tower", "grafvolling-tribe", {78, 64})
SetMapTemplateUnit("island-of-the-lizard-god", "unit-goblin-guard-tower", "grafvolling-tribe", {88, 80})
SetMapTemplateUnit("island-of-the-lizard-god", "unit-goblin-guard-tower", "grafvolling-tribe", {110, 52})
SetMapTemplateUnit("island-of-the-lizard-god", "unit-goblin-guard-tower", "grafvolling-tribe", {120, 63})

SetMapTemplateUnit("island-of-the-lizard-god", "unit-raft", "", {74, 92})
SetMapTemplateUnit("island-of-the-lizard-god", "unit-raft", "", {74, 93})
SetMapTemplateUnit("island-of-the-lizard-god", "unit-raft", "", {74, 94})
SetMapTemplateUnit("island-of-the-lizard-god", "unit-raft", "", {74, 95})
