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
--      (c) Copyright 2016-2019 by Andrettin
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

AddTrigger("a-rocky-home-mead-hall-built",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "a-rocky-home") and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("a-rocky-home-mead-hall-built", trigger_player)
		return false
	end
)

AddTrigger("a-rocky-home-yales-hunted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "a-rocky-home") and GetPlayerData(i, "UnitTypesCount", "unit-yale-hunting-lodge") >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("a-rocky-home-yales-hunted", trigger_player)
		return false
	end
)

local last_grafvitning_attack_cycle = 0
AddTrigger("grafvitning-kobolds-send-attacker",
	function()
		if ((GameCycle - last_grafvitning_attack_cycle) < 1800) then -- wait a minute between each Grafvitning attack
			return false
		end

		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "Faction") == "grafvitning-tribe" and GetPlayerData(i, "UnitTypesAiActiveCount", "unit-kobold-footpad") >= 1 and FindHero("modsognir") ~= nil and FindHero("durin") ~= nil and FindHero("modsognir", i) == nil and FindHero("durin", i) == nil) then
				local modsognir_player = GetUnitVariable(FindHero("modsognir"), "Player")
				if (CPlayer:GetPlayer(modsognir_player).Type ~= PlayerNeutral and GetPlayerData(modsognir_player, "UnitTypesCount", "unit-dwarven-barracks") > 0) then
					trigger_player = i
					return true
				end
			end
		end
		return false
	end,
	function()
		local attacker_unit = nil
		local uncount = GetUnits(trigger_player)
		for unit1 = 1,table.getn(uncount) do
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic") and GetUnitVariable(uncount[unit1], "Ident") ~= "unit-wyrm" and GetUnitVariable(uncount[unit1], "Active") and GetUnitVariable(uncount[unit1], "Idle")) then
				attacker_unit = uncount[unit1]
				break
			end
		end
		
		if (attacker_unit == nil) then
			return true
		end
	
		local modsognir_player = GetUnitVariable(FindHero("modsognir"), "Player")
		local modsognir_building = nil
		
		-- create revealers at the cavern entrances between Svarinshaug and Svarinshaug Underground
		local cavern_entrance_x
		local cavern_entrance_y
		local cavern_entrance_z
		uncount = GetUnits(PlayerNumNeutral)
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitVariable(uncount[unit1], "Ident") == "unit-cavern-entrance") then
				if (
					GetUnitVariable(uncount[unit1], "MapLayer") == GetSiteData("svarinshaug", "MapLayer")
					and GetUnitVariable(uncount[unit1], "PosX") >= (GetSiteData("svarinshaug", "MapCenterPosX") - 24)
					and GetUnitVariable(uncount[unit1], "PosX") < (GetSiteData("svarinshaug", "MapCenterPosX") + 24)
					and GetUnitVariable(uncount[unit1], "PosY") >= (GetSiteData("svarinshaug", "MapCenterPosY") - 24)
					and GetUnitVariable(uncount[unit1], "PosY") < (GetSiteData("svarinshaug", "MapCenterPosY") + 24)
				) then
					cavern_entrance_x = GetUnitVariable(uncount[unit1], "PosX") + 1
					cavern_entrance_y = GetUnitVariable(uncount[unit1], "PosY") + 1
					cavern_entrance_z = GetUnitVariable(uncount[unit1], "MapLayer")
				end
			end
		end
		
		if (cavern_entrance_x == nil or cavern_entrance_y == nil or cavern_entrance_z == nil) then
			return false -- no point in trying again if there is no cavern entrance leading to Svarinshaug
		end
		
		unit = CreateUnit("unit-revealer", trigger_player, {cavern_entrance_x, cavern_entrance_y}, cavern_entrance_z)
		SetUnitVariable(unit, "TTL", 600)
					
		unit = CreateUnit("unit-revealer", trigger_player, {cavern_entrance_x, cavern_entrance_y}, GetMapLayer("material-plane", "nidavellir", 1))
		SetUnitVariable(unit, "TTL", 600)
		
		uncount = GetUnits(modsognir_player)
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Building")) then
				if (modsognir_building == nil) then
					modsognir_building = uncount[unit1]
				else
					local old_pos_difference = math.abs(GetUnitVariable(modsognir_building, "PosX") - cavern_entrance_x) + math.abs(GetUnitVariable(modsognir_building, "PosY") - cavern_entrance_y)
					local new_pos_difference = math.abs(GetUnitVariable(uncount[unit1], "PosX") - cavern_entrance_x) + math.abs(GetUnitVariable(uncount[unit1], "PosY") - cavern_entrance_y)
					if (new_pos_difference < old_pos_difference) then
						modsognir_building = uncount[unit1]
					end
				end
			end
		end
		
		if (modsognir_building ~= nil) then
			unit = CreateUnit("unit-revealer", trigger_player, {GetUnitVariable(modsognir_building, "PosX"), GetUnitVariable(modsognir_building, "PosY")}, GetUnitVariable(modsognir_building, "MapLayer"))
			SetUnitVariable(unit, "TTL", 600)
			OrderUnit(trigger_player, GetUnitVariable(attacker_unit, "Ident"), {GetUnitVariable(attacker_unit, "PosX"), GetUnitVariable(attacker_unit, "PosY")}, GetUnitVariable(attacker_unit, "MapLayer"), {GetUnitVariable(modsognir_building, "PosX"), GetUnitVariable(modsognir_building, "PosY")}, GetUnitVariable(modsognir_building, "MapLayer"), "attack")
		end

		last_grafvitning_attack_cycle = GameCycle

		return true
	end
)

AddTrigger("grafvitning-kobolds-attack-modsognirs-clan",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("modsognir", i) ~= nil and FindHero("durin", i) ~= nil and GetFactionExists("grafvitning-tribe")) then
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("grafvitning-tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Organic")) then
						local unit_quantity = GetNumUnitsAt(i, "any", {GetUnitVariable(uncount[unit1],"PosX") - 4, GetUnitVariable(uncount[unit1],"PosY") - 4}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4}, GetUnitVariable(uncount[unit1], "MapLayer"))
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
		CallDialogue("grafvitning-kobolds-attack-modsognirs-clan", trigger_player)
		return false
	end
)

AddTrigger("modsognirs-clan-kills-a-kobold",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("modsognir", i) ~= nil and FindHero("durin", i) ~= nil and GetPlayerData(i, "UnitTypeKills", "unit-kobold-footpad") >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("modsognirs-clan-kills-a-kobold", trigger_player)
		return false
	end
)

AddTrigger("modsognirs-clan-destroys-the-grafvitnings",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("modsognir", i) ~= nil and FindHero("durin", i) ~= nil and GetFactionExists("grafvitning-tribe") and GetPlayerData(GetFactionPlayer("grafvitning-tribe"), "TotalNumUnitsConstructed") == 0) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("modsognirs-clan-destroys-the-grafvitnings", trigger_player)
		return false
	end
)

AddTrigger("worker-suggests-stone-furniture",
	function()
		if (SyncRand(10) ~= 0) then -- 10% chance this will trigger every time it is checked (and 10% for each player it is checked for, for a chance of 1% for a player that matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "Faction") == "brising-clan" and SyncRand(10) == 0 and GetPlayerData(i, "UnitTypesCount", "unit-brising-miner") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-brising-expert-miner") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-masons-shop") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-market") >= 1) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("worker-suggests-stone-furniture", trigger_player)
		return false
	end
)
