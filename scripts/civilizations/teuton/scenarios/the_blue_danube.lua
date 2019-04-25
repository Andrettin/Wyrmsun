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
--      (c) Copyright 2015-2019 by Andrettin
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
	SetPlayerData(0, "Resources", "copper", 5000)
	SetPlayerData(0, "Resources", "lumber", 5000)
	SetPlayerData(0, "Resources", "stone", 2500)
	SetPlayerData(0, "Resources", "oil", 0)
	SetAiType(0, "land-attack")
	SetPlayerData(1, "Resources", "copper", 2000)
	SetPlayerData(1, "Resources", "lumber", 2000)
	SetPlayerData(1, "Resources", "stone", 1000)
	SetPlayerData(1, "Resources", "oil", 0)
	SetAiType(1, "land-attack")
	
	SetPlayerData(0, "Faction", "bavarian-tribe")
	SetPlayerData(1, "Faction", "rome")
	SetPlayerData(1, "Allow", "upgrade-masonry", "R")
	
	unit = CreateUnit("unit-teuton-swordsman", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	SetUnitVariable(unit, "Active", false)
	unit = CreateUnit("unit-teuton-swordsman", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	SetUnitVariable(unit, "Active", false)
	unit = CreateUnit("unit-teuton-archer", 0, {GetPlayerData(0, "StartPosX"), GetPlayerData(0, "StartPosY")})
	SetUnitVariable(unit, "Active", false)
		
	unit = CreateUnit("unit-latin-javelineer", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
	SetUnitVariable(unit, "Active", false)
	unit = CreateUnit("unit-latin-javelineer", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
	SetUnitVariable(unit, "Active", false)
	unit = CreateUnit("unit-teuton-catapult", 1, {GetPlayerData(1, "StartPosX"), GetPlayerData(1, "StartPosY")})
	SetUnitVariable(unit, "Active", false)
end

-- The Blue Danube introduction
AddTrigger("the-blue-danube-introduction",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Bavarian Tribe") and PlayerHasObjective(GetFactionPlayer("Bavarian Tribe"), "- Defeat the Roman remnants") == false) then
			player = GetFactionPlayer("Bavarian Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"As time passed, our ancestors, the Marcomanni, came to be more and more known by their place of dwelling - Bohemia. Thus did our name of \"Bavarians\" originate - it means \"men from Bohemia\". Expelled from those lands by the Lombards, we must now seek a home on the margins of the Danube.",
			player,
			{"~!Continue"},
			{function(s)
			Event(
				"",
				"After a long time traveling south, we are now close to the great river. Our scouts report that remnant forces of the crumbling Roman Empire can be found here - we must locate and destroy them, to make way for our settlement in these lands.",
				player,
				{"~!Continue"},
				{function(s)
					RemovePlayerObjective(player, "- Defeat your rivals")
					AddPlayerObjective(player, "- Defeat the Roman remnants")
				end}
			)
			end}
		)
		return false
	end
)

AddTrigger("the-blue-danube-victory",
	function()
		if (GameCycle == 0) then
			return false
		end
		if (GetFactionExists("Bavarian Tribe") and PlayerHasObjective(GetFactionPlayer("Bavarian Tribe"), "- Defeat the Roman remnants") and GetNumRivals(GetFactionPlayer("Bavarian Tribe")) == 0) then
			player = GetFactionPlayer("Bavarian Tribe")
			return true
		end
		return false
	end,
	function()
		Event(
			"",
			"The Romans of this area have been fully subjected to us. Long has been our journey, and pleasant shall be our new home. Already marriages are occurring between our people and the locals, who begin to learn our tongue. A new land has been born, Bavaria!",
			player,
			{"~!Continue"},
			{function(s)
				if (player == GetThisPlayer()) then
					ActionVictory()
					if (GrandStrategy == false) then
						SetQuestCompleted("the-blue-danube", GameSettings.Difficulty)
					end
				end
			end}
		)
		return false
	end
)
