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

function AiLandAttack()
	local loop_funcs = {
		function() return AiSleep(AiGetSleepCycles()) end,
		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiCityCenter()) >= 1) then
				AiNeed(AiCityCenter())
			end
			return false
		end,
		function() return AiSet(AiWorker(), 1) end,
		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiCityCenter()) >= 1) then
				AiWait(AiCityCenter())
			end
			return false
		end,
		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) >= 1) then
				AiWait(AiWorker())
			end
			return false
		end,

		function() return AiSet(AiWorker(), 4) end, -- 4

		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) >= 1) then
				AiNeed(AiBarracks())
			end
			return false
		end,
		function() return AiSet(AiWorker(), 8) end, -- 8
		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) >= 1) then
				AiWait(AiBarracks())
			end
			return false
		end,

		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiBlacksmith()) >= 1) then
				AiNeed(AiBlacksmith())
			end
			return false
		end,
		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiBlacksmith()) >= 1) then
				AiWait(AiBlacksmith())
			end
			return false
		end,
		function()
			AiResearch(AiUpgradeWeapon1())
			AiResearch(AiUpgradeShield1())
			AiResearch(AiUpgradeWeapon2())
			AiResearch(AiUpgradeShield2())
			return false
		end,

		-- FAST AND FURIOUS
		function()
			if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) >= 1) then
				AiForce(1, {AiSoldier(), 1})
			end
			return false
		end,
		function()
			if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) >= 1) then
				AiWaitForce(1)
			end
			return false
		end,
		function()
			if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) >= 1) then
				AiAttackWithForce(1)
			end
			return false
		end,

		-- SECOND FAST ATTACK
		function() return AiForce(1, {AiSoldier(), 4}) end,
		function() return AiWaitForce(1) end,
		function() return AiSet(AiWorker(), 12) end,
		function() return AiAttackWithForce(1) end,

		-- PREPARING FIRST SERIOUS ATTACK
		function() return AiSet(AiBarracks(), 2) end,
		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiLumberMill()) >= 1) then
				AiNeed(AiLumberMill())
			end
			return false
		end,
		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiLumberMill()) >= 1) then
				AiWait(AiLumberMill())
			end
			return false
		end,

		function()
			AiResearch(AiUpgradeMissile1())				
			AiResearch(AiUpgradeMissile2())
			return false
		end,

		function() return AiForce(2, {AiSoldier(), 9, AiShooter(), 3}) end,
		function() return AiForce(0, {AiSoldier(), 3, AiShooter(), 1}) end,
		function()
			AiUpgradeTo(AiVeteranSoldier())
			return false
		end,
		function() return AiWaitForce(2) end,
		function() return AiAttackWithForce(2) end,
		function() return AiSet(AiWorker(), 20) end,

		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiGuardTower()) >= 2) then
				AiNeed(AiWatchTower())
			end
			return false
		end,
		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiGuardTower()) >= 2) then
				AiUpgradeTo(AiGuardTower())
			end
			return false
		end,
		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiGuardTower()) >= 2) then
				AiNeed(AiWatchTower())
			end
			return false
		end,
		function()
			if not (GetPlayerData(AiPlayer(), "UnitTypesCount", AiGuardTower()) >= 2) then
				AiUpgradeTo(AiGuardTower())
			end
			return false
		end,

		function() return true end,

		function()
			stratagus.gameData.AIState.loop_index[1 + AiPlayer()] = 0
			return false
		end
	}
	return function()
		return AiLoop(loop_funcs, stratagus.gameData.AIState.loop_index)
	end
end

DefineAi("land-attack", "*", "land-attack", AiLandAttack())

