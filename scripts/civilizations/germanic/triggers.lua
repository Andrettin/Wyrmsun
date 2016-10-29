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
--      (c) Copyright 2015-2016 by Andrettin
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

AddTrigger("jarl-speaks-of-his-destiny",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "Faction") == "jarling-tribe" and FindHero("Erala", i) ~= nil and GetFactionExists("thralling-tribe") and GetFactionExists("karling-tribe")) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("jarl-speaks-of-his-destiny", trigger_player)
		return false
	end
)

AddTrigger("jarl-meets-the-thrallings",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "Faction") == "jarling-tribe" and FindHero("Erala", i) ~= nil and GetFactionExists("thralling-tribe") and GetPlayerData(i, "HasQuest", "jarls-hall")) then
				local erala_hero_unit = FindHero("Erala", i)
				if (GetNumUnitsAt(GetFactionPlayer("thralling-tribe"), "units", {GetUnitVariable(erala_hero_unit, "PosX") - 2, GetUnitVariable(erala_hero_unit, "PosY") - 2}, {GetUnitVariable(erala_hero_unit, "PosX") + 2, GetUnitVariable(erala_hero_unit, "PosY") + 2}) > 0) then
					trigger_player = i
					return true
				end
			end
		end
		return false
	end,
	function()
		CallDialogue("jarl-meets-the-thrallings", trigger_player)
		return false
	end
)

AddTrigger("thrallings-subjugated",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "Faction") == "jarling-tribe" and FindHero("Erala", i) ~= nil and GetFactionExists("thralling-tribe") and GetPlayerData(i, "HasQuest", "jarls-hall") and GetPlayerData(GetFactionPlayer("thralling-tribe"), "UnitTypesCount", "unit-germanic-worker") <= 3) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("thrallings-subjugated", trigger_player)
		return false
	end
)

AddTrigger("jarl-dies",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "HasQuest", "heimdalls-progeny") and FindHero("Erala", i) == nil) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("campaign-defeat", trigger_player)
		SetPlayerData(trigger_player, "FailQuest", "heimdalls-progeny")
		return false
	end
)

AddTrigger("the-curved-swords", -- Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-roerby-swords/
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked (and 1% for each player it is checked for, for a chance of 0.01% for a player that matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (SyncRand(100) == 0 and GetPlayerData(i, "RaceName") == "germanic" and GetPlayerData(i, "UnitTypesCount", "unit-germanic-smithy") >= 1) then
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
				SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 100)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"+100 Gold"}
			}
		)
		return false
	end
)

AddTrigger("the-sun-chariot", -- Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-sun-chariot/
	function()
		if (SyncRand(100) ~= 0) then -- 0.01% chance this will trigger every time it is checked
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (SyncRand(100) == 0 and GetPlayerData(i, "RaceName") == "germanic" and GetPlayerData(i, "UnitTypesCount", "unit-germanic-smithy") >= 1) then
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
				SetPlayerData(trigger_player, "Resources", "gold", GetPlayerData(trigger_player, "Resources", "gold") + 100)
			end},
			nil,
			nil,
			false,
			{
				OptionTooltips = {"+100 Gold"}
			}
		)
		return false
	end
)
