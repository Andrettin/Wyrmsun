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
--	ai_redribbon.lua - Define the AI.
--
--	(c) Copyright 2014 by Kyran Jackson
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
--      Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
--

function AiRedRibbon_Setup_2014()
	timers = {}
	ftm_faction = {}
	ftm_team = {}
	ftm_team_startx = {}
	ftm_team_starty = {}
	ftm_team_tempx = {}
	ftm_team_tempy = {}
	ftm_team_orderx = {}
	ftm_team_ordery = {}
	ftm_team_x1 = {}
	ftm_team_y1 = {}
	ftm_team_x2 = {}
	ftm_team_y2 = {}
	ftm_unit = {}
	ftm_origin = {}
	ftm_cost = {}
	ftm_choice = {} -- Who gets spawned in next.
	ftm_index_start = {}
	ftm_index_end = {}
	ftm_unit[1] = "unit-dwarven-axefighter"
	ftm_origin[1] = "unit-dwarven-barracks"
	ftm_cost[1] = 25
	ftm_unit[2] = "unit-dwarven-steelclad"
	ftm_origin[2] = "unit-dwarven-barracks"
	ftm_cost[2] = 50
	ftm_unit[3] = "unit-dwarven-thane"
	ftm_origin[3] = "unit-dwarven-barracks"
	ftm_cost[3] = 200
	ftm_unit[4] = "unit-dwarven-scout"
	ftm_origin[4] = "unit-dwarven-barracks"
	ftm_cost[4] = 25
--	ftm_unit[4] = "unit-dwarven-pathfinder"
--	ftm_origin[4] = "unit-dwarven-barracks"
--	ftm_cost[4] = 50
--	ftm_unit[5] = "unit-dwarven-explorer"
--	ftm_origin[5] = "unit-dwarven-barracks"
--	ftm_cost[5] = 200
--	ftm_unit[6] = "unit-knight"
--	ftm_origin[6] = "unit-dwarven-barracks"
--	ftm_cost[6] = 75
--	ftm_unit[7] = "unit-paladin"
--	ftm_origin[7] = "unit-dwarven-barracks"
--	ftm_cost[7] = 125
--	ftm_unit[8] = "unit-knight-rider"
--	ftm_origin[8] = "unit-dwarven-barracks"
--	ftm_cost[8] = 200
	ftm_unit[5] = "unit-dwarven-ballista"
	ftm_origin[5] = "unit-dwarven-barracks"
	ftm_cost[5] = 125
--	ftm_unit[11] = "unit-dwarven-demolitionist"
--	ftm_origin[11] = "unit-dwarven-workshop"
--	ftm_cost[11] = 1
	ftm_unit[6] = "unit-dwarven-gryphon-rider"
	ftm_origin[6] = "unit-dwarven-barracks"
	ftm_cost[6] = 1
--	ftm_unit[14] = "unit-dwarven-witness"
--	ftm_origin[14] = "unit-dwarven-temple"
--	ftm_cost[14] = 100
--	ftm_unit[15] = "unit-dwarven-miner"
--	ftm_origin[15] = "unit-dwarven-town-hall"
--	ftm_cost[15] = 25
	
	ftm_unit[65] = "unit-goblin-spearman"
	ftm_origin[65] = "unit-goblin-mess-hall"
	ftm_cost[65] = 25
	ftm_unit[66] = "unit-goblin-archer"
	ftm_origin[66] = "unit-goblin-mess-hall"
	ftm_cost[66] = 25
	ftm_unit[67] = "unit-goblin-war-machine"
	ftm_origin[67] = "unit-goblin-mess-hall"
	ftm_cost[67] = 125
	
	ftm_choice[0] = 3
	ftm_choice[1] = 2
	
	for i=0, 15 do
		timers[i] = 1
		ftm_faction[i] = 10
		ftm_team[i] = 10
		ftm_index_start[i] = 1
		ftm_index_end[i] = 1
		ftm_team_tempx[i] = 0
		ftm_team_tempy[i] = 0
		ftm_team_x1[i] = 0
		ftm_team_y1[i] = 0
		ftm_team_x2[i] = 256
		ftm_team_y2[i] = 256
		ftm_team_startx[i] = 1
		ftm_team_starty[i] = 1
		ftm_team_orderx[i] = "Right"
		ftm_team_ordery[i] = "Down"
	end
	
	ftm_index_start[0] = 51
	ftm_index_end[0] = 65
	ftm_index_start[1] = 1
	ftm_index_end[1] = 15

	aiftm_unit = {}
	aiftm_quantity = {}
	aiftm_loop = {}
	aiftm_terminate = {}
	aiftm_index = {}
	aiftm_mana = {}
	for i = 0, 15 do
		aiftm_unit[i] = {}
		aiftm_quantity[i] = {}
		aiftm_index[i] = 0
		aiftm_terminate[i] = 15
		aiftm_loop[i] = 0
		aiftm_mana[i] = 0
		for j = 0, 15 do
			aiftm_unit[i][j] = 0
			aiftm_quantity[i][j] = 0
		end
	end
end

function AiRedRibbon_2014()
	--if (ftm_unit ~= {}) then
		--AiRedRibbon_Setup_2014()
	--end
	if ((timers[AiPlayer()] == 50) or (timers[AiPlayer()] == 100)) then
--		AddMessage("Time to spawn in.")
		if (ftm_team[AiPlayer()] == ftm_team[ftm_choice[AiPlayer()]]) then
			for i=ftm_index_start[AiPlayer()],ftm_index_end[AiPlayer()] do
				if (GetNumUnitsAt(ftm_choice[AiPlayer()], ftm_unit[i], {ftm_team_x1[ftm_choice[AiPlayer()]], ftm_team_y1[ftm_choice[AiPlayer()]]}, {ftm_team_x2[ftm_choice[AiPlayer()]], ftm_team_y2[ftm_choice[AiPlayer()]]}) > 0 and GetPlayerData(AiPlayer(), "UnitTypesCount", ftm_origin[i]) > 0) then
--					AddMessage(ftm_unit[i])
					local create_unit_x = 0
					local create_unit_y = 0
					local uncount = 0
					uncount = GetUnits(AiPlayer())
					for unit1 = 1,table.getn(uncount) do 
						if (GetUnitVariable(uncount[unit1], "Ident") == ftm_origin[i]) then
							create_unit_x = GetUnitVariable(uncount[unit1],"PosX")
							create_unit_y = GetUnitVariable(uncount[unit1],"PosY")
							break
						end
					end
					for j=1,GetNumUnitsAt(ftm_choice[AiPlayer()], ftm_unit[i], {ftm_team_x1[ftm_choice[AiPlayer()]], ftm_team_y1[ftm_choice[AiPlayer()]]}, {ftm_team_x2[ftm_choice[AiPlayer()]], ftm_team_y2[ftm_choice[AiPlayer()]]}) do
						CreateUnit(ftm_unit[i], AiPlayer(), {create_unit_x, create_unit_y})
					end
				end
			end
			AiNephrite_Attack_2013()
		end
	elseif ((timers[AiPlayer()] == 35) or (timers[AiPlayer()] == 85)) then
		AiNephrite_Flush_2013()
	elseif (timers[AiPlayer()] == 1) then	
		for i=0,14 do
			if (ftm_faction[AiPlayer()] == ftm_faction[i]) then
				SetSharedVision(AiPlayer(), true, i)
				SetSharedVision(i, true, AiPlayer())
				SetDiplomacy(AiPlayer(), "allied", i)
				SetDiplomacy(i, "allied", AiPlayer())
			else
				SetSharedVision(AiPlayer(), false, i)
				SetSharedVision(i, false, AiPlayer())
				SetDiplomacy(AiPlayer(), "enemy", i)
				SetDiplomacy(i, "enemy", AiPlayer())
			end
		end
	end
--	AiRedRibbon_Research_2012()
	timers[AiPlayer()] = timers[AiPlayer()] + 1
	if (timers[AiPlayer()] == 101) then
		timers[AiPlayer()] = 1
	end
end

function AiRed_2014()


--aiftm_unit[i][0] = AiWorker()
--aiftm_quantity[i][0] = 1
--aiftm_loop[i] = 0
--aiftm_terminate[i] = 10
--aiftm_index[i] = 0


	if ((GetPlayerData(AiPlayer(), "UnitTypesCount", AiPriest()) > 0) and (GameCycle > 500)) then
		if ((timers[ftm_team[AiPlayer()]] == 50) or (timers[ftm_team[AiPlayer()]] == 99) or (timers[ftm_team[AiPlayer()]] == 25) or (timers[ftm_team[AiPlayer()]] == 75)) then
			aiftm_mana[AiPlayer()] = aiftm_mana[AiPlayer()] + 26
		else 
			for i=ftm_index_start[ftm_team[AiPlayer()]],ftm_index_end[ftm_team[AiPlayer()]] do
				if ((aiftm_unit[AiPlayer()][aiftm_index[AiPlayer()]] == ftm_unit[i]) and (aiftm_mana[AiPlayer()] > (aiftm_quantity[AiPlayer()][aiftm_index[AiPlayer()]]*ftm_cost[i]))) then
					for i=1, aiftm_quantity[AiPlayer()][aiftm_index[AiPlayer()]] do
						CreateUnit(aiftm_unit[AiPlayer()][aiftm_index[AiPlayer()]], AiPlayer(), {ftm_team_tempx[AiPlayer()], ftm_team_tempy[AiPlayer()]})
						if (ftm_team_orderx[AiPlayer()] == "Right") then
							if (ftm_team_tempx[AiPlayer()] == ftm_team_x2[AiPlayer()]) then
								ftm_team_tempx[AiPlayer()] = ftm_team_x1[AiPlayer()]
								if (ftm_team_ordery[AiPlayer()] == "Down") then
									if (ftm_team_tempy[AiPlayer()] == ftm_team_y2[AiPlayer()]) then
										ftm_team_tempy[AiPlayer()] = ftm_team_y1[AiPlayer()]
									else
										ftm_team_tempy[AiPlayer()] = ftm_team_tempy[AiPlayer()] + 1
									end
								elseif (ftm_team_ordery[AiPlayer()] == "Up") then
									if (ftm_team_tempy[AiPlayer()] == ftm_team_y1[AiPlayer()]) then
										ftm_team_tempy[AiPlayer()] = ftm_team_y2[AiPlayer()]
									else
										ftm_team_tempy[AiPlayer()] = ftm_team_tempy[AiPlayer()] - 1
									end
								end
							else
								ftm_team_tempx[AiPlayer()] = ftm_team_tempx[AiPlayer()] + 1
							end
						end
						if (ftm_team_orderx[AiPlayer()] == "Left") then
							if (ftm_team_tempx[AiPlayer()] == ftm_team_x1[AiPlayer()]) then
								ftm_team_tempx[AiPlayer()] = ftm_team_x2[AiPlayer()]
								if (ftm_team_ordery[AiPlayer()] == "Down") then
									if (ftm_team_tempy[AiPlayer()] == ftm_team_y2[AiPlayer()]) then
										ftm_team_tempy[AiPlayer()] = ftm_team_y1[AiPlayer()]
									else
										ftm_team_tempy[AiPlayer()] = ftm_team_tempy[AiPlayer()] + 1
									end
								elseif (ftm_team_ordery[AiPlayer()] == "Up") then
									if (ftm_team_tempy[AiPlayer()] == ftm_team_y1[AiPlayer()]) then
										ftm_team_tempy[AiPlayer()] = ftm_team_y2[AiPlayer()]
									else
										ftm_team_tempy[AiPlayer()] = ftm_team_tempy[AiPlayer()] - 1
									end
								end
							else
								ftm_team_tempx[AiPlayer()] = ftm_team_tempx[AiPlayer()] - 1
							end
						end
					end
					aiftm_mana[AiPlayer()] = aiftm_mana[AiPlayer()] - (ftm_cost[i]*aiftm_quantity[AiPlayer()][aiftm_index[AiPlayer()]])
					if (aiftm_index[AiPlayer()] == aiftm_terminate[AiPlayer()]) then
						aiftm_index[AiPlayer()] = aiftm_loop[AiPlayer()]
					else
						aiftm_index[AiPlayer()] = aiftm_index[AiPlayer()] + 1
					end
				end
			end
		end
	elseif ((ftm_team_tempx[AiPlayer()] < 2) and (GameCycle > 100)) then
		if (ftm_team_ordery[AiPlayer()] == "Down") then
			ftm_team_tempy[AiPlayer()] = ftm_team_y1[AiPlayer()]
		elseif (ftm_team_orderx[AiPlayer()] == "Up") then
			ftm_team_tempy[AiPlayer()] = ftm_team_y2[AiPlayer()]
		else
			ftm_team_tempy[AiPlayer()] = ftm_team_starty[AiPlayer()]
		end
		if (ftm_team_orderx[AiPlayer()] == "Right") then
			ftm_team_tempx[AiPlayer()] = ftm_team_x1[AiPlayer()]
		elseif (ftm_team_orderx[AiPlayer()] == "Left") then
			ftm_team_tempx[AiPlayer()] = ftm_team_x2[AiPlayer()]
		else
			ftm_team_tempx[AiPlayer()] = ftm_team_startx[AiPlayer()]
		end	
	elseif ((GameCycle > 20) and (GameCycle < 100)) then
		aiftm_mana[AiPlayer()] = 101
	end
end

DefineAi("ai_redribbon_2014", "*", "ai_redribbon_2014", AiRedRibbon_2014)
DefineAi("ai_red_2014", "*", "ai_red_2014", AiRed_2014)

-- required Nephrite functions for For the Motherland

local nephrite_build = {} -- What the AI is going to build.
local nephrite_attackbuffer = {} -- The AI attacks when it has this many units.
local nephrite_attackforce = {}
local nephrite_wait = {} -- How long the AI waits for the next attack.
local nephrite_increment = {} -- How large the attack force is increased by.
local nephrite_modifier_cav = {}
local nephrite_modifier_archer = {}

function AiForTheMotherlandAttack()
	if (nephrite_attackforce[AiPlayer()] ~= nil) then
		if ((GetPlayerData(AiPlayer(), "TotalNumUnits") - GetPlayerData(AiPlayer(), "NumBuildings") - GetPlayerData(AiPlayer(), "UnitTypesCount", AiGlider()) - GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker())) >= nephrite_attackbuffer[AiPlayer()]) then
			local uncount = 0
			uncount = GetUnits(AiPlayer())
			for unit1 = 1,table.getn(uncount) do 
				if (GetUnitBoolFlag(uncount[unit1], "Building") == false and GetUnitVariable(uncount[unit1], "Ident") ~= AiWorker() and IsUnitIdle(uncount[unit1])) then

					local enemy_unit = nil

					local second_uncount = 0
					second_uncount = GetUnits("any")
					for second_unit1 = 1,table.getn(second_uncount) do 
						if (Players[GetUnitVariable(uncount[unit1], "Player")]:IsEnemy(Players[GetUnitVariable(second_uncount[second_unit1],"Player")])) then
							enemy_unit = second_uncount[second_unit1]
							break
						end
					end

					if (enemy_unit ~= nil) then
						OrderUnit(GetUnitVariable(uncount[unit1], "Player"), GetUnitVariable(uncount[unit1],"Ident"), {GetUnitVariable(uncount[unit1],"PosX"), GetUnitVariable(uncount[unit1],"PosY")}, {GetUnitVariable(enemy_unit,"PosX"), GetUnitVariable(enemy_unit,"PosY")}, "attack")
					end
				end
			end

			nephrite_wait[AiPlayer()] = 150
			nephrite_attackforce[AiPlayer()] = 1
			nephrite_attackbuffer[AiPlayer()] = nephrite_attackbuffer[AiPlayer()] + nephrite_increment[AiPlayer()]
		end
	else
		AiNephrite_Setup_2013()
	end
end

function AiNephrite_Setup_2013()
	nephrite_build[AiPlayer()] = "Soldier"
	nephrite_attackbuffer[AiPlayer()] = 8
	nephrite_wait[AiPlayer()] = 100
	nephrite_attackforce[AiPlayer()] = 1
	nephrite_modifier_cav[AiPlayer()] = 1
	nephrite_modifier_archer[AiPlayer()] = 1
	nephrite_increment[AiPlayer()] = 0.1
end

function AiNephrite_Attack_2013()
	if (nephrite_attackforce[AiPlayer()] ~= nil) then
		--AddMessage("It is time to attack.")
		if ((GetPlayerData(AiPlayer(), "TotalNumUnits") - GetPlayerData(AiPlayer(), "NumBuildings") - GetPlayerData(AiPlayer(), "UnitTypesCount", AiGlider()) - GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker())) >= nephrite_attackbuffer[AiPlayer()]) then
			--AddMessage("Attacking with force 1.")
			AiForce(nephrite_attackforce[AiPlayer()], {AiSoldier(), GetPlayerData(AiPlayer(), "UnitTypesCount", AiSoldier()), AiVeteranSoldier(), GetPlayerData(AiPlayer(), "UnitTypesCount", AiVeteranSoldier()), AiHeroicSoldier(), GetPlayerData(AiPlayer(), "UnitTypesCount", AiHeroicSoldier()), AiShooter(), GetPlayerData(AiPlayer(), "UnitTypesCount", AiShooter()), AiSiegeWeapon(), GetPlayerData(AiPlayer(), "UnitTypesCount", AiSiegeWeapon()), AiFlyingRider(), GetPlayerData(AiPlayer(), "UnitTypesCount", AiFlyingRider())}, true)
			AiAttackWithForce(nephrite_attackforce[AiPlayer()])
			nephrite_wait[AiPlayer()] = 150
			if (nephrite_attackforce[AiPlayer()] >= 8) then
				nephrite_attackforce[AiPlayer()] = 1
				nephrite_attackbuffer[AiPlayer()] = nephrite_attackbuffer[AiPlayer()] + nephrite_increment[AiPlayer()]
				AiForce(0, {AiSoldier(), 0, AiVeteranSoldier(), 0, AiHeroicSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiFlyingRider(), 0})
				AiForce(1, {AiSoldier(), 0, AiVeteranSoldier(), 0, AiHeroicSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiFlyingRider(), 0}, true)
				AiForce(2, {AiSoldier(), 0, AiVeteranSoldier(), 0, AiHeroicSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiFlyingRider(), 0}, true)
				AiForce(3, {AiSoldier(), 0, AiVeteranSoldier(), 0, AiHeroicSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiFlyingRider(), 0}, true)
				AiForce(4, {AiSoldier(), 0, AiVeteranSoldier(), 0, AiHeroicSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiFlyingRider(), 0}, true)
				AiForce(5, {AiSoldier(), 0, AiVeteranSoldier(), 0, AiHeroicSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiFlyingRider(), 0}, true)
				AiForce(6, {AiSoldier(), 0, AiVeteranSoldier(), 0, AiHeroicSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiFlyingRider(), 0}, true)
				AiForce(7, {AiSoldier(), 0, AiVeteranSoldier(), 0, AiHeroicSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiFlyingRider(), 0}, true)
				AiForce(8, {AiSoldier(), 0, AiVeteranSoldier(), 0, AiHeroicSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiFlyingRider(), 0}, true)
				AiForce(9, {AiSoldier(), 0, AiVeteranSoldier(), 0, AiHeroicSoldier(), 0, AiShooter(), 0, AiSiegeWeapon(), 0, AiFlyingRider(), 0}, true)
			else
				nephrite_attackforce[AiPlayer()] = nephrite_attackforce[AiPlayer()] + 1
			end
		end
	else
		AiNephrite_Setup_2013()
	end
end

function AiNephrite_Flush_2013()
	AiSet(AiBarracks(), 0)
	AiSet(AiTownHall(), 0)
	AiSet(AiFarm(), 1)
	AiSet(AiSmithy(), 0)
	AiSet(AiLumberMill(), 0)
--	AiSet(AiStables(), 0)
	AiSet(AiWorker(), 0)
	AiSet(AiSiegeWeapon(), 0)
	AiSet(AiShooter(), 0)
--	AiSet(AiCavalry(), 0)
	AiSet(AiSoldier(), 0)
end

-- 2012 FtM functions

function AiRed1_2012()
	if (RedTeam1_2014 == true) then
		timer = timers[ftm_team[AiPlayer()]]
	end
	if (RedTeam1_x1 == nil) then
		RedTeam1_2014 = true
		RedTeam1 = AiPlayer()
		RedTeam1_x1 = ftm_team_x1[AiPlayer()]
		RedTeam1_y1 = ftm_team_y1[AiPlayer()]
		RedTeam1_x2 = ftm_team_x2[AiPlayer()]
		RedTeam1_y2 = ftm_team_y2[AiPlayer()]
		RedTeam1_xw = ftm_team_startx[AiPlayer()]
		RedTeam1_yw = ftm_team_starty[AiPlayer()]
		timer = 1
	else
		if ((GetPlayerData(RedTeam1, "UnitTypesCount", "unit-goblin-spearman") > 0) and (GameCycle > 500)) then
			AiRed1_Basic_2012()
		end
	end
end

function AiRed1_Basic_2012()
	if (Red1Temp_x ~= nil) then else
		if (RedTeam1_Order ~= nil) then else
			RedTeam1_Order = "Top-Right"
		end
		if (RedTeam1_Order == "Top-Right") then
			-- Top-Right means start at top, go right.
			Red1Temp_x = RedTeam1_x1
			Red1Temp_y = RedTeam1_y1
		elseif (RedTeam1_Order == "Top-Left") then
			Red1Temp_x = RedTeam1_x2
			Red1Temp_y = RedTeam1_y1
		elseif (RedTeam1_Order == "Bottom-Right") then
			Red1Temp_x = RedTeam1_x1
			Red1Temp_y = RedTeam1_y2
		elseif (RedTeam1_Order == "Bottom-Left") then
			Red1Temp_x = RedTeam1_x2
			Red1Temp_y = RedTeam1_y2
		elseif (RedTeam1_Order == "Wise") then
			Red1Temp_x = RedTeam1_xw
			Red1Temp_y = RedTeam1_yw
		end
		Red1Step = 0
		Red1Mana = 150
	end
	if ((timer == 25) or (timer == 75)) then
		Red1Mana = Red1Mana + 52
	end
	if ((timer == 50) or (timer == 98)) then
		Red1Mana = Red1Mana + 53
	end
	if (((RedTeam1_x2 - RedTeam1_x1)*(RedTeam1_y2 - RedTeam1_y1)) < 19) then
		if (GetNumUnitsAt(RedTeam1, AiSiegeWeapon(), {RedTeam1_x1, RedTeam1_y1}, {RedTeam1_x2, RedTeam1_y2}) > 4) then
			if (Red1Mana > 250) then
				CreateUnit(AiVeteranCavalry(), RedTeam1, {Red1Temp_x, Red1Temp_y})
				Red1Mana = Red1Mana - 250
				Red1Step = 1
			elseif ((Red1Mana > 100) and (Red1Mana < 120) and (GetPlayerData(RedTeam1, "UnitTypesCount", AiVeteranShooter()) == 0)) then
				CreateUnit(AiVeteranShooter(), RedTeam1, {Red1Temp_x, Red1Temp_y})
				Red1Mana = Red1Mana - 100
				Red1Step = 1
			elseif ((Red1Mana > 50) and (Red1Mana < 70) and (GetPlayerData(RedTeam1, "UnitTypesCount", AiShooter()) < 4)) then
				CreateUnit(AiShooter(), RedTeam1, {Red1Temp_x, Red1Temp_y})
				Red1Mana = Red1Mana - 50
				Red1Step = 1
			end
		else
			if (Red1Mana > 250) then
				CreateUnit(AiSiegeWeapon(), RedTeam1, {Red1Temp_x, Red1Temp_y})
				Red1Mana = Red1Mana - 250
				Red1Step = 1
			end
		end
	elseif (GetNumUnitsAt(RedTeam1, AiCavalry(), {RedTeam1_x1, RedTeam1_y1}, {RedTeam1_x2, RedTeam1_y2}) < 8) then
		if (GetNumUnitsAt(RedTeam1, AiSoldier(), {RedTeam1_x1, RedTeam1_y1}, {RedTeam1_x2, RedTeam1_y2}) < 22) then
			if ((GetNumUnitsAt(RedTeam1, AiSoldier(), {RedTeam1_x1, RedTeam1_y1}, {RedTeam1_x2, RedTeam1_y2}) < 5) or (GetNumUnitsAt(RedTeam1, AiVeteranCavalry(), {RedTeam1_x1, RedTeam1_y1}, {RedTeam1_x2, RedTeam1_y2}) > 0)) then
				if (Red1Mana > 49) then
					if ((GetPlayerData(RedTeam1, "UnitTypesCount", AiVeteranShooter()) == 0) and ((Red1Mana > 90) and (Red1Mana < 190))) then
						CreateUnit(AiVeteranShooter(), RedTeam1, {Red1Temp_x, Red1Temp_y})
						Red1Mana = Red1Mana - 100
					else
						if ((Red1Mana > 75) and (Red1Mana < 95)) then
							CreateUnit(AiShooter(), RedTeam1, {Red1Temp_x, Red1Temp_y})
						else
							CreateUnit(AiSoldier(), RedTeam1, {Red1Temp_x, Red1Temp_y})
						end
						Red1Mana = Red1Mana - 50
					end
					Red1Step = 1
				end
			else
				if (Red1Mana > 250) then
					CreateUnit(AiVeteranCavalry(), RedTeam1, {Red1Temp_x, Red1Temp_y})
					Red1Mana = Red1Mana - 250
					Red1Step = 1
				end
			end
		else
			if (Red1Mana > 149) then
				CreateUnit(AiCavalry(), RedTeam1, {Red1Temp_x, Red1Temp_y})
				Red1Mana = Red1Mana - 150
				Red1Step = 1
			end
		end
	else
		if ((Red1Mana > 289) and (Red1Mana < 599)) then
			CreateUnit(AiVeteranCavalry(), RedTeam1, {Red1Temp_x, Red1Temp_y})
			Red1Mana = Red1Mana - 250
			Red1Step = 1
		else
			if (Red1Mana > 249) then
				CreateUnit(AiSiegeWeapon(), RedTeam1, {Red1Temp_x, Red1Temp_y})
				Red1Mana = Red1Mana - 250
				Red1Step = 1
			end
		end
	end
	if (Red1Step == 1) then
		if (Red1Temp_x ~= nil) then
			if (RedTeam1_Order == "Top-Right") then
				if (Red1Temp_x == RedTeam1_x2) then
					if (Red1Temp_y == RedTeam1_y2) then
						-- Oh shit, I've used up all my spaces.
						Red1Temp_x = RedTeam1_x1
						Red1Temp_y = RedTeam1_y1
					else
						Red1Temp_x = RedTeam1_x1
						Red1Temp_y = Red1Temp_y + 1
					end
				else
					Red1Temp_x = Red1Temp_x + 1
				end
			end
			if (RedTeam1_Order == "Top-Left") then
				if (Red1Temp_x == RedTeam1_x1) then
					if (Red1Temp_y == RedTeam1_y2) then
						-- Oh shit, I've used up all my spaces.
						Red1Temp_x = RedTeam1_x1
						Red1Temp_y = RedTeam1_y1
					else
						Red1Temp_x = RedTeam1_x2
						Red1Temp_y = Red1Temp_y + 1
					end
				else
					Red1Temp_x = Red1Temp_x - 1
				end
			end
			if (RedTeam1_Order == "Bottom-Right") then
				if (Red1Temp_x == RedTeam1_x2) then
					if (Red1Temp_y == RedTeam1_y1) then
						-- Oh shit, I've used up all my spaces.
						Red1Temp_x = RedTeam1_x1
						Red1Temp_y = RedTeam1_y2
					else
						Red1Temp_x = RedTeam1_x1
						Red1Temp_y = Red1Temp_y - 1
					end
				else
					Red1Temp_x = Red1Temp_x + 1
				end
			end
			if (RedTeam1_Order == "Bottom-Left") then
				if (Red1Temp_x == RedTeam1_x1) then
					if (Red1Temp_y == RedTeam1_y1) then
						-- Oh shit, I've used up all my spaces.
						Red1Temp_x = RedTeam1_x1
						Red1Temp_y = RedTeam1_y2
					else
						Red1Temp_x = RedTeam1_x2
						Red1Temp_y = Red1Temp_y - 1
					end
				else
					Red1Temp_x = Red1Temp_x - 1
				end
			end
		end
		Red1Step = 0
	end
end

DefineAi("ai_red1", "*", "ai_red1", AiRed1_2012)
--DefineAi("ai_blue1", "*", "ai_blue1", AiBlue1)

