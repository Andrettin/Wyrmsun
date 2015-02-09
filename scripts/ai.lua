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

--;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
--  * Civilization Germanic.
--;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

DefineAiHelper(
	--
	-- Equivalence of units for the resource manager.
	--
	{"unit-equiv", "unit-germanic-carpenters-shop",
	"unit-teuton-lumber-mill"}
)

--
--  City-center of the current civilization.
--
function AiCityCenter()
	if (GetCivilizationClassUnitType("town-hall", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("town-hall", AiGetRace())
	else
		return GetCivilizationClassUnitType("town-hall", "dwarf")
	end
end

--
--  Worker of the current civilization.
--
function AiWorker()
	if (GetCivilizationClassUnitType("worker", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("worker", AiGetRace())
	else
		return GetCivilizationClassUnitType("worker", "dwarf")
	end
end

--
--  Farm of the current civilization.
--
function AiFarm()
	if (GetCivilizationClassUnitType("farm", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("farm", AiGetRace())
	else
		return GetCivilizationClassUnitType("farm", "dwarf")
	end
end

--
--  Barracks of the current civilization.
--
function AiBarracks()
	if (GetCivilizationClassUnitType("barracks", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("barracks", AiGetRace())
	else
		return GetCivilizationClassUnitType("barracks", "dwarf")
	end
end

--
--  Lumber mill of the current civilization.
--
function AiLumberMill()
	if (GetCivilizationClassUnitType("lumber-mill", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("lumber-mill", AiGetRace())
	else
		return GetCivilizationClassUnitType("lumber-mill", "dwarf")
	end
end

--
--  Masonry upgrade of the current civilization.
--
function AiUpgradeMasonry()
	if (GetCivilizationClassUnitType("masonry", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("masonry", AiGetRace())
	else
		return GetCivilizationClassUnitType("masonry", "dwarf")
	end
end

--
--  Smithy of the current civilization.
--
function AiSmithy()
	if (GetCivilizationClassUnitType("smithy", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("smithy", AiGetRace())
	else
		return GetCivilizationClassUnitType("smithy", "dwarf")
	end
end

--
--  Soldier of the current civilization.
--
function AiSoldier()
	if (GetCivilizationClassUnitType("infantry", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("infantry", AiGetRace())
	else
		return GetCivilizationClassUnitType("infantry", "dwarf")
	end
end

--
--  Veteran soldier of the current civilization.
--
function AiVeteranSoldier()
	if (GetCivilizationClassUnitType("veteran-infantry", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("veteran-infantry", AiGetRace())
	else
		return GetCivilizationClassUnitType("veteran-infantry", "dwarf")
	end
end

--
--  Heroic soldier of the current civilization.
--
function AiHeroicSoldier()
	if (GetCivilizationClassUnitType("heroic-infantry", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("heroic-infantry", AiGetRace())
	else
		return GetCivilizationClassUnitType("heroic-infantry", "dwarf")
	end
end

--
--  Shooter of the current civilization.
--
function AiShooter()
	if (GetCivilizationClassUnitType("archer", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("archer", AiGetRace())
	else
		return GetCivilizationClassUnitType("archer", "dwarf")
	end
end

--
--  Veteran shooter of the current civilization.
--
function AiVeteranShooter() -- no veteran shooter in the game yet, return normal shooter unit instead
	return AiShooter()
end

--
--  Cavalry of the current civilization.
--
function AiCavalry() -- no cavalry in the game yet, return appropriate infantry unit instead
	return AiSoldier()
end

--
--  Veteran cavalry of the current civilization.
--
function AiVeteranCavalry() -- no cavalry in the game yet, return appropriate infantry unit instead
	return AiVeteranSoldier()
end

--
--  Priest of the current civilization.
--
function AiPriest()
	if (GetCivilizationClassUnitType("priest", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("priest", AiGetRace())
	else
		return GetCivilizationClassUnitType("priest", "gnome")
	end
end

--
--  Upgrade melee weapon 1 of the current civilization.
--
function AiUpgradeWeapon1()
	if (GetCivilizationClassUnitType("melee-weapon-1", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("melee-weapon-1", AiGetRace())
	else
		return GetCivilizationClassUnitType("melee-weapon-1", "dwarf")
	end
end

--
--  Upgrade melee weapon 2 of the current civilization.
--
function AiUpgradeWeapon2()
	if (GetCivilizationClassUnitType("melee-weapon-2", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("melee-weapon-2", AiGetRace())
	else
		return GetCivilizationClassUnitType("melee-weapon-2", "dwarf")
	end
end

--
--  Upgrade shield 1 of the current civilization.
--
function AiUpgradeShield1()
	if (GetCivilizationClassUnitType("bronze-shield", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("bronze-shield", AiGetRace())
	else
		return GetCivilizationClassUnitType("bronze-shield", "dwarf")
	end
end

--
--  Upgrade shield 2 of the current civilization.
--
function AiUpgradeShield2()
	if (GetCivilizationClassUnitType("iron-shield", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("iron-shield", AiGetRace())
	else
		return GetCivilizationClassUnitType("iron-shield", "dwarf")
	end
end

--
--  Upgrade missile 1 of the current civilization.
--
function AiUpgradeMissile1()
	if (GetCivilizationClassUnitType("ranged-projectile-1", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("ranged-projectile-1", AiGetRace())
	else
		return GetCivilizationClassUnitType("ranged-projectile-1", "dwarf")
	end
end

--
--  Upgrade missile 2 of the current civilization.
--
function AiUpgradeMissile2()
	if (GetCivilizationClassUnitType("ranged-projectile-2", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("ranged-projectile-2", AiGetRace())
	else
		return GetCivilizationClassUnitType("ranged-projectile-2", "dwarf")
	end
end

--
--  Siege weapon upgrade 1 of the current civilization.
--
function AiUpgradeSiegeProjectile1()
	if (GetCivilizationClassUnitType("siege-projectile-1", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("siege-projectile-1", AiGetRace())
	else
		return GetCivilizationClassUnitType("siege-projectile-1", "dwarf")
	end
end

--
--  Siege weapon upgrade 1 of the current civilization.
--
function AiUpgradeSiegeProjectile2()
	if (GetCivilizationClassUnitType("siege-projectile-2", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("siege-projectile-2", AiGetRace())
	else
		return GetCivilizationClassUnitType("siege-projectile-2", "dwarf")
	end
end

--
--  Siege weapon of the current civilization.
--
function AiSiegeWeapon()
	if (GetCivilizationClassUnitType("siege-engine", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("siege-engine", AiGetRace())
	else
		return GetCivilizationClassUnitType("siege-engine", "dwarf")
	end
end

--
--  Flying rider of the current civilization.
--
function AiFlyingRider()
	if (GetCivilizationClassUnitType("flying-rider", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("flying-rider", AiGetRace())
	else
		return GetCivilizationClassUnitType("flying-rider", "dwarf")
	end
end

--
--  Glider of the current civilization.
--
function AiGlider()
	if (GetCivilizationClassUnitType("glider", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("glider", AiGetRace())
	else
		return GetCivilizationClassUnitType("glider", "goblin")
	end
end

--
--  Watch Tower of the current civilization.
--
function AiWatchTower()
	if (GetCivilizationClassUnitType("watch-tower", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("watch-tower", AiGetRace())
	else
		return GetCivilizationClassUnitType("watch-tower", "dwarf")
	end
end

--
--  Guard Tower of the current civilization.
--
function AiGuardTower()
	if (GetCivilizationClassUnitType("guard-tower", AiGetRace()) ~= nil) then
		return GetCivilizationClassUnitType("guard-tower", AiGetRace())
	else
		return GetCivilizationClassUnitType("guard-tower", "dwarf")
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
Load("scripts/ai/northern_wastelands_goblins.lua")
Load("scripts/ai/grand_strategy_battle.lua")
Load("scripts/ai/ai_redribbon_2014.lua")