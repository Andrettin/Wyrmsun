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

-- The Battle of Magetobria introduction
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Suebi Tribe") and PlayerHasObjective(GetFactionPlayer("Suebi Tribe"), "- Defeat the Aedui") == false) then
			player = GetFactionPlayer("Suebi Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"We, the Suebi, have been hired by the Sequani and Arverni tribes to come into Gaul and help them defeat their enemies, the Aedui. We are now positioned in a Sequani settlement, Magetobria, and an Aedui army approaches...",
			player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Defeat your enemies")
				AddPlayerObjective(player, "- Defeat the Aedui")
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
		if (GetFactionExists("Suebi Tribe") and PlayerHasObjective(GetFactionPlayer("Suebi Tribe"), "- Defeat the Aedui") and GetNumRivals(GetFactionPlayer("Suebi Tribe")) == 0) then
			player = GetFactionPlayer("Suebi Tribe")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"The Aedui have been crushed, victory is ours!",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"We were granted land in Gaul by the Sequani and the Arverni. However, our chieftain Ariovistus wanted more. Not only did he begin to lord over the Aedui, but much of the Sequani's lands was taken for settlement, with our kinsmen being brought from beyond the Rhine. The Gaulish tribes lied prostate before us.",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"",
					"It would not be long, however, until an intervening force would sweep our warriors back across the Rhine into Germania: Caesar's Legions. The brilliant general bested Ariovistus in the field, forcing the chieftain to abandon his plans to conquer Gaul for the Suebi.",
					player,
					{"~!Continue"},
					{function(s)
						if (player == GetThisPlayer()) then
							if (GrandStrategy == false) then
								if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Battle of Magetobria") == false) then
									table.insert(wyr.preferences.QuestsCompleted, "The Battle of Magetobria")
								end
								SavePreferences()
								NextMap = "maps/earth/prague.smp"
								CurrentQuest = "The Home of the Boii"
							end
							ActionVictory()
						end
					end},
					nil,
					nil,
					GrandStrategy
				)
				end}
			)
			end}
		)
		return false
	end
)
