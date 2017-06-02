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

DefineMapTemplate("shorbear-hills", { -- From Battle for Wesnoth: The Sceptre of Fire (Hills of the Shorbear Clan, Towards the Caves)
	Name = "Shorbear Hills",
	MainTemplate = "nidavellir",
	Width = 42,
	Height = 40,
	SubtemplatePosition = {516, 225},
	GeneratedNeutralUnits = {
		"unit-copper-deposit", 2
	},
	PlayerLocationGeneratedNeutralUnits = {
		"unit-copper-deposit", 1,
		"unit-wood-pile", 16,
		"unit-stone-pile", 16
	}
})

--SetMapTemplateLayerConnector("shorbear-hills", "unit-cavern-entrance", {3, 3}, 1)
--SetMapTemplateLayerConnector("nidavellir-underground", "unit-cavern-entrance", {3, 3}, 0)

SetMapTemplateResource("nidavellir", "unit-yale-cave", {522, 230}) -- it seems sensible to have a yale cave in the Shorbear Hills; hill dwarves should be some of the dwarven clans that use yales the most, so they should have some wild yales nearby

SetMapTemplateHero("shorbear-hills", "rugnur", "norlund-clan", {3, 3}, 34, 35)
SetMapTemplateUnit("shorbear-hills", "unit-gnomish-duelist", "norlund-clan", {3, 3}, 34, 35) -- Gnomish Envoy
SetMapTemplateHero("shorbear-hills", "baglur", "norlund-clan", {3, 3}, 34, 35)
SetMapTemplateUnit("shorbear-hills", "unit-dwarven-gryphon-rider", "norlund-clan", {3, 3}, 34, 35) -- Kawn's Gryphon Rider
SetMapTemplateHero("shorbear-hills", "thursagan", "norlund-clan", {3, 3}, 34, 35)
SetMapTemplateHero("shorbear-hills", "durstorn", "norlund-clan", {11, 1}, 34, 35)
SetMapTemplateUnit("shorbear-hills", "unit-dwarven-pathfinder", "norlund-clan", {11, 1}, 34, 35) -- Noiraran
SetMapTemplateUnit("shorbear-hills", "unit-dwarven-steelclad", "norlund-clan", {11, 1}, 34, 35) -- Kuhnar

--SetMapTemplateLayerConnector("shorbear-hills", "unit-cavern-entrance", {36, 3}, 1)
--SetMapTemplateLayerConnector("nidavellir-underground", "unit-cavern-entrance", {36, 3}, 0)

SetMapTemplateUnit("shorbear-hills", "unit-dwarven-stronghold", "shorbear-clan", {19, 17}, 24, 35)
SetMapTemplateUnit("shorbear-hills", "unit-dwarven-thane", "shorbear-clan", {19, 17}, 24, 35) -- Glonoin
SetMapTemplateUnit("shorbear-hills", "unit-dwarven-stronghold", "norlund-clan", {19, 17}, 35, 40)