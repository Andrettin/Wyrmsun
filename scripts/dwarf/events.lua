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
--      scepter_of_fire_events.lua - Defines events for the Scepter of Fire campaign.
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

if (mapinfo.description == "Fjalar's and Galar's Hall") then
-- The Mead of Wisdom initial dialogue
-- based on the Norse myth of similar name
--[[
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Fjalar and Galar") and GetFactionExists("Thjodrorir")) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and GetPlayerData(i, "Name") == "Fjalar and Galar") then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"Fjalar",
			"The wise Thjodrorir has accepted the invitation to feast in our hall... but he has been very wary. Do ye think he suspects something?",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Galar",
				"Aye. Thievery he suspects. His personal guards are on alert should strange movements happen in the night, and they might even go so far as to strike down anyone who acts suspiciously. But Thjodrorir does not even imagine the depth of our betrayal!",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Fjalar",
					"Slaying the wise dwarf and brewing his blood into mead... a mead of wisdom. The alchemical writings are clear: to drink such a mead would make us sages.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Galar",
						"It is already deep into the night, time to strike. Let's be careful with his guards.",
						player,
						{"~!Continue"},
						{function(s)
							if (mapinfo.description == "Fjalar's and Galar's Hall") then
								RemovePlayerObjective(player, "- Defeat your enemies")
							end
							AddPlayerObjective(player, "- Find Thjodrorir and slay him")
						end},
						"dwarf/icons/dwarven_steelclad.png"
					)
					end},
					"dwarf/icons/dwarven_steelclad.png"
				)
				end},
				"dwarf/icons/dwarven_steelclad.png"
			)
			end},
			"dwarf/icons/dwarven_steelclad.png"
		)
		return false
	end
)
--]]

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Fjalar and Galar") and GetFactionExists("Norlund Clan")) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"A few days ago our clan's sage, Thjodrorir, disappeared during the night. Word has now reached our chieftain Modsognir that the dwarves Fjalar and Galar have captured Thjodrorir, for unknown reasons. The chieftain has sent you, Durin, to enter their hall, rescue the sage - or what remains of him - and bring the evil pair to the clan's justice.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Durin",
				"We must wary, for these corridors are filled with the two dwarves' thugs. Let us get this over with as quickly as we can.",
				player,
				{"~!Continue"},
				{function(s)
					if (mapinfo.description == "Fjalar's and Galar's Hall") then
						RemovePlayerObjective(player, "- Defeat your enemies")
					end
					AddPlayerObjective(player, "- Rescue Thjodrorir's remains")
					AddPlayerObjective(player, "- Bring Fjalar and Galar to the clan's justice")
					AddPlayerObjective(player, "- Durin must survive")
				end},
				"dwarf/icons/durin.png"
			)
			end},
			nil,
			nil,
			GrandStrategy
		)
		return false
	end
)

-- Fjalar and Galar found
AddTrigger(
	function()
		if (PlayerHasObjective(GetThisPlayer(), "- Bring Fjalar and Galar to the clan's justice")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("Fjalar and Galar"))
			for unit1 = 1,table.getn(uncount) do 
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad") then
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
		Event(
			"Durin",
			"Fjalar and Galar, I am here on behalf of Modsognir. Where is Thjodrorir?",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Fjalar",
				"He is no more. We brew his blood into mead, to absorb his ancient wisdom and gift with words.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Galar",
					"I feel rather like a sage, myself. We made a cauldron of mead, Odrorir, along with two jars, Bodn and Son. Go away, you can't have our mead!",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Durin",
						"Abominable! How could you, to Thjodrorir... Foolish as you seem, the mead certainly made you none the wiser.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Fjalar",
							"Thjodrorir went down first, but you will be next!",
							player,
							{"~!Continue"},
							{function(s)
							end},
							"dwarf/icons/dwarven_steelclad_brown_hair.png"
						)
						end},
						"dwarf/icons/durin.png"
					)
					end},
					"dwarf/icons/dwarven_steelclad.png"
				)
				end},
				"dwarf/icons/dwarven_steelclad_brown_hair.png"
			)
			end},
			"dwarf/icons/durin.png"
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Bring Fjalar and Galar to the clan's justice") and GetPlayerData(GetFactionPlayer("Fjalar and Galar"), "UnitTypesCount", "unit-dwarven-steelclad") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			"Durin",
			"It is over. I will bring the cauldron and jars to Modsognir, and have them buried in Thjodrorir's grave. It is the best that can be done...",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					if (GrandStrategy == false) then
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Mead of Wisdom") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "The Mead of Wisdom")
						end
						SavePreferences()
					end
					ActionVictory()
				end
			end},
			"dwarf/icons/durin.png"
		)
		return false
	end
)
end

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Durin must survive") and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-durin") < 1 and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-durin-thane") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Durin must survive")
		ActionDefeat()
		return false
	end
)

if (mapinfo.description == "Tomb of Durahn Eikinskjaldi") then
AddTrigger(
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
				RemovePlayerObjective(player, "- Defeat your enemies")
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

AddTrigger(
	function()
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Raiders"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-recruit") then
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
			"Baglur",
			"Gnomish raiders looting the tomb... bad news.",
			player,
			{"~!Continue"},
			{function(s)
			end},
			"dwarf/icons/baglur.png"
		)
		return false
	end
)

AddTrigger(
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
			"Baglur",
			"The ceiling of this antechamber bears a mosaic... depicting a dwarven noble with gold armor and a huge axe.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Durstorn",
				"Fit for a chieftain.",
				player,
				{"~!Continue"},
				{function(s)
				end},
				"dwarf/icons/durstorn.png"
			)
			end},
			"dwarf/icons/baglur.png"
		)
		return false
	end
)

AddTrigger(
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
			"Baglur",
			"The walls here have niches, which must have contained dwarven corpses before the raiders scoured this room for valuable objects.",
			player,
			{"~!Continue"},
			{function(s)
			end},
			"dwarf/icons/baglur.png"
		)
		return false
	end
)

AddTrigger(
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
			"Baglur",
			"The remains of a dwarf... the regalia does not seem Durahn's. This must be Isuldan, his son.",
			player,
			{"~!Continue"},
			{function(s)
			end},
			"dwarf/icons/baglur.png"
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Retrieve Durahn Eikinskjaldi's skull")) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("Raiders"))
			for unit1 = 1,table.getn(uncount) do 
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-recruit" and GetUnitVariable(uncount[unit1], "Level") == 4) then
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
		local gnomish_raider_name = ""
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Raiders"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-recruit" and GetUnitVariable(uncount[unit1], "Level") == 4) then
				gnomish_raider_name = GetUnitVariable(uncount[unit1], "Name")
			end
		end
		Event(
			gnomish_raider_name,
			"Bloody dwarves! We were almost finishing with this tomb... prepare to be gutted.",
			player,
			{"~!Continue"},
			{function(s)
			end},
			"gnome/icons/gnomish_recruit.png"
		)
		return false
	end
)

AddTrigger(
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
			"Baglur",
			"The skeleton of a female dwarf... Durahn's wife Gneissus, I suppose.",
			player,
			{"~!Continue"},
			{function(s)
			end},
			"dwarf/icons/baglur.png"
		)
		return false
	end
)

AddTrigger(
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
			"Durstorn",
			"There's a book on this table... merchant contacts that the raider leader used to sell off the tomb's artifacts are written on it.",
			player,
			{"~!Continue"},
			{function(s)
			end},
			"dwarf/icons/durstorn.png"
		)
		return false
	end
)

AddTrigger(
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
			"Durstorn",
			"There's Durahn's skeleton! Let us bring his skull back to the Eikinskjaldis for a nice reward.",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					if (GrandStrategy == false) then
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Tomb of Durahn Eikinskjaldi") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "The Tomb of Durahn Eikinskjaldi")
						end
						SavePreferences()
					end
					ActionVictory()
				end
			end},
			"dwarf/icons/durstorn.png"
		)
		return false
	end
)
end