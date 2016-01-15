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
	SetPlayerData(0, "Allow", "upgrade-dwarven-runewriting", "F")
	SetPlayerData(0, "Resources", "gold", 0)
	SetPlayerData(0, "Resources", "lumber", 0)
	SetPlayerData(0, "Resources", "stone", 0)
	SetPlayerData(0, "Resources", "oil", 0)
	SetPlayerData(0, "RaceName", "dwarf")
	SetPlayerData(0, "Faction", "Brising Clan")
	
	if not (GrandStrategy) then
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Character", "Modsognir")
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Character", "Durin")
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	elseif (GrandStrategyEventMap) then
		CreateProvinceUnits("Svarinshaug", 0, 1, false, false)
		CreateProvinceCustomHero("Svarinshaug", 0)
	
		if (FactionHasHero("dwarf", "Brising Clan", "Modsognir")) then
			unit = CreateUnit(GetGrandStrategyHeroUnitType("Modsognir"), 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			SetUnitVariable(unit, "Character", "Modsognir")
		end
		if (FactionHasHero("dwarf", "Brising Clan", "Durin")) then
			unit = CreateUnit(GetGrandStrategyHeroUnitType("Durin"), 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			SetUnitVariable(unit, "Character", "Durin")
		end
		
		unit = OldCreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = OldCreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		unit = OldCreateUnit("unit-dwarven-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	end

	SetPlayerData(0, "Allow", "unit-dwarven-town-hall", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-barracks", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-mushroom-farm", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-smithy", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-lumber-mill", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-sentry-tower", "F")
	SetPlayerData(0, "Allow", "unit-gold-mine", "F")
	SetPlayerData(0, "Allow", "unit-silver-mine", "F")
	SetPlayerData(0, "Allow", "unit-copper-mine", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-miner", "F")
	
	GameTimeOfDay = 2
end

RemovePlayerObjective(GetFactionPlayer("Brising Clan"), "- Defeat your enemies")

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Brising Clan") and not PlayerHasObjective(GetFactionPlayer("Brising Clan"), "- Kill 8 Yales")) then
			player = GetFactionPlayer("Brising Clan")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"After a long time wandering, a clan of dwarves led by Modsognir has arrived in Svarinshaug, seeking a new home...",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("Modsognir"),
				"My clansfolk, if we are to survive, we will need food and materials to build shelters for our people.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					FindHero("Durin"),
					"Aye. There are plenty of yales here, we should hunt some.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						FindHero("Modsognir"), -- should be Thjodrorir
						"By nightfall the blood bats - or worse - will come out into the open, we need to be ready before then.",
						player,
						{"~!Continue"},
						{function(s)
							AddPlayerObjective(player, "- Kill 8 Yales")
							AddPlayerObjective(player, "- Gather 400 lumber and 200 stone")
							AddPlayerObjective(player, "- Modsognir must survive")
							AddPlayerObjective(player, "- Durin must survive")
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

-- Durin: Thjodrorir, when I was young ye were already old. Ye, wisest of our clan... what does the future have in store for us?
-- Thjodrorir: Aye, much do I know, but in this case little can I tell. 

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Kill 8 Yales") and GetPlayerData(15, "UnitTypesCount", "unit-yale") <= 4) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			FindHero("Durin"),
			"We have hunted enough of them to last for a while. Ah, nothing like the taste of roasted yale...",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer() and GetPlayerData(GetThisPlayer(), "Resources", "lumber") >= 400 and GetPlayerData(GetThisPlayer(), "Resources", "stone") >= 200) then
					if (GrandStrategy == false) then
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Rocky Home") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "A Rocky Home")
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

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Gather 400 lumber and 200 stone") and GetPlayerData(GetThisPlayer(), "Resources", "lumber") >= 400 and GetPlayerData(GetThisPlayer(), "Resources", "stone") >= 200) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		local modsognir_text = "The materials we need have been collected."
		if (GetPlayerData(15, "UnitTypesCount", "unit-yale") <= 4) then
			modsognir_text = "The materials we need have been collected. It is time to build our new homes by these rocks!"
		end
		Event(
			FindHero("Modsognir"), -- should be Thjodrorir?
			modsognir_text,
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer() and GetPlayerData(15, "UnitTypesCount", "unit-yale") <= 4) then
					if (GrandStrategy == false) then
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Rocky Home") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "A Rocky Home")
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

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Modsognir must survive") and FindHero("Modsognir", GetThisPlayer()) == nil) then
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

-- it is always day during this scenario
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GameTimeOfDay >= 4) then
			return true
		end
		return false
	end,
	function()
		GameTimeOfDay = 2
		return true
	end
)
