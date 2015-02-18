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

if (mapinfo.description == "Fjalar's and Galar's Hall") then
-- The Mead of Poetry initial dialogue
-- based on the Norse myth of similar name
--[[
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Fjalar and Galar") and GetFactionExists("Thjodrorir")) then
			for i=0,14 do
				if (GetPlayerData(i, "RaceName") == "dwarf" and GetPlayerData(i, "Name") == "Fjalar and Galar") then
					player = i
					return true
				end
			end
		end
		return false
	end,
	function() 
		Event(
			"Fjalar",
			"The wise Thjodrorir has accepted the invitation to feast in our hall... but he has been very wary. Do ye think he suspects something?",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Galar",
				"Aye. Thievery he suspects. His personal guards are on alert should strange movements happen in the night, and they might even go so far as to strike down anyone who acts suspiciously. But Thjodrorir does not even imagine the depth of our betrayal!",
				player,
				{"~!Continue"},
				{function(s)
				Event(
					"Fjalar",
					"Slaying the wise dwarf and brewing his blood into mead... a mead of poetry. The alchemical writings are clear: to drink such a mead would make us sages.",
					player,
					{"~!Continue"},
					{function(s)
					Event(
						"Galar",
						"It is already deep into the night, time to strike. Let's be careful with his guards.",
						player,
						{"~!Continue"},
						{function(s)
							if (mapinfo.description == "Fjalar's and Galar's Hall") then
								RemovePlayerObjective(player, "- Destroy the enemy")
							end
							AddPlayerObjective(player, "- Find Thjodrorir and slay him")
						end},
						"dwarf/icons/dwarven_steelclad.png"
					)
					end},
					"dwarf/icons/dwarven_steelclad.png"
				)
				end},
				"dwarf/icons/dwarven_steelclad.png"
			)
			end},
			"dwarf/icons/dwarven_steelclad.png"
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
		if (GetFactionExists("Fjalar and Galar") and GetFactionExists("Norlund Clan")) then
			player = GetFactionPlayer("Norlund Clan")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"A few days ago our clan's sage, Thjodrorir, disappeared during the night. Word has now reached our chieftain Modsognir that the dwarves Fjalar and Galar have captured Thjodrorir, slaying him for unknown reasons. The chieftain has sent you, Durin, to enter their hall, returning with the sage's remains to give him a proper burial, and bringing the evil pair to the clan's justice.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"Durin",
				"We must wary, for these corridors are filled with the two dwarves' thugs. Let us get this over with as quickly as we can.",
				player,
				{"~!Continue"},
				{function(s)
					if (mapinfo.description == "Fjalar's and Galar's Hall") then
						RemovePlayerObjective(player, "- Destroy the enemy")
					end
					AddPlayerObjective(player, "- Rescue Thjodrorir's remains")
					AddPlayerObjective(player, "- Bring Fjalar and Galar to the clan's justice")
				end},
				"dwarf/icons/durin.png"
			)
			end}
		)
		return false
	end
)
end
