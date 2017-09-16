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
--      (c) Copyright 2015-2017 by Andrettin
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
	SetPlayerData(1, "Faction", "rome")
	SetPlayerData(0, "Resources", "copper", 5000)
	SetPlayerData(0, "Resources", "lumber", 5000)
	SetPlayerData(0, "Resources", "stone", 2500)
	SetPlayerData(0, "Resources", "oil", 0)
	SetAiType(0, "land-attack")
	SetPlayerData(1, "Resources", "copper", 2000)
	SetPlayerData(1, "Resources", "lumber", 2000)
	SetPlayerData(1, "Resources", "stone", 1000)
	SetPlayerData(1, "Resources", "oil", 0)
	SetAiType(1, "land-attack")

	if (GrandStrategy == false) then
		local rome_player = GetFactionPlayer("Rome")
		SetPlayerData(rome_player, "Allow", "upgrade-teuton-masonry", "R")
		SetPlayerData(0, "Faction", "suebi-tribe")
		
		unit = CreateUnit("unit-suebi-swordsman", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-suebi-swordsman", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-teuton-archer", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
	end
end

-- Moving into Galicia introduction
AddTrigger("moving-into-galicia-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Suebi Tribe") and PlayerHasObjective(GetFactionPlayer("Suebi Tribe"), "- Take Bracara Augusta") == false) then
			player = GetFactionPlayer("Suebi Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"Times are changing. The Roman Empire, once invincible, is now falling prey to a conjunction of domestic troubles and external pressures. Our group of Suebi has decided to take on this opportunity, journeying deep into Roman territory, and seeking a land to take for ourselves.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"We have crossed the Rhine into Gaul, but that was not to be our final destination: we moved to the south, to Iberia, to the Roman province of Galicia. The walls of Bracara Augusta, the province's capital, is now all that stands between us and the establishment of a new dominion in Roman lands!",
				player,
				{"~!Continue"},
				{function(s)
					RemovePlayerObjective(player, "- Defeat your rivals")
					AddPlayerObjective(player, "- Take Bracara Augusta")
				end}
			)
			end}
		)
		return false
	end
)

AddTrigger("moving-into-galicia-victory",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Suebi Tribe") and PlayerHasObjective(GetFactionPlayer("Suebi Tribe"), "- Take Bracara Augusta") and GetPlayerData(GetFactionPlayer("Rome"), "TotalNumUnitsConstructed") == 0) then
			player = GetFactionPlayer("Suebi Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"Victory is ours! Bracara Augusta has been taken, and we have laid the foundations of a new realm!",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					ActionVictory()
					if (GrandStrategy == false) then
						SetQuestCompleted("moving-into-galicia", GameSettings.Difficulty)
					end
				end
			end}
		)
		return false
	end
)
