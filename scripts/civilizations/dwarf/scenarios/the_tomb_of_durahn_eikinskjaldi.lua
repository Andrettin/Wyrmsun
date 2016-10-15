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
--      the_tomb_of_durahn_eikinskjaldi.lua
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
	--SetPlayerData(0, "Faction", "eikinskjaldi-clan")
	SetPlayerData(0, "Faction", "norlund-clan")
	SetPlayerData(1, "Faction", "untersberg")
	SetPlayerData(1, "Name", "Raiders")
	if (IsNetworkGame() and GrandStrategy == false) then
		--SetPlayerData(2, "Faction", "eikinskjaldi-clan")
		SetPlayerData(2, "Faction", "norlund-clan")
		SetPlayerData(2, "Name", "Baglur")
	end
end

AddTrigger("the-tomb-of-durahn-eikinskjaldi-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Raiders") and GetFactionExists("Norlund Clan")) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"The Eikinskjaldi Clan from Joruvellir has hired us to recover the skull of Durahn Eikinskjaldi, a dwarven warlord of ages past. The clan's chieftain needs the skull to prove his descent from Durahn, and thus his claim to his title.",
			player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Defeat your rivals")
				AddPlayerObjective(player, "- Retrieve Durahn Eikinskjaldi's skull")
				AddPlayerObjective(player, "- Durstorn and Baglur must survive")
			end},
			nil,
			nil,
			GrandStrategy
		)
		return false
	end
)

AddTrigger("the-tomb-of-durahn-eikinskjaldi-gnomish-raiders-found",
	function()
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Raiders"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-recruit" or GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-duelist" or GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-master-at-arms") then
				local unit_quantity = GetNumUnitsAt(GetThisPlayer(), "units", {GetUnitVariable(uncount[unit1],"PosX") - 2, GetUnitVariable(uncount[unit1],"PosY") - 2}, {GetUnitVariable(uncount[unit1],"PosX") + 2, GetUnitVariable(uncount[unit1],"PosY") + 2})
				if (unit_quantity > 0) then
					player = GetThisPlayer()
					return true
				end
			end
		end
		return false
	end,
	function()
		Event(
			FindHero("Baglur"),
			"Gnomish raiders looting the tomb... bad news.",
			player,
			{"~!Continue"},
			{function(s)
			end}
		)
		return false
	end
)

AddTrigger("the-tomb-of-durahn-eikinskjaldi-ceiling-mosaic",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetNumUnitsAt(GetThisPlayer(), "units", {6, 9}, {9, 12}) > 0 and GetNumUnitsAt(GetFactionPlayer("Raiders"), "units", {6, 9}, {9, 12}) == 0) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("Baglur"),
			"The ceiling of this antechamber bears a mosaic... depicting a dwarven noble with gold armor and a huge axe.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("Durstorn"),
				"Fit for a chieftain.",
				player,
				{"~!Continue"},
				{function(s)
				end}
			)
			end}
		)
		return false
	end
)

AddTrigger("the-tomb-of-durahn-eikinskjaldi-wall-niches",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Retrieve Durahn Eikinskjaldi's skull") and GetNumUnitsAt(GetThisPlayer(), "units", {9, 7}, {11, 9}) > 0 and GetNumUnitsAt(GetFactionPlayer("Raiders"), "units", {9, 7}, {11, 9}) == 0) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("Baglur"),
			"The walls here have niches, which must have contained dwarven corpses before the raiders scoured this room for valuable objects.",
			player,
			{"~!Continue"},
			{function(s)
			end}
		)
		return false
	end
)

AddTrigger("the-tomb-of-durahn-eikinskjaldi-isuldan-found",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Retrieve Durahn Eikinskjaldi's skull") and GetNumUnitsAt(GetThisPlayer(), "units", {8, 2}, {8, 3}) > 0 and GetNumUnitsAt(GetFactionPlayer("Raiders"), "units", {8, 2}, {8, 3}) == 0) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("Baglur"),
			"The remains of a dwarf... the regalia does not seem Durahn's. This must be Isuldan, his son.",
			player,
			{"~!Continue"},
			{function(s)
			end}
		)
		return false
	end
)

AddTrigger("the-tomb-of-durahn-eikinskjaldi-gnomish-raider-leader-found",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Retrieve Durahn Eikinskjaldi's skull")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("Raiders"))
			for unit1 = 1,table.getn(uncount) do 
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-master-at-arms" and GetUnitVariable(uncount[unit1], "Level") == 4) then
					local unit_quantity = GetNumUnitsAt(GetThisPlayer(), "units", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 1, GetUnitVariable(uncount[unit1],"PosY") + 1})
					if (unit_quantity > 0) then
						player = GetThisPlayer()
						return true
					end
				end
			end
		end
		return false
	end,
	function()
		local gnomish_raider = nil
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Raiders"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-master-at-arms" and GetUnitVariable(uncount[unit1], "Level") == 4) then
				gnomish_raider = uncount[unit1]
			end
		end
		Event(
			gnomish_raider,
			"Bloody dwarves! We were almost finishing with this tomb... prepare to be gutted.",
			player,
			{"~!Continue"},
			{function(s)
			end}
		)
		return false
	end
)

AddTrigger("the-tomb-of-durahn-eikinskjaldi-gneissus-found",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Retrieve Durahn Eikinskjaldi's skull") and GetNumUnitsAt(GetThisPlayer(), "units", {16, 9}, {17, 10}) > 0 and GetNumUnitsAt(GetFactionPlayer("Raiders"), "units", {16, 9}, {17, 10}) == 0) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("Baglur"),
			"The skeleton of a female dwarf... Durahn's wife Gneissus, I suppose.",
			player,
			{"~!Continue"},
			{function(s)
			end}
		)
		return false
	end
)

AddTrigger("the-tomb-of-durahn-eikinskjaldi-merchant-contacts",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetNumUnitsAt(GetThisPlayer(), "units", {16, 9}, {17, 10}) > 0 and GetNumUnitsAt(GetFactionPlayer("Raiders"), "units", {16, 9}, {17, 10}) == 0) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("Durstorn"),
			"There's a book on this table... merchant contacts that the raider leader used to sell off the tomb's artifacts are written on it.",
			player,
			{"~!Continue"},
			{function(s)
			end}
		)
		return false
	end
)

AddTrigger("the-tomb-of-durahn-eikinskjaldi-victory",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Retrieve Durahn Eikinskjaldi's skull") and GetNumUnitsAt(GetThisPlayer(), "units", {16, 6}, {17, 6}) > 0 and GetNumUnitsAt(GetFactionPlayer("Raiders"), "units", {16, 6}, {17, 6}) == 0) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("Durstorn"),
			"There's Durahn's skeleton! Let us bring his skull back to the Eikinskjaldis for a nice reward.",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					ActionVictory()
					if (GrandStrategy == false) then
						SetQuestCompleted("the-tomb-of-durahn-eikinskjaldi", GameSettings.Difficulty)
					end
				end
			end}
		)
		return false
	end
)

-- If Baglur dies, the quest fails
AddTrigger("the-tomb-of-durahn-eikinskjaldi-baglur-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (
			FindHero("Baglur") == nil
		) then
			return true
		end
		return false
	end,
	function() 
		ActionDefeat()
		return false
	end
)

-- If Durstorn dies, the quest fails
AddTrigger("the-tomb-of-durahn-eikinskjaldi-durstorn-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (
			FindHero("Durstorn") == nil
		) then
			return true
		end
		return false
	end,
	function() 
		ActionDefeat()
		return false
	end
)
