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

--race2 = "orc"
race3 = "dwarf"

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

--;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
--  * Race Dwarf.
--;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DefineAiHelper(
  --
  -- Unit can build which buildings.
  --
  {"build", "unit-dwarven-miner",
  "unit-dwarven-mushroom-farm", "unit-dwarven-barracks", "unit-dwarven-town-hall"
  },
  --
  -- Building can train which units.
  --
  {"train", "unit-dwarven-town-hall", "unit-dwarven-miner"},
  {"train", "unit-dwarven-barracks", "unit-dwarven-axefighter", "unit-gnomish-recruit", "unit-goblin-spearman"},
  --
  -- Unit can repair which units.
  --
  {"repair", "unit-dwarven-miner",
  "unit-dwarven-mushroom-farm", "unit-dwarven-barracks", "unit-dwarven-town-hall"
  },
  --
  -- Reduce unit limits.
  --
  {"unit-limit", "unit-dwarven-mushroom-farm", "food"},
  --
  -- Equivalence of units for the resource manager.
  --
  {"unit-equiv", "unit-dwarven-axefighter",
  "unit-dwarven-steelclad",
  "unit-gnomish-recruit", "unit-goblin-spearman"}
)

--
--  City-center of the current race.
--
function AiCityCenter()
  if (AiGetRace() == race3) then
    return "unit-dwarven-town-hall"
  end
end

--
--  Worker of the current race.
--
function AiWorker()
  if (AiGetRace() == race3) then
    return "unit-dwarven-miner"
  end
end

--
--  Farm of the current race.
--
function AiFarm()
  if (AiGetRace() == race3) then
    return "unit-dwarven-mushroom-farm"
  end
end

--
--  Barracks of the current race.
--
function AiBarracks()
  if (AiGetRace() == race3) then
    return "unit-dwarven-barracks"
  end
end

--
--  Soldier of the current race.
--
function AiSoldier()
  if (AiGetRace() == race3) then
    return "unit-dwarven-axefighter"
  end
end

--
--  Some functions used by Ai
--

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
		stratagus.gameData.AIState.index = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
		stratagus.gameData.AIState.loop_index = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
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

function AiLoop(loop_funcs, indexes)
	local playerIndex = AiPlayer() + 1

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
