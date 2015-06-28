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
	SetPlayerData(0, "Resources", "gold", 5000)
	SetPlayerData(0, "Resources", "lumber", 1500)
	SetPlayerData(0, "Resources", "stone", 1000)
	SetPlayerData(1, "Faction", "Shorbear Clan")
	SetPlayerData(1, "Name", "Bandits")
	SetPlayerData(1, "Resources", "gold", 5000)
	SetPlayerData(1, "Resources", "lumber", 1500)
	SetPlayerData(1, "Resources", "stone", 1000)
	
	if not (GrandStrategy) then
		unit = CreateUnit("unit-hero-modsognir", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-hero-durin", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	elseif (GrandStrategyEventMap) then
		local units_to_be_created = {}
		for i, unitName in ipairs(Units) do
			if (IsOffensiveMilitaryUnit(unitName)) then
				units_to_be_created[string.gsub(unitName, "-", "_")] = 0
				units_to_be_created[string.gsub(unitName, "-", "_")] = math.floor(WorldMapProvinces.Svarinshaug.Units[string.gsub(unitName, "-", "_")])
				WorldMapProvinces.Svarinshaug.Units[string.gsub(unitName, "-", "_")] = WorldMapProvinces.Svarinshaug.Units[string.gsub(unitName, "-", "_")] - units_to_be_created[string.gsub(unitName, "-", "_")]
			elseif (IsHero(unitName) and WorldMapProvinces.Svarinshaug.Heroes[string.gsub(unitName, "-", "_")] == 2) then
				unit = OldCreateUnit(unitName, 0, {Players[0].StartPos.x, Players[0].StartPos.y})
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

RemovePlayerObjective(GetFactionPlayer("Modsogning Clan"), "- Defeat your enemies")

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Modsogning Clan") and not PlayerHasObjective(GetFactionPlayer("Modsogning Clan"), "- Defeat the bandits")) then
			player = GetFactionPlayer("Modsogning Clan")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"The necklace made for Modsognir's wife by the Brisings - a group of four dwarven smiths - has been stolen! The culprits, a band of local dwarven thieves, sneaked away with the necklace last night, going back to their hideout. We must avenge this dishonor to our clan, and recover the necklace from these bandits!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"Here we are... the place where our scouts said they had found the high-grade gold.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"",
					"Excellent. We have to be careful because of the dangerous beasts, but soon enough we should have the ores for Modsognir's artifacts. Let us be quick, we don't want to show the results of our craftsmanship to Modsognir much after the sons of Ivaldi... he might not be as pleased, and then we will lose our bet.",
					player,
					{"~!Continue"},
					{function(s)
						AddPlayerObjective(player, "- Collect 8000 gold")
						AddPlayerObjective(player, "- Brokk must survive")
						AddPlayerObjective(player, "- Eitri must survive")
					end}
				)
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

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Collect 8000 gold") and GetPlayerData(GetThisPlayer(), "Resources", "gold") >= 8000) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		local brokk = nil
		local eitri = nil
		local uncount = GetUnits(GetFactionPlayer("Modsogning Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if ((GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") and GetUnitVariable(uncount[unit1], "Name") == "Brokk") then
				brokk = uncount[unit1]
			elseif ((GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") and GetUnitVariable(uncount[unit1], "Name") == "Eitri") then
				eitri = uncount[unit1]
			end
		end
		
		Event(
			eitri,
			"We have gotten all the gold we need. To the forge!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"After arduous hours of work, the labor of Brokk and Eitri finally came to fruition. They had crafted two wondrous artifacts for Modsognir.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"",
					"On the following day, the pair arrived at Modsognir's hall. The sons of Ivaldi were already there. They too bore two gifts for the dwarven chieftain: a magnificent throwing spear, Gungnir, and a sleek ship, Skidbladnir. These were found excellent by Modsognir.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"",
						"The time came for Brokk and Eitri to put their artifacts forward. They lay before their chief a solid gold arm-ring, Draupnir, and a mighty hammer, Mjollnir. Modsognir announced his decision.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"",
							"Gungnir was strong, but Mjollnir even more. Glancing at Skidbladnir, Modsognir's judgment was that the dwarves' destinity was not on the waters, but deep within the land, surrounded by veins and artifacts of gold. And thus Brokk and Eitri won the competition, receiving a hefty sum as their prize.",
							player,
							{"~!Continue"},
							{function(s)
								if (GrandStrategy == false) then
									if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Treasures of Svarinshaug") == false) then
										table.insert(wyr.preferences.QuestsCompleted, "The Treasures of Svarinshaug")
									end
									SavePreferences()
								end
								ActionVictory()
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
