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
--      the_mead_of_wisdom.lua
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

if (LoadedGame == false) then
	SetPlayerData(0, "Faction", "Modsogning Clan")

	if (GrandStrategy == false) then
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	elseif (GrandStrategyEventMap) then
		local units_to_be_created = {}
		for i, unitName in ipairs(Units) do
			if (IsOffensiveMilitaryUnit(unitName)) then
				units_to_be_created[string.gsub(unitName, "-", "_")] = 0
				units_to_be_created[string.gsub(unitName, "-", "_")] = math.floor(WorldMapProvinces.Svarinshaug.Units[string.gsub(unitName, "-", "_")] / 2)
				WorldMapProvinces.Svarinshaug.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Svarinshaug.Units[string.gsub(unitName, "-", "_")] - units_to_be_created[string.gsub(unitName, "-", "_")]
			end
		end
		for i, unitName in ipairs(Units) do
			if (IsOffensiveMilitaryUnit(unitName)) then
				if (units_to_be_created[string.gsub(unitName, "-", "_")] > 0) then
					for i=1,(units_to_be_created[string.gsub(unitName, "-", "_")] * BattalionMultiplier) do
						unit = OldCreateUnit(unitName, 0, {Players[0].StartPos.x, Players[0].StartPos.y})
					end
				end
			end
		end
	end
end

-- The Mead of Wisdom initial dialogue
-- based on the Norse myth of the Mead of Poetry
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
		if (GetFactionExists("Fjalar and Galar") and GetFactionExists("Modsogning Clan")) then
			player = GetFactionPlayer("Modsogning Clan")
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
				FindHero("Durin"),
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
				if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") then
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
		local fjalar = nil
		local galar = nil
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Fjalar and Galar"))
		for unit1 = 1,table.getn(uncount) do 
			if ((GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") and GetUnitVariable(uncount[unit1], "Name") == "Fjalar") then
				fjalar = uncount[unit1]
			elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") and GetUnitVariable(uncount[unit1], "Name") == "Galar") then
				galar = uncount[unit1]
			end
		end
	
		Event(
			FindHero("Durin"),
			"Fjalar and Galar, I am here on behalf of Modsognir. Where is Thjodrorir?",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				fjalar,
				"He is no more. We brew his blood into mead, to absorb his ancient wisdom and gift with words.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					galar,
					"I feel rather like a sage, myself. We made a cauldron of mead, Odrorir, along with two jars, Bodn and Son. Go away, you can't drink any!",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						FindHero("Durin"),
						"Abominable! How could you, to Thjodrorir... Foolish as you seem, the mead certainly made you none the wiser.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							fjalar,
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
		if (PlayerHasObjective(GetThisPlayer(), "- Bring Fjalar and Galar to the clan's justice") and GetPlayerData(GetFactionPlayer("Fjalar and Galar"), "UnitTypesCount", "unit-dwarven-steelclad") < 1 and GetPlayerData(GetFactionPlayer("Fjalar and Galar"), "UnitTypesCount", "unit-dwarven-thane") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("Durin"),
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
