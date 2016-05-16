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
--      land_attack_defensive.lua - Default land attack AI, but doesn't attack.
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

function AiLandAttackDefensive()
	if (force_attacking[AiPlayer()] == nil) then -- init variables
		force_attacking[AiPlayer()] = false
		if (AiGetRace() == "dwarf") then -- dwarves collect more stone than other civilizations
			AiSetCollect({0, 40, 40, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0})
		else
			AiSetCollect({0, 45, 45, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0})
		end
	end
	
	local town_halls = GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("town-hall"))
	if (GetAiUnitType("stronghold") ~= nil) then
		town_halls = town_halls + GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold"))
	end
	
	if (CheckDependency(AiPlayer(), GetAiUnitType("town-hall")) and town_halls < 1) then
		AiSet(GetAiUnitType("town-hall"), 1)
	end
	if (CheckDependency(AiPlayer(), GetAiUnitType("worker")) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) < 1) then
		AiSet(GetAiUnitType("worker"), 1)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) < 5) then
		AiSet(GetAiUnitType("worker"), 5)
	end
	
	if (
		town_halls >= 1
		and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) >= 5
	) then -- only begin building more structures if there is at least one town hall and a minimum quantity of workers is present
		if (CheckDependency(AiPlayer(), GetAiUnitType("barracks")) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) < 1 and (GameCycle >= 2500 or GameSettings.Difficulty ~= 1)) then -- wait a bit with doing things for easy difficulty
			AiSet(GetAiUnitType("barracks"), 1)
		end
		if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) >= 5 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) < (10 * town_halls)) then
			AiSet(GetAiUnitType("worker"), (10 * town_halls)) -- 10 workers per town hall
		end
		if (CheckDependency(AiPlayer(), GetAiUnitType("lumber-mill")) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) >= 10 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("lumber-mill")) < 1 and (GameCycle >= 5000 or GameSettings.Difficulty ~= 1)) then
			AiSet(GetAiUnitType("lumber-mill"), 1)
		end
		if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) >= 10 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("lumber-mill")) >= 1 and (GameCycle >= 7500 or GameSettings.Difficulty ~= 1)) then
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) < 2) then
				AiSet(GetAiUnitType("barracks"), 2)
			end
			if (GetAiUnitType("wood-plow") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("wood-plow"))) then
				AiResearch(GetAiUnitType("wood-plow"))
			end
		end
		
		if (
			CheckDependency(AiPlayer(), GetAiUnitType("smithy"))
			and (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 or (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "Faction") == "Shorbear Clan")) -- The Shorbears are masterful crafters of tools, so they probably should invest in smithing sooner rather than later
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) >= 10 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("smithy")) < 1
			and (GameCycle >= 10000 or GameSettings.Difficulty ~= 1)
		) then
			AiSet(GetAiUnitType("smithy"), 1)
		end
		
		if (
			(GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 or (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "Faction") == "Shorbear Clan")) -- The Shorbears are masterful crafters of tools, so they probably should invest in smithing sooner rather than later
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) >= 10
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("smithy")) >= 1
		) then -- if has a smithy and two barracks, begin researching upgrades
			if not (GetPlayerData(AiPlayer(), "Faction") == "Eikinskjaldi Clan") then -- The Eikinskjaldi Clan focuses on shields and avoids weapon upgrades
				if (GetAiUnitType("melee-weapon-1") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("melee-weapon-1"))) then
					AiResearch(GetAiUnitType("melee-weapon-1"))
				end
			end
			if not (GetPlayerData(AiPlayer(), "Faction") == "Shinsplitter Clan") then -- Shinsplitters are more offensive, and use less armor in combat
				if (GetAiUnitType("bronze-shield") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("bronze-shield"))) then
					AiResearch(GetAiUnitType("bronze-shield"))
				end
			end
			if not (GetPlayerData(AiPlayer(), "Faction") == "Eikinskjaldi Clan") then -- The Eikinskjaldi Clan focuses on shields and avoids weapon upgrades
				if (GetAiUnitType("melee-weapon-2") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("melee-weapon-2"))) then
					AiResearch(GetAiUnitType("melee-weapon-2"))
				end
			end
			if not (GetPlayerData(AiPlayer(), "Faction") == "Shinsplitter Clan") then -- Shinsplitters are more offensive, and use less armor in combat
				if (GetAiUnitType("iron-shield") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("iron-shield"))) then
					AiResearch(GetAiUnitType("iron-shield"))
				end
			end
		end
		
		if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) >= 10 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("lumber-mill")) >= 1) then -- if has a lumber mill and two barracks, begin researching upgrades
			if (GetAiUnitType("ranged-projectile-1") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("ranged-projectile-1"))) then
				AiResearch(GetAiUnitType("ranged-projectile-1"))
			end
			if (GetAiUnitType("iron-tipped-wood-plow") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("iron-tipped-wood-plow"))) then
				AiResearch(GetAiUnitType("iron-tipped-wood-plow"))
			end
			if (GetAiUnitType("ranged-projectile-2") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("ranged-projectile-2"))) then
				AiResearch(GetAiUnitType("ranged-projectile-2"))
			end
		end
		if (AiGetRace() == "germanic" and CheckDependency(AiPlayer(), "upgrade-teuton-civilization")) then -- if is Germanic and can develop Teuton civilization, do so now
			AiResearch("upgrade-teuton-civilization")
		end
		
		if (
			GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) >= 10
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("lumber-mill")) >= 1
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("smithy")) >= 1
			and (GetAiUnitType("melee-weapon-2") == nil or GetPlayerData(AiPlayer(), "Allow", GetAiUnitType("melee-weapon-2")) == "R" or GetPlayerData(AiPlayer(), "Faction") == "Eikinskjaldi Clan") -- The Eikinskjaldi Clan focuses on shields and avoids weapon upgrades
			and (GetAiUnitType("iron-shield") == nil or GetPlayerData(AiPlayer(), "Allow", GetAiUnitType("iron-shield")) == "R" or GetPlayerData(AiPlayer(), "Faction") == "Shinsplitter Clan") -- Shinsplitters are more offensive, and use less armor in combat
			and (GetAiUnitType("ranged-projectile-2") == nil or GetPlayerData(AiPlayer(), "Allow", GetAiUnitType("ranged-projectile-2")) == "R")
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
					if (GetUnitVariable(uncount[unit1], "Ident") == GetAiUnitType("town-hall") and GetUnitVariable(uncount[unit1], "UpgradeTo", "Max") > 0) then -- the "max" value of "UpgradeTo" is the time cost of the unit type to which the hall is being upgraded
						town_hall_upgrading = true
					end
				end
				if not (town_hall_upgrading) then
					AiUpgradeTo(GetAiUnitType("stronghold"))
				end
			end
			if (AiGetRace() == "goblin") then -- if is goblin, train a glider
				AiSet(GetAiUnitType("glider"), 1)
			end
		end
		
		if (GetAiUnitType("stronghold") ~= nil and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold")) >= 1) then
			if (GetAiUnitType("stables") ~= nil and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stables")) < 1 and CheckDependency(AiPlayer(), GetAiUnitType("stables"))) then
				AiSet(GetAiUnitType("stables"), 1) -- if has a stronghold but no stables, build one
			end
			if ((GetAiUnitType("stables") == nil or GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stables")) >= 1) and GetAiUnitType("temple") ~= nil and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("temple")) < 1 and CheckDependency(AiPlayer(), GetAiUnitType("temple"))) then
				AiSet(GetAiUnitType("temple"), 1) -- if has a stronghold and stables but no temple, build one
			end
			if (GetAiUnitType("coinage") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("coinage"))) then
				AiResearch(GetAiUnitType("coinage")) -- if has a stronghold, research coinage
			end
			if (GetAiUnitType("writing") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("writing"))) then
				AiResearch(GetAiUnitType("writing")) -- if has a stronghold, research writing
			end
			if (GetAiUnitType("alchemy") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("alchemy"))) then
				AiResearch(GetAiUnitType("alchemy")) -- if has a stronghold, research alchemy
			end
			AiSet(GetAiUnitType("town-hall"), 2) -- make an expansion
			AiSet(GetAiUnitType("barracks"), 3)
		end
		
		if (GetAiUnitType("stronghold") ~= nil and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("smithy")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold")) >= 1) then -- if has a stronghold, a smithy and two barracks, begin researching siege projectile upgrades
			if (GetAiUnitType("siege-projectile-1") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("siege-projectile-1"))) then
				AiResearch(GetAiUnitType("siege-projectile-1"))
			end
			if (GetAiUnitType("siege-projectile-2") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("siege-projectile-2"))) then
				AiResearch(GetAiUnitType("siege-projectile-2"))
			end
		end
	end
	
	if (
		town_halls >= 1
		and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("worker")) >= 5
	) then -- only begin attacking/training if there is at least one town hall and a minimum quantity of workers is present
		-- train units / attack
		if (CheckDependency(AiPlayer(), GetAiUnitType("infantry")) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("lumber-mill")) < 1) then
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("infantry")) < 3 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("infantry"), 3)
			end
		elseif (CheckDependency(AiPlayer(), GetAiUnitType("infantry")) and CheckDependency(AiPlayer(), GetAiUnitType("shooter")) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) < 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("lumber-mill")) >= 1) then
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("infantry")) < 3 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("infantry"), 3)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("shooter")) < 1 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("shooter"), 1)
			end
		elseif (CheckDependency(AiPlayer(), GetAiUnitType("infantry")) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("lumber-mill")) < 1) then
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("infantry")) < 6 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("infantry"), 6)
			end
		elseif (CheckDependency(AiPlayer(), GetAiUnitType("infantry")) and CheckDependency(AiPlayer(), GetAiUnitType("shooter")) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("lumber-mill")) >= 1 and (GetAiUnitType("stronghold") == nil or GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold")) < 1)) then
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("infantry")) < 6 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("infantry"), 6)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("shooter")) < 3 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("shooter"), 3)
			end
		elseif (GetAiUnitType("stronghold") ~= nil and CheckDependency(AiPlayer(), GetAiUnitType("infantry")) and CheckDependency(AiPlayer(), GetAiUnitType("shooter")) and CheckDependency(AiPlayer(), GetAiUnitType("siege-engine")) and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("lumber-mill")) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold")) >= 1) then -- if has stronghold, begin building siege weapons
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("infantry")) < 12 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("infantry"), 12)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("shooter")) < 6 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("shooter"), 6)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("siege-engine")) < 2 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("siege-engine"), 2)
			end
		elseif (
			GetAiUnitType("stronghold") ~= nil
			and CheckDependency(AiPlayer(), GetAiUnitType("infantry"))
			and CheckDependency(AiPlayer(), GetAiUnitType("shooter"))
			and CheckDependency(AiPlayer(), GetAiUnitType("siege-engine"))
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("barracks")) >= 2
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("lumber-mill")) >= 1
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stronghold")) >= 1
			and GetAiUnitType("cavalry") ~= nil
			and CheckDependency(AiPlayer(), GetAiUnitType("cavalry"))
			and GetAiUnitType("stables") ~= nil
			and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("stables")) >= 1
		) then -- if has stronghold and stables, use cavalry units
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("infantry")) < 12 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("infantry"), 12)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("shooter")) < 12 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("shooter"), 12)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("siege-engine")) < 3 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("siege-engine"), 3)
			end
			if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("cavalry")) < 9 and force_attacking[AiPlayer()] == false) then
				AiSet(GetAiUnitType("cavalry"), 9)
			end
		end
	end
	
	if (GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("infantry")) == 0 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("shooter")) == 0 and GetPlayerData(AiPlayer(), "UnitTypesAiActiveCount", GetAiUnitType("siege-engine")) == 0 and force_attacking[AiPlayer()] == true) then
		force_attacking[AiPlayer()] = false
	end
	
	-- every once in a while, give some free resources to the AI if under the higher difficulties
	if (GameSettings.Difficulty == 3) then
		AiCheat(50, 35, 25)
	elseif (GameSettings.Difficulty == 4) then
		AiCheat(100, 75, 50)
	end
end

DefineAi("land-attack-defensive", "*", "land-attack-defensive", AiLandAttackDefensive)
