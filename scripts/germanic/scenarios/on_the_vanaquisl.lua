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
	SetPlayerData(GetFactionPlayer("Asa Tribe"), "Allow", "upgrade-teuton-civilization", "F")
end

-- On the Vanaquisl introduction
-- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy Vanaland's town hall") == false) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"We have assembled a great army to attack those who live on the Vanaquisl, the people of Vanaland. Their territory shall be taken into our possession, providing our people with the lands we much need to prosper. Onward to victory!",
			player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Defeat your enemies")
				AddPlayerObjective(player, "- Destroy Vanaland's town hall")
			end}
		)
		Event(
			"",
			"Defend our settlement against the surprise Asa raid!",
			GetFactionPlayer("Vana Tribe"),
			{"~!Continue"},
			{function(s)
				AddPlayerObjective(GetFactionPlayer("Vana Tribe"), "- Protect our chieftain's hall")
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
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy Vanaland's town hall")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("Vana Tribe"))
			for unit1 = 1,table.getn(uncount) do 
				if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
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
		local vana_unit
		local asa_unit
		
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Vana Tribe"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("Asa Tribe")) then
						vana_unit = uncount[unit1]
						asa_unit = nearby_uncount[unit2]
						break
					end
				end
			end
		end
		
		if (not vana_unit or not asa_unit) then
			return true
		end
			
		Event(
			vana_unit,
			"The Asa! What are you here for?",
			player,
			{"~!Continue"},
			{function(s)
				Event(
					asa_unit,
					"We are here for Vanaland.",
					player,
					{"~!Continue"},
					{function(s)
						if (GetUnitTypeData(GetUnitVariable(vana_unit, "Ident"), "Coward") == false) then
							Event(
								vana_unit,
								"You shall have our homelands... as your burial ground.",
								player,
								{"~!Continue"},
								{function(s)
								end}
							)
						end
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
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy Vanaland's town hall") and GetPlayerData(GetFactionPlayer("Vana Tribe"), "UnitTypesCount", "unit-germanic-town-hall") < 1) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function()
		local vana_unit = FindUnit("unit-germanic-warrior", GetFactionPlayer("Vana Tribe"))
		
		if not (vana_unit) then
			vana_unit = ""
		end
		
		Event(
			vana_unit,
			"What is this disturbance in our home?",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"We ravaged Vanaland and pillaged its wealth, but victory did not quite fall within our grasp. A number of Vanaland's warriors still loomed at large, and reorganized themselves for an attack on us: our remaining forces were not enough to assure their defeat. We had no option but to make peace - for the prolongation of this war would bring naught but great damage to our people.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"",
					"With expansion across the Vanaquisl being denied to us, we now face a dilemma. The lands where we live are not enough to sustain our growing tribe, and we face frequent attacks from other tribes which are in a similar situation. Many of our chieftains are now clamoring for us to head northwest, to find a new home and leave these crowded steppes well behind.",
					player,
					{"~!Continue"},
					{function(s)
						if (player == GetThisPlayer()) then
							if (GrandStrategy == false) then
								if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "On the Vanaquisl") == false) then
									table.insert(wyr.preferences.QuestsCompleted, "On the Vanaquisl")
								end
								SavePreferences()
							end
							ActionVictory()
						end
					end}
				)
				end}
			)
			end},
			nil,
			nil,
			vana_unit == ""
		)
		Event(
			"",
			"The Asa burned our chieftain's hall to the ground and pillaged our homes. A sad day indeed. Nevertheless, a number of our warriors still lied in the wilderness, and soon they regrouped and drove the Asa tribe from our lands.",
			GetFactionPlayer("Vana Tribe"),
			{"~!Continue"},
			{function(s)
				if (GetFactionPlayer("Vana Tribe") == GetThisPlayer()) then
					ActionDefeat()
				end
			end}
		)
		return false
	end
)
