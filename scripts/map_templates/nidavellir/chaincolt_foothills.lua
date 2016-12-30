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

DefineMapTemplate("chaincolt-foothills", { -- From Battle for Wesnoth: The Sceptre of Fire (A Bargain is Struck)
	Name = "Chaincolt Foothills",
	MainTemplate = "nidavellir",
	Width = 34,
	Height = 33,
	SubtemplatePosition = {453, 252},
	TerrainFile = "scripts/map_templates/nidavellir/chaincolt_foothills.map",
	OverlayTerrainFile = "scripts/map_templates/nidavellir/chaincolt_foothills_overlay.map"
})

SetMapTemplateUnit("chaincolt-foothills", "unit-dwarven-guard-tower", "norlund-clan", {28, 3}, 24, 25)
SetMapTemplateHero("chaincolt-foothills", "Rugnur", "norlund-clan", {28, 3}, 24, 25)
SetMapTemplateUnit("chaincolt-foothills", "unit-dwarven-guard-tower", "shinsplitter-clan", {28, 3}, 25)

SetMapTemplateUnit("chaincolt-foothills", "unit-dwarven-guard-tower", "shinsplitter-clan", {25, 28}, 24)
SetMapTemplateUnit("chaincolt-foothills", "unit-dwarven-steelclad", "shinsplitter-clan", {25, 28}, 24)

SetMapTemplateUnit("chaincolt-foothills", "unit-gnomish-master-at-arms", "untersberg", {5, 27}, 24, 25)