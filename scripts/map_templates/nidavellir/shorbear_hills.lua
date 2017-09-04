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

-- From Battle for Wesnoth: The Sceptre of Fire (Hills of the Shorbear Clan, Towards the Caves)

--SetMapTemplateLayerConnector("nidavellir", "unit-cavern-entrance", {499, 209}, 1)
--SetMapTemplateLayerConnector("nidavellir-underground", "unit-cavern-entrance", {499, 209}, 0)

SetMapTemplateResource("nidavellir", "unit-yale-cave", {522, 230}) -- it seems sensible to have a yale cave in the Shorbear Hills; hill dwarves should be some of the dwarven clans that use yales the most, so they should have some wild yales nearby

SetMapTemplateHero("nidavellir", "rugnur", "norlund-clan", {499, 209}, 34, 35)
SetMapTemplateUnit("nidavellir", "unit-gnomish-duelist", "norlund-clan", {499, 209}, 34, 35) -- Gnomish Envoy
SetMapTemplateHero("nidavellir", "baglur", "norlund-clan", {499, 209}, 34, 35)
SetMapTemplateUnit("nidavellir", "unit-dwarven-gryphon-rider", "norlund-clan", {499, 209}, 34, 35) -- Kawn's Gryphon Rider
SetMapTemplateHero("nidavellir", "thursagan", "norlund-clan", {499, 209}, 34, 35)
SetMapTemplateHero("nidavellir", "durstorn", "norlund-clan", {507, 207}, 34, 35)
SetMapTemplateUnit("nidavellir", "unit-dwarven-pathfinder", "norlund-clan", {507, 207}, 34, 35) -- Noiraran
SetMapTemplateUnit("nidavellir", "unit-dwarven-steelclad", "norlund-clan", {507, 207}, 34, 35) -- Kuhnar

--SetMapTemplateLayerConnector("nidavellir", "unit-cavern-entrance", {532, 209}, 1)
--SetMapTemplateLayerConnector("nidavellir-underground", "unit-cavern-entrance", {532, 209}, 0)

SetMapTemplateUnit("nidavellir", "unit-dwarven-thane", "shorbear-clan", {515, 223}, 24, 35) -- Glonoin (location of the Shorbear Hold)
