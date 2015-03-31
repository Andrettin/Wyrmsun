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
			"After wandering out of our home in the east, we came to this land crossed by a great river. Our journey continues, however, for our eyes have been set to the lands further to the southwest. But before we get there, first we have to pass through the hostile natives around here... this will be a dangerous task.",
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
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Westward Migration") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "Westward Migration")
						end
						SavePreferences()
						NextMap = "maps/earth/jutland.smp"
						CurrentQuest = "Northwards to the Sea"
					end
					ActionVictory()
				end
			end}
		)
		return false
	end
)
