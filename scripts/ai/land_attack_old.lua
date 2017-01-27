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

  function() return AiNeed(GetAiUnitType("town-hall")) end,
  function() return AiNeed(GetAiUnitType("lumber-mill")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,

  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(1000)
	else
		return false
	end
  end,
  
--  function() return AiDifficultyForce(0, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 8, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}) end,
--  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 10, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 20, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 4}, true) end,
  function() return AiDifficultyForce(0, {GetAiUnitType("infantry"), 8, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}) end,
  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 20, GetAiUnitType("shooter"), 10, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 4}, true) end,
--  function() return AiDifficultyForce(7, {AiFlyer(), 4}, true) end,
  function() return AiWaitForce(6) end,
  function() return AiAttackWithForce(6) end,
--  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,

--  function() return AiWaitForce(7) end,
--  function() return AiAttackWithForce(7) end,
--  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, GetAiUnitType("priest"), 0}, true) end,
  function() stratagus.gameData.AIState.loop_index[1 + AiPlayer()] = 0; return false end,
}

local land_funcs = {
  function() return AiDifficultySleep(AiGetSleepCycles()) end,
  function() return AiNeed(GetAiUnitType("town-hall")) end,
  function() return AiSet(GetAiUnitType("worker"), 1) end,
  function() return AiWait(GetAiUnitType("town-hall")) end,
  function() return AiWait(GetAiUnitType("worker")) end, -- start hangs if nothing available

  function() return AiSet(GetAiUnitType("worker"), 4) end, -- 4

  function() return AiNeed(GetAiUnitType("barracks")) end,
  function() return AiSet(GetAiUnitType("worker"), 8) end, -- 8
  function() return AiWait(GetAiUnitType("barracks")) end,
  function() return AiSet(GetAiUnitType("smithy"), 1) end,
  function() if (GetAiUnitType("melee-weapon-1") ~= nil) then return AiResearch(GetAiUnitType("melee-weapon-1")) end end,
  function() if (GetAiUnitType("bronze-shield") ~= nil) then return AiResearch(GetAiUnitType("bronze-shield")) end end,

-- FAST AND FURIOUS
  function() return AiDifficultyForce(1, {GetAiUnitType("infantry"), 1}, true) end,
  function() return AiWaitForce(1) end,
  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(2500)
	else
		return false
	end
  end,
  function() return AiAttackWithForce(1) end,

-- SECOND FAST ATTACK
  function() return AiDifficultyForce(1, {GetAiUnitType("infantry"), 4}, true) end,
  function() return AiWaitForce(1) end,
  function() return AiSet(GetAiUnitType("worker"), 12) end,
  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(1000)
	else
		return false
	end
  end,
  function() return AiAttackWithForce(1) end,
  function() return AiSet("unit-surghan-mercenary-steelclad", 4) end, -- make the AI build mercenaries if it manages to get ahold of a mercenary camp

-- PREPARING FIRST SERIOUS ATTACK

  function() return AiNeed(GetAiUnitType("lumber-mill")) end, -- moved here, as it is necessary for the stronghold to be available
  function() return AiWait(GetAiUnitType("lumber-mill")) end,
  function() return AiResearch(GetAiUnitType("ranged-projectile-1")) end,

  function() return AiSet(GetAiUnitType("barracks"), 2) end,
  function() return AiDifficultyForce(1, {GetAiUnitType("infantry"), 12, GetAiUnitType("shooter"), 4}, true) end,
  function() return AiDifficultyForce(0, {GetAiUnitType("infantry"), 3, GetAiUnitType("shooter"), 1}) end,
  function() return AiSet(GetAiUnitType("worker"), 20) end,
  function() return AiWaitForce(1) end,
  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(2500)
	else
		return false
	end
  end,
  function() return AiAttackWithForce(1) end,

-- NOW UPGRADING

  function() return AiResearch(GetAiUnitType("melee-weapon-2")) end,
  function() return AiResearch(GetAiUnitType("iron-shield")) end,
  function() return AiResearch(GetAiUnitType("ranged-projectile-2")) end,
  function() return AiResearch(GetAiUnitType("masonry")) end,
  
  function() return AiUpgradeTo(GetAiUnitType("stronghold")) end,
  function() return AiWait(GetAiUnitType("stronghold")) end,
  function() return AiSet(GetAiUnitType("worker"), 25) end,
--  function() return AiNeed(AiStables()) end,

-- BUILDING A DEFENSE
-- function() return AiDifficultyForce(0, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 2, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0}) end,
  function() return AiDifficultyForce(0, {GetAiUnitType("infantry"), 2, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}) end,

  function() if (AiGetRace() == "goblin") then return AiSet(GetAiUnitType("glider"), 1) else return false end end,
-- function() return AiUpgradeTo(AiBestCityCenter()) end,
-- function() return AiDifficultyForce(0, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 2, GetAiUnitType("cavalry"), 2, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0}) end,
 function() return AiDifficultyForce(0, {GetAiUnitType("infantry"), 2, GetAiUnitType("shooter"), 2, GetAiUnitType("siege-engine"), 0}) end,
 function() return AiSet(GetAiUnitType("worker"), 30) end,
-- function() return AiWait(AiBestCityCenter()) end,

  function() return AiResearch(GetAiUnitType("coinage")) end,

-- UPGRADING CAVALRY STUFF

--  function() return AiNeed(AiTemple()) end,
  
-- PREPARING SECOND ATTACK

--  function() return AiDifficultyForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 10, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
--  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 8, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
--  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 6, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
--  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 4, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
--  function() return AiDifficultyForce(8, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 3, GetAiUnitType("siege-engine"), 1, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(4, {GetAiUnitType("infantry"), 10, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 8, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 6, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 4, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(8, {GetAiUnitType("infantry"), 3, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 1, GetAiUnitType("priest"), 0}, true) end,
  function() return AiSet(GetAiUnitType("worker"), 35) end,
  function() return AiDifficultyForce(0, {GetAiUnitType("infantry"), 0}) end,
  function() return AiWaitForce(0) end,
--  function() return AiDifficultyForce(0, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 2, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 4, GetAiUnitType("siege-engine"), 0}) end,
  function() return AiDifficultyForce(0, {GetAiUnitType("infantry"), 4, GetAiUnitType("shooter"), 2, GetAiUnitType("siege-engine"), 0}) end,

-- EXPANSION

  function() return AiNeed(GetAiUnitType("town-hall")) end,
  function() return AiNeed(GetAiUnitType("barracks")) end,

-- ATTACK!!

  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(2500)
	else
		return false
	end
  end,
  function() return AiWaitForce(4) end,
  function() return AiAttackWithForce(4) end,
  function() return AiWaitForce(5) end,
  function() return AiAttackWithForce(5) end,
  function() return AiWaitForce(6) end,
  function() return AiAttackWithForce(6) end,
  function() return AiWaitForce(7) end,
  function() return AiAttackWithForce(7) end,
  function() return AiWaitForce(8) end,
  function() return AiAttackWithForce(8) end,
  function() return AiAttackWithForce(7) end,
  function() return AiAttackWithForce(6) end,
  function() return AiAttackWithForce(5) end,
  function() return AiAttackWithForce(4) end,
--  function() return AiDifficultyForce(8, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
--  function() return AiDifficultyForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 22, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
--  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 18, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
--  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 14, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(8, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(4, {GetAiUnitType("infantry"), 22, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 18, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 14, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiSet(GetAiUnitType("worker"), 40) end,

  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(1000)
	else
		return false
	end
  end,
  function() return AiWaitForce(4) end,
  function() return AiAttackWithForce(4) end,
--  function() return AiDifficultyForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiWaitForce(5) end,
  function() return AiAttackWithForce(5) end,
--  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiWaitForce(6) end,
  function() return AiAttackWithForce(6) end,
--  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,

-- EXPANSION

  function() return AiSet(GetAiUnitType("worker"), 45) end,
  function() return AiNeed(GetAiUnitType("town-hall")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,

-- UPGRADING SHOOTERS

--  function() return AiResearch(AiUpgradeEliteShooter()) end,
--  function() return AiResearch(AiUpgradeEliteShooter1()) end,
--  function() return AiResearch(AiUpgradeEliteShooter2()) end,
--  function() return AiResearch(AiUpgradeEliteShooter3()) end,

  function() return AiSet(GetAiUnitType("worker"), 40) end,
  function() return AiNeed(GetAiUnitType("town-hall")) end,
  

-- SECOND BIG WAVE

--  function() return AiDifficultyForce(4, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 5, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 12, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
--  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 5, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 10, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
--  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 2, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 5, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
--  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 1, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 3, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(4, {GetAiUnitType("infantry"), 12, GetAiUnitType("shooter"), 5, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 10, GetAiUnitType("shooter"), 5, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 5, GetAiUnitType("shooter"), 2, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 3, GetAiUnitType("shooter"), 1, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,

  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(2500)
	else
		return false
	end
  end,
  function() return AiWaitForce(4) end,
  function() return AiAttackWithForce(4) end,
--  function() return AiDifficultyForce(4, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiWaitForce(5) end,
  function() return AiAttackWithForce(5) end,
--  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiWaitForce(6) end,
  function() return AiAttackWithForce(6) end,
--  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiWaitForce(7) end,
  function() return AiAttackWithForce(7) end,
  function() return AiAttackWithForce(6) end,
  function() return AiAttackWithForce(5) end,
  function() return AiAttackWithForce(4) end,

--  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,

-- EXPANSION, AGAIN

--  function() return AiNeed(AiAirport()) end,
--  function() return AiNeed(AiAirport()) end,

  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,

  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,

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
  
--  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 10, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 15, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
--  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 20, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 15, GetAiUnitType("shooter"), 10, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 20, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
--  function() return AiWaitForce(5) end,
--  function() return AiAttackWithForce(5) end,
--  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiWaitForce(6) end,
  function() return AiAttackWithForce(6) end,
--  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiWaitForce(7) end,
  function() return AiAttackWithForce(7) end,
--  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,


  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,

-- ANOTHER EXPANSION, ANOTHER BIG ATTACK

  function() return AiNeed(GetAiUnitType("barracks")) end,
  function() return AiNeed(GetAiUnitType("barracks")) end,

  function()
	if (GameSettings.Difficulty == 1) then -- if on easy difficulty, sleep a bit
		return AiSleep(2500)
	else
		return false
	end
  end,
  
--  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 15, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 40, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
--  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 10, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 20, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 40, GetAiUnitType("shooter"), 15, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 20, GetAiUnitType("shooter"), 10, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
--  function() return AiDifficultyForce(7, {AiFlyer(), 4}, true) end,
  function() return AiWaitForce(5) end,
  function() return AiAttackWithForce(5) end,
--  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiWaitForce(6) end,
  function() return AiAttackWithForce(6) end,
--  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, GetAiUnitType("priest"), 0}, true) end,
  function() return AiDifficultyForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
--  function() return AiWaitForce(7) end,
--  function() return AiAttackWithForce(7) end,
--  function() return AiDifficultyForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, GetAiUnitType("priest"), 0}, true) end,

-- LITTLE DEFENSE

  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
--  function() return AiUpgradeTo(AiCannonTower()) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
  function() return AiNeed(GetAiUnitType("watch-tower")) end,
  function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,


  -- Everything researched...

  function() return AiLoop(end_loop_funcs, stratagus.gameData.AIState.loop_index) end,
}

function AiLandAttack() AiLoop(land_funcs, stratagus.gameData.AIState.index); end

DefineAi("land-attack", "*", "land-attack", AiLandAttack)

