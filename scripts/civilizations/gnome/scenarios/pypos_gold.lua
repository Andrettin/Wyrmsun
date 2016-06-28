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
--      (c) Copyright 2016 by Andrettin
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
	if not (GrandStrategy) then
		SetPlayerData(1, "Allow", "upgrade-dwarven-runewriting", "F")
	end
	SetPlayerData(0, "RaceName", "gnome")
	SetPlayerData(0, "Faction", "Untersberg")
	SetPlayerData(1, "RaceName", "dwarf")
	
	if not (GrandStrategy) then
		unit = CreateUnit("unit-gnomish-master-at-arms", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Character", "Pypo")
	elseif (GrandStrategyEventMap) then
		CreateProvinceUnits("Untersberg", 0, 1, false, false)
		CreateProvinceCustomHero("Untersberg", 0)
	
		if (FactionHasHero("gnome", "Untersberg", "Pypo")) then
			unit = CreateUnit(GetGrandStrategyHeroUnitType("Pypo"), 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			SetUnitVariable(unit, "Character", "Pypo")
		end
		
	end

	unit = CreateUnit("unit-dwarven-yale-rider", 1, {Players[1].StartPos.x, Players[1].StartPos.y}) -- dwarven noble
	SetUnitVariable(unit, "Starting", false)
	unit = CreateUnit("unit-dwarven-witness", 1, {Players[1].StartPos.x, Players[1].StartPos.y}) -- old wise and faithful steward to the dwarven noble
	SetUnitVariable(unit, "Starting", false)
	AcquireTrait(unit, "upgrade-old")
end

RemovePlayerObjective(GetFactionPlayer("Untersberg"), "- Defeat your enemies")

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Kill 8 Yales") and GetPlayerData(GetThisPlayer(), "UnitTypeKills", "unit-yale") >= 8) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		CallDialogue("a-rocky-home-yales-hunted", player)
		return false
	end
)

AddTrigger(
	function()
		if (GetNumRivals(GetThisPlayer()) == 0) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		ActionVictory()
		if (player == GetThisPlayer() and GrandStrategy == false) then
			SetQuestCompleted("pypos-gold", GameSettings.Difficulty)
		end
		return false
	end
)

AddTrigger(
	function()
		if (PlayerHasObjective(GetThisPlayer(), "- Pypo must survive") and FindHero("Pypo", GetThisPlayer()) == nil) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		ActionDefeat()
		return false
	end
)
