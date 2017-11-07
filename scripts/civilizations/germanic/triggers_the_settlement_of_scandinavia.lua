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
--      (c) Copyright 2014-2017 by Andrettin
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

-- On the Vanaquisl introduction
-- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
AddTrigger("on-the-vanaquisl-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "Faction") == "asa-tribe" and GetFactionExists("vana-tribe")) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local vana_defender_quantity = 0
		if (GameSettings.Difficulty == 1) then -- if difficulty is easy
			vana_defender_quantity = 4
		elseif (GameSettings.Difficulty == 2) then -- if difficulty is normal
			vana_defender_quantity = 9
		elseif (GameSettings.Difficulty == 3) then -- if difficulty is hard
			vana_defender_quantity = 18
		elseif (GameSettings.Difficulty == 4) then -- if difficulty is brutal
			vana_defender_quantity = 36
		end
		CreateCreeps(GetFactionPlayer("vana-tribe"), "unit-germanic-warrior", vana_defender_quantity, 4732 - EarthStartX, 935 - EarthStartY, 4782 - EarthStartX, 964 - EarthStartY)
		CallDialogue("on-the-vanaquisl-introduction", trigger_player)
		CallDialogue("asa-raid", GetFactionPlayer("vana-tribe"))
		return false
	end
)

AddTrigger("on-the-vanaquisl-vana-sighted",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("voden", i) ~= nil and GetFactionExists("vana-tribe") and GetPlayerData(i, "HasQuest", "on-the-vanaquisl")) then
				local uncount = GetUnits(GetFactionPlayer("vana-tribe"))
				for unit1 = 1,table.getn(uncount) do 
					if (uncount[unit1] and GetUnitVariable(uncount[unit1], "Ident") == "unit-germanic-warrior") then
						local unit_quantity = GetNumUnitsAt(i, "units", {GetUnitVariable(uncount[unit1],"PosX") - 3, GetUnitVariable(uncount[unit1],"PosY") - 3}, {GetUnitVariable(uncount[unit1],"PosX") + 3, GetUnitVariable(uncount[unit1],"PosY") + 3})
						if (unit_quantity > 0) then
							trigger_player = i
							return true
						end
					end
				end
			end
		end
		return false
	end,
	function()
		CallDialogue("on-the-vanaquisl-vana-sighted", trigger_player)
		return false
	end
)

AddTrigger("westward-migration-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "Faction") == "asa-tribe" and GetFactionExists("uralic-tribe")) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		local gardarike_warrior_quantity = 0
		if (GameSettings.Difficulty == 1) then -- if difficulty is easy
			gardarike_warrior_quantity = 16
		elseif (GameSettings.Difficulty == 2) then -- if difficulty is normal
			gardarike_warrior_quantity = 48
		elseif (GameSettings.Difficulty == 3) then -- if difficulty is hard
			gardarike_warrior_quantity = 96
		elseif (GameSettings.Difficulty == 4) then -- if difficulty is brutal
			gardarike_warrior_quantity = 192
		end
		CreateCreeps(GetFactionPlayer("uralic-tribe"), "unit-germanic-warrior", gardarike_warrior_quantity, 4369 - EarthStartX, 643 - EarthStartY, 4547 - EarthStartX, 770 - EarthStartY)
		CreateCreeps(GetFactionPlayer("uralic-tribe"), "unit-germanic-archer", gardarike_warrior_quantity, 4369 - EarthStartX, 643 - EarthStartY, 4547 - EarthStartX, 770 - EarthStartY)
		CallDialogue("westward-migration-introduction", trigger_player)
		return false
	end
)

AddTrigger("westward-migration-victory",
	function()
		if (GameCycle == 0) then
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "westward-migration")) then
				local uncount = GetUnits(PlayerNumNeutral)
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-settlement-site" and GetUnitVariable(uncount[unit1], "Settlement") == "riga") then
						if (GetNumUnitsAt(i, "unit-germanic-worker", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4}) > 0) then
							trigger_player = i
							return true
						end
					end
				end
			end
		end
		return false
	end,
	function() 
		CallDialogue("westward-migration-victory", trigger_player)
		return false
	end
)
