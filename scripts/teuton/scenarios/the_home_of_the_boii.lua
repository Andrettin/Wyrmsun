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
	if (GrandStrategy == false) then
		unit = CreateUnit("unit-hero-marbod", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	elseif (GrandStrategyEventMap) then
		SetAiType(0, "grand-strategy-battle")
		SetAiType(1, "grand-strategy-battle")
		
		local units_to_be_created = {}
		
		-- Marcomanni units
		for i, unitName in ipairs(Units) do
			if (IsMilitaryUnit(unitName)) then
				units_to_be_created[string.gsub(unitName, "-", "_")] = 0
				units_to_be_created[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] / 2
				WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Brandenburg.Units[string.gsub(unitName, "-", "_")] - units_to_be_created[string.gsub(unitName, "-", "_")]
			end
		end
		for i, unitName in ipairs(Units) do
			if (IsMilitaryUnit(unitName)) then
				if (units_to_be_created[string.gsub(unitName, "-", "_")] > 0) then
					for i=1,(units_to_be_created[string.gsub(unitName, "-", "_")] * BattalionMultiplier) do
						unit = CreateUnit(unitName, 0, {Players[0].StartPos.x, Players[0].StartPos.y})
					end
				end
			end
		end
		unit = CreateUnit("unit-hero-marbod", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		WorldMapProvinces.Brandenburg.Heroes.unit_hero_marbod = 0
		
		-- Boii units
		for i, unitName in ipairs(Units) do
			if (IsMilitaryUnit(unitName)) then
				units_to_be_created[string.gsub(unitName, "-", "_")] = 0
				units_to_be_created[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Bohemia.Units[string.gsub(unitName, "-", "_")]
				WorldMapProvinces.Bohemia.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Bohemia.Units[string.gsub(unitName, "-", "_")] - units_to_be_created[string.gsub(unitName, "-", "_")]
			end
		end
		for i, unitName in ipairs(Units) do
			if (IsMilitaryUnit(unitName)) then
				if (units_to_be_created[string.gsub(unitName, "-", "_")] > 0) then
					for i=1,(units_to_be_created[string.gsub(unitName, "-", "_")] * BattalionMultiplier) do
						unit = CreateUnit(unitName, 1, {Players[1].StartPos.x, Players[1].StartPos.y})
					end
				end
			end
		end
	end
end

-- The Home of the Boii introduction
AddTrigger(
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
				"Marbod",
				"Germania is under ever-greater peril from the Romans. My warriors, there is no turning back - we must take the Boii's lands, or perish!",
				player,
				{"~!Continue"},
				{function(s)
					RemovePlayerObjective(player, "- Defeat your enemies")
					AddPlayerObjective(player, "- Defeat the Boii")
					AddPlayerObjective(player, "- Marbod must survive")
				end},
				"teuton/icons/marbod.png"
			)
			end}
		)
		return false
	end
)

-- Marbod speaks about his ambition to found a great realm, and the difficulties of doing so nearer to the Romans
AddTrigger(
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
			"Marbod",
			"So near the Romans as we used to be, no realm could succeed and become great. But here... we have a chance.",
			player,
			{"~!Continue"},
			{function(s)
			end},
			"teuton/icons/marbod.png"
		)
		return false
	end
)

-- Marbod speaks about his time in Rome
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Defeat the Boii") and GetPlayerData(GetFactionPlayer("Marcomanni Tribe"), "UnitTypesCount", "unit-teuton-farm") >= 4 and GetPlayerData(GetFactionPlayer("Marcomanni Tribe"), "UnitTypesCount", "unit-teuton-barracks") >= 1 and GetPlayerData(GetFactionPlayer("Marcomanni Tribe"), "UnitTypesCount", "unit-teuton-swordsman") >= 8) then
			player = GetFactionPlayer("Marcomanni Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"Marbod",
			"I keep remembering my younger years in Rome... they taught me much about statecraft and military organization. Already, we have a disciplined army to pursue our dangerous - albeit rewarding - task. The Emperor was most kind to me... should we succeed here, will our realms one day clash?",
			player,
			{"~!Continue"},
			{function(s)
			end},
			"teuton/icons/marbod.png"
		)
		return false
	end
)

AddTrigger(
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
			"Marbod",
			"The Boii's capital has become naught but a burning ruin. On its ashes we shall build our own settlement of Bubienum, the center of our new Marcomannic kingdom!",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					if (GrandStrategy == false) then
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Home of the Boii") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "The Home of the Boii")
						end
						SavePreferences()
					end
					ActionVictory()
				end
			end},
			"teuton/icons/marbod.png"
		)
		return false
	end
)

-- if Marbod dies, the quest is lost
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Marbod must survive") and GetPlayerData(GetFactionPlayer("Marcomanni Tribe"), "UnitTypesCount", "unit-hero-marbod") < 1) then
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
