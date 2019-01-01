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
--      (c) Copyright 2015-2019 by Andrettin
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
	SetPlayerData(0, "Faction", "rome")
	SetPlayerData(0, "Resources", "copper", 2000)
	SetPlayerData(0, "Resources", "lumber", 2000)
	SetPlayerData(0, "Resources", "stone", 1000)
	SetPlayerData(0, "Resources", "oil", 0)
	SetAiType(0, "land-attack")
	SetPlayerData(4, "Faction", "marcomanni-tribe")
	SetPlayerData(4, "Resources", "copper", 2000)
	SetPlayerData(4, "Resources", "lumber", 2000)
	SetPlayerData(4, "Resources", "stone", 1000)
	SetPlayerData(4, "Resources", "oil", 0)
	SetAiType(4, "land-attack")
	if (GrandStrategy == false) then
		local rome_player = GetFactionPlayer("Rome")
		if not (GrandStrategy) then
			SetPlayerData(rome_player, "Allow", "upgrade-masonry", "R")
			SetPlayerData(rome_player, "Allow", "unit-teuton-catapult", "F")
			SetPlayerData(rome_player, "Allow", "unit-teuton-stronghold", "F")
		end

	--	unit = CreateUnit("unit-suebi-swordsman", 0, {Players[0].StartPos.x, Players[0].StartPos.y}) -- add Ballomar here later
	
		unit = CreateUnit("unit-latin-legionary", rome_player, {Players[rome_player].StartPos.x, Players[rome_player].StartPos.y})
		SetUnitVariable(unit, "Active", false) -- set town defender to passive AI (so that they do not participate in attacks)
		unit = CreateUnit("unit-latin-legionary", rome_player, {Players[rome_player].StartPos.x, Players[rome_player].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-latin-legionary", rome_player, {Players[rome_player].StartPos.x, Players[rome_player].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-latin-legionary", rome_player, {Players[rome_player].StartPos.x, Players[rome_player].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-latin-legionary", rome_player, {Players[rome_player].StartPos.x, Players[rome_player].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-latin-legionary", rome_player, {Players[rome_player].StartPos.x, Players[rome_player].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-latin-javelineer", rome_player, {Players[rome_player].StartPos.x, Players[rome_player].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-latin-javelineer", rome_player, {Players[rome_player].StartPos.x, Players[rome_player].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-latin-javelineer", rome_player, {Players[rome_player].StartPos.x, Players[rome_player].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-latin-javelineer", rome_player, {Players[rome_player].StartPos.x, Players[rome_player].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-latin-javelineer", rome_player, {Players[rome_player].StartPos.x, Players[rome_player].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		
		unit = CreateUnit("unit-suebi-swordsman", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
		unit = CreateUnit("unit-suebi-swordsman", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
		unit = CreateUnit("unit-suebi-swordsman", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
		unit = CreateUnit("unit-suebi-swordsman", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
		unit = CreateUnit("unit-suebi-swordsman", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
		unit = CreateUnit("unit-teuton-archer", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
		unit = CreateUnit("unit-teuton-archer", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
		unit = CreateUnit("unit-teuton-archer", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
		unit = CreateUnit("unit-teuton-archer", 4, {Players[4].StartPos.x, Players[4].StartPos.y})
	end
end

-- The Sack of Iuvavum introduction
AddTrigger("the-sack-of-iuvavum-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Marcomanni Tribe") and PlayerHasObjective(GetFactionPlayer("Marcomanni Tribe"), "- Leave no building standing") == false) then
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
					RemovePlayerObjective(player, "- Defeat your rivals")
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

AddTrigger("the-sack-of-iuvavum-victory",
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
					ActionVictory()
					if (GrandStrategy == false) then
						SetQuestCompleted("the-sack-of-iuvavum", GameSettings.Difficulty)
					end
				end
			end}
		)
		return false
	end
)
