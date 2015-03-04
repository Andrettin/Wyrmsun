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
-- The Mead of Poetry initial dialogue
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
					"Slaying the wise dwarf and brewing his blood into mead... a mead of poetry. The alchemical writings are clear: to drink such a mead would make us sages.",
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
								RemovePlayerObjective(player, "- Destroy the enemy")
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
			"A few days ago our clan's sage, Thjodrorir, disappeared during the night. Word has now reached our chieftain Modsognir that the dwarves Fjalar and Galar have captured Thjodrorir, slaying him for unknown reasons. The chieftain has sent you, Durin, to enter their hall, returning with the sage's remains to give him a proper burial, and bringing the evil pair to the clan's justice.",
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
						RemovePlayerObjective(player, "- Destroy the enemy")
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
			"Fjalar and Galar, I am here on behalf of Modsognir due to your horrific deed against Thjodrorir. Where is his body?",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Fjalar",
				"We brew his remains into mead, to absorb his ancient wisdom and gift for poetry.",
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
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Mead of Poetry") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "The Mead of Poetry")
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
end

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
				RemovePlayerObjective(player, "- Destroy the enemy")
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
end