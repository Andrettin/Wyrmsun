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

DefineMapTemplate("untersberg", {
	Name = "Untersberg",
	MainTemplate = "nidavellir",
	Width = 64,
	Height = 64,
	BaseTerrain = "dry-mud",
	SurroundingTerrain = "mud",
	GeneratedTerrains = {
		"mud", "low",
		"shallow-water", "low",
		"rock", "high",
		"flamefood-tree", "medium"
	},
	ExternalGeneratedTerrains = {
		"mud", "high",
		"dry-mud", "high",
		"rock", "high",
		"flamefood-tree", "medium"
	},
	GeneratedNeutralUnits = {
		"unit-gold-deposit", 4,
		"unit-silver-deposit", 4,
		"unit-copper-deposit", 4,
		"unit-snigill", 16,
		"unit-slime", 4
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

SetMapTemplateUnit("untersberg", "unit-gnomish-town-hall", "acthnic-tribe", {-1, -1})
SetMapTemplateUnit("untersberg", "unit-gnomish-town-hall", "cubital-tribe", {-1, -1})
SetMapTemplateUnit("untersberg", "unit-gnomish-town-hall", "sagan-tribe", {-1, -1})
SetMapTemplateUnit("untersberg", "unit-gnomish-town-hall", "vulcan-tribe", {-1, -1})
