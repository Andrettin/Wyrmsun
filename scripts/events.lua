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
--      events.lua - Defines events.
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

	Load("scripts/dwarf/events.lua")

	if (GameSettings.Opponents <= 0 and GameSettings.GameType == -1 and GameSettings.NumUnits <= 0 and GameSettings.Resources <= 0 and (GrandStrategy == false or GrandStrategyEventMap)) then
		Load("scripts/dwarf/scepter_of_fire_events.lua")
		Load("scripts/gnome/events.lua")
	end

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
					if (GetPlayerData(i, "RaceName") == "dwarf" and GetPlayerData(i, "Resources", "gold") >= 4800 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-steelclad") >= 4) then
						player = i
						return true
					end
				end
			end
			return false
		end,
		function() 
			Event(
				"The Surghan Mercenaries",
				"A group of hardened dwarven mercenaries are offering themselves for hire to us. Will you accept?",
				player,
				{"~!Yes (costs 4800 gold)", "~!No"},
				{function(s)
					unit = CreateUnit("unit-dwarven-axefighter", player, {Players[player].StartPos.x, Players[player].StartPos.y})
					unit = CreateUnit("unit-dwarven-axefighter", player, {Players[player].StartPos.x, Players[player].StartPos.y})
					unit = CreateUnit("unit-dwarven-axefighter", player, {Players[player].StartPos.x, Players[player].StartPos.y})
					unit = CreateUnit("unit-dwarven-steelclad", player, {Players[player].StartPos.x, Players[player].StartPos.y})
					unit = CreateUnit("unit-dwarven-steelclad", player, {Players[player].StartPos.x, Players[player].StartPos.y})
					unit = CreateUnit("unit-dwarven-steelclad", player, {Players[player].StartPos.x, Players[player].StartPos.y})
					unit = CreateUnit("unit-dwarven-scout", player, {Players[player].StartPos.x, Players[player].StartPos.y})
					unit = CreateUnit("unit-dwarven-scout", player, {Players[player].StartPos.x, Players[player].StartPos.y})
					SetPlayerData(player, "Resources", "gold", GetPlayerData(player, "Resources", "gold") - 4800)
				end,
				function(s)
				end}
			)
			return false
		end
	)

	-- Greebo's Shinies
	-- based on elements from the Descending into Darkness scenario of the Under the Burning Suns campaign from Battle for Wesnoth
	-- only appears in terrains which exist in Nidavellir (substitute for checking if there is a goblin faction, as a goblin civilization hasn't yet been implemented)
	-- Greebo inhabits a cave, so he can only appear in the map if there is a sufficient number of rocks in it
	if (wyrmsun.tileset == "swamp" and GetTileTerrainFlagCount("rock") >= 1024) then
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
				Event(
					"Greebo's Shinies",
					"A goblin has been seen hoarding stolen loot some distance from here. Clearing this threat would have the added benefit of giving us the opportunity to add his gold to our coffers.",
					player,
					{"~!OK"},
					{function(s)
						local greebo_player = FindUnusedPlayerSlot()
						Players[greebo_player].Type = PlayerComputer
						local greebo_spawnpoint = FindAppropriateTileTypeSpawnPoint("Rock")
						unit = CreateUnit("unit-goblin-banner", greebo_player, greebo_spawnpoint)
						unit = CreateUnit("unit-hero-greebo", greebo_player, greebo_spawnpoint)
						SetAiType(greebo_player, "passive")
						for i=0,14 do
							if (i ~= greebo_player) then
								SetDiplomacy(greebo_player, "enemy", i)
								SetDiplomacy(i, "enemy", greebo_player)
								AddPlayerObjective(i, "- Kill Greebo (optional)")
							end
						end
						SetPlayerData(greebo_player, "Name", "Greebo")
					end},
					nil,
					"ui/goblin_swordsman.png"
				)

				-- Greebo's speech
				AddTrigger(
					function()
						if (PlayerHasObjective(GetThisPlayer(), "- Kill Greebo (optional)")) then
							local uncount = 0
							uncount = GetUnits(GetFactionPlayer("Greebo"))
							for unit1 = 1,table.getn(uncount) do 
								if (GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-greebo") then
									local unit_quantity = GetNumUnitsAt(GetThisPlayer(), "units", {GetUnitVariable(uncount[unit1],"PosX") - 4, GetUnitVariable(uncount[unit1],"PosY") - 4}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4})
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
						if (GetPlayerData(player, "RaceName") == "dwarf") then
							Event(
								"Greebo",
								"Greebo keeps shinies safe from nasty kobolds. And 'specially stinking dwarves.",
								player,
								{"~!Continue"},
								{function(s)
								end},
								"goblin/icons/goblin_swordsman.png"
							)
						elseif (GetPlayerData(player, "RaceName") == "gnome") then
							Event(
								"Greebo",
								"Greebo keeps shinies safe from nasty kobolds. And 'specially stinking gnomes.",
								player,
								{"~!Continue"},
								{function(s)
								end},
								"goblin/icons/goblin_swordsman.png"
							)
						end

						-- Greebo's End
						-- based on elements from the Descending into Darkness scenario of the Under the Burning Suns campaign from Battle for Wesnoth
						AddTrigger(
							function()
								if (GameCycle == 0) then
									return false
								end
								for i=0,14 do
									if (GetPlayerData(i, "Name") == "Greebo" and GetPlayerData(i, "UnitTypesCount", "unit-hero-greebo") == 0) then
										player = GetThisPlayer()
										return true
									end
								end
								return false
							end,
							function() 
								Event(
									"",
									"The goblin looter is dead. He doesn't seem to have much with him. Must be hard times.",
									player,
									{"~!OK"},
									{function(s)
										SetPlayerData(player, "Resources", "gold", GetPlayerData(player, "Resources", "gold") + 400)
										for i=0,14 do
											if (GetPlayerData(i, "Name") ~= "Greebo") then
												RemovePlayerObjective(i, "- Kill Greebo (optional)")
											end
										end
									end}
								)
								return false
							end
						)
						return false
					end
				)
				return false
			end
		)

	end

	-- Andvari's Gold
	-- based on Norse mythology
	-- Andvari lives near a waterfall, so he can only appear in the map if there is a sufficient number of water in it
	if (GetTileTerrainFlagCount("water") >= 1024) then
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
				Event(
					"Andvari's Gold",
					"The dwarf Andvari, the son of Oin, has built a house for himself in the wilderness, where he lives in isolation. Lately we have discovered that he hides quite a bit of gold there... Some people are suggesting a raid against his home to add his gold to our treasury. Shall we extract a contribution from Andvari?",
					player,
					{"~!Leave him be", "Let's ~!get the gold"},
					{function(s)
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
					end,
					function(s)
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
									AddPlayerObjective(i, "- Destroy Andvari's Mushroom Farm (optional)")
								end
							end
						end
						SetPlayerData(andvari_player, "Name", "Andvari")
						AddPlayerObjective(player, "- Destroy Andvari's Mushroom Farm (optional)")
					end}
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
				Event(
					"Andvari's Gold is Ours!",
					"We have successfully raided Andvari's house and obtained his gold. We even found a ring which seems particularly valuable. Andvari spoke a curse upon us for getting the ring... Ramblings of an impoverished dwarf.",
					player,
					{"~!OK (receive 1200 gold)"},
					{function(s)
						SetPlayerData(player, "Resources", "gold", GetPlayerData(player, "Resources", "gold") + 1200)
						for i=0,14 do
							if (GetPlayerData(i, "Name") ~= "Andvari") then
								RemovePlayerObjective(i, "- Destroy Andvari's Mushroom Farm (optional)")
							end
						end
					end}
				)
				return false
			end
		)
	end
	
	-- The Hall of Sigtun
	AddTrigger(
		function()
			if (GameCycle == 0) then
				return false
			end
			if ((SyncRand(100) + 1) <= 1) then
				for i=0,14 do
					if (GetPlayerData(i, "RaceName") == "norse" and GetPlayerData(i, "Name") == "Sweden") then
						player = i
						return true
					end
				end
			end
			return false
		end,
		function() 
			Event(
				"The Hall of Sigtun",
				"Our people have wandered for long... they desire a permanent home. We should build a town hall and establish a permanent settlement.",
				player,
				{"~!OK"},
				{function(s)
				end}
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
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "norse" and GetPlayerData(i, "Name") == "Sweden") then
					player = i
					return true
				end
			end
			return false
		end,
		function() 
			Event(
				"The Hall of Sigtun has been Built",
				"Our town hall has been built, paving the way for the creation of our first permanent settlement.",
				player,
				{"~!OK"},
				{function(s)
				end}
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
			if ((SyncRand(100) + 1) <= 1) then
				if (GetFactionExists("Denmark")) then
					for i=0,14 do
						if (GetPlayerData(i, "RaceName") == "norse" and GetPlayerData(i, "Name") == "Sweden") then
							player = i
							return true
						end
					end
				end
			end
			return false
		end,
		function() 
			Event(
				"Fredfrode's Feast",
				"The Danish ruler of Leidre, Fredfrode, has invited us to attend to a great feast in his domains. To do so, we must travel and reach his town hall.",
				player,
				{"~!OK"},
				{function(s)
				end}
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
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "norse" and GetPlayerData(i, "Name") == "Sweden") then
					player = i
					return true
				end
			end
			return false
		end,
		function() 
			Event(
				"Drowned in Mead",
				"We arrived at Fredfrode's domains, however... during the evening, our chieftain Fjolne went out to the gallery and, upon finding a large vessel full of mead, sought to drink the stuff. He slipped his foot and fell into the vessel, drowning in mead and leaving Sweden to be ruled by his son, Swegde.",
				player,
				{"~!OK"},
				{function(s)
				end}
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
			if ((SyncRand(100) + 1) <= 1 and GetFactionExists("Gothland")) then
				for i=0,14 do
					if (GetPlayerData(i, "RaceName") == "norse" and GetPlayerData(i, "Name") == "Sweden") then
						player = i
						return true
					end
				end
			end
			return false
		end,
		function() 
			Event(
				"The King's Sparrow",
				"Our king Dag, from the line of Swegde, has sent his trained sparrow to the land of the Goths, but the bird has failed to return... Upon inquiring about it, the king has learned that the bird had been killed at a farm called Varva, by a peasant who was angry that the bird was eating his grain. The king, furious at the loss of his sparrow, has given order for an army to be sent to the land of the Goths and plunder the farm.",
				player,
				{"~!OK"},
				{function(s)
				end}
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
			if (GetFactionExists("Varva")) then
				if (GetPlayerData(GetFactionPlayer("Varva"), "TotalNumUnits") == 0) then
					for i=0,14 do
						if (GetPlayerData(i, "RaceName") == "norse" and GetPlayerData(i, "Name") == "Sweden") then
							player = i
							return true
						end
					end
				end
			end
			return false
		end,
		function() 
			Event(
				"Varva Burns",
				"We have fulfilled the king's wishes and burnt down the farm of Varva... Unfortunately, the king Dag himself has died at the raid, killed by a serf. His son Agne will now be our king and lord.",
				player,
				{"~!OK"},
				{function(s)
				end}
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
			if ((SyncRand(100) + 1) <= 1 and GetFactionExists("Finland")) then
				for i=0,14 do
					if (GetPlayerData(i, "RaceName") == "norse" and GetPlayerData(i, "Name") == "Sweden") then
						player = i
						return true
					end
				end
			end
			return false
		end,
		function() 
			Event(
				"Marauding Finland",
				"Our king Agne desires to gather an army and sail forth to Finland to raid it. We have been told that a local chieftain called Froste is gathering the Finns to resist our attempt upon them. Let's get their riches!",
				player,
				{"~!OK"},
				{function(s)
				end}
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
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "norse" and GetPlayerData(i, "Name") == "Sweden") then
					player = i
					return true
				end
			end
			return false
		end,
		function() 
			Event(
				"Finland is Plundered",
				"We have raided Finland, and it is now time to get the riches which we have found back to Sweden. The king has gotten for himself a golden necklace which he keeps on him at all times. He's also taking Skjalv - Froste's daughter - back to Sweden, and has decided to marry the lady. Bring our forces back to one of our sentry towers.",
				player,
				{"~!OK"},
				{function(s)
				end}
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
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "norse" and GetPlayerData(i, "Name") == "Sweden") then
					player = i
					return true
				end
			end
			return false
		end,
		function() 
			Event(
				"The Golden Hanging",
				"Our king has been found hanged by the very golden necklace which he had plundered from the Finns! Skjalv has been seen along with other captive Finns, taking to ships to return to her homeland... We hope that at least the death of our king will sate the Finns' thirst for revenge.",
				player,
				{"~!OK"},
				{function(s)
					if (mapinfo.description == "Finland") then
						ActionVictory()
					end
				end}
			)
			return false
		end
	)

	if (mapinfo.description == "East Prussia") then
		-- The Fall of the Island Fortress briefing; information source: Norman Davies, "Vanished Kingdoms", p. 343
		AddTrigger(
			function()
				if (GameCycle == 0) then
					return false
				end
				for i=0,14 do
					if (GetPlayerData(i, "RaceName") == "teuton") then
						player = i
						return true
					end
				end
				return false
			end,
			function() 
				Event(
					"",
					"Our Order has made many advances towards the east over the years, and now the time has come for us to consolidate our hold over the land of the Prusai. Their island fortress of Elk stands in our way. It shall fall to our hands!",
					player,
					{"~!OK"},
					{function(s)
						AddPlayerObjective(player, "- Destroy the Prusai fortress of Elk")
					end}
				)
				return false
			end
		)
	end
end

function Event(event_name, event_description, player, options, option_effects, event_icon, event_image)
	if (GetThisPlayer() == player) then
		SetGamePaused(true)
		local menu = WarGameMenu(panel(5))
		menu:resize(352, 352)

		menu:addLabel(event_name, 176, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(324, 208)
		l:setLineWidth(324)
--		if (event_icon == nil) then
--			menu:add(l, 14, 40)
--		else
			menu:add(l, 14, 112)
--		end
		l:setCaption(event_description)

		if (event_icon == "dwarf/icons/rugnur.png" and GetArrayIncludes(wyr.preferences.Heroes.Rugnur.upgrades, "unit-dwarven-thane")) then
			event_icon = "dwarf/icons/rugnur_older.png"
		end

		if (event_icon ~= nil) then
			event_icon = CGraphic:New(event_icon)
			event_icon:Load()
			local b = ImageWidget(event_icon)
			menu:add(b, 153, 48)
		end

		if (event_image ~= nil) then
			event_image = CGraphic:New(event_image)
			event_image:Load()
			local b = ImageWidget(event_image)
			menu:add(b, 0, 0)
		end

		for i=1,table.getn(options) do
			local option_hotkey = ""		
			if (string.find(options[i], "~!") ~= nil) then
				option_hotkey = string.sub(string.match(options[i], "~!%a"), 3)
				option_hotkey = string.lower(option_hotkey)
			end

			menu:addFullButton(options[i], option_hotkey, 176 - (224 / 2), 352 - 40 * (table.getn(options) - (i - 1)),
				function(s)
					SetGamePaused(false)
					menu:stop()
					option_effects[i]()
				end
			)
		end

		menu:run(false)
	else -- AIs always choose the first option
--		option_effects[SyncRand(table.getn(option_effects)) + 1]()
		option_effects[1]()
	end
end
