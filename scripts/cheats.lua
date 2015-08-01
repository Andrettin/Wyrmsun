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
--      cheats.lua - Cheat Codes
--
--      (c) Copyright 2001-2015 by Lutz Sammer, Jimmy Salmon, Pali Rohár and Andrettin
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

InitFuncs:add(function()
  speedcheat = false
  godcheat = false
end)

function HandleCheats(str)
  local resources = { "gold", "lumber", "oil", "ore", "stone", "coal", "research", "prestige", "timber", "silver", "copper" }

  if (str == "im a lumberjack and its ok") then
    SetSpeedResourcesHarvest("lumber", 25)
--    AddMessage("Wow -- I got jigsaw!")

  elseif (str == "otters ransom") then
	for i = 0,PlayerMax - 1 do
		SetPlayerData(i, "Resources", "gold", GetPlayerData(i, "Resources", "gold") + 12000)
		SetPlayerData(i, "Resources", "lumber", GetPlayerData(i, "Resources", "lumber") + 5000)
		SetPlayerData(i, "Resources", "oil", GetPlayerData(i, "Resources", "oil") + 5000)
		SetPlayerData(i, "Resources", "stone", GetPlayerData(i, "Resources", "stone") + 5000)
		SetPlayerData(i, "Resources", "coal", GetPlayerData(i, "Resources", "coal") + 5000)
	end
	AddMessage("Resources increased!")

  elseif (str == "showpath") then
    RevealMap()

  elseif (str == "fow on") then
    SetFogOfWar(true)

  elseif (str == "fow off") then
    SetFogOfWar(false)

  elseif (str == "fast debug") then
    for i = 1,table.getn(resources) do
      SetSpeedResourcesHarvest(resources[i], 10)
      SetSpeedResourcesReturn(resources[i], 10)
    end
    SetSpeedBuild(10)
    SetSpeedTrain(10)
    SetSpeedUpgrade(10)
    SetSpeedResearch(10)
    AddMessage("FAST DEBUG SPEED")

  elseif (str == "normal debug") then
    for i = 1,table.getn(resources) do
      SetSpeedResourcesHarvest(resources[i], 1)
      SetSpeedResourcesReturn(resources[i], 1)
    end
    SetSpeedBuild(1)
    SetSpeedTrain(1)
    SetSpeedUpgrade(1)
    SetSpeedResearch(1)
    AddMessage("NORMAL DEBUG SPEED")

  elseif (str == "hermes") then
    if (speedcheat) then
      speedcheat = false
      for i = 0,PlayerMax - 1 do
		  for j = 1,table.getn(resources) do
			SetPlayerData(i, "SpeedResourcesHarvest", resources[j], GetPlayerData(i, "SpeedResourcesHarvest", resources[j]) / 10)
			SetPlayerData(i, "SpeedResourcesReturn", resources[j], GetPlayerData(i, "SpeedResourcesReturn", resources[j]) / 10)
		  end
		  SetPlayerData(i, "SpeedBuild", GetPlayerData(i, "SpeedBuild") / 10)
		  SetPlayerData(i, "SpeedTrain", GetPlayerData(i, "SpeedTrain") / 10)
		  SetPlayerData(i, "SpeedUpgrade", GetPlayerData(i, "SpeedUpgrade") / 10)
		  SetPlayerData(i, "SpeedResearch", GetPlayerData(i, "SpeedResearch") / 10)
	  end
      AddMessage(_("Faster disabled!"))
    else
      speedcheat = true
	  for i = 0,PlayerMax - 1 do
		  for j = 1,table.getn(resources) do
			SetPlayerData(i, "SpeedResourcesHarvest", resources[j], GetPlayerData(i, "SpeedResourcesHarvest", resources[j]) * 10)
			SetPlayerData(i, "SpeedResourcesReturn", resources[j], GetPlayerData(i, "SpeedResourcesReturn", resources[j]) * 10)
		  end
		  SetPlayerData(i, "SpeedBuild", GetPlayerData(i, "SpeedBuild") * 10)
		  SetPlayerData(i, "SpeedTrain", GetPlayerData(i, "SpeedTrain") * 10)
		  SetPlayerData(i, "SpeedUpgrade", GetPlayerData(i, "SpeedUpgrade") * 10)
		  SetPlayerData(i, "SpeedResearch", GetPlayerData(i, "SpeedResearch") * 10)
	  end
      AddMessage(_("Faster enabled!"))
    end

  elseif (str == "hold off the goblin hordes") then
    ActionVictory()

  elseif (str == "ragnarok") then
    ActionDefeat()

  elseif (str == "fenrir") then
	KillUnitAt("any", GetThisPlayer(), GetPlayerData(GetThisPlayer(), "TotalNumUnits"), {0, 0}, {256, 256})
  
  elseif (str == "scepter of fire") then
    if (godcheat) then
      godcheat = false
      SetGodMode(false)
      AddMessage("God Mode Off")
    else
      godcheat = true
      SetGodMode(true)
      AddMessage("God Mode On")
    end

  elseif (str == "fill mana") then
    t = GetUnits("this");
    for i = 1,table.getn(t) do
      SetUnitMana(t[i], 255)
    end

  elseif (str == "mead of wisdom") then
	AddMessage("All Technologies Allowed")
	for i, unitName in ipairs(Units) do
		for j=0,15 do
			if (((string.find(unitName, "upgrade-") ~= nil and CUpgrade:Get(unitName).Civilization == GetPlayerData(j, "RaceName")) or (string.find(unitName, "upgrade-") == nil and GetUnitTypeData(unitName, "Civilization") == GetPlayerData(j, "RaceName"))) and GetPlayerData(j, "Allow", unitName) ~= "R") then
				SetPlayerData(j, "Allow", unitName, "A")
			end
		end
	end

  elseif (str == "colossus of rhodes") then -- acquire all bronze age technologies
	AddMessage("Acquired Bronze Age Technologies")
	local bronze_upgrades = {
		"upgrade-dwarven-broad-axe", "upgrade-dwarven-shield-1", "upgrade-dwarven-throwing-axe-1",
		"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow"
	}
	for i, unitName in ipairs(bronze_upgrades) do
		for j=0,15 do
			if (CUpgrade:Get(unitName).Civilization == GetPlayerData(j, "RaceName")) then
				SetPlayerData(j, "Allow", unitName, "R")
			end
		end
	end

  elseif (str == "fountain of youth") then
		local uncount = 0
		uncount = GetUnits("any")
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitBoolFlag(uncount[unit1], "Fauna") and UnitHasAbility(uncount[unit1], GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "ChildUpgrade")) == false) then
				AcquireIndividualUpgrade(uncount[unit1], GetUnitTypeData(GetUnitVariable(uncount[unit1], "Ident"), "ChildUpgrade"))
			end
		end

  elseif (str == "famine") then
		local uncount = 0
		uncount = GetUnits("any")
		for unit1 = 1,table.getn(uncount) do 
			if (GetUnitBoolFlag(uncount[unit1], "Fauna")) then
				SetUnitVariable(uncount[unit1], "Hunger", 1000)
			end
		end

  else
    return false
  end
  return true
end
