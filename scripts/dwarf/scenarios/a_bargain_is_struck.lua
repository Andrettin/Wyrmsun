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

SetPlayerData(GetFactionPlayer("Shinsplitter Clan"), "Allow", "unit-dwarven-smithy", "F")
SetPlayerData(GetFactionPlayer("Shinsplitter Clan"), "Allow", "unit-dwarven-lumber-mill", "F")
SetPlayerData(GetFactionPlayer("Shinsplitter Clan"), "Allow", "unit-dwarven-sentry-tower", "F")

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
		local rugnur = FindHero("Rugnur")
		local pypo_i = FindUnit("unit-gnomish-recruit", gnomish_monarch_player)
		unit = CreateUnit("unit-revealer", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
		Event(
			"",
			"The land of the gnomes' banner bold\nComes not from its own land;\nIt comes from Dwarfdom, grim and old\nMade by a runesmith's hand.\n\nSo now I tell from whence it came -\nThe Fire-scepter great -\nAnd of the makers of the same,\nTheir tale I now relate...",
			player,
			{"~!Continue"},
			{function(s)
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
							rugnur,
							"Gnomes, halt! Who dares bring an army into the dwarven hills?",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								pypo_i,
								"We come to make a bargain with you.",
								player,
								{"~!Listen to him", "~!Up axes! (Forego Quest)"},
								{function(s)
								Event(
									rugnur,
									"Well, state yer business and be done with it. And if we don't like what ye say, ye leave!",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										pypo_i,
										"Have you heard of the Ruby of Fire?",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											rugnur,
											"Aye... yer deceased king brought it from the west, right? Ye own it.",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												pypo_i,
												"Correct. However, we have a problem with it.",
												player,
												{"~!Continue"},
												{function(s)
												Event(
													rugnur,
													"What sort of problem?",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														pypo_i,
														"The stone is very atypical. To cut and insert it would require more skill than my best craftsmen have...",
														player,
														{"~!Continue"},
														{function(s)
														Event(
															rugnur,
															"And what... ye want us to do this, cut the stone? And make an artifact of some kind?",
															player,
															{"~!Continue"},
															{function(s)
															Event(
																pypo_i,
																"I want you to craft it into a mighty artifact, that will embody the power of my will and be a symbol of the legitimacy of my rule.",
																player,
																{"~!Continue"},
																{function(s)
																Event(
																	rugnur,
																	"Well... I think we can make a deal, but I'm not sure. I'll have to ask the tribal leaders.",
																	player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		pypo_i,
																		"If you are not authorized to make a deal, send out someone who is, and I will bargain with him.",
																		player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			rugnur,
																			"They would refuse to come. Ye must come into the caves, and go to the city in person, or send a representative.",
																			player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				pypo_i,
																				"I can always take my offer to another tribe more friendly to its potential patrons. You are not the only smiths in these lands!",
																				player,
																				{"~!Discuss his offer", "~!No deal (Forego Quest)"},
																				{function(s)
																				Event(
																					rugnur,
																					"Uh, no, wait! Let's talk business - how much will ye pay us to do this for ye?",
																					player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						pypo_i,
																						"Five thousand pieces of silver.",
																						player,
																						{"~!Continue"},
																						{function(s)
																						Event(
																							rugnur,
																							"Ye said ye wanted a potent artifact, not a child's playtoy! So... twenty thousand, minimum. The crafting of this will take us many years, ye must pay us well.",
																							player,
																							{"~!Continue"},
																							{function(s)
																							Event(
																								pypo_i,
																								"Ten thousand.",
																								player,
																								{"~!Continue"},
																								{function(s)
																								Event(
																									rugnur,
																									"Nothing below fifteen!",
																									player,
																									{"~!Continue"},
																									{function(s)
																									Event(
																										pypo_i,
																										"Then no deal. I'll gather my things and go to another dwarven clan now.",
																										player,
																										{"~!Continue"},
																										{function(s)
																										Event(
																											rugnur,
																											"Fine then - ten thousand... now, what exactly do ye want us to make the stone into?",
																											player,
																											{"~!Continue"},
																											{function(s)
																											Event(
																												pypo_i,
																												"I want you to make it into a scepter, a scepter of fire.",
																												player,
																												{"~!Continue"},
																												{function(s)
																												Event(
																													rugnur,
																													"I'll see what I can do. But I will need five thousand silver in advance, to pay for the materials.",
																													player,
																													{"~!Continue"},
																													{function(s)
																													Event(
																														pypo_i,
																														"Very well. I have the silver here, ready to ship, and I will send someone over with the stone itself. He will stay with you as you make the scepter, and make sure you are going to get it done on time. I expect it done before my reign as king is ended.",
																														player,
																														{"~!Continue"},
																														{function(s)
																															unit = CreateUnit("unit-gnomish-recruit", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y}) -- gnomish envoy who holds the ruby
																															IncreaseUnitLevel(unit, 1, true)
																															AcquireAbility(unit, "upgrade-sword-mastery")
																															if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
																																-- if human-controlled player is Shinsplitter Clan, then tell the caravans to move
																																OrderUnit(player, "unit-gnomish-recruit", {GetUnitVariable(unit,"PosX"), GetUnitVariable(unit,"PosY")}, {47, 8}, "move")
																															end
																															unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																															if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
																																-- if human-controlled player is Shinsplitter Clan, then tell the caravans to move
																																OrderUnit(player, "unit-gnomish-caravan", {GetUnitVariable(unit,"PosX"), GetUnitVariable(unit,"PosY")}, {47, 8}, "move")
																															end
																															local transporter = unit
																															unit = CreateUnitInTransporter("unit-gold-chest", 15, transporter)
																															unit = CreateUnitInTransporter("unit-gold-chest", 15, transporter)
																															unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																															if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
																																-- if human-controlled player is Shinsplitter Clan, then tell the caravans to move
																																OrderUnit(player, "unit-gnomish-caravan", {GetUnitVariable(unit,"PosX"), GetUnitVariable(unit,"PosY")}, {47, 8}, "move")
																															end
																															transporter = unit
																															unit = CreateUnitInTransporter("unit-gold-chest", 15, transporter)
																															unit = CreateUnitInTransporter("unit-gold-chest", 15, transporter)
																															unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																															if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
																																-- if human-controlled player is Shinsplitter Clan, then tell the caravans to move
																																OrderUnit(player, "unit-gnomish-caravan", {GetUnitVariable(unit,"PosX"), GetUnitVariable(unit,"PosY")}, {47, 8}, "move")
																															end
																															transporter = unit
																															unit = CreateUnitInTransporter("unit-gold-chest", 15, transporter)
																															unit = CreateUnitInTransporter("unit-gold-chest", 15, transporter)
																															unit = CreateUnit("unit-gnomish-caravan", player, {Players[gnomish_monarch_player].StartPos.x, Players[gnomish_monarch_player].StartPos.y})
																															if (GetThisPlayer() == GetFactionPlayer("Shinsplitter Clan")) then
																																-- if human-controlled player is Shinsplitter Clan, then tell the caravans to move
																																OrderUnit(player, "unit-gnomish-caravan", {GetUnitVariable(unit,"PosX"), GetUnitVariable(unit,"PosY")}, {47, 8}, "move")
																															end
																															transporter = unit
																															unit = CreateUnitInTransporter("unit-gold-chest", 15, transporter)
																															unit = CreateUnitInTransporter("unit-gold-chest", 15, transporter)
																															if (mapinfo.description == "Chaincolt Foothills") then
																																ChangeUnitsOwner({6, 65}, {6 + 1, 65 + 1}, gnomish_monarch_player, 0)
																																RemovePlayerObjective(player, "- Defeat your enemies")
																															end
																															SetDiplomacy(gnomish_monarch_player, "allied", player)
																															SetSharedVision(gnomish_monarch_player, true, player)
																															SetDiplomacy(player, "allied", gnomish_monarch_player)
																															SetSharedVision(player, true, gnomish_monarch_player)
																															AddPlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
																															AddPlayerObjective(player, "- Rugnur must survive")
																															AddPlayerObjective(player, "- The gnomish envoy must survive")
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
																							end}
																						)
																						end}
																					)
																					end}
																				)
																				end,
																				function(s)
																					SetDiplomacy(gnomish_monarch_player, "neutral", player)
																					SetDiplomacy(player, "neutral", gnomish_monarch_player)
																					KillUnitAt("unit-revealer", player, 1, {0, 0}, {256, 256})
																					ActionDraw()
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
								end}
							)
							end}
						)
						end},
						nil,
						nil,
						GrandStrategy
					)
					end},
					nil,
					nil,
					GrandStrategy
				)
				end},
				nil,
				nil,
				GrandStrategy
			)
			end},
			nil,
			nil,
			GrandStrategy
		)

		-- Follow-up of the A Bargain is Struck initial dialogue
		AddTrigger(
			function()
				if (GameCycle == 0) then
					return false
				end
				for i=0,14 do
					if (PlayerHasObjective(i, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")) then
						player = i
						return true
					end
				end
				return false
			end,
			function() 
				local rugnur = FindHero("Rugnur")
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
				
				local raider_leader = FindUnit("unit-dwarven-steelclad", GetFactionPlayer("Shinsplitter Clan"))
				
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
						raider_leader,
						"Hey! Ye can't do that - this road belongs to the Shinsplitter Clan. We're not letting ye transport gold and jewels on it without paying a toll.",
						event_player,
						{"~!Continue"},
						{function(s)
						Event(
							rugnur,
							"What are ye talking about?! This road has always been open to all.",
							event_player,
							{"~!Continue"},
							{function(s)
							Event(
								raider_leader,
								"Aye, we have allowed people to use it, but it is our road.",
								event_player,
								{"~!Continue"},
								{function(s)
								Event(
									rugnur,
									"Not true! This is Norlund land; if anything, it's our road!",
									event_player,
									{"~!Continue"},
									{function(s)
									Event(
										raider_leader,
										"Nevertheless, if ye try to move yer caravans here ye have to pay the toll, or face our wrath!",
										event_player,
										{"~!Continue"},
										{function(s)
										Event(
											rugnur,
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
												else
													if (wyr.preferences.ShowTips and not IsReplayGame() and not IsNetworkGame()) then
														Tip("", "Your enemies in this scenario are more resourceful than you - it is better to quickly assemble troops to escort the caravans, as the enemy is likely to eventually overwhelm you.")
													end
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
			if (
				PlayerHasObjective(i, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
				and GetPlayerData(i, "RaceName") == "dwarf"
				and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1
				and (IfNearUnit(i, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-town-hall") or IfNearUnit(i, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-stronghold"))
				and (IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-recruit") or IfNearUnit(i, ">=", 1, "unit-dwarven-stronghold", "unit-gnomish-recruit"))
			) then
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
				local caravans_loaded = true -- are all caravans loaded?
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-caravan" and GetUnitVariable(uncount[unit1], "Transport") < 2) then -- only checks if the unit is transporting two things, not necessarily two chests, which isn't optimal
						caravans_loaded = false
					end
				end
				
				if (
					(IfNearUnit(player, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-town-hall") or IfNearUnit(player, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-stronghold"))
					and (IfNearUnit(player, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-caravan") or IfNearUnit(player, ">=", 1, "unit-dwarven-stronghold", "unit-gnomish-caravan"))
					and caravans_loaded) then
					Event(
						FindUnit("unit-gnomish-recruit", gnomish_monarch_player),
						"All the silver is there too. Proceed with the task, Rugnur!",
						player,
						{"~!Continue"},
						{function(s)
							RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
							if (player == GetThisPlayer() and GrandStrategy == false) then
								if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == false) then
									table.insert(wyr.preferences.QuestsCompleted, "A Bargain is Struck")
								end
								SavePreferences()
							end
							if (mapinfo.description == "Chaincolt Foothills") then
								if (GetThisPlayer() == GetFactionPlayer("Norlund Clan")) then
									ActionVictory()
								else
									ActionDefeat()
								end
								if (GrandStrategy) then -- if is grand strategy, begin war between Norlund Clan and Shinsplitter Clan
									Factions.NorlundClan.Gold = Factions.NorlundClan.Gold + 2500 -- 5000 silver, and for our purposes silver is considered to be worth half of what gold is
								end
							end
						end}
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
			if (
				PlayerHasObjective(i, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
				and GetPlayerData(i, "RaceName") == "dwarf"
				and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1
				and (IfNearUnit(i, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-town-hall") or IfNearUnit(i, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-stronghold"))
				and (IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-caravan") or IfNearUnit(i, ">=", 1, "unit-dwarven-stronghold", "unit-gnomish-caravan"))
			) then
				local caravans_loaded = true -- are all caravans loaded?
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-caravan" and GetUnitVariable(uncount[unit1], "Transport") < 2) then -- only checks if the unit is transporting two things, not necessarily two chests, which isn't optimal
						caravans_loaded = false
					end
				end
				
				if (caravans_loaded) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		if (
			(IfNearUnit(player, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-town-hall") or IfNearUnit(player, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-stronghold"))
			and (IfNearUnit(player, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-recruit") or IfNearUnit(player, ">=", 1, "unit-dwarven-stronghold", "unit-gnomish-recruit"))
		) then
			Event(
				FindHero("Rugnur"),
				"That's the last caravan! We will commence work immediately.",
				player,
				{"~!Continue"},
				{function(s)
					RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
					if (player == GetThisPlayer() and GrandStrategy == false) then
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "A Bargain is Struck")
						end
						SavePreferences()
					end
					if (mapinfo.description == "Chaincolt Foothills") then
						if (GetThisPlayer() == GetFactionPlayer("Norlund Clan")) then
							ActionVictory()
						else
							ActionDefeat()
						end
						if (GrandStrategy) then -- if is grand strategy, begin war between Norlund Clan and Shinsplitter Clan
							Factions.NorlundClan.Gold = Factions.NorlundClan.Gold + 2500 -- 5000 silver, and for our purposes silver is considered to be worth half of what gold is
						end
					end
				end}
			)
		else
			Event(
				FindHero("Rugnur"),
				"We have all of the silver, now all we need is the stone.",
				player,
				{"~!Continue"},
				{function(s)
				end}
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
			if (
				(SyncRand(100) + 1) <= 10
				and PlayerHasObjective(i, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
				and GetPlayerData(i, "RaceName") == "dwarf"
				and (GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(i, "UnitTypesCount", "unit-hero-rugnur-thane")) >= 1
				and (IfNearUnit(i, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-town-hall") or IfNearUnit(i, ">=", 4, "unit-gnomish-caravan", "unit-dwarven-stronghold"))
				and (IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-caravan") or IfNearUnit(i, ">=", 1, "unit-dwarven-stronghold", "unit-gnomish-caravan"))
				and (IfNearUnit(i, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-town-hall") or IfNearUnit(i, ">=", 1, "unit-gnomish-recruit", "unit-dwarven-stronghold"))
				and (IfNearUnit(i, ">=", 1, "unit-dwarven-town-hall", "unit-gnomish-recruit") or IfNearUnit(i, ">=", 1, "unit-dwarven-stronghold", "unit-gnomish-recruit"))
			) then
				local caravans_loaded = true -- are all caravans loaded?
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-caravan" and GetUnitVariable(uncount[unit1], "Transport") < 2) then -- only checks if the unit is transporting two things, not necessarily two chests, which isn't optimal
						caravans_loaded = false
					end
				end
				
				if (caravans_loaded) then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
		if (player == GetThisPlayer() and GrandStrategy == false) then
			if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "A Bargain is Struck") == false) then
				table.insert(wyr.preferences.QuestsCompleted, "A Bargain is Struck")
			end
			SavePreferences()
		end
		if (mapinfo.description == "Chaincolt Foothills") then
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
			if (PlayerHasObjective(i, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall") and GetPlayerData(i, "UnitTypesCount", "unit-gnomish-caravan") < 4) then
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
			FindUnit("unit-gnomish-recruit", gnomish_monarch_player),
			"You just let a caravan, with ~<my~> money loaded in it, get captured! If I can't trust you to keep my property secure, the deal's off.",
			event_player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
				if (mapinfo.description == "Chaincolt Foothills") then
					if (GetThisPlayer() == player) then
						ActionDefeat()
					end
				end
			end}
		)
		return false
	end
)

-- If a caravan's cargo has been dropped, the A Bargain is Struck quest fails
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		for i=0,14 do
			if (PlayerHasObjective(i, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")) then
				local caravans_loaded = true -- are all caravans loaded?
				local uncount = 0
				uncount = GetUnits(GetFactionPlayer("Norlund Clan"))
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == "unit-gnomish-caravan" and GetUnitVariable(uncount[unit1], "Transport") < 2) then -- only checks if the unit is transporting two things, not necessarily two chests, which isn't optimal
						caravans_loaded = false
					end
				end
				if (caravans_loaded == false) then
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
		Event(
			FindUnit("unit-gnomish-recruit", gnomish_monarch_player),
			"Rugnur, you fool! You just let a caravan's cargo fall away! If I can't trust you to keep my property secure, the deal's off.",
			event_player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
				if (mapinfo.description == "Chaincolt Foothills") then
					if (GetThisPlayer() == player) then
						ActionDefeat()
					end
				end
			end}
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

-- If Rugnur dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have one unit standing on each glyph at the same time") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Find Thursagan and bring him to your Mead Hall") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 gold and 20000 coal") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves while no enemies are in the caves") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")) and (GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-rugnur") + GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-rugnur-steelclad") + GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-rugnur-thane")) < 1) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
		RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Mine 10000 gold and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
		if (mapinfo.description == "Chaincolt Foothills" or mapinfo.description == "Caverns of Chaincolt" or mapinfo.description == "Northern Wastelands" or mapinfo.description == "Eastern Mines" or mapinfo.description == "Shorbear Hills" or mapinfo.description == "Svafnir's Lair" or mapinfo.description == "Caverns of Flame") then
			if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
				ActionDefeat()
				if (GrandStrategy) then
					if (PlayerHasObjective(GetThisPlayer(), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")) then
						Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500 -- give the funds for Shinsplitter Clan if they managed to successfully stop the shipment
					end
					if (PlayerHasObjective(GetThisPlayer(), "- Have one unit standing on each glyph at the same time")) then
						Factions.NorlundClan.Gold = Factions.NorlundClan.Gold - 2500
						Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500
						-- if defenses have been breached, then the Shinsplitter Clan conquers the province
						WorldMapProvinces.CavernsOfChaincolt.Units.unit_gnomish_recruit = 0 -- kill off the gnomish envoy if the province has been conquered
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
		if ((PlayerHasObjective(GetThisPlayer(), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall") or PlayerHasObjective(GetThisPlayer(), "- Find Thursagan and bring him to your Mead Hall") or PlayerHasObjective(GetThisPlayer(), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetThisPlayer(), "- Have all heroes in the Shorbear caves while no enemies are in the caves") or PlayerHasObjective(GetThisPlayer(), "- Move the Gnomish Envoy to the southern border east of the river")) and GetPlayerData(GetThisPlayer(), "UnitTypesCount", "unit-gnomish-recruit") < 1) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves while no enemies are in the caves")
		if (mapinfo.description == "Chaincolt Foothills" or mapinfo.description == "Northern Wastelands" or mapinfo.description == "Shorbear Hills") then
			ActionDefeat()
			if (GrandStrategy and PlayerHasObjective(GetThisPlayer(), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")) then
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
--			if (PlayerHasObjective(i, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall") and GetPlayerData(GetCivilizationPlayer("gnome"), "UnitTypesCount", "unit-gnomish-recruit") < 1) then
--				player = i
--				return true
--			end
--		end
--		return false
--	end,
--	function() 
--		RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
--		if (mapinfo.description == "Chaincolt Foothills") then
--			ActionDefeat()
--			if (GrandStrategy and PlayerHasObjective(GetThisPlayer(), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")) then
--				Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500 -- give the funds for Shinsplitter Clan if they managed to successfully stop the shipment
--			end
--		end
--		return false
--	end
--)
