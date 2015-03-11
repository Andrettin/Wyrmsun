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

-- Load the different races
Load("scripts/celt/upgrade.lua")
Load("scripts/dwarf/upgrade.lua")
Load("scripts/germanic/upgrade.lua")
Load("scripts/gnome/upgrade.lua")
Load("scripts/goblin/upgrade.lua")
Load("scripts/teuton/upgrade.lua")

function DefineAllowNormalUnits(flags)
	-- Allow units for human players only if they have been acquired
	if ((flags == "AAAAAAAAAAAAAAAA" or flags == "RRRRRRRRRRRRRRRR") and (not IsNetworkGame())) then
		for i, unitName in ipairs(Units) do
			local PlayerUnitFlag = {}
			local PlayerHeroUnitMax = {}
			for j=0,15 do
				if (string.find(unitName, "upgrade-") == nil) then
					if (GetPlayerData(j, "AiEnabled") == false and GetArrayIncludes(wyr.preferences.TechnologyAcquired, unitName) == false and GetUnitTypeData(unitName, "TechnologyPointCost") > 0) then
						PlayerUnitFlag[j] = "F"
					else
						PlayerUnitFlag[j] = "A"
					end
				else
					if (GetPlayerData(j, "AiEnabled") == false and GetArrayIncludes(wyr.preferences.TechnologyAcquired, unitName) == false and CUpgrade:Get(unitName).TechnologyPointCost > 0) then
						PlayerUnitFlag[j] = "F"
					elseif (flags == "RRRRRRRRRRRRRRRR") then
						PlayerUnitFlag[j] = "R"
					else
						PlayerUnitFlag[j] = "A"
					end
				end
				if (IsHero(unitName)) then
					PlayerHeroUnitMax[j] = 1
				end
			end
			flags = PlayerUnitFlag[0] .. PlayerUnitFlag[1] .. PlayerUnitFlag[2] .. PlayerUnitFlag[3] .. PlayerUnitFlag[4] .. PlayerUnitFlag[5] .. PlayerUnitFlag[6] .. PlayerUnitFlag[7] .. PlayerUnitFlag[8] .. PlayerUnitFlag[9] .. PlayerUnitFlag[10] .. PlayerUnitFlag[11] .. PlayerUnitFlag[12] .. PlayerUnitFlag[13] .. PlayerUnitFlag[14] .. PlayerUnitFlag[15]
			DefineAllow(unitName, flags)
			if (string.find(unitName, "upgrade-") == nil) then
				if (IsHero(unitName)) then
					DefineUnitAllow(unitName, PlayerHeroUnitMax[0], PlayerHeroUnitMax[1], PlayerHeroUnitMax[2], PlayerHeroUnitMax[3], PlayerHeroUnitMax[4], PlayerHeroUnitMax[5], PlayerHeroUnitMax[6], PlayerHeroUnitMax[7], PlayerHeroUnitMax[8], PlayerHeroUnitMax[9], PlayerHeroUnitMax[10], PlayerHeroUnitMax[11], PlayerHeroUnitMax[12], PlayerHeroUnitMax[13], PlayerHeroUnitMax[14], PlayerHeroUnitMax[15])
				end
				if (GetUnitTypeData(unitName, "Class") == "thief") then
					DefineUnitAllow(unitName, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6)
				end
			end
		end
	else
		for i, unitName in ipairs(Units) do
			if (flags == "RRRRRRRRRRRRRRRR" and string.find(unitName, "upgrade-") == nil) then
				DefineAllow(unitName, "AAAAAAAAAAAAAAAA")
			else
				DefineAllow(unitName, flags)
			end
			if (IsHero(unitName)) then
				if (flags == "AAAAAAAAAAAAAAAA" or flags == "RRRRRRRRRRRRRRRR") then
					DefineUnitAllow(unitName, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
				else
					DefineUnitAllow(unitName, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
				end
			end
		end
	end
end

InitFuncs:add(function()
	DefineAllowNormalUnits("FFFFFFFFFFFFFFFF")
end)

function ApplyTechLevels()
	for j=0,15 do
		if (TechLevel[j + 1] == "" and j ~= GetThisPlayer()) then
			TechLevel[j + 1] = TechLevel[GetThisPlayer() + 1]
		end
		if (MaxTechLevel[j + 1] == "" and j ~= GetThisPlayer()) then
			MaxTechLevel[j + 1] = MaxTechLevel[GetThisPlayer() + 1]
		end
	end

	local agrarian_upgrades = {
		"upgrade-dwarven-masonry",
		"upgrade-teuton-masonry",
		"upgrade-goblin-masonry"
	}
	local bronze_upgrades = {
		"upgrade-dwarven-broad-axe", "upgrade-dwarven-shield-1", "upgrade-dwarven-throwing-axe-1",
		"upgrade-germanic-broad-sword", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow"
	}
	local iron_upgrades = {
		"upgrade-dwarven-great-axe", "upgrade-dwarven-shield-2", "upgrade-dwarven-throwing-axe-2", "upgrade-dwarven-ballista-bolt-1", "upgrade-dwarven-ballista-bolt-2",
		"upgrade-teuton-spatha"
	}
	local iron_civilizations = {
		"upgrade-teuton-civilization"
	}
	
	local function IsTechnologyUnderMinimumTechLevel(technology, player)
		if (GetArrayIncludes(bronze_upgrades, technology) and (TechLevel[player + 1] == "Agrarian (Iron)" or TechLevel[player + 1] == "Civilized (Iron)")) then -- if tech level is at least Agrarian (Iron), bronze technologies should begin researched
			return true
		elseif (GetArrayIncludes(agrarian_upgrades, technology) and (TechLevel[player + 1] == "Civilized (Bronze)" or TechLevel[player + 1] == "Civilized (Iron)")) then
			return true
		else
			return false
		end
	end
	
	local function IsTechnologyOverMaxTechLevel(technology, player)
		if ((GetArrayIncludes(iron_upgrades, technology) or GetArrayIncludes(iron_civilizations, technology)) and (MaxTechLevel[player + 1] == "Agrarian (Bronze)" or MaxTechLevel[player + 1] == "Civilized (Bronze)")) then -- if max tech level is bronze or lower, iron technologies should not be researchable
			return true
		else
			return false
		end
	end
	
	for i, unitName in ipairs(Units) do
		if (string.find(unitName, "upgrade-") ~= nil) then
			for j=0,15 do
				if (IsTechnologyUnderMinimumTechLevel(unitName, j) and GetPlayerData(j, "Allow", unitName) == "A") then -- if tech level is at least Agrarian (Iron)
					SetPlayerData(j, "Allow", unitName, "R")
				end
			end
			
			local PlayerUnitFlag = {}
			for j=0,15 do
				if (MaxTechLevel[j + 1] ~= "" and IsTechnologyOverMaxTechLevel(unitName, j) and GetPlayerData(j, "Allow", unitName) == "A") then
					PlayerUnitFlag[j + 1] = "F"
				else
					PlayerUnitFlag[j + 1] = GetPlayerData(j, "Allow", unitName)
				end
			end
			DefineAllow(unitName, PlayerUnitFlag[1] .. PlayerUnitFlag[2] .. PlayerUnitFlag[3] .. PlayerUnitFlag[4] .. PlayerUnitFlag[5] .. PlayerUnitFlag[6] .. PlayerUnitFlag[7] .. PlayerUnitFlag[8] .. PlayerUnitFlag[9] .. PlayerUnitFlag[10] .. PlayerUnitFlag[11] .. PlayerUnitFlag[12] .. PlayerUnitFlag[13] .. PlayerUnitFlag[14] .. PlayerUnitFlag[15] .. PlayerUnitFlag[16])
		end
	end
	for j=0,15 do
		if (GetPlayerData(j, "RaceName") == "teuton") then
			SetPlayerData(j, "Allow", "upgrade-teuton-civilization", "R") -- ad hoc way of setting civilization upgrades (wouldn't be necessary if they had their own workers and etc.)
		elseif (GetPlayerData(j, "RaceName") == "celt") then
			SetPlayerData(j, "Allow", "upgrade-celt-civilization", "R")
		end
	end
end

-- neutral upgrades
local upgrades = {
	{"upgrade-axe-mastery", _("Axe Mastery"), "icon-axe-mastery"},
	{"upgrade-critical-strike", _("Critical Strike"), "icon-critical-strike"},
	{"upgrade-portent", _("Portent"), "icon-portent"},
	{"upgrade-sword-mastery", _("Sword Mastery"), "icon-sword-mastery"}
}

for i = 1,table.getn(upgrades) do
	u = CUpgrade:New(upgrades[i][1])
	u.Name = upgrades[i][2]
	u.Icon = Icons[upgrades[i][3]]
	u.Class = ""
	u.Description = ""
	u.Quote = ""
	u.Background = ""
	for j = 1,7 do
		u.Costs[j - 1] = 0
	end
	u.TechnologyPointCost = 0
	u.Ability = true
	DefineAllow(upgrades[i][1], "AAAAAAAAAAAAAAAA")
end

DefineModifier("upgrade-axe-mastery",
	{"PiercingDamage", 2}
)

DefineModifier("upgrade-critical-strike",
	{"CriticalStrikeChance", 15}
)

DefineModifier("upgrade-sword-mastery",
	{"PiercingDamage", 2}
)

-- traits
local traits = {
	{"upgrade-clumsy", _("Clumsy")},
	{"upgrade-dextrous", _("Dextrous")},
	{"upgrade-keen", _("Keen")},
	{"upgrade-limping", _("Limping")},
	{"upgrade-mighty", _("Mighty")},
	{"upgrade-near-sighted", _("Near-Sighted")},
	{"upgrade-old", _("Old")},
	{"upgrade-quick", _("Quick")},
	{"upgrade-reckless", _("Reckless")},
	{"upgrade-resilient", _("Resilient")},
	{"upgrade-slow", _("Slow")},
	{"upgrade-strong", _("Strong")},
	{"upgrade-vicious", _("Vicious")},
	{"upgrade-weak", _("Weak")}
}

for i = 1,table.getn(traits) do
	u = CUpgrade:New(traits[i][1])
	u.Name = traits[i][2]
	u.Icon = Icons["icon-level-up"]
	u.Class = ""
	u.Description = ""
	u.Quote = ""
	u.Background = ""
	for j = 1,7 do
		u.Costs[j - 1] = 0
	end
	u.TechnologyPointCost = 0
	u.Ability = true
	DefineAllow(traits[i][1], "AAAAAAAAAAAAAAAA")
end

DefineModifier("upgrade-clumsy",
	{"Accuracy", -1},
	{"Evasion", -1}
)

DefineModifier("upgrade-dextrous",
	{"Accuracy", 1},
	{"Evasion", 1}
)

DefineModifier("upgrade-keen",
	{"Accuracy", 1},
	{"SightRange", 1}
)

DefineModifier("upgrade-limping",
	{"Speed", -2}
)

DefineModifier("upgrade-mighty",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-near-sighted",
	{"Accuracy", -1},
	{"SightRange", -1}
)

DefineModifier("upgrade-old",
	{"SightRange", -1},
	{"Speed", -1}
)

DefineModifier("upgrade-quick",
	{"Speed", 1}
)

DefineModifier("upgrade-reckless",
	{"Evasion", -1}
)

DefineModifier("upgrade-resilient",
	{"HitPoints", 5}
)

DefineModifier("upgrade-slow",
	{"Speed", -1}
)

DefineModifier("upgrade-strong",
	{"BasicDamage", 1}
)

DefineModifier("upgrade-vicious",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-weak",
	{"PiercingDamage", -1}
)

-- miscellaneous individual upgrades
local misc_individual_upgrades = {
	{"upgrade-child", _("Child")},
	{"upgrade-bee-child", _("Bee Child")},
	{"upgrade-gryphon-child", _("Gryphon Child")},
	{"upgrade-wyrm-child", _("Wyrm Child")}
}

for i = 1,table.getn(misc_individual_upgrades) do
	u = CUpgrade:New(misc_individual_upgrades[i][1])
	u.Name = misc_individual_upgrades[i][2]
	u.Icon = Icons["icon-level-up"]
	u.Class = ""
	u.Description = ""
	u.Quote = ""
	u.Background = ""
	for j = 1,7 do
		u.Costs[j - 1] = 0
	end
	u.TechnologyPointCost = 0
	u.Ability = true
	DefineAllow(misc_individual_upgrades[i][1], "AAAAAAAAAAAAAAAA")
end

DefineModifier("upgrade-child",
	{"BasicDamage", -1},
	{"PiercingDamage", -1}
)

DefineModifier("upgrade-bee-child",
	{"BasicDamage", -1}
)

DefineModifier("upgrade-gryphon-child",
	{"BasicDamage", -6},
	{"PiercingDamage", -2}
)

DefineModifier("upgrade-wyrm-child",
	{"BasicDamage", -16},
	{"PiercingDamage", -8}
)
