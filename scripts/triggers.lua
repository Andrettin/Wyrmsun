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

AddTrigger("bountiful-harvest",
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player who matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(100) == 0 and GetFactionClassUnitType("farm", GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "UnitTypesCount", GetFactionClassUnitType("farm", GetPlayerData(i, "Faction"))) >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local copper_quantity = GetPlayerData(trigger_player, "UnitTypesCount", GetFactionClassUnitType("farm", GetPlayerData(trigger_player, "Faction"))) * 100
		Event(
			"Bountiful Harvest",
			"The harvest this year has been exceptionally plentiful, rejoice! Our farmers are bringing their abundant surplus to market and selling it for a profit.",
			trigger_player,
			{"E~!xcellent!"},
			{function(s)
				SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + copper_quantity)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"+" .. copper_quantity .. " Copper"}
			}
		)
		return true
	end
)

AddTrigger("giant-mushroom-grown", -- this is here rather than in a dwarven triggers.lua file because in the future other civilizations could have mushroom farms
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player who matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(100) == 0 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-mushroom-farm") >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local farm = FindUnit("unit-dwarven-mushroom-farm", trigger_player, true)
		Event(
			"Giant Mushroom Grown",
			"A giant mushroom has been grown at " .. GetUnitVariable(farm, "Name") .. "! It was presented in a local competition, where it easily won the prize for largest mushroom, and soon its fame began to spread. Curious to see how the peculiar mushroom would taste, some wealthy people have made generous bids to buy it, so that the mushroom should be sold for a good profit.",
			trigger_player,
			{"~!Nice!"},
			{function(s)
				SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 150)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"+150 Copper"}
			}
		)
		return true
	end
)

AddTrigger("expert-miner",
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player who matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			local percent_chance = 0
			-- this event can only trigger if the player owns a mine, and it is more probable that it will trigger if the player owns a more valuable mine
			if (GetPlayerData(i, "UnitTypesCount", "unit-gold-mine") > 0) then
				percent_chance = 4
			elseif (GetPlayerData(i, "UnitTypesCount", "unit-silver-mine") > 0) then
				percent_chance = 2
			elseif (GetPlayerData(i, "UnitTypesCount", "unit-copper-mine") > 0) then
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
				unit = CreateUnit(GetFactionClassUnitType("expert-miner", GetPlayerData(trigger_player, "Faction")), trigger_player, {GetUnitVariable(town_hall, "PosX"), GetUnitVariable(town_hall, "PosY")})
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
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(100) == 0 and GetFactionClassUnitType("lumber-mill", GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "UnitTypesCount", GetFactionClassUnitType("lumber-mill", GetPlayerData(i, "Faction"))) >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local lumber_mill = FindUnitOfClass("lumber-mill", trigger_player, true)
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
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(100) == 0 and GetFactionClassUnitType("lumber-mill", GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "UnitTypesCount", GetFactionClassUnitType("lumber-mill", GetPlayerData(i, "Faction"))) >= 1 and GetFactionClassUnitType("masonry", GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "Allow", GetFactionClassUnitType("masonry", GetPlayerData(i, "Faction"))) == "R") then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		Event(
			"Skilled Masons",
			"A group of skilled masons has come to our country, taking up employment at a local workshop.",
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
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(100) == 0 and GetFactionClassUnitType("lumber-mill", GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "UnitTypesCount", GetFactionClassUnitType("lumber-mill", GetPlayerData(i, "Faction"))) >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local lumber_mill = FindUnitOfClass("lumber-mill", trigger_player, true)
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

AddTrigger("brawl-at-the-barracks",
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player who matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and SyncRand(100) == 0 and GetFactionClassUnitType("barracks", GetPlayerData(i, "Faction")) ~= nil and GetPlayerData(i, "UnitTypesCount", GetFactionClassUnitType("barracks", GetPlayerData(i, "Faction"))) >= 1 and GetPlayerData(i, "NumTownHalls") > 0) then -- require a town hall so that the player does not go below the quantity of resources necessary to build one if they started without it
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local barracks = FindUnitOfClass("barracks", trigger_player, true)
		Event(
			"Brawl at the Barracks",
			"A brawl broke out amongst our recruits-in-training at " .. GetUnitVariable(barracks, "Name") .. "! It all began when one of them made an unfortunate joke, leading to another getting offended, and soon punches were thrown. The local commander has informed us that they will need funds to repair the resulting damage, as well as lumber for new furniture to replace what was broken during the fight.", -- could add the name of the specific barracks where this happened in the future, when barrackses receive proper names
			trigger_player,
			{"~!Damn fools..."},
			{function(s)
				SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") - 250)
				SetPlayerData(trigger_player, "Resources", "lumber", GetPlayerData(trigger_player, "Resources", "lumber") - 250)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"-250 Copper, -250 Lumber"}
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
