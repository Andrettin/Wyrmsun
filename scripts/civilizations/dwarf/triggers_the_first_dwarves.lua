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

AddTrigger("a-rocky-home-introduction",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("modsognir", i) ~= nil and FindHero("durin", i) ~= nil) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		CallDialogue("a-rocky-home-introduction", player)
		return false
	end
)

AddTrigger("a-rocky-home-yales-hunted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "a-rocky-home") and GetPlayerData(i, "UnitTypeKills", "unit-yale") >= 8) then
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

AddTrigger("grafvitning-kobolds-send-attacker",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "Faction") == "grafvitning-tribe" and FindHero("modsognir") ~= nil and FindHero("durin") ~= nil and FindHero("modsognir", i) == nil and FindHero("durin", i) == nil) then
				local modsognir_player = GetUnitVariable(FindHero("modsognir"), "Player")
				if (Players[modsognir_player].Type ~= PlayerNeutral and GetPlayerData(modsognir_player, "UnitTypesCount", "unit-dwarven-barracks") > 0) then
					trigger_player = i
					return true
				end
			end
		end
		return false
	end,
	function()
		local modsognir_player = GetUnitVariable(FindHero("modsognir"), "Player")
		local modsognir_building = nil
		
		local uncount = GetUnits(modsognir_player)
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Building")) then
				if (modsognir_building == nil) then
					modsognir_building = uncount[unit1]
				else
					local old_pos_difference = math.abs(GetUnitVariable(modsognir_building, "PosX") - Players[trigger_player].StartPos.x) + math.abs(GetUnitVariable(modsognir_building, "PosY") - Players[trigger_player].StartPos.y)
					local new_pos_difference = math.abs(GetUnitVariable(uncount[unit1], "PosX") - Players[trigger_player].StartPos.x) + math.abs(GetUnitVariable(uncount[unit1], "PosY") - Players[trigger_player].StartPos.y)
					if (new_pos_difference < old_pos_difference) then
						modsognir_building = uncount[unit1]
					end
				end
			end
		end
		
		if (modsognir_building ~= nil) then
			uncount = GetUnits(trigger_player)
			for unit1 = 1,table.getn(uncount) do 
				if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic") and GetUnitVariable(uncount[unit1], "Ident") ~= "unit-wyrm") then
					OrderUnit(trigger_player, GetUnitVariable(uncount[unit1], "Ident"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")}, {GetUnitVariable(modsognir_building, "PosX"), GetUnitVariable(modsognir_building, "PosY")}, "attack")
					break
				end
			end
		end

		return false
	end
)

AddTrigger("grafvitning-kobolds-attack-modsognirs-clan",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("modsognir", i) ~= nil and FindHero("durin", i) ~= nil) then
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("grafvitning-tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
						local unit_quantity = GetNumUnitsAt(i, "any", {GetUnitVariable(uncount[unit1],"PosX") - 4, GetUnitVariable(uncount[unit1],"PosY") - 4}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4})
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
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("modsognir", i) ~= nil and FindHero("durin", i) ~= nil and GetPlayerData(GetFactionPlayer("grafvitning-tribe"), "TotalNumUnitsConstructed") == 0) then
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
