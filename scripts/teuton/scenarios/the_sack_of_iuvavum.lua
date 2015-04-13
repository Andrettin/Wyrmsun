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

if (GrandStrategy == false) then
	local rome_player = GetFactionPlayer("Rome")
	SetPlayerData(rome_player, "Allow", "upgrade-teuton-civilization", "R")
	SetPlayerData(rome_player, "RaceName", "latin")
	SetPlayerData(rome_player, "Faction", "Rome")
	SetPlayerData(rome_player, "Allow", "upgrade-teuton-masonry", "R")

--	unit = CreateUnit("unit-hero-marbod", 0, {Players[0].StartPos.x, Players[0].StartPos.y}) -- add Ballomar here later
elseif (GrandStrategyEventMap) then
	SetAiType(0, "grand-strategy-battle")
	SetAiType(4, "grand-strategy-battle")
	
	local units_to_be_created = {}
	
	-- Marcomanni units
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
					unit = CreateUnit(unitName, 4, {Players[4].StartPos.x, Players[4].StartPos.y})
				end
			end
		end
	end
--	unit = CreateUnit("unit-hero-marbod", 4, {Players[4].StartPos.x, Players[4].StartPos.y}) -- add Ballomar here later
--	WorldMapProvinces.Bohemia.Heroes.unit_hero_marbod = 0
	
	-- Roman units
	for i, unitName in ipairs(Units) do
		if (IsMilitaryUnit(unitName)) then
			units_to_be_created[string.gsub(unitName, "-", "_")] = 0
			units_to_be_created[string.gsub(unitName, "-", "_")] = math.floor(WorldMapProvinces.Austria.Units[string.gsub(unitName, "-", "_")] / 4)
			WorldMapProvinces.Austria.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Austria.Units[string.gsub(unitName, "-", "_")] - units_to_be_created[string.gsub(unitName, "-", "_")]
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
end

-- The Sack of Iuvavum introduction
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Sack Iuvavum") == false) then
			player = GetFactionPlayer("Marcomanni Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"Almost two centuries after the time of Marbod, the Marcomanni chieftain Ballomar has gathered more than a dozen Germanic tribes in an alliance to invade the Roman Empire.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"We now approach the Roman town of Iuvavum - renowned for its wealth derived from the salt trade. Our warriors yearn for these riches... Sack this city, for all it is worth!",
				player,
				{"~!Continue"},
				{function(s)
					RemovePlayerObjective(player, "- Defeat your enemies")
					AddPlayerObjective(player, "- Leave no building standing")
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
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Leave no building standing") and GetPlayerData(GetFactionPlayer("Rome"), "NumBuildings") == 0) then
			player = GetFactionPlayer("Marcomanni Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"All that was of worth in Iuvavum has been pillaged... let us march on, to Italy itself!",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					if (GrandStrategy == false) then
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Sack of Iuvavum") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "The Sack of Iuvavum")
						end
						SavePreferences()
					end
					ActionVictory()
				end
			end}
		)
		return false
	end
)
