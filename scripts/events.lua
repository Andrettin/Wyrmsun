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
--      events.lua - Define the menu for options.
--
--      (c) Copyright 2014 by Andre Novellino Gouvêa
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

function EventTriggers()
	-- Charge Rugnur with the Outpost?
	-- based on elements from the A Bargain is Struck scenario of the Sceptre of Fire campaign from Battle for Wesnoth
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			if ((SyncRand(100) + 1) <= 1 and GetNumUnitsAt(-1, "unit-rugnur", {0, 0}, {256, 256}) < 1) then
				for i=0,14 do
					if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "Resources", "gold") >= 1000 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 2 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-barracks") >= 1) then
						player = i
						return true
					end
				end
			end
			return false
		end,
		function() 
			function EventOption1Effects()
				unit = CreateUnit("unit-rugnur", player, {Players[player].StartPos.x, Players[player].StartPos.y})
--				IncreaseUnitLevel(unit, 1)
				SetPlayerData(player, "Resources", "gold", GetPlayerData(player, "Resources", "gold") - 1000)
			end
			function EventOption2Effects()
			end
			Event(
				"Charge Rugnur with the Outpost?",
				"A young dwarf by the name of Rugnur seems to be an adequate choice for being in charge of our new border outpost. Do you wish to hire him for the job?",
				player,
				2,
				"Yes (costs 1000 gold)",
				"No"
			)
			return false
		end
	)

	-- The Retired Warrior
	-- based on elements from the Closing the Gates scenario of the Sceptre of Fire campaign from Battle for Wesnoth
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			if ((SyncRand(100) + 1) <= 1 and GetNumUnitsAt(-1, "unit-baglur", {0, 0}, {256, 256}) < 1) then
				for i=0,14 do
					-- could require the player having towers, when those are included in the game
					if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "TotalKills") >= 25 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-barracks") >= 1) then
						player = i
						return true
					end
				end
			end
			return false
		end,
		function() 
			function EventOption1Effects()
				unit = CreateUnit("unit-baglur", player, {Players[player].StartPos.x, Players[player].StartPos.y})
			end
			Event(
				"The Retired Warrior",
				"A veteran soldier called Baglur has decided to forsake his retirement and help us in our struggles. He is an expert in defensive combat.",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- The Surghan Mercenaries
	-- based on elements from the The Dragon scenario of the Sceptre of Fire campaign from Battle for Wesnoth
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			-- only appears if there is a dwarven settlement in existence
			if ((SyncRand(100) + 1) <= 1 and GetNumUnitsAt(-1, "unit-dwarven-town-hall", {0, 0}, {256, 256}) >= 1) then
				for i=0,14 do
					-- could require a dwarven stronghold or citadel when those buildings are included, so that the mercenaries only offer themselves to those who are well-established; triggers only if a player has seen enough battle (and thus has need of mercenaries) - in game terms, that means having 10 or more kills
					if (GetPlayerData(i, "RaceName") == "dwarf" and GetPlayerData(i, "Resources", "gold") >= 4800 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-barracks") >= 1 and GetPlayerData(i, "TotalKills") >= 10) then
						player = i
						return true
					end
				end
			end
			return false
		end,
		function() 
			function EventOption1Effects()
				unit = CreateUnit("unit-dwarven-axefighter", player, {Players[player].StartPos.x, Players[player].StartPos.y})
				unit = CreateUnit("unit-dwarven-axefighter", player, {Players[player].StartPos.x, Players[player].StartPos.y})
				unit = CreateUnit("unit-dwarven-axefighter", player, {Players[player].StartPos.x, Players[player].StartPos.y})
				unit = CreateUnit("unit-dwarven-steelclad", player, {Players[player].StartPos.x, Players[player].StartPos.y})
--				IncreaseUnitLevel(unit, 1)
				unit = CreateUnit("unit-dwarven-steelclad", player, {Players[player].StartPos.x, Players[player].StartPos.y})
--				IncreaseUnitLevel(unit, 1)
				unit = CreateUnit("unit-dwarven-steelclad", player, {Players[player].StartPos.x, Players[player].StartPos.y})
--				IncreaseUnitLevel(unit, 1)
				unit = CreateUnit("unit-dwarven-scout", player, {Players[player].StartPos.x, Players[player].StartPos.y})
				unit = CreateUnit("unit-dwarven-scout", player, {Players[player].StartPos.x, Players[player].StartPos.y})
				SetPlayerData(player, "Resources", "gold", GetPlayerData(player, "Resources", "gold") - 4800)
			end
			function EventOption2Effects()
			end
			Event(
				"The Surghan Mercenaries",
				"A group of hardened dwarven mercenaries are offering themselves for hire to us. Will you accept?",
				player,
				2,
				"Yes (costs 4800 gold)",
				"No"
			)
			return false
		end
	)

	-- Greebo's Shinies
	-- based on elements from the Descending into Darkness scenario of the Under the Burning Suns campaign from Battle for Wesnoth
	-- only appears in terrains which exist in Nidavellir (substitute for checking if there is a goblin faction, as a goblin civilization hasn't yet been implemented)
	-- Greebo inhabits a cave, so he can only appear in the map if there is a sufficient number of rocks in it
	if (wyrmsun.tileset == "swamp" and GetRawTileTypeCount("Rock") >= 1024) then
		AddTrigger(
			function()
				if (GameCycle == 0) then
					return false
				end
				-- requires the existence of a sufficient number of farms which would be the origin of Greebo's loot
				if ((SyncRand(100) + 1) <= 1 and GetNumUnitsAt(-1, "unit-dwarven-mushroom-farm", {0, 0}, {256, 256}) >= 10) then
					player = GetThisPlayer()
					return true
				end
				return false
			end,
			function() 
				function EventOption1Effects()
					local greebo_player = FindUnusedPlayerSlot()
					Players[greebo_player].Type = PlayerComputer
					local greebo_spawnpoint = FindAppropriateTileTypeSpawnPoint("Rock")
					unit = CreateUnit("unit-goblin-banner", greebo_player, greebo_spawnpoint)
					unit = CreateUnit("unit-greebo", greebo_player, greebo_spawnpoint)
	--				IncreaseUnitLevel(unit, 1)
					SetAiType(greebo_player, "passive")
					for i=0,14 do
						if (i ~= greebo_player) then
							SetDiplomacy(greebo_player, "enemy", i)
							SetDiplomacy(i, "enemy", greebo_player)
							table.insert(Objectives[i], "- Kill Greebo (optional)")
						end
					end
					SetPlayerData(greebo_player, "Name", "Greebo")
				end
				Event(
					"Greebo's Shinies",
					"A goblin has been seen hoarding stolen loot some distance from here. Clearing this threat would have the added benefit of giving us the opportunity to add his gold to our coffers.",
					player,
					1,
					"OK",
					"",
					CGraphic:New("ui/goblin_swordsman.png")
				)
				return false
			end
		)

		-- Greebo's End
		-- based on elements from the Descending into Darkness scenario of the Under the Burning Suns campaign from Battle for Wesnoth
		AddTrigger(
			function()
				if (GameCycle == 0) then
					return false
				end
				for i=0,14 do
					if (GetPlayerData(i, "Name") == "Greebo" and GetPlayerData(i, "UnitTypesCount", "unit-greebo") == 0) then
						player = GetThisPlayer()
						return true
					end
				end
				return false
			end,
			function() 
				function EventOption1Effects()
					SetPlayerData(player, "Resources", "gold", GetPlayerData(player, "Resources", "gold") + 400)
					for i=0,14 do
						if (GetPlayerData(i, "Name") ~= "Greebo") then
							table.foreachi(Objectives[i], function(k,v)
								if (v == "- Kill Greebo (optional)") then
									local greebos_shinies_quest_number = k
								end
							end)
							table.remove(Objectives[i], greebos_shinies_quest_number)
						end
					end
				end
				Event(
					"Greebo's End",
					"The goblin looter is dead. We have acquired his stolen gold, although he didn't have much with him. Must be hard times.",
					player,
					1,
					"OK (receive 400 gold)"
				)
				return false
			end
		)
	end

	-- Andvari's Gold
	-- based on Norse mythology
	-- Andvari lives near a waterfall, so he can only appear in the map if there is a sufficient number of water in it
	if (GetRawTileTypeCount("Water") >= 1024) then
		AddTrigger(
			function()
				if (GameCycle == 0) then
					return false
				end
				-- only appears if there is a dwarven settlement in existence; it also requires a number of dwarven farms, so that there is enough population to make Andvari's move to the wilderness (perhaps out of crowdedness) seem more plausible
				-- requires 6 gold mines for the reason that the area should have a particularly high quantity of gold available for Andvari to be able to make his hoard
				if ((SyncRand(100) + 1) <= 1 and GetNumUnitsAt(-1, "unit-dwarven-town-hall", {0, 0}, {256, 256}) >= 1 and GetNumUnitsAt(-1, "unit-dwarven-mushroom-farm", {0, 0}, {256, 256}) >= 16 and GetNumUnitsAt(-1, "unit-dwarven-town-hall", {0, 0}, {256, 256}) >= 6) then
					player = GetThisPlayer()
					return true
				end
				return false
			end,
			function() 
				function EventOption1Effects()
					local andvari_player = FindUnusedPlayerSlot()
					Players[andvari_player].Type = PlayerComputer
					local spawn_point = FindAppropriateTileTypeSpawnPoint("Water")
					unit = CreateUnit("unit-dwarven-mushroom-farm", andvari_player, spawn_point)
					unit = CreateUnit("unit-dwarven-axefighter", andvari_player, spawn_point)
					SetAiType(andvari_player, "passive")
					SetDiplomacy(andvari_player, "neutral", player)
					SetDiplomacy(player, "neutral", andvari_player)
					for i=0,14 do
						if (i ~= andvari_player and i ~= player) then
							if ((SyncRand(100) + 1) <= 50) then -- AI players randomly decide whether to be hostile to Andvari or not
								SetDiplomacy(andvari_player, "neutral", i)
								SetDiplomacy(i, "neutral", andvari_player)
							else
								SetDiplomacy(andvari_player, "enemy", i)
								SetDiplomacy(i, "enemy", andvari_player)
							end
						end
					end
					SetPlayerData(andvari_player, "Name", "Andvari")
				end
				function EventOption2Effects()
					local andvari_player = FindUnusedPlayerSlot()
					Players[andvari_player].Type = PlayerComputer
					local spawn_point = FindAppropriateTileTypeSpawnPoint("Water")
					unit = CreateUnit("unit-dwarven-mushroom-farm", andvari_player, spawn_point)
					unit = CreateUnit("unit-dwarven-axefighter", andvari_player, spawn_point)
					SetAiType(andvari_player, "passive")
					SetDiplomacy(andvari_player, "enemy", player)
					SetDiplomacy(player, "enemy", andvari_player)
					for i=0,14 do
						if (i ~= andvari_player and i ~= player) then
							if ((SyncRand(100) + 1) <= 50) then -- AI players randomly decide whether to be hostile to Andvari or not
								SetDiplomacy(andvari_player, "neutral", i)
								SetDiplomacy(i, "neutral", andvari_player)
							else
								SetDiplomacy(andvari_player, "enemy", i)
								SetDiplomacy(i, "enemy", andvari_player)
								table.insert(Objectives[i], "- Destroy Andvari's Mushroom Farm (optional)")
							end
						end
					end
					SetPlayerData(andvari_player, "Name", "Andvari")
					table.insert(Objectives[player], "- Destroy Andvari's Mushroom Farm (optional)")
				end
				Event(
					"Andvari's Gold",
					"The dwarf Andvari, the son of Oin, has built a house for himself in the wilderness, where he lives in isolation. Lately we have discovered that he hides quite a bit of gold there... Some people are suggesting a raid against his home to add his gold to our treasury. Shall we extract a contribution from Andvari?",
					player,
					2,
					"Leave him be.",
					"Let's get the gold."
				)
				return false
			end
		)

		-- Andvari's Gold is Ours!
		AddTrigger(
			function()
				if (GameCycle == 0) then
					return false
				end
				for i=0,14 do
					if (GetPlayerData(i, "Name") == "Andvari" and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-mushroom-farm") == 0 and ThisPlayer:IsEnemy(Players[i])) then
						player = GetThisPlayer()
						return true
					end
				end
				return false
			end,
			function() 
				function EventOption1Effects()
					SetPlayerData(player, "Resources", "gold", GetPlayerData(player, "Resources", "gold") + 1200)
					for i=0,14 do
						if (GetPlayerData(i, "Name") ~= "Andvari") then
							table.foreachi(Objectives[i], function(k,v)
								if (v == "- Destroy Andvari's Mushroom Farm (optional)") then
									local andvaris_gold_quest_number = k
									table.remove(Objectives[i], andvaris_gold_quest_number)
								end
							end)
						end
					end
				end
				Event(
					"Andvari's Gold is Ours!",
					"We have successfully raided Andvari's house and obtained his gold. We even found a ring which seems particularly valuable. Andvari spoke a curse upon us for getting the ring... Ramblings of an impoverished dwarf.",
					player,
					1,
					"OK (receive 1200 gold)"
				)
				return false
			end
		)
	end
	
	-- Strike a Bargain?
	-- based on the A Bargain is Struck scenario of the Sceptre of Fire campaign from Battle for Wesnoth
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			if ((SyncRand(100) + 1) <= 10) then
				for i=0,14 do
					if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "UnitTypesCount", "unit-rugnur") == 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1 and GetCivilizationExists("gnome") and GetNumRivals(i) >= 2) then
						player = i

						local loop = true
						local loop_count = 0
						while (loop) do
							bandit_player = SyncRand(GetNumPlayers())
							if (bandit_player ~= player and GetPlayerData(bandit_player, "Name") ~= "Shorbear Clan" and GetPlayerData(bandit_player, "RaceName") == "dwarf") then
								loop = false
							end
							loop_count = loop_count + 1

							if (loop_count > 100) then
								return false
							end
						end

						return true
					end
				end
			end
			return false
		end,
		function() 
			function EventOption1Effects()
				local gnomish_monarch_player = GetCivilizationPlayer("gnome")
				unit = CreateUnit("unit-gnomish-recruit", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y}) -- gnomish envoy who holds the ruby
--				IncreaseUnitLevel(unit, 1)
				unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
				unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
				unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
				unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
				if (mapinfo.description == "Chaincolt Foothills") then
					ChangeUnitsOwner({6, 65}, {6 + 1, 65 + 1}, gnomish_monarch_player, 0)
				end
				SetDiplomacy(gnomish_monarch_player, "allied", player)
				SetSharedVision(gnomish_monarch_player, true, player)
				SetDiplomacy(player, "allied", gnomish_monarch_player)
				SetSharedVision(player, true, gnomish_monarch_player)
				for i=0,14 do
					if (i ~= gnomish_monarch_player and i ~= player) then
				  		SetDiplomacy(gnomish_monarch_player, "neutral", i)
				  		SetDiplomacy(i, "neutral", gnomish_monarch_player)
			  		end
			  	end
				table.insert(Objectives[player], a_bargain_is_struck_objective_1)

				-- create bandits
				local bandit_x = (Players[gnomish_monarch_player].StartPos.x + Players[player].StartPos.x) / 2
				local bandit_y = (Players[gnomish_monarch_player].StartPos.y + Players[player].StartPos.y) / 2
		  		SetDiplomacy(bandit_player, "enemy", gnomish_monarch_player)
		  		SetDiplomacy(bandit_player, "enemy", player)
		  		SetDiplomacy(gnomish_monarch_player, "enemy", bandit_player)
		  		SetDiplomacy(player, "enemy", bandit_player)

				local second_bandit_player = FindUnusedPlayerSlot()
				Players[second_bandit_player].Type = PlayerComputer
				unit = CreateUnit("unit-dwarven-axefighter", second_bandit_player, {bandit_x, bandit_y})
				unit = CreateUnit("unit-dwarven-axefighter", second_bandit_player, {bandit_x, bandit_y})
				unit = CreateUnit("unit-dwarven-axefighter", second_bandit_player, {bandit_x, bandit_y})

				unit = CreateUnit("unit-dwarven-axefighter", second_bandit_player, {(Players[bandit_player].StartPos.x + Players[player].StartPos.x) / 2, (Players[bandit_player].StartPos.y + Players[player].StartPos.y) / 2})

				SetPlayerData(second_bandit_player, "Name", "Raiders")

		  		SetDiplomacy(second_bandit_player, "neutral", gnomish_monarch_player)
		  		SetDiplomacy(gnomish_monarch_player, "neutral", second_bandit_player)
		  		SetDiplomacy(second_bandit_player, "enemy", player)
		  		SetDiplomacy(player, "enemy", second_bandit_player)
		  		SetDiplomacy(bandit_player, "allied", second_bandit_player)
		  		SetDiplomacy(second_bandit_player, "allied", bandit_player)
			end
			function EventOption2Effects()
				local gnomish_monarch_player = GetCivilizationPlayer("gnome")
				for i=0,14 do
					if (i ~= gnomish_monarch_player) then
				  		SetDiplomacy(gnomish_monarch_player, "neutral", i)
				  		SetDiplomacy(i, "neutral", gnomish_monarch_player)
			  		end
			  	end
			end
			local gnomish_monarch_player = GetCivilizationPlayer("gnome")
			local gnomish_monarch_name = GetRandomCharacterName("gnome", "male", true)
			wyr.preferences.TheScepterOfFireMonarch = gnomish_monarch_name
			wyr.preferences.TheScepterOfFireRaiderFaction = GetPlayerData(bandit_player, "Name")
			SavePreferences()
			Event(
				"Strike a Bargain?",
--				"A gnomish monarch has come to an outpost of ours offering to make a bargain with us: he asks that we craft a scepter encrusted with the radiant Ruby of Fire for him. In return, he would give us 10,000 pieces of silver for the job, with half of that being sent in advance. An envoy holding the Ruby would be sent as well.\n\nWe must be wary if we accept, though, as the " .. GetPlayerData(bandit_player, "Name") .. " is likely to try to raid the silver convoy...\n\nNote: Completing this quest will unlock the Chaincolt Caverns map - when it is included in a coming version of Wyrmsun.",
				"The gnomish monarch of " .. GetPlayerData(gnomish_monarch_player, "Name") .. ", " .. gnomish_monarch_name .. ", has come to an outpost of ours offering to make a bargain with us: " .. GetCharacterNamePersonalPronoun(gnomish_monarch_name, "subject", false) .. " asks that we craft a scepter encrusted with the radiant Ruby of Fire for " .. GetCharacterNamePersonalPronoun(gnomish_monarch_name, "object", false) .. ". In return, " .. GetCharacterNamePersonalPronoun(gnomish_monarch_name, "subject", false) .. " would give us 10,000 pieces of silver for the job, with half of that being sent in advance. An envoy holding the Ruby would be sent as well.\n\nWe must be wary if we accept, though, as the " .. GetPlayerData(bandit_player, "Name") .. " is likely to try to raid the silver convoy...",
				player,
				2,
				"We'll accept the offer.",
				"No deal."
			)
			return false
		end
	)

	-- The Last Caravan has Arrived!
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and GetPlayerData(i, "UnitTypesCount", "unit-rugnur") == 1 and IfNearUnit(i, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-town-hall") and IfNearUnit(i, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-town-hall") and IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-caravan") and IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-recruit")) then
					player = i
					return true
				end
			end
			return false
		end,
		function() 
			function EventOption1Effects()
				table.foreachi(Objectives[player], function(k,v)
					if (v == a_bargain_is_struck_objective_1) then
						local a_bargain_is_struck_quest_number = k
					end
				end)
				table.remove(Objectives[player], a_bargain_is_struck_quest_number)
			  	if (player == GetThisPlayer()) then
					if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == false) then
						table.insert(wyr.preferences.QuestsCompleted, "A Bargain is Struck")
					end
					SavePreferences()
					if (mapinfo.description == "Chaincolt Foothills") then
						ActionVictory()
					end
			  	end
			end
			local note = ""
			if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == false) then
--				note = "\n\nNote: You have gained 5 dwarven technology points, which can be used for acquiring new units, buildings and upgrades. Furthermore, when the Caverns of Chaincolt map is included in a coming version of the game, it will be already be unlocked for you to play."
				note = "\n\nNote: You have gained 5 dwarven technology points. Furthermore, when the Caverns of Chaincolt map is included in a coming version of the game, it will be already be unlocked for you to play."
			end
			Event(
				"The Last Caravan has Arrived!",
				"The last of the gnomish caravans has arrived in our settlement, and so did the gnomish envoy holding the ruby. We must now retreat to a more defensible position, for more raiders are sure to come..." .. note .. "",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- The Bargain has Failed
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			for i=0,14 do
				if (i == GetThisPlayer() and GetArrayIncludes(Objectives[i], a_bargain_is_struck_objective_1) and (GetPlayerData(i, "UnitTypesCount", "unit-rugnur") < 1 or GetPlayerData(i, "UnitTypesCount", "unit-gnomish-recruit") < 1 or GetPlayerData(i, "UnitTypesCount", "unit-gnomish-caravan") < 4)) then
					player = i
					return true
				end
			end
			return false
		end,
		function() 
			function EventOption1Effects()
				table.foreachi(Objectives[player], function(k,v)
					if (v == a_bargain_is_struck_objective_1) then
						local a_bargain_is_struck_quest_number = k
					end
				end)
				table.remove(Objectives[player], a_bargain_is_struck_quest_number)
			end
			Event(
				"The Bargain has Failed",
				"We have failed in our quest to craft the scepter for the gnomish monarch, and he has called off the deal.",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- The Founding of Knalga
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			if ((SyncRand(100) + 1) <= 1) then
				for i=0,14 do
					if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan") and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 5 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-mushroom-farm") >= 20) then
						player = i
						return true
					end
				end
			end
			return false
		end,
		function() 
			function EventOption1Effects()
				SetPlayerData(player, "Name", "Knalga")
			end
			Event(
				"The Founding of Knalga",
				"Our clan has expanded through a large territory, and our people have become more and more settled down. Now it is high time for us to to found a realm, the lordship of Knalga!",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- The Founding of Kal Kartha
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			if ((SyncRand(100) + 1) <= 1) then
				for i=0,14 do
					if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Shorbear Clan") and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 5 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-mushroom-farm") >= 20) then
						player = i
						return true
					end
				end
			end
			return false
		end,
		function() 
			function EventOption1Effects()
				SetPlayerData(player, "Name", "Kal Kartha")
			end
			Event(
				"The Founding of Kal Kartha",
				"Our clan has expanded through a large territory, and our people have become more and more settled down. Now it is high time for us to to found a realm, the lordship of Kal Kartha!",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- The Hall of Sigtun
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			return false
		end,
		function() 
			function EventOption1Effects()
			end
			Event(
				"The Hall of Sigtun",
				"Our people have wandered for long... they desire a permanent home. We should build a town hall and establish a permanent settlement.",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- The Hall of Sigtun has been Built
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			return false
		end,
		function() 
			function EventOption1Effects()
			end
			Event(
				"The Hall of Sigtun has been Built",
				"Our town hall has been built, paving the way for the creation of our first permanent settlement.",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- Fredfrode's Feast
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			return false
		end,
		function() 
			function EventOption1Effects()
			end
			Event(
				"Fredfrode's Feast",
				"The Danish ruler of Leidre, Fredfrode, has invited us to attend to a great feast in his domains. To do so, we must travel and reach his town hall.",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- Drowned in Mead
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			return false
		end,
		function() 
			function EventOption1Effects()
			end
			Event(
				"Drowned in Mead",
				"We arrived at Fredfrode's domains, however... during the evening, our chieftain Fjolne went out to the gallery and, upon finding a large vessel full of mead, sought to drink the stuff. He slipped his foot and fell into the vessel, drowning in mead and leaving Sweden to be ruled by his son, Swegde.",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- The King's Sparrow
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			return false
		end,
		function() 
			function EventOption1Effects()
			end
			Event(
				"The King's Sparrow",
				"Our king Dag, from the line of Swegde, has sent his trained sparrow to the land of the Goths, but the bird has failed to return... Upon inquiring about it, the king has learned that the bird had been killed at a farm called Varva, by a peasant who was angry that the bird was eating his grain. The king, furious at the loss of his sparrow, has given order for an army to be sent to the land of the Goths and plunder the farm.",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- Varva Burns
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			return false
		end,
		function() 
			function EventOption1Effects()
			end
			Event(
				"Varva Burns",
				"We have fulfilled the king's wishes and burnt down the farm of Varva... Unfortunately, the king Dag himself has died at the raid, killed by a serf. His son Agne will now be our king and lord.",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- Marauding Finland
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			return false
		end,
		function() 
			function EventOption1Effects()
			end
			Event(
				"Marauding Finland",
				"Our king Agne desires to gather an army and sail forth to Finland to raid it. We have been told that a local chieftain called Froste is gathering the Finns to resist our attempt upon them. Let's get their riches!",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- Finland is Plundered
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			return false
		end,
		function() 
			function EventOption1Effects()
			end
			Event(
				"Finland is Plundered",
				"We have raided Finland, and it is now time to get the riches which we have found back to Sweden. The king has gotten for himself a golden necklace which he keeps on him at all times. He's also taking Skjalv - Froste's daughter - back to Sweden, and has decided to marry the lady. Bring our forces back to one of our sentry towers.",
				player,
				1,
				"OK"
			)
			return false
		end
	)

	-- The Golden Hanging
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			return false
		end,
		function() 
			function EventOption1Effects()
				if (mapinfo.description == "Finland") then
					ActionVictory()
				end
			end
			Event(
				"The Golden Hanging",
				"Our king has been found hanged by the very golden necklace which he had plundered from the Finns! Skjalv has been seen along with other captive Finns, taking to ships to return to her homeland...",
				player,
				1,
				"OK"
			)
			return false
		end
	)
end

function Event(event_name, event_description, player, option_number, option_1_name, option_2_name, event_image)
	if (GetThisPlayer() == player) then
		SetGamePaused(true)
		local menu = WarGameMenu(panel(5))
		menu:resize(352, 352)

		menu:addLabel(event_name, 176, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(324, 208)
		l:setLineWidth(324)
		menu:add(l, 14, 40)
		l:setCaption(event_description)

		if (event_image ~= nil) then
			event_image:Load()
			local b = ImageWidget(event_image)
			menu:add(b, 0, 0)
		end

		if (option_number >= 1) then
			menu:addFullButton(option_1_name, "", 176 - (224 / 2), 352 - 40 * option_number,
				function()
					EventOption1Effects()
					SetGamePaused(false)
					menu:stop()
				end)
		end

		if (option_number >= 2) then
			menu:addFullButton(option_2_name, "", 176 - (224 / 2), 352 - 40 * (option_number - 1),
				function()
					EventOption2Effects()
					SetGamePaused(false)
					menu:stop()
				end)
		end

		menu:run(false)
	else -- AIs choose the first option automatically
		EventOption1Effects()
	end
end
