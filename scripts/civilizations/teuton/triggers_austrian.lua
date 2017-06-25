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
--      (c) Copyright 2017 by Andrettin
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

AddTrigger("mcz-3328-1853", -- Source: "Minister-Conferenz-Kanzlei MCZ 3328/1853".
	function()
		if (SyncRand(10) ~= 0) then -- 10% chance this will trigger every time it is checked (and 10% for each player it is checked for, for a chance of 1% for a player that matches the conditions
			return false
		end
		for i=0,(PlayerMax - 2) do
			if (
				GetPlayerData(i, "TotalNumUnitsConstructed") > 0
				and SyncRand(10) == 0
				and GetPlayerData(i, "RaceName") == "teuton"
				and CheckDependency(i, "unit-road") -- the act is about labor requirement for road construction
				and GetPlayerData(i, "Allow", "upgrade-deity-christian-god") == "R" -- discusses a complaint by the bishop of Agram
				and GetPlayerData(i, "UnitTypesCount", "unit-teuton-priest") >= 1 -- one of the event's options makes the player lose a priest
				and GetPlayerData(i, "Resources", "copper") >= 500 -- one of the event's options makes the player lose 500 copper
				and GetPlayerData(i, "HasSettlement", "Agram")
			) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("mcz-3328-1853", trigger_player)
		return false
	end
)
