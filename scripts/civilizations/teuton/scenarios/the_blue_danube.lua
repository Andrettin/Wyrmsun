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
--      (c) Copyright 2015 by Andrettin
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
	SetPlayerData(0, "Allow", "upgrade-teuton-writing", "F")
	SetPlayerData(0, "Resources", "gold", 5000)
	SetPlayerData(0, "Resources", "lumber", 5000)
	SetPlayerData(0, "Resources", "stone", 2500)
	SetPlayerData(0, "Resources", "oil", 0)
	SetAiType(0, "land-attack")
	SetPlayerData(1, "Resources", "gold", 2000)
	SetPlayerData(1, "Resources", "lumber", 2000)
	SetPlayerData(1, "Resources", "stone", 1000)
	SetPlayerData(1, "Resources", "oil", 0)
	SetAiType(1, "land-attack")
	
	SetPlayerData(1, "Faction", "Rome")
	
	if (GrandStrategy == false) then
		local rome_player = GetFactionPlayer("Rome")
		SetPlayerData(rome_player, "Allow", "upgrade-teuton-masonry", "R")
		SetPlayerData(0, "Faction", "Bavarian Tribe")
		
		unit = CreateUnit("unit-teuton-swordsman", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-teuton-swordsman", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-teuton-archer", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		
		unit = CreateUnit("unit-teuton-archer", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-teuton-archer", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
		unit = CreateUnit("unit-teuton-catapult", 1, {Players[1].StartPos.x, Players[1].StartPos.y})
		SetUnitVariable(unit, "Active", false)
	elseif (GrandStrategyEventMap) then
		local units_to_be_created = {}
		
		-- Bavarian units
		CreateProvinceUnits("Bohemia", 0)
		CreateProvinceCustomHero("Bohemia", 0)
		
		-- Roman units
		CreateProvinceUnits("Bavaria", 1, 4)
		CreateProvinceCustomHero("Bavaria", 1)
	end
end

-- The Blue Danube introduction
AddTrigger(
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
					RemovePlayerObjective(player, "- Defeat your enemies")
					AddPlayerObjective(player, "- Defeat the Roman remnants")
				end}
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
					if (GrandStrategy == false) then
						if (GetArrayIncludes(wyr.preferences.QuestsCompleted, "The Blue Danube") == false) then
							table.insert(wyr.preferences.QuestsCompleted, "The Blue Danube")
						end
						SavePreferences()
					end
					ActionVictory()
				end
			end}
		)
		return false
	end
)
