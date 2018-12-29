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
--      (c) Copyright 2001-2018 by Lutz Sammer, Jimmy Salmon and Andrettin
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

if (OldDefineUpgrade == nil) then
	OldDefineUpgrade = DefineUpgrade
end

function DefineUpgrade(upgrade_ident, data)
	if (data.Parent ~= nil) then
		OldDefineUpgrade(upgrade_ident, {Parent = data.Parent})
		data.Parent = nil
	end
	
	if (data.Work ~= nil) then
		local preliminary_data = {}
		if (data.Work ~= nil) then
			preliminary_data.Work = data.Work
		end
		OldDefineUpgrade(upgrade_ident, preliminary_data)
		data.Work = nil
	end
	
	OldDefineUpgrade(upgrade_ident, data)
	
	if (CUpgrade:Get(upgrade_ident).Ability) then
		DefineAllow(upgrade_ident, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
	end
end

function DefineAllowNormalUnits(flags)
	for i, unitName in ipairs(Units) do
		local PlayerUnitFlag = {}
		for j=0,(PlayerMax - 1) do
			if (string.find(unitName, "upgrade-") == nil) then
				if (flags == "RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR") then
					PlayerUnitFlag[j] = "A"
				else
					PlayerUnitFlag[j] = string.sub(flags, j + 1, j + 1)
				end
			else
				if (
					flags == "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
					and (
						unitName == GetCivilizationData(GetPlayerData(j, "RaceName"), "CivilizationUpgrade")
						or (GetPlayerData(j, "Faction") ~= "" and unitName == GetFactionData(GetPlayerData(j, "Faction"), "FactionUpgrade"))
						or (GetPlayerData(j, "Faction") ~= "" and unitName == ("upgrade-" .. GetFactionData(GetPlayerData(j, "Faction"), "Type")))
					)
				) then
					PlayerUnitFlag[j] = "R"
				else
					PlayerUnitFlag[j] = string.sub(flags, j + 1, j + 1)
				end
			end
		end
		local allow_string = ""
		for j=0,(PlayerMax - 1) do
			allow_string = allow_string .. PlayerUnitFlag[j]
		end
		DefineAllow(unitName, allow_string)
	end
end

InitFuncs:add(function()
	DefineAllowNormalUnits("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF")
end)

function ApplyTechLevels()
	local default_law_upgrades = {
		"upgrade-free-workers"
	}
	local agrarian_upgrades = {
		"upgrade-masonry"
	}
	local civilized_upgrades = {
		"upgrade-dwarven-runewriting",
		"upgrade-teuton-writing",
		"upgrade-goblin-writing",
		"upgrade-dwarven-coinage", "upgrade-dwarven-alchemy",
		"upgrade-teuton-coinage", "upgrade-teuton-alchemy",
		"upgrade-goblin-coinage", "upgrade-goblin-alchemy",
		"upgrade-mathematics",
		"upgrade-engineering",
		"upgrade-architecture",
		"upgrade-philosophy"
	}
	local bronze_upgrades = {
		"upgrade-wood-plow",
		"upgrade-dwarven-broad-axe", "upgrade-dwarven-long-spear", "upgrade-dwarven-shield-1", "upgrade-dwarven-sharp-throwing-axe",
		"upgrade-germanic-broad-sword", "upgrade-germanic-long-spear", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow",
		"upgrade-goblin-broad-sword", "upgrade-goblin-long-spear", "upgrade-goblin-rimmed-shield", "upgrade-goblin-barbed-arrow",
		"upgrade-sailing"
	}
	local iron_upgrades = {
		"upgrade-ironworking",
		"upgrade-iron-tipped-wood-plow", "upgrade-iron-plow",
		"upgrade-teuton-spatha", "upgrade-teuton-pike", "upgrade-teuton-iron-shield", "upgrade-teuton-bodkin-arrow",
		"upgrade-teuton-catapult-projectile-1", "upgrade-teuton-catapult-projectile-2",
		"upgrade-frank-spatha",
		"upgrade-dwarven-great-axe", "upgrade-dwarven-pike", "upgrade-dwarven-shield-2", "upgrade-dwarven-bearded-throwing-axe",
		"upgrade-dwarven-ballista-bolt-1", "upgrade-dwarven-ballista-bolt-2",
		"upgrade-goblin-long-sword", "upgrade-goblin-pike", "upgrade-goblin-embossed-shield", "upgrade-goblin-bodkin-arrow",
		"upgrade-goblin-catapult-projectile-1", "upgrade-goblin-catapult-projectile-2"
	}
	local gunpowder_upgrades = {
		"upgrade-gunpowder"
	}
	
	local function IsTechnologyUnderMinimumTechLevel(technology, player)
		if (GetArrayIncludes(default_law_upgrades, technology)) then
			return true
		elseif ((GetArrayIncludes(bronze_upgrades, technology) or GetUpgradeData(technology, "Class") == "ironworking") and (GameSettings.TechLevel == AgrarianIronTechLevel or GameSettings.TechLevel == CivilizedIronTechLevel or GameSettings.TechLevel == CivilizedGunpowderTechLevel)) then -- if tech level is at least Agrarian (Iron), bronze technologies should begin researched
			return true
		elseif ((GetArrayIncludes(agrarian_upgrades, technology) or GetUpgradeData(technology, "Class") == "writing") and (GameSettings.TechLevel == CivilizedBronzeTechLevel or GameSettings.TechLevel == CivilizedIronTechLevel or GameSettings.TechLevel == CivilizedGunpowderTechLevel)) then
			return true
		elseif (
			(
				GetArrayIncludes(iron_upgrades, technology)
				or GetUpgradeData(technology, "Class") == "mathematics"
				or GetUpgradeData(technology, "Class") == "philosophy"
				or GetUpgradeData(technology, "Class") == "alchemy"
				or GetUpgradeData(technology, "Class") == "gunpowder"
				or GetUpgradeData(technology, "Class") == "engineering"
			)
			and GameSettings.TechLevel == CivilizedGunpowderTechLevel
		) then
			return true
		else
			return false
		end
	end
	
	local function IsTechnologyOverMaxTechLevel(technology, player)
		if (GetArrayIncludes(iron_upgrades, technology) and (GameSettings.MaxTechLevel == AgrarianBronzeTechLevel or GameSettings.MaxTechLevel == CivilizedBronzeTechLevel)) then -- if max tech level is bronze or lower, iron technologies should not be researchable
			return true
		elseif (GetArrayIncludes(civilized_upgrades, technology) and (GameSettings.MaxTechLevel == AgrarianBronzeTechLevel or GameSettings.MaxTechLevel == AgrarianIronTechLevel)) then
			return true
		elseif (GetArrayIncludes(gunpowder_upgrades, technology) and (GameSettings.MaxTechLevel == AgrarianBronzeTechLevel or GameSettings.MaxTechLevel == CivilizedBronzeTechLevel or GameSettings.MaxTechLevel == AgrarianIronTechLevel or GameSettings.MaxTechLevel == CivilizedIronTechLevel)) then
			return true
		else
			return false
		end
	end
	
	for i, unitName in ipairs(Units) do
		if (string.find(unitName, "upgrade-") ~= nil) then
			for j=0,(PlayerMax - 1) do
				if (IsTechnologyUnderMinimumTechLevel(unitName, j) and GetPlayerData(j, "Allow", unitName) == "A") then -- if tech level is at least Agrarian (Iron)
					SetPlayerData(j, "Allow", unitName, "R")
				end
			end
			
			local PlayerUnitFlag = {}
			for j=0,(PlayerMax - 1) do
				if (GameSettings.MaxTechLevel ~= NoTechLevel and IsTechnologyOverMaxTechLevel(unitName, j) and GetPlayerData(j, "Allow", unitName) == "A") then
					PlayerUnitFlag[j + 1] = "F"
				else
					PlayerUnitFlag[j + 1] = GetPlayerData(j, "Allow", unitName)
				end
			end
			local allow_string = ""
			for j=0,(PlayerMax - 1) do
				allow_string = allow_string .. PlayerUnitFlag[j + 1]
			end
			DefineAllow(unitName, allow_string)
		end
	end
end
