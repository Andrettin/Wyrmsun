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
--      (c) Copyright 2014-2019 by Andrettin
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

-- On the Vanaquisl introduction
-- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
AddTrigger("on-the-vanaquisl-introduction",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "Faction") == "asa-tribe" and GetFactionExists("vana-tribe", true)) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local vana_defender_quantity = 0
		if (GameSettings.Difficulty == DifficultyEasy) then -- if difficulty is easy
			vana_defender_quantity = 4
		elseif (GameSettings.Difficulty == DifficultyNormal) then -- if difficulty is normal
			vana_defender_quantity = 9
		elseif (GameSettings.Difficulty == DifficultyHard) then -- if difficulty is hard
			vana_defender_quantity = 18
		elseif (GameSettings.Difficulty == DifficultyBrutal) then -- if difficulty is brutal
			vana_defender_quantity = 36
		end
		CreateCreeps(GetFactionPlayer("vana-tribe"), "unit-germanic-warrior", vana_defender_quantity, 4732 - EarthStartX, 935 - EarthStartY, 4782 - EarthStartX, 964 - EarthStartY)
		CallDialogue("on-the-vanaquisl-introduction", trigger_player)
		CallDialogue("asa-raid", GetFactionPlayer("vana-tribe"))
		return false
	end
)

AddTrigger("on-the-vanaquisl-vana-sighted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("voden", i) ~= nil and GetFactionExists("vana-tribe") and GetPlayerData(i, "HasQuest", "on-the-vanaquisl")) then
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
		CallDialogue("on-the-vanaquisl-vana-sighted", trigger_player)
		return false
	end
)

AddTrigger("westward-migration-introduction",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "Faction") == "asa-tribe" and GetFactionExists("uralic-tribe", true)) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local gardarike_warrior_quantity = 0
		if (GameSettings.Difficulty == DifficultyEasy) then -- if difficulty is easy
			gardarike_warrior_quantity = 16
		elseif (GameSettings.Difficulty == DifficultyNormal) then -- if difficulty is normal
			gardarike_warrior_quantity = 48
		elseif (GameSettings.Difficulty == DifficultyHard) then -- if difficulty is hard
			gardarike_warrior_quantity = 96
		elseif (GameSettings.Difficulty == DifficultyBrutal) then -- if difficulty is brutal
			gardarike_warrior_quantity = 192
		end
		CreateCreeps(GetFactionPlayer("uralic-tribe"), "unit-germanic-warrior", gardarike_warrior_quantity, 4369 - EarthStartX, 643 - EarthStartY, 4547 - EarthStartX, 770 - EarthStartY)
		CreateCreeps(GetFactionPlayer("uralic-tribe"), "unit-germanic-archer", gardarike_warrior_quantity, 4369 - EarthStartX, 643 - EarthStartY, 4547 - EarthStartX, 770 - EarthStartY)
		CallDialogue("westward-migration-introduction", trigger_player)
		return false
	end
)

AddTrigger("westward-migration-natives-sighted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "westward-migration") and GetFactionExists("uralic-tribe")) then
				local uncount = GetUnits(GetFactionPlayer("uralic-tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
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
		CallDialogue("westward-migration-natives-sighted", trigger_player)
		return false
	end
)

AddTrigger("westward-migration-native-settlement-sighted",
	function()
		for i = 0, (PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "westward-migration") and GetFactionExists("uralic-tribe") and FindHero("voden", i) ~= nil) then
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
		CallDialogue("westward-migration-native-settlement-sighted", trigger_player)
		return false
	end
)

AddTrigger("westward-migration-workers-killed",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "westward-migration") and GetPlayerData(i, "UnitTypesCount", "unit-germanic-worker") < 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		CallDialogue("westward-migration-workers-killed", trigger_player)
		return false
	end
)

AddTrigger("westward-migration-victory",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "westward-migration")) then
				if (GetNumUnitsAt(i, "unit-germanic-worker", {4369 - EarthStartX, 749 - EarthStartY}, {4369 - EarthStartX + 32, 749 - EarthStartY + 116}, GetMapLayer("material-plane", "earth", 0)) > 0) then
					trigger_player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		CallDialogue("westward-migration-victory", trigger_player)
		return false
	end
)

AddTrigger("the-settlement-of-scandinavia-introduction",
	function()
		for i=0,(PlayerMax - 2) do
			if (
				GetPlayerData(i, "TotalNumUnitsConstructed") > 0
				and GetPlayerData(i, "Faction") == "asa-tribe"
				and GetFactionExists("ertebolle-tribe", true)
				and GetFactionExists("gylfing-tribe", true)
				and GetNumUnitsAt(i, "any", {4068 - EarthStartX - 16, 811 - EarthStartY - 16}, {4068 - EarthStartX + 16, 811 - EarthStartY + 16}, GetMapLayer("material-plane", "earth", 0)) > 0 -- must have units near Kiel
			) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("the-settlement-of-scandinavia-introduction", trigger_player)
		return false
	end
)

AddTrigger("northwards-to-the-sea-natives-sighted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "the-settlement-of-scandinavia") and GetFactionExists("ertebolle-tribe")) then
				local uncount = GetUnits(GetFactionPlayer("ertebolle-tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
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
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "the-settlement-of-scandinavia") and GetFactionExists("ertebolle-tribe", true) == false and GetFactionExists("gylfing-tribe", true)) then
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

AddTrigger("the-settlement-of-scandinavia-gylfings-sighted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "the-settlement-of-scandinavia") and GetFactionExists("gylfing-tribe")) then
				local uncount = GetUnits(GetFactionPlayer("gylfing-tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
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
		CallDialogue("the-settlement-of-scandinavia-gylfings-sighted", trigger_player)
		return false
	end
)
