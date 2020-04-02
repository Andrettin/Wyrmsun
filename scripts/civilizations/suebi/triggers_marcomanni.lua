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
--      (c) Copyright 2017-2020 by Andrettin
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

AddTrigger("the-first-marcomannic-war-introduction",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and i == GetThisPlayer() and GetCurrentCampaign() == "the-first-marcomannic-war") then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("the-first-marcomannic-war-introduction", trigger_player)
		return false
	end
)

AddTrigger("iuvavum-sacked",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "the-sack-of-iuvavum")) then
				local rome_player = GetFactionPlayer("rome")
				if (rome_player ~= nil) then
					if (GetNumUnitsAt(rome_player, "unit-latin-town-hall", {4135 - EarthStartX, 960 - EarthStartY}, {4135 - EarthStartX, 960 - EarthStartY}, GetMapLayer("material-plane", "earth", 0)) == 0 and GetNumUnitsAt(rome_player, "unit-teuton-stronghold", {4135 - EarthStartX, 960 - EarthStartY}, {4135 - EarthStartX, 960 - EarthStartY}, GetMapLayer("material-plane", "earth", 0)) == 0) then
						trigger_player = i
						return true
					end
				else
					SetPlayerData(i, "FailQuest", "the-sack-of-iuvavum")
				end
			end
		end
		return false
	end,
	function()
		SetPlayerData(trigger_player, "CompleteQuest", "the-sack-of-iuvavum")
		return false
	end
)

AddTrigger("opitergium-razed",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "the-razing-of-opitergium")) then
				local rome_player = GetFactionPlayer("rome")
				if (rome_player ~= nil) then
					if (GetNumUnitsAt(rome_player, "unit-latin-town-hall", {4122 - EarthStartX, 1005 - EarthStartY}, {4122 - EarthStartX, 1005 - EarthStartY}, GetMapLayer("material-plane", "earth", 0)) == 0 and GetNumUnitsAt(rome_player, "unit-teuton-stronghold", {4122 - EarthStartX, 1005 - EarthStartY}, {4122 - EarthStartX, 1005 - EarthStartY}, GetMapLayer("material-plane", "earth", 0)) == 0) then
						trigger_player = i
						return true
					end
				else
					SetPlayerData(i, "FailQuest", "the-razing-of-opitergium")
				end
			end
		end
		return false
	end,
	function()
		SetPlayerData(trigger_player, "CompleteQuest", "the-razing-of-opitergium")
		return false
	end
)

AddTrigger("aquileia-destroyed",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "the-first-marcomannic-war")) then
				local rome_player = GetFactionPlayer("rome")
				if (rome_player ~= nil) then
					if (GetNumUnitsAt(rome_player, "unit-latin-town-hall", {4143 - EarthStartX, 1005 - EarthStartY}, {4143 - EarthStartX, 1005 - EarthStartY}, GetMapLayer("material-plane", "earth", 0)) == 0 and GetNumUnitsAt(rome_player, "unit-teuton-stronghold", {4143 - EarthStartX, 1005 - EarthStartY}, {4143 - EarthStartX, 1005 - EarthStartY}, GetMapLayer("material-plane", "earth", 0)) == 0) then
						trigger_player = i
						return true
					end
				else
					SetPlayerData(i, "FailQuest", "the-first-marcomannic-war")
				end
			end
		end
		return false
	end,
	function()
		CallDialogue("aquileia-destroyed", trigger_player)
		return false
	end
)
