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
--      events.lua - Defines events for the gnomes.
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

if (mapinfo.description == "Brown Hills") then
-- Pypo's Gold initial dialogue
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		for i=0,14 do
			if (GetPlayerData(i, "RaceName") == "gnome" and GetPlayerData(i, "UnitTypesCount", "unit-gnomish-duelist") >= 1) then
				player = i
				return true
			end
		end
		return false
	end,
	function() 
		Event(
			"Dursil",
			"Ye gnomes! I am here to talk to yer king!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Pypo I",
				"Ho! Ho! Know, you creeping worm of the earth, I am Pypo I, king of the gnomes. Mine are the Brown Hills with their treasures. What have you to seek in my territory?",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Dursil",
					"My king, I am in a most dire situation. The lady of my desire can be charmed by nothing but gold... and although I am a lord of my own right, my wealth is lacking. If ye could only loan me a sum of money, ye would have my everlasting gratitude.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Pypo I",
						"Confound your gratitude. There would be plenty of wretches like you coming to borrow money from me, if it could be had at such a cheap price.",
						player,
						{"~!Continue"},
						{function(s)
						Event(
							"Dursil",
							"What then do ye demand? State yer terms, and I will accept them, for I must have gold at any price!",
							player,
							{"~!Continue"},
							{function(s)
							Event(
								"Pypo I",
								"Listen then, it is not much that I ask. Only one hair from your head for each thousand of gold pieces.",
								player,
								{"~!Continue"},
								{function(s)
								Event(
									"Dursil",
									"Only one hair from my head? A whole lot of hair ye shall have, and be welcome, if ye only furnish me the money necessary for obtaining the favor of my beloved.",
									player,
									{"~!Continue"},
									{function(s)
									Event(
										"Pypo I",
										"I am putting no limits to the amount you may draw. For each thousand of gold pieces which you receive from me you will have to leave me one hair from your head.",
										player,
										{"~!Continue"},
										{function(s)
										Event(
											"Dursil",
											"It is a bargain!",
											player,
											{"~!Continue"},
											{function(s)
											Event(
												"Pypo I",
												"But, only one hair at a time, and I will have to pull it out myself by the root.",
												player,
												{"~!Continue"},
												{function(s)
												--PlaySound("gold-coins")
												Event(
													"",
													"(The gnome tears a single hair from Dursil's scalp, and then throws a bag of gold at his feet.)",
													player,
													{"~!Continue"},
													{function(s)
													Event(
														"Dursil",
														"Thanks!",
														player,
														{"~!Continue"},
														{function(s)
														Event(
															"Pypo I",
															"No thanks are wanted, see to it that the hairs upon your head will not become too few in time to purchase enough gold for satisfying the greed of your lady.",
															player,
															{"~!Continue"},
															{function(s)
															Event(
																"Gnomish Advisor",
																"My lord, what was that for?",
																player,
																{"~!Continue"},
																{function(s)
																Event(
																	"Pypo I",
																	"That dwarf did not come seeking peace. Had I rejected to give him any gold, he would likely have descended upon our dwellings, pillaging all he could and maybe even taking our lands for settlement. Our forces are not ready for battle... we had to gain some time to prepare ourselves. I expect this dwarf will seek me again, and I will keep giving him gold, until his head has no hair left on it... but by then, we will be ready.",
																	player,
																	{"~!Continue"},
																	{function(s)
																		RemovePlayerObjective(player, "- Defeat your enemies")
																		AddPlayerObjective(player, "- Mine gold to fulfill Dursil's requests")
																		AddPlayerObjective(player, "- Prepare your forces for a showdown with the dwarves")
																		AddPlayerObjective(player, "- Pypo I must survive")
																	end},
																	"gnome/icons/duelist.png"
																)
																end},
																"gnome/icons/duelist.png"
															)
															end},
															"gnome/icons/duelist.png"
														)
														end},
														"dwarf/icons/dwarven_steelclad.png"
													)
													end}
												)
												end},
												"gnome/icons/duelist.png"
											)
											end},
											"dwarf/icons/dwarven_steelclad.png"
										)
										end},
										"gnome/icons/duelist.png"
									)
									end},
									"dwarf/icons/dwarven_steelclad.png"
								)
								end},
								"gnome/icons/duelist.png"
							)
							end},
							"dwarf/icons/dwarven_steelclad.png"
						)
						end},
						"gnome/icons/duelist.png"
					)
					end},
					"dwarf/icons/dwarven_steelclad.png"
				)
				end},
				"gnome/icons/duelist.png"
			)
			end},
			"dwarf/icons/dwarven_steelclad.png"
		)
		return false
	end
)
end
