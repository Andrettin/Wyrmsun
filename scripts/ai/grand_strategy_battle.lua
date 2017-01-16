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

--  function() return AiForce(0, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 8, GetAiUnitType("siege-engine"), 0, AiMage(), 0}) end,
--  function() return AiForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 10, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 20, GetAiUnitType("siege-engine"), 2, AiMage(), 4}, true) end,
  function() return AiForce(0, {GetAiUnitType("infantry"), 8, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}) end,
  function() return AiForce(6, {GetAiUnitType("infantry"), 20, GetAiUnitType("shooter"), 10, GetAiUnitType("siege-engine"), 2}, true) end,
--  function() return AiForce(7, {AiFlyer(), 4}, true) end,
  function() return AiWaitForce(6) end,
  function() return AiAttackWithForce(6) end,
--  function() return AiForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, AiMage(), 0}, true) end,
  function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,

--  function() return AiWaitForce(7) end,
--  function() return AiAttackWithForce(7) end,
--  function() return AiForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, AiMage(), 0}, true) end,
  function() stratagus.gameData.AIState.loop_index[1 + AiPlayer()] = 0; return false end,
}

local land_funcs = {
--  function() return AiSleep(AiGetSleepCycles()) end,
  function() return AiDifficultySleep(100) end, -- 100 cycles, reasonable amount of time before the AI begins attacking - also important for scenarios, so the AI doesn't attack right away, allowing for diplomacy to be set at a dialogue in the beginning of the scenario
--  function() return AiNeed(GetAiUnitType("town-hall")) end,
--  function() return AiSet(GetAiUnitType("worker"), 1) end,
--  function() return AiWait(GetAiUnitType("town-hall")) end,
--  function() return AiWait(GetAiUnitType("worker")) end, -- start hangs if nothing available

--  function() return AiSet(GetAiUnitType("worker"), 4) end, -- 4

--  function() return AiNeed(GetAiUnitType("barracks")) end,
--  function() return AiSet(GetAiUnitType("worker"), 8) end, -- 8
--  function() return AiWait(GetAiUnitType("barracks")) end,
--  function() return AiSet(GetAiUnitType("smithy"), 1) end,
--  function() return AiResearch(GetAiUnitType("melee-weapon-1")) end,
--  function() return AiResearch(GetAiUnitType("bronze-shield")) end,
--  function() return AiResearch(GetAiUnitType("melee-weapon-2")) end,
--  function() return AiResearch(GetAiUnitType("iron-shield")) end,

-- FAST AND FURIOUS
  function() return AiForce(1, {
	"unit-germanic-warrior", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-germanic-warrior"),
	"unit-germanic-veteran-warrior", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-germanic-veteran-warrior"),
	"unit-germanic-chieftain", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-germanic-chieftain"),
	"unit-germanic-spearman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-germanic-spearman"),
	"unit-germanic-archer", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-germanic-archer"),
	"unit-teuton-swordsman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-teuton-swordsman"),
	"unit-teuton-veteran-swordsman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-teuton-veteran-swordsman"),
	"unit-teuton-heroic-swordsman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-teuton-heroic-swordsman"),
	"unit-suebi-swordsman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-suebi-swordsman"),
	"unit-frank-swordsman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-frank-swordsman"),
	"unit-frank-veteran-swordsman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-frank-veteran-swordsman"),
	"unit-frank-heroic-swordsman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-frank-heroic-swordsman"),
	"unit-teuton-spearman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-teuton-spearman"),
	"unit-frank-spearman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-frank-spearman"),
	"unit-teuton-archer", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-teuton-archer"),
	"unit-teuton-ritter", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-teuton-ritter"),
	"unit-teuton-knight-lord", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-teuton-knight-lord"),
	"unit-teuton-priest", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-teuton-priest"),
	"unit-teuton-catapult", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-teuton-catapult"),
	"unit-frank-horseman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-frank-horseman"),
	"unit-frank-knight-lord", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-frank-knight-lord"),
	"unit-dwarven-militia", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-militia"),
	"unit-brising-militia", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-brising-militia"),
	"unit-dwarven-axefighter", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-axefighter"),
	"unit-dwarven-steelclad", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-steelclad"),
	"unit-dwarven-thane", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-thane"),
	"unit-dwarven-guard", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-guard"),
	"unit-dwarven-scout", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-scout"),
	"unit-dwarven-pathfinder", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-pathfinder"),
	"unit-dwarven-explorer", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-explorer"),
	"unit-dwarven-yale-rider", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-yale-rider"),
	"unit-dwarven-yale-lord", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-yale-lord"),
	"unit-dwarven-witness", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-witness"),
	"unit-dwarven-ballista", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-ballista"),
	"unit-dwarven-gryphon-rider", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-dwarven-gryphon-rider"),
	"unit-gnomish-recruit", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-gnomish-recruit"),
	"unit-gnomish-duelist", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-gnomish-duelist"),
	"unit-gnomish-master-at-arms", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-gnomish-master-at-arms"),
	"unit-gnomish-herbalist", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-gnomish-herbalist"),
	"unit-deep-gnomish-recruit", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-deep-gnomish-recruit"),
	"unit-deep-gnomish-duelist", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-deep-gnomish-duelist"),
	"unit-deep-gnomish-master-at-arms", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-deep-gnomish-master-at-arms"),
	"unit-deep-gnomish-herbalist", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-deep-gnomish-herbalist"),
	"unit-derro-thug", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-derro-thug"),
	"unit-derro-executioner", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-derro-executioner"),
	"unit-derro-shadowguard", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-derro-shadowguard"),
	"unit-goblin-militia", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-militia"),
	"unit-goblin-swordsman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-swordsman"),
	"unit-goblin-barbarian", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-barbarian"),
	"unit-goblin-warlord", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-warlord"),
	"unit-goblin-spearman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-spearman"),
	"unit-goblin-archer", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-archer"),
	"unit-goblin-headhunter", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-headhunter"),
	"unit-goblin-shadowstalker", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-shadowstalker"),
	"unit-goblin-thief", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-thief"),
	"unit-goblin-shaman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-shaman"),
	"unit-goblin-war-machine", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-war-machine"),
	"unit-goblin-glider", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-goblin-glider"),
	"unit-kobold-footpad", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-kobold-footpad"),
	"unit-ettin", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-ettin"),
	"unit-elven-swordsman", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-elven-swordsman"),
	"unit-elven-priest", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-elven-priest"),
	"unit-surghan-mercenary-steelclad", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-surghan-mercenary-steelclad"),
	"unit-surghan-mercenary-thane", GetPlayerData(AiPlayer(), "UnitTypesCount", "unit-surghan-mercenary-thane")
  }, true) end,
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

--  function() return AiUpgradeTo(GetAiUnitType("stronghold")) end,
--  function() return AiWait(GetAiUnitType("stronghold")) end,
  function() return AiSet(GetAiUnitType("worker"), 25) end,
--  function() return AiNeed(AiStables()) end,

-- BUILDING A DEFENSE
-- function() return AiForce(0, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 2, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0}) end,
 function() return AiForce(0, {GetAiUnitType("infantry"), 2, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}) end,

 function() return AiNeed(GetAiUnitType("lumber-mill")) end,
 function() return AiWait(GetAiUnitType("lumber-mill")) end,
-- function() return AiUpgradeTo(AiBestCityCenter()) end,
-- function() return AiForce(0, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 2, GetAiUnitType("cavalry"), 2, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0}) end,
 function() return AiForce(0, {GetAiUnitType("infantry"), 2, GetAiUnitType("shooter"), 2, GetAiUnitType("siege-engine"), 0}) end,
 function() return AiSet(GetAiUnitType("worker"), 30) end,
-- function() return AiWait(AiBestCityCenter()) end,

-- UPGRADING CAVALRY STUFF

--  function() return AiNeed(AiTemple()) end,
  
-- PREPARING SECOND ATTACK

--  function() return AiForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 10, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
--  function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 8, GetAiUnitType("siege-engine"), 0, AiMage(), 4}, true) end,
--  function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 6, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
--  function() return AiForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 4, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
--  function() return AiForce(8, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 3, GetAiUnitType("siege-engine"), 1, AiMage(), 0}, true) end,
  function() return AiForce(4, {GetAiUnitType("infantry"), 10, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiForce(5, {GetAiUnitType("infantry"), 8, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiForce(6, {GetAiUnitType("infantry"), 6, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiForce(7, {GetAiUnitType("infantry"), 4, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiForce(8, {GetAiUnitType("infantry"), 3, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 1}, true) end,
  function() return AiSet(GetAiUnitType("worker"), 35) end,
  function() return AiForce(0, {GetAiUnitType("infantry"), 0}) end,
  function() return AiWaitForce(0) end,
--  function() return AiForce(0, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 2, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 4, GetAiUnitType("siege-engine"), 0}) end,
  function() return AiForce(0, {GetAiUnitType("infantry"), 4, GetAiUnitType("shooter"), 2, GetAiUnitType("siege-engine"), 0}) end,

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
--  function() return AiForce(8, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
--  function() return AiForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 22, GetAiUnitType("siege-engine"), 0, AiMage(), 4}, true) end,
--  function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 18, GetAiUnitType("siege-engine"), 2, AiMage(), 0}, true) end,
--  function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 14, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
  function() return AiForce(8, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiForce(4, {GetAiUnitType("infantry"), 22, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiForce(5, {GetAiUnitType("infantry"), 18, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 2}, true) end,
  function() return AiForce(6, {GetAiUnitType("infantry"), 14, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiSet(GetAiUnitType("worker"), 40) end,

  function() return AiWaitForce(4) end,
  function() return AiAttackWithForce(4) end,
--  function() return AiForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
  function() return AiForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiWaitForce(5) end,
  function() return AiAttackWithForce(5) end,
--  function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
  function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiWaitForce(6) end,
  function() return AiAttackWithForce(6) end,
--  function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
  function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,

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

--  function() return AiForce(4, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 5, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 12, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
--  function() return AiForce(5, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 5, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 10, GetAiUnitType("siege-engine"), 0, AiMage(), 4}, true) end,
--  function() return AiForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 2, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 5, GetAiUnitType("siege-engine"), 2, AiMage(), 0}, true) end,
--  function() return AiForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 1, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 3, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
  function() return AiForce(4, {GetAiUnitType("infantry"), 12, GetAiUnitType("shooter"), 5, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiForce(5, {GetAiUnitType("infantry"), 10, GetAiUnitType("shooter"), 5, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiForce(6, {GetAiUnitType("infantry"), 5, GetAiUnitType("shooter"), 2, GetAiUnitType("siege-engine"), 2}, true) end,
  function() return AiForce(7, {GetAiUnitType("infantry"), 3, GetAiUnitType("shooter"), 1, GetAiUnitType("siege-engine"), 0}, true) end,

  function() return AiWaitForce(4) end,
  function() return AiAttackWithForce(4) end,
--  function() return AiForce(4, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
  function() return AiForce(4, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiWaitForce(5) end,
  function() return AiAttackWithForce(5) end,
--  function() return AiForce(5, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
  function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiWaitForce(6) end,
  function() return AiAttackWithForce(6) end,
--  function() return AiForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
  function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiWaitForce(7) end,
  function() return AiAttackWithForce(7) end,
  function() return AiAttackWithForce(6) end,
  function() return AiAttackWithForce(5) end,
  function() return AiAttackWithForce(4) end,

--  function() return AiForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiMage(), 0}, true) end,
  function() return AiForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,

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

--  function() return AiForce(5, {AiFlyer(), 3}, true) end,

-- THIRD ATTACK

--  function() return AiForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 10, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 15, GetAiUnitType("siege-engine"), 0, AiMage(), 4}, true) end,
--  function() return AiForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 20, GetAiUnitType("siege-engine"), 2, AiMage(), 0}, true) end,
  function() return AiForce(6, {GetAiUnitType("infantry"), 15, GetAiUnitType("shooter"), 10, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiForce(7, {GetAiUnitType("infantry"), 20, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 2}, true) end,
--  function() return AiWaitForce(5) end,
--  function() return AiAttackWithForce(5) end,
--  function() return AiForce(5, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, AiMage(), 0}, true) end,
  function() return AiWaitForce(6) end,
  function() return AiAttackWithForce(6) end,
--  function() return AiForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, AiMage(), 0}, true) end,
  function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiWaitForce(7) end,
  function() return AiAttackWithForce(7) end,
--  function() return AiForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, AiMage(), 0}, true) end,
  function() return AiForce(7, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,


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

--  function() return AiForce(5, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 15, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 40, GetAiUnitType("siege-engine"), 0, AiMage(), 4}, true) end,
--  function() return AiForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 10, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 20, GetAiUnitType("siege-engine"), 2, AiMage(), 0}, true) end,
  function() return AiForce(5, {GetAiUnitType("infantry"), 40, GetAiUnitType("shooter"), 15, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiForce(6, {GetAiUnitType("infantry"), 20, GetAiUnitType("shooter"), 10, GetAiUnitType("siege-engine"), 2}, true) end,
--  function() return AiForce(7, {AiFlyer(), 4}, true) end,
  function() return AiWaitForce(5) end,
  function() return AiAttackWithForce(5) end,
--  function() return AiForce(5, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, AiMage(), 0}, true) end,
  function() return AiForce(5, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
  function() return AiWaitForce(6) end,
  function() return AiAttackWithForce(6) end,
--  function() return AiForce(6, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, AiMage(), 0}, true) end,
  function() return AiForce(6, {GetAiUnitType("infantry"), 0, GetAiUnitType("shooter"), 0, GetAiUnitType("siege-engine"), 0}, true) end,
--  function() return AiWaitForce(7) end,
--  function() return AiAttackWithForce(7) end,
--  function() return AiForce(7, {GetAiUnitType("infantry"), 0, AiEliteShooter(), 0, GetAiUnitType("cavalry"), 0, AiCavalryMage(), 0, GetAiUnitType("siege-engine"), 0, AiFlyer(), 0, AiMage(), 0}, true) end,

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

function AiGrandStrategyBattle() AiLoop(land_funcs, stratagus.gameData.AIState.index); end

DefineAi("grand-strategy-battle", "*", "grand-strategy-battle", AiGrandStrategyBattle)

