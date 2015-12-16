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
--      (c) Copyright 2015 by Andrettin
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
	SetPlayerData(0, "Faction", "Modsogning Clan")
	SetPlayerData(0, "Allow", "upgrade-dwarven-runewriting", "F")
	Map.Info.PlayerType[1] = PlayerNobody
	Map.Info.PlayerType[2] = PlayerNobody
	Map.Info.PlayerType[3] = PlayerNobody
	
	if not (GrandStrategy) then
		unit = CreateUnit("unit-dwarven-steelclad", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Name", "Brokk")
		AcquireTrait(unit, "upgrade-keen")
		unit = CreateUnit("unit-dwarven-steelclad", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Name", "Eitri")
		AcquireTrait(unit, "upgrade-dextrous")
		unit = CreateUnit("unit-dwarven-scout", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	elseif (GrandStrategyEventMap) then
		unit = CreateUnit("unit-dwarven-steelclad", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Name", "Brokk")
		AcquireTrait(unit, "upgrade-keen")
		unit = CreateUnit("unit-dwarven-steelclad", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Name", "Eitri")
		AcquireTrait(unit, "upgrade-dextrous")
		
		CreateProvinceUnits("Svarinshaug", 0, 2, false, true)
		CreateProvinceCustomHero("Svarinshaug", 0)
		
		-- don't allow the player to build/train units if in grand strategy mode
		SetPlayerData(0, "Allow", "unit-dwarven-barracks", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-smithy", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-lumber-mill", "F")
		SetPlayerData(0, "Allow", "unit-dwarven-sentry-tower", "F")
	end
	

	-- create blood bats and dread bats
	if (GameSettings.Difficulty == 1) then -- if difficulty is easy
		CreateCreeps(15, "unit-slime", 4, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
		CreateCreeps(15, "unit-blood-bat", 4, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
		CreateCreeps(15, "unit-dread-bat", 2, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
	elseif (GameSettings.Difficulty == 2) then -- if difficulty is normal
		CreateCreeps(15, "unit-slime", 8, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
		CreateCreeps(15, "unit-blood-bat", 8, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
		CreateCreeps(15, "unit-dread-bat", 4, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
	elseif (GameSettings.Difficulty == 3) then -- if difficulty is hard
		CreateCreeps(15, "unit-slime", 16, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
		CreateCreeps(15, "unit-blood-bat", 16, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
		CreateCreeps(15, "unit-dread-bat", 8, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
	elseif (GameSettings.Difficulty == 4) then -- if difficulty is brutal
		CreateCreeps(15, "unit-slime", 32, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
		CreateCreeps(15, "unit-blood-bat", 32, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
		CreateCreeps(15, "unit-dread-bat", 16, 0, Map.Info.MapWidth - 1, 0, Map.Info.MapHeight - 1)
	end
end

RemovePlayerObjective(GetFactionPlayer("Modsogning Clan"), "- Defeat your enemies")

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Modsogning Clan") and not PlayerHasObjective(GetFactionPlayer("Modsogning Clan"), "- Collect 8000 gold")) then
			player = GetFactionPlayer("Modsogning Clan")
			return true
		end
		return false
	end,
	function() 
		local brokk = nil
		local eitri = nil
		local uncount = GetUnits(GetFactionPlayer("Modsogning Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if ((GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") and GetUnitVariable(uncount[unit1], "Name") == "Brokk") then
				brokk = uncount[unit1]
			elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") and GetUnitVariable(uncount[unit1], "Name") == "Eitri") then
				eitri = uncount[unit1]
			end
		end
		
		Event(
			"",
			"The dwarven smiths Brokk and Eitri are competing with the renowned sons of Ivaldi to craft the best artifacts for Modsognir. To obtain the necessary high quality ores will be perilous, however, as dangerous creatures abound in the deep mines where they lay...",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				eitri,
				"Here we are... the place where our scouts said they had found the high-grade gold.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					brokk,
					"Excellent. We have to be careful because of the dangerous beasts, but soon enough we should have the ores for Modsognir's artifacts. Let us be quick, we don't want to show the results of our craftsmanship to Modsognir much after the sons of Ivaldi... he might not be as pleased, and then we will lose our bet.",
					player,
					{"~!Continue"},
					{function(s)
						AddPlayerObjective(player, "- Collect 8000 gold")
						AddPlayerObjective(player, "- Brokk must survive")
						AddPlayerObjective(player, "- Eitri must survive")
					end}
				)
				end}
			)
			end},
			nil,
			nil,
			GrandStrategy
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Collect 8000 gold") and GetPlayerData(GetThisPlayer(), "Resources", "gold") >= 8000) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		local brokk = nil
		local eitri = nil
		local uncount = GetUnits(GetFactionPlayer("Modsogning Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if ((GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") and GetUnitVariable(uncount[unit1], "Name") == "Brokk") then
				brokk = uncount[unit1]
			elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") and GetUnitVariable(uncount[unit1], "Name") == "Eitri") then
				eitri = uncount[unit1]
			end
		end
		
		Event(
			eitri,
			"We have gotten all the gold we need. To the forge!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"After arduous hours of work, the labor of Brokk and Eitri finally came to fruition. They had crafted two wondrous artifacts for Modsognir.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"",
					"On the following day, the pair arrived at Modsognir's hall. The sons of Ivaldi were already there. They too bore two gifts for the dwarven chieftain: a magnificent throwing spear, Gungnir, and a sleek ship, Skidbladnir. These were found excellent by Modsognir.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"",
						"The time came for Brokk and Eitri to put their artifacts forward. They lay before their chief a solid gold arm-ring, Draupnir, and a mighty hammer, Mjollnir. Modsognir announced his decision.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"",
							"Gungnir was strong, but Mjollnir was stronger. Glancing at Skidbladnir, Modsognir's judgment was that the dwarves' destinity was not on the waters, but deep within the land, surrounded by veins and artifacts of gold. And thus Brokk and Eitri won the competition, receiving a hefty sum as their prize.",
							player,
							{"~!Continue"},
							{function(s)
								if (GrandStrategy == false) then
									if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Treasures of Svarinshaug") == false) then
										table.insert(wyr.preferences.QuestsCompleted, "The Treasures of Svarinshaug")
									end
									SavePreferences()
								end
								ActionVictory()
							end}
						)
						end}
					)
					end}
				)
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
		
		-- until Brokk or Eitri is dead, make the hostile fauna attack them
		local uncount = GetUnits(15)
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-blood-bat" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dread-bat" or GetUnitVariable(uncount[unit1], "Ident") == "unit-slime") then
				if (GetNumUnitsAt(GetFactionPlayer("Modsogning Clan"), "units", {GetUnitVariable(uncount[unit1],"PosX") - 4, GetUnitVariable(uncount[unit1],"PosY") - 4}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4}) > 0) then -- if there are units from Brokk and Eitri's entourage near the beast
					local nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 4, true)
					for unit2 = 1,table.getn(nearby_uncount) do 
						if (nearby_uncount[unit2] and GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("Modsogning Clan") and GetUnitTypeData(GetUnitVariable(nearby_uncount[unit2], "Ident"), "organic")) then
							OrderUnit(15, GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(nearby_uncount[unit2],"PosX"), GetUnitVariable(nearby_uncount[unit2],"PosY")}, "attack")
						end
					end
				end
			end
		end
		
		local brokk_found = false
		local eitri_found = false
		local uncount = GetUnits(GetFactionPlayer("Modsogning Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if ((GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") and GetUnitVariable(uncount[unit1], "Name") == "Brokk") then
				brokk_found = true
			elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") and GetUnitVariable(uncount[unit1], "Name") == "Eitri") then
				eitri_found = true
			end
		end
		
		if (
			(PlayerHasObjective(GetThisPlayer(), "- Brokk must survive") and brokk_found == false)
			or (PlayerHasObjective(GetThisPlayer(), "- Eitri must survive") and eitri_found == false)
		) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Brokk must survive")
		RemovePlayerObjective(player, "- Eitri must survive")
		ActionDefeat()
		return false
	end
)
