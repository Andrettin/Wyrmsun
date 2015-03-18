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

if (mapinfo.description == "Tanais") then
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
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy Vanaland's town hall") and GetPlayerData(GetFactionPlayer("Vana Tribe"), "UnitTypesCount", "unit-germanic-town-hall") < 1) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"We ravaged Vanaland and pillaged its wealth, but victory did not quite fall within our grasp. A number of Vanaland's warriors still loomed at large, and reorganized themselves for an attack on us: our remaining forces were not enough to assure their defeat. We had no option but to make peace - for the prolongation of this war would bring naught but great damage to our people.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"With expansion across the Vanaquisl being denied to us, many of our chieftains are now clamoring for us to head northwest, to find a new home and leave these crowded steppes well behind.",
				player,
				{"~!Continue"},
				{function(s)
					if (player == GetThisPlayer()) then
						if (GrandStrategy == false) then
							if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "On the Vanaquisl") == false) then
								table.insert(wyr.preferences.QuestsCompleted, "On the Vanaquisl")
							end
							SavePreferences()
							NextMap = "maps/earth/novgorod.smp"
						end
						ActionVictory()
					end
				end}
			)
			end}
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
end

if (mapinfo.description == "Holmgard") then
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
					end
					ActionVictory()
				end
			end}
		)
		return false
	end
)
end

if (mapinfo.description == "Jutland") then
-- Northwards to the Sea introduction
-- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Subdue the natives") == false) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"This land pleases us. Let us take it for ourselves!",
			player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Defeat your enemies")
				AddPlayerObjective(player, "- Subdue the natives")
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
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Subdue the natives") and GetNumRivals(GetFactionPlayer("Asa Tribe")) == 0) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"After subduing the natives, we made ourselves the new masters of this land. Our journey has not ended, however: you set up your sons as the rulers of this country and set your eyes upon the northern seas...",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					if (GrandStrategy == false) then
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Northwards to the Sea") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "Northwards to the Sea")
						end
						SavePreferences()
						NextMap = "maps/earth/malmo.smp"
					end
					ActionVictory()
				end
			end}
		)
		return false
	end
)
end

if (mapinfo.description == "Malmo") then
-- Gylve's Realm introduction
-- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
AddTrigger(
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
				RemovePlayerObjective(player, "- Defeat your enemies")
				AddPlayerObjective(player, "- Destroy all of Gylve's war lodges and military units")
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
					if (GrandStrategy == false) then
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Gylve's Realm") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "Gylve's Realm")
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
end
