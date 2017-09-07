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
--      (c) Copyright 2015-2017 by Andrettin
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

AddTrigger("the-curved-swords", -- Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-roerby-swords/
	function()
		if (SyncRand(10) ~= 0) then -- 10% chance this will trigger every time it is checked (and 10% for each player it is checked for, for a chance of 1% for a player that matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(10) == 0 and GetPlayerData(i, "RaceName") == "germanic" and GetPlayerData(i, "UnitTypesCount", "unit-germanic-smithy") >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		Event(
			"The Curved Swords",
			"One of our artisans has crafted two curved bronze swords, one of which he engraved with the image of a ship. Although they aren't very practical for combat, these swords serve to embellish ceremonies and bring prestige to their bearer.",
			trigger_player,
			{"~!Marvelous!"},
			{function(s)
				SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 500)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"+500 Copper"}
			}
		)
		return false
	end
)

AddTrigger("the-sun-chariot", -- Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-sun-chariot/
	function()
		if (SyncRand(10) ~= 0) then -- 10% chance this will trigger every time it is checked (and 10% for each player it is checked for, for a chance of 1% for a player that matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(10) == 0 and GetPlayerData(i, "RaceName") == "germanic" and GetPlayerData(i, "UnitTypesCount", "unit-germanic-smithy") >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		Event(
			"The Sun Chariot",
			"One of our artisans has made a delicate bronze figure of a sun chariot, representing the divine horse that carries the sun on its eternal journey across the sky.",
			trigger_player,
			{"~!Inspiring!"},
			{function(s)
				SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 500)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"+500 Copper"}
			}
		)
		return false
	end
)

Load("scripts/civilizations/germanic/triggers_heimdalls_progeny.lua")
Load("scripts/civilizations/germanic/triggers_the_settlement_of_scandinavia.lua")
Load("scripts/civilizations/germanic/triggers_thors_servant.lua")