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
	SetPlayerData(0, "Faction", "asa-tribe")
	SetPlayerData(0, "Resources", "copper", 2000)
	SetPlayerData(0, "Resources", "lumber", 2000)
	SetPlayerData(0, "Resources", "stone", 1000)
	SetPlayerData(0, "Resources", "oil", 0)
	SetAiType(0, "land-attack")
	SetPlayerData(1, "Faction", "gylfing-tribe")
	SetPlayerData(1, "Resources", "copper", 2000)
	SetPlayerData(1, "Resources", "lumber", 2000)
	SetPlayerData(1, "Resources", "stone", 1000)
	SetPlayerData(1, "Resources", "oil", 0)
	SetAiType(1, "land-attack")
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "upgrade-teuton-civilization", "F")
	
	if (GrandStrategy == false) then
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-archer", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		
		unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-warrior", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-germanic-archer", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
	elseif (GrandStrategyEventMap) then
		SetAiType(1, "passive")
		
		-- Asa units
		CreateProvinceUnits("Jutland", 0)
		CreateProvinceCustomHero("Jutland", 0)
		
		-- Gylfing units
		CreateProvinceUnits("Scania", 1)
	end
end

-- Gylve's Realm introduction
-- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
AddTrigger("gylves-realm-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Asa Tribe") and PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy all of Gylve's war lodges and military units") == false) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"After disembarking at the coast, we were greeted by the local king, Gylve. Although he was impressed by us and treated us gently, the king refused to give way and swear an oath of fealty to you, or even to allow us to pass through his lands to reach the fields beyond. If we are to succeed in our aims, we have to demonstrate our power to Gylve and force him to a peace. He will know the might of the Asa!",
			player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Defeat your rivals")
				AddPlayerObjective(player, "- Destroy all of Gylve's war lodges and military units")
			end}
		)
		return false
	end
)

AddTrigger("gylves-realm-victory",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Asa Tribe") and GetFactionExists("Gylfing Tribe") and PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy all of Gylve's war lodges and military units") and GetPlayerData(GetFactionPlayer("Gylfing Tribe"), "UnitTypesCount", "unit-germanic-barracks") < 1 and GetPlayerData(GetFactionPlayer("Gylfing Tribe"), "UnitTypesCount", "unit-germanic-warrior") < 1 and GetPlayerData(GetFactionPlayer("Gylfing Tribe"), "UnitTypesCount", "unit-germanic-archer") < 1) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"Gylve has accepted a honorable peace with us. He has retained his role as a king, yet became subordinated to our tribe. We took wives of the land for ourselves, entrusted the lordship over Gylve to one of our chieftains, and then moved on to the north... to our final destination. We came upon a large lake, with fair fields spread around it. You founded a hall by the lake, Sigtun, from which your descendants shall rule the land for untold generations!",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					ActionVictory()
					if (GrandStrategy == false) then
						SetQuestCompleted("gylves-realm", GameSettings.Difficulty)
					end
				end
			end}
		)
		return false
	end
)
