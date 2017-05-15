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

AddTrigger("jarl-speaks-of-his-destiny",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("erala", i) ~= nil and GetFactionExists("thralling-tribe") and GetFactionExists("karling-tribe")) then
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
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("erala", i) ~= nil and FindHero("thrahila") ~= nil and GetFactionExists("thralling-tribe")) then
				local erala_hero_unit = FindHero("erala", i)
				if (GetNumUnitsAt(GetFactionPlayer("thralling-tribe"), "units", {GetUnitVariable(erala_hero_unit, "PosX") - 3, GetUnitVariable(erala_hero_unit, "PosY") - 3}, {GetUnitVariable(erala_hero_unit, "PosX") + 3, GetUnitVariable(erala_hero_unit, "PosY") + 3}) > 0) then
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
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("erala", i) ~= nil and GetFactionExists("thralling-tribe") and GetPlayerData(GetFactionPlayer("thralling-tribe"), "UnitTypesCount", "unit-germanic-worker") <= 3) then
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

AddTrigger("jarl-meets-the-karlings",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("erala", i) ~= nil and FindHero("karla") ~= nil and GetFactionExists("karling-tribe")) then
				local erala_hero_unit = FindHero("erala", i)
				if (GetNumUnitsAt(GetFactionPlayer("karling-tribe"), "units", {GetUnitVariable(erala_hero_unit, "PosX") - 3, GetUnitVariable(erala_hero_unit, "PosY") - 3}, {GetUnitVariable(erala_hero_unit, "PosX") + 3, GetUnitVariable(erala_hero_unit, "PosY") + 3}) > 0) then
					trigger_player = i
					return true
				end
			end
		end
		return false
	end,
	function()
		CallDialogue("jarl-meets-the-karlings", trigger_player)
		return false
	end
)

AddTrigger("karlings-subjugated",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("erala", i) ~= nil and GetFactionExists("karling-tribe") and GetPlayerData(GetFactionPlayer("karling-tribe"), "UnitTypesCount", "unit-germanic-archer") == 0 and GetPlayerData(GetFactionPlayer("karling-tribe"), "UnitTypesCount", "unit-germanic-worker") <= 3) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("karlings-subjugated", trigger_player)
		return false
	end
)

AddTrigger("jarl-desires-karling-subjugation",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("erala", i) ~= nil and GetPlayerData(i, "NumTownHalls") > 0 and GetPlayerData(i, "CompletedQuest", "jarls-retainers") and GetFactionExists("karling-tribe") and GetPlayerData(GetFactionPlayer("karling-tribe"), "TotalNumUnits") > 0) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("jarl-desires-karling-subjugation", trigger_player)
		return false
	end
)

AddTrigger("jarl-considers-the-hersings",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("erala", i) ~= nil and GetPlayerData(i, "NumTownHalls") > 0 and (GetFactionExists("karling-tribe") == false or GetPlayerData(GetFactionPlayer("karling-tribe"), "TotalNumUnits") == 0) and GetPlayerData(i, "CompletedQuest", "jarls-retainers") and GetFactionExists("hersing-tribe") and GetPlayerData(GetFactionPlayer("hersing-tribe"), "TotalNumUnits") > 0) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("jarl-considers-the-hersings", trigger_player)
		return false
	end
)

AddTrigger("jarl-meets-the-hersings",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("erala", i) ~= nil and GetFactionExists("hersing-tribe") and GetPlayerData(i, "HasQuest", "heimdalls-progeny") and GetPlayerData(i, "HasQuest", "neutralize-the-hersings")) then
				local erala_hero_unit = FindHero("erala", i)
				if (GetNumUnitsAt(GetFactionPlayer("hersing-tribe"), "units", {GetUnitVariable(erala_hero_unit, "PosX") - 3, GetUnitVariable(erala_hero_unit, "PosY") - 3}, {GetUnitVariable(erala_hero_unit, "PosX") + 3, GetUnitVariable(erala_hero_unit, "PosY") + 3}) > 0 and Players[GetFactionPlayer("hersing-tribe")]:IsEnemy(Players[i]) == false) then
					trigger_player = i
					return true
				end
			end
		end
		return false
	end,
	function()
		CallDialogue("jarl-meets-the-hersings", trigger_player)
		return false
	end
)

AddTrigger("jarl-conquers-jutland",
	function()
		for i=0,(PlayerMax - 2) do
			if (
				GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("erala", i) ~= nil
				and (GetNumUnitsAt(-2, "any", {4023 - EarthStartX, 733 - EarthStartY}, {4087 - EarthStartX, 829 - EarthStartY}, GetMapLayer("", "Earth", 0)) - GetNumUnitsAt(i, "any", {4023 - EarthStartX, 733 - EarthStartY}, {4087 - EarthStartX, 829 - EarthStartY}, GetMapLayer("", "Earth", 0))) == 0
			) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("jarl-conquers-jutland", trigger_player)
		return false
	end
)

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

AddTrigger("berserker-brides-arrive-on-hlesey", -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 119.
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked
			return false
		end
		if ( -- if Hlesey is empty, but there are certain Germanic structures within a certain range of it
			GetNumUnitsAt(-2, "any", {4088 - EarthStartX, 744 - EarthStartY}, {4092 - EarthStartX, 746 - EarthStartY}, GetMapLayer("", "Earth", 0)) == 0
			and GetNumUnitsAt(-2, "unit-germanic-barracks", {4089 - 128 - EarthStartX, 745 - 128 - EarthStartY}, {4089 + 128 - EarthStartX, 745 + 128 - EarthStartY}, GetMapLayer("", "Earth", 0)) > 0 -- a barracks from which the warriors could have come from
			and GetNumUnitsAt(-2, "unit-germanic-dock", {4089 - 128 - EarthStartX, 745 - 128 - EarthStartY}, {4089 + 128 - EarthStartX, 745 + 128 - EarthStartY}, GetMapLayer("", "Earth", 0)) > 0 -- a dock from which they may have obtained ships
			and GetNumUnitsAt(-2, "unit-germanic-smithy", {4089 - 128 - EarthStartX, 745 - 128 - EarthStartY}, {4089 + 128 - EarthStartX, 745 + 128 - EarthStartY}, GetMapLayer("", "Earth", 0)) > 0 -- a smithy, as they were said in the myth to have wielded iron clubs
		) then
			return true
		end
		return false
	end,
	function()
		local hlesing_player = CreatePlayerForFaction("hlesing-tribe")
		if (hlesing_player == -1) then
			return false
		end
		unit = CreateUnit("unit-teuton-watch-tower", hlesing_player, {4089 - EarthStartX, 745 - EarthStartY})
		local players_around = GetPlayersAroundUnit(unit, 128)
		unit = CreateUnitInTransporter("unit-germanic-archer", hlesing_player, unit)
		unit = CreateUnit("unit-germanic-warrior", hlesing_player, {4089 - EarthStartX, 745 - EarthStartY})
		unit = CreateUnit("unit-germanic-warrior", hlesing_player, {4089 - EarthStartX, 745 - EarthStartY})
		unit = CreateUnit("unit-germanic-warrior", hlesing_player, {4089 - EarthStartX, 745 - EarthStartY})
		unit = CreateUnit("unit-germanic-warrior", hlesing_player, {4089 - EarthStartX, 745 - EarthStartY})
		
		for i=0,(PlayerMax - 2) do
			if (i ~= hlesing_player) then
				SetDiplomacy(hlesing_player, "enemy", i)
				SetDiplomacy(i, "enemy", hlesing_player)
			end
		end

		for i = 1, table.getn(players_around) do 
			CallDialogue("berserker-brides-arrive-on-hlesey", players_around[i])
			unit = CreateUnit("unit-revealer", players_around[i], {4089 - EarthStartX, 745 - EarthStartY})
			SetUnitVariable(unit, "TTL", 600)
		end
		return false
	end
)
