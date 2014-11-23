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
			if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1 and GetCivilizationExists("gnome") and GetNumRivals(i) >= 2 and not Players[i]:IsEnemy(Players[GetCivilizationPlayer("gnome")]) and GetPlayerData(i, "UnitTypesCount", "unit-gnomish-caravan") < 1) then
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
			"",
			"Ay, the Scepter of Fire. The scepter has a long, glorious, and fearful history. But I am not here to tell you how the jewel within it was obtained by Pypo I. Nor will I tell the story of Rubezahl I, king of Untersberg by virtue of the Scepter.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"I am here to tell you of its making. Of its crafting, deep in the caverns of dwarfdom. And of the dwarves who made it; for they were great, they were. They are counted among the greatest of the heroes of ancient Knalga.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"",
					"Our story begins in a small border outpost in the southern hills of Knalga, with a young dwarf, named Rugnur, in charge of it. And with the gnomish king of Untersberg, Pypo I, riding up the road from the Brown Hills with an army behind him...",
					player,
					{"~!Continue"},
					{function(s)
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
							{"~!Listen to him", "~!Up axes! (Forego Quest)"},
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
																			{"~!Discuss his offer", "~!No deal (Forego Quest)"},
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
																														if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
																															-- if human-controlled player is Shinsplitter Clan, then tell the caravans to move
																															OrderUnit(player, "unit-gnomish-recruit", {GetUnitVariable(unit,"PosX"), GetUnitVariable(unit,"PosY")}, {47, 8}, "move")
																														end
																														unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																														if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
																															-- if human-controlled player is Shinsplitter Clan, then tell the caravans to move
																															OrderUnit(player, "unit-gnomish-caravan", {GetUnitVariable(unit,"PosX"), GetUnitVariable(unit,"PosY")}, {47, 8}, "move")
																														end
																														unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																														if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
																															-- if human-controlled player is Shinsplitter Clan, then tell the caravans to move
																															OrderUnit(player, "unit-gnomish-caravan", {GetUnitVariable(unit,"PosX"), GetUnitVariable(unit,"PosY")}, {47, 8}, "move")
																														end
																														unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																														if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
																															-- if human-controlled player is Shinsplitter Clan, then tell the caravans to move
																															OrderUnit(player, "unit-gnomish-caravan", {GetUnitVariable(unit,"PosX"), GetUnitVariable(unit,"PosY")}, {47, 8}, "move")
																														end
																														unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																														if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
																															-- if human-controlled player is Shinsplitter Clan, then tell the caravans to move
																															OrderUnit(player, "unit-gnomish-caravan", {GetUnitVariable(unit,"PosX"), GetUnitVariable(unit,"PosY")}, {47, 8}, "move")
																														end
																														if (mapinfo.description == "Chaincolt Foothills") then
																															ChangeUnitsOwner({6, 65}, {6 + 1, 65 + 1}, gnomish_monarch_player, 0)
																															RemovePlayerObjective(player, "- Destroy the enemy")
																														end
																														SetDiplomacy(gnomish_monarch_player, "allied", player)
																														SetSharedVision(gnomish_monarch_player, true, player)
																														SetDiplomacy(player, "allied", gnomish_monarch_player)
																														SetSharedVision(player, true, gnomish_monarch_player)
																														AddPlayerObjective(player, "- Bring the Gnomish caravans and the envoy to your Mead Hall")
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
																				if (GrandStrategy) then -- if is grand strategy, end map now if no agreement was reached
																					ActionDraw()
																				end
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

								Players[GetFactionPlayer("Shinsplitter Clan")].Type = PlayerNeutral

								KillUnitAt("unit-revealer", player, 1, {0, 0}, {256, 256})
								if (GrandStrategy) then -- if is grand strategy, begin war between Norlund Clan and Untersberg if Rugnur decided to attack the gnomish monarch
									Factions.NorlundClan.Diplomacy.Untersberg = "War"
									Factions.Untersberg.Diplomacy.NorlundClan = "War"
								end
							end},
							"gnome/icons/gnomish_recruit.png"
						)
						end},
						"dwarf/icons/rugnur.png"
					)
					end}
				)
				end}
			)
			end}
		)

		-- Follow-up of the A Bargain is Struck initial dialogue
		AddTrigger(
			function()
				if (GameCycle == 0) then
					return false
				end
				for i=0,14 do
					if (PlayerHasObjective(i, "- Bring the Gnomish caravans and the envoy to your Mead Hall")) then
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
				SavePreferences()
				unit = CreateUnit("unit-revealer", player, {Players[bandit_player].StartPos.x, Players[bandit_player].StartPos.y})
				
				local raider_leader_name = ""
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad") then
						raider_leader_name = GetUnitVariable(uncount[unit1], "Name")
					end
				end
				
				local event_player = player
				if (GetThisPlayer() == bandit_player) then
					event_player = bandit_player
				end
				Event(
					"Gnomish Envoy",
					"That's right. I'll be coming over along with the silver.",
					event_player,
					{"~!Continue"},
					{function(s)
					Event(
						raider_leader_name,
						"Hey! Ye can't do that - this road belongs to the Shinsplitter Clan. We're not letting ye transport gold and jewels on it without paying a toll.",
						event_player,
						{"~!Continue"},
						{function(s)
						Event(
							"Rugnur",
							"What are ye talking about?! This road has always been open to all.",
							event_player,
							{"~!Continue"},
							{function(s)
							Event(
								raider_leader_name,
								"Aye, we have allowed people to use it, but it is our road.",
								event_player,
								{"~!Continue"},
								{function(s)
								Event(
									"Rugnur",
									"Not true! This is Norlund land; if anything, it's our road!",
									event_player,
									{"~!Continue"},
									{function(s)
									Event(
										raider_leader_name,
										"Nevertheless, if ye try to move yer caravans here ye have to pay the toll, or face our wrath!",
										event_player,
										{"~!Continue"},
										{function(s)
										Event(
											"Rugnur",
											"Very well. I have no problem with slaying ye if ye stand in our way. I advise ye to leave the shipment alone, but not doing so is yer choice.",
											event_player,
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
												if (GrandStrategy == false) then
													unit = CreateUnit("unit-dwarven-axefighter", second_bandit_player, {bandit_x, bandit_y})
													unit = CreateUnit("unit-dwarven-axefighter", second_bandit_player, {bandit_x, bandit_y})
													unit = CreateUnit("unit-dwarven-axefighter", second_bandit_player, {bandit_x, bandit_y})

													unit = CreateUnit("unit-dwarven-axefighter", second_bandit_player, {(Players[bandit_player].StartPos.x + Players[player].StartPos.x) / 2, (Players[bandit_player].StartPos.y + Players[player].StartPos.y) / 2})
												end

												SetPlayerData(second_bandit_player, "Name", "Raiders")

												SetDiplomacy(second_bandit_player, "neutral", gnomish_monarch_player)
												SetDiplomacy(gnomish_monarch_player, "neutral", second_bandit_player)
												SetDiplomacy(second_bandit_player, "enemy", player)
												SetDiplomacy(player, "enemy", second_bandit_player)
												SetDiplomacy(bandit_player, "allied", second_bandit_player)
												SetDiplomacy(second_bandit_player, "allied", bandit_player)
												KillUnitAt("unit-revealer", player, 2, {0, 0}, {256, 256})
												if (GrandStrategy) then
													Factions.NorlundClan.Diplomacy.ShinsplitterClan = "War" -- if is grand strategy, begin war between Norlund Clan and Shinsplitter Clan
													Factions.ShinsplitterClan.Diplomacy.NorlundClan = "War"
													Factions.Untersberg.Gold = Factions.Untersberg.Gold - 2500 -- decrease gnomish treasury by 5000 silver (considering for our purposes silver to be worth half as much as gold)
												end
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

				return false
			end
		)
		return false
	end
)

-- The Gnomish Envoy arrives with the stone
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		for i=0,14 do
			if (PlayerHasObjective(i, "- Bring the Gnomish caravans and the envoy to your Mead Hall") and GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and IfNearUnit(i, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-town-hall") and IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-recruit")) then
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
							RemovePlayerObjective(player, "- Bring the Gnomish caravans and the envoy to your Mead Hall")
							if (player == GetThisPlayer() and GrandStrategy == false) then
								if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == false) then
									table.insert(wyr.preferences.QuestsCompleted, "A Bargain is Struck")
								end
								SavePreferences()
							end
							if (mapinfo.description == "Chaincolt Foothills") then
								if (GrandStrategy == false) then
									NextMap = "maps/nidavellir/caverns-of-chaincolt.smp"
								end
								if (GetThisPlayer() == GetFactionPlayer("Norlund Clan")) then
									ActionVictory()
								else
									ActionDefeat()
								end
								if (GrandStrategy) then -- if is grand strategy, begin war between Norlund Clan and Shinsplitter Clan
									Factions.NorlundClan.Gold = Factions.NorlundClan.Gold + 2500 -- 5000 silver, and for our purposes silver is considered to be worth half of what gold is
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
			if (PlayerHasObjective(i, "- Bring the Gnomish caravans and the envoy to your Mead Hall") and GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and IfNearUnit(i, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-town-hall") and IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-caravan")) then
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
					RemovePlayerObjective(player, "- Bring the Gnomish caravans and the envoy to your Mead Hall")
					if (player == GetThisPlayer() and GrandStrategy == false) then
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "A Bargain is Struck")
						end
						SavePreferences()
					end
					if (mapinfo.description == "Chaincolt Foothills") then
						if (GrandStrategy == false) then
							NextMap = "maps/nidavellir/caverns-of-chaincolt.smp"
						end
						if (GetThisPlayer() == GetFactionPlayer("Norlund Clan")) then
							ActionVictory()
						else
							ActionDefeat()
						end
						if (GrandStrategy) then -- if is grand strategy, begin war between Norlund Clan and Shinsplitter Clan
							Factions.NorlundClan.Gold = Factions.NorlundClan.Gold + 2500 -- 5000 silver, and for our purposes silver is considered to be worth half of what gold is
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
			if ((SyncRand(100) + 1) <= 10 and PlayerHasObjective(i, "- Bring the Gnomish caravans and the envoy to your Mead Hall") and GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and IfNearUnit(i, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-town-hall") and IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-caravan") and IfNearUnit(i, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-town-hall") and IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-recruit")) then
				player = i
				return true
			end
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Bring the Gnomish caravans and the envoy to your Mead Hall")
		if (player == GetThisPlayer() and GrandStrategy == false) then
			if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == false) then
				table.insert(wyr.preferences.QuestsCompleted, "A Bargain is Struck")
			end
			SavePreferences()
		end
		if (mapinfo.description == "Chaincolt Foothills") then
			if (GrandStrategy == false) then
				NextMap = "maps/nidavellir/caverns-of-chaincolt.smp"
			end
			if (GetThisPlayer() == GetFactionPlayer("Norlund Clan")) then
				ActionVictory()
			else
				ActionDefeat()
			end
			if (GrandStrategy) then -- if is grand strategy, begin war between Norlund Clan and Shinsplitter Clan
				Factions.NorlundClan.Gold = Factions.NorlundClan.Gold + 2500 -- 5000 silver, and for our purposes silver is considered to be worth half of what gold is
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
			if (PlayerHasObjective(i, "- Bring the Gnomish caravans and the envoy to your Mead Hall") and GetPlayerData(i, "UnitTypesCount", "unit-gnomish-caravan") < 4) then
				player = i
				return true
			end
		end
		return false
	end,
	function() 
		local event_player = player
		if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
			event_player = GetFactionPlayer("Shinsplitter Clan")
		end
		Event(
			"Pypo I",
			"You just let a caravan, with ~<my~> money loaded in it, get captured! If I can't trust you to keep my property secure, the deal's off.",
			event_player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Bring the Gnomish caravans and the envoy to your Mead Hall")
				if (mapinfo.description == "Chaincolt Foothills") then
					if (GetThisPlayer() == player) then
						ActionDefeat()
					end
				end
			end},
			"gnome/icons/gnomish_recruit.png"
		)
		return false
	end
)

-- If all caravans have been destroyed, then the raiders win, if they are human-controlled
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-gnomish-caravan") == 0) then
			return true
		end
		return false
	end,
	function() 
		if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
			if (GrandStrategy) then
				Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500 -- give the funds for Shinsplitter Clan if they managed to successfully stop the shipment
			end
			ActionVictory()
		end
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
		if ((PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Bring the Gnomish caravans and the envoy to your Mead Hall") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have one unit standing on each glyph at the same time") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Find Thursagan and bring him to your Mead Hall") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 gold and 20000 coal") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves while no enemies are in the caves") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")) and (GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-rugnur-thane")) < 1) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Bring the Gnomish caravans and the envoy to your Mead Hall")
		RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Mine 10000 gold and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
		if (mapinfo.description == "Chaincolt Foothills" or mapinfo.description == "Caverns of Chaincolt" or mapinfo.description == "Northern Wastelands" or mapinfo.description == "Eastern Mines" or mapinfo.description == "Shorbear Hills" or mapinfo.description == "Svafnir's Lair" or mapinfo.description == "Caverns of Flame") then
			if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
				ActionDefeat()
				if (GrandStrategy) then
					if (PlayerHasObjective(GetThisPlayer(), "- Bring the Gnomish caravans and the envoy to your Mead Hall")) then
						Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500 -- give the funds for Shinsplitter Clan if they managed to successfully stop the shipment
					end
					if (PlayerHasObjective(GetThisPlayer(), "- Have one unit standing on each glyph at the same time")) then
						Factions.NorlundClan.Gold = Factions.NorlundClan.Gold - 2500
						Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500
						-- if defenses have been breached, then the Shinsplitter Clan conquers the province
						WorldMapProvinces.CavernsOfChaincolt.Units.GnomishRecruit = 0 -- kill off the gnomish envoy if the province has been conquered
						AcquireProvince(WorldMapProvinces.CavernsOfChaincolt, "Shinsplitter Clan")
					end
				end
			end
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
		if ((PlayerHasObjective(GetThisPlayer(), "- Bring the Gnomish caravans and the envoy to your Mead Hall") or PlayerHasObjective(GetThisPlayer(), "- Find Thursagan and bring him to your Mead Hall") or PlayerHasObjective(GetThisPlayer(), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetThisPlayer(), "- Have all heroes in the Shorbear caves while no enemies are in the caves") or PlayerHasObjective(GetThisPlayer(), "- Move the Gnomish Envoy to the southern border east of the river")) and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-gnomish-recruit") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Bring the Gnomish caravans and the envoy to your Mead Hall")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
		if (mapinfo.description == "Chaincolt Foothills" or mapinfo.description == "Northern Wastelands" or mapinfo.description == "Shorbear Hills") then
			ActionDefeat()
			if (GrandStrategy and PlayerHasObjective(GetThisPlayer(), "- Bring the Gnomish caravans and the envoy to your Mead Hall")) then
				Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500 -- give the funds for Shinsplitter Clan if they managed to successfully stop the shipment
			end
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
--			if (PlayerHasObjective(i, "- Bring the Gnomish caravans and the envoy to your Mead Hall") and GetPlayerData(GetCivilizationPlayer("gnome"), "UnitTypesCount", "unit-gnomish-recruit") < 1) then
--				player = i
--				return true
--			end
--		end
--		return false
--	end,
--	function() 
--		RemovePlayerObjective(player, "- Bring the Gnomish caravans and the envoy to your Mead Hall")
--		if (mapinfo.description == "Chaincolt Foothills") then
--			ActionDefeat()
--			if (GrandStrategy and PlayerHasObjective(GetThisPlayer(), "- Bring the Gnomish caravans and the envoy to your Mead Hall")) then
--				Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500 -- give the funds for Shinsplitter Clan if they managed to successfully stop the shipment
--			end
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
		if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") and GetFactionExists("Shinsplitter Clan")) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "Name") ~= "Shinsplitter Clan" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur-thane") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1 and GetPlayerData(15, "UnitTypesCount", "unit-glyph") >= 6) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		local event_player = player
		if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
			event_player = GetFactionPlayer("Shinsplitter Clan")
		end

		local closing_the_gates_raider_leader_name = ""
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad") then
				closing_the_gates_raider_leader_name = GetUnitVariable(uncount[unit1], "Name")
			end
		end

		unit = CreateUnit("unit-revealer", player, {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y})
		Event(
			"",
			"Next in our story, Rugnur retreated into the caves of Knalga. But the Shinsplitters pressed on, and would enter the caves shortly.",
			event_player,
			{"~!Continue"},
			{function(s)
			Event(
				"Rugnur",
				"These Shinsplitter raiders are right behind me! We have to go warn the council of this attack...!",
				event_player,
				{"~!Continue"},
				{function(s)
				Event(
					"Gnomish Envoy",
					"Here - I'll go warn the council. You stay here and fight.",
					event_player,
					{"~!Continue"},
					{function(s)
					Event(
						"Rugnur",
						"Aye, that sounds good. I'll stay here and try to defend the gates...",
						event_player,
						{"~!Continue"},
						{function(s)
						Event(
							closing_the_gates_raider_leader_name,
							"I see ye have sent a messenger to the city. Good idea, but will it really help? We have more troops and more provisions, and we are going to enter those caves and kill ye!",
							event_player,
							{"~!Continue"},
							{function(s)
							Event(
								"Rugnur",
								"(~<Gulp~>)",
								event_player,
								{"~!Continue"},
								{function(s)
								Event(
									closing_the_gates_raider_leader_name,
									"Ha! I thought as much. Well then, surrender!",
									event_player,
									{"~!Continue"},
									{function(s)
									Event(
										"Rugnur",
										"Um... on what terms?",
										event_player,
										{"~!Continue"},
										{function(s)
										Event(
											closing_the_gates_raider_leader_name,
											"Unconditional.",
											event_player,
											{"~!Continue"},
											{function(s)
											Event(
												"Baglur",
												"Wait! Rugnur, dinna' they tell ye ~<anything~> when ye took command here?!",
												event_player,
												{"~!Continue"},
												{function(s)
												Event(
													"Rugnur",
													"Not really. This was supposedly a time of peace. Who are ye?",
													event_player,
													{"~!Continue"},
													{function(s)
													Event(
														"Baglur",
														"Argh! I'm a retired warrior... it looks like I'll ha' to come out and help ye, else we'll be overrun by these damn raiders... Well, listen here. This entrance to the city can be closed. There's a gate. If we can close it, the raiders will no' be able to enter. And ye Shinsplitters; begone from here!",
														event_player,
														{"~!Continue"},
														{function(s)
														local possible_options
														if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
															possible_options = {"~!Listen to Baglur", "~!Surrender (Defeat)"}
														else
															possible_options = {"~!Continue"}
														end
														Event(
															closing_the_gates_raider_leader_name,
															"Cease yer meddling, old dwarf! Rugnur is in charge here, and it is he who will bargain with us.",
															event_player,
															possible_options,
															{function(s)
															Event(
																"Rugnur",
																"Baglur, how do ye close the gates?",
																event_player,
																{"~!Continue"},
																{function(s)
																Event(
																	"Baglur",
																	"Och, well that's the difficulty. It's an impregnable gate, made of thick layers of solid rock. Almost indestructible. But that means it can only be closed by a special mechanism. Ye need to position a warrior on each of the six glyphs. When all are occupied, the gates wi' close. Then the Shinsplitters will be shut out of the caves forever, at least through this entrance.",
																	event_player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		"Rugnur",
																		"Don't we have troops positioned near these glyphs, to unlock them?",
																		event_player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			"Baglur",
																			"Och, well, no. Lately goblins have been more in charge of those caves where the glyphs are than we dwarves have.",
																			event_player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				"Rugnur",
																				"Well, where are they located?",
																				event_player,
																				{"~!Continue"},
																				{function(s)
																				Event(
																					"Baglur",
																					"Two are down a side passage in the northwest, another two are in a similar location in the southeast, and two are right next to the front gate.",
																					event_player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						closing_the_gates_raider_leader_name,
																						"Have ye made up yer mind yet about surrendering? If ye will not give up, prepare for battle!",
																						event_player,
																						{"~!Continue"},
																						{function(s)
																						Event(
																							"Rugnur",
																							"Ye may be more powerful than us, but I doubt even ye can blast through our stonecraft. We refuse - now let's close these gates!",
																							event_player,
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
			end}
		)
		return false
	end
)

-- If there is one unit on each glyph
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		for i=0,14 do
			if (PlayerHasObjective(i, "- Have one unit standing on each glyph at the same time") and GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and GetNumUnitsAt(i, "any", {5, 11}, {5, 11}) > 0 and GetNumUnitsAt(i, "any", {38, 53}, {38, 53}) > 0 and GetNumUnitsAt(i, "any", {28, 33}, {28, 33}) > 0 and GetNumUnitsAt(i, "any", {15, 24}, {15, 24}) > 0 and GetNumUnitsAt(i, "any", {23, 7}, {23, 7}) > 0 and GetNumUnitsAt(i, "any", {51, 43}, {51, 43}) > 0) then
				player = i
				return true
			end
		end
		return false
	end,
	function()
		local event_player = player
		if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
			event_player = GetFactionPlayer("Shinsplitter Clan")
		end

		local closing_the_gates_raider_leader_name = ""
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-steelclad") then
				closing_the_gates_raider_leader_name = GetUnitVariable(uncount[unit1], "Name")
			end
		end
		
		Event(
			"Rugnur",
			"We have everyone positioned on the glyphs! What do we do now?",
			event_player,
			{"~!Continue"},
			{function(s)
			Event(
				"Baglur",
				"Just watch. The gates wi' close very soon. Then the raiders outside - and, unfortunately, our clansfolk who are still out there - wi' become irrelevant.",
				event_player,
				{"~!Continue"},
				{function(s)
				Event(
					closing_the_gates_raider_leader_name,
					"Agh! Well, ye have defeated me for now, but eventually ye will have to exit these caves, to give Pypo back his jewel. And when ye do, we will be ready for ye.",
					event_player,
					{"~!Continue"},
					{function(s)
					Event(
						"Baglur",
						"If that is what ye choose to do, fine, but be prepared to wait for many years.",
						event_player,
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
								"(Later in the dwarven citadel...)",
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
												"The Shinsplitters might want our gold.",
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
																		"I think ye'd better let me explain. King Pypo I of Untersberg came to the gate. Then we had to close it, which took considerable time.",
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
																				"He wanted to make a deal with us. He gave us a magnificent stone, called the 'Ruby of Fire', and told us to make a scepter out of it, to symbolize his power, or something like that. We closed the doors because Shinsplitter raiders were attacking us.",
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
																																			if (player == GetThisPlayer() and GrandStrategy == false) then
																																				if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Closing the Gates") == false) then
																																					table.insert(wyr.preferences.QuestsCompleted, "Closing the Gates")
																																				end
																																				SavePreferences()
																																			end
																																			if (mapinfo.description == "Caverns of Chaincolt") then
																																				if (GrandStrategy == false) then
																																					NextMap = "maps/nidavellir/northern-wastelands.smp"
																																				end
																																				if (GetThisPlayer() == GetFactionPlayer("Norlund Clan")) then
																																					ActionVictory()
																																				else
																																					ActionDefeat()
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

-- If the Norlund Clan's mead hall has been destroyed, then the Shinsplitters manage to get the gold and win
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-dwarven-town-hall") == 0) then
			return true
		end
		return false
	end,
	function() 
		if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
			if (GrandStrategy) then
				Factions.NorlundClan.Gold = Factions.NorlundClan.Gold - 2500
				Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500
				-- if defenses have been breached, then the Shinsplitter Clan conquers the province
				WorldMapProvinces.CavernsOfChaincolt.Units.GnomishRecruit = 0 -- kill off the gnomish envoy if the province has been conquered
				AcquireProvince(WorldMapProvinces.CavernsOfChaincolt, "Shinsplitter Clan")
			end
			ActionVictory()
		else
			ActionDefeat()
		end
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
		if ((PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have one unit standing on each glyph at the same time") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Find Thursagan and bring him to your Mead Hall") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 gold and 20000 coal") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves while no enemies are in the caves") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")) and GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-baglur-thane") < 1) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Mine 10000 gold and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
		if (mapinfo.description == "Caverns of Chaincolt" or mapinfo.description == "Northern Wastelands" or mapinfo.description == "Eastern Mines" or mapinfo.description == "Shorbear Hills" or mapinfo.description == "Svafnir's Lair" or mapinfo.description == "Caverns of Flame") then
			if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
				ActionDefeat()
				if (GrandStrategy) then
					if (PlayerHasObjective(GetThisPlayer(), "- Have one unit standing on each glyph at the same time")) then
						Factions.NorlundClan.Gold = Factions.NorlundClan.Gold - 2500
						Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500
						-- if defenses have been breached, then the Shinsplitter Clan conquers the province
						WorldMapProvinces.CavernsOfChaincolt.Units.GnomishRecruit = 0 -- kill off the gnomish envoy if the province has been conquered
						AcquireProvince(WorldMapProvinces.CavernsOfChaincolt, "Shinsplitter Clan")
					end
				end
			end
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
		if (GetFactionExists("Thursagan") and PlayerHasObjective(GetThisPlayer(), "- Find Thursagan and bring him to your Mead Hall") == false) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "Name") ~= "Shinsplitter Clan" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur-thane") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"",
			"The journey to the far northern wastelands was long and perilous. For the tunnels were winding and treacherous, and the paths were not safe from goblins, or worse. Nevertheless, they did reach the northlands, and began to search for the runesmith named Thursagan - the sage of fire.",
			player,
			{"~!Continue"},
			{function(s)
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
							"His will probably be the only house up here. No one else is insane enough to live this far north! Even the Shinsplitters won't challenge us here.",
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
										if (GrandStrategy == false) then
											unit = CreateUnit("unit-gnomish-recruit", 0, {8, 60}) -- gnomish envoy
											IncreaseUnitLevel(unit, 1, true)
										end
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
			end}
		)

		return false
	end
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
			if (PlayerHasObjective(i, "- Find Thursagan and bring him to your Mead Hall") and IfNearUnit(i, ">=", 1, "units", "unit-dwarven-smith")) then
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Thursagan"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-smith") then
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
			if (PlayerHasObjective(i, "- Find Thursagan and bring him to your Mead Hall") and IfNearUnit(i, ">=", 1, "units", "unit-dwarven-smith")) then
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Thursagan"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-smith") then
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
						"We have entered into a bargain with the king of Untersberg to craft a scepter for him.",
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
													"I see. Fine then, I will help ye craft this scepter... into the greatest artifact ever seen. This will be a true test of my skill. I expect it will take many years.",
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
		return false
	end
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
				"The path back was less dangerous than it was a year earlier. It did not take them so long. So they quickly returned to the dwarven city, with new members to their party.",
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
									"In the treasury. And leave it there until yer ready to work with it - I still don't trust ye.",
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
																						"Wait, wait. The gold and coal... I think we can find those in the abandoned eastern mines, north of the Arkan-thoria. Goblins ha' overrun them, but earlier they were the source of the finest smithing materials.",
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
																										if (player == GetThisPlayer() and GrandStrategy == false) then
																											if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Searching for the Runecrafter") == false) then
																												table.insert(wyr.preferences.QuestsCompleted, "Searching for the Runecrafter")
																											end
																											SavePreferences()
																										end
																										if (mapinfo.description == "Northern Wastelands" and player == GetFactionPlayer("Norlund Clan")) then
																											if (GrandStrategy == false) then
																												NextMap = "maps/nidavellir/eastern-mines.smp"
																											else
																												WorldMapProvinces.NorthernWastelands.SettlementBuildings.DwarvenSmith = 0
																											end
																											ActionVictory()
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
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Shinsplitter Clan" or GetPlayerData(i, "Name") == "Knalga") and GetPlayerData(i, "Name") ~= "Shinsplitter Clan" and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur-thane") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-thursagan") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"",
			"Those who went to the eastern mines were brave indeed. They were infested with goblins and other vile creatures, who thrived in the dark and gloom of the caves.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"And braver still were Rugnur and his companions, who had to spend two years in those tunnels. For mining is a lengthy business. But they could for the most part avoid the enemy. They only once had to venture into the very heart of the goblins' territory.",
				player,
				{"~!Continue"},
				{function(s)
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
									"Aye. But beware, there are goblins and such down here...",
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
				end}
			)
			end}
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
						Event(
							"",
							"(Later in the dwarven citadel...)",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Durstorn",
								"So, ye have returned. I assume ye have obtained the required materials? My jeweler Theganli has spent the last two years buying jewels from some of the northern clans. So now go to the forge and make yer scepter. What do ye need to annoy me for?",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Thursagan",
									"We don't. Not everything is about ye. We need to talk to Theganli.",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Durstorn",
										"That makes sense, I guess ye would want to plan the scepter's design... what in particular do ye want him to do?",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Thursagan",
											"I need to make the plans for the scepter, then have him cut the ruby to match them.",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Durstorn",
												"Yer going to cut the jewel?! Are ye insane?",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Rugnur",
													"What are ye talking about, sir? Ye knew all along the jewel would have to be cut to make the scepter out of.",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														"Durstorn",
														"Oh... right, right. Fine. Theganli?",
														player,
														{"~!Continue"},
														{function(s)
														Event(
															"Kuhnar",
															"He's in his shop, in the southern tunnel.",
															player,
															{"~!Continue"},
															{function(s)
															Event(
																"Durstorn",
																"Whatever. Kuhnar, go, summon him here.",
																player,
																{"~!Continue"},
																{function(s)
																Event(
																	"Kuhnar",
																	"Theganli! Come out of there, Durstorn orders ye to come to the citadel.",
																	player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		"Theganli",
																		"I'm coming... coming... stop pounding on the door...",
																		player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			"Thursagan",
																			"He doesn't need to come here, I'll take the jewel to his shop. He'll need his tools anyway.",
																			player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				"Thursagan",
																				"Well, Theganli, what do ye think of this jewel?",
																				player,
																				{"~!Continue"},
																				{function(s)
																				Event(
																					"Theganli",
																					"Uh, um, aye, aye, very impressive jewel, impressive, aye...",
																					player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						"Thursagan",
																						"Do ye think ye could cut it in the manner my plans specify?",
																						player,
																						{"~!Continue"},
																						{function(s)
																						Event(
																							"Theganli",
																							"Well, uh, um, maybe... maybe... it will be hard... let me see...",
																							player,
																							{"~!Continue"},
																							{function(s)
																							Event(
																								"Thursagan",
																								"Very well. See what ye can do.",
																								player,
																								{"~!Continue"},
																								{function(s)
																								Event(
																									"",
																									"Theganli spent many months cutting the jewels that would go into the Scepter of Fire, and the Ruby of Fire he attempted last. But he could not cut it.",
																									player,
																									{"~!Continue"},
																									{function(s)
																									Event(
																										"Durstorn",
																										"Well, do you have anything yet?!",
																										player,
																										{"~!Continue"},
																										{function(s)
																										Event(
																											"Theganli",
																											"Ah, well, uh, no... no, not yet... unfortunately... it seems... it can't be cut... or scratched... or damaged at all... at least not by my tools...",
																											player,
																											{"~!Continue"},
																											{function(s)
																											Event(
																												"Thursagan",
																												"So what do ye propose we do? We need this jewel cut in a very specific way to make sure... well, it doesn't matter why.",
																												player,
																												{"~!Continue"},
																												{function(s)
																												Event(
																													"Theganli",
																													"Well... maybe... the Shorbear clan? They have good tools... aye, aye, they do...",
																													player,
																													{"~!Continue"},
																													{function(s)
																													Event(
																														"Rugnur",
																														"Who are they?",
																														player,
																														{"~!Continue"},
																														{function(s)
																														Event(
																															"Theganli",
																															"Another group... of dwarves... live south of here... above ground... aye... best jewelers I know of... have special tools... tools, aye...",
																															player,
																															{"~!Continue"},
																															{function(s)
																															Event(
																																"Durstorn",
																																"Well, Rugnur, what are ye waiting for? Go down and get these tools from them, and carve the jewel!",
																																player,
																																{"~!Continue"},
																																{function(s)
																																Event(
																																	"Baglur",
																																	"We can't just go in there and take their property. We'll have to buy, or rent, it from them.",
																																	player,
																																	{"~!Continue"},
																																	{function(s)
																																	Event(
																																		"Durstorn",
																																		"Fine. Go rent it from them.",
																																		player,
																																		{"~!Continue"},
																																		{function(s)
																																		Event(
																																			"Rugnur",
																																			"Very well. We'll go south now.",
																																			player,
																																			{"~!Continue"},
																																			{function(s)
																																			Event(
																																				"Durstorn",
																																				"Wait! Last time ye made a bargain by yerself ye lost us five thousand pieces of silver. I'm going with ye this time!",
																																				player,
																																				{"~!Continue"},
																																				{function(s)
																																				Event(
																																					"Kuhnar",
																																					"Are ye sure that is wise, lord?",
																																					player,
																																					{"~!Continue"},
																																					{function(s)
																																					Event(
																																						"Durstorn",
																																						"Of course! To be safe, though, ye and Noiraran are going to come with us.",
																																						player,
																																						{"~!Continue"},
																																						{function(s)
																																						Event(
																																							"Kuhnar",
																																							"Aye sir... (~<Sigh~>)",
																																							player,
																																							{"~!Continue"},
																																							{function(s)
																																								RemovePlayerObjective(player, "- Mine 10000 gold and 20000 coal")
																																								if (player == GetThisPlayer() and GrandStrategy == false) then
																																									if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Gathering Materials") == false) then
																																										table.insert(wyr.preferences.QuestsCompleted, "Gathering Materials")
																																									end
																																									SavePreferences()
																																								end
																																								if (GrandStrategy) then
																																									--Factions.NorlundClan.Gold = Factions.NorlundClan.Gold + 10000
																																									Factions.NorlundClan.Commodities["Coal"] = 20000
																																								end
																																								if (mapinfo.description == "Eastern Mines" and GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
																																									if (GrandStrategy == false) then
																																										NextMap = "maps/nidavellir/shorbear-hills.smp"
																																									end
																																									ActionVictory()
																																								end
																																							end},
																																							"dwarf/icons/dwarven_steelclad.png"
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
																															"dwarf/icons/dwarven_steelclad_gray_hair.png"
																														)
																														end},
																														"dwarf/icons/rugnur.png"
																													)
																													end},
																													"dwarf/icons/dwarven_steelclad_gray_hair.png"
																												)
																												end},
																												"dwarf/icons/thursagan.png"
																											)
																											end},
																											"dwarf/icons/dwarven_steelclad_gray_hair.png"
																										)
																										end},
																										"dwarf/icons/durstorn.png"
																									)
																									end}
																								)
																								end},
																								"dwarf/icons/thursagan.png"
																							)
																							end},
																							"dwarf/icons/dwarven_steelclad_gray_hair.png"
																						)
																						end},
																						"dwarf/icons/thursagan.png"
																					)
																					end},
																					"dwarf/icons/dwarven_steelclad_gray_hair.png"
																				)
																				end},
																				"dwarf/icons/thursagan.png"
																			)
																			end},
																			"dwarf/icons/thursagan.png"
																		)
																		end},
																		"dwarf/icons/dwarven_steelclad_gray_hair.png"
																	)
																	end},
																	"dwarf/icons/dwarven_steelclad.png"
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
							end}
						)
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
			Event(
				"",
				"(Later in the dwarven citadel...)",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Durstorn",
					"So, ye have returned. I assume ye have obtained the required materials? My jeweler Theganli has spent the last two years buying jewels from some of the northern clans. So now go to the forge and make your scepter. What do ye need to annoy me for?",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Thursagan",
						"We don't. Not everything is about ye. We need to talk to Theganli.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Durstorn",
							"That makes sense, I guess ye would want to plan the scepter's design... what in particular do ye want him to do?",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Thursagan",
								"I need to make the plans for the scepter, then have him cut the ruby to match them.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Durstorn",
									"Yer going to cut the jewel?! Are ye insane?",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Rugnur",
										"What are ye talking about, sir? Ye knew all along the jewel would have to be cut to make the scepter out of.",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Durstorn",
											"Oh... right, right. Fine. Theganli?",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Kuhnar",
												"He's in his shop, in the southern tunnel.",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Durstorn",
													"Whatever. Kuhnar, go, summon him here.",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														"Kuhnar",
														"Theganli! Come out of there, Durstorn orders ye to come to the citadel.",
														player,
														{"~!Continue"},
														{function(s)
														Event(
															"Theganli",
															"I'm coming... coming... stop pounding on the door...",
															player,
															{"~!Continue"},
															{function(s)
															Event(
																"Thursagan",
																"He doesn't need to come here, I'll take the jewel to his shop. He'll need his tools anyway.",
																player,
																{"~!Continue"},
																{function(s)
																Event(
																	"Thursagan",
																	"Well, Theganli, what do ye think of this jewel?",
																	player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		"Theganli",
																		"Uh, um, aye, aye, very impressive jewel, impressive, aye...",
																		player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			"Thursagan",
																			"Do ye think ye could cut it in the manner my plans specify?",
																			player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				"Theganli",
																				"Well, uh, um, maybe... maybe... it will be hard... let me see...",
																				player,
																				{"~!Continue"},
																				{function(s)
																				Event(
																					"Thursagan",
																					"Very well. See what ye can do.",
																					player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						"",
																						"(Theganli spent many months cutting the jewels that would go into the Scepter of Fire, and the Ruby of Fire he attempted last. But he could not cut it.)",
																						player,
																						{"~!Continue"},
																						{function(s)
																						Event(
																							"Durstorn",
																							"Well, do you have anything yet?!",
																							player,
																							{"~!Continue"},
																							{function(s)
																							Event(
																								"Theganli",
																								"Ah, well, uh, no... no, not yet... unfortunately... it seems... it can't be cut... or scratched... or damaged at all... at least not by my tools...",
																								player,
																								{"~!Continue"},
																								{function(s)
																								Event(
																									"Thursagan",
																									"So what do ye propose we do? We need this jewel cut in a very specific way to make sure... well, it doesn't matter why.",
																									player,
																									{"~!Continue"},
																									{function(s)
																									Event(
																										"Theganli",
																										"Well... maybe... the Shorbear clan? They have good tools... aye, aye, they do...",
																										player,
																										{"~!Continue"},
																										{function(s)
																										Event(
																											"Rugnur",
																											"Who are they?",
																											player,
																											{"~!Continue"},
																											{function(s)
																											Event(
																												"Theganli",
																												"Another group... of dwarves... live south of here... above ground... aye... best jewelers I know of... have special tools... tools, aye...",
																												player,
																												{"~!Continue"},
																												{function(s)
																												Event(
																													"Durstorn",
																													"Well, Rugnur, what are ye waiting for? Go down and get these tools from them, and carve the jewel!",
																													player,
																													{"~!Continue"},
																													{function(s)
																													Event(
																														"Baglur",
																														"We can't just go in there and take their property. We'll have to buy, or rent, it from them.",
																														player,
																														{"~!Continue"},
																														{function(s)
																														Event(
																															"Durstorn",
																															"Fine. Go rent it from them.",
																															player,
																															{"~!Continue"},
																															{function(s)
																															Event(
																																"Rugnur",
																																"Very well. We'll go south now.",
																																player,
																																{"~!Continue"},
																																{function(s)
																																Event(
																																	"Durstorn",
																																	"Wait! Last time ye made a bargain by yerself ye lost us five thousand pieces of silver. I'm going with ye this time!",
																																	player,
																																	{"~!Continue"},
																																	{function(s)
																																	Event(
																																		"Kuhnar",
																																		"Are ye sure that is wise, lord?",
																																		player,
																																		{"~!Continue"},
																																		{function(s)
																																		Event(
																																			"Durstorn",
																																			"Of course! To be safe, though, ye and Noiraran are going to come with us.",
																																			player,
																																			{"~!Continue"},
																																			{function(s)
																																			Event(
																																				"Kuhnar",
																																				"Aye sir... (~<Sigh~>)",
																																				player,
																																				{"~!Continue"},
																																				{function(s)
																																					RemovePlayerObjective(player, "- Mine 10000 gold and 20000 coal")
																																					if (player == GetThisPlayer() and GrandStrategy == false) then
																																						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Gathering Materials") == false) then
																																							table.insert(wyr.preferences.QuestsCompleted, "Gathering Materials")
																																						end
																																						SavePreferences()
																																					end
																																					if (GrandStrategy) then
																																						Factions.NorlundClan.Gold = Factions.NorlundClan.Gold + 10000
																																						Factions.NorlundClan.Commodities["Coal"] = 20000
																																					end
																																					if (mapinfo.description == "Eastern Mines" and GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
																																						if (GrandStrategy == false) then
																																							NextMap = "maps/nidavellir/shorbear-hills.smp"
																																						end
																																						ActionVictory()
																																					end
																																				end},
																																				"dwarf/icons/dwarven_steelclad.png"
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
																												"dwarf/icons/dwarven_steelclad_gray_hair.png"
																											)
																											end},
																											"dwarf/icons/rugnur.png"
																										)
																										end},
																										"dwarf/icons/dwarven_steelclad_gray_hair.png"
																									)
																									end},
																									"dwarf/icons/thursagan.png"
																								)
																								end},
																								"dwarf/icons/dwarven_steelclad_gray_hair.png"
																							)
																							end},
																							"dwarf/icons/durstorn.png"
																						)
																						end}
																					)
																					end},
																					"dwarf/icons/thursagan.png"
																				)
																				end},
																				"dwarf/icons/dwarven_steelclad_gray_hair.png"
																			)
																			end},
																			"dwarf/icons/thursagan.png"
																		)
																		end},
																		"dwarf/icons/dwarven_steelclad_gray_hair.png"
																	)
																	end},
																	"dwarf/icons/thursagan.png"
																)
																end},
																"dwarf/icons/thursagan.png"
															)
															end},
															"dwarf/icons/dwarven_steelclad_gray_hair.png"
														)
														end},
														"dwarf/icons/dwarven_steelclad.png"
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
				end}
			)
			end},
			"dwarf/icons/thursagan.png"
		)
	end
)
end

-- If Thursagan dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 gold and 20000 coal") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves while no enemies are in the caves") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")) and GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-thursagan") < 1 and GetPlayerData(15, "UnitTypesCount", "unit-hero-thursagan") < 1) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Mine 10000 gold and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
		if (mapinfo.description == "Eastern Mines" or mapinfo.description == "Shorbear Hills" or mapinfo.description == "Svafnir's Lair" or mapinfo.description == "Caverns of Flame") then
			if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
				ActionDefeat()
			end
		end
		return false
	end
)

if (mapinfo.description == "Shorbear Hills") then
-- Hills of the Shorbear Clan initial dialogue
-- based on the Hills of the Shorbear Clan scenario of the Sceptre of Fire campaign from Battle for Wesnoth

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Gathering Materials") and PlayerHasObjective(GetThisPlayer(), "- Defeat Glonoin, the Shorbear Clan leader") == false and PlayerHasObjective(GetThisPlayer(), "- Have all heroes in the Shorbear caves while no enemies are in the caves") == false and PlayerHasObjective(GetThisPlayer(), "- Move Rugnur to the northeast cave entrance") == false) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Knalga") and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur-thane") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-thursagan") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-durstorn") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"",
			"All dwarves are known for a love of gold and a heart of stone. The Shorbears were no exception. They were crafters of crafters - they made tools. The best in the land. And they bartered well.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Kuhnar",
				"Here we are; the hills of the Shorbear clan. What are we here for, anyway?",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Rugnur",
					"If I understand it correctly, we're here to bargain with the Shorbears, and arrange for us to use their tools to cut the ruby.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Thursagan",
						"Exactly.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Durstorn",
							"And I'll be doing the talking; I remember what happened last time ye negotiated a deal! We lost five thousand pieces of silver.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Glonoin",
								"Och, it's some o' them cave-dwarves. What business do ye have here?",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Durstorn",
									"I'm Lord Durstorn, king of my tribe. I have been told ye are great jeweler-workers, and so we come to rent some of yer tools for a short time, a few years at most.",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Glonoin",
										"Yer a king?! Must be a pretty small kingdom for ye to come yerself to bargain with us!",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Durstorn",
											"Ye insult me! Do ye want my business, or not?",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Glonoin",
												"Well, fine, I'll hear yer offer.",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Durstorn",
													"We'd like to rent yer best tools for a short period of time. We'll only be cutting one jewel with it. My starting offer is two hundred silver.",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														"Glonoin",
														"It must be worth a lot for ye to come this way and offer that much! How much are ye going to sell it for, eh?",
														player,
														{"~!Continue"},
														{function(s)
														Event(
															"Durstorn",
															"That's none of yer concern!",
															player,
															{"~!Continue"},
															{function(s)
															Event(
																"Glonoin",
																"I'll take twenty-five hundred, minimum.",
																player,
																{"~!Continue"},
																{function(s)
																Event(
																	"Rugnur",
																	"(Whisper) Durstorn, that would be a quarter of all our gains!",
																	player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		"Durstorn",
																		"I know that. Uh, Glonoin, how about five hundred?",
																		player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			"Glonoin",
																			"Twenty-three hundred is my lowest offer. I can tell I don't need the money as much as ye need the jewel cut!",
																			player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				"Durstorn",
																				"Ye must be mad! I'll offer one thousand, but no higher!",
																				player,
																				{"~!Continue"},
																				{function(s)
																				Event(
																					"Glonoin",
																					"Two thousand, and I'll go no lower!",
																					player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						"Rugnur",
																						"(Whisper) What are we going to do? We can't go much higher!",
																						player,
																						{"~!Continue"},
																						{function(s)
																						Event(
																							"Baglur",
																							"(Whisper) Offer him fifteen hundred, but don't go up, even if he refuses.",
																							player,
																							{"~!Continue"},
																							{function(s)
																							Event(
																								"Durstorn",
																								"(Whisper) Bah! Getting this cut isn't worth that much; what with Rugnur's mistake earlier, and all the other expenses, if we pay more than a thousand we'll barely even make a profit!",
																								player,
																								{"~!Continue"},
																								{function(s)
																								Event(
																									"Thursagan",
																									"(Whisper) So what are ye going to do?",
																									player,
																									{"~!Continue"},
																									{function(s)
																									Event(
																										"Durstorn",
																										"(Whisper) Fight him, and take the tools by force.",
																										player,
																										{"~!Continue"},
																										{function(s)
																										Event(
																											"Thursagan",
																											"(Whisper) Are ye mad?!",
																											player,
																											{"~!Continue"},
																											{function(s)
																											Event(
																												"Durstorn",
																												"Of course not! Now, Glonoin; one thousand was my final offer. If ye won't accept it, we will take the tools from ye by force!",
																												player,
																												{"~!Continue"},
																												{function(s)
																												Event(
																													"Glonoin",
																													"I'd like to see ye try!",
																													player,
																													{"~!Continue"},
																													{function(s)
																													Event(
																														"Thursagan",
																														"Yer making a mistake, Durstorn.",
																														player,
																														{"~!Continue"},
																														{function(s)
																														Event(
																															"Durstorn",
																															"Shut up, all of ye! Attack them!",
																															player,
																															{"~!Continue"},
																															{function(s)
																																unit = CreateUnit("unit-gnomish-recruit", 0, {6, 5}) -- gnomish envoy
																																IncreaseUnitLevel(unit, 1, true)
																																if (mapinfo.description == "Shorbear Hills") then
																																	RemovePlayerObjective(player, "- Destroy the enemy")
																																end
																																AddPlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
																																AddPlayerObjective(player, "- Rugnur, Baglur, Thursagan, Durstorn and the Gnomish Envoy must survive")
																															end},
																															"dwarf/icons/durstorn.png"
																														)
																														end},
																														"dwarf/icons/thursagan.png"
																													)
																													end},
																													"dwarf/icons/thane_gray_hair.png"
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
																							"dwarf/icons/baglur.png"
																						)
																						end},
																						"dwarf/icons/rugnur.png"
																					)
																					end},
																					"dwarf/icons/thane_gray_hair.png"
																				)
																				end},
																				"dwarf/icons/durstorn.png"
																			)
																			end},
																			"dwarf/icons/thane_gray_hair.png"
																		)
																		end},
																		"dwarf/icons/durstorn.png"
																	)
																	end},
																	"dwarf/icons/rugnur.png"
																)
																end},
																"dwarf/icons/thane_gray_hair.png"
															)
															end},
															"dwarf/icons/durstorn.png"
														)
														end},
														"dwarf/icons/thane_gray_hair.png"
													)
													end},
													"dwarf/icons/durstorn.png"
												)
												end},
												"dwarf/icons/thane_gray_hair.png"
											)
											end},
											"dwarf/icons/durstorn.png"
										)
										end},
										"dwarf/icons/thane_gray_hair.png"
									)
									end},
									"dwarf/icons/durstorn.png"
								)
								end},
								"dwarf/icons/thane_gray_hair.png"
							)
							end},
							"dwarf/icons/durstorn.png"
						)
						end},
						"dwarf/icons/thursagan.png"
					)
					end},
					"dwarf/icons/rugnur.png"
				)
				end},
				"dwarf/icons/dwarven_steelclad.png"
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
		if (PlayerHasObjective(GetThisPlayer(), "- Defeat Glonoin, the Shorbear Clan leader") and GameCycle > 1500 and PlayerHasObjective(GetThisPlayer(), "- Have all heroes in the Shorbear caves while no enemies are in the caves") == false) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Knalga") and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur-thane") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-thursagan") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-durstorn") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function()
		OrderUnit(GetFactionPlayer("Shinsplitter Clan"), "unit-dwarven-thane", {2, 70}, {8, 64}, "move")

		local shinsplitter_thane_name = ""
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") then
				shinsplitter_thane_name = GetUnitVariable(uncount[unit1], "Name")
			end
		end

		Event(
			shinsplitter_thane_name,
			"Aha! I've spent years looking for ye Norlunds, but now I've found ye! Prepare to die!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Glonoin",
				"Who the devil are ye?",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Rugnur",
					"I thought we left the Shinsplitters behind at the gates four years ago! It seems we have two enemies now.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Glonoin",
						"So, Shinsplitters, are ye against these dwarves too? They're attacking my clan for absolutely no reason!",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							shinsplitter_thane_name,
							"I see. So ye don't have the ruby?",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Glonoin",
								"No, they do. They wanted to rent my tools to cut it, but they didn't offer me nearly enough!",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									shinsplitter_thane_name,
									"How about this - I help ye defeat them, and ye let me keep the ruby when we have?",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Glonoin",
										"Deal!",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Durstorn",
											"Ah, they don't scare me! We can take both of them!",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Thursagan",
												"Don't be a fool! We can't take the Shinsplitters, and it was a mistake to attack the Shorbears, but if we have to fight we should retreat once we get what we came for, the tools!",
												player,
												{"~!Continue"},
												{function(s)
													AddPlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
												end},
												"dwarf/icons/thursagan.png"
											)
											end},
											"dwarf/icons/durstorn.png"
										)
										end},
										"dwarf/icons/thane_gray_hair.png"
									)
									end},
									"dwarf/icons/thane.png"
								)
								end},
								"dwarf/icons/thane_gray_hair.png"
							)
							end},
							"dwarf/icons/thane.png"
						)
						end},
						"dwarf/icons/thane_gray_hair.png"
					)
					end},
					"dwarf/icons/rugnur.png"
				)
				end},
				"dwarf/icons/thane_gray_hair.png"
			)
			end},
			"dwarf/icons/thane.png"
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Defeat Glonoin, the Shorbear Clan leader") and GetPlayerData(1, "UnitTypesCount", "unit-dwarven-thane") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		Event(
			"Durstorn",
			"Ha! Now we can get those tools easily, and go back to our own caves.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Thursagan",
				"And how do ye plan on doing that? There are Shinsplitters swarming these hills, trying to kill us.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Durstorn",
					"Ye are right... well, we will be able to break out eventually, and while we're here, we'll be able to finally make the scepter.",
					player,
					{"~!Continue"},
					{function(s)
					if (GetNumUnitsAt(1, "units", {26, 23}, {51, 44}) + GetNumUnitsAt(2, "units", {26, 23}, {51, 44}) >= 1) then
						if ((GetNumUnitsAt(player, "unit-hero-rugnur", {26, 23}, {51, 44}) + GetNumUnitsAt(player, "unit-hero-rugnur-steelclad", {26, 23}, {51, 44}) + GetNumUnitsAt(player, "unit-hero-rugnur-thane", {26, 23}, {51, 44})) >= 1 and (GetNumUnitsAt(player, "unit-hero-baglur", {26, 23}, {51, 44}) + GetNumUnitsAt(player, "unit-hero-baglur-thane", {26, 23}, {51, 44})) >= 1 and GetNumUnitsAt(player, "unit-hero-thursagan", {26, 23}, {51, 44}) >= 1 and GetNumUnitsAt(player, "unit-hero-durstorn", {26, 23}, {51, 44}) >= 1 and GetNumUnitsAt(player, "unit-gnomish-recruit", {26, 23}, {51, 44}) >= 1) then
							Event(
								"Thursagan",
								"Well, back to the battle - we are all in the caves, but there are still enemies in here also!",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Durstorn",
									"Indeed. Kill them! And make sure no more enter. Then we can close the gates.",
									player,
									{"~!Continue"},
									{function(s)
									end},
									"dwarf/icons/durstorn.png"
								)
								end},
								"dwarf/icons/thursagan.png"
							)
						else
							Event(
								"Thursagan",
								"Well, back to the battle - we need everyone to get into the Shorbear caves. And then stop any enemies from coming in here.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Durstorn",
									"Indeed. Everyone to the caves, and kill those still inside!",
									player,
									{"~!Continue"},
									{function(s)
									end},
									"dwarf/icons/durstorn.png"
								)
								end},
								"dwarf/icons/thursagan.png"
							)
						end
					elseif (((GetNumUnitsAt(player, "unit-hero-rugnur", {26, 23}, {51, 44}) + GetNumUnitsAt(player, "unit-hero-rugnur-steelclad", {26, 23}, {51, 44}) + GetNumUnitsAt(player, "unit-hero-rugnur-thane", {26, 23}, {51, 44})) >= 1 and (GetNumUnitsAt(player, "unit-hero-baglur", {26, 23}, {51, 44}) + GetNumUnitsAt(player, "unit-hero-baglur-thane", {26, 23}, {51, 44})) >= 1 and GetNumUnitsAt(player, "unit-hero-thursagan", {26, 23}, {51, 44}) >= 1 and GetNumUnitsAt(player, "unit-hero-durstorn", {26, 23}, {51, 44}) >= 1 and GetNumUnitsAt(player, "unit-gnomish-recruit", {26, 23}, {51, 44}) >= 1) == false) then
						Event(
							"Thursagan",
							"Well, back to the battle - we need everyone to get into the Shorbear caves. And then stop any enemies from coming in here.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Durstorn",
								"Indeed. Everyone to the caves, and kill those still inside!",
								player,
								{"~!Continue"},
								{function(s)
								end},
								"dwarf/icons/durstorn.png"
							)
							end},
							"dwarf/icons/thursagan.png"
						)
					end
					end},
					"dwarf/icons/durstorn.png"
				)
				end},
				"dwarf/icons/thursagan.png"
			)
			end},
			"dwarf/icons/durstorn.png"
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Have all heroes in the Shorbear caves while no enemies are in the caves")) then
			if (GetNumUnitsAt(1, "any", {26, 23}, {51, 44}) + GetNumUnitsAt(2, "any", {26, 23}, {51, 44}) < 1) then
				if ((GetNumUnitsAt(GetThisPlayer(), "unit-hero-rugnur", {26, 23}, {51, 44}) + GetNumUnitsAt(GetThisPlayer(), "unit-hero-rugnur-steelclad", {26, 23}, {51, 44}) + GetNumUnitsAt(GetThisPlayer(), "unit-hero-rugnur-thane", {26, 23}, {51, 44})) >= 1 and (GetNumUnitsAt(GetThisPlayer(), "unit-hero-baglur", {26, 23}, {51, 44}) + GetNumUnitsAt(GetThisPlayer(), "unit-hero-baglur-thane", {26, 23}, {51, 44})) >= 1 and GetNumUnitsAt(GetThisPlayer(), "unit-hero-thursagan", {26, 23}, {51, 44}) >= 1 and GetNumUnitsAt(GetThisPlayer(), "unit-hero-durstorn", {26, 23}, {51, 44}) >= 1 and GetNumUnitsAt(GetThisPlayer(), "unit-gnomish-recruit", {26, 23}, {51, 44}) >= 1) then
					player = GetThisPlayer()
					return true
				end
			end
		end
		return false
	end,
	function()
		Event(
			"Durstorn",
			"We have driven all of the Shorbears and Shinsplitters out of these caves! Now, seal the gates!",
			player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
				RemovePlayerObjective(player, "- Rugnur, Baglur, Thursagan, Durstorn and the Gnomish Envoy must survive")
				KillUnitAt("unit-dwarven-town-hall", player, 50, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-mushroom-farm", player, 50, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-barracks", player, 50, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-smith", player, 50, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-lumber-mill", player, 50, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-sentry-tower", player, 50, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-guard-tower", player, 50, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-miner", player, 100, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-axefighter", player, 100, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-steelclad", player, 100, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-thane", player, 100, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-scout", player, 100, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-ballista", player, 100, {0, 0}, {256, 256})
				local uncount = 0
				uncount = GetUnits(0)
				for unit1 = 1,table.getn(uncount) do 
					if (string.find(GetUnitVariable(uncount[unit1], "Ident"), "-hero-") ~= nil or GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-recruit") then
						if (GetUnitVariable(uncount[unit1],"PosX") >= 26 and GetUnitVariable(uncount[unit1],"PosX") <= 51 and GetUnitVariable(uncount[unit1],"PosY") >= 23 and GetUnitVariable(uncount[unit1],"PosY") <= 44) then
--							MoveUnit(uncount[unit1], {41, 41}) -- move all units to this spot to open up place for buildings -- the "MoveUnit" is not working properly for some reason: buildings will still be blocked from being created at the unit's original location, and when Durstorn dies, after his corpse disappears the game crashes
							SetUnitVariable(uncount[unit1], "HitPoints", GetUnitVariable(uncount[unit1], "HitPoints", "Max")) -- heal the heroes
						end
					end
				end
				-- create settlement for the Norlund Clan in the Shorbear Hold, after its conquest
				unit = CreateUnit("unit-dwarven-town-hall", 0, {37, 32})
				unit = CreateUnit("unit-dwarven-miner", 0, {38, 33})
				unit = CreateUnit("unit-dwarven-miner", 0, {38, 33})
				unit = CreateUnit("unit-dwarven-miner", 0, {38, 33})
				unit = CreateUnit("unit-dwarven-miner", 0, {38, 33})
				unit = CreateUnit("unit-dwarven-miner", 0, {38, 33})

				unit = CreateUnit("unit-dwarven-guard-tower", 0, {29, 29})
				unit = CreateUnit("unit-dwarven-guard-tower", 0, {29, 37})
				unit = CreateUnit("unit-dwarven-guard-tower", 0, {38, 25})
				unit = CreateUnit("unit-dwarven-guard-tower", 0, {47, 29})
				unit = CreateUnit("unit-dwarven-guard-tower", 0, {47, 35})

				unit = CreateUnit("unit-dwarven-barracks", 0, {31, 33})
				unit = CreateUnit("unit-dwarven-smith", 0, {43, 28})
				unit = CreateUnit("unit-dwarven-mushroom-farm", 0, {32, 30})
				unit = CreateUnit("unit-dwarven-mushroom-farm", 0, {40, 28})
				unit = CreateUnit("unit-dwarven-mushroom-farm", 0, {44, 36})

				unit = CreateUnit("unit-dwarven-thane", 2, {5, 65}) -- Gaenlar

				-- create second encampment for Shinsplitters
				unit = CreateUnit("unit-dwarven-town-hall", 2, {40, 10})
				unit = CreateUnit("unit-dwarven-miner", 2, {40, 10})
				unit = CreateUnit("unit-dwarven-miner", 2, {40, 10})
				unit = CreateUnit("unit-dwarven-miner", 2, {40, 10})
				unit = CreateUnit("unit-dwarven-miner", 2, {40, 10})
				unit = CreateUnit("unit-dwarven-miner", 2, {40, 10})
				unit = CreateUnit("unit-dwarven-thane", 2, {40, 10}) -- Glinan

				-- create third encampment for Shinsplitters
				unit = CreateUnit("unit-dwarven-town-hall", 2, {60, 60})
				unit = CreateUnit("unit-dwarven-miner", 2, {60, 60})
				unit = CreateUnit("unit-dwarven-miner", 2, {60, 60})
				unit = CreateUnit("unit-dwarven-miner", 2, {60, 60})
				unit = CreateUnit("unit-dwarven-miner", 2, {60, 60})
				unit = CreateUnit("unit-dwarven-miner", 2, {60, 60})
				unit = CreateUnit("unit-dwarven-thane", 2, {60, 60}) -- Kalnar
				Event(
					"",
					"Durstorn's rash action led to many problems. Not the least of which was being surrounded by the Shinsplitters.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"",
						"The Norlunds spent several years trapped in those caves, the Shinsplitters besieging them. The Norlunds could not leave, for there were far too many Shinsplitters, and there was no way out of the caverns other than above ground. But the Shinsplitters could not enter, for the impregnable dwarven gates were closed.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"",
							"During this time, Thursagan crafted the Scepter of Fire, first cutting the jewel, then putting it, the gold and the cold steel into the heat of the flame. The scepter was crafted, but something was not right. No matter what he did to the Scepter, the ruby couldn't be properly bound to the metal.",
							player,
							{"~!Continue"},
							{function(s)
								AddPlayerObjective(player, "- Move Rugnur to the northeast cave entrance")
								AddPlayerObjective(player, "- Move the Gnomish Envoy to the southern border east of the river")
								AddPlayerObjective(player, "- Rugnur, Baglur, Thursagan and the gnomish envoy must survive")
							end}
						)
						end}
					)
					end}
				)
			end},
			"dwarf/icons/durstorn.png"
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Move Rugnur to the northeast cave entrance") and GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-durstorn") >= 1) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Knalga")) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function()
		local shinsplitter_thane_name = ""
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") then
				shinsplitter_thane_name = GetUnitVariable(uncount[unit1], "Name")
			end
		end
		
		Event(
			"Rugnur",
			"Well, Thursagan has reached a conclusion. He can't make the scepter with the materials he has here, but he has the final plans for it, and all the jewels and gold he needs. Shouldn't we leave now?",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Durstorn",
				"All this time and he couldn't make it? Fine, we should try to leave... but it's not like we could leave if we wanted to. We're surrounded!",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Baglur",
					"If ye'll permit me to say so, sir, yer wrong. We could-",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Durstorn",
						"Shut up, Baglur! Ye don't know what yer talking about. I've analyzed the situation, and we're doomed. Our best hope is to surrender. Perhaps if we give the Shinsplitters the plans for the Scepter of Fire they will let us survive.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Rugnur",
							"Yes, of course, let's just all be cowards! What happened to your honor, Durstorn?!",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Durstorn",
								"Ye little fool, honor is less important than life! So, I'm ordering Thursagan to give the plans and the ruby to the Shinsplitters, as a peace offering. Then maybe we'll walk out of here alive.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Thursagan",
									"Ye don't have authority over me, Durstorn. And I wouldn't give the Scepter to them even if ye did. It's not yers to give, it's mine, and Rugnur's, and Baglur's. The gryphon riders have done more for its existence than ye have! And yet, ye still get the profits from selling it to Pypo.",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Durstorn",
										"So what, all of ye want to die? Fine by me, but I won't die with ye! And if ye won't give the Scepter to the Shinsplitters, I'll take it from ye!",
										player,
										{"~!Continue"},
										{function(s)
										PlaySound("attack-miss")
										Event(
											"Thursagan",
											"Nice try, Durstorn, but ye missed. Now, I'd say that attacking an ally constitutes treason, wouldn't ye?",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Durstorn",
												"Yer not my ally. Yer more against me than the Shinsplitters are; all they want is the ruby, but ye want us dead!",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													"Rugnur",
													"If that's what yer thinking, yer not fit to be ruler over us! So step down, or we'll force ye.",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														"Durstorn",
														"Never!",
														player,
														{"~!Continue"},
														{function(s)
															PlaySound("axe-attack")
															KillUnitAt("unit-hero-durstorn", player, 1, {0, 0}, {256, 256})
															Event(
																"Rugnur",
																"Well, I suppose we were right to silence him, but I don't like this. In any case, now we should try to get out of here.",
																player,
																{"~!Continue"},
																{function(s)
																Event(
																	"Thursagan",
																	"Aye. So, see the area to the northeast of us?",
																	player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		"Thursagan",
																		"That's where there are the least Shinsplitter guards, so we have the greatest chance of success there. I think we should try to get to it.",
																		player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			"Gnomish Envoy",
																			"This plan, it isn't worse than staying here to be killed, but it isn't likely to succeed either. Even if it does, what will it accomplish? We will be cornered there.",
																			player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				"Thursagan",
																				"I don't know if we will be cornered. That cave looks like it goes deep, and we can lose the Shinsplitters in the caves. Once we get out, we'll make our way back to Knalga.",
																				player,
																				{"~!Continue"},
																				{function(s)
																				Event(
																					"Rugnur",
																					"The country between here and Knalga will be swarming with Shinsplitter warriors. We had better head back to the abandoned mines north of the Arkan-thoria, where we gathered our gold and coal. At least there the gnomes will have some hope of finding us.",
																					player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						"Gnomish Envoy",
																						"That's fine for you, you are used to the deep underground, but I ain't! What am I supposed to do?",
																						player,
																						{"~!Continue"},
																						{function(s)
																						Event(
																							"Rugnur",
																							"Well, ye are a member of the army of Untersberg. Why don't ye rejoin it? See if ye can run past those Shinsplitters to our southeast...",
																							player,
																							{"~!Continue"},
																							{function(s)
																							Event(
																								"Rugnur",
																								"... and then ride south until ye reach one of yer outposts.",
																								player,
																								{"~!Continue"},
																								{function(s)
																								Event(
																									"Gnomish Envoy",
																									"I'm not going to do that, it's suicide! And in any case, I've been with you for ten years, almost as long as I was in the Untersberg army; I'd prefer to fight with you.",
																									player,
																									{"~!Continue"},
																									{function(s)
																									Event(
																										"Thursagan",
																										"Ye going south has more of a chance of success for ye than staying here or going back to the mines! And getting news to Pypo of what has happened is also the best way to get help to us.",
																										player,
																										{"~!Continue"},
																										{function(s)
																										Event(
																											"Gnomish Envoy",
																											"I suppose...",
																											player,
																											{"~!Continue"},
																											{function(s)
																											Event(
																												shinsplitter_thane_name,
																												"Come out, Norlunds, and surrender! Or die in that cave, yer choice.",
																												player,
																												{"~!Continue"},
																												{function(s)
																												end},
																												"dwarf/icons/thane.png"
																											)
																											end},
																											"gnome/icons/gnomish_recruit.png"
																										)
																										end},
																										"dwarf/icons/thursagan.png"
																									)
																									end},
																									"gnome/icons/gnomish_recruit.png"
																								)
																								end},
																								"dwarf/icons/rugnur.png"
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
																				"dwarf/icons/thursagan.png"
																			)
																			end},
																			"gnome/icons/gnomish_recruit.png"
																		)
																		end},
																		"dwarf/icons/thursagan.png"
																	)
																	end},
																	"dwarf/icons/thursagan.png"
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
			"dwarf/icons/rugnur.png"
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Move Rugnur to the northeast cave entrance") and GetNumUnitsAt(GetThisPlayer(), "unit-gnomish-recruit", {44, 76}, {256, 256}) >= 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			"Rugnur",
			"My gnomish friend, ride as fast as ye can south. Tell Pypo we are heading northeast, towards the old eastern mines, and if he wants his precious scepter he should send forces to meet us there as soon as he can!",
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
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Move Rugnur to the northeast cave entrance") and (GetNumUnitsAt(GetThisPlayer(), "unit-hero-rugnur", {69, 14}, {69, 14}) + GetNumUnitsAt(GetThisPlayer(), "unit-hero-rugnur-steelclad", {69, 14}, {69, 14}) + GetNumUnitsAt(GetThisPlayer(), "unit-hero-rugnur-thane", {69, 14}, {69, 14})) >= 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		Event(
			"Rugnur",
			"I don't know what is in these caves, but whatever it is can't be worse than staying here to die.",
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
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Move Rugnur to the northeast cave entrance") and (GetNumUnitsAt(GetThisPlayer(), "unit-hero-rugnur", {69, 14}, {69, 14}) + GetNumUnitsAt(GetThisPlayer(), "unit-hero-rugnur-steelclad", {69, 14}, {69, 14}) + GetNumUnitsAt(GetThisPlayer(), "unit-hero-rugnur-thane", {69, 14}, {69, 14})) >= 1 and GetNumUnitsAt(GetThisPlayer(), "unit-gnomish-recruit", {44, 76}, {256, 256}) >= 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		if (mapinfo.description == "Shorbear Hills" and GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
			if (player == GetThisPlayer() and GrandStrategy == false) then
				if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Hills of the Shorbear Clan") == false) then
					table.insert(wyr.preferences.QuestsCompleted, "Hills of the Shorbear Clan")
				end
				SavePreferences()
			end
			if (GrandStrategy == false) then
				NextMap = "maps/nidavellir/svafnirs-lair.smp"
			end
			ActionVictory()
		end
		return false
	end
)
end

if (mapinfo.description == "Svafnir's Lair" and ForTheMotherland == false) then
-- The Wyrm initial dialogue
-- based on The Dragon scenario of the Sceptre of Fire campaign from Battle for Wesnoth
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Hills of the Shorbear Clan") and PlayerHasObjective(GetThisPlayer(), "- Get all heroes to the end of the tunnel") == false) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Knalga") and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur-thane") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-thursagan") >= 1) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"",
			"Thus the gnomish envoy escaped from his Shinsplitter pursuers. But the dwarves were not so lucky. I would say that, perhaps, their betrayal of Durstorn was coming back to haunt them. For the section of the old eastern mines that they reached in their flight had long since become the lair of Svafnir... the wyrm.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Rugnur",
				"Well, Thursagan, we've reached the eastern mines, but the Shinsplitters are hot on our trail. What do we do now?",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Thursagan",
					"Well, we have two choices. We may either stand and fight, and assuredly die, or run as quickly as possible down this path into the depths of the cave, where we may find something that will help us. Also, remember, the Shinsplitters will take some time to have their full strength here, so we may be able to get ahead of them and perhaps lay a trap.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Gryphon Rider",
						"Why don't we just surrender? All they want is that stone!",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Rugnur",
							"If we give them the ruby, then what? They'll probably kill us anyway. And, that ruby is very valuable, they could use it to gain funds and become even more dangerous. We can't let it fall into the wrong hands.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Thursagan",
								"Then we shall run.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Baglur",
									"So we're running away, eh? I dinna' like that, but it seems it's our only option.",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Rugnur",
										"If it makes ye feel any better, we'll probably die this way, too.",
										player,
										{"~!Continue"},
										{function(s)
											if (mapinfo.description == "Svafnir's Lair") then
												RemovePlayerObjective(player, "- Destroy the enemy")
											end
											AddPlayerObjective(player, "- Get all heroes to the end of the tunnel")
											AddPlayerObjective(player, "- Rugnur, Baglur and Thursagan must survive")
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
						end},
						"dwarf/icons/gryphon_rider.png"
					)
					end},
					"dwarf/icons/thursagan.png"
				)
				end},
				"dwarf/icons/rugnur.png"
			)
			end}
		)
		return false
	end
)

-- make the Shinsplitter and kobold units chase Rugnur's dwarves
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		return true
	end,
	function() 
		local thursagan = nil
	
		local uncount = 0
		uncount = GetUnits("any")
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1],"Ident") == "unit-hero-thursagan") then
				thursagan = uncount[unit1]
			end
		end

		if (thursagan == nil) then
			return true
		end

		-- make the initial Shinsplitter units attack (later units follow the normal AI attack pattern)
		uncount = 0
		uncount = GetUnits(1)
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1],"Level") >= 2 and GetUnitVariable(uncount[unit1],"Ident") ~= "unit-dwarven-miner" and GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "Building") == false and IsUnitIdle(uncount[unit1])) then
				OrderUnit(1, GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(thursagan,"PosX"), GetUnitVariable(thursagan,"PosY")}, "attack")
			end
		end

		if (GetPlayerData(GetFactionPlayer("Svafnir"), "TotalNumUnits") > 1) then -- the wyrm and kobolds only attack after the kobolds have been generated
			uncount = 0
			uncount = GetUnits(2)
			for unit1 = 1,table.getn(uncount) do 
				if (IsUnitIdle(uncount[unit1])) then
					OrderUnit(2, GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(thursagan,"PosX"), GetUnitVariable(thursagan,"PosY")}, "attack")
				end
			end
		end
		return true
	end
)

-- event when Svafnir is sighted
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Svafnir"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-wyrm") then
				local unit_quantity = GetNumUnitsAt(GetFactionPlayer("Norlund Clan"), "any", {GetUnitVariable(uncount[unit1],"PosX") - 4, GetUnitVariable(uncount[unit1],"PosY") - 4}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4})
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
			"Look, there's a wyrm in these caves!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Thursagan",
				"I wonder which of the great wyrms this is...",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Rugnur",
					"I'd rather face one powerful wyrm than hundreds of mighty dwarves. Continue!",
					player,
					{"~!Continue"},
					{function(s)
					end},
					"dwarf/icons/rugnur.png"
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

-- event when a Surghan Mercenary is sighted
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary-steelclad" or GetUnitVariable(uncount[unit1], "Ident") == "unit-surghan-mercenary-thane") then
				local unit_quantity = GetNumUnitsAt(GetFactionPlayer("Norlund Clan"), "any", {GetUnitVariable(uncount[unit1],"PosX") - 4, GetUnitVariable(uncount[unit1],"PosY") - 4}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4})
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
			"Thursagan",
			"What's this? This isn't a normal dwarven soldier!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Baglur",
				"It must be one of those Surghan mercenaries. I'll bet those Shinsplitters have hired more of them. That's bad news for us, for they are deadly, combat-hardened warriors.",
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

-- event when the Gryphon Rider sees the forge
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-gryphon-rider") then
				local unit_quantity = GetNumUnitsAt(-1, "unit-dwarven-smith", {GetUnitVariable(uncount[unit1],"PosX") - 6, GetUnitVariable(uncount[unit1],"PosY") - 6}, {GetUnitVariable(uncount[unit1],"PosX") + 6, GetUnitVariable(uncount[unit1],"PosY") + 6})
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
			"Look, I've found something here!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Thursagan",
				"It looks like a forge, heated by lava. It looks ancient, and it looks hot enough to make the Scepter.",
				player,
				{"~!Continue"},
				{function(s)
					AddPlayerObjective(player, "- Move Thursagan to the forge")
					AddPlayerObjective(player, "- Defend Thursagan until the Scepter of Fire is complete")
				end},
				"dwarf/icons/thursagan.png"
			)
			end},
			"dwarf/icons/gryphon_rider.png"
		)
		-- there should be a version of the dialogue if another unit finds the forge, too
		return false
	end
)

-- event when Thursagan reaches the forge
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (IfNearUnit(GetFactionPlayer("Norlund Clan"), ">=", 1, "unit-hero-thursagan", "unit-dwarven-smith") and IfNearUnit(GetFactionPlayer("Norlund Clan"), ">=", 1, "unit-dwarven-smith", "unit-hero-thursagan")) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-thursagan") then
				Event(
					"Thursagan",
					"This forge will work perfectly. Give me a few days here, and I can reforge the Scepter of Fire to become a proper artifact.",
					player,
					{"~!Continue"},
					{function(s)
						ChangeUnitOwner(uncount[unit1], 15)
						SetUnitVariable(uncount[unit1], "LastCycle", GameCycle)
					end},
					"dwarf/icons/thursagan.png"
				)
			end
		end
		return false
	end
)

-- kobolds come to Svafnir's rescue if it is attacked
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Svafnir"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-wyrm") then
				if (GetUnitVariable(uncount[unit1], "HitPoints") < GetUnitVariable(uncount[unit1], "HitPoints", "Max")) then
					player = GetThisPlayer()
					return true
				else
					return false
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"Kobold Footpad A",
			"By the fiery Wyrmsun! The breastlings are attacking the ancient beast...!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Kobold Footpad B",
				"We cannot allow one of the few surviving great wyrms to be slain! Get at them!",
				player,
				{"~!Continue"},
				{function(s)
					local uncount = 0
					uncount = GetUnits(GetFactionPlayer("Svafnir"))
					for unit1 = 1,table.getn(uncount) do 
						if (GetUnitVariable(uncount[unit1], "Ident") == "unit-wyrm") then
							unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
							unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
							unit = CreateUnit("unit-kobold-footpad", GetFactionPlayer("Svafnir"), {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY")})
						end
					end
				end},
				"kobold/icons/kobold_footpad.png"
			)
			end},
			"kobold/icons/kobold_footpad.png"
		)
		return false
	end
)

-- Thursagan completes the Scepter of Fire
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		local uncount = 0
		uncount = GetUnits(15)
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-thursagan" and (GameCycle - GetUnitVariable(uncount[unit1], "LastCycle")) > 6000) then -- Scepter is crafted after 6000 cycles
				unit = CreateUnit("unit-scepter-of-fire", 15, {GetUnitVariable(uncount[unit1], "PosX"), GetUnitVariable(uncount[unit1], "PosY") + 1})
				player = GetFactionPlayer("Norlund Clan")
				return true
			end
		end
		return false
	end,
	function() 
		Event(
			"Thursagan",
			"I have completed my work. Now it is truly the Scepter of Fire, a mighty artifact.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Rugnur",
				"Good. Now, let's get out of this cave, before the dwarves or kobolds kill us!",
				player,
				{"~!Continue"},
				{function(s)
					if (mapinfo.description == "Svafnir's Lair" and GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
						if (player == GetThisPlayer() and GrandStrategy == false) then
							if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Wyrm") == false) then
								table.insert(wyr.preferences.QuestsCompleted, "The Wyrm")
							end
							SavePreferences()
						end
						if (GrandStrategy == false) then
							NextMap = "maps/nidavellir/caverns-of-flame.smp"
						end
						ActionVictory()
					end
				end},
				"dwarf/icons/rugnur.png"
			)
			end},
			"dwarf/icons/thursagan.png"
		)
		return false
	end
)
end

-- If Durstorn dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves while no enemies are in the caves")) and GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-durstorn") < 1) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
		if (mapinfo.description == "Shorbear Hills") then
			if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
				ActionDefeat()
			end
		end
		return false
	end
)

if (mapinfo.description == "Caverns of Flame") then
-- Caverns of Flame initial dialogue
-- based on the Caverns of Flame scenario of the Sceptre of Fire campaign from Battle for Wesnoth
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Wyrm") and PlayerHasObjective(GetThisPlayer(), "- Explore as much of the cave as possible") == false) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Knalga") and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-baglur-thane") >= 1 and GetPlayerData(i, "UnitTypesCount", "unit-hero-thursagan") >= 1) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"",
			"Rugnur and his companions had reached the realms of the goblins, with the Shinsplitters hot on their trail. And there was no exit from those caves, leaving the Norlunds no way out.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Rugnur",
				"Well, I think we've gotten a good distance ahead of the Shinsplitters. What do we do now?",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Thursagan",
					"We should keep going. This seems to be a volcano... I think we should try to cause it to erupt. It will kill all the Shinsplitters, and we might be able to find a safe place so the lava doesn't kill us.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Rugnur",
						"This sounds... plausible.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Baglur",
							"Aye, an interesting plan. How do ye propose we do this?",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Thursagan",
								"I have a suspicion that there is an opening somewhere near here that leads to the surface. I have heard of ancient constructions such as I have seen here, of dwarven machinery of some kind that can cause the lava to flow.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Rugnur",
									"Very well. We will continue to explore until we find it.",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Gryphon Rider",
										"My gryphon smells something... probably goblins in this cave!",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Thursagan",
											"Indeed, there may be goblins lurking here. We should beware of them.",
											player,
											{"~!Continue"},
											{function(s)
												if (mapinfo.description == "Caverns of Flame") then
													RemovePlayerObjective(player, "- Destroy the enemy")
												end
												AddPlayerObjective(player, "- Explore as much of the cave as possible")
												AddPlayerObjective(player, "- Rugnur, Baglur and Thursagan must survive")
											end},
											"dwarf/icons/thursagan.png"
										)
										end},
										"dwarf/icons/gryphon_rider.png"
									)
									end},
									"dwarf/icons/baglur.png"
								)
								end},
								"dwarf/icons/thursagan.png"
							)
							end},
							"dwarf/icons/baglur.png"
						)
						end},
						"dwarf/icons/rugnur.png"
					)
					end},
					"dwarf/icons/thursagan.png"
				)
				end},
				"dwarf/icons/rugnur.png"
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
		if (PlayerHasObjective(GetThisPlayer(), "- Explore as much of the cave as possible") and GetPlayerData(GetFactionPlayer("Shinsplitter Clan"), "TotalNumUnits") < 1 and GameCycle > 750) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		unit = CreateUnit("unit-dwarven-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y})
		OrderUnit(GetFactionPlayer("Shinsplitter Clan"), "unit-dwarven-thane", {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y}, {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7}, "move")

		local shinsplitter_thane_name = ""
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") then
				shinsplitter_thane_name = GetUnitVariable(uncount[unit1], "Name")
			end
		end

		Event(
			shinsplitter_thane_name,
			"We have caught up to the Norlunds. Now, prepare to destroy them!",
			player,
			{"~!Continue"},
			{function(s)
			unit = CreateUnit("unit-surghan-mercenary-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 1)
			unit = CreateUnit("unit-surghan-mercenary-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 1)
			unit = CreateUnit("unit-surghan-mercenary-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 2)
			unit = CreateUnit("unit-surghan-mercenary-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 2)
			unit = CreateUnit("unit-dwarven-scout", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			IncreaseUnitLevel(unit, 2, true)
			SetUnitVariable(unit, "CustomAIState", 1)
			unit = CreateUnit("unit-dwarven-scout", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			IncreaseUnitLevel(unit, 2, true)
			SetUnitVariable(unit, "CustomAIState", 2)
			unit = CreateUnit("unit-dwarven-scout", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			IncreaseUnitLevel(unit, 2, true)
			SetUnitVariable(unit, "CustomAIState", 2)
			unit = CreateUnit("unit-dwarven-scout", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			IncreaseUnitLevel(unit, 2, true)
			SetUnitVariable(unit, "CustomAIState", 2)
			unit = CreateUnit("unit-dwarven-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 3)
			unit = CreateUnit("unit-dwarven-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 3)
			unit = CreateUnit("unit-dwarven-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 3)
			unit = CreateUnit("unit-dwarven-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 3)
			unit = CreateUnit("unit-dwarven-scout", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			IncreaseUnitLevel(unit, 2, true)
			SetUnitVariable(unit, "CustomAIState", 4)
			unit = CreateUnit("unit-dwarven-scout", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			IncreaseUnitLevel(unit, 2, true)
			SetUnitVariable(unit, "CustomAIState", 4)
			unit = CreateUnit("unit-dwarven-scout", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			IncreaseUnitLevel(unit, 2, true)
			SetUnitVariable(unit, "CustomAIState", 4)
			unit = CreateUnit("unit-dwarven-scout", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			IncreaseUnitLevel(unit, 2, true)
			SetUnitVariable(unit, "CustomAIState", 4)
			unit = CreateUnit("unit-dwarven-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 4)
			unit = CreateUnit("unit-dwarven-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 4)
			unit = CreateUnit("unit-dwarven-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 4)
			unit = CreateUnit("unit-dwarven-thane", GetFactionPlayer("Shinsplitter Clan"), {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y + 7})
			SetUnitVariable(unit, "CustomAIState", 4)
			Event(
				"Rugnur",
				"Thursagan! The Shinsplitters are right on our tail; what should we do?",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Thursagan",
					"We could try to set off the volcano as soon as possible. Meanwhile, we should draw the Shinsplitters further into the caves, so they can't escape when it does erupt.",
					player,
					{"~!Continue"},
					{function(s)
					end},
					"dwarf/icons/thursagan.png"
				)
				end},
				"dwarf/icons/rugnur.png"
			)
			end},
			"dwarf/icons/thane.png"
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Move onto one of the glyphs in the center of the volcano") == false) then
			local uncount = 0
			uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
			for unit1 = 1,table.getn(uncount) do 
				local unit_quantity = GetNumUnitsAt(-1, "unit-goblin-spearman", {GetUnitVariable(uncount[unit1],"PosX") - 4, GetUnitVariable(uncount[unit1],"PosY") - 4}, {GetUnitVariable(uncount[unit1],"PosX") + 4, GetUnitVariable(uncount[unit1],"PosY") + 4})
				if (unit_quantity > 0) then
					player = GetFactionPlayer("Norlund Clan")
					return true
				end
			end
		end
		return false
	end,
	function()
		Event(
			"Rugnur",
			"These goblins appear to be guarding something.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Thursagan",
				"It is probably the ancient mechanism. Attack them!",
				player,
				{"~!Continue"},
				{function(s)
					AddPlayerObjective(player, "- Move onto one of the glyphs in the center of the volcano")
				end},
				"dwarf/icons/thursagan.png"
			)
			end},
			"dwarf/icons/rugnur.png"
		)
		return false
	end
)

-- make the Shinsplitter units chase Rugnur's dwarves
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		return true
	end,
	function() 
		local thursagan = nil
	
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1],"Ident") == "unit-hero-thursagan") then
				thursagan = uncount[unit1]
			end
		end

		if (thursagan == nil) then
			return true
		end

		-- make the Shinsplitter units attack (send a first wave of Surghan units, and then a subsequent wave of Shinsplitter units)
		uncount = 0
		uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (IsUnitIdle(uncount[unit1])) then
				if (GetUnitVariable(uncount[unit1],"CustomAIState") == 1 or (GetUnitVariable(uncount[unit1],"CustomAIState") == 2 and GameCycle >= 2500) or (GetUnitVariable(uncount[unit1],"CustomAIState") == 3 and GameCycle >= 3500) or (GetUnitVariable(uncount[unit1],"CustomAIState") == 4 and GameCycle >= 4500)) then
					OrderUnit(GetFactionPlayer("Shinsplitter Clan"), GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(thursagan,"PosX"), GetUnitVariable(thursagan,"PosY")}, "attack")
				end
			end
		end

		return true
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Move onto one of the glyphs in the center of the volcano") and GetNumUnitsAt(GetThisPlayer(), "any", {36, 46}, {37, 47}) > 0 and PlayerHasObjective(GetThisPlayer(), "- Distract the Shinsplitters until the volcano erupts and kills them") == false) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		PlaySound("rumble")
		PlaySound("rumble")
		Event(
			"Thursagan",
			"That's it! The volcano will erupt soon now that ye've triggered it.",
			player,
			{"~!Continue"},
			{function(s)
			PlaySound("rumble")
			PlaySound("rumble")
			Event(
				"Baglur",
				"Well, we've succeeded in stopping the Shinsplitters from getting the Scepter, I would say. But what do we do now?!",
				player,
				{"~!Continue"},
				{function(s)
				PlaySound("rumble")
				PlaySound("rumble")
				Event(
					"Thursagan",
					"Now, we must fight the goblins until we die, it's our only option.",
					player,
					{"~!Continue"},
					{function(s)
					PlaySound("rumble")
					PlaySound("rumble")
					Event(
						"Rugnur",
						"We cannot let any of the Shinsplitters or their mercenaries escape; they would tell where the Scepter of Fire is. Make sure they all die!",
						player,
						{"~!Continue"},
						{function(s)
						PlaySound("rumble")
						PlaySound("rumble")
						Event(
							"Thursagan",
							"We have to kill them quickly, before they realize what is happening.",
							player,
							{"~!Continue"},
							{function(s)
							PlaySound("rumble")
							PlaySound("rumble")
							local uncount = 0
							uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
							for unit1 = 1,table.getn(uncount) do 
								if (GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-thursagan") then
									SetUnitVariable(uncount[unit1], "LastCycle", GameCycle)
								end
							end
							AddPlayerObjective(player, "- Distract the Shinsplitters until the volcano erupts and kills them")
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
		return false
	end
)

--[[
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-thursagan" and (GameCycle - GetUnitVariable(uncount[unit1], "LastCycle")) > 3500 and PlayerHasObjective(GetThisPlayer(), "- Distract the Shinsplitters until the volcano erupts and kills them")) then
				player = GetFactionPlayer("Norlund Clan")
				return true
			end
		end
		return false
	end,
	function()
		PlaySound("rumble")
		PlaySound("rumble")

		local shinsplitter_thane_name = ""
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") then
				shinsplitter_thane_name = GetUnitVariable(uncount[unit1], "Name")
			end
		end

		Event(
			shinsplitter_thane_name,
			"Wait, what's going on? The volcano is going to erupt! Everyone, try to get out of these caves!",
			player,
			{"~!Continue"},
			{function(s)
			end},
			"dwarf/icons/thane.png"
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
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-hero-thursagan" and (GameCycle - GetUnitVariable(uncount[unit1], "LastCycle")) > 4500 and PlayerHasObjective(GetThisPlayer(), "- Distract the Shinsplitters until the volcano erupts and kills them")) then
				player = GetFactionPlayer("Norlund Clan")
				return true
			end
		end
		return false
	end,
	function()
		PlaySound("rumble")
		PlaySound("rumble")

		local shinsplitter_thane_name = ""
		local uncount = 0
		uncount = GetUnits(GetFactionPlayer("Shinsplitter Clan"))
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitVariable(uncount[unit1], "Ident") == "unit-dwarven-thane") then
				shinsplitter_thane_name = GetUnitVariable(uncount[unit1], "Name")
			end
		end

		Event(
			shinsplitter_thane_name,
			"Aghh!! The volcano is erupting, and now our exit has been blocked off!!",
			player,
			{"~!Continue"},
			{function(s)
				KillUnitAt("unit-dwarven-thane", GetFactionPlayer("Shinsplitter Clan"), 100, {0, 0}, {256, 256})
				KillUnitAt("unit-dwarven-scout", GetFactionPlayer("Shinsplitter Clan"), 100, {0, 0}, {256, 256})
				KillUnitAt("unit-surghan-mercenary-thane", GetFactionPlayer("Shinsplitter Clan"), 100, {0, 0}, {256, 256})
			end},
			"dwarf/icons/thane.png"
		)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetPlayerData(GetFactionPlayer("Shinsplitter Clan"), "TotalNumUnits") < 1 and PlayerHasObjective(GetThisPlayer(), "- Distract the Shinsplitters until the volcano erupts and kills them")) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function()
		Event(
			"Rugnur",
			"We have hidden the Scepter well, but now the volcano is going to erupt and kill us all.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Gryphon Rider",
				"Hm... I'll leave now!",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"",
					"And thus Rugnur died - a glorious death, in the eyes of the dwarven sages.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"",
						"The gnomish envoy traveled south, to Untersberg, to Pypo I. To report the events of the past fifteen years.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"",
							"And a surviving gryphon rider followed the envoy. I know not how. But the gryphon rider made his way south, to the Brown Hills, and reached them about the time that the envoy did.",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"",
								"Together, they relayed the sad news to the king, that Rugnur and his companions did fulfill their promise to craft the Scepter, but died tragically in the Caverns of Flame.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"",
									"Pypo I thought it little wise to send forces to uncover the Scepter, with goblins swarming the region, and given that the volcano might still be too unstable. Aged and nearing the end of his life himself, he did not have the energy to undertake such an enterprise either.",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"",
										"The scepter would not be found until many generations after Pypo I, in the time of Rubezahl. During that time, it sat in the caves of the Northlands, unfound but undestroyed, moved around by goblins who never understood its true meaning.",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"",
											"But before it was found, legends grew up around it, and around its makers - Thursagan, most brilliant of the dwarven runesmiths, and Rugnur, one of the greatest dwarven heroes of old.",
											player,
											{"~!Continue"},
											{function(s)
												if (mapinfo.description == "Caverns of Flame" and GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
													if (player == GetThisPlayer() and GrandStrategy == false) then
														if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "Caverns of Flame") == false) then
															table.insert(wyr.preferences.QuestsCompleted, "Caverns of Flame")
														end
														SavePreferences()
													end
													ActionVictory()
												end
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
						end}
					)
					end}
				)
				end},
				"dwarf/icons/gryphon_rider.png"
			)
			end},
			"dwarf/icons/rugnur.png"
		)
		return false
	end
)
end