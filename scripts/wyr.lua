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
--      wyr.lua - Wyrmsun compatibility level
--
--      (c) Copyright 2013-2018 by Andrettin
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

if (OldCreateUnit == nil) then
	OldCreateUnit = CreateUnit
end

if (OldCreateUnitOnTop == nil) then
	OldCreateUnitOnTop = CreateUnitOnTop
end

-- Convert a unit type to the equivalent for a different race
function ConvertUnitType(unittype, civilization)
	local equiv

	if (civilization ~= GetUnitTypeData(unittype, "Civilization") and GetCivilizationClassUnitType(GetUnitTypeData(unittype, "Class"), civilization) ~= nil) then
		return GetCivilizationClassUnitType(GetUnitTypeData(unittype, "Class"), civilization)
	end
	
	if (civilization ~= GetUnitTypeData(unittype, "Civilization") and civilization == "germanic" and GetCivilizationClassUnitType(GetUnitTypeData(unittype, "Class"), "teuton") ~= nil) then
		return GetCivilizationClassUnitType(GetUnitTypeData(unittype, "Class"), "teuton")
	end

	return unittype
end

-- Convert unit type to the player's civilization
function CreateUnit(unittype, player, pos, z)
	if (z == nil) then
		z = 0
	end
	if (GameCycle ~= 0) then
		return OldCreateUnit(unittype, player, pos, z)
	end

	-- Leave neutral the way it is
--	if (player == PlayerNumNeutral) then
--		return OldCreateUnit(unittype, player, pos)
--	end

	if (Players[player].Type == PlayerNobody) then
		return nil
	end

	if (Players[player].Type ~= PlayerNeutral) then
		unittype = ConvertUnitType(unittype, GetPlayerData(player, "RaceName"))
	end

	return OldCreateUnit(unittype, player, pos, z)
end

function CreateUnitOnTop(unittype, player, on_top)
	if (GameCycle ~= 0) then
		return OldCreateUnitOnTop(unittype, player, on_top)
	end

	if (Players[player].Type == PlayerNobody) then
		return nil
	end

	if (Players[player].Type ~= PlayerNeutral) then
		unittype = ConvertUnitType(unittype, GetPlayerData(player, "RaceName"))
	end

	return OldCreateUnitOnTop(unittype, player, on_top)
end

if (OldSetPlayerData == nil) then
	OldSetPlayerData = SetPlayerData
end

-- Override with game settings
function SetPlayerData(player, data, arg1, arg2)
	if (GameCycle ~= 0) then
		return OldSetPlayerData(player, data, arg1, arg2)
	end

	local res = {arg2, arg2, arg2, arg2, arg2, arg2, arg2, arg2}

	if (data == "RaceName") then
		if (GameSettings.Presets[player].Race ~= -1 and GameSettings.Presets[player].Race < table.getn(GetCivilizations())) then
			arg1 = GetCivilizations()[GameSettings.Presets[player].Race + 1]
		end
		
		if (player == GetThisPlayer()) then
			LoadCivilizationUI(arg1)
		end
	elseif (data == "Resources") then
		if (GameSettings.Resources == 1) then
			res = {2000, 2000, 2000, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0}
		elseif (GameSettings.Resources == 2) then
			res = {5000, 5000, 5000, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0}
		elseif (GameSettings.Resources == 3) then
			res = {10000, 10000, 10000, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0}
		end
		arg2 = res[GetResourceIdByName(arg1)]
	end

	OldSetPlayerData(player, data, arg1, arg2)
end

function LoadCivilizationUI(civilization)
	Load("scripts/ui.lua")
	local ui_file = "scripts/civilizations/" .. civilization .. "/ui.lua"
	if not (CanAccessFile(ui_file)) then
		for i=1,table.getn(Mods) do
			local mod_path = tostring(string.gsub(Mods[i], "info.lua", ""))
			if (CanAccessFile(mod_path .. "scripts/civilizations/" .. civilization .. "/ui.lua")) then
				ui_file = mod_path .. "scripts/civilizations/" .. civilization .. "/ui.lua"
			end
		end
	
	end
	if (CanAccessFile(ui_file)) then
		Load(ui_file)
	end
end

if (OldDefinePlayerTypes == nil) then
	OldDefinePlayerTypes = DefinePlayerTypes
end

function DefinePlayerTypes(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31)
	local p = {p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, p23, p24, p25, p26, p27, p28, p29, p30, p31}
	local foundperson = false
	local nump = GameSettings.Opponents
	if (nump == 0) then nump = 15 end

	-- FIXME: should randomly pick players to use
	for i=1,(PlayerMax - 1) do
		if (p[i] == "person" or p[i] == "computer") then
			if (p[i] == "person" and foundperson == false) then
				foundperson = true
			else
				if (nump == 0) then
					p[i] = "nobody"
				else
					nump = nump - 1
				end
			end
		end
	end

	OldDefinePlayerTypes(p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31])
end

if OldLoadTileModels == nil then
	OldLoadTileModels = LoadTileModels
end

function LoadTileModels(tileset)

  CleanRawTiles() -- to not create problems with maps that don't use raw tiles

  if (GameCycle ~= 0) then
    return OldLoadTileModels(tileset)
  end
  if (GameSettings.Tileset == nil) then
    return OldLoadTileModels(tileset)
  end
  OldLoadTileModels("scripts/tilesets/" .. GameSettings.Tileset)
end

-- Called by Stratagus when unloading a mod.
function CleanModGame_Lua()

end

-- Called by Stratagus when a game is restarted.
function StartCustomGame_Lua()

end

-- Called by Stratagus when a game finished.
function CleanCustomGame_Lua()

end

-- Called by Stratagus when loading a mod.
function StartModGame_Lua()

end

-- Called by stratagus when a game finished
function CleanGame_Lua()
	print("game ends")
	ReInitAiGameData()
	CleanCustomGame_Lua()
	StartModGame_Lua()
end
