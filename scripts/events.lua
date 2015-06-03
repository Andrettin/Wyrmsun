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

function EventTriggers()

	if (GameSettings.Opponents <= 0 and GameSettings.GameType == -1 and GameSettings.NumUnits <= 0 and GameSettings.Resources <= 0 and (GrandStrategy == false or GrandStrategyEventMap)) then
		Load("scripts/gnome/events.lua")
	end

	-- Greebo's Shinies
	-- based on elements from the Descending into Darkness scenario of the Under the Burning Suns campaign from Battle for Wesnoth
	-- only appears in terrains which exist in Nidavellir (substitute for checking if there is a goblin faction, as a goblin civilization hasn't yet been implemented)
	-- Greebo inhabits a cave, so he can only appear in the map if there is a sufficient number of rocks in it
	if (wyrmsun.tileset == "swamp" and GetTileTerrainFlagCount("rock") >= 2048) then
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
					nil
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
								"goblin/icons/greebo.png"
							)
						elseif (GetPlayerData(player, "RaceName") == "gnome") then
							Event(
								"Greebo",
								"Greebo keeps shinies safe from nasty kobolds. And 'specially stinking gnomes.",
								player,
								{"~!Continue"},
								{function(s)
								end},
								"goblin/icons/greebo.png"
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
						SetUnitName(unit, "Andvari")
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
	
	if (wyrmsun.tileset == "dungeon") then
		-- Soldier offers training
		AddTrigger(
			function()
				if (GetNumUnitsAt(-1, "unit-long-swordsman", {0, 0}, {256, 256}) >= 1) then
					local uncount = 0
					uncount = GetUnits("any")
					for unit1 = 1,table.getn(uncount) do 
						if (GetUnitVariable(uncount[unit1], "Ident") == "unit-long-swordsman") then
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
					"Seasoned Swordsman",
					"Thanks for freeing me from my captors. They imprisoned me hoping to ransom me for gold, but it turns out I am naught but a wandering knight, with no baron of a father to pay for my freedom. So they just left me here to rot... I can't reward you with gold, but I will teach you what I know about personal combat.",
					player,
					{"~!OK (+100 XP)"},
					{function(s)
						local uncount = 0
						uncount = GetUnits(GetThisPlayer())
						for unit1 = 1,table.getn(uncount) do 
							SetUnitVariable(uncount[unit1], "Xp", GetUnitVariable(uncount[unit1], "Xp", "Max") + 100, "Max")
							SetUnitVariable(uncount[unit1], "Xp", GetUnitVariable(uncount[unit1], "Xp", "Max"))
						end
					end},
					"neutral/icons/long_swordsman.png"
				)
				
				return false
			end
		)
	end
				
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

function Event(speaker, event_description, player, options, option_effects, event_icon, event_image, continue_automatically)
	if (GetThisPlayer() == player and (continue_automatically == nil or continue_automatically == false)) then
		if not (IsNetworkGame()) then
			SetGamePaused(true)
		end
		local menu = WarGameMenu(panel(5))
		menu:resize(352, 352)

		if (type(speaker) == "number") then
			menu:addLabel(_(GetUnitVariable(speaker, "Name")), 176, 11)
		elseif (type(speaker) == "string") then
			menu:addLabel(_(speaker), 176, 11)
		end

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(324, 208)
		l:setLineWidth(324)
		if (event_icon == nil and type(speaker) == "string") then
			menu:add(l, 14, 76)
		else
			menu:add(l, 14, 112)
		end
		l:setCaption(_(event_description))

		if (type(speaker) == "number") then
			event_icon = CIcon:Get(GetUnitVariable(speaker, "Icon")).G
			event_icon:Load()
			local b = PlayerColorImageWidget(event_icon, GetPlayerData(GetUnitVariable(speaker, "Player"), "Color"))
			menu:add(b, 153, 48)
		elseif (event_icon ~= nil) then
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
			if (string.find(_(options[i]), "~!") ~= nil) then
				option_hotkey = string.sub(string.match(_(options[i]), "~!%a"), 3)
				option_hotkey = string.lower(option_hotkey)
			end

			menu:addFullButton(_(options[i]), option_hotkey, 176 - (224 / 2), 352 - 40 * (table.getn(options) - (i - 1)),
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

function Tip(tip_name, tip_description)
	if (GetArrayIncludes(wyr.preferences.TipsShown, tip_name)) then
		return
	end

	if (GameRunning and not IsNetworkGame()) then
		SetGamePaused(true)
	end
	local menu
	
	if (GrandStrategy == false) then
		menu = WarGameMenu(panel(2))
	else
		menu = WarGrandStrategyGameMenu(panel(2))
		menu:setDrawMenusUnder(true)
	end
	menu:resize(288, 256)

	menu:addLabel(_(tip_name), 144, 11)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(260, 128 + 36)
	l:setLineWidth(260)
	menu:add(l, 14, 35 * 1.5)
	l:setCaption(_(tip_description))

	if (tip_name ~= "" and GetArrayIncludes(wyr.preferences.TipsShown, tip_name) == false) then
		table.insert(wyr.preferences.TipsShown, tip_name)
		SavePreferences()
	end
			
	menu:addHalfButton("~!Close", "c", 288 / 2 - (106 / 2), 256 - 40,
		function()
			if (GameRunning and not IsNetworkGame()) then
				SetGamePaused(false)
			end
			menu:stop()
		end
	)
	
	if (GrandStrategy == false) then
		menu:run(false)
	else
		menu:run()
	end
end
