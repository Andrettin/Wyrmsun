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
--      upgrade.lua - Define the dependencies and upgrades.
--
--      (c) Copyright 2001-2004 by Lutz Sammer and Jimmy Salmon
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

-- Load the different races
Load("scripts/dwarf/upgrade.lua")
Load("scripts/gnome/upgrade.lua")
Load("scripts/goblin/upgrade.lua")

function DefineAllowSpecialUnits(flags)
	local units = {
		"unit-critter", "unit-gold-mine",
		"unit-mushroom", "unit-flowers", "unit-large-flower",
		"unit-fern", "unit-twigs", "unit-log",
		"unit-bones", "unit-wyrm-skeleton",
		"unit-small-rocks",
--		"unit-human-dead-body", "unit-dead-sea-body",
		"unit-destroyed-2x2-place",
		"unit-destroyed-3x3-place", "unit-destroyed-4x4-place"
	}
	for i, unitName in ipairs(units) do
		DefineAllow(unitName, flags)
	end
end

InitFuncs:add(function() DefineAllowSpecialUnits("AAAAAAAAAAAAAAAA") end)
