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
	SetPlayerData(1, "Faction", "Shinsplitter Clan")
	SetPlayerData(1, "Name", "Bandits")
	SetPlayerData(1, "Resources", "gold", 5000)
	SetPlayerData(1, "Resources", "lumber", 1500)
	SetPlayerData(1, "Resources", "stone", 1000)
	SetPlayerData(1, "Allow", "unit-dwarven-smithy", "F")
	SetPlayerData(1, "Allow", "unit-dwarven-lumber-mill", "F")
	SetPlayerData(1, "Allow", "unit-dwarven-guard-tower", "F")
	SetPlayerData(1, "Allow", "unit-dwarven-stronghold", "F")
	
	if not (GrandStrategy) then
		unit = CreateUnit("unit-hero-modsognir", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-hero-durin", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = CreateUnit("unit-dwarven-steelclad", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
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
				FindHero("Modsognir"),
				"The scoundrels have their base here in the Aurvangar swamplands. We should be crossing our axes with them soon.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					FindUnit("unit-dwarven-miner", GetFactionPlayer("Modsogning Clan")),
					"All of this for a necklace...",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						FindHero("Modsognir"),
						"No, not just a necklace! What honor does our clan have if others can freely steal from us?",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							FindHero("Durin"),
							"I don't much like the idea of a bandit outpost so near to our homes, either.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								FindHero("Modsognir"),
								"Aye. Let's root them out.",
								player,
								{"~!Continue"},
								{function(s)
									AddPlayerObjective(player, "- Defeat the bandits")
									AddPlayerObjective(player, "- Modsognir must survive")
									AddPlayerObjective(player, "- Durin must survive")
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

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Modsognir must survive") and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-modsognir") < 1 and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-modsognir-thane") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Modsognir must survive")
		ActionDefeat()
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
