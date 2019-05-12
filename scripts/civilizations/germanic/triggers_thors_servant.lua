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

AddTrigger("thialfi-commanded-to-gotland",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("thialfi", i) ~= nil and GetCurrentCampaign() == "thors-servant") then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("thialfi-commanded-to-gotland", trigger_player)
		return false
	end
)

AddTrigger("berserker-brides-arrive-on-hlesey", -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 119.
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked
			return false
		end
		if (GetFactionExists("hlesing-tribe")) then
			return false
		end
		if ( -- if Hlesey is empty, but there are certain Germanic structures within a certain range of it
			GetNumUnitsAt(-2, "any", {GetSiteData("hlesey", "MapCenterPosX") - 1, GetSiteData("hlesey", "MapCenterPosY") - 1}, {GetSiteData("hlesey", "MapCenterPosX") + 1, GetSiteData("hlesey", "MapCenterPosY") + 1}, GetSiteData("hlesey", "MapLayer")) == 0
			and GetNumUnitsAt(-2, "unit-germanic-barracks", {GetSiteData("hlesey", "MapCenterPosX") - 128, GetSiteData("hlesey", "MapCenterPosY") - 128}, {GetSiteData("hlesey", "MapCenterPosX") + 128, GetSiteData("hlesey", "MapCenterPosY") + 128}, GetSiteData("hlesey", "MapLayer")) > 0 -- a barracks from which the warriors could have come from
			and GetNumUnitsAt(-2, "unit-germanic-dock", {GetSiteData("hlesey", "MapCenterPosX") - 128, GetSiteData("hlesey", "MapCenterPosY") - 128}, {GetSiteData("hlesey", "MapCenterPosX") + 128, GetSiteData("hlesey", "MapCenterPosY") + 128}, GetSiteData("hlesey", "MapLayer")) > 0 -- a dock from which they may have obtained ships
			and GetNumUnitsAt(-2, "unit-germanic-smithy", {GetSiteData("hlesey", "MapCenterPosX") - 128, GetSiteData("hlesey", "MapCenterPosY") - 128}, {GetSiteData("hlesey", "MapCenterPosX") + 128, GetSiteData("hlesey", "MapCenterPosY") + 128}, GetSiteData("hlesey", "MapLayer")) > 0 -- a smithy, as they were said in the myth to have wielded iron clubs
		) then
			return true
		end
		return false
	end,
	function()
		local hlesing_player = CreatePlayerForFaction("hlesing-tribe")
		if (hlesing_player == -1) then
			return false
		end
		unit = CreateUnit("unit-teuton-guard-tower", hlesing_player, {GetSiteData("hlesey", "MapCenterPosX"), GetSiteData("hlesey", "MapCenterPosY")}, GetSiteData("hlesey", "MapLayer"))
		local players_around = GetPlayersAroundUnit(unit, 128)
		unit = CreateUnitInTransporter("unit-germanic-archer", hlesing_player, unit)
		unit = CreateUnit("unit-germanic-warrior", hlesing_player, {GetSiteData("hlesey", "MapCenterPosX"), GetSiteData("hlesey", "MapCenterPosY")}, GetSiteData("hlesey", "MapLayer"))
		-- not enough space for these (and one tile must still be left for troops to disembark, as well)
--		unit = CreateUnit("unit-germanic-warrior", hlesing_player, {GetSiteData("hlesey", "MapCenterPosX"), GetSiteData("hlesey", "MapCenterPosY")}, GetSiteData("hlesey", "MapLayer"))
--		unit = CreateUnit("unit-germanic-warrior", hlesing_player, {GetSiteData("hlesey", "MapCenterPosX"), GetSiteData("hlesey", "MapCenterPosY")}, GetSiteData("hlesey", "MapLayer"))
--		unit = CreateUnit("unit-germanic-warrior", hlesing_player, {GetSiteData("hlesey", "MapCenterPosX"), GetSiteData("hlesey", "MapCenterPosY")}, GetSiteData("hlesey", "MapLayer"))
		
		for i=0,(PlayerMax - 2) do
			if (i ~= hlesing_player) then
				SetDiplomacy(hlesing_player, "enemy", i)
				SetDiplomacy(i, "enemy", hlesing_player)
			end
		end

		for i = 1, table.getn(players_around) do 
			CallDialogue("berserker-brides-arrive-on-hlesey", players_around[i])
			unit = CreateUnit("unit-revealer", players_around[i], {GetSiteData("hlesey", "MapCenterPosX"), GetSiteData("hlesey", "MapCenterPosY")}, GetSiteData("hlesey", "MapLayer"))
			SetUnitVariable(unit, "TTL", 600)
		end
		return false
	end
)

AddTrigger("thors-servant-skidbladnir-destroyed",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and GetPlayerData(i, "HasQuest", "slay-geirrod") and GetUniqueItemData("skidbladnir", "CanDrop") and GetCurrentCampaign() == "thors-servant") then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("thors-servant-skidbladnir-destroyed", trigger_player)
		return false
	end
)
