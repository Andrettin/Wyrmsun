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
--      land_attack.lua - Default land attack AI.
--
--      (c) Copyright 2000-2017 by José Ignacio Rodríguez, Carlo Almario and Andrettin
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
--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,

	function() return AiForce(0, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 8, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}) end,
	function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 10, GetAiUnitType("cavalry"), 20, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 4}, true) end,
	function() return AiForce(7, {GetAiUnitType("flying-rider"), 4}, true) end,
	function() return AiWaitForce(6) end,
	function() return AiAttackWithForce(6) end,
	function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("flying-rider"), 0, GetAiUnitType("priest"), 0}, true) end,

	function() return AiWaitForce(7) end,
	function() return AiAttackWithForce(7) end,
	function() return AiForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("flying-rider"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() stratagus.gameData.AIState.loop_index[1 + AiPlayer()] = 0; return false end,
}

local land_funcs = {
	function() return AiSleep(AiGetSleepCycles()) end,
	function()
		if (AiGetRace() == "dwarf") then -- dwarves collect more stone than other civilizations, as they need it for their structures, rather than lumber
			AiSetCollect("copper", 45, "lumber", 20, "stone", 35)
		else
			AiSetCollect("copper", 45, "lumber", 45, "stone", 10)
		end
		return false;
	end,
	function() return AiNeed(GetAiUnitType("town-hall")) end,
	function() return AiSet(GetAiUnitType("worker"), 1) end,
	function() return AiWait(GetAiUnitType("town-hall")) end,
	function() return AiWait(GetAiUnitType("worker")) end, -- start hangs if nothing available

	function() return AiSet(GetAiUnitType("worker"), 4) end, -- 4

	function() return AiNeed(GetAiUnitType("barracks")) end,
	function() return AiSet(GetAiUnitType("worker"), 8) end, -- 8
	function() return AiWait(GetAiUnitType("barracks")) end,
	function() return AiSet(GetAiUnitType("smithy"), 1) end,
	function() return AiResearch(GetAiUnitType("melee-weapon-1")) end,
	function() return AiResearch(GetAiUnitType("bronze-shield")) end,
	function() return AiResearch(GetAiUnitType("melee-weapon-2")) end,
	function() return AiResearch(GetAiUnitType("iron-shield")) end,
	function() return AiResearch("upgrade-shield-wall") end, -- acquire the shield wall military doctrine
	

-- FAST AND FURIOUS
	function() return AiForce(1, {GetAiUnitType("infantry"), 1}, true) end,
	function() return AiWaitForce(1) end,
	function() return AiAttackWithForce(1) end,

-- SECOND FAST ATTACK
	function() return AiForce(1, {GetAiUnitType("infantry"), 4}, true) end,
	function() return AiWaitForce(1) end,
	function() return AiSet(GetAiUnitType("worker"), 12) end,
	function() return AiAttackWithForce(1) end,

-- PREPARING FIRST SERIOUS ATTACK

	function() return AiSet(GetAiUnitType("barracks"), 2) end,
	function() return AiForce(1, {GetAiUnitType("infantry"), 16}, true) end,
	function() return AiForce(0, {GetAiUnitType("infantry"), 4}) end,
	function() return AiSet(GetAiUnitType("worker"), 20) end,
	function() return AiWaitForce(1) end,
	function() return AiAttackWithForce(1) end,

-- NOW UPGRADING

	function() return AiNeed(GetAiUnitType("lumber-mill")) end, -- needed for the stronghold
	function() return AiWait(GetAiUnitType("lumber-mill")) end,
	function()
		if (AiGetRace() == "germanic") then
			return AiResearch(GetAiUnitType("wood-plow"));
		end
		return false;
	end,
	function()
		if (AiGetRace() == "germanic") then
			return AiResearch(GetAiUnitType("ranged-projectile-1"));
		end
		return false;
	end,
	function()
		if (AiGetRace() == "germanic") then -- if is Germanic, wait until becomes Anglo-Saxon/Frankish/Suebi/Teuton for the next step
			return true;
		end
	end,
	function()
		if (AiGetRace() == "anglo-saxon" or AiGetRace() == "frankish" or AiGetRace() == "suebi" or AiGetRace() == "teuton") then
			return AiResearch(GetAiUnitType("melee-weapon-2")); -- research this now, since Teutons couldn't before
		end
		return false;
	end,
	function()
		if (AiGetRace() == "anglo-saxon" or AiGetRace() == "frankish" or AiGetRace() == "suebi" or AiGetRace() == "teuton") then
			return AiResearch(GetAiUnitType("iron-shield")); -- research this now, since Teutons couldn't before
		end
		return false;
	end,
	function() return AiNeed(GetAiUnitType("market")) end, -- seems like a good point to build it

	function() return AiResearch(GetAiUnitType("masonry")) end, -- needed for the stronghold
	function() return AiWait(GetAiUnitType("masonry")) end,
	
	function() return AiUpgradeTo(GetAiUnitType("stronghold")) end,
	function() return AiWait(GetAiUnitType("stronghold")) end,
	function() return AiSet(GetAiUnitType("worker"), 25) end,
	function() return AiResearch(GetAiUnitType("coinage")) end, -- research coinage to improve copper/silver/gold processing
	function() return AiNeed(GetAiUnitType("stables")) end,
	function() return AiResearch(GetAiUnitType("writing")) end, -- research writing to become a polity, and is needed for Engineering
	function() return AiWait(GetAiUnitType("writing")) end,	

	function() -- certain civilizations acquire serfdom when it becomes available
		if (AiGetRace() == "teuton" or AiGetRace() == "anglo-saxon" or AiGetRace() == "english" or AiGetRace() == "frankish" or AiGetRace() == "suebi") then
			return AiResearch("upgrade-serfdom");
		end
		return false;
	end,
	
-- BUILDING A DEFENSE
	function() return AiForce(0, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 2, GetAiUnitType("siege-engine"), 0}) end,

--	function() return AiUpgradeTo(AiBestCityCenter()) end,
	function() return AiForce(0, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 2, GetAiUnitType("cavalry"), 2, GetAiUnitType("siege-engine"), 0}) end,
	function() return AiSet(GetAiUnitType("worker"), 30) end,
--	function() return AiWait(AiBestCityCenter()) end,

-- UPGRADING CAVALRY STUFF

	function() return AiNeed(GetAiUnitType("temple")) end,
--	function() return AiResearch(AiUpgradeCavalryMage()) end,
--	function() return AiResearch(AiCavalryMageSpell1()) end,
	
	-- MAGE TOWER
--	function() return AiNeed(AiMageTower()) end,
--	function() return AiResearch(AiMageSpell1()) end,
--	function() return AiResearch(AiMageSpell2()) end,
--	function() return AiResearch(AiMageSpell3()) end,
--	function() return AiResearch(AiMageSpell4()) end,
--	function() return AiResearch(AiMageSpell5()) end,

--	function() return AiNeed(GetAiUnitType("university")) end, -- needed for engineering
--	function() return AiWait(GetAiUnitType("university")) end,

	function() return AiResearch(GetAiUnitType("mathematics")) end, -- needed for engineering
	function() return AiWait(GetAiUnitType("mathematics")) end,	
	function() return AiResearch(GetAiUnitType("engineering")) end, -- needed for siege engines
	function() return AiWait(GetAiUnitType("engineering")) end,	
	function() return AiResearch(GetAiUnitType("architecture")) end, -- improve buildings

-- PREPARING SECOND ATTACK

	function() return AiForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 10, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 8, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
	function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 6, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 4, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiForce(8, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 3, GetAiUnitType("siege-engine"), 1, GetAiUnitType("priest"), 0}, true) end,
	function() return AiSet(GetAiUnitType("worker"), 35) end,
	function() return AiForce(0, {GetAiUnitType("infantry"), 0}) end,
	function() return AiWaitForce(0) end,
	function() return AiForce(0, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 2, GetAiUnitType("cavalry"), 4, GetAiUnitType("siege-engine"), 0}) end,

-- EXPANSION

	function() return AiNeed(GetAiUnitType("town-hall")) end,
	function() return AiNeed(GetAiUnitType("barracks")) end,
	
-- ATTACK!!

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
	function() return AiForce(8, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 22, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
	function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 18, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
	function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 14, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiSet(GetAiUnitType("worker"), 40) end,

	function() return AiWaitForce(4) end,
	function() return AiAttackWithForce(4) end,
	function() return AiForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiWaitForce(5) end,
	function() return AiAttackWithForce(5) end,
	function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiWaitForce(6) end,
	function() return AiAttackWithForce(6) end,
	function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,


-- EXPANSION

	function() return AiSet(GetAiUnitType("worker"), 45) end,
	function() return AiNeed(GetAiUnitType("town-hall")) end,
--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,

-- UPGRADING SHOOTERS

--	function() return AiResearch(AiUpgradeEliteShooter()) end,
--	function() return AiResearch(AiUpgradeEliteShooter1()) end,
--	function() return AiResearch(AiUpgradeEliteShooter2()) end,
--	function() return AiResearch(AiUpgradeEliteShooter3()) end,
	function() return AiResearch(GetAiUnitType("alchemy")) end, -- research alchemy to improve shooters

	function() return AiSet(GetAiUnitType("worker"), 40) end,
	function() return AiNeed(GetAiUnitType("town-hall")) end,
	

-- SECOND BIG WAVE

	function() return AiForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 5, GetAiUnitType("cavalry"), 12, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 5, GetAiUnitType("cavalry"), 10, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
	function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 2, GetAiUnitType("cavalry"), 5, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
	function() return AiForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 1, GetAiUnitType("cavalry"), 3, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,

	function() return AiWaitForce(4) end,
	function() return AiAttackWithForce(4) end,
	function() return AiForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiWaitForce(5) end,
	function() return AiAttackWithForce(5) end,
	function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiWaitForce(6) end,
	function() return AiAttackWithForce(6) end,
	function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiWaitForce(7) end,
	function() return AiAttackWithForce(7) end,
	function() return AiAttackWithForce(6) end,
	function() return AiAttackWithForce(5) end,
	function() return AiAttackWithForce(4) end,

	function() return AiForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 0}, true) end,

-- EXPANSION, AGAIN

--	function() return AiNeed(AiAirport()) end,
--	function() return AiNeed(AiAirport()) end,

--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,

	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,

-- AEREAL UNITS
--	function() return AiNeed(AiAirport()) end,
--	function() return AiWait(AiAirport()) end,

	function() return AiForce(5, {GetAiUnitType("flying-rider"), 3}, true) end,

-- THIRD ATTACK

	function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 10, GetAiUnitType("cavalry"), 15, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
	function() return AiForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 20, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
	function() return AiWaitForce(5) end,
	function() return AiAttackWithForce(5) end,
	function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("flying-rider"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiWaitForce(6) end,
	function() return AiAttackWithForce(6) end,
	function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("flying-rider"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiWaitForce(7) end,
	function() return AiAttackWithForce(7) end,
	function() return AiForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("flying-rider"), 0, GetAiUnitType("priest"), 0}, true) end,


--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,

-- ANOTHER EXPANSION, ANOTHER BIG ATTACK

	function() return AiNeed(GetAiUnitType("barracks")) end,
	function() return AiNeed(GetAiUnitType("barracks")) end,

	function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 15, GetAiUnitType("cavalry"), 40, GetAiUnitType("siege-engine"), 0, GetAiUnitType("priest"), 4}, true) end,
	function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 10, GetAiUnitType("cavalry"), 20, GetAiUnitType("siege-engine"), 2, GetAiUnitType("priest"), 0}, true) end,
	function() return AiForce(7, {GetAiUnitType("flying-rider"), 4}, true) end,
	function() return AiWaitForce(5) end,
	function() return AiAttackWithForce(5) end,
	function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("flying-rider"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiWaitForce(6) end,
	function() return AiAttackWithForce(6) end,
	function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("flying-rider"), 0, GetAiUnitType("priest"), 0}, true) end,
	function() return AiWaitForce(7) end,
	function() return AiAttackWithForce(7) end,
	function() return AiForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, GetAiUnitType("siege-engine"), 0, GetAiUnitType("flying-rider"), 0, GetAiUnitType("priest"), 0}, true) end,

-- LITTLE DEFENSE

--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
--	function() return AiNeed(GetAiUnitType("watch-tower")) end,
--	function() return AiUpgradeTo(AiCannonTower()) end,
	function() return AiNeed(GetAiUnitType("banner")) end,
	function() return AiNeed(GetAiUnitType("watch-tower")) end,
	function() return AiUpgradeTo(GetAiUnitType("guard-tower")) end,
	function() return AiNeed(GetAiUnitType("banner")) end,


	-- Everything researched...

	function() return AiLoop(end_loop_funcs, stratagus.gameData.AIState.loop_index) end,
}

local ai_call_counter = {}

function AiLandAttack()
	if (ai_call_counter[AiPlayer()] == nil) then
		ai_call_counter[AiPlayer()] = 0
	end
	ai_call_counter[AiPlayer()] = ai_call_counter[AiPlayer()] + 1
	if (GameSettings.Difficulty == 1 and (ai_call_counter[AiPlayer()] % 50) ~= 0) then -- on easy difficulty, the AI is slower to do things
		return;
	end

	AiLoop(land_funcs, stratagus.gameData.AIState.index);
end

DefineAi("land-attack", "*", "land-attack", AiLandAttack)
