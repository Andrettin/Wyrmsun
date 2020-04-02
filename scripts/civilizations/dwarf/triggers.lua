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
--      (c) Copyright 2016-2020 by Andrettin
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

AddTrigger("the-mead-of-poetry-fjalar-and-galar-conspire",
	function()
		for i=0,(PlayerMax - 2) do
			if (GetPlayerData(i, "TotalNumUnitsConstructed") > 0 and FindHero("fjalar", i) ~= nil and FindHero("galar", i) ~= nil) then
				trigger_player = i
				return true
			end
		end
		return false
	end,
	function()
		CallDialogue("the-mead-of-poetry-fjalar-and-galar-conspire", trigger_player)
		return false
	end
)

AddTrigger("oin-leaves",
	function()
		if (SyncRand(100) ~= 0) then -- 1% chance this will trigger every time it is checked
			return false
		end
		if (GetFactionExists("oinling-clan")) then
			return false
		end
		if ( -- if Andvari's Falls are empty, but there are certain dwarven structures within a certain range of it
			GetMapTemplateData("andvaris-falls", "MapStartPosX") ~= -1
			and GetSiteData("andvaris-falls", "MapCenterPosX") ~= -1
			and GetNumUnitsAt(-2, "any", {GetMapTemplateData("andvaris-falls", "MapStartPosX"), GetMapTemplateData("andvaris-falls", "MapStartPosY")}, {GetMapTemplateData("andvaris-falls", "MapEndPosX"), GetMapTemplateData("andvaris-falls", "MapEndPosY")}, GetMapTemplateData("andvaris-falls", "MapLayer")) == 0
			and (
				GetNumUnitsAt(-2, "unit-dwarven-town-hall", {GetSiteData("andvaris-falls", "MapCenterPosX") - 256, GetSiteData("andvaris-falls", "MapCenterPosY") - 256}, {GetSiteData("andvaris-falls", "MapCenterPosX") + 256, GetMapTemplateData("andvaris-falls", "MapEndPosY") + 256}, GetSiteData("andvaris-falls", "MapLayer")) > 0 -- a dwarven settlement from which Oin could have come from
				or GetNumUnitsAt(-2, "unit-dwarven-stronghold", {GetSiteData("andvaris-falls", "MapCenterPosX") - 256, GetSiteData("andvaris-falls", "MapCenterPosY") - 256}, {GetSiteData("andvaris-falls", "MapCenterPosX") + 256, GetMapTemplateData("andvaris-falls", "MapEndPosY") + 256}, GetSiteData("andvaris-falls", "MapLayer")) > 0
			)
			and ( -- Oin's son Andvari had a golden ring, which means goldsmithing must have been developed
				GetNumUnitsAt(-2, "unit-dwarven-smithy", {GetSiteData("andvaris-falls", "MapCenterPosX") - 256, GetSiteData("andvaris-falls", "MapCenterPosY") - 256}, {GetSiteData("andvaris-falls", "MapCenterPosX") + 256, GetMapTemplateData("andvaris-falls", "MapEndPosY") + 256}, GetSiteData("andvaris-falls", "MapLayer")) > 0 -- a dwarven settlement from which Oin could have come from
				or GetNumUnitsAt(-2, "unit-brising-smithy", {GetSiteData("andvaris-falls", "MapCenterPosX") - 256, GetSiteData("andvaris-falls", "MapCenterPosY") - 256}, {GetSiteData("andvaris-falls", "MapCenterPosX") + 256, GetMapTemplateData("andvaris-falls", "MapEndPosY") + 256}, GetSiteData("andvaris-falls", "MapLayer")) > 0
			)
		) then
			return true
		end
		return false
	end,
	function()
		local oinling_player = CreatePlayerForFaction("oinling-clan", true)
		if (oinling_player == -1) then
			return false
		end
		SetStartView(oinling_player, GetSiteData("andvaris-falls", "MapCenterPosX"), GetSiteData("andvaris-falls", "MapCenterPosY"), GetSiteData("andvaris-falls", "MapLayer"))
		unit = CreateUnitOnTop("unit-dwarven-town-hall", oinling_player, GetSiteData("andvaris-falls", "SiteUnit"))
		unit = CreateUnit("unit-dwarven-mushroom-farm", oinling_player, {CPlayer:GetPlayer(oinling_player).StartPos.x, CPlayer:GetPlayer(oinling_player).StartPos.y}, GetSiteData("andvaris-falls", "MapLayer"))
		local players_around = GetPlayersAroundUnit(unit, 256)
		unit = CreateUnit("unit-dwarven-axefighter", oinling_player, {CPlayer:GetPlayer(oinling_player).StartPos.x, CPlayer:GetPlayer(oinling_player).StartPos.y}, GetSiteData("andvaris-falls", "MapLayer"))
		unit = CreateUnit("unit-dwarven-axefighter", oinling_player, {CPlayer:GetPlayer(oinling_player).StartPos.x, CPlayer:GetPlayer(oinling_player).StartPos.y}, GetSiteData("andvaris-falls", "MapLayer"))
		unit = CreateUnit("unit-dwarven-axefighter", oinling_player, {CPlayer:GetPlayer(oinling_player).StartPos.x, CPlayer:GetPlayer(oinling_player).StartPos.y}, GetSiteData("andvaris-falls", "MapLayer"))
		unit = CreateUnit("unit-dwarven-axefighter", oinling_player, {CPlayer:GetPlayer(oinling_player).StartPos.x, CPlayer:GetPlayer(oinling_player).StartPos.y}, GetSiteData("andvaris-falls", "MapLayer"))
		unit = CreateUnit("unit-dwarven-axefighter", oinling_player, {CPlayer:GetPlayer(oinling_player).StartPos.x, CPlayer:GetPlayer(oinling_player).StartPos.y}, GetSiteData("andvaris-falls", "MapLayer"))
		SetUnitVariable(unit, "Character", "andvari") -- Oin's son
		
		for i = 1, table.getn(players_around) do 
			CallDialogue("oin-leaves", players_around[i])
		end

		return false
	end
)

Load("scripts/civilizations/dwarf/triggers_island_of_the_lizard_god.lua")
Load("scripts/civilizations/dwarf/triggers_joruvellir.lua")
Load("scripts/civilizations/dwarf/triggers_the_first_dwarves.lua")
