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
	SetAiType(1, "grand-strategy-battle")
	
	local units_to_be_created = {}
	
	-- Marcomanni units
	for i, unitName in ipairs(Units) do
		if (IsMilitaryUnit(unitName)) then
			units_to_be_created[string.gsub(unitName, "-", "_")] = 0
			units_to_be_created[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Austria.Units[string.gsub(unitName, "-", "_")]
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
--	unit = CreateUnit("unit-hero-marbod", 0, {Players[0].StartPos.x, Players[0].StartPos.y}) -- add Ballomar here later
--	WorldMapProvinces.Austria.Heroes.unit_hero_marbod = 0
	
	-- Roman units
	for i, unitName in ipairs(Units) do
		if (IsMilitaryUnit(unitName)) then
			units_to_be_created[string.gsub(unitName, "-", "_")] = 0
			units_to_be_created[string.gsub(unitName, "-", "_")] = math.floor(WorldMapProvinces.NorthItaly.Units[string.gsub(unitName, "-", "_")] / 4)
			WorldMapProvinces.NorthItaly.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.NorthItaly.Units[string.gsub(unitName, "-", "_")] - units_to_be_created[string.gsub(unitName, "-", "_")]
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

-- The Razing of Opitergium introduction
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Destroy Opitergium") == false) then
			player = GetFactionPlayer("Marcomanni Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"Leaving a trail of destruction behind us, we have reached Italy under the leadership of our chieftain Ballomar, and now lay siege to the Roman city of Opitergium.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"The time has come to show the Romans what we are truly made of, and force them to provide us with riches and suitable lands.",
				player,
				{"~!Continue"},
				{function(s)
					RemovePlayerObjective(player, "- Defeat your enemies")
					AddPlayerObjective(player, "- Destroy Opitergium")
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
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Destroy Opitergium") and GetPlayerData(GetFactionPlayer("Rome"), "TotalNumUnits") == 0) then
			player = GetFactionPlayer("Marcomanni Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"Opitergium became naught but ashes. Our next goal, Aquileia, would soon be besieged by our warriors.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"But the Romans resisted. They managed to put off our siege, and pursued us until we had been driven beyond the Danube. That, however, was not enough for the Roman Emperor Marcus Aurelius - he desired to make a new Roman province out of our lands. Fortunately, domestic troubles forced him to turn his attention elsewhere, leaving us to our own devices. The Marcomanni live on!",
				player,
				{"~!Continue"},
				{function(s)
					if (player == GetThisPlayer()) then
						if (GrandStrategy == false) then
							if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Razing of Opitergium") == false) then
								table.insert(wyr.preferences.QuestsCompleted, "The Razing of Opitergium")
							end
							SavePreferences()
						end
						ActionVictory()
					end
				end},
				nil,
				nil,
				GrandStrategy
			)
			end}
		)
		return false
	end
)
