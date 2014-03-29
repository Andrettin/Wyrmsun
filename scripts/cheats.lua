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
--      (c) Copyright 2001-2011 by Lutz Sammer, Jimmy Salmon and Pali Rohár
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
  local resources = { "gold", "wood", "oil" }

  if (str == "im a lumberjack and its ok") then
    SetSpeedResourcesHarvest("wood", 52 / 2)
    AddMessage("Wow -- I got jigsaw!")

  elseif (str == "otters ransom") then
    SetPlayerData(GetThisPlayer(), "Resources", "gold",
      GetPlayerData(GetThisPlayer(), "Resources", "gold") + 12000)
    SetPlayerData(GetThisPlayer(), "Resources", "wood",
      GetPlayerData(GetThisPlayer(), "Resources", "wood") + 5000)
    SetPlayerData(GetThisPlayer(), "Resources", "oil",
      GetPlayerData(GetThisPlayer(), "Resources", "oil") + 5000)
    AddMessage("!!! :)")

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

  elseif (str == "scepter of fire") then
    if (godcheat) then
      godcheat = false
      SetGodMode(false)
      AddMessage("God Mode OFF")
    else
      godcheat = true
      SetGodMode(true)
      AddMessage("God Mode ON")
    end

  elseif (str == "fill mana") then
    t = GetUnits("this");
    for i = 1,table.getn(t) do
      SetUnitMana(t[i], 255)
    end

  elseif (str == "mead of poetry") then
	local units = {
		"unit-dwarven-town-hall", "unit-dwarven-mushroom-farm", "unit-dwarven-barracks", "unit-dwarven-lumber-mill",
		"unit-dwarven-sentry-tower", "unit-dwarven-guard-tower",
		"unit-dwarven-miner", "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-scout",
		"unit-dwarven-ballista",
		"upgrade-dwarven-throwing-axe-1", "upgrade-dwarven-throwing-axe-2",
		"unit-gnomish-town-hall", "unit-gnomish-farm", "unit-gnomish-barracks",
		"unit-gnomish-worker", "unit-gnomish-recruit"
	}
	for i, unitName in ipairs(units) do
		DefineAllow(unitName, "AAAAAAAAAAAAAAAA")
	end

  elseif (str == "greebos arrows") then
  	CreateUnit("unit-goblin-archer", GetThisPlayer(), {Players[GetThisPlayer()].StartPos.x, Players[GetThisPlayer()].StartPos.y})

  else
    return false
  end
  return true
end
