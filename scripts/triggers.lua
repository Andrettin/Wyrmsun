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
--      (c) Copyright 2016-2021 by Andrettin
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

AddTrigger("expert-miner",
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player who matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			local percent_chance = 0
			-- this event can only trigger if the player owns a mine, and it is more probable that it will trigger if the player owns a more valuable mine
			if (GetPlayerData(i, "UnitTypesCount", "unit-gold-mine") > 0 or GetPlayerData(i, "UnitTypesCount", "unit-diamond-mine") > 0 or GetPlayerData(i, "UnitTypesCount", "unit-emerald-mine") > 0 or GetPlayerData(i, "UnitTypesCount", "unit-mithril-mine") > 0) then
				percent_chance = 4
			elseif (GetPlayerData(i, "UnitTypesCount", "unit-silver-mine") > 0) then
				percent_chance = 2
			elseif (GetPlayerData(i, "UnitTypesCount", "unit_copper_mine") > 0 or GetPlayerData(i, "UnitTypesCount", "unit_iron_mine") > 0 or GetPlayerData(i, "UnitTypesCount", "unit-coal-mine") > 0) then
				percent_chance = 1
			end
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(100) < percent_chance and GetFactionClassUnitType("expert-miner", GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "NumTownHalls") > 0 and GetPlayerData(i, "Resources", "copper") >= 600 and (GetPlayerData(i, "Supply") - GetPlayerData(i, "Demand")) >= GetUnitTypeData(GetFactionClassUnitType("expert-miner", GetPlayerData(i, "Faction")), "Demand")) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		Event(
			"Expert Miner",
			"Hearing tales of the prosperity of our mines, an expert miner has come to you looking for gainful employment. Will you accept?",
			trigger_player,
			{"~!Yes", "~!No"},
			{function(s)
				local town_hall = FindUnit("town_hall", trigger_player, true)
				unit = CreateUnit(GetFactionClassUnitType("expert-miner", GetPlayerData(trigger_player, "Faction")), trigger_player, {GetUnitVariable(town_hall, "PosX"), GetUnitVariable(town_hall, "PosY")}, GetUnitVariable(town_hall, "MapLayer"))
				SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") - 600)
			end,
			function(s)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"Gain an Expert Miner, -600 Copper", ""}
			}
		)
		return true
	end
)

AddTrigger("skilled-carpenters",
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player who matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(100) == 0 and GetFactionClassUnitType("lumber_mill", GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "UnitTypesCount", GetFactionClassUnitType("lumber_mill", GetPlayerData(i, "Faction"))) >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local lumber_mill = FindUnitOfClass("lumber_mill", trigger_player, true)
		Event(
			"Skilled Carpenters",
			"A group of skilled carpenters has come to our country, taking up employment at " .. GetUnitVariable(lumber_mill, "Name") .. ".",
			trigger_player,
			{"~!OK"},
			{function(s)
				SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") + 500)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"+500 Lumber"}
			}
		)
		return true
	end
)

AddTrigger("skilled-masons",
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player who matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(100) == 0 and GetFactionClassUnitType("masons_shop", GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "UnitTypesCount", GetFactionClassUnitType("masons_shop", GetPlayerData(i, "Faction"))) >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local masons_shop = FindUnitOfClass("masons_shop", trigger_player, true)
		Event(
			"Skilled Masons",
			"A group of skilled masons has come to our country, taking up employment at " .. GetUnitVariable(masons_shop, "Name") .. ".",
			trigger_player,
			{"~!OK"},
			{function(s)
				SetPlayerData(trigger_player, "Resources", "stone", GetPlayerData(trigger_player, "Resources", "stone") + 500)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"+500 Stone"}
			}
		)
		return true
	end
)

AddTrigger("splendid-table",
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player who matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(100) == 0 and GetFactionClassUnitType("lumber_mill", GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "UnitTypesCount", GetFactionClassUnitType("lumber_mill", GetPlayerData(i, "Faction"))) >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local lumber_mill = FindUnitOfClass("lumber_mill", trigger_player, true)
		Event(
			"Splendid Table",
			"One of our master carpenters at " .. GetUnitVariable(lumber_mill, "Name") .. " has created a most splendid table! The beautiful piece of furniture has impressed many, and will fetch a good price.",
			trigger_player,
			{"~!Marvelous!"},
			{function(s)
				SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 250)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"+250 Copper"}
			}
		)
		return true
	end
)

AddTrigger("beautiful-statuette",
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player who matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(100) == 0 and GetFactionClassUnitType("smithy", GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "UnitTypesCount", GetFactionClassUnitType("smithy", GetPlayerData(i, "Faction"))) >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local smithy = FindUnitOfClass("smithy", trigger_player, true)
		Event(
			"Beautiful Statuette",
			"One of our master bronzesmiths at " .. GetUnitVariable(smithy, "Name") .. " has made a beautiful statuette! The striking masterpiece has caught the eyes of many, and will fetch a good price.",
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
		return true
	end
)

Load("scripts/civilizations/dwarf/triggers.lua")
Load("scripts/civilizations/elf/triggers.lua")
Load("scripts/civilizations/frankish/triggers.lua")
Load("scripts/civilizations/germanic/triggers.lua")
Load("scripts/civilizations/norse/triggers.lua")
Load("scripts/civilizations/suebi/triggers.lua")
Load("scripts/civilizations/teuton/triggers.lua")
