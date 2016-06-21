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
	SetPlayerData(4, "Faction", "Asa Tribe")
	if not (GrandStrategy) then
		SetPlayerData(4, "Allow", "upgrade-teuton-civilization", "F")
		SetPlayerData(1, "Allow", "upgrade-germanic-bronze-shield", "F")
		SetPlayerData(1, "Allow", "upgrade-germanic-broad-sword", "F")
		SetPlayerData(1, "Allow", "upgrade-germanic-barbed-arrow", "F")
		SetPlayerData(1, "Allow", "upgrade-germanic-long-spear", "F")
	end
	if (GrandStrategy == false or GetProvinceOwner("Jutland") == "") then
		SetPlayerData(1, "Faction", "Ertebolle Tribe")
	else
		SetPlayerData(1, "Faction", GetProvinceOwner("Jutland"))
	end
	
	if (GrandStrategyEventMap) then
		-- Asa units
		CreateProvinceUnits("Brandenburg", 4)
		CreateProvinceCustomHero("Brandenburg", 4)
		
		-- native units
		CreateProvinceUnits("Jutland", 1)
	end
end

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
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Subdue the natives")) then
			local uncount = 0
			uncount = GetUnits(1)
			for unit1 = 1,table.getn(uncount) do 
				if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
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
		local native_unit
		local asa_unit
		
		local uncount = 0
		uncount = GetUnits(1)
		for unit1 = 1,table.getn(uncount) do 
			if (uncount[unit1] and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "organic")) then
				local nearby_uncount = 0
				nearby_uncount = GetUnitsAroundUnit(uncount[unit1], 3, true)
				for unit2 = 1,table.getn(nearby_uncount) do 
					if (GetUnitVariable(nearby_uncount[unit2], "Player") == GetFactionPlayer("Asa Tribe")) then
						native_unit = uncount[unit1]
						asa_unit = nearby_uncount[unit2]
						break
					end
				end
			end
		end
		
		if (not native_unit or not asa_unit) then
			return true
		end
			
		Event(
			native_unit,
			"Who are you, strangers? And what do you seek here?",
			player,
			{"~!Continue"},
			{function(s)
				Event(
					asa_unit,
					"We are the Asa, and we seek a new home for our desolate people.",
					player,
					{"~!Continue"},
					{function(s)
						Event(
							native_unit,
							"You are... too many! We do not have enough space here, you must turn away and go elsewhere.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								asa_unit,
								"Our feet grow tired, long have we wandered. There is no turning back, and if you will not accede to our wishes peacefully - then it is war that you have brought upon yourselves!",
								player,
								{"~!Continue"},
								{function(s)
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
						SetQuestCompleted("northwards-to-the-sea")
					end
					ActionVictory()
				end
			end}
		)
		return false
	end
)
