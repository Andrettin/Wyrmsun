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

if (LoadedGame == false) then
	SetPlayerData(0, "Allow", "upgrade-teuton-writing", "F")
	SetPlayerData(0, "Faction", "marcomanni-tribe")
	SetPlayerData(1, "Faction", "boii-tribe")
	SetPlayerData(2, "RaceName", "goth")
	SetPlayerData(2, "Faction", "vandal-tribe")
	SetPlayerData(3, "RaceName", "teuton")
	SetPlayerData(3, "Faction", "suebi-tribe")
	SetPlayerData(4, "RaceName", "teuton")
	SetPlayerData(4, "Faction", "lombard-tribe")
	SetPlayerData(0, "Resources", "gold", 5000)
	SetPlayerData(0, "Resources", "lumber", 5000)
	SetPlayerData(0, "Resources", "stone", 2500)
	SetPlayerData(0, "Resources", "oil", 0)
	SetAiType(0, "land-attack")
	SetPlayerData(1, "Resources", "gold", 2000)
	SetPlayerData(1, "Resources", "lumber", 2000)
	SetPlayerData(1, "Resources", "stone", 1000)
	SetPlayerData(1, "Resources", "oil", 0)
	SetAiType(1, "land-attack")
	SetPlayerData(PlayerNumNeutral, "RaceName", "neutral")
	
	if (GrandStrategy == false) then
		unit = CreateUnit("unit-suebi-swordsman", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Character", "Marbod")
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-suebi-swordsman", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-teuton-archer", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		
		unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false) -- set town defender to passive AI (so that they do not participate in attacks)
		unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-archer", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-archer", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-archer", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		
		if (MaxTechLevel[GetThisPlayer() + 1] == "") then -- set AI max tech level to Agrarian (Iron)
			for i=0,(PlayerMax - 1) do
				if (MaxTechLevel[i + 1] == "" and i ~= GetThisPlayer()) then
					MaxTechLevel[i + 1] = "Agrarian (Iron)"
				end
			end
		end
	elseif (GrandStrategyEventMap) then
		local units_to_be_created = {}
		
		-- Marcomanni units
		CreateProvinceUnits("Brandenburg", 0, 2)
		CreateProvinceCustomHero("Brandenburg", 0)
		unit = CreateUnit("unit-suebi-swordsman", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Character", "Marbod")
		SetUnitVariable(unit, "Active", false)
		
		-- Boii units
		CreateProvinceUnits("Bohemia", 1)
		CreateProvinceCustomHero("Bohemia", 1)
		
		if (GrandStrategyBattleBaseBuilding == false) then
			-- don't allow the player to build/train units if in grand strategy mode if base-building is not active
			SetPlayerData(0, "Allow", "unit-teuton-worker", "F")
			SetPlayerData(1, "Allow", "unit-germanic-worker", "F")
		end
	end
	
	-- create allied Germanic forces
	if (GrandStrategy == false) then
		-- Vandals (Lugii)
		local player_spawn_point = FindAppropriateSpawnPoint(0, 48, 0, Map.Info.MapHeight - 1)
		SetStartView(2, player_spawn_point[1], player_spawn_point[2])
		unit = CreateUnit("unit-teuton-swordsman", 2, {Players[2].StartPos.x, Players[2].StartPos.y})
		unit = CreateUnit("unit-teuton-swordsman", 2, {Players[2].StartPos.x, Players[2].StartPos.y})
		unit = CreateUnit("unit-teuton-archer", 2, {Players[2].StartPos.x, Players[2].StartPos.y})
		unit = CreateUnit("unit-teuton-ritter", 2, {Players[2].StartPos.x, Players[2].StartPos.y})

		-- Suebi (Semnones)
		player_spawn_point = FindAppropriateSpawnPoint(0, 48, 0, Map.Info.MapHeight - 1)
		SetStartView(3, player_spawn_point[1], player_spawn_point[2])
		unit = CreateUnit("unit-suebi-swordsman", 3, {Players[3].StartPos.x, Players[3].StartPos.y})
		unit = CreateUnit("unit-suebi-swordsman", 3, {Players[3].StartPos.x, Players[3].StartPos.y})
		unit = CreateUnit("unit-teuton-archer", 3, {Players[3].StartPos.x, Players[3].StartPos.y})
		unit = CreateUnit("unit-teuton-ritter", 3, {Players[3].StartPos.x, Players[3].StartPos.y})

		-- Lombards
		player_spawn_point = FindAppropriateSpawnPoint(0, 48, 0, Map.Info.MapHeight - 1)
		SetStartView(4, player_spawn_point[1], player_spawn_point[2])
		unit = CreateUnit("unit-teuton-swordsman", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
		unit = CreateUnit("unit-teuton-swordsman", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
		unit = CreateUnit("unit-teuton-archer", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
		unit = CreateUnit("unit-teuton-ritter", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
	elseif (GrandStrategyEventMap) then
		local player_spawn_point
		local units_to_be_created = {}
		
		-- Vandals (Lugii)
		if (GetProvinceOwner("Mazovia") == "vandal-tribe") then
			player_spawn_point = FindAppropriateSpawnPoint(0, 48, 0, Map.Info.MapHeight - 1)
			SetStartView(2, player_spawn_point[1], player_spawn_point[2])
			CreateProvinceUnits("Mazovia", 2, 4)
		end

		-- Suebi (Semnones)
		if (GetProvinceOwner("Brandenburg") == "suebi-tribe") then
			player_spawn_point = FindAppropriateSpawnPoint(0, 48, 0, Map.Info.MapHeight - 1)
			SetStartView(3, player_spawn_point[1], player_spawn_point[2])
			CreateProvinceUnits("Brandenburg", 3, 4)
		end

		-- Lombards
		if (GetProvinceOwner("Hanover") == "lombard-tribe") then
			player_spawn_point = FindAppropriateSpawnPoint(0, 48, 0, Map.Info.MapHeight - 1)
			SetStartView(4, player_spawn_point[1], player_spawn_point[2])
			CreateProvinceUnits("Hanover", 4, 4)
		end
	end
end

-- The Home of the Boii introduction
AddTrigger("the-home-of-the-boii-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Defeat the Boii") == false) then
			player = GetFactionPlayer("Marcomanni Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"The Roman incursions through the Rhine into Germania have been devastating for the Marcomanni. Their chieftain, Marbod, has decided to lead them into new, safer lands. The Celtic tribe of the Boii seems weak - making the plains they occupy a prime target for Marbod's designs.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("Marbod"),
				"Germania is under ever-greater peril from the Romans. My warriors, there is no turning back - we must take the Boii's lands, or perish!",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					FindHero("Marbod"),
					"Warriors from a few other tribes have come to our aid, let us gather forces with them.",
					player,
					{"~!Continue"},
					{function(s)
						RemovePlayerObjective(player, "- Defeat your rivals")
						AddPlayerObjective(player, "- Defeat the Boii")
						AddPlayerObjective(player, "- Find the warriors of the other tribes (optional)")
						AddPlayerObjective(player, "- Marbod must survive")
					end}
				)
				end}
			)
			end}
		)
		return false
	end
)

-- Marbod speaks about his ambition to found a great realm, and the difficulties of doing so nearer to the Romans
AddTrigger("the-home-of-the-boii-marbods-ambition",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Defeat the Boii") and GetPlayerData(GetFactionPlayer("Marcomanni Tribe"), "UnitTypesCount", "unit-teuton-farm") >= 4) then
			player = GetFactionPlayer("Marcomanni Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("Marbod"),
			"So near the Romans as we used to be, no realm could succeed and become great. But here... we have a chance.",
			player,
			{"~!Continue"},
			{function(s)
			end}
		)
		return false
	end
)

-- Marbod speaks about his time in Rome
AddTrigger("the-home-of-the-boii-marbods-time-in-rome",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (
			GetFactionExists("Marcomanni Tribe")
			and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Defeat the Boii")
			and GetPlayerData(GetFactionPlayer("Marcomanni Tribe"), "UnitTypesCount", "unit-teuton-farm") >= 4
			and GetPlayerData(GetFactionPlayer("Marcomanni Tribe"), "UnitTypesCount", "unit-teuton-barracks") >= 1
			and (GetPlayerData(GetFactionPlayer("Marcomanni Tribe"), "UnitTypesCount", "unit-teuton-swordsman") + GetPlayerData(GetFactionPlayer("Marcomanni Tribe"), "UnitTypesCount", "unit-suebi-swordsman")) >= 8
		) then
			player = GetFactionPlayer("Marcomanni Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("Marbod"),
			"Much did I learn about statecraft and military organization during my younger years in Rome. Already, we have a disciplined army to pursue our dangerous - albeit rewarding - task. The Boii shall be no match for us!",
			player,
			{"~!Continue"},
			{function(s)
			end}
		)
		return false
	end
)

AddTrigger("the-home-of-the-boii-victory",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Defeat the Boii") and GetNumRivals(GetFactionPlayer("Marcomanni Tribe")) == 0) then
			player = GetFactionPlayer("Marcomanni Tribe")
			return true
		end
		return false
	end,
	function() 
		Event(
			FindHero("Marbod"),
			"The Boii's capital has become naught but a burning ruin. On its ashes we shall build our own settlement of Bubienum, the center of our new Marcomannic kingdom!",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					ActionVictory()
					if (GrandStrategy == false) then
						SetQuestCompleted("the-home-of-the-boii", GameSettings.Difficulty)
					end
				end
			end}
		)
		return false
	end
)

-- if Marbod dies, the quest is lost
AddTrigger("the-home-of-the-boii-marbod-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Marbod must survive") and FindHero("Marbod", GetFactionPlayer("Marcomanni Tribe")) == nil) then
			return true
		end
		return false
	end,
	function()
		if (GetFactionPlayer("Marcomanni Tribe") == GetThisPlayer()) then
			ActionDefeat()
		end
		return false
	end
)

-- dialogue when the Marcomanni find the Vandals (Lugii)
AddTrigger("the-home-of-the-boii-vandals-found",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Defeat the Boii")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("Vandal Tribe"))
			for unit1 = 1,table.getn(uncount) do 
				if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
					local unit_quantity = GetNumUnitsAt(GetFactionPlayer("Marcomanni Tribe"), "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3})
					if (unit_quantity > 0) then
						player = GetFactionPlayer("Marcomanni Tribe")
						return true
					end
				end
			end
		end
		return false
	end,
	function()
		local vandal_unit
		
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Vandal Tribe"))
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("Marcomanni Tribe")) then
						vandal_unit = uncount[unit1]
						break
					end
				end
			end
		end
		
		if (not vandal_unit) then
			return true
		end
			
		Event(
			vandal_unit,
			"Chieftain Marbod of the Marcommani! As promised, we have come to help you in your fight against the Celts.",
			player,
			{"~!Continue"},
			{function(s)
				Event(
					FindHero("Marbod"),
					"Tough you are, Vandal warriors! Let us crush some Boii skulls.",
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

-- dialogue when the Marcomanni find the Suebi (Semnones)
AddTrigger("the-home-of-the-boii-suebi-found",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Defeat the Boii")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("Suebi Tribe"))
			for unit1 = 1,table.getn(uncount) do 
				if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
					local unit_quantity = GetNumUnitsAt(GetFactionPlayer("Marcomanni Tribe"), "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3})
					if (unit_quantity > 0) then
						player = GetFactionPlayer("Marcomanni Tribe")
						return true
					end
				end
			end
		end
		return false
	end,
	function()
		local suebi_unit
		
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Suebi Tribe"))
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("Marcomanni Tribe")) then
						suebi_unit = uncount[unit1]
						break
					end
				end
			end
		end
		
		if (not suebi_unit) then
			return true
		end
			
		Event(
			FindHero("Marbod"),
			"Ah, there you are! Warriors of the Semnones, our tribes are Suebic kin. It is only right that we join forces in war.",
			player,
			{"~!Continue"},
			{function(s)
				Event(
					suebi_unit,
					"We are ready for battle, Marbod!",
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


-- dialogue when the Marcomanni find the Lombards
AddTrigger("the-home-of-the-boii-lombards-found",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Defeat the Boii")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("Lombard Tribe"))
			for unit1 = 1,table.getn(uncount) do 
				if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
					local unit_quantity = GetNumUnitsAt(GetFactionPlayer("Marcomanni Tribe"), "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3})
					if (unit_quantity > 0) then
						player = GetFactionPlayer("Marcomanni Tribe")
						return true
					end
				end
			end
		end
		return false
	end,
	function()
		local lombard_unit
		
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Lombard Tribe"))
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("Marcomanni Tribe")) then
						lombard_unit = uncount[unit1]
						break
					end
				end
			end
		end
		
		if (not lombard_unit) then
			return true
		end
			
		Event(
			lombard_unit,
			"We, Lombard warriors, have come from beyond the Elbe to join you in battle!",
			player,
			{"~!Continue"},
			{function(s)
				Event(
					FindHero("Marbod"),
					"Your help is most appreciated, and you shall share in our booty!",
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
