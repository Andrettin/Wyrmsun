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
--      (c) Copyright 2016-2018 by Andrettin
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
	SetPlayerData(0, "RaceName", "gnome")
	SetPlayerData(0, "Faction", "untersberg")
	SetPlayerData(1, "RaceName", "dwarf")
	SetPlayerData(1, "Faction", "random")
	
	unit = CreateUnit("unit-gnomish-master-at-arms", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
	SetUnitVariable(unit, "Character", "pypo")

	unit = CreateUnit("unit-dwarven-yale-rider", 1, {Players[1].StartPos.x, Players[1].StartPos.y}) -- dwarven noble
	SetUnitVariable(unit, "Active", false)
	unit = CreateUnit("unit-dwarven-witness", 1, {Players[1].StartPos.x, Players[1].StartPos.y}) -- old wise and faithful steward to the dwarven noble
	SetUnitVariable(unit, "Active", false)
	AcquireTrait(unit, "upgrade-old")
	
	SetTimeOfDay(7) -- the scenario happens in a gloomy evening in Autumn
end

RemovePlayerObjective(GetFactionPlayer("Untersberg"), "- Defeat your rivals")

AddTrigger("pypos-gold-victory",
	function()
		if (GetNumRivals(GetThisPlayer()) == 0) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		ActionVictory()
		if (player == GetThisPlayer()) then
			SetQuestCompleted("pypos-gold", GameSettings.Difficulty)
		end
		return false
	end
)

AddTrigger("pypos-gold-pypo-dies",
	function()
		if (PlayerHasObjective(GetThisPlayer(), "- Pypo must survive") and FindHero("pypo", GetThisPlayer()) == nil) then
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
