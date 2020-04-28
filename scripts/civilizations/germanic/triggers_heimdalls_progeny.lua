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
--      (c) Copyright 2015-2020 by Andrettin
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
				if (GetNumUnitsAt(GetFactionPlayer("thralling-tribe"), "units", {GetUnitVariable(erala_hero_unit, "PosX") - 3, GetUnitVariable(erala_hero_unit, "PosY") - 3}, {GetUnitVariable(erala_hero_unit, "PosX") + 3, GetUnitVariable(erala_hero_unit, "PosY") + 3}, GetUnitVariable(erala_hero_unit, "MapLayer")) > 0) then
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
				if (GetNumUnitsAt(GetFactionPlayer("karling-tribe"), "units", {GetUnitVariable(erala_hero_unit, "PosX") - 3, GetUnitVariable(erala_hero_unit, "PosY") - 3}, {GetUnitVariable(erala_hero_unit, "PosX") + 3, GetUnitVariable(erala_hero_unit, "PosY") + 3}, GetUnitVariable(erala_hero_unit, "MapLayer")) > 0) then
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
				if (GetNumUnitsAt(GetFactionPlayer("hersing-tribe"), "units", {GetUnitVariable(erala_hero_unit, "PosX") - 3, GetUnitVariable(erala_hero_unit, "PosY") - 3}, {GetUnitVariable(erala_hero_unit, "PosX") + 3, GetUnitVariable(erala_hero_unit, "PosY") + 3}, GetUnitVariable(erala_hero_unit, "MapLayer")) > 0 and CPlayer:GetPlayer(GetFactionPlayer("hersing-tribe")):IsEnemy(CPlayer:GetPlayer(i)) == false) then
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
				and GetPlayerData(i, "HasQuest", "heimdalls-progeny")
				and (GetNumUnitsAt(-2, "any", {4023 - EarthStartX, 733 - EarthStartY}, {4087 - EarthStartX, 829 - EarthStartY}, GetMapLayer("material-plane", "earth")) - GetNumUnitsAt(i, "any", {4023 - EarthStartX, 733 - EarthStartY}, {4087 - EarthStartX, 829 - EarthStartY}, GetMapLayer("material-plane", "earth"))) == 0
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

AddTrigger("journey-to-heimdalls-stones-completed",
	function()
		for i=0,(PlayerMax - 2) do
			if (
				GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("erala", i) ~= nil
				and GetPlayerData(i, "HasQuest", "journey-to-heimdalls-stones")
			) then
				local nearby_uncount = GetUnitsAroundUnit(FindHero("erala", i), 1, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Unique") == "heimdalls-stones") then
						trigger_player = i
						return true
					end
				end
			end
		end
		return false
	end,
	function()
		trigger_unit = FindHero("erala", trigger_player)
		CallDialogue("journey-to-heimdalls-stones-completed", trigger_player)
		return false
	end
)
