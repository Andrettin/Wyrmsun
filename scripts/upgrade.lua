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
--      upgrade.lua - Define the dependencies and upgrades.
--
--      (c) Copyright 2001-2004 by Lutz Sammer and Jimmy Salmon
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

GrandStrategyTechnologies = {}

-- Load the different races
Load("scripts/dwarf/upgrade.lua")
Load("scripts/gnome/upgrade.lua")
Load("scripts/goblin/upgrade.lua")

function DefineAllowNormalUnits(flags)
	-- Allow units for human players only if they have been acquired
	if ((flags == "AAAAAAAAAAAAAAAA" or flags == "RRRRRRRRRRRRRRRR") and (not IsNetworkGame())) then
		for i, unitName in ipairs(Units) do
			local PlayerUnitFlag = {}
			local PlayerHeroUnitMax = {}
			for j=0,15 do
				if ((GetPlayerData(j, "AiEnabled") == false and GetArrayIncludes(wyr.preferences.TechnologyAcquired, unitName) == false) or GetArrayIncludes(GetFactionForbiddenUnits(GetPlayerData(j, "Name")), unitName)) then
					PlayerUnitFlag[j] = "F"
				elseif (flags == "RRRRRRRRRRRRRRRR" and string.find(unitName, "upgrade-") ~= nil) then
					PlayerUnitFlag[j] = "R"
				else
					PlayerUnitFlag[j] = "A"
				end
				if (string.find(unitName, "-hero-") ~= nil) then
					if ((GetPlayerData(j, "AiEnabled") == false and GetArrayIncludes(wyr.preferences.TechnologyAcquired, unitName) == false) or GetArrayIncludes(GetFactionForbiddenUnits(GetPlayerData(j, "Name")), unitName)) then
						PlayerHeroUnitMax[j] = 0
					else
						PlayerHeroUnitMax[j] = 1
					end
				end
			end
			flags = PlayerUnitFlag[0] .. PlayerUnitFlag[1] .. PlayerUnitFlag[2] .. PlayerUnitFlag[3] .. PlayerUnitFlag[4] .. PlayerUnitFlag[5] .. PlayerUnitFlag[6] .. PlayerUnitFlag[7] .. PlayerUnitFlag[8] .. PlayerUnitFlag[9] .. PlayerUnitFlag[10] .. PlayerUnitFlag[11] .. PlayerUnitFlag[12] .. PlayerUnitFlag[13] .. PlayerUnitFlag[14] .. PlayerUnitFlag[15]
			DefineAllow(unitName, flags)
			if (string.find(unitName, "-hero-") ~= nil) then
				DefineUnitAllow(unitName, PlayerHeroUnitMax[0], PlayerHeroUnitMax[1], PlayerHeroUnitMax[2], PlayerHeroUnitMax[3], PlayerHeroUnitMax[4], PlayerHeroUnitMax[5], PlayerHeroUnitMax[6], PlayerHeroUnitMax[7], PlayerHeroUnitMax[8], PlayerHeroUnitMax[9], PlayerHeroUnitMax[10], PlayerHeroUnitMax[11], PlayerHeroUnitMax[12], PlayerHeroUnitMax[13], PlayerHeroUnitMax[14], PlayerHeroUnitMax[15])
			end
		end
	else
		for i, unitName in ipairs(Units) do
			if (flags == "RRRRRRRRRRRRRRRR" and string.find(unitName, "upgrade-") == nil) then
				DefineAllow(unitName, "AAAAAAAAAAAAAAAA")
			else
				DefineAllow(unitName, flags)
			end
			if (string.find(unitName, "-hero-") ~= nil) then
				if (flags == "AAAAAAAAAAAAAAAA" or flags == "RRRRRRRRRRRRRRRR") then
					DefineUnitAllow(unitName, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
				else
					DefineUnitAllow(unitName, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
				end
			end
		end
	end
end

function DefineAllowMercenaryUnits(flags)
	local units = {
		"unit-human-lumber-mill",
		"unit-mercenary-camp",
		"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	}
	for i, unitName in ipairs(units) do
		DefineAllow(unitName, flags)
	end
end

function DefineAllowExtraUnits(flags)
	local units = {
		"unit-glyph",
		"unit-gnomish-caravan",
		"unit-hero-greebo",
		"unit-goblin-banner"
	}
	for i, unitName in ipairs(units) do
		DefineAllow(unitName, flags)
	end
end

function DefineAllowSpecialUnits(flags)
	local units = {
		"unit-critter", "unit-gryphon",
		"unit-gold-mine", "unit-coal-mine", "unit-wood-pile",
		"unit-mushroom", "unit-mushroom-patch", "unit-flowers", "unit-large-flower",
		"unit-fern", "unit-twigs", "unit-log",
		"unit-bones", "unit-wyrm-skeleton",
		"unit-small-rocks",
		"unit-stairs",
		"unit-volcanic-crater",
		"unit-outer-wall-decoration", "unit-inner-wall-decoration", "unit-floor-decoration",
		"unit-gold-coins", "unit-gold-sack", "unit-gold-chest", "unit-gold-and-gems-chest", "unit-barrel", "unit-alchemy-lab",
		"unit-dwarven-dead-body", "unit-gnomish-dead-body", "unit-goblin-dead-body", "unit-kobold-dead-body",
--		"unit-dead-sea-body",
		"unit-destroyed-2x2-place",
		"unit-destroyed-3x3-place", "unit-destroyed-4x4-place"
	}
	for i, unitName in ipairs(units) do
		DefineAllow(unitName, flags)
	end
end

InitFuncs:add(function() DefineAllowSpecialUnits("AAAAAAAAAAAAAAAA") end)

function ApplyTechLevels()
	for i=0,15 do
		if (TechLevel[i + 1] == -1 and i ~= GetThisPlayer()) then
			TechLevel[i + 1] = TechLevel[GetThisPlayer() + 1]
		end
	end

	local bronze_upgrades = {
		"upgrade-dwarven-broad-axe", "upgrade-dwarven-throwing-axe-1",
		"upgrade-dwarven-shield-1"
	}
	for i, unitName in ipairs(bronze_upgrades) do
		for j=0,15 do
			if (TechLevel[j + 1] >= 1 and GetPlayerData(j, "Allow", unitName) == "A") then -- if tech level is at least Agrarian (Iron)
				AcquireUpgrade(j, unitName)
			end
		end
	end
end
