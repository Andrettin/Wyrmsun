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

if (mapinfo.description == "Chaincolt Foothills") then
-- A Bargain is Struck initial dialogue
-- based on the A Bargain is Struck scenario of the Sceptre of Fire campaign from Battle for Wesnoth
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		for i=0,14 do
			if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1 and GetCivilizationExists("gnome") and GetNumRivals(i) >= 2 and not Players[i]:IsEnemy(Players[GetCivilizationPlayer("gnome")])) then
				player = i
				
				-- this check is necessary to see if there is a viable raider player (so that the game doesn't crash if the only other dwarven clan are the Shorbear)
				local loop = true
				local loop_count = 0
				local bandit_player
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
		return false
	end,
	function() 
		local gnomish_monarch_player = GetCivilizationPlayer("gnome")
		unit = CreateUnit("unit-revealer", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
		Event(
			"Rugnur",
			"Gnomes, halt! Who dares bring an army into the dwarven hills?",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Pypo I",
				"We come to make a bargain with you.",
				player,
				{"~!Listen to him", "~!Up axes!"},
				{function(s)
				Event(
					"Rugnur",
					"Well, state yer business and be done with it. And if we don't like what ye say, ye leave!",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Pypo I",
						"Have you heard of the Ruby of Fire?",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Rugnur",
							"Aye... yer deceased king brought it from the west, right? Ye own it.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Pypo I",
								"Correct. However, we have a problem with it.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Rugnur",
									"What sort of problem?",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Pypo I",
										"The stone is very atypical. To cut and insert it would require more skill than my best craftsmen have...",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Rugnur",
											"And what... ye want us to do this, cut the stone? And make an artifact of some kind?",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Pypo I",
												"I want you to craft it into a mighty artifact, that will embody the power of my will and be a symbol of the legitimacy of my rule.",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Rugnur",
													"Well... I think we can make a deal, but I'm not sure. I'll have to ask the tribal leaders.",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														"Pypo I",
														"If you are not authorized to make a deal, send out someone who is, and I will bargain with him.",
														player,
														{"~!Continue"},
														{function(s)
														Event(
															"Rugnur",
															"They would refuse to come. Ye must come into the caves, and go to the city in person, or send a representative.",
															player,
															{"~!Continue"},
															{function(s)
															Event(
																"Pypo I",
																"I can always take my offer to another tribe more friendly to its potential patrons. You are not the only smiths in these lands!",
																player,
																{"~!Discuss his offer", "~!No deal"},
																{function(s)
																Event(
																	"Rugnur",
																	"Uh, no, wait! Let's talk business - how much will ye pay us to do this for ye?",
																	player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		"Pypo I",
																		"Five thousand pieces of silver.",
																		player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			"Rugnur",
																			"Ye said ye wanted a potent artifact, not a child's playtoy! So... twenty thousand, minimum. The crafting of this will take us many years, ye must pay us well.",
																			player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				"Pypo I",
																				"Ten thousand.",
																				player,
																				{"~!Continue"},
																				{function(s)
																				Event(
																					"Rugnur",
																					"Nothing below fifteen!",
																					player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						"Pypo I",
																						"Then no deal. I'll gather my things and go to another dwarven clan now.",
																						player,
																						{"~!Continue"},
																						{function(s)
																						Event(
																							"Rugnur",
																							"Fine then - ten thousand... now, what exactly do ye want us to make the stone into?",
																							player,
																							{"~!Continue"},
																							{function(s)
																							Event(
																								"Pypo I",
																								"I want you to make it into a scepter, a scepter of fire.",
																								player,
																								{"~!Continue"},
																								{function(s)
																								Event(
																									"Rugnur",
																									"I'll see what I can do. But I will need five thousand silver in advance, to pay for the materials.",
																									player,
																									{"~!Continue"},
																									{function(s)
																									Event(
																										"Pypo I",
																										"Very well. I have the silver here, ready to ship, and I will send someone over with the stone itself. He will stay with you as you make the scepter, and make sure you are going to get it done on time. I expect it done before my reign as king is ended.",
																										player,
																										{"~!Continue"},
																										{function(s)
																											unit = CreateUnit("unit-gnomish-recruit", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y}) -- gnomish envoy who holds the ruby
																											IncreaseUnitLevel(unit, 1, true)
																											unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																											unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																											unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																											unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																											if (mapinfo.description == "Chaincolt Foothills") then
																												ChangeUnitsOwner({6, 65}, {6 + 1, 65 + 1}, gnomish_monarch_player, 0)
																												RemovePlayerObjective(player, "- Destroy the enemy")
																											end
																											SetDiplomacy(gnomish_monarch_player, "allied", player)
																											SetSharedVision(gnomish_monarch_player, true, player)
																											SetDiplomacy(player, "allied", gnomish_monarch_player)
																											SetSharedVision(player, true, gnomish_monarch_player)
																											AddPlayerObjective(player, a_bargain_is_struck_objective_1)
																											AddPlayerObjective(player, "- Rugnur must survive")
																											AddPlayerObjective(player, "- The gnomish envoy must survive")
																										end},
																										"gnome/icons/gnomish_recruit.png"
																									)
																									end},
																									"dwarf/icons/rugnur.png"
																								)
																								end},
																								"gnome/icons/gnomish_recruit.png"
																							)
																							end},
																							"dwarf/icons/rugnur.png"
																						)
																						end},
																						"gnome/icons/gnomish_recruit.png"
																					)
																					end},
																					"dwarf/icons/rugnur.png"
																				)
																				end},
																				"gnome/icons/gnomish_recruit.png"
																			)
																			end},
																			"dwarf/icons/rugnur.png"
																		)
																		end},
																		"gnome/icons/gnomish_recruit.png"
																	)
																	end},
																	"dwarf/icons/rugnur.png"
																)
																end,
																function(s)
																	SetDiplomacy(gnomish_monarch_player, "neutral", player)
																	SetDiplomacy(player, "neutral", gnomish_monarch_player)
																	KillUnitAt("unit-revealer", player, 1, {0, 0}, {256, 256})
																end},
																"gnome/icons/gnomish_recruit.png"
															)
															end},
															"dwarf/icons/rugnur.png"
														)
														end},
														"gnome/icons/gnomish_recruit.png"
													)
													end},
													"dwarf/icons/rugnur.png"
												)
												end},
												"gnome/icons/gnomish_recruit.png"
											)
											end},
											"dwarf/icons/rugnur.png"
										)
										end},
										"gnome/icons/gnomish_recruit.png"
									)
									end},
									"dwarf/icons/rugnur.png"
								)
								end},
								"gnome/icons/gnomish_recruit.png"
							)
							end},
							"dwarf/icons/rugnur.png"
						)
						end},
						"gnome/icons/gnomish_recruit.png"
					)
					end},
					"dwarf/icons/rugnur.png"
				)
				end,
				function(s)
					SetSharedVision(gnomish_monarch_player, false, player)
					SetSharedVision(player, false, gnomish_monarch_player)
					SetDiplomacy(gnomish_monarch_player, "enemy", player)
					SetDiplomacy(player, "enemy", gnomish_monarch_player)
					KillUnitAt("unit-revealer", player, 1, {0, 0}, {256, 256})
				end},
				"gnome/icons/gnomish_recruit.png"
			)
			end},
			"dwarf/icons/rugnur.png"
		)

		-- Follow-up of the A Bargain is Struck initial dialogue
		AddTrigger(
			function()
				if (GameCycle == 0) then
					return false
				end
				for i=0,14 do
					if (PlayerHasObjective(i, a_bargain_is_struck_objective_1)) then
						player = i
						return true
					end
				end
				return false
			end,
			function() 
				local gnomish_monarch_player = GetCivilizationPlayer("gnome")
				local loop = true
				local loop_count = 0
				local bandit_player
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
				wyr.preferences.TheScepterOfFireRaiderFaction = GetPlayerData(bandit_player, "Name")
				SavePreferences()
				unit = CreateUnit("unit-revealer", player, {Players[bandit_player].StartPos.x, Players[bandit_player].StartPos.y})
				local raider_leader_name = GetRandomCharacterName("dwarf", "male", false)
				Event(
					"Gnomish Envoy",
					"That's right. I'll be coming over along with the silver.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						raider_leader_name,
						"Hey! Ye can't do that - this road belongs to the " .. wyr.preferences.TheScepterOfFireRaiderFaction .. ". We're not letting ye transport gold and jewels on it without paying a toll.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Rugnur",
							"What are ye talking about?! This road has always been open to all.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								raider_leader_name,
								"Aye, we have allowed people to use it, but it is our road.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Rugnur",
									"Not true! This is " .. GetPlayerData(player, "Name") .. " land; if anything, it's our road!",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										raider_leader_name,
										"Nevertheless, if ye try to move yer caravans here ye have to pay the toll, or face our wrath!",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Rugnur",
											"Very well. " .. raider_leader_name .. ", I have no problem with slaying ye if ye stand in our way. I advise ye to leave the shipment alone, but not doing so is yer choice.",
											player,
											{"~!Continue"},
											{function(s)
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
												KillUnitAt("unit-revealer", player, 2, {0, 0}, {256, 256})
											end},
											"dwarf/icons/rugnur.png"
										)
										end},
										"dwarf/icons/dwarven_steelclad.png"
									)
									end},
									"dwarf/icons/rugnur.png"
								)
								end},
								"dwarf/icons/dwarven_steelclad.png"
							)
							end},
							"dwarf/icons/rugnur.png"
						)
						end},
						"dwarf/icons/dwarven_steelclad.png"
					)
					end},
					"gnome/icons/gnomish_recruit.png"
				)

				-- The Gnomish Envoy arrives with the stone
				AddTrigger(
					function()
						if (GameCycle == 0) then
							return false
						end
						for i=0,14 do
							if (PlayerHasObjective(i, a_bargain_is_struck_objective_1) and GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad")) >= 1 and IfNearUnit(i, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-town-hall") and IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-recruit")) then
								player = i
								return true
							end
						end
						return false
					end,
					function() 
						Event(
							"Gnomish Envoy",
							"Here's the stone, for you dwarves! Now, if you'll excuse me, I think I'll be taking refuge here... I don't much like fighting.",
							player,
							{"~!Continue"},
							{function(s)
								if (IfNearUnit(player, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-town-hall") and IfNearUnit(player, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-caravan")) then
									Event(
										"Pypo I",
										"All the silver is there too. Proceed with the task, Rugnur!",
										player,
										{"~!Continue"},
										{function(s)
											RemovePlayerObjective(player, a_bargain_is_struck_objective_1)
											if (player == GetThisPlayer()) then
												if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == false) then
													table.insert(wyr.preferences.QuestsCompleted, "A Bargain is Struck")
												end
												SavePreferences()
												if (mapinfo.description == "Chaincolt Foothills") then
													NextMap = "maps/caverns-of-chaincolt.smp"
													ActionVictory()
												end
											end
										end},
										"gnome/icons/gnomish_recruit.png"
									)
								end
							end},
							"gnome/icons/gnomish_recruit.png"
						)
						return false
					end
				)

				-- The last caravan arrives with the silver
				AddTrigger(
					function()
						if (GameCycle == 0) then
							return false
						end
						for i=0,14 do
							if (PlayerHasObjective(i, a_bargain_is_struck_objective_1) and GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad")) >= 1 and IfNearUnit(i, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-town-hall") and IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-caravan")) then
								player = i
								return true
							end
						end
						return false
					end,
					function() 
						if (IfNearUnit(player, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-town-hall") and IfNearUnit(player, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-recruit")) then
							Event(
								"Rugnur",
								"That's the last caravan! We will commence work immediately.",
								player,
								{"~!Continue"},
								{function(s)
									RemovePlayerObjective(player, a_bargain_is_struck_objective_1)
									if (player == GetThisPlayer()) then
										if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == false) then
											table.insert(wyr.preferences.QuestsCompleted, "A Bargain is Struck")
										end
										SavePreferences()
										if (mapinfo.description == "Chaincolt Foothills") then
											NextMap = "maps/caverns-of-chaincolt.smp"
											ActionVictory()
										end
									end
								end},
								"dwarf/icons/rugnur.png"
							)
						else
							Event(
								"Rugnur",
								"We have all of the silver, now all we need is the stone.",
								player,
								{"~!Continue"},
								{function(s)
								end},
								"dwarf/icons/rugnur.png"
							)
						end
						return false
					end
				)

				-- This event makes the player complete the quest in the case that the caravans or the recruit arrive first but then are moved, and when the recruit or the caravans finally arrive the quest completion doesn't happen
				AddTrigger(
					function()
						if (GameCycle == 0) then
							return false
						end
						for i=0,14 do
							-- added the SyncRand so that this trigger is unlikely to fire instead of the quest completion dialogue events
							if ((SyncRand(100) + 1) <= 10 and PlayerHasObjective(i, a_bargain_is_struck_objective_1) and GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad")) >= 1 and IfNearUnit(i, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-town-hall") and IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-caravan") and IfNearUnit(i, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-town-hall") and IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-recruit")) then
								player = i
								return true
							end
						end
						return false
					end,
					function() 
						RemovePlayerObjective(player, a_bargain_is_struck_objective_1)
						if (player == GetThisPlayer()) then
							if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == false) then
								table.insert(wyr.preferences.QuestsCompleted, "A Bargain is Struck")
							end
							SavePreferences()
							if (mapinfo.description == "Chaincolt Foothills") then
								NextMap = "maps/caverns-of-chaincolt.smp"
								ActionVictory()
							end
						end
						return false
					end
				)

				-- If a caravan has been destroyed, the A Bargain is Struck quest fails
				AddTrigger(
					function()
						if (GameCycle == 0) then
							return false
						end
						for i=0,14 do
							if (PlayerHasObjective(i, a_bargain_is_struck_objective_1) and GetPlayerData(i, "UnitTypesCount", "unit-gnomish-caravan") < 4) then
								player = i
								return true
							end
						end
						return false
					end,
					function() 
						Event(
							"Pypo I",
							"You just let a caravan, with my money loaded in it, get captured! If I can't trust you to keep my property secure, the deal's off.",
							player,
							{"~!Continue"},
							{function(s)
								RemovePlayerObjective(player, a_bargain_is_struck_objective_1)
								if (mapinfo.description == "Chaincolt Foothills") then
									ActionDefeat()
								end
							end},
							"gnome/icons/gnomish_recruit.png"
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

-- If Rugnur dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetThisPlayer(), a_bargain_is_struck_objective_1) or PlayerHasObjective(GetThisPlayer(), "- Have one unit standing on each glyph at the same time") or PlayerHasObjective(GetThisPlayer(), "- Find Thursagan and bring him to your Mead Hall")) and (GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-rugnur-steelclad")) < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, a_bargain_is_struck_objective_1)
		RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		if (mapinfo.description == "Chaincolt Foothills" or mapinfo.description == "Caverns of Chaincolt" or mapinfo.description == "Northern Wastelands") then
			ActionDefeat()
		end
		return false
	end
)

-- If the Gnomish Envoy dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetThisPlayer(), a_bargain_is_struck_objective_1) or PlayerHasObjective(GetThisPlayer(), "- Find Thursagan and bring him to your Mead Hall")) and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-gnomish-recruit") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, a_bargain_is_struck_objective_1)
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		if (mapinfo.description == "Chaincolt Foothills" or mapinfo.description == "Northern Wastelands") then
			ActionDefeat()
		end
		return false
	end
)

-- If the gnomish monarch dies, the first quest of the Scepter of Fire campaign fails
--AddTrigger(
--	function()
--		if (GameCycle == 0) then
--			return false
--		end
--		for i=0,14 do
--			-- maybe could check here if the gnomish player has a gnomish recruit with level 3 instead (although perhaps it could be bad for performance)?
--			if (PlayerHasObjective(i, a_bargain_is_struck_objective_1) and GetPlayerData(GetCivilizationPlayer("gnome"), "UnitTypesCount", "unit-gnomish-recruit") < 1) then
--				player = i
--				return true
--			end
--		end
--		return false
--	end,
--	function() 
--		RemovePlayerObjective(player, a_bargain_is_struck_objective_1)
--		if (mapinfo.description == "Chaincolt Foothills") then
--			ActionDefeat()
--		end
--		return false
--	end
--)

if (mapinfo.description == "Caverns of Chaincolt") then
-- Closing the Gates initial dialogue
-- based on the Closing the Gates scenario of the Sceptre of Fire campaign from Battle for Wesnoth
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") and GetFactionExists(wyr.preferences.TheScepterOfFireRaiderFaction)) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "Name") ~= wyr.preferences.TheScepterOfFireRaiderFaction and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1 and GetPlayerData(15, "UnitTypesCount", "unit-glyph") >= 6) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		closing_the_gates_raider_leader_name = GetRandomCharacterName("dwarf", "male", false) -- new raider leader, name should be different from the one in A Bargain is Struck
		unit = CreateUnit("unit-revealer", player, {Players[GetFactionPlayer(wyr.preferences.TheScepterOfFireRaiderFaction)].StartPos.x, Players[GetFactionPlayer(wyr.preferences.TheScepterOfFireRaiderFaction)].StartPos.y})
		Event(
			"Rugnur",
			"These " .. wyr.preferences.TheScepterOfFireRaiderFaction .. " raiders are right behind me! We have to go warn the council of this attack...!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Gnomish Envoy",
				"Here - I'll go warn the council. You stay here and fight.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Rugnur",
					"Aye, that sounds good. I'll stay here and try to defend the gates...",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						closing_the_gates_raider_leader_name,
						"I see ye have sent a messenger to the city. Good idea, but will it really help? We have more troops and more provisions, and we are going to enter those caves and kill ye!",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Rugnur",
							"(Gulp)",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								closing_the_gates_raider_leader_name,
								"Ha! I thought as much. Well then, surrender!",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Rugnur",
									"Um... on what terms?",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										closing_the_gates_raider_leader_name,
										"Unconditional.",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Baglur",
											"Wait! Rugnur, dinna' they tell ye anything when ye took command here?!",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Rugnur",
												"Not really. This was supposedly a time of peace. Who are ye?",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Baglur",
													"Argh! I'm a retired warrior... it looks like I'll ha' to come out and help ye, else we'll be overrun by these damn raiders... Well, listen here. This entrance to the city can be closed. There's a gate. If we can close it, the raiders will no' be able to enter. And ye raiders; begone from here!",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														closing_the_gates_raider_leader_name,
														"Cease yer meddling, old dwarf! Rugnur is in charge here, and it is he who will bargain with us.",
														player,
														{"~!Listen to Baglur", "~!Surrender (Defeat)"},
														{function(s)
														Event(
															"Rugnur",
															"Baglur, how do ye close the gates?",
															player,
															{"~!Continue"},
															{function(s)
															Event(
																"Baglur",
																"Och, well that's the difficulty. It's an impregnable gate, made from thick layers of solid rock. Almost indestructible. But that means it can only be closed by a special mechanism. Ye need to position a warrior on each of the six glyphs. When all are occupied, the gates wi' close. Then the raiders will be shut out of the caves forever, at least through this entrance.",
																player,
																{"~!Continue"},
																{function(s)
																Event(
																	"Rugnur",
																	"Don't we have troops positioned near these glyphs, to unlock them?",
																	player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		"Baglur",
																		"Och, well, no. Lately goblins have been more in charge of those caves where the glyphs are than we dwarves have.",
																		player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			"Rugnur",
																			"Well, where are they located?",
																			player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				"Baglur",
																				"Two are down a side passage in the northwest, another two are in a similar location in the southeast, and two are right next to the front gate.",
																				player,
																				{"~!Continue"},
																				{function(s)
																				Event(
																					closing_the_gates_raider_leader_name,
																					"Have ye made up yer mind yet about surrendering? If ye will not give up, prepare for battle!",
																					player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						"Rugnur",
																						"Ye may be more powerful than us, but I doubt even ye can blast through our stonecraft. We refuse - now let's close these gates!",
																						player,
																						{"~!Continue"},
																						{function(s)
																							AddPlayerObjective(player, "- Have one unit standing on each glyph at the same time")
																							AddPlayerObjective(player, "- Rugnur and Baglur must survive")
																							if (mapinfo.description == "Caverns of Chaincolt") then
																								RemovePlayerObjective(player, "- Destroy the enemy")
																							end
																							KillUnitAt("unit-revealer", player, 1, {0, 0}, {256, 256})
																						end},
																						"dwarf/icons/rugnur.png"
																					)
																					end},
																					"dwarf/icons/dwarven_steelclad.png"
																				)
																				end},
																				"dwarf/icons/baglur.png"
																			)
																			end},
																			"dwarf/icons/rugnur.png"
																		)
																		end},
																		"dwarf/icons/baglur.png"
																	)
																	end},
																	"dwarf/icons/rugnur.png"
																)
																end},
																"dwarf/icons/baglur.png"
															)
															end},
															"dwarf/icons/rugnur.png"
														)
														end,
														function(s)
															ActionDefeat()
														end},
														"dwarf/icons/dwarven_steelclad.png"
													)
													end},
													"dwarf/icons/baglur.png"
												)
												end},
												"dwarf/icons/rugnur.png"
											)
											end},
											"dwarf/icons/baglur.png"
										)
										end},
										"dwarf/icons/dwarven_steelclad.png"
									)
									end},
									"dwarf/icons/rugnur.png"
								)
								end},
								"dwarf/icons/dwarven_steelclad.png"
							)
							end},
							"dwarf/icons/rugnur.png"
						)
						end},
						"dwarf/icons/dwarven_steelclad.png"
					)
					end},
					"dwarf/icons/rugnur.png"
				)
				end},
				"gnome/icons/gnomish_recruit.png"
			)
			end},
			"dwarf/icons/rugnur.png"
		)

		-- If there is one unit on each glyph
		AddTrigger(
			function()
				if (GameCycle == 0) then
					return false
				end
				for i=0,14 do
					if (PlayerHasObjective(i, "- Have one unit standing on each glyph at the same time") and GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad")) >= 1 and GetNumUnitsAt(i, "any", {5, 11}, {5, 11}) > 0 and GetNumUnitsAt(i, "any", {38, 53}, {38, 53}) > 0 and GetNumUnitsAt(i, "any", {28, 33}, {28, 33}) > 0 and GetNumUnitsAt(i, "any", {15, 24}, {15, 24}) > 0 and GetNumUnitsAt(i, "any", {23, 7}, {23, 7}) > 0 and GetNumUnitsAt(i, "any", {51, 43}, {51, 43}) > 0) then
						player = i
						return true
					end
				end
				return false
			end,
			function() 
				Event(
					"Rugnur",
					"We have everyone positioned on the glyphs! What do we do now?",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Baglur",
						"Just watch. The gates wi' close very soon. Then the raiders outside - and, unfortunately, our clansfolk who are still out there - wi' become irrelevant.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							closing_the_gates_raider_leader_name,
							"Agh! Well, ye have defeated me for now, but eventually ye will have to exit these caves, to give Pypo back his jewel. And when ye do, we will be ready for ye.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Baglur",
								"If that is what ye choose to do, fine, but be prepared to wait for many years.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Rugnur",
									"Well, now I should go down to the city and report. I'm late already...",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"",
										"(Later in the dwarven city...)",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Durstorn",
											"Where's that fool Rugnur gotten to? It's time for him to report on events in the surface world. He's late!",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Noiraran",
												"Perhaps the outpost was held up?",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Durstorn",
													"Ha! There hasn't been a war since that fool Dursil tried to get the better of Pypo I, why would someone attack us now?",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														"Kuhnar",
														"The " .. wyr.preferences.TheScepterOfFireRaiderFaction .. " might want our gold.",
														player,
														{"~!Continue"},
														{function(s)
														Event(
															"Durstorn",
															"Good one, let them try to take it! Ha!",
															player,
															{"~!Continue"},
															{function(s)
															Event(
																"Rugnur",
																"Hey, Durstorn, have we started yet? King Pypo came by just now, wanted to talk to ye...",
																player,
																{"~!Continue"},
																{function(s)
																Event(
																	"Durstorn",
																	"Speak properly to yer elders, boy! Why are ye late?",
																	player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		"Rugnur",
																		"Huh? Didn't a messenger come and tell ye?",
																		player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			"Durstorn",
																			"No.",
																			player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				"Baglur",
																				"I think ye'd better let me explain. The gnomish king Pypo I came to the gate. Then we had to close it, which took considerable time.",
																				player,
																				{"~!Continue"},
																				{function(s)
																				Event(
																					"Glinar",
																					"What'd he want? And why'd ye have to close the gate?",
																					player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						"Rugnur",
																						"He wanted to make a deal with us. He gave us a magical stone, called the 'Ruby of Fire', and told us to make a scepter out of it, to symbolize his power, or something like that. We closed the doors because " .. wyr.preferences.TheScepterOfFireRaiderFaction .. " raiders were attacking us.",
																						player,
																						{"~!Continue"},
																						{function(s)
																						Event(
																							"Noiraran",
																							"What is he going to give us for it, eh?",
																							player,
																							{"~!Continue"},
																							{function(s)
																							Event(
																								"Rugnur",
																								"He paid us five thousand silver in advance, and he'll give us five thousand more when we deliver the finished scepter if we are done before he dies.",
																								player,
																								{"~!Continue"},
																								{function(s)
																								Event(
																									"Durstorn",
																									"What?! Ye already accepted? Foolish boy, ye should have come for one of the elders! We could have gotten much more than ten thousand silver out of him! This is a task that will take many years, and now all of our work in that time will bring us very little gain.",
																									player,
																									{"~!Continue"},
																									{function(s)
																									Event(
																										"Rugnur",
																										"Sorry, lord, but he said he would move on to another tribe if I left.",
																										player,
																										{"~!Continue"},
																										{function(s)
																										Event(
																											"Durstorn",
																											"Can't ye tell a bluff when ye hear one?! He knows we're the best craftsmen, and he wouldn't have gone to another tribe if we stalled for a year. Oh well, what's done is done. We'll have to work for less than I would prefer...",
																											player,
																											{"~!Continue"},
																											{function(s)
																											Event(
																												"Baglur",
																												"Well, since this boy bargained so badly, why not make him fulfill the contract himself? If he fails, it's on his head.",
																												player,
																												{"~!Continue"},
																												{function(s)
																												Event(
																													"Durstorn",
																													"Good idea, Baglur! He'll need some help, though, and it will take a master smith to make the scepter. Why don't we send him to find Thursagan?",
																													player,
																													{"~!Continue"},
																													{function(s)
																													Event(
																														"Baglur",
																														"Ye mean the insane dwarf who lives in the far north?!",
																														player,
																														{"~!Continue"},
																														{function(s)
																														Event(
																															"Durstorn",
																															"Aye. He is the only one I know of who could craft the scepter the way Pypo wants it. And he has nothing to do; he will be fine with wasting 25 years of his life on this task.",
																															player,
																															{"~!Continue"},
																															{function(s)
																															Event(
																																"Rugnur",
																																"Very well, my lord. We will go into the north to find Thursagan. Do ye have any idea where he is?",
																																player,
																																{"~!Continue"},
																																{function(s)
																																Event(
																																	"Durstorn",
																																	"Go to the furthest north entrance to the caves, and then go north. He's somewhere in those hills.",
																																	player,
																																	{"~!Continue"},
																																	{function(s)
																																	Event(
																																		"",
																																		"(Later...)",
																																		player,
																																		{"~!Continue"},
																																		{function(s)
																																		Event(
																																			"Gnomish Envoy",
																																			"What did I miss, eh?",
																																			player,
																																			{"~!Continue"},
																																			{function(s)
																																			Event(
																																				"Durstorn",
																																				"Who the devil are ye? Well, ye seem to be with Rugnur... follow him north.",
																																				player,
																																				{"~!Continue"},
																																				{function(s)
																																					RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
																																					if (player == GetThisPlayer()) then
																																						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Closing the Gates") == false) then
																																							table.insert(wyr.preferences.QuestsCompleted, "Closing the Gates")
																																							table.insert(wyr.preferences.TechnologyAcquired, "unit-hero-baglur")
																																						end
																																						SavePreferences()
																																						if (mapinfo.description == "Caverns of Chaincolt") then
																																							NextMap = "maps/northern-wastelands.smp"
																																							ActionVictory()
																																						end
																																					end
																																				end},
																																				"dwarf/icons/durstorn.png"
																																			)
																																			end},
																																			"gnome/icons/gnomish_recruit.png"
																																		)
																																		end}
																																	)
																																	end},
																																	"dwarf/icons/durstorn.png"
																																)
																																end},
																																"dwarf/icons/rugnur.png"
																															)
																															end},
																															"dwarf/icons/durstorn.png"
																														)
																														end},
																														"dwarf/icons/baglur.png"
																													)
																													end},
																													"dwarf/icons/durstorn.png"
																												)
																												end},
																												"dwarf/icons/baglur.png"
																											)
																											end},
																											"dwarf/icons/durstorn.png"
																										)
																										end},
																										"dwarf/icons/rugnur.png"
																									)
																									end},
																									"dwarf/icons/durstorn.png"
																								)
																								end},
																								"dwarf/icons/rugnur.png"
																								)
																							end},
																							"dwarf/icons/dwarven_scout.png"
																						)
																						end},
																						"dwarf/icons/rugnur.png"
																					)
																					end},
																					"dwarf/icons/dwarven_steelclad.png"
																				)
																				end},
																				"dwarf/icons/baglur.png"
																			)
																			end},
																			"dwarf/icons/durstorn.png"
																		)
																		end},
																		"dwarf/icons/rugnur.png"
																	)
																	end},
																	"dwarf/icons/durstorn.png"
																)
																end},
																"dwarf/icons/rugnur.png"
															)
															end},
															"dwarf/icons/durstorn.png"
														)
														end},
														"dwarf/icons/dwarven_steelclad.png"
													)
													end},
													"dwarf/icons/durstorn.png"
												)
												end},
												"dwarf/icons/dwarven_scout.png"
											)
											end},
											"dwarf/icons/durstorn.png"
										)
										end}
									)
									end},
									"dwarf/icons/rugnur.png"
								)
								end},
								"dwarf/icons/baglur.png"
							)
							end},
							"dwarf/icons/dwarven_steelclad.png"
						)
						end},
						"dwarf/icons/baglur.png"
					)
					end},
					"dwarf/icons/rugnur.png"
				)
				return false
			end
		)
		return false
	end
)
end

-- If Baglur dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetThisPlayer(), "- Have one unit standing on each glyph at the same time") or PlayerHasObjective(GetThisPlayer(), "- Find Thursagan and bring him to your Mead Hall")) and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-baglur") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		if (mapinfo.description == "Caverns of Chaincolt" or mapinfo.description == "Northern Wastelands") then
			ActionDefeat()
		end
		return false
	end
)

if (mapinfo.description == "Northern Wastelands") then
-- Searching for the Runecrafter initial dialogue
-- based on the Searching for the Runecrafter scenario of the Sceptre of Fire campaign from Battle for Wesnoth
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Closing the Gates") and GetFactionExists("Thursagan") and PlayerHasObjective(GetThisPlayer(), "- Find Thursagan and bring him to your Mead Hall") == false) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "Name") ~= wyr.preferences.TheScepterOfFireRaiderFaction and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"Gnomish Envoy",
			"Now where are we going, anyway? We have been taking wrong turns and fighting goblins for months. This trip better have a good payoff to be worth that.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Baglur",
				"We need to find the mage Thursagan and convince him to return to the citadel with us. He's somewhere up here.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Rugnur",
					"Well, how are we supposed to find him?",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Baglur",
						"His will probably be the only house up here. No one else is insane enough to live this far north! Even the " .. wyr.preferences.TheScepterOfFireRaiderFaction .. " won't challenge us here.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Gnomish Envoy",
							"Except for goblins, right? They live in the far northlands. They're probably lurking around here somewhere.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Baglur",
								"Right. We'll probably have to fight our way through to his house.",
								player,
								{"~!Continue"},
								{function(s)
									unit = CreateUnit("unit-gnomish-recruit", 0, {8, 60}) -- gnomish envoy
									IncreaseUnitLevel(unit, 1, true)
									if (mapinfo.description == "Northern Wastelands") then
										RemovePlayerObjective(player, "- Destroy the enemy")
									end
									AddPlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
									AddPlayerObjective(player, "- Rugnur, Baglur, Thursagan and the gnomish envoy must survive")
								end},
								"dwarf/icons/baglur.png"
							)
							end},
							"gnome/icons/gnomish_recruit.png"
						)
						end},
						"dwarf/icons/baglur.png"
					)
					end},
					"dwarf/icons/rugnur.png"
				)
				end},
				"dwarf/icons/baglur.png"
			)
			end},
			"gnome/icons/gnomish_recruit.png"
		)

		AddTrigger(
			function()
				if (GameCycle > 5000) then
					return true
				end
				return false
			end,
			function()
				NorthernWastelandsEnemy(17, 23)
				NorthernWastelandsEnemy(33, 46)
				NorthernWastelandsEnemy(50, 68)
				return false
			end
		)

		AddTrigger(
			function()
				if (GameCycle > 15000) then
					return true
				end
				return false
			end,
			function()
				NorthernWastelandsEnemy(30, 14)
				NorthernWastelandsEnemy(50, 16)
				return false
			end
		)

		-- move gryphon riders nearer to Rugnur's base when someone from Rugnur's side steps near enough them
		AddTrigger(
			function()
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Gryphon Riders"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-gryphon-rider") then
						local unit_quantity = GetNumUnitsAt(GetThisPlayer(), "units", {8 - 4, 53 - 4}, {8 + 4, 53 + 4})
						if (unit_quantity > 0) then
							player = GetThisPlayer()
							return true
						end
					end
				end
				return false
			end,
			function()
				OrderUnit(GetFactionPlayer("Gryphon Riders"), "unit-dwarven-gryphon-rider", {2, 35}, {8, 53}, "move")
				return false
			end
		)
		
		-- Find Gryphon Riders
		AddTrigger(
			function()
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Gryphon Riders"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-gryphon-rider") then
						local unit_quantity = GetNumUnitsAt(GetThisPlayer(), "units", {GetUnitVariable(uncount[unit1],"PosX") - 6, GetUnitVariable(uncount[unit1],"PosY") - 6}, {GetUnitVariable(uncount[unit1],"PosX") + 6, GetUnitVariable(uncount[unit1],"PosY") + 6})
						if (unit_quantity > 0) then
							player = GetThisPlayer()
							return true
						end
					end
				end
				return false
			end,
			function()
				Event(
					"Gryphon Rider",
					"We'd like to speak with ye.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Gnomish Envoy",
						"Aah! What is that?!",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Baglur",
							"Is that... is that a gryphon?",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Gryphon Rider",
								"Aye. Will ye speak with us now?",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Rugnur",
									"What do ye want, gryphon rider?",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Gryphon Rider",
										"Are ye looking for a runemaster?",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Rugnur",
											"Well, um, aye. Why, can ye help us?",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Gryphon Rider",
												"Aye. If ye kill the goblins, we'll help ye.",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Baglur",
													"Sure, we'll help ye fight goblins.",
													player,
													{"~!Continue"},
													{function(s)
														OrderUnit(GetFactionPlayer("Gryphon Riders"), "unit-dwarven-gryphon-rider", {0, 34}, {6, 52}, "move")
													end},
													"dwarf/icons/baglur.png"
												)
												end},
												"dwarf/icons/gryphon_rider.png"
											)
											end},
											"dwarf/icons/rugnur.png"
										)
										end},
										"dwarf/icons/gryphon_rider.png"
									)
									end},
									"dwarf/icons/rugnur.png"
								)
								end},
								"dwarf/icons/gryphon_rider.png"
							)
							end},
							"dwarf/icons/baglur.png"
						)
						end},
						"gnome/icons/gnomish_recruit.png"
					)
					end},
					"dwarf/icons/gryphon_rider.png"
				)
				return false
			end
		)
		
		-- if Thursagan's smithy is found by a gryphon rider
		AddTrigger(
			function()
				for i=0,14 do
					if (PlayerHasObjective(i, "- Find Thursagan and bring him to your Mead Hall") and IfNearUnit(i, ">=", 1, "units", "unit-dwarven-blacksmith")) then
						local uncount = 0
						uncount = GetUnits(GetFactionPlayer("Thursagan"))
						for unit1 = 1,table.getn(uncount) do 
							if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-blacksmith") then
								if (GetNumUnitsAt(i, "unit-dwarven-gryphon-rider", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4}) > 0) then
									player = i
									return true
								end
							end
						end
					end
				end
				return false
			end,
			function()
				Event(
					"Thursagan",
					"Go away, ye birds! Or I shall burn ye out of the air!",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Baglur",
						"He doesn't want to talk to the gryphon riders, apparently. I think we'll have to get someone there he will talk to...",
						player,
						{"~!Continue"},
						{function(s)
						end},
						"dwarf/icons/baglur.png"
					)
					end},
					"dwarf/icons/thursagan.png"
				)
				return false
			end
		)

		-- if Thursagan's smithy is found by a non-gryphon rider
		AddTrigger(
			function()
				for i=0,14 do
					if (PlayerHasObjective(i, "- Find Thursagan and bring him to your Mead Hall") and IfNearUnit(i, ">=", 1, "units", "unit-dwarven-blacksmith")) then
						local uncount = 0
						uncount = GetUnits(GetFactionPlayer("Thursagan"))
						for unit1 = 1,table.getn(uncount) do 
							if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-blacksmith") then
								if ((GetNumUnitsAt(i, "units", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4}) - GetNumUnitsAt(i, "unit-dwarven-gryphon-rider", {GetUnitVariable(uncount[unit1],"PosX") - 1, GetUnitVariable(uncount[unit1],"PosY") - 1}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4})) > 0) then
									player = i
									return true
								end
							end
						end
					end
				end
				return false
			end,
			function()
				unit = CreateUnit("unit-hero-thursagan", player, {Players[GetFactionPlayer("Thursagan")].StartPos.x, Players[GetFactionPlayer("Thursagan")].StartPos.y})
				Event(
					"Thursagan",
					"What do ye people want?! Leave me alone!",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Rugnur",
						"Old sage, we come with a message from Lord Durstorn. He asks ye to come back to the city.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Thursagan",
							"Ha! That fool thinks he can order me around. Why does he want me to go back, anyway?",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Baglur",
								"We have entered into a bargain with a gnomish king to craft a scepter for him.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Thursagan",
									"Oh, and now I suppose Durstorn wants me to craft it, eh? Well I'm not going to.",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Rugnur",
										"Ye don't want to make a scepter imbued with the mighty ruby of fire? Very well, yer choice is made.",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Thursagan",
											"The ruby of fire, what is that, some worthless gnomish gem?",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Baglur",
												"It is a gnomish gem, but it is also supposedly the most flawless precious stone ever seen.",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Thursagan",
													"Oh, really? And what does the gnomish king want us to do with it?",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														"Rugnur",
														"Cut it and insert it into a scepter, creating a powerful symbol of the gnomish monarchy.",
														player,
														{"~!Continue"},
														{function(s)
														Event(
															"Thursagan",
															"I see. Fine then, I will help you craft this scepter... into the greatest artifact ever seen. This will be a true test of my skill. I expect it will take many years.",
															player,
															{"~!Continue"},
															{function(s)
															Event(
																"Baglur",
																"Good. Now, there are still wild animals and goblins here... We have to get back into the caves.",
																player,
																{"~!Continue"},
																{function(s)
																	PlayMusic("music/knolls.ogg")
																	NorthernWastelandsEnemy(32, 69)
																	NorthernWastelandsEnemy(2, 47)
																	NorthernWastelandsEnemy(52, 47)
																	NorthernWastelandsEnemy(2, 33)
																	AddTrigger(
																		function()
																			if (PlayerHasObjective(GetThisPlayer(), "- Find Thursagan and bring him to your Mead Hall") and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-hero-thursagan") < 1) then
																				player = GetThisPlayer()
																				return true
																			end
																			return false
																		end,
																		function() 
																			RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
																			if (mapinfo.description == "Northern Wastelands") then
																				ActionDefeat()
																			end
																			return false
																		end
																	)
																end},
																"dwarf/icons/baglur.png"
															)
															end},
															"dwarf/icons/thursagan.png"
														)
														end},
														"dwarf/icons/rugnur.png"
													)
													end},
													"dwarf/icons/thursagan.png"
												)
												end},
												"dwarf/icons/baglur.png"
											)
											end},
											"dwarf/icons/thursagan.png"
										)
										end},
										"dwarf/icons/rugnur.png"
									)
									end},
									"dwarf/icons/thursagan.png"
								)
								end},
								"dwarf/icons/baglur.png"
							)
							end},
							"dwarf/icons/thursagan.png"
						)
						end},
						"dwarf/icons/rugnur.png"
					)
					end},
					"dwarf/icons/thursagan.png"
				)

				AddTrigger(
					function()
						for i=0,14 do
							if (PlayerHasObjective(i, "- Find Thursagan and bring him to your Mead Hall") and IfNearUnit(i, ">=", 1, "unit-hero-thursagan", "unit-dwarven-town-hall")) then
								player = i
								return true
							end
						end
						return false
					end,
					function()
						Event(
							"Thursagan",
							"Well, now we are near the caves again! Come on, back south, to the city.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"",
								"(Later in the dwarven city...)",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Rugnur",
									"Lord Durstorn, we have succeeded in our mission. Thursagan is here.",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Durstorn",
										"What? Ye mean ye found Thursagan and got him to return with ye? Astounding!",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Baglur",
											"Aye, we did.",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Thursagan",
												"Now, where is this ruby that I am to work with, eh Durstorn?",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Durstorn",
													"In the treasury. And leave it there until ye're ready to work with it - I still don't trust ye.",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														"Thursagan",
														"Ha! ~<Ye~> don't trust ~<me~>?",
														player,
														{"~!Continue"},
														{function(s)
														Event(
															"Durstorn",
															"Exactly! Why would I? And I order ye to stay out of the treasury, away from that ruby!",
															player,
															{"~!Continue"},
															{function(s)
															Event(
																"Thursagan",
																"Ye don't dictate what I am to do, Durstorn! I will do as I please, and don't stop me if ye want me to make this scepter.",
																player,
																{"~!Continue"},
																{function(s)
																Event(
																	"Durstorn",
																	"The ruby is mine, and don't touch it!",
																	player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		"Rugnur",
																		"Uh, technically it's Pypo's, and I think that if Thursagan needs to see it to plan this scepter, we must allow it.",
																		player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			"Durstorn",
																			"It will be as it must, then. (~<Grumble~> ~<grumble~>)",
																			player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				"Thursagan",
																				"Hm... a most interesting jewel. I will start drawing up plans for the scepter immediately.",
																				player,
																				{"~!Continue"},
																				{function(s)
																				Event(
																					"Thursagan",
																					"Now, I will need certain materials to make this scepter.",
																					player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						"Durstorn",
																						"Oh, what?",
																						player,
																						{"~!Continue"},
																						{function(s)
																						Event(
																							"Thursagan",
																							"I would say probably ten stone of artifact-quality gold and twenty stone of the finest coal, and many of the finest jewels in the land - we'll need others to search for those, though. I'll also need to have the jeweler cut the ruby once I have the plans done.",
																							player,
																							{"~!Continue"},
																							{function(s)
																							Event(
																								"Durstorn",
																								"Just use my gold and coal, I have enough! Or, if they're not 'good enough' for ye, find them yerself.",
																								player,
																								{"~!Continue"},
																								{function(s)
																								Event(
																									"Thursagan",
																									"Ye try my patience, Durstorn. Ye know yers aren't acceptable, but ye have to give me something or I can't make the scepter!",
																									player,
																									{"~!Continue"},
																									{function(s)
																									Event(
																										"Baglur",
																										"Wait, wait. The gold and coal... I think we can find those in the abandoned eastern mines. Goblins ha' overrun them, but earlier they were the source of the finest smithing materials.",
																										player,
																										{"~!Continue"},
																										{function(s)
																										Event(
																											"Rugnur",
																											"So, we will go to the eastern mines!",
																											player,
																											{"~!Continue"},
																											{function(s)
																											Event(
																												"Durstorn",
																												"Fine. As for the jewels, I will have others obtain those. That will cost quite a bit of our payment, but it can't be helped. Our people do not mine jewels.",
																												player,
																												{"~!Continue"},
																												{function(s)
																												Event(
																													"Thursagan",
																													"That is acceptable. Durstorn, send some miners along with us to the eastern mines.",
																													player,
																													{"~!Continue"},
																													{function(s)
																														RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
																														if (player == GetThisPlayer()) then
																															if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Searching for the Runecrafter") == false) then
																																table.insert(wyr.preferences.QuestsCompleted, "Searching for the Runecrafter")
																																table.insert(wyr.preferences.TechnologyAcquired, "unit-hero-thursagan")
																															end
																															SavePreferences()
																															if (mapinfo.description == "Northern Wastelands") then
																																NextMap = "maps/eastern-mines.smp"
																																ActionVictory()
																															end
																														end
																													end},
																													"dwarf/icons/thursagan.png"
																												)
																												end},
																												"dwarf/icons/durstorn.png"
																											)
																											end},
																											"dwarf/icons/rugnur.png"
																										)
																										end},
																										"dwarf/icons/baglur.png"
																									)
																									end},
																									"dwarf/icons/thursagan.png"
																								)
																								end},
																								"dwarf/icons/durstorn.png"
																							)
																							end},
																							"dwarf/icons/thursagan.png"
																						)
																						end},
																						"dwarf/icons/durstorn.png"
																					)
																					end},
																					"dwarf/icons/thursagan.png"
																				)
																				end},
																				"dwarf/icons/thursagan.png"
																			)
																			end},
																			"dwarf/icons/durstorn.png"
																		)
																		end},
																		"dwarf/icons/rugnur.png"
																	)
																	end},
																	"dwarf/icons/durstorn.png"
																)
																end},
																"dwarf/icons/thursagan.png"
															)
															end},
															"dwarf/icons/durstorn.png"
														)
														end},
														"dwarf/icons/thursagan.png"
													)
													end},
													"dwarf/icons/durstorn.png"
												)
												end},
												"dwarf/icons/thursagan.png"
											)
											end},
											"dwarf/icons/baglur.png"
										)
										end},
										"dwarf/icons/durstorn.png"
									)
									end},
									"dwarf/icons/rugnur.png"
								)
								end}
							)
							end},
							"dwarf/icons/thursagan.png"
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

if (mapinfo.description == "Eastern Mines") then
-- Gathering Materials initial dialogue
-- based on the Gathering Materials scenario of the Sceptre of Fire campaign from Battle for Wesnoth

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Searching for the Runecrafter") and PlayerHasObjective(GetThisPlayer(), "- Mine 10000 gold and 20000 coal") == false and GetNumUnitsAt(-1, "unit-gold-mine", {0, 0}, {256, 256}) >= 1 and GetNumUnitsAt(-1, "unit-coal-mine", {0, 0}, {256, 256}) >= 2) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "Name") ~= wyr.preferences.TheScepterOfFireRaiderFaction and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-thursagan") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"Rugnur",
			"Well, these are the eastern mines. Goblins live here, be prepared to fight them; also be prepared to spend quite some time here - mining can take a while.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Thursagan",
				"For me to make the artifact Pypo wants, I need a special type of gold. I do not know where it was found, but Baglur said these mines were the source of it.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Baglur",
					"Also, the only coal that wi' melt this gold is here.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Rugnur",
						"So we're down here to, what, mine this gold and coal? That should be easy enough.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Thursagan",
							"Aye, although we will have to hire the miners - they don't work for free. But beware, there are goblins and such down here...",
							player,
							{"~!Continue"},
							{function(s)
								if (mapinfo.description == "Eastern Mines") then
									RemovePlayerObjective(player, "- Destroy the enemy")
								end
								AddPlayerObjective(player, "- Mine 10000 gold and 20000 coal")
								AddPlayerObjective(player, "- Rugnur, Baglur and Thursagan must survive")
							end},
							"dwarf/icons/thursagan.png"
						)
						end},
						"dwarf/icons/rugnur.png"
					)
					end},
					"dwarf/icons/baglur.png"
				)
				end},
				"dwarf/icons/thursagan.png"
			)
			end},
			"dwarf/icons/rugnur.png"
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle > 3000) then
			for i=0,14 do
				if (PlayerHasObjective(i, "- Mine 10000 gold and 20000 coal")) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function()
		if (GetPlayerData(player, "UnitTypesCount", "unit-dwarven-miner") < 1) then
			Event(
				"Thursagan",
				"Don't forget to recruit the miners. Our warriors can clear the tunnels of goblins and worse, but once we find the gold and coal we need the miners to acquire it.",
				player,
				{"~!Continue"},
				{function(s)
				end},
				"dwarf/icons/thursagan.png"
			)
		end
		return false
	end
)

-- coal found
AddTrigger(
	function()
		local uncount = 0
		uncount = GetUnits(15)
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-coal-mine") then
				local unit_quantity = GetNumUnitsAt(GetThisPlayer(), "units", {GetUnitVariable(uncount[unit1],"PosX") - 6, GetUnitVariable(uncount[unit1],"PosY") - 6}, {GetUnitVariable(uncount[unit1],"PosX") + 6, GetUnitVariable(uncount[unit1],"PosY") + 6})
				if (unit_quantity > 0) then
					player = GetThisPlayer()
					return true
				end
			end
		end
		return false
	end,
	function()
		Event(
			"Rugnur",
			"Here is some of the coal that we need! Bring the miners to take it!",
			player,
			{"~!Continue"},
			{function(s)
			end},
			"dwarf/icons/rugnur.png"
		)
		return false
	end
)

-- gold found
AddTrigger(
	function()
		local uncount = 0
		uncount = GetUnits(15)
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gold-mine") then
				local unit_quantity = GetNumUnitsAt(GetThisPlayer(), "units", {GetUnitVariable(uncount[unit1],"PosX") - 6, GetUnitVariable(uncount[unit1],"PosY") - 6}, {GetUnitVariable(uncount[unit1],"PosX") + 6, GetUnitVariable(uncount[unit1],"PosY") + 6})
				if (unit_quantity > 0) then
					player = GetThisPlayer()
					return true
				end
			end
		end
		return false
	end,
	function()
		Event(
			"Rugnur",
			"Here is a mine of the precious gold! Send the miners this way.",
			player,
			{"~!Continue"},
			{function(s)
			end},
			"dwarf/icons/rugnur.png"
		)
		return false
	end
)

AddTrigger(
	function()
		for i=0,14 do
			if (PlayerHasObjective(i, "- Mine 10000 gold and 20000 coal") and GetPlayerData(i, "Resources", "coal") >= 20000) then
				player = i
				return true
			end
		end
		return false
	end,
	function()
		Event(
			"Rugnur",
			"That's the last load of coal we need.",
			player,
			{"~!Continue"},
			{function(s)
				if (GetPlayerData(i, "Resources", "gold") >= 10000) then
					Event(
						"Thursagan",
						"This is all we need from these mines. Now we should go back further west, where there are no goblins, and mine there.",
						player,
						{"~!Continue"},
						{function(s)
							RemovePlayerObjective(player, "- Mine 10000 gold and 20000 coal")
							if (player == GetThisPlayer()) then
								if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Gathering Materials") == false) then
									table.insert(wyr.preferences.QuestsCompleted, "Gathering Materials")
								end
								SavePreferences()
								if (mapinfo.description == "Eastern Mines") then
--									NextMap = "maps/shorbear-hills.smp"
									ActionVictory()
								end
							end
						end},
						"dwarf/icons/thursagan.png"
					)
				end
			end},
			"dwarf/icons/rugnur.png"
		)
		return false
	end
)

AddTrigger(
	function()
		for i=0,14 do
			if (PlayerHasObjective(i, "- Mine 10000 gold and 20000 coal") and GetPlayerData(i, "Resources", "coal") >= 20000 and GetPlayerData(i, "Resources", "gold") >= 10000) then
				player = i
				return true
			end
		end
		return false
	end,
	function()
		Event(
			"Thursagan",
			"This is all we need from these mines. Now we should go back further west, where there are no goblins, and mine there.",
			player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Mine 10000 gold and 20000 coal")
				if (player == GetThisPlayer()) then
					if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Gathering Materials") == false) then
						table.insert(wyr.preferences.QuestsCompleted, "Gathering Materials")
					end
					SavePreferences()
					if (mapinfo.description == "Eastern Mines") then
--						NextMap = "maps/shorbear-hills.smp"
						ActionVictory()
					end
				end
			end},
			"dwarf/icons/thursagan.png"
		)
	end
)

end
