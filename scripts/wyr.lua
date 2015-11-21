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
--      (c) Copyright 2013-2015 by Andrettin
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

-- Convert a unit type to the equivalent for a different race
function ConvertUnitType(unittype, civilization, terrain)
	local equiv

	if (civilization ~= GetUnitTypeData(unittype, "Civilization") and GetCivilizationClassUnitType(GetUnitTypeData(unittype, "Class"), civilization) ~= nil) then
		return GetCivilizationClassUnitType(GetUnitTypeData(unittype, "Class"), civilization)
	end
	
	if (civilization ~= GetUnitTypeData(unittype, "Civilization") and civilization == "germanic" and GetCivilizationClassUnitType(GetUnitTypeData(unittype, "Class"), "teuton") ~= nil) then
		return GetCivilizationClassUnitType(GetUnitTypeData(unittype, "Class"), "teuton")
	end

	return unittype
end

-- Convert unit type to the player's race
function CreateUnit(unittype, player, pos)
	if (not IsNetworkGame()) then
		-- if Rugnur has a persistent level of 2 or higher, create him as his older version already
		if (unittype == "unit-hero-modsognir" and GetArrayIncludes(wyr.preferences.Heroes.Modsognir.upgrades, "unit-dwarven-thane")) then
			unittype = "unit-hero-modsognir-thane"
		elseif (unittype == "unit-hero-durin" and GetArrayIncludes(wyr.preferences.Heroes.Durin.upgrades, "unit-dwarven-thane")) then
			unittype = "unit-hero-durin-thane"
		elseif ((unittype == "unit-hero-rugnur" or unittype == "unit-hero-rugnur-steelclad") and GetArrayIncludes(wyr.preferences.Heroes.Rugnur.upgrades, "unit-dwarven-thane")) then
			unittype = "unit-hero-rugnur-thane"
		elseif (unittype == "unit-hero-rugnur" and GetArrayIncludes(wyr.preferences.Heroes.Rugnur.upgrades, "unit-dwarven-steelclad")) then
			unittype = "unit-hero-rugnur-steelclad"
		elseif (unittype == "unit-hero-baglur" and GetArrayIncludes(wyr.preferences.Heroes.Baglur.upgrades, "unit-dwarven-thane")) then
			unittype = "unit-hero-baglur-thane"
		end
	end

	if (GameCycle ~= 0) then
		return OldCreateUnit(unittype, player, pos)
	end

	-- Don't add any units if the player setup the units to use, and don't add scenario units if in a grand strategy game
	if (
		(
			GameSettings.NumUnits >= 1
			and player ~= 15
			and Players[player].Type ~= PlayerNeutral
		)
		or (
			GrandStrategy
			and GrandStrategyEventMap == false
			and (unittype == "unit-gold-deposit" or unittype == "unit-silver-deposit" or unittype == "unit-copper-deposit" or unittype == "unit-coal-mine" or unittype == "unit-mercenary-camp" or (player ~= 15 and Players[player].Type ~= PlayerNeutral))
		)
	) then
		return
	end

	-- Leave neutral the way it is
--	if (player == 15) then
--		return OldCreateUnit(unittype, player, pos)
--	end

	if (Players[player].Type == PlayerNobody) then
		return nil
	end

	if (Players[player].Type ~= PlayerNeutral) then
		unittype = ConvertUnitType(unittype, GetPlayerData(player, "RaceName"), wyrmsun.tileset)
	end

	return OldCreateUnit(unittype, player, pos)
end

if (OldSetPlayerData == nil) then
	OldSetPlayerData = SetPlayerData
end

--Define Player Data.
function SetupPlayer(player, race, ai, gold, lumber, oil, stone, x, y)
	SetStartView(player, x, y)
	SetPlayerData(player, "Resources", "lumber", lumber)
	SetPlayerData(player, "Resources", "gold", gold)
	SetPlayerData(player, "Resources", "oil", oil)
	SetPlayerData(player, "Resources", "stone", stone)
	SetPlayerData(player, "RaceName", race)
	SetAiType(player, ai)
end

-- Override with game settings
function SetPlayerData(player, data, arg1, arg2)
	if (GameCycle ~= 0) then
		return OldSetPlayerData(player, data, arg1, arg2)
	end

	local res = {arg2, arg2, arg2, arg2, arg2, arg2, arg2, arg2}

	if (data == "RaceName") then
		if (GameSettings.Presets[player].Race ~= -1) then
			arg1 = GetCivilizations()[GameSettings.Presets[player].Race + 1]
		end
		
		if (GrandStrategy and GrandStrategyFaction ~= nil) then
			if (ThisPlayer ~= nil and ThisPlayer.Index == player) then
				arg1 = GrandStrategyFaction.Civilization
			end

			if (ThisPlayer ~= nil and ThisPlayer.Index ~= player and GrandStrategyEventMap == false) then
				if (GetProvinceOwner(AttackedProvince.Name) ~= "" and GetProvinceWater(AttackedProvince.Name) == false) then
					if (GrandStrategyFaction.Name == Attacker and GetFactionFromName(Defender) ~= nil) then
						arg1 = GetFactionFromName(Defender).Civilization
					elseif (GrandStrategyFaction.Name == Defender and GetFactionFromName(Attacker) ~= nil) then
						arg1 = GetFactionFromName(Attacker).Civilization
					end
				elseif (GetProvinceCivilization(AttackedProvince.Name) ~= "") then
					arg1 = GetProvinceCivilization(AttackedProvince.Name)
				end
			end
		end
		
		-- load different UIs depending on player civilization at scenario begin; FIXME: should be possible to change UIs in-game
		if (player == GetThisPlayer()) then
			LoadCivilizationUI(arg1)
		end
	elseif (data == "Faction") then
		if (GrandStrategy and GrandStrategyFaction ~= nil) then
			if (ThisPlayer ~= nil and ThisPlayer.Index == player) then
				arg1 = GrandStrategyFaction.Name
			end

			if (ThisPlayer ~= nil and ThisPlayer.Index ~= player and GrandStrategyEventMap == false) then
				if (GetProvinceOwner(AttackedProvince.Name) ~= "" and GetProvinceWater(AttackedProvince.Name) == false) then
					if (GrandStrategyFaction.Name == Attacker and GetFactionFromName(Defender) ~= nil) then
						arg1 = Defender
					elseif (GrandStrategyFaction.Name == Defender and GetFactionFromName(Attacker) ~= nil) then
						arg1 = Attacker
					end
				end
			end
		end
	elseif (data == "Name") then
		if (GrandStrategy and GrandStrategyFaction ~= nil) then
			if (ThisPlayer ~= nil and ThisPlayer.Index == player) then
				arg1 = GrandStrategyFaction.Name
			end

			if (ThisPlayer ~= nil and ThisPlayer.Index ~= player and GrandStrategyEventMap == false) then
				if (GrandStrategyFaction.Name == Attacker and Defender ~= "") then
					arg1 = Defender
				elseif (GrandStrategyFaction.Name == Defender and Attacker ~= "") then
					arg1 = Attacker
				end
			end
		end
	elseif (data == "Resources") then
		if (GameSettings.Resources == 1) then
			res = {2000, 1000, 1000, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0}
		elseif (GameSettings.Resources == 2) then
			res = {5000, 2000, 2000, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0}
		elseif (GameSettings.Resources == 3) then
			res = {10000, 5000, 5000, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0}
		end
		if (GrandStrategy == false or GrandStrategyEventMap) then
			arg2 = res[GetResourceIdByName(arg1)]
		else
			arg2 = 0
		end
	end

	OldSetPlayerData(player, data, arg1, arg2)

	-- If this is 1 worker mode add the worker now
	if (data == "RaceName") then
		if (GameCycle == 0) then
			if (GameSettings.NumUnits == 1) then -- 1 Worker
				if (player ~= 15 and Players[player].Type ~= PlayerNobody and Players[player].Type ~= PlayerNeutral) then
					local unittype = ConvertUnitType("unit-dwarven-miner", GetPlayerData(player, "RaceName"), wyrmsun.tileset)
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
				end
			elseif (GameSettings.NumUnits == 2) then -- Town Hall and 5 Workers
				if (player ~= 15 and Players[player].Type ~= PlayerNobody and Players[player].Type ~= PlayerNeutral) then
					local unittype = ConvertUnitType("unit-dwarven-town-hall", GetPlayerData(player, "RaceName"), wyrmsun.tileset)
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					unittype = ConvertUnitType("unit-dwarven-miner", GetPlayerData(player, "RaceName"), wyrmsun.tileset)
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
				end
			elseif (GameSettings.NumUnits == 3) then -- Basic Squad
				if (player ~= 15 and Players[player].Type ~= PlayerNobody and Players[player].Type ~= PlayerNeutral) then
					local unittype = ConvertUnitType("unit-dwarven-axefighter", GetPlayerData(player, "RaceName"), wyrmsun.tileset)
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
				end
			elseif (GameSettings.NumUnits == 4) then -- Improved Squad
				if (player ~= 15 and Players[player].Type ~= PlayerNobody and Players[player].Type ~= PlayerNeutral) then
					local unittype = ConvertUnitType("unit-dwarven-axefighter", GetPlayerData(player, "RaceName"), wyrmsun.tileset)
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					unittype = ConvertUnitType("unit-dwarven-scout", GetPlayerData(player, "RaceName"), wyrmsun.tileset)
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
				end
			elseif (GameSettings.NumUnits == 5) then -- Advanced Squad
				if (player ~= 15 and Players[player].Type ~= PlayerNobody and Players[player].Type ~= PlayerNeutral) then
					local unittype = ConvertUnitType("unit-dwarven-axefighter", GetPlayerData(player, "RaceName"), wyrmsun.tileset)
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					unittype = ConvertUnitType("unit-dwarven-scout", GetPlayerData(player, "RaceName"), wyrmsun.tileset)
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
					unittype = ConvertUnitType("unit-dwarven-ballista", GetPlayerData(player, "RaceName"), wyrmsun.tileset)
					OldCreateUnit(unittype, player, {Players[player].StartPos.x, Players[player].StartPos.y})
				end
			end
			if (GrandStrategy and GrandStrategyEventMap == false and GrandStrategyBattle and GrandStrategyFaction ~= nil) then
				if (player ~= 15 and (Players[player].Type == PlayerPerson or Players[player].Type == PlayerComputer)) then
					if (Players[player].Type == PlayerPerson) then
						SetPlayerData(player, "Faction", GrandStrategyFaction.Name)
					elseif (Players[player].Type == PlayerComputer) then
						if (GrandStrategyFaction.Name == Attacker and GetProvinceOwner(AttackedProvince.Name) ~= "") then
							SetPlayerData(player, "Faction", Defender)
						elseif (GrandStrategyFaction.Name == Defender) then
							SetPlayerData(player, "Faction", Attacker)
						end
					end
				end
			end
		end
	elseif (data == "Name") then
		if (GrandStrategy and GrandStrategyEventMap == false) then
			if (player ~= 15 and (Players[player].Type == PlayerPerson or Players[player].Type == PlayerComputer)) then
				if (arg1 == Attacker) then
					CreateProvinceUnits(AttackedProvince.Name, player, 1, true, true)
				elseif (arg1 == Defender) then
					CreateProvinceUnits(AttackedProvince.Name, player, 1, false, false)
				end
				for i, unitName in ipairs(Units) do
					if (IsHero(unitName) and GetGrandStrategyHeroUnitType(GetUnitTypeData(unitName, "DefaultName")) == unitName) then -- create heroes which are in the province for the defender
						if (arg1 == Attacker and GetProvinceHero(AttackedProvince.Name, GetUnitTypeData(unitName, "DefaultName")) == 3) then
							OldCreateUnit(unitName, player, {Players[player].StartPos.x, Players[player].StartPos.y})
						elseif (arg1 == Defender and GetProvinceHero(AttackedProvince.Name, GetUnitTypeData(unitName, "DefaultName")) == 2) then
							OldCreateUnit(unitName, player, {Players[player].StartPos.x, Players[player].StartPos.y})
						end
					end
				end
			end
		end
	end
end

function LoadCivilizationUI(civilization)
	if (UsingTechTree == false and civilization ~= GetPlayerData(GetThisPlayer(), "RaceName")) then
		StopMusic()
	end
	local ui_file = "scripts/civilizations/" .. civilization .. "/ui.lua"
	if not (CanAccessFile(ui_file)) then
		for i=1,table.getn(Mods) do
			local mod_path = tostring(string.gsub(Mods[i], "info.lua", ""))
			if (CanAccessFile(mod_path .. "scripts/civilizations/" .. civilization .. "/ui.lua")) then
				ui_file = mod_path .. "scripts/civilizations/" .. civilization .. "/ui.lua"
			end
		end
	
	end
	Load(ui_file)
	UI.GrandStrategyOKButton.Style = UI.MenuButton.Style
	UI.GrandStrategyEndTurnButton.Style = UI.MenuButton.Style
	UI.GrandStrategyShowHeroesButton.Style = UI.MenuButton.Style
	UI.GrandStrategyShowRulerButton.Style = UI.MenuButton.Style
	if not (RunningScenario) then
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }
	end
	if (UsingTechTree == false and civilization ~= GetPlayerData(GetThisPlayer(), "RaceName")) then
		MusicStopped()
	end
end

-- override normal AI setting when in grand strategy mode
if (OldSetAiType == nil) then
  OldSetAiType = SetAiType
end

-- Override with game settings
function SetAiType(player, arg)
	if (GrandStrategy and GrandStrategyEventMap == false and Defender == GetPlayerData(player, "Name") and ProvinceHasBuildingClass(AttackedProvince.Name, "stronghold")) then
		arg = "passive" -- if has a stronghold, don't attack, but wait for the enemy to come to you
	end
	if ((GrandStrategy and GrandStrategyEventMap == false) or ((GameSettings.NumUnits == 3 or GameSettings.NumUnits == 4 or GameSettings.NumUnits == 5) and arg ~= "passive")) then
		arg = "grand-strategy-battle"
	end

	OldSetAiType(player, arg)
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
