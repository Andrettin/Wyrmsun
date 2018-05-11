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
--      (c) Copyright 2018 by Andrettin
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

AddTrigger("ariovistus-enters-gaul",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("ariovistus", i) ~= nil and GetFactionExists("sequani-tribe") and GetFactionExists("arverni-tribe") and GetFactionExists("aedui-tribe")) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		CallDialogue("ariovistus-enters-gaul", trigger_player)
		return false
	end
)

AddTrigger("ariovistus-claims-victory-over-the-aedui",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("ariovistus", i) ~= nil and GetFactionExists("sequani-tribe") and GetFactionExists("arverni-tribe") and not GetFactionExists("aedui-tribe", true)) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function() 
		CallDialogue("ariovistus-claims-victory-over-the-aedui", trigger_player)
		return false
	end
)

Load("scripts/civilizations/suebi/triggers_marcomanni.lua")
