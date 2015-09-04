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
--      (c) Copyright 2015 by Andrettin
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

local force_attacking = {}

function AiLandAttack()
	if (force_attacking[AiPlayer()] == nil) then -- init variables
		force_attacking[AiPlayer()] = false
		if (AiGetRace() == "dwarf") then -- dwarves collect more stone than other civilizations
			AiSetCollect({0, 40, 40, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0})
		else
			AiSetCollect({0, 45, 45, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0})
		end
	end
	
	local town_halls = GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiTownHall())
	if (GetAiUnitType("stronghold") ~= nil) then
		town_halls = town_halls + GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold"))
	end
	
	if (CheckDependency(AiPlayer(), AiTownHall()) and town_halls < 1) then
		AiSet(AiTownHall(), 1)
	end
	if (CheckDependency(AiPlayer(), AiWorker()) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) < 1) then
		AiSet(AiWorker(), 1)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) < 5) then
		AiSet(AiWorker(), 5)
	end
	
	if (
		town_halls >= 1
		and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) >= 5
	) then -- only begin building more structures if there is at least one town hall and a minimum quantity of workers is present
		if (CheckDependency(AiPlayer(), GetAiUnitType("barracks")) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) < 1 and (GameCycle >= 2500 or GameSettings.Difficulty ~= 1)) then -- wait a bit with doing things for easy difficulty
			AiSet(GetAiUnitType("barracks"), 1)
		end
		if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) >= 5 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) < (10 * town_halls)) then
			AiSet(AiWorker(), (10 * town_halls)) -- 10 workers per town hall
		end
		if (CheckDependency(AiPlayer(), AiLumberMill()) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) >= 10 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiLumberMill()) < 1 and (GameCycle >= 5000 or GameSettings.Difficulty ~= 1)) then
			AiSet(AiLumberMill(), 1)
		end
		if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) >= 10 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiLumberMill()) >= 1 and (GameCycle >= 7500 or GameSettings.Difficulty ~= 1)) then
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) < 2) then
				AiSet(GetAiUnitType("barracks"), 2)
			end
			if (GetAiUnitType("wood-plow") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("wood-plow"))) then
				AiResearch(GetAiUnitType("wood-plow"))
			end
		end
		
		if (
			CheckDependency(AiPlayer(), AiSmithy())
			and (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 or (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "Faction") == "Shorbear Clan")) -- The Shorbears are masterful crafters of tools, so they probably should invest in smithing sooner rather than later
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) >= 10 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSmithy()) < 1
			and (GameCycle >= 10000 or GameSettings.Difficulty ~= 1)
		) then
			AiSet(AiSmithy(), 1)
		end
		
		if (
			(GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 or (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "Faction") == "Shorbear Clan")) -- The Shorbears are masterful crafters of tools, so they probably should invest in smithing sooner rather than later
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) >= 10
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSmithy()) >= 1
		) then -- if has a smithy and two barracks, begin researching upgrades
			if not (GetPlayerData(AiPlayer(), "Faction") == "Eikinskjaldi Clan") then -- The Eikinskjaldi Clan focuses on shields and avoids weapon upgrades
				if (AiUpgradeWeapon1() ~= nil and CheckDependency(AiPlayer(), AiUpgradeWeapon1())) then
					AiResearch(AiUpgradeWeapon1())
				end
			end
			if not (GetPlayerData(AiPlayer(), "Faction") == "Shinsplitter Clan") then -- Shinsplitters are more offensive, and use less armor in combat
				if (GetAiUnitType("bronze-shield") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("bronze-shield"))) then
					AiResearch(GetAiUnitType("bronze-shield"))
				end
			end
			if not (GetPlayerData(AiPlayer(), "Faction") == "Eikinskjaldi Clan") then -- The Eikinskjaldi Clan focuses on shields and avoids weapon upgrades
				if (AiUpgradeWeapon2() ~= nil and CheckDependency(AiPlayer(), AiUpgradeWeapon2())) then
					AiResearch(AiUpgradeWeapon2())
				end
			end
			if not (GetPlayerData(AiPlayer(), "Faction") == "Shinsplitter Clan") then -- Shinsplitters are more offensive, and use less armor in combat
				if (GetAiUnitType("iron-shield") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("iron-shield"))) then
					AiResearch(GetAiUnitType("iron-shield"))
				end
			end
		end
		
		if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) >= 10 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiLumberMill()) >= 1) then -- if has a lumber mill and two barracks, begin researching upgrades
			if (AiUpgradeMissile1() ~= nil and CheckDependency(AiPlayer(), AiUpgradeMissile1())) then
				AiResearch(AiUpgradeMissile1())
			end
			if (GetAiUnitType("iron-tipped-wood-plow") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("iron-tipped-wood-plow"))) then
				AiResearch(GetAiUnitType("iron-tipped-wood-plow"))
			end
			if (AiUpgradeMissile2() ~= nil and CheckDependency(AiPlayer(), AiUpgradeMissile2())) then
				AiResearch(AiUpgradeMissile2())
			end
		end
		if (AiGetRace() == "germanic" and CheckDependency(AiPlayer(), "upgrade-teuton-civilization")) then -- if is Germanic and can develop Teuton civilization, do so now
			AiResearch("upgrade-teuton-civilization")
		end
		
		if (
			GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) >= 10
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiLumberMill()) >= 1
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSmithy()) >= 1
			and (AiUpgradeWeapon2() == nil or GetPlayerData(AiPlayer(), "Allow", AiUpgradeWeapon2()) == "R" or GetPlayerData(AiPlayer(), "Faction") == "Eikinskjaldi Clan") -- The Eikinskjaldi Clan focuses on shields and avoids weapon upgrades
			and (GetAiUnitType("iron-shield") == nil or GetPlayerData(AiPlayer(), "Allow", GetAiUnitType("iron-shield")) == "R" or GetPlayerData(AiPlayer(), "Faction") == "Shinsplitter Clan") -- Shinsplitters are more offensive, and use less armor in combat
			and (AiUpgradeMissile2() == nil or GetPlayerData(AiPlayer(), "Allow", AiUpgradeMissile2()) == "R")
			and (GetAiUnitType("iron-tipped-wood-plow") == nil or GetPlayerData(AiPlayer(), "Allow", GetAiUnitType("iron-tipped-wood-plow")) == "R")
			and (GameCycle >= 15000 or GameSettings.Difficulty ~= 1)
		) then -- research masonry and upgrade to stronghold
			if (GetAiUnitType("masonry") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("masonry"))) then
				AiResearch(GetAiUnitType("masonry"))
			end
			if (GetAiUnitType("stronghold") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("stronghold")) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold")) < 1) then
				-- check if there's no town hall already upgrading to a stronghold
				local town_hall_upgrading = false
				local uncount = GetUnits(AiPlayer())
				for unit1 = 1,table.getn(uncount) do 
					if (GetUnitVariable(uncount[unit1], "Ident") == AiTownHall() and GetUnitVariable(uncount[unit1], "UpgradeTo", "Max") > 0) then -- the "max" value of "UpgradeTo" is the time cost of the unit type to which the hall is being upgraded
						town_hall_upgrading = true
					end
				end
				if not (town_hall_upgrading) then
					AiUpgradeTo(GetAiUnitType("stronghold"))
				end
			end
			if (AiGetRace() == "goblin") then -- if is goblin, train a glider
				AiSet(AiGlider(), 1)
			end
		end
		
		if (GetAiUnitType("stronghold") ~= nil and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold")) >= 1) then
			if (GetAiUnitType("coinage") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("coinage"))) then
				AiResearch(GetAiUnitType("coinage")) -- if has a stronghold, research coinage
			end
			if (GetAiUnitType("writing") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("writing"))) then
				AiResearch(GetAiUnitType("writing")) -- if has a stronghold, research writing
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("town-hall")) < 2) then
				AiSet(GetAiUnitType("town-hall"), 2) -- make an expansion
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) < 3) then
				AiSet(GetAiUnitType("barracks"), 3)
			end
		end
		
		if (GetAiUnitType("stronghold") ~= nil and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSmithy()) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold")) >= 1) then -- if has a stronghold, a smithy and two barracks, begin researching siege projectile upgrades
			if (AiUpgradeSiegeProjectile1() ~= nil and CheckDependency(AiPlayer(), AiUpgradeSiegeProjectile1())) then
				AiResearch(AiUpgradeSiegeProjectile1())
			end
			if (AiUpgradeSiegeProjectile2() ~= nil and CheckDependency(AiPlayer(), AiUpgradeSiegeProjectile2())) then
				AiResearch(AiUpgradeSiegeProjectile2())
			end
		end
	end
	
	if (
		town_halls >= 1
		and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiWorker()) >= 5
	) then -- only begin attacking/training if there is at least one town hall and a minimum quantity of workers is present
		-- train units / attack
		if (CheckDependency(AiPlayer(), AiSoldier()) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiLumberMill()) < 1) then
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSoldier()) < 3 and force_attacking[AiPlayer()] == false) then
				AiSet(AiSoldier(), 3)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSoldier()) >= 3 and force_attacking[AiPlayer()] == false) then
				AiForce(1, {AiSoldier(), 3})
				AiAttackWithForce(1)
				AiSet(AiSoldier(), 0)
				force_attacking[AiPlayer()] = true
			end
		elseif (CheckDependency(AiPlayer(), AiSoldier()) and CheckDependency(AiPlayer(), AiShooter()) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) < 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiLumberMill()) >= 1) then
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSoldier()) < 3 and force_attacking[AiPlayer()] == false) then
				AiSet(AiSoldier(), 3)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiShooter()) < 1 and force_attacking[AiPlayer()] == false) then
				AiSet(AiShooter(), 1)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSoldier()) >= 3 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiShooter()) >= 1 and force_attacking[AiPlayer()] == false) then
				AiForce(1, {AiSoldier(), 3, AiShooter(), 1})
				AiAttackWithForce(1)
				AiSet(AiSoldier(), 0)
				AiSet(AiShooter(), 0)
				force_attacking[AiPlayer()] = true
			end
		elseif (CheckDependency(AiPlayer(), AiSoldier()) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiLumberMill()) < 1) then
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSoldier()) < 6 and force_attacking[AiPlayer()] == false) then
				AiSet(AiSoldier(), 6)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSoldier()) >= 6 and force_attacking[AiPlayer()] == false) then
				AiForce(1, {AiSoldier(), 6})
				AiAttackWithForce(1)
				AiSet(AiSoldier(), 0)
				force_attacking[AiPlayer()] = true
			end
		elseif (CheckDependency(AiPlayer(), AiSoldier()) and CheckDependency(AiPlayer(), AiShooter()) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiLumberMill()) >= 1 and (GetAiUnitType("stronghold") == nil or GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold")) < 1)) then
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSoldier()) < 6 and force_attacking[AiPlayer()] == false) then
				AiSet(AiSoldier(), 6)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiShooter()) < 3 and force_attacking[AiPlayer()] == false) then
				AiSet(AiShooter(), 3)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSoldier()) >= 6 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiShooter()) >= 3 and force_attacking[AiPlayer()] == false) then
				AiForce(1, {AiSoldier(), 6, AiShooter(), 3})
				AiAttackWithForce(1)
				AiSet(AiSoldier(), 0)
				AiSet(AiShooter(), 0)
				force_attacking[AiPlayer()] = true
			end
		elseif (GetAiUnitType("stronghold") ~= nil and CheckDependency(AiPlayer(), AiSoldier()) and CheckDependency(AiPlayer(), AiShooter()) and CheckDependency(AiPlayer(), AiSiegeWeapon()) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiLumberMill()) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold")) >= 1) then -- if has stronghold, begin building siege weapons
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSoldier()) < 12 and force_attacking[AiPlayer()] == false) then
				AiSet(AiSoldier(), 12)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiShooter()) < 6 and force_attacking[AiPlayer()] == false) then
				AiSet(AiShooter(), 6)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSiegeWeapon()) < 2 and force_attacking[AiPlayer()] == false) then
				AiSet(AiSiegeWeapon(), 2)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSoldier()) >= 12 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiShooter()) >= 6 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSiegeWeapon()) >= 2 and force_attacking[AiPlayer()] == false) then
				AiForce(1, {AiSoldier(), 12, AiShooter(), 6, AiSiegeWeapon(), 2})
				AiAttackWithForce(1)
				AiSet(AiSoldier(), 0)
				AiSet(AiShooter(), 0)
				AiSet(AiSiegeWeapon(), 0)
				force_attacking[AiPlayer()] = true
			end
		end
	end
	
	if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSoldier()) == 0 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiShooter()) == 0 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", AiSiegeWeapon()) == 0 and force_attacking[AiPlayer()] == true) then
		force_attacking[AiPlayer()] = false
	end
	
	-- every once in a while, give some free resources to the AI if under the higher difficulties
	if (GameSettings.Difficulty == 3) then
		AiCheat(50, 35, 25)
	elseif (GameSettings.Difficulty == 4) then
		AiCheat(100, 75, 50)
	end
end

DefineAi("land-attack", "*", "land-attack", AiLandAttack)
