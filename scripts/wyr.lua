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
--      (c) Copyright 2013-2014 by Andre Novellino Gouvêa
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

DefineRaceNames(
	"race", {
		"name", "dwarf",
		"display", dwarven_civilization_name,
		"visible"
	},
	"race", {
		"name", "gnome",
		"display", "Gnome",
		"visible"
	},
	"race", {
		"name", "neutral",
		"display", "Neutral"
	}
)



if (OldCreateUnit == nil) then
  OldCreateUnit = CreateUnit

  local t = {
  }

  DwarfEquivalent = {}

  for i=1,table.getn(t) do
    DwarfEquivalent[t[i][1]] = t[i][2]
  end
end

-- Convert a unit type to the equivalent for a different race
function ConvertUnitType(unittype, race)
  local equiv

  if (race == "dwarf") then
    equiv = DwarfEquivalent[unittype]
  end

  if (equiv ~= nil) then
    return equiv
  else
    return unittype
  end
end

-- Convert unit type to the player's race
function CreateUnit(unittype, player, pos)
  if (GameCycle ~= 0) then
    return OldCreateUnit(unittype, player, pos)
  end

  -- Don't add any units in 1 worker only mode or in 5 workers only mode
  if ((GameSettings.NumUnits == 1 or GameSettings.NumUnits == 2) and player ~= 15) then
    return
  end

  -- Leave neutral the way it is
  if (player == 15) then
    return OldCreateUnit(unittype, player, pos)
  end

  if (Players[player].Type == PlayerNobody) then
    return nil
  end

  unittype = ConvertUnitType(unittype, GetPlayerData(player, "RaceName"))

  return OldCreateUnit(unittype, player, pos)
end


if (OldSetPlayerData == nil) then
  OldSetPlayerData = SetPlayerData
end

-- Override with game settings
function SetPlayerData(player, data, arg1, arg2)
	if (GameCycle ~= 0) then
		return OldSetPlayerData(player, data, arg1, arg2)
	end

	local res = {arg2, arg2, arg2}

	if (data == "RaceName") then
		-- FIXME: support multiplayer
		if (ThisPlayer ~= nil and ThisPlayer.Index == player) then
			if (GameSettings.Presets[0].Race == 1) then
				arg1 = "dwarf"
			end
		end
	elseif (data == "Resources") then
		if (GameSettings.Resources == 1) then
			res = {2000, 1000, 1000, 0}
		elseif (GameSettings.Resources == 2) then
			res = {5000, 2000, 2000, 0}
		elseif (GameSettings.Resources == 3) then
			res = {10000, 5000, 5000, 0}
		end
		if (arg1 == "gold") then
			arg2 = res[1]
		elseif (arg1 == "wood") then
			arg2 = res[2]
		elseif (arg1 == "oil") then
			arg2 = res[3]
		elseif (arg1 == "coal") then
			arg2 = res[4]
		end
	end

	OldSetPlayerData(player, data, arg1, arg2)

	-- If this is 1 worker mode add the worker now
	if (data == "RaceName") then
		if (GameSettings.NumUnits == 1) then
			if (player ~= 15 and Players[player].Type ~= PlayerNobody) then
				local unittype = ConvertUnitType("unit-dwarven-miner", GetPlayerData(player, "RaceName"))
				OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
			end
		elseif (GameSettings.NumUnits == 2) then
			if (player ~= 15 and Players[player].Type ~= PlayerNobody) then
				local unittype = ConvertUnitType("unit-dwarven-town-hall", GetPlayerData(player, "RaceName"))
				OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
				unittype = ConvertUnitType("unit-dwarven-miner", GetPlayerData(player, "RaceName"))
				OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
				OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
				OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
				OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
				OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
			end
		end
	end
end

if (OldDefinePlayerTypes == nil) then
	OldDefinePlayerTypes = DefinePlayerTypes
end

function DefinePlayerTypes(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15)
  local p = {p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15}
  local foundperson = false
  local nump = GameSettings.Opponents
  if (nump == 0) then nump = 15 end

  -- FIXME: should randomly pick players to use
  for i=1,15 do
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

  OldDefinePlayerTypes(p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15])
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

-- Called by stratagus when a game finished
function CleanGame_Lua()
	print("game ends")
	ReInitAiGameData()
end
