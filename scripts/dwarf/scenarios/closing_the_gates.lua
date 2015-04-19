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
																									RemovePlayerObjective(player, "- Defeat your enemies")
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
																if (GrandStrategy) then
																	Factions.NorlundClan.Gold = Factions.NorlundClan.Gold - 2500
																	Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500
																	-- if defenses have been breached, then the Shinsplitter Clan conquers the province
																	WorldMapProvinces.CavernsOfChaincolt.Units.unit_gnomish_recruit = 0 -- kill off the gnomish envoy if the province has been conquered
																	AcquireProvince(WorldMapProvinces.CavernsOfChaincolt, "Shinsplitter Clan")
																end
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
			end},
			nil,
			nil,
			GrandStrategy
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
																																					CurrentQuest = "Searching for the Runecrafter"
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
		if (GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-dwarven-town-hall") == 0 and GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-dwarven-stronghold") == 0) then
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
				WorldMapProvinces.CavernsOfChaincolt.Units.unit_gnomish_recruit = 0 -- kill off the gnomish envoy if the province has been conquered
				AcquireProvince(WorldMapProvinces.CavernsOfChaincolt, "Shinsplitter Clan")
			end
			ActionVictory()
		else
			ActionDefeat()
		end
		return false
	end
)

-- If Baglur dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (
			(
				PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have one unit standing on each glyph at the same time")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Find Thursagan and bring him to your Mead Hall")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 gold and 20000 coal") 
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves while no enemies are in the caves")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Durstorn and Baglur must survive")
			)
			and GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(GetFactionPlayer("Norlund Clan"), "UnitTypesCount", "unit-hero-baglur-thane") < 1
			and (GetFactionExists("Baglur") == false or GetPlayerData(GetFactionPlayer("Baglur"), "UnitTypesCount", "unit-hero-baglur") + GetPlayerData(GetFactionPlayer("Baglur"), "UnitTypesCount", "unit-hero-baglur-thane") < 1)
		) then
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
		if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
			ActionDefeat()
			if (GrandStrategy) then
				if (PlayerHasObjective(GetThisPlayer(), "- Have one unit standing on each glyph at the same time")) then
					Factions.NorlundClan.Gold = Factions.NorlundClan.Gold - 2500
					Factions.ShinsplitterClan.Gold = Factions.ShinsplitterClan.Gold + 2500
					-- if defenses have been breached, then the Shinsplitter Clan conquers the province
					WorldMapProvinces.CavernsOfChaincolt.Units.unit_gnomish_recruit = 0 -- kill off the gnomish envoy if the province has been conquered
					AcquireProvince(WorldMapProvinces.CavernsOfChaincolt, "Shinsplitter Clan")
				end
			end
		end
		return false
	end
)
