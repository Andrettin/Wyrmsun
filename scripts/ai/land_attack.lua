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
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiCityCenter()) < 1) then
		AiSet(AiCityCenter(), 1)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) < 1) then
		AiSet(AiWorker(), 1)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiFarm()) < 1) then
		AiSet(AiFarm(), 1)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiFarm()) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) < 4) then
		AiSet(AiWorker(), 4)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiFarm()) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiFarm()) < 3 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) >= 4) then
		AiSet(AiFarm(), 3)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) >= 4 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) < 1) then
		AiSet(AiBarracks(), 1)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) >= 1) then
		if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiSoldier()) < 16 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) >= 2) then
			AiSet(AiSoldier(), 16)
		elseif (GetPlayerData(AiPlayer(), "UnitTypesCount", AiSoldier()) < 4 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) >= 8) then
			AiSet(AiSoldier(), 4)
		elseif (GetPlayerData(AiPlayer(), "UnitTypesCount", AiSoldier()) < 1 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) < 8) then
			AiSet(AiSoldier(), 1)
		end
		if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiSoldier()) >= 16 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) >= 2) then
			AiForce(1, {AiSoldier(), 12})
			AiForce(0, {AiSoldier(), 4})
			AiWaitForce(1)
			AiAttackWithForce(1)
		elseif (GetPlayerData(AiPlayer(), "UnitTypesCount", AiSoldier()) >= 4 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) >= 8 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) < 2) then
			AiForce(1, {AiSoldier(), 3})
			AiForce(0, {AiSoldier(), 1})
			AiWaitForce(1)
			AiAttackWithForce(1)
		elseif (GetPlayerData(AiPlayer(), "UnitTypesCount", AiSoldier()) >= 1 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) < 8) then
			AiForce(1, {AiSoldier(), 1})
			AiWaitForce(1)
			AiAttackWithForce(1)
		end
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiFarm()) >= 3 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) >= 4 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) < 8 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) >= 1) then
		AiSet(AiWorker(), 8)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiFarm()) >= 3 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiFarm()) < 6 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) >= 8) then
		AiSet(AiFarm(), 6)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) >= 8 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) < 12 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiFarm()) >= 6) then
		AiSet(AiWorker(), 12)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) >= 12 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) < 2) then
		AiSet(AiBarracks(), 2)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) >= 12 and GetPlayerData(AiPlayer(), "UnitTypesCount", AiLumberMill()) < 1) then
		AiSet(AiLumberMill(), 1)
	end
	if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiBarracks()) >= 2) then
		if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiWorker()) < 20) then
			AiSet(AiWorker(), 20)
		end
		if (GetPlayerData(AiPlayer(), "UnitTypesCount", AiFarm()) < 10) then
			AiSet(AiFarm(), 10)
		end
	end
end

DefineAi("land-attack", "*", "land-attack", AiLandAttack)

