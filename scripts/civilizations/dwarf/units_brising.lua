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
--      (c) Copyright 2016-2019 by Andrettin
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

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--

DefineUnitType("unit-brising-miner", {
	Parent = "unit-dwarven-miner",
	Civilization = "dwarf",
	Faction = "brising-clan",
	Icon = "icon-brising-miner",
	HitPoints = 40, -- +10 HP
	Points = 35 -- +5 points
} )

DefineUnitType("unit-brising-skilled-miner", {
	Parent = "unit-dwarven-skilled-miner",
	Civilization = "dwarf",
	Faction = "brising-clan",
	Icon = "icon-brising-skilled-miner",
	HitPoints = 50, -- +10 HP
	Points = 50 -- +5 points
} )

DefineUnitType("unit-brising-expert-miner", {
	Parent = "unit-dwarven-expert-miner",
	Civilization = "dwarf",
	Faction = "brising-clan",
	Icon = "icon-brising-expert-miner",
	HitPoints = 60, -- +10 HP
	Points = 65 -- +5 points
} )

DefineUnitType("unit-brising-militia", {
	Parent = "unit-dwarven-militia",
	Civilization = "dwarf",
	Faction = "brising-clan",
	Icon = "icon-brising-militia",
	DefaultEquipment = {
		{"shield", "unit-brising-round-shield"}
	},
	HitPoints = 40, -- +10 HP
	Points = 35, -- +5 points
	AiDrops = {"unit-brising-round-shield"}
} )

DefineUnitType("unit-brising-smithy", {
	Parent = "unit-dwarven-smithy",
	Civilization = "dwarf",
	Faction = "brising-clan",
	Image = {"file", "dlcs/brising_faction_flair/graphics/buildings/brising_smithy.png", "size", {96, 96}},
	Shadow = {"file", "dlcs/brising_faction_flair/graphics/buildings/brising_smithy_shadow.png", "size", {96, 96}},
	Icon = "icon-brising-smithy",
	ResearchSpeedBonus = 50, -- +50% Research Speed Bonus
	AiDrops = {"unit-brising-round-shield"}
} )
