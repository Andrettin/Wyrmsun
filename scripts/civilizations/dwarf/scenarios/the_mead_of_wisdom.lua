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
--      (c) Copyright 2015-2016 by Andrettin
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
	SetPlayerData(0, "Faction", "Brising Clan")
	SetPlayerData(2, "Name", "Fjalar and Galar")

	if (GrandStrategy == false) then
		if (GameSettings.Difficulty == 1) then -- if difficulty is easy
			unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		elseif (GameSettings.Difficulty == 2) then -- if difficulty is normal
			unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		elseif (GameSettings.Difficulty == 3) then -- if difficulty is hard
			unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		elseif (GameSettings.Difficulty == 4) then -- if difficulty is brutal
			unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		end
	elseif (GrandStrategyEventMap) then
		CreateProvinceUnits("Svarinshaug", 0, 2, false, true)
		CreateProvinceCustomHero("Svarinshaug", 0)
	end
end

-- The Mead of Wisdom initial dialogue
-- based on the Norse myth of the Mead of Poetry
--[[
AddTrigger("the-mead-of-wisdom-introduction-old",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Fjalar and Galar") and GetFactionExists("Thjodrorir")) then
			for i=0, (PlayerMax - 2) do
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
								RemovePlayerObjective(player, "- Defeat your rivals")
							end
							AddPlayerObjective(player, "- Find Thjodrorir and slay him")
						end},
						"icon-dwarven-steelclad"
					)
					end},
					"icon-dwarven-steelclad"
				)
				end},
				"icon-dwarven-steelclad"
			)
			end},
			"icon-dwarven-steelclad"
		)
		return false
	end
)
--]]

AddTrigger("the-mead-of-wisdom-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Fjalar and Galar") and GetFactionExists("Brising Clan") and PlayerHasObjective(GetThisPlayer(), "- Bring Fjalar and Galar to the clan's justice") == false) then
			player = GetFactionPlayer("Brising Clan")
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
						RemovePlayerObjective(player, "- Defeat your rivals")
					end
					AddPlayerObjective(player, "- Rescue Thjodrorir's remains")
					AddPlayerObjective(player, "- Bring Fjalar and Galar to the clan's justice")
					AddPlayerObjective(player, "- Durin must survive")
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

-- Fjalar and Galar found
AddTrigger("the-mead-of-wisdom-fjalar-and-galar-found",
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
					"I feel rather like a sage, myself. We made a cauldron of mead, Odrorir, along with two jars, Bodn and Son. Go away, ye can't drink any!",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						FindHero("Durin"),
						"Abominable! How could ye, to Thjodrorir... Foolish as ye seem, the mead certainly made ye none the wiser.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							fjalar,
							"Thjodrorir went down first, but ye will be next!",
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
			end}
		)
		return false
	end
)

AddTrigger("the-mead-of-wisdom-victory",
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
			Event(
				"",
				"And thus were Fjalar and Galar defeated that day. Yet, their sons survived. Fearful of the Brisings, they went away with the duo's remaining followers, seeking refuge in the great depths. But that is a story for another time...",
				player,
				{"~!Continue"},
				{function(s)
					if (player == GetThisPlayer()) then
						ActionVictory()
						if (GrandStrategy == false) then
							SetQuestCompleted("the-mead-of-wisdom", GameSettings.Difficulty)
						end
					end
				end}
			)
			end}
		)
		return false
	end
)

AddTrigger("the-mead-of-wisdom-durin-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Durin must survive") and FindHero("Durin", GetThisPlayer()) == nil) then
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
