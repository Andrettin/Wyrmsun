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
--      events.lua - Defines events for the Germanic civilization.
--
--      (c) Copyright 2014 by Andrettin
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

if (LoadedGame == false) then
	SetPlayerData(0, "Faction", "Asa Tribe")
	SetPlayerData(0, "Resources", "gold", 2000)
	SetPlayerData(0, "Resources", "lumber", 1000)
	SetPlayerData(0, "Resources", "stone", 500)
	SetPlayerData(0, "Resources", "oil", 0)
	SetAiType(0, "land-attack")
	SetPlayerData(1, "Faction", "Vana Tribe")
	SetPlayerData(1, "Resources", "gold", 2000)
	SetPlayerData(1, "Resources", "lumber", 1000)
	SetPlayerData(1, "Resources", "stone", 500)
	SetPlayerData(1, "Resources", "oil", 0)
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "upgrade-teuton-civilization", "F")
	SetPlayerData(GetFactionPlayer("Vana Tribe"), "Allow", "unit-germanic-town-hall", "F")

	if (GrandStrategy == false) then
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		
		unit = CreateUnit("unit-germanic-town-hall", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		unit = CreateUnit("unit-germanic-worker", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		unit = CreateUnit("unit-germanic-worker", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		unit = CreateUnit("unit-germanic-worker", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		unit = CreateUnit("unit-germanic-worker", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		unit = CreateUnit("unit-germanic-worker", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		
		if (GameSettings.Difficulty == 1) then -- if difficulty is easy
			CreateCreeps(1, "unit-germanic-warrior", 4, Map.Info.MapWidth / 4, Map.Info.MapWidth * 7 / 8, Map.Info.MapHeight / 6, Map.Info.MapHeight * 5 / 6)
		elseif (GameSettings.Difficulty == 2) then -- if difficulty is normal
			CreateCreeps(1, "unit-germanic-warrior", 9, Map.Info.MapWidth / 4, Map.Info.MapWidth * 7 / 8, Map.Info.MapHeight / 6, Map.Info.MapHeight * 5 / 6)
		elseif (GameSettings.Difficulty == 3) then -- if difficulty is hard
			CreateCreeps(1, "unit-germanic-warrior", 18, Map.Info.MapWidth / 4, Map.Info.MapWidth * 7 / 8, Map.Info.MapHeight / 6, Map.Info.MapHeight * 5 / 6)
		elseif (GameSettings.Difficulty == 4) then -- if difficulty is brutal
			CreateCreeps(1, "unit-germanic-warrior", 36, Map.Info.MapWidth / 4, Map.Info.MapWidth * 7 / 8, Map.Info.MapHeight / 6, Map.Info.MapHeight * 5 / 6)
		end
	elseif (GrandStrategyEventMap) then
		unit = OldCreateUnit("unit-germanic-town-hall", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		
		SetAiType(0, "grand-strategy-battle")
		
		-- Asa units
		CreateProvinceUnits("Astrakhan", 0)
		CreateProvinceCustomHero("Astrakhan", 0)
		
		-- Vana units
		CreateProvinceUnits("Don", 1)
	end
	
	-- create raft in the nearest coast tile to the Vana settlement
	local nearest_coast = FindNearestTerrainFlagTile("coast", Players[1].StartPos.x, Players[1].StartPos.y)
	if (nearest_coast ~= nil) then
		unit = CreateUnit("unit-raft", 15, nearest_coast)
	end
end

-- On the Vanaquisl introduction
-- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy Vanaland's Chieftain's Hall") == false) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"We have assembled a great army to attack those who live on the Vanaquisl, the people of Vanaland. Their territory shall be taken into our possession, providing our people with the lands we much need to prosper. Onward to victory!",
			player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Defeat your enemies")
				AddPlayerObjective(player, "- Destroy Vanaland's Chieftain's Hall")
			end}
		)
		Event(
			"",
			"Defend our settlement against the surprise Asa raid!",
			GetFactionPlayer("Vana Tribe"),
			{"~!Continue"},
			{function(s)
				AddPlayerObjective(GetFactionPlayer("Vana Tribe"), "- Protect our chieftain's hall")
			end}
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy Vanaland's Chieftain's Hall")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("Vana Tribe"))
			for unit1 = 1,table.getn(uncount) do 
				if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
					local unit_quantity = GetNumUnitsAt(GetFactionPlayer("Asa Tribe"), "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3})
					if (unit_quantity > 0) then
						player = GetFactionPlayer("Asa Tribe")
						return true
					end
				end
			end
		end
		return false
	end,
	function()
		local vana_unit
		local asa_unit
		
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Vana Tribe"))
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("Asa Tribe")) then
						vana_unit = uncount[unit1]
						asa_unit = nearby_uncount[unit2]
						break
					end
				end
			end
		end
		
		if (not vana_unit or not asa_unit) then
			return true
		end
			
		Event(
			vana_unit,
			"The Asa! What are you here for?",
			player,
			{"~!Continue"},
			{function(s)
				Event(
					asa_unit,
					"We are here for Vanaland.",
					player,
					{"~!Continue"},
					{function(s)
						if (GetUnitTypeData(GetUnitVariable(vana_unit, "Ident"), "Coward") == false) then
							Event(
								vana_unit,
								"You shall have our homelands... as your burial ground.",
								player,
								{"~!Continue"},
								{function(s)
								end}
							)
						end
					end}
				)
			end}
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy Vanaland's Chieftain's Hall")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("Vana Tribe"))
			for unit1 = 1,table.getn(uncount) do 
				if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Building")) then
					local unit_quantity = GetNumUnitsAt(GetFactionPlayer("Asa Tribe"), "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3 + GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "TileWidth"), GetUnitVariable(uncount[unit1],"PosY") + 3 + GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "TileHeight")})
					if (unit_quantity > 0) then
						player = GetFactionPlayer("Asa Tribe")
						return true
					end
				end
			end
		end
		return false
	end,
	function()
		local vana_unit
		local asa_unit
		
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Vana Tribe"))
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Building")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("Asa Tribe")) then
						vana_unit = uncount[unit1]
						asa_unit = nearby_uncount[unit2]
						break
					end
				end
			end
		end
		
		if (not vana_unit or not asa_unit) then
			return true
		end
			
		Event(
			asa_unit,
			"Ah, the great Vanaquisl! These riverlands could help feed many mouths.",
			player,
			{"~!Continue"},
			{function(s)
			end}
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy Vanaland's Chieftain's Hall") and GetPlayerData(GetFactionPlayer("Vana Tribe"), "UnitTypesCount", "unit-germanic-town-hall") < 1) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function()
		local vana_unit = FindUnit("unit-germanic-warrior", GetFactionPlayer("Vana Tribe"))
		
		if not (vana_unit) then
			vana_unit = ""
		end
		
		Event(
			vana_unit,
			"What is this disturbance in our home?",
			player,
			{"~!Continue"},
			{function(s)
				CreateCreeps(1, "unit-germanic-warrior", 9 - GetPlayerData(GetFactionPlayer("Vana Tribe"), "UnitTypesCount", "unit-germanic-warrior"), math.floor(Map.Info.MapWidth / 4), math.floor(Map.Info.MapWidth * 7 / 8), math.floor(Map.Info.MapHeight / 6), math.floor(Map.Info.MapHeight * 4 / 6))
				
				local asa_warrior = nil
			
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Asa Tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1],"Ident") == "unit-germanic-warrior") then
						asa_warrior = uncount[unit1]
					end
				end

				if (asa_warrior) then
					uncount = 0
					uncount = GetUnits(GetFactionPlayer("Vana Tribe"))
					for unit1 = 1,table.getn(uncount) do 
						if (GetUnitVariable(uncount[unit1],"Ident") == "unit-germanic-warrior") then
							OrderUnit(1, GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(asa_warrior,"PosX"), GetUnitVariable(asa_warrior,"PosY")}, "attack")
						end
					end
				end
			end},
			nil,
			nil,
			vana_unit == ""
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy Vanaland's Chieftain's Hall") and GetPlayerData(GetFactionPlayer("Vana Tribe"), "UnitTypesCount", "unit-germanic-town-hall") < 1 and (GetPlayerData(GetFactionPlayer("Asa Tribe"), "UnitTypesCount", "unit-germanic-warrior") <= 4 or GetPlayerData(GetFactionPlayer("Vana Tribe"), "UnitTypesCount", "unit-germanic-warrior") == 0)) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"We ravaged Vanaland and pillaged its wealth, but victory did not quite fall within our grasp. A number of Vanaland's warriors still loomed at large, and reorganized themselves for an attack on us: our remaining forces were not enough to assure their defeat. We had no option but to make peace - for the prolongation of this war would bring naught but great damage to our people.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"With expansion across the Vanaquisl being denied to us, we now face a dilemma. The lands where we live are not enough to sustain our growing tribe, and we face frequent attacks from other tribes which are in a similar situation. Many of our chieftains are now clamoring for us to head northwest, to find a new home and leave these crowded steppes well behind.",
				player,
				{"~!Continue"},
				{function(s)
					if (player == GetThisPlayer()) then
						if (GrandStrategy == false) then
							if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "On the Vanaquisl") == false) then
								table.insert(wyr.preferences.QuestsCompleted, "On the Vanaquisl")
							end
							SavePreferences()
						end
						ActionVictory()
					end
				end}
			)
			end}
		)
		Event(
			"",
			"The Asa burned our chieftain's hall to the ground and pillaged our homes. A sad day indeed. Nevertheless, a number of our warriors still lied in the wilderness, and soon they regrouped and drove the Asa tribe from our lands.",
			GetFactionPlayer("Vana Tribe"),
			{"~!Continue"},
			{function(s)
				if (GetFactionPlayer("Vana Tribe") == GetThisPlayer()) then
					ActionDefeat()
				end
			end}
		)
		return false
	end
)
