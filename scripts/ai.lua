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
--      ai.lua - Define the AI.
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

--(define (ai:sleep) () #t)

--=============================================================================
--
--  AI helper table, the AI must know where to build units,
--  where to research spells, where to upgrade units.
--  If this is allowed and which dependencies exists, isn't
--  handled here. (see upgrade.lua)
--
--  NOTE: perhaps this could later be used to build the buttons?
--
--  DefineAiHelper(list)
--

DefineAiHelper(
	--
	-- Equivalence of units for the resource manager.
	--
	{"unit-equiv", "unit-latin-town-hall",
	"unit-teuton-stronghold"},
	{"unit-equiv", "unit-teuton-town-hall",
	"unit-teuton-stronghold"},
	{"unit-equiv", "unit-dwarven-town-hall",
	"unit-dwarven-stronghold"},
	{"unit-equiv", "unit-goblin-town-hall",
	"unit-goblin-stronghold"}
)

--
--  Get unit type of this class for the current AI's civilization
--
function GetAiUnitType(unit_class)
	if (GetPlayerData(AiPlayer(), "Faction") ~= "") then
		return GetFactionClassUnitType(unit_class, AiGetRace(), GetPlayerData(AiPlayer(), "Faction"))
	else
		return GetCivilizationClassUnitType(unit_class, AiGetRace())
	end
end

--
--  Some functions used by Ai
--

function AiDifficultyForce(num, units, reset_force)
	if (reset_force == nil) then
		reset_force = false
	end
	if (GameSettings.Difficulty == -1) then
		return AiForce(num, units, reset_force)
	end
	if (num == 0) then
		return
	end
	local transporter = false
	for i = 1, table.getn(units)/2 do
		if units[i*2 - 1] == GetAiUnitType("transport-ship") then
			transporter = true
			break
		end
	end
	local add
	if transporter == true then
		add = math.min(0, GameSettings.Difficulty - 2)
	else
		add = GameSettings.Difficulty - 2
	end

	for i = 1, table.getn(units)/2 do
		units[i*2] = math.max(1, units[i*2] + add)
	end
	return AiForce(num, units, reset_force)
end

function AiDifficultySleep(cycles)
	if (GameSettings.Difficulty == 1) then
		return AiSleep(5 * cycles)
--	elseif (GameSettings.Difficulty == 2) then
--		return AiSleep(math.floor(1.25 * cycles))
	elseif (GameSettings.Difficulty == 2) then
		return AiSleep(math.floor(cycles))
	elseif (GameSettings.Difficulty == 3) then
		return AiSleep(math.floor(cycles / 2))
	elseif (GameSettings.Difficulty == 4) then
		return AiSleep(math.floor(cycles / 3))
	end
	return AiSleep(cycles)
end

-- Create some counters used by ai
local function CreateAiGameData()
	if stratagus == nil then
		stratagus = {}
	end
	if stratagus.gameData == nil then
		stratagus.gameData = {}
	end
	if stratagus.gameData.AIState == nil then
		stratagus.gameData.AIState = {}
		stratagus.gameData.AIState.index = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
		stratagus.gameData.AIState.loop_index = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
	end
end

local function CleanAiGameData()
	if stratagus ~= nil and stratagus.gameData ~= nil then
		stratagus.gameData.AIState = nil
	end
end

function ReInitAiGameData()
	CleanAiGameData()
	CreateAiGameData()
end

function DebugMessage(message)
	message = "Game cycle(" .. GameCycle .. "):".. message
--	AddMessage(message)
	DebugPrint(message .. "\n")
end

function AiCheat(gold, lumber, stone)
	if (gold == nil) then gold = 0 end
	if (lumber == nil) then lumber = 0 end
	if (stone == nil) then stone = 0 end
	SetPlayerData(AiPlayer(), "Resources", "gold", GetPlayerData(AiPlayer(), "Resources", "gold") + gold)
	SetPlayerData(AiPlayer(), "Resources", "lumber", GetPlayerData(AiPlayer(), "Resources", "lumber") + lumber)
	SetPlayerData(AiPlayer(), "Resources", "stone", GetPlayerData(AiPlayer(), "Resources", "stone") + stone)
end

function AiLoop(loop_funcs, indexes)
	local playerIndex = AiPlayer() + 1
	
	-- Some AI cheating for harder levels
	if (GameSettings.Difficulty == 3) then
		AiCheat(50, 35, 25)
	elseif (GameSettings.Difficulty == 4) then
		AiCheat(100, 75, 50)
	end

	while (true) do
		local ret = loop_funcs[indexes[playerIndex]]()
		if (ret) then
			break
		end
		indexes[playerIndex] = indexes[playerIndex] + 1
	end
	return true
end

--
--  Load the actual individual scripts.
--
ReInitAiGameData()
Load("scripts/ai/passive.lua")
Load("scripts/ai/land_attack.lua")
Load("scripts/ai/land_attack_defensive.lua")
Load("scripts/ai/northern_wastelands_goblins.lua")
Load("scripts/ai/grand_strategy_battle.lua")
