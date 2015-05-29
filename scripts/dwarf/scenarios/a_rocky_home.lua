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
	SetPlayerData(0, "Resources", "gold", 0)
	SetPlayerData(0, "Resources", "lumber", 0)
	SetPlayerData(0, "Resources", "stone", 0)
	SetPlayerData(0, "Resources", "oil", 0)
	SetPlayerData(0, "RaceName", "dwarf")
	SetPlayerData(0, "Faction", "Modsogning Clan")
	unit = CreateUnit("unit-hero-modsognir", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	unit = CreateUnit("unit-hero-durin", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})

	SetPlayerData(0, "Allow", "unit-dwarven-town-hall", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-barracks", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-mushroom-farm", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-smithy", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-lumber-mill", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-sentry-tower", "F")
	SetPlayerData(0, "Allow", "unit-gold-mine", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-miner", "F")
end

RemovePlayerObjective(GetFactionPlayer("Modsogning Clan"), "- Defeat your enemies")

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Modsogning Clan") and not PlayerHasObjective(GetFactionPlayer("Modsogning Clan"), "- Kill 8 Yales")) then
			player = GetFactionPlayer("Modsogning Clan")
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
			"We have hunted enough yales to last for a while. Ah, nothing like the taste of roasted yale...",
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
