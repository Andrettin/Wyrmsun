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

DefineMapTemplate("aurvang", {
	Name = "Aurvang",
	MainTemplate = "nidavellir",
	Width = 32,
	Height = 32,
	BaseTerrain = "dry-mud",
	GeneratedTerrains = {
		"mud", "high",
		"shallow-water", "medium",
		"rock", "medium",
		"flamefood-tree", "medium"
	},
	ExternalGeneratedTerrains = {
		"mud", "low",
		"rock", "low",
		"flamefood-tree", "medium"
	},
	GeneratedNeutralUnits = {
		"unit-snigill", 16,
		"unit-slime", 8
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

SetMapTemplateUnit("aurvang", "unit-goblin-town-hall", "aurvangian-tribe", {-1, -1})
