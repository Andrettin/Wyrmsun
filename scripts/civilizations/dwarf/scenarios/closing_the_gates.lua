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
--      (c) Copyright 2014-2017 by Andrettin
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
	SetPlayerData(1, "Allow", "upgrade-dwarven-runewriting", "F")
	
	local transporter
	if (GameSettings.Difficulty == 3) then -- if the difficulty is hard, add two goblin watch towers to guard the glyphs
		transporter = CreateUnit("unit-goblin-watch-tower", 2, {43, 50})
		if (transporter) then
			unit = CreateUnitInTransporter("unit-goblin-archer", 2, transporter)
			SetUnitVariable(unit, "Active", false)
		end
		
		transporter = CreateUnit("unit-goblin-watch-tower", 2, {15, 12})
		if (transporter) then
			unit = CreateUnitInTransporter("unit-goblin-archer", 2, transporter)
			SetUnitVariable(unit, "Active", false)
		end
	end
	
	if (GameSettings.Difficulty == 4) then -- if the difficulty is brutal, add four goblin guard towers to guard the glyphs, garrisoned by goblin headhunters
		transporter = CreateUnit("unit-goblin-guard-tower", 2, {43, 50})
		if (transporter) then
			unit = CreateUnitInTransporter("unit-goblin-headhunter", 2, transporter)
			SetUnitVariable(unit, "Active", false)
			unit = CreateUnitInTransporter("unit-goblin-headhunter", 2, transporter)
			SetUnitVariable(unit, "Active", false)
		end
		
		transporter = CreateUnit("unit-goblin-guard-tower", 2, {15, 12})
		if (transporter) then
			unit = CreateUnitInTransporter("unit-goblin-headhunter", 2, transporter)
			SetUnitVariable(unit, "Active", false)
			unit = CreateUnitInTransporter("unit-goblin-headhunter", 2, transporter)
			SetUnitVariable(unit, "Active", false)
		end
		
		transporter = CreateUnit("unit-goblin-guard-tower", 2, {40, 41})
		if (transporter) then
			unit = CreateUnitInTransporter("unit-goblin-headhunter", 2, transporter)
			SetUnitVariable(unit, "Active", false)
			unit = CreateUnitInTransporter("unit-goblin-headhunter", 2, transporter)
			SetUnitVariable(unit, "Active", false)
		end
		
		transporter = CreateUnit("unit-goblin-guard-tower", 2, {9, 7})
		if (transporter) then
			unit = CreateUnitInTransporter("unit-goblin-headhunter", 2, transporter)
			SetUnitVariable(unit, "Active", false)
			unit = CreateUnitInTransporter("unit-goblin-headhunter", 2, transporter)
			SetUnitVariable(unit, "Active", false)
		end
	end
end

-- If Rugnur dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger("closing-the-gates-rugnur-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if ((PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have one unit standing on each glyph at the same time") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Find Thursagan and bring him to your Mead Hall") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 copper and 20000 coal") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves (in the center of the map) while no enemies are in them") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel") or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")) and FindHero("rugnur", GetFactionPlayer("Norlund Clan")) == nil) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")
		RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Mine 10000 copper and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves (in the center of the map) while no enemies are in them")
		if (mapinfo.description == "Chaincolt Foothills" or mapinfo.description == "Caverns of Chaincolt" or mapinfo.description == "Northern Wastelands" or mapinfo.description == "Eastern Mines" or mapinfo.description == "Shorbear Hills" or mapinfo.description == "Svafnir's Lair" or mapinfo.description == "Caverns of Flame") then
			if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
				ActionDefeat()
				if (GrandStrategy) then
					if (PlayerHasObjective(GetThisPlayer(), "- Bring the loaded Gnomish caravans and the envoy to your Mead Hall")) then
						ChangeFactionResource("dwarf", "shinsplitter-clan", "copper", 10000) -- give the funds for Shinsplitter Clan if they managed to successfully stop the shipment
					end
					if (PlayerHasObjective(GetThisPlayer(), "- Have one unit standing on each glyph at the same time")) then
						ChangeFactionResource("dwarf", "norlund-clan", "copper", -10000)
						ChangeFactionResource("dwarf", "shinsplitter-clan", "copper", 10000)
						-- if defenses have been breached, then the Shinsplitter Clan conquers the province
						SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", 0) -- kill off the gnomish envoy if the province has been conquered
						SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-master-at-arms", 0)
						AcquireProvince(WorldMapProvinces.CavernsofChaincolt, "shinsplitter-clan")
					end
				end
			end
		end
		return false
	end
)

-- Closing the Gates initial dialogue
-- based on the Closing the Gates scenario of the Sceptre of Fire campaign from Battle for Wesnoth
AddTrigger("closing-the-gates-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Shinsplitter Clan")) then
			for i=0, (PlayerMax - 2) do
				if (GetPlayerData(i, "RaceName") == "dwarf" and (GetPlayerData(i, "Name") == "Norlund Clan" or GetPlayerData(i, "Name") == "Knalga") and FindHero("rugnur", i) ~= nil and FindHero("baglur", i) ~= nil and GetPlayerData(i, "UnitTypesCount", "unit-dwarven-town-hall") >= 1 and GetPlayerData(PlayerNumNeutral, "UnitTypesCount", "unit-glyph") >= 6 and PlayerHasObjective(i, "- Have one unit standing on each glyph at the same time") == false) then
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

		unit = CreateUnit("unit-revealer", player, {Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.x, Players[GetFactionPlayer("Shinsplitter Clan")].StartPos.y})
		Event(
			"",
			"Next in our story, Rugnur retreated into the caves of Knalga. But the Shinsplitters pressed on, and would enter the caves shortly.",
			event_player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("rugnur"),
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
						FindHero("rugnur"),
						"Aye, that sounds good. I'll stay here and try to defend the gates...",
						event_player,
						{"~!Continue"},
						{function(s)
						Event(
							FindUnit("unit-dwarven-steelclad", GetFactionPlayer("Shinsplitter Clan")),
							"I see ye have sent a messenger to the city. Good idea, but will it really help? We have more troops and more provisions, and we are going to enter those caves and kill ye!",
							event_player,
							{"~!Continue"},
							{function(s)
							Event(
								FindHero("rugnur"),
								"(~<Gulp~>)",
								event_player,
								{"~!Continue"},
								{function(s)
								Event(
									FindUnit("unit-dwarven-steelclad", GetFactionPlayer("Shinsplitter Clan")),
									"Ha! I thought as much. Well then, surrender!",
									event_player,
									{"~!Continue"},
									{function(s)
									Event(
										FindHero("rugnur"),
										"Um... on what terms?",
										event_player,
										{"~!Continue"},
										{function(s)
										Event(
											FindUnit("unit-dwarven-steelclad", GetFactionPlayer("Shinsplitter Clan")),
											"Unconditional.",
											event_player,
											{"~!Continue"},
											{function(s)
											Event(
												FindHero("baglur"),
												"Wait! Rugnur, dinna' they tell ye ~<anything~> when ye took command here?!",
												event_player,
												{"~!Continue"},
												{function(s)
												Event(
													FindHero("rugnur"),
													"Not really. This was supposedly a time of peace. Who are ye?",
													event_player,
													{"~!Continue"},
													{function(s)
													Event(
														FindHero("baglur"),
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
															FindUnit("unit-dwarven-steelclad", GetFactionPlayer("Shinsplitter Clan")),
															"Cease yer meddling, old dwarf! Rugnur is in charge here, and it is he who will bargain with us.",
															event_player,
															possible_options,
															{function(s)
															Event(
																FindHero("rugnur"),
																"Baglur, how do ye close the gates?",
																event_player,
																{"~!Continue"},
																{function(s)
																Event(
																	FindHero("baglur"),
																	"Och, well that's the difficulty. It's an impregnable gate, made of thick layers of solid rock. Almost indestructible. But that means it can only be closed by a special mechanism. Ye need to position a warrior on each of the six glyphs. When all are occupied, the gates wi' close. Then the Shinsplitters will be shut out of the caves forever, at least through this entrance.",
																	event_player,
																	{"~!Continue"},
																	{function(s)
																	Event(
																		FindHero("rugnur"),
																		"Don't we have troops positioned near these glyphs, to unlock them?",
																		event_player,
																		{"~!Continue"},
																		{function(s)
																		Event(
																			FindHero("baglur"),
																			"Och, well, no. Lately goblins have been more in charge of those caves where the glyphs are than we dwarves have.",
																			event_player,
																			{"~!Continue"},
																			{function(s)
																			Event(
																				FindHero("rugnur"),
																				"Well, where are they located?",
																				event_player,
																				{"~!Continue"},
																				{function(s)
																				Event(
																					FindHero("baglur"),
																					"Two are down a side passage in the northwest, another two are in a similar location in the southeast, and two are right next to the front gate.",
																					event_player,
																					{"~!Continue"},
																					{function(s)
																					Event(
																						FindUnit("unit-dwarven-steelclad", GetFactionPlayer("Shinsplitter Clan")),
																						"Have ye made up yer mind yet about surrendering? If ye will not give up, prepare for battle!",
																						event_player,
																						{"~!Continue"},
																						{function(s)
																						Event(
																							FindHero("rugnur"),
																							"Ye may be more powerful than us, but I doubt even ye can blast through our stonecraft. We refuse - now let's close these gates!",
																							event_player,
																							{"~!Continue"},
																							{function(s)
																								AddPlayerObjective(player, "- Have one unit standing on each glyph at the same time")
																								AddPlayerObjective(player, "- Rugnur and Baglur must survive")
																								if (mapinfo.description == "Caverns of Chaincolt") then
																									RemovePlayerObjective(player, "- Defeat your rivals")
																								end
																								KillUnitAt("unit-revealer", player, 1, {0, 0}, {512, 512})
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
																if (GrandStrategy) then
																	ChangeFactionResource("dwarf", "norlund-clan", "copper", -10000)
																	ChangeFactionResource("dwarf", "shinsplitter-clan", "copper", 10000)
																	-- if defenses have been breached, then the Shinsplitter Clan conquers the province
																	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", 0) -- kill off the gnomish envoy if the province has been conquered
																	SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-master-at-arms", 0)
																	AcquireProvince(WorldMapProvinces.CavernsofChaincolt, "shinsplitter-clan")
																end
																ActionDefeat()
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
					end},
					"icon-gnomish-duelist"
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

-- If there is one unit on each glyph
AddTrigger("closing-the-gates-glyphs-activated",
	function()
		if (GameCycle == 0) then
			return false
		end
		for i=0, (PlayerMax - 2) do
			if (PlayerHasObjective(i, "- Have one unit standing on each glyph at the same time") and GetPlayerData(i, "RaceName") == "dwarf" and FindHero("rugnur", i) ~= nil and GetNumUnitsAt(i, "any", {5, 11}, {5, 11}) > 0 and GetNumUnitsAt(i, "any", {38, 53}, {38, 53}) > 0 and GetNumUnitsAt(i, "any", {28, 33}, {28, 33}) > 0 and GetNumUnitsAt(i, "any", {15, 24}, {15, 24}) > 0 and GetNumUnitsAt(i, "any", {23, 7}, {23, 7}) > 0 and GetNumUnitsAt(i, "any", {51, 43}, {51, 43}) > 0) then
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
			FindHero("rugnur"),
			"We have everyone positioned on the glyphs! What do we do now?",
			event_player,
			{"~!Continue"},
			{function(s)
			Event(
				FindHero("baglur"),
				"Just watch. The gates wi' close very soon. Then the raiders outside - and, unfortunately, our clansfolk who are still out there - wi' become irrelevant.",
				event_player,
				{"~!Continue"},
				{function(s)
				Event(
					FindUnit("unit-dwarven-steelclad", GetFactionPlayer("Shinsplitter Clan")),
					"Agh! Well, ye have defeated me for now, but eventually ye will have to exit these caves, to give Pypo back his jewel. And when ye do, we will be ready for ye.",
					event_player,
					{"~!Continue"},
					{function(s)
					Event(
						FindHero("baglur"),
						"If that is what ye choose to do, fine, but be prepared to wait for many years.",
						event_player,
						{"~!Continue"},
						{function(s)
						Event(
							FindHero("rugnur"),
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
											"Ha! There hasn't been a war since that fool rider tried to get the better of Pypo I, why would someone attack us now?",
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
														FindHero("rugnur"),
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
																FindHero("rugnur"),
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
																		FindHero("baglur"),
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
																				FindHero("rugnur"),
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
																						FindHero("rugnur"),
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
																								FindHero("rugnur"),
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
																										FindHero("baglur"),
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
																												FindHero("baglur"),
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
																														FindHero("rugnur"),
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
																																			if (mapinfo.description == "Caverns of Chaincolt") then
																																				if (GetThisPlayer() == GetFactionPlayer("Norlund Clan")) then
																																					ActionVictory()
																																				else
																																					ActionDefeat()
																																				end
																																			end
																																			if (player == GetThisPlayer() and GrandStrategy == false) then
																																																																											SetQuestCompleted("closing-the-gates", GameSettings.Difficulty)
																																			end
																																		end},
																																		"icon-durstorn"
																																	)
																																	end},
																																	"icon-gnomish-duelist"
																																)
																																end}
																															)
																															end},
																															"icon-durstorn"
																														)
																														end}
																													)
																													end},
																													"icon-durstorn"
																												)
																												end}
																											)
																											end},
																											"icon-durstorn"
																										)
																										end}
																									)
																									end},
																									"icon-durstorn"
																								)
																								end}
																							)
																							end},
																							"icon-durstorn"
																						)
																						end}
																						)
																					end},
																					"icon-dwarven-pathfinder"
																				)
																				end}
																			)
																			end},
																			"icon-dwarven-steelclad"
																		)
																		end}
																	)
																	end},
																	"icon-durstorn"
																)
																end}
															)
															end},
															"icon-durstorn"
														)
														end}
													)
													end},
													"icon-durstorn"
												)
												end},
												"icon-dwarven-steelclad"
											)
											end},
											"icon-durstorn"
										)
										end},
										"icon-dwarven-pathfinder"
									)
									end},
									"icon-durstorn"
								)
								end}
							)
							end}
						)
						end}
					)
					end},
					"icon-dwarven-steelclad"
				)
				end}
			)
			end}
		)
		return false
	end
)

-- If the Norlund Clan's mead hall has been destroyed, then the Shinsplitters manage to get the gold and win
AddTrigger("closing-the-gates-shinsplitter-victory",
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
				ChangeFactionResource("dwarf", "norlund-clan", "copper", -10000)
				ChangeFactionResource("dwarf", "shinsplitter-clan", "copper", 10000)
				-- if defenses have been breached, then the Shinsplitter Clan conquers the province
				SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", 0) -- kill off the gnomish envoy if the province has been conquered
				SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-master-at-arms", 0)
				AcquireProvince(WorldMapProvinces.CavernsofChaincolt, "shinsplitter-clan")
			end
			ActionVictory()
		else
			ActionDefeat()
		end
		return false
	end
)

-- If Baglur dies, any quests of the Scepter of Fire campaign currently being pursued fail
AddTrigger("closing-the-gates-baglur-dies",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (
			(
				PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have one unit standing on each glyph at the same time")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Find Thursagan and bring him to your Mead Hall")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Mine 10000 copper and 20000 coal") 
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Defeat Glonoin, the Shorbear Clan leader")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Have all heroes in the Shorbear caves (in the center of the map) while no enemies are in them")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Move Rugnur to the northeast cave entrance")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Get all heroes to the end of the tunnel")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Rugnur, Baglur and Thursagan must survive")
				or PlayerHasObjective(GetFactionPlayer("Norlund Clan"), "- Durstorn and Baglur must survive")
			)
			and FindHero("baglur", GetFactionPlayer("Norlund Clan")) == nil
			and (GetFactionExists("Baglur") == false or FindHero("baglur", GetFactionPlayer("Baglur")) == nil)
		) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		RemovePlayerObjective(player, "- Have one unit standing on each glyph at the same time")
		RemovePlayerObjective(player, "- Find Thursagan and bring him to your Mead Hall")
		RemovePlayerObjective(player, "- Mine 10000 copper and 20000 coal")
		RemovePlayerObjective(player, "- Defeat Glonoin, the Shorbear Clan leader")
		RemovePlayerObjective(player, "- Have all heroes in the Shorbear caves (in the center of the map) while no enemies are in them")
		if (GetFactionPlayer("Norlund Clan") == GetThisPlayer()) then
			ActionDefeat()
			if (GrandStrategy) then
				if (PlayerHasObjective(GetThisPlayer(), "- Have one unit standing on each glyph at the same time")) then
					ChangeFactionResource("dwarf", "norlund-clan", "copper", -10000)
					ChangeFactionResource("dwarf", "shinsplitter-clan", "copper", 10000)
					-- if defenses have been breached, then the Shinsplitter Clan conquers the province
					SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-duelist", 0) -- kill off the gnomish envoy if the province has been conquered
					SetProvinceUnitQuantity("Caverns of Chaincolt", "unit-gnomish-master-at-arms", 0)
					AcquireProvince(WorldMapProvinces.CavernsofChaincolt, "shinsplitter-clan")
				end
			end
		end
		return false
	end
)
