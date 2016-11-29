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

AddTrigger("bountiful-harvest",
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player who matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (SyncRand(100) == 0 and GetFactionClassUnitType("farm", GetPlayerData(i, "RaceName"), GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "UnitTypesCount", GetFactionClassUnitType("farm", GetPlayerData(i, "RaceName"), GetPlayerData(i, "Faction"))) >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		Event(
			"Bountiful Harvest",
			"The harvest this year has been exceptionally plentiful, rejoice! Our farmers are bringing their abundant surplus to market and selling it for a profit.",
			trigger_player,
			{"E~!xcellent!"},
			{function(s)
				SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 1000)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"+1000 Copper"}
			}
		)
		return true
	end
)

Load("scripts/civilizations/dwarf/triggers.lua")
Load("scripts/civilizations/germanic/triggers.lua")
Load("scripts/civilizations/teuton/triggers.lua")
