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
--      land_attack.lua - Strong land attack. By José Ignacio Rodríguez and Carlo Almario
--
--      (c) Copyright 2000-2004 by Lutz Sammer and Jimmy Salmon
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

local end_loop_funcs = {
  function() DebugPrint("Looping !\n") return false end,

-- EXPANSION AND DEFENSE

  function() return AiNeed(AiTownHall()) end,
  function() return AiNeed(AiLumberMill()) end,
  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,

  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(1000)
	else
		return false
	end
  end,
  
--  function() return AiDifficultyForce(0, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 8, AiSiegeWeapon(), 0, AiPriest(), 0}) end,
--  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiEliteShooter(), 10, AiCavalry(), 0, AiCavalryMage(), 20, AiSiegeWeapon(), 2, AiPriest(), 4}, true) end,
  function() return AiDifficultyForce(0, {AiSoldier(), 8, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}) end,
  function() return AiDifficultyForce(6, {AiSoldier(), 20, AiShooter(), 10, AiSiegeWeapon(), 2, AiPriest(), 4}, true) end,
--  function() return AiDifficultyForce(7, {AiFlyer(), 4}, true) end,
  function() return AiWaitForce(6) end,
--  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiFlyer(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,

--  function() return AiWaitForce(7) end,
--  function() return AiDifficultyForce(7, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiFlyer(), 0, AiPriest(), 0}, true) end,
  function() stratagus.gameData.AIState.loop_index[1 + AiPlayer()] = 0; return false end,
}

local land_funcs = {
  function() return AiDifficultySleep(AiGetSleepCycles()) end,
  function() return AiNeed(AiTownHall()) end,
  function() return AiSet(AiWorker(), 1) end,
  function() return AiWait(AiTownHall()) end,
  function() return AiWait(AiWorker()) end, -- start hangs if nothing available

  function() return AiSet(AiWorker(), 4) end, -- 4

  function() return AiNeed(AiBarracks()) end,
  function() return AiSet(AiWorker(), 8) end, -- 8
  function() return AiWait(AiBarracks()) end,
  function() return AiSet(AiSmithy(), 1) end,
  function() if (AiUpgradeWeapon1() ~= nil) then return AiResearch(AiUpgradeWeapon1()) end end,
  function() if (AiUpgradeShield1() ~= nil) then return AiResearch(AiUpgradeShield1()) end end,

-- FAST AND FURIOUS
  function() return AiDifficultyForce(1, {AiSoldier(), 1}, true) end,
  function() return AiWaitForce(1) end,
  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(2500)
	else
		return false
	end
  end,

-- SECOND FAST ATTACK
  function() return AiDifficultyForce(1, {AiSoldier(), 4}, true) end,
  function() return AiWaitForce(1) end,
  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(1000)
	else
		return false
	end
  end,
  function() return AiSet(AiWorker(), 12) end,
  function() return AiSet("unit-surghan-mercenary-steelclad", 4) end, -- make the AI build mercenaries if it manages to get ahold of a mercenary camp

-- PREPARING FIRST SERIOUS ATTACK

  function() return AiNeed(AiLumberMill()) end, -- moved here, as it is necessary for the stronghold to be available
  function() return AiWait(AiLumberMill()) end,
  function() return AiResearch(AiUpgradeMissile1()) end,
  function() if (AiGetRace() == "germanic") then return AiResearch("upgrade-teuton-civilization") else return false end end,

  function() return AiSet(AiBarracks(), 2) end,
  function() return AiDifficultyForce(1, {AiSoldier(), 12, AiShooter(), 4}, true) end,
  function() return AiDifficultyForce(0, {AiSoldier(), 3, AiShooter(), 1}) end,
  function() return AiSet(AiWorker(), 20) end,
  function() return AiWaitForce(1) end,
  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(2500)
	else
		return false
	end
  end,

-- NOW UPGRADING

  function() return AiResearch(AiUpgradeWeapon2()) end,
  function() return AiResearch(AiUpgradeShield2()) end,
  function() return AiResearch(AiUpgradeMissile2()) end,
  function() return AiResearch(AiUpgradeMasonry()) end,
  
  function() return AiUpgradeTo(AiStronghold()) end,
  function() return AiWait(AiStronghold()) end,
  function() return AiSet(AiWorker(), 25) end,
--  function() return AiNeed(AiStables()) end,

-- BUILDING A DEFENSE
-- function() return AiDifficultyForce(0, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 2, AiCavalryMage(), 0, AiSiegeWeapon(), 0}) end,
  function() return AiDifficultyForce(0, {AiSoldier(), 2, AiShooter(), 0, AiSiegeWeapon(), 0}) end,

  function() if (AiGetRace() == "goblin") then return AiSet(AiGlider(), 1) else return false end end,
-- function() return AiUpgradeTo(AiBestCityCenter()) end,
-- function() return AiDifficultyForce(0, {AiSoldier(), 0, AiShooter(), 2, AiCavalry(), 2, AiCavalryMage(), 0, AiSiegeWeapon(), 0}) end,
 function() return AiDifficultyForce(0, {AiSoldier(), 2, AiShooter(), 2, AiSiegeWeapon(), 0}) end,
 function() return AiSet(AiWorker(), 30) end,
-- function() return AiWait(AiBestCityCenter()) end,

  function() return AiResearch(AiUpgradeCoinage()) end,

-- UPGRADING CAVALRY STUFF

--  function() return AiNeed(AiTemple()) end,
  
-- PREPARING SECOND ATTACK

--  function() return AiDifficultyForce(4, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 10, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
--  function() return AiDifficultyForce(5, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 8, AiSiegeWeapon(), 0, AiPriest(), 4}, true) end,
--  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 6, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
--  function() return AiDifficultyForce(7, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 4, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
--  function() return AiDifficultyForce(8, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 3, AiSiegeWeapon(), 1, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(4, {AiSoldier(), 10, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(5, {AiSoldier(), 8, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 4}, true) end,
  function() return AiDifficultyForce(6, {AiSoldier(), 6, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(7, {AiSoldier(), 4, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(8, {AiSoldier(), 3, AiShooter(), 0, AiSiegeWeapon(), 1, AiPriest(), 0}, true) end,
  function() return AiSet(AiWorker(), 35) end,
  function() return AiDifficultyForce(0, {AiSoldier(), 0}) end,
  function() return AiWaitForce(0) end,
--  function() return AiDifficultyForce(0, {AiSoldier(), 0, AiShooter(), 2, AiCavalry(), 0, AiCavalryMage(), 4, AiSiegeWeapon(), 0}) end,
  function() return AiDifficultyForce(0, {AiSoldier(), 4, AiShooter(), 2, AiSiegeWeapon(), 0}) end,

-- EXPANSION

  function() return AiNeed(AiTownHall()) end,
  function() return AiNeed(AiBarracks()) end,

-- ATTACK!!

  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(2500)
	else
		return false
	end
  end,
  function() return AiWaitForce(4) end,
  function() return AiWaitForce(5) end,
  function() return AiWaitForce(6) end,
  function() return AiWaitForce(7) end,
  function() return AiWaitForce(8) end,
--  function() return AiDifficultyForce(8, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
--  function() return AiDifficultyForce(4, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 22, AiSiegeWeapon(), 0, AiPriest(), 4}, true) end,
--  function() return AiDifficultyForce(5, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 18, AiSiegeWeapon(), 2, AiPriest(), 0}, true) end,
--  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 14, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(8, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(4, {AiSoldier(), 22, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 4}, true) end,
  function() return AiDifficultyForce(5, {AiSoldier(), 18, AiShooter(), 0, AiSiegeWeapon(), 2, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(6, {AiSoldier(), 14, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiSet(AiWorker(), 40) end,

  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(1000)
	else
		return false
	end
  end,
  function() return AiWaitForce(4) end,
--  function() return AiDifficultyForce(4, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(4, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiWaitForce(5) end,
--  function() return AiDifficultyForce(5, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(5, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiWaitForce(6) end,
--  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,

-- EXPANSION

  function() return AiSet(AiWorker(), 45) end,
  function() return AiNeed(AiTownHall()) end,
  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,

-- UPGRADING SHOOTERS

--  function() return AiResearch(AiUpgradeEliteShooter()) end,
--  function() return AiResearch(AiUpgradeEliteShooter1()) end,
--  function() return AiResearch(AiUpgradeEliteShooter2()) end,
--  function() return AiResearch(AiUpgradeEliteShooter3()) end,

  function() return AiSet(AiWorker(), 40) end,
  function() return AiNeed(AiTownHall()) end,
  

-- SECOND BIG WAVE

--  function() return AiDifficultyForce(4, {AiSoldier(), 0, AiEliteShooter(), 5, AiCavalry(), 0, AiCavalryMage(), 12, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
--  function() return AiDifficultyForce(5, {AiSoldier(), 0, AiEliteShooter(), 5, AiCavalry(), 0, AiCavalryMage(), 10, AiSiegeWeapon(), 0, AiPriest(), 4}, true) end,
--  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiEliteShooter(), 2, AiCavalry(), 0, AiCavalryMage(), 5, AiSiegeWeapon(), 2, AiPriest(), 0}, true) end,
--  function() return AiDifficultyForce(7, {AiSoldier(), 0, AiEliteShooter(), 1, AiCavalry(), 0, AiCavalryMage(), 3, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(4, {AiSoldier(), 12, AiShooter(), 5, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(5, {AiSoldier(), 10, AiShooter(), 5, AiSiegeWeapon(), 0, AiPriest(), 4}, true) end,
  function() return AiDifficultyForce(6, {AiSoldier(), 5, AiShooter(), 2, AiSiegeWeapon(), 2, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(7, {AiSoldier(), 3, AiShooter(), 1, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,

  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(2500)
	else
		return false
	end
  end,
  function() return AiWaitForce(4) end,
--  function() return AiDifficultyForce(4, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(4, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiWaitForce(5) end,
--  function() return AiDifficultyForce(5, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(5, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiWaitForce(6) end,
--  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiWaitForce(7) end,

--  function() return AiDifficultyForce(7, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(7, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,

-- EXPANSION, AGAIN

--  function() return AiNeed(AiAirport()) end,
--  function() return AiNeed(AiAirport()) end,

  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,

  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,

-- AEREAL UNITS
--  function() return AiNeed(AiAirport()) end,
--  function() return AiWait(AiAirport()) end,

--  function() return AiDifficultyForce(5, {AiFlyer(), 3}, true) end,

-- THIRD ATTACK

  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(2500)
	else
		return false
	end
  end,
  
--  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiEliteShooter(), 10, AiCavalry(), 0, AiCavalryMage(), 15, AiSiegeWeapon(), 0, AiPriest(), 4}, true) end,
--  function() return AiDifficultyForce(7, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 20, AiSiegeWeapon(), 2, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(6, {AiSoldier(), 15, AiShooter(), 10, AiSiegeWeapon(), 0, AiPriest(), 4}, true) end,
  function() return AiDifficultyForce(7, {AiSoldier(), 20, AiShooter(), 0, AiSiegeWeapon(), 2, AiPriest(), 0}, true) end,
--  function() return AiWaitForce(5) end,
--  function() return AiDifficultyForce(5, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiFlyer(), 0, AiPriest(), 0}, true) end,
  function() return AiWaitForce(6) end,
--  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiFlyer(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiWaitForce(7) end,
--  function() return AiDifficultyForce(7, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiFlyer(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(7, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,


  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,

-- ANOTHER EXPANSION, ANOTHER BIG ATTACK

  function() return AiNeed(AiBarracks()) end,
  function() return AiNeed(AiBarracks()) end,

  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(2500)
	else
		return false
	end
  end,
  
--  function() return AiDifficultyForce(5, {AiSoldier(), 0, AiEliteShooter(), 15, AiCavalry(), 0, AiCavalryMage(), 40, AiSiegeWeapon(), 0, AiPriest(), 4}, true) end,
--  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiEliteShooter(), 10, AiCavalry(), 0, AiCavalryMage(), 20, AiSiegeWeapon(), 2, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(5, {AiSoldier(), 40, AiShooter(), 15, AiSiegeWeapon(), 0, AiPriest(), 4}, true) end,
  function() return AiDifficultyForce(6, {AiSoldier(), 20, AiShooter(), 10, AiSiegeWeapon(), 2, AiPriest(), 0}, true) end,
--  function() return AiDifficultyForce(7, {AiFlyer(), 4}, true) end,
  function() return AiWaitForce(5) end,
--  function() return AiDifficultyForce(5, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiFlyer(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(5, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
  function() return AiWaitForce(6) end,
--  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiFlyer(), 0, AiPriest(), 0}, true) end,
  function() return AiDifficultyForce(6, {AiSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiPriest(), 0}, true) end,
--  function() return AiWaitForce(7) end,
--  function() return AiDifficultyForce(7, {AiSoldier(), 0, AiEliteShooter(), 0, AiCavalry(), 0, AiCavalryMage(), 0, AiSiegeWeapon(), 0, AiFlyer(), 0, AiPriest(), 0}, true) end,

-- LITTLE DEFENSE

  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,
  function() return AiNeed(AiWatchTower()) end,
  function() return AiUpgradeTo(AiGuardTower()) end,


  -- Everything researched...

  function() return AiLoop(end_loop_funcs, stratagus.gameData.AIState.loop_index) end,
}

function AiLandAttackDefensive() AiLoop(land_funcs, stratagus.gameData.AIState.index); end

DefineAi("land-attack-defensive", "*", "land-attack-defensive", AiLandAttackDefensive)

