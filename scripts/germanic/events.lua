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
--      (c) Copyright 2014 by Andre Novellino Gouv�a
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

if (mapinfo.description == "Tanais") then
-- On the Vanaquisl introduction
-- based on the Ynglinga saga and on the Indo-European migration according to the Kurgan hypothesis
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy Vanaland's town hall") == false) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"We have assembled a great army to take upon those who live on the Vanaquisl, the people of Vanaland. Their territory shall be taken into our possession, providing our people with the lands we much need to prosper. Onward to victory!",
			player,
			{"~!Continue"},
			{function(s)
				RemovePlayerObjective(player, "- Destroy the enemy")
				AddPlayerObjective(player, "- Destroy Vanaland's town hall")
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
		if (PlayerHasObjective(GetFactionPlayer("Asa Tribe"), "- Destroy Vanaland's town hall") and GetPlayerData(GetFactionPlayer("Vana Tribe"), "UnitTypesCount", "unit-germanic-town-hall") < 1) then
			player = GetFactionPlayer("Asa Tribe")
			return true
		end
		return false
	end,
	function() 
		Event(
			"",
			"We have ravaged Vanaland, but victory has not fallen within our grasp. A number of Vanaland's warriors still loomed at large, reorganizing themselves for an attack on us, and our remaining forces were not enough to assure their defeat. We had no option but to make peace - for the prolongation of this war would bring naught but great damage to our people.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"With expansion across the Vanaquisl being denied to us, many of our chieftains are now clamoring for us to head northwest, to find a new home and leave these crowded steppes well behind.",
				player,
				{"~!Continue"},
				{function(s)
					if (player == GetThisPlayer()) then
	--					if (GrandStrategy == false) then
	--						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "On the Vanaquisl") == false) then
	--							table.insert(wyr.preferences.QuestsCompleted, "On the Vanaquisl")
	--						end
	--						SavePreferences()
	--					end
						ActionVictory()
					end
				end}
			)
			end}
		)
		return false
	end
)
end