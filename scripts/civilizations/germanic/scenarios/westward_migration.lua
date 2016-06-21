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
--      (c) Copyright 2014-2015 by Andrettin
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
	SetPlayerData(0, "Resources", "gold", 0)
	SetPlayerData(0, "Resources", "lumber", 0)
	SetPlayerData(0, "Resources", "stone", 0)
	SetPlayerData(0, "Resources", "oil", 0)
	SetAiType(0, "land-attack")
	SetPlayerData(1, "Resources", "gold", 2000)
	SetPlayerData(1, "Resources", "lumber", 2000)
	SetPlayerData(1, "Resources", "stone", 1000)
	SetPlayerData(1, "Resources", "oil", 0)
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "upgrade-teuton-civilization", "F")
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "unit-germanic-town-hall", "F")
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "unit-germanic-farm", "F")
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "unit-germanic-barracks", "F")
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "unit-germanic-carpenters-shop", "F")
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "unit-germanic-smithy", "F")
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "unit-gold-mine", "F")
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "unit-silver-mine", "F")
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "unit-copper-mine", "F")
	
	if (GrandStrategy == false) then
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	elseif (GrandStrategyEventMap) then
		-- Asa units
		CreateProvinceUnits("Astrakhan", 0)
		CreateProvinceCustomHero("Astrakhan", 0)
		if not (GrandStrategyBattleBaseBuilding) then
			unit = CreateUnit("unit-germanic-worker", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = CreateUnit("unit-germanic-worker", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = CreateUnit("unit-germanic-worker", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = CreateUnit("unit-germanic-worker", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = CreateUnit("unit-germanic-worker", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		end
	end

	unit = CreateUnit("unit-germanic-town-hall", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
	unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
	SetUnitVariable(unit, "Active", false)
	unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
	SetUnitVariable(unit, "Active", false)
	unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
	SetUnitVariable(unit, "Active", false)
		
	CreateCreeps(15, "unit-glyph", 1, 0, Map.Info.MapWidth / 8, Map.Info.MapHeight / 3, Map.Info.MapHeight)
	if (GameSettings.Difficulty == 1) then -- if difficulty is easy
		CreateCreeps(1, "unit-germanic-warrior", Map.Info.MapWidth * 1 / 8, 0, Map.Info.MapWidth, 0, Map.Info.MapHeight)
	elseif (GameSettings.Difficulty == 2) then -- if difficulty is normal
		CreateCreeps(1, "unit-germanic-warrior", Map.Info.MapWidth * 3 / 8, 0, Map.Info.MapWidth, 0, Map.Info.MapHeight)
	elseif (GameSettings.Difficulty == 3) then -- if difficulty is hard
		CreateCreeps(1, "unit-germanic-warrior", Map.Info.MapWidth * 6 / 8, 0, Map.Info.MapWidth, 0, Map.Info.MapHeight)
	elseif (GameSettings.Difficulty == 4) then -- if difficulty is brutal
		CreateCreeps(1, "unit-germanic-warrior", Map.Info.MapWidth * 12 / 8, 0, Map.Info.MapWidth, 0, Map.Info.MapHeight)
	end
		
	-- reveal area near the glyph
	local uncount = 0
	uncount = GetUnits(15)
	for unit1 = 1,table.getn(uncount) do 
		if (GetUnitVariable(uncount[unit1], "Ident") == "unit-glyph") then
			unit = CreateUnit("unit-revealer", GetFactionPlayer("Asa Tribe"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
			KillUnitAt("unit-revealer", GetFactionPlayer("Asa Tribe"), 1, {0, 0}, {256, 256})
		end
	end
end

-- Westward Migration introduction
-- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Have a Bura stand on the glyph to the southwest") == false) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"Our tribe has made its choice: we are to migrate and find new lands which can feed our growing population. After wandering out of our home in the east, we came to this land crossed by a great river. Our journey continues, however, for our eyes have been set to the lands further to the southwest. But before we get there, first we have to pass through the hostile natives around here... this will be a dangerous task.\n\n(This is a migration mission. You cannot build any structures or train any units.)",
			player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Defeat your enemies")
				AddPlayerObjective(player, "- Have a Bura stand on the glyph to the southwest")
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
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Have a Bura stand on the glyph to the southwest") and GetPlayerData(GetFactionPlayer("Asa Tribe"), "UnitTypesCount", "unit-germanic-worker") < 1) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"Our buras have failed to make the journey southwest safely. Soon our remaining warriors, hungry and desperate, scatter through these lands, either facing a terrible death or managing to gain enough acceptance to live amongst the hostile natives.",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					ActionDefeat()
				end
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
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Have a Bura stand on the glyph to the southwest")) then
			local uncount = 0
			uncount = GetUnits(1)
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
		local native_unit
		local asa_unit
		
		local uncount = 0
		uncount = GetUnits(1)
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (nearby_uncount[unit2] and GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("Asa Tribe") and not GetUnitTypeData(GetUnitVariable(nearby_uncount[unit2], "Ident"), "Coward")) then
						native_unit = uncount[unit1]
						asa_unit = nearby_uncount[unit2]
						break
					end
				end
			end
		end
		
		if (not native_unit or not asa_unit) then
			return true
		end
			
		Event(
			native_unit,
			"Intruders! Get' em!",
			player,
			{"~!Continue"},
			{function(s)
				Event(
					asa_unit,
					"Defend our people!",
					player,
					{"~!Continue"},
					{function(s)
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
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Have a Bura stand on the glyph to the southwest")) then
			local uncount = 0
			uncount = GetUnits(1)
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
		local native_unit
		local asa_unit
		
		local uncount = 0
		uncount = GetUnits(1)
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Building")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("Asa Tribe")) then
						native_unit = uncount[unit1]
						asa_unit = nearby_uncount[unit2]
						break
					end
				end
			end
		end
		
		if (not native_unit or not asa_unit) then
			return true
		end
			
		Event(
			asa_unit,
			"What a shabby settlement...",
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
		if (GetFactionPlayer("Asa Tribe") ~= nil) then
			local uncount = 0
			uncount = GetUnits(15)
			for unit1 = 1,table.getn(uncount) do 
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-glyph") then
					if (GetNumUnitsAt(GetFactionPlayer("Asa Tribe"), "unit-germanic-worker", {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}) > 0) then
						player = GetFactionPlayer("Asa Tribe")
						return true
					end
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"",
			"Our buras have been safely led across these hostile lands. Onwards to a new realm!",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					if (GrandStrategy == false) then
						SetQuestCompleted("westward-migration")
					end
					ActionVictory()
				end
			end}
		)
		return false
	end
)
