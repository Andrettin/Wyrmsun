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
--      (c) Copyright 2014-2021 by Andrettin
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

AddTrigger("on_the_vanaquisl_vana_sighted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("voden", i) ~= nil and GetFactionExists("vana-tribe") and GetPlayerData(i, "HasQuest", "on_the_vanaquisl")) then
				local uncount = GetUnits(GetFactionPlayer("vana-tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (uncount[unit1] and GetUnitVariable(uncount[unit1], "Ident") == "unit-germanic-warrior") then
						local unit_quantity = GetNumUnitsAt(i, "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3}, GetUnitVariable(uncount[unit1], "MapLayer"))
						if (unit_quantity > 0) then
							trigger_player = i
							return true
						end
					end
				end
			end
		end
		return false
	end,
	function()
		CallDialogue("on_the_vanaquisl_vana_sighted", trigger_player)
		return false
	end
)

AddTrigger("westward_migration_natives_sighted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "westward_migration") and GetFactionExists("uralic-tribe")) then
				local uncount = GetUnits(GetFactionPlayer("uralic-tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) then
						local unit_quantity = GetNumUnitsAt(i, "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3}, GetUnitVariable(uncount[unit1], "MapLayer"))
						if (unit_quantity > 0) then
							trigger_player = i
							return true
						end
					end
				end
			end
		end
		return false
	end,
	function() 
		CallDialogue("westward_migration_natives_sighted", trigger_player)
		return false
	end
)

AddTrigger("westward_migration_native_settlement_sighted",
	function()
		for i = 0, (PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "westward_migration") and GetFactionExists("uralic-tribe") and FindHero("voden", i) ~= nil) then
				local voden_unit = FindHero("voden", i)
				if (GetNumUnitsAt(GetFactionPlayer("uralic-tribe"), "buildings", {GetUnitVariable(voden_unit, "PosX") - 3, GetUnitVariable(voden_unit, "PosY") - 3}, {GetUnitVariable(voden_unit, "PosX") + 3, GetUnitVariable(voden_unit, "PosY") + 3}, GetUnitVariable(voden_unit, "MapLayer")) > 0) then
					trigger_player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		CallDialogue("westward_migration_native_settlement_sighted", trigger_player)
		return false
	end
)

AddTrigger("westward_migration_workers_killed",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "westward_migration") and GetPlayerData(i, "UnitTypesCount", "unit_germanic_worker") < 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		CallDialogue("westward_migration_workers_killed", trigger_player)
		return false
	end
)

AddTrigger("westward_migration_victory",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "westward_migration")) then
				if (GetNumUnitsAt(i, "unit_germanic_worker", {4369 - EarthStartX, 749 - EarthStartY}, {4369 - EarthStartX + 32, 749 - EarthStartY + 116}, GetMapLayer("earth")) > 0) then
					trigger_player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		CallDialogue("westward_migration_victory", trigger_player)
		return false
	end
)

AddTrigger("northwards-to-the-sea-natives-sighted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "the_settlement_of_scandinavia") and GetFactionExists("ertebolle-tribe")) then
				local uncount = GetUnits(GetFactionPlayer("ertebolle-tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) then
						local unit_quantity = GetNumUnitsAt(i, "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3}, GetUnitVariable(uncount[unit1], "MapLayer"))
						if (unit_quantity > 0) then
							trigger_player = i
							return true
						end
					end
				end
			end
		end
		return false
	end,
	function()
		CallDialogue("northwards-to-the-sea-natives-sighted", trigger_player)
		return false
	end
)

AddTrigger("northwards-to-the-sea-victory",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "the_settlement_of_scandinavia") and GetFactionExists("ertebolle-tribe", true) == false and GetFactionExists("gylfing_tribe", true)) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("northwards-to-the-sea-victory", trigger_player)
		return false
	end
)

AddTrigger("the_settlement_of_scandinavia_gylfings_sighted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "the_settlement_of_scandinavia") and GetFactionExists("gylfing_tribe")) then
				local uncount = GetUnits(GetFactionPlayer("gylfing_tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) then
						local unit_quantity = GetNumUnitsAt(i, "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3}, GetUnitVariable(uncount[unit1], "MapLayer"))
						if (unit_quantity > 0) then
							trigger_player = i
							return true
						end
					end
				end
			end
		end
		return false
	end,
	function()
		CallDialogue("the_settlement_of_scandinavia_gylfings_sighted", trigger_player)
		return false
	end
)
