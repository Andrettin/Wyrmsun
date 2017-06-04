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

DefineMapTemplate("aurvang", {
	Name = "Aurvang",
	MainTemplate = "nidavellir",
	Width = 46,
	Height = 35,
	SubtemplatePosition = {679, 312},
	-- map layout from Battle for Wesnoth: Delfador's Memoirs (Showdown in the Northern Swamp)
	GeneratedNeutralUnits = {
		"unit-copper-deposit", 2
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

SetMapTemplateUnit("aurvang", "unit-goblin-town-hall", "dreadskull-tribe", {12, 3})

SetMapTemplateUnit("aurvang", "unit-goblin-watch-tower", "dreadskull-tribe", {31, 7})

SetMapTemplateUnit("nidavellir", "unit-goblin-town-hall", "aurvangling-tribe", {751, 272})
SetMapTemplateUnit("nidavellir", "unit-goblin-guard-tower", "aurvangling-tribe", {740, 268})
SetMapTemplateUnit("nidavellir", "unit-goblin-guard-tower", "aurvangling-tribe", {746, 261})
SetMapTemplateUnit("nidavellir", "unit-goblin-guard-tower", "aurvangling-tribe", {722, 259})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {705, 254})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {708, 234})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {713, 242})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {714, 289})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {716, 233})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {719, 271})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {726, 279})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {728, 291})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {732, 313})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {738, 335})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {744, 300})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {744, 333})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {749, 329})
SetMapTemplateUnit("nidavellir", "unit-goblin-archer", "aurvangling-tribe", {753, 319})
