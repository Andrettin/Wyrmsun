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
--      (c) Copyright 2001-2016 by Lutz Sammer, Jimmy Salmon and Andrettin
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
		DefineAllow(upgrade_ident, "AAAAAAAAAAAAAAAA")
	end
end

DefineUpgrade("upgrade-melee-weapon-1", {
	Name = _("Melee Weapon 1"),
	Class = "melee-weapon-1",
	Weapon = true
})

DefineUpgrade("upgrade-broad-sword", {
	Name = _("Broad Sword"),
	Parent = "upgrade-melee-weapon-1",
	Costs = {"time", 200, "gold", 800},
	GrandStrategyCosts = {"time", 200, "gold", 800, "research", 800}
})

DefineUpgrade("upgrade-broad-axe", {
	Name = _("Broad Axe"),
	Parent = "upgrade-melee-weapon-1",
	Costs = {"time", 200, "gold", 500, "lumber", 300},
	GrandStrategyCosts = {"time", 200, "gold", 500, "lumber", 300, "research", 800}
})

DefineUpgrade("upgrade-melee-weapon-2", {
	Name = _("Melee Weapon 2"),
	Class = "melee-weapon-2",
	Weapon = true
})

DefineUpgrade("upgrade-long-sword", {
	Name = _("Long Sword"),
	Parent = "upgrade-melee-weapon-2",
	Costs = {"time", 250, "gold", 2400},
	GrandStrategyCosts = {"time", 250, "gold", 2400, "research", 2400}
})

DefineUpgrade("upgrade-great-axe", {
	Name = _("Great Axe"),
	Parent = "upgrade-melee-weapon-2",
	Costs = {"time", 250, "gold", 1500, "lumber", 900},
	GrandStrategyCosts = {"time", 250, "gold", 1500, "lumber", 900, "research", 2400}
})

DefineUpgrade("upgrade-long-spear", {
	Name = _("Long Spear"),
	Class = "long-spear",
	Description = _("With the lengthening of spear shafts, soldiers who wield these weapons have greater reach against their enemies."),
	Icon = "icon-long-spear",
	Weapon = true,
	Costs = {"time", 200, "gold", 400, "lumber", 400},
	GrandStrategyCosts = {"time", 200, "gold", 400, "lumber", 400, "research", 800}
})

DefineUpgrade("upgrade-pike", {
	Name = _("Pike"),
	Class = "pike",
	Description = _("Much longer than previous spears, pikes can be deadly when used by disciplined groups of soldiers."),
	Icon = "icon-pike",
	Weapon = true,
	Costs = {"time", 250, "gold", 1200, "lumber", 1200},
	GrandStrategyCosts = {"time", 250, "gold", 1200, "lumber", 1200, "research", 2400}
})

DefineUpgrade("upgrade-bronze-shield", {
	Name = _("Bronze Shield"),
	Class = "bronze-shield",
	Shield = true,
	Costs = {"time", 200, "gold", 300, "lumber", 900},
	GrandStrategyCosts = {"time", 200, "gold", 300, "lumber", 900, "research", 1200}
})

DefineUpgrade("upgrade-iron-shield", {
	Name = _("Iron Shield"),
	Class = "iron-shield",
	Shield = true,
	Costs = {"time", 250, "gold", 900, "lumber", 1500},
	GrandStrategyCosts = {"time", 250, "gold", 900, "lumber", 1500, "research", 2400}
})

DefineUpgrade("upgrade-ranged-projectile-1", {
	Name = _("Ranged Projectile 1"),
	Class = "ranged-projectile-1",
	Costs = {"time", 200, "gold", 300, "lumber", 900},
	GrandStrategyCosts = {"time", 200, "gold", 300, "lumber", 900, "research", 1200}
})

DefineUpgrade("upgrade-ranged-projectile-2", {
	Name = _("Ranged Projectile 2"),
	Class = "ranged-projectile-2",
	Costs = {"time", 250, "gold", 900, "lumber", 1500},
	GrandStrategyCosts = {"time", 250, "gold", 900, "lumber", 1500, "research", 2400}
})

DefineUpgrade("upgrade-wood-plow", {
	Name = _("Wood Plow"),
	Class = "wood-plow",
	Icon = "icon-wood-plow",
	Description = _("While at the dawn of agriculture seeds were simply spread over the soil, the invention of the plow allows farmers to more easily make furrows where seeds would be planted. This made way for the cultivation of heavier soils, and planting over larger areas became a more practical possibility.\n\nEffect: +1 Food supply for farms."),
	Costs = {"time", 200, "gold", 300, "lumber", 900},
	GrandStrategyCosts = {"time", 200, "gold", 300, "lumber", 900, "research", 1200},
	GrandStrategyProductionEfficiencyModifier = {"grain", 100, "mushrooms", 100}
})

DefineUpgrade("upgrade-iron-tipped-wood-plow", {
	Name = _("Iron-Tipped Wood Plow"),
	Class = "iron-tipped-wood-plow",
	Icon = "icon-iron-tipped-wood-plow",
	Description = _("The use of plowshares made of iron greatly increases the plow's strength, allowing it to penetrate more deeply into the soil.\n\nEffect: +1 Food supply for farms."),
	Costs = {"time", 250, "gold", 900, "lumber", 1500},
	GrandStrategyCosts = {"time", 250, "gold", 900, "lumber", 1500, "research", 2400},
	GrandStrategyProductionEfficiencyModifier = {"grain", 100, "mushrooms", 100}
})

DefineUpgrade("upgrade-masonry", {
	Name = _("Masonry"),
	Class = "masonry",
	Icon = "icon-masonry",
	Description = _("Masonry is the craft of building structures from blocks, which are bound together with mortar."),
	Costs = {"time", 250, "gold", 900, "lumber", 1000, "stone", 500},
	GrandStrategyCosts = {"time", 250, "gold", 900, "lumber", 1000, "stone", 500, "research", 2400}
})

DefineUpgrade("upgrade-coinage", {
	Name = _("Coinage"),
	Class = "coinage",
	Description = _("While previously trade was conducted by trading one commodity for another, the introduction of currency provides a more practical means of exchange.\n\nEffect: +10% Gold Processing."),
	Costs = {"time", 250, "gold", 1500},
	GrandStrategyCosts = {"time", 250, "gold", 1500, "research", 1500},
	GrandStrategyProductionEfficiencyModifier = {"gold", 10, "silver", 10, "copper", 10}
})

DefineUpgrade("upgrade-writing", {
	Name = _("Writing"),
	Class = "writing",
	Description = _("The invention of writing makes it possible for ideas and traditions to be more easily spread and preserved.\n\nEffect: +10% Time Efficiency for all buildings, changes faction from tribe to polity."),
	Costs = {"time", 250, "gold", 900, "lumber", 1500},
	GrandStrategyCosts = {"time", 250, "gold", 900, "lumber", 1500, "research", 2400},
	GrandStrategyProductionEfficiencyModifier = {"research", 50, "leadership", 25}
})

DefineUpgrade("upgrade-alchemy", {
	Name = _("Alchemy"),
	Class = "alchemy",
	Icon = "icon-cauldron",
	Description = _("Once writing had been developed, observations on the basic substances that form the world could be noted down and more easily passed on. This led to the appearance of the discipline of alchemy, mixing esoteric, scientific and philosophical postulations about the elements from which the material world is composed."),
	Costs = {"time", 250, "gold", 4000},
	GrandStrategyCosts = {"time", 250, "gold", 4000, "research", 4000}
})

DefineUpgrade("upgrade-printing-press", {
	Name = _("Printing Press"),
	Class = "printing-press",
	Description = _("The invention of the printing press allowed knowledge to be more quickly and more efficiently spread."),
	Icon = "icon-printing-press",
	Costs = {"time", 250, "gold", 2000, "lumber", 2000},
	GrandStrategyCosts = {"time", 250, "gold", 2000, "lumber", 2000, "research", 4000},
	GrandStrategyProductionEfficiencyModifier = {"research", 25}
})

-- Load the different civilizations
Load("scripts/civilizations/celt/upgrade.lua")
Load("scripts/civilizations/dwarf/upgrade.lua")
Load("scripts/civilizations/germanic/upgrade.lua")
Load("scripts/civilizations/gnome/upgrade.lua")
Load("scripts/civilizations/goblin/upgrade.lua")
Load("scripts/civilizations/latin/upgrade.lua")
Load("scripts/civilizations/teuton/upgrade.lua")

function DefineAllowNormalUnits(flags)
	-- Allow units for human players only if they have been acquired
	if ((flags == "AAAAAAAAAAAAAAAA" or flags == "RRRRRRRRRRRRRRRR") and (not IsNetworkGame()) and CurrentQuest ~= "") then
		for i, unitName in ipairs(Units) do
			local PlayerUnitFlag = {}
			local PlayerHeroUnitMax = {}
			for j=0,15 do
				if (string.find(unitName, "upgrade-") == nil) then
					if (
						GetPlayerData(j, "AiEnabled") == false
						and GetUnitTypeData(unitName, "Class") ~= ""
						and GetUnitTypeData(unitName, "Civilization") ~= ""
						and GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType(GetUnitTypeData(unitName, "Class"), GetUnitTypeData(unitName, "Civilization"))) == false
						and GetUnitTypeData(unitName, "TechnologyPointCost") > 0
					) then
						PlayerUnitFlag[j] = "F"
					else
						PlayerUnitFlag[j] = "A"
					end
				else
					if (
						GetPlayerData(j, "AiEnabled") == false
						and CUpgrade:Get(unitName).Class ~= ""
						and CUpgrade:Get(unitName).Civilization ~= ""
						and GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetCivilizationClassUnitType(CUpgrade:Get(unitName).Class, CUpgrade:Get(unitName).Civilization)) == false
						and CUpgrade:Get(unitName).TechnologyPointCost > 0
					) then
						PlayerUnitFlag[j] = "F"
					elseif (flags == "RRRRRRRRRRRRRRRR" or unitName == GetCivilizationData(GetPlayerData(j, "RaceName"), "CivilizationUpgrade")) then
						PlayerUnitFlag[j] = "R"
					else
						PlayerUnitFlag[j] = "A"
					end
				end
			end
			DefineAllow(unitName, PlayerUnitFlag[0] .. PlayerUnitFlag[1] .. PlayerUnitFlag[2] .. PlayerUnitFlag[3] .. PlayerUnitFlag[4] .. PlayerUnitFlag[5] .. PlayerUnitFlag[6] .. PlayerUnitFlag[7] .. PlayerUnitFlag[8] .. PlayerUnitFlag[9] .. PlayerUnitFlag[10] .. PlayerUnitFlag[11] .. PlayerUnitFlag[12] .. PlayerUnitFlag[13] .. PlayerUnitFlag[14] .. PlayerUnitFlag[15])
		end
	else
		for i, unitName in ipairs(Units) do
			local PlayerUnitFlag = {}
			for j=0,15 do
				if (string.find(unitName, "upgrade-") == nil) then
					if (flags == "RRRRRRRRRRRRRRRR") then
						PlayerUnitFlag[j] = "A"
					else
						PlayerUnitFlag[j] = string.sub(flags, j + 1, j + 1)
					end
				else
					if (unitName == GetCivilizationData(GetPlayerData(j, "RaceName"), "CivilizationUpgrade")) then
						PlayerUnitFlag[j] = "R"
					else
						PlayerUnitFlag[j] = string.sub(flags, j + 1, j + 1)
					end
				end
			end
			DefineAllow(unitName, PlayerUnitFlag[0] .. PlayerUnitFlag[1] .. PlayerUnitFlag[2] .. PlayerUnitFlag[3] .. PlayerUnitFlag[4] .. PlayerUnitFlag[5] .. PlayerUnitFlag[6] .. PlayerUnitFlag[7] .. PlayerUnitFlag[8] .. PlayerUnitFlag[9] .. PlayerUnitFlag[10] .. PlayerUnitFlag[11] .. PlayerUnitFlag[12] .. PlayerUnitFlag[13] .. PlayerUnitFlag[14] .. PlayerUnitFlag[15])
		end
	end
end

InitFuncs:add(function()
	DefineAllowNormalUnits("FFFFFFFFFFFFFFFF")
	DefineAllowNormalUnits("AAAAAAAAAAAAAAAA")
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
		"upgrade-dwarven-masonry", "upgrade-dwarven-runewriting",
		"upgrade-teuton-masonry", "upgrade-teuton-writing",
		"upgrade-goblin-masonry"
	}
	local civilized_upgrades = {
		"upgrade-dwarven-coinage", "upgrade-dwarven-alchemy",
		"upgrade-teuton-coinage", "upgrade-teuton-alchemy"
	}
	local bronze_upgrades = {
		"upgrade-dwarven-broad-axe", "upgrade-dwarven-long-spear", "upgrade-dwarven-shield-1", "upgrade-dwarven-sharp-throwing-axe",
		"upgrade-germanic-broad-sword", "upgrade-germanic-long-spear", "upgrade-germanic-bronze-shield", "upgrade-germanic-barbed-arrow",
		"upgrade-goblin-long-spear", 
		"upgrade-dwarven-wood-plow",
		"upgrade-goblin-wood-plow",
		"upgrade-germanic-wood-plow"
	}
	local iron_upgrades = {
		"upgrade-teuton-spatha", "upgrade-teuton-pike", "upgrade-teuton-iron-shield", "upgrade-teuton-bodkin-arrow",
		"upgrade-teuton-catapult-projectile-1", "upgrade-teuton-catapult-projectile-2",
		"upgrade-teuton-iron-tipped-wood-plow",
		"upgrade-frank-spatha",
		"upgrade-dwarven-great-axe", "upgrade-dwarven-pike", "upgrade-dwarven-shield-2", "upgrade-dwarven-bearded-throwing-axe",
		"upgrade-dwarven-ballista-bolt-1", "upgrade-dwarven-ballista-bolt-2",
		"upgrade-dwarven-iron-tipped-wood-plow",
		"upgrade-goblin-pike",
		"upgrade-goblin-catapult-projectile-1", "upgrade-goblin-catapult-projectile-2",
		"upgrade-goblin-iron-tipped-wood-plow"
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
		if (GetArrayIncludes(iron_upgrades, technology) and (MaxTechLevel[player + 1] == "Agrarian (Bronze)" or MaxTechLevel[player + 1] == "Civilized (Bronze)")) then -- if max tech level is bronze or lower, iron technologies should not be researchable
			return true
		elseif (GetArrayIncludes(civilized_upgrades, technology) and (MaxTechLevel[player + 1] == "Agrarian (Bronze)" or MaxTechLevel[player + 1] == "Agrarian (Iron)")) then
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
end

-- Learnable Abilities

DefineUpgrade("upgrade-axe-mastery", {
	Name = _("Axe Mastery"),
	Icon = "icon-axe-mastery",
	Ability = true,
	WeaponClasses = {"axe"}
})

DefineUpgrade("upgrade-critical-strike", {
	Name = _("Critical Strike"),
	Icon = "icon-critical-strike",
	Ability = true
})

DefineUpgrade("upgrade-deadly-precision", {
	Name = _("Deadly Precision"),
	Icon = "icon-deadly-precision",
	RequiredAbilities = {"upgrade-critical-strike"},
	Ability = true
})

DefineUpgrade("upgrade-eagle-eye", {
	Name = _("Eagle Eye"),
	Icon = "icon-eagle-eye",
	Ability = true
})

DefineUpgrade("upgrade-mace-mastery", {
	Name = _("Mace Mastery"),
	Icon = "icon-mace-mastery",
	Ability = true,
	WeaponClasses = {"mace"}
})

DefineUpgrade("upgrade-portent", {
	Name = _("Portent"),
	Icon = "icon-portent",
	Ability = true
})

DefineUpgrade("upgrade-puncture", {
	Name = _("Puncture"),
	Icon = "icon-puncture",
	Ability = true
})

DefineUpgrade("upgrade-spear-mastery", {
	Name = _("spear Mastery"),
	Icon = "icon-spear-mastery",
	Ability = true,
	WeaponClasses = {"spear"}
})

DefineUpgrade("upgrade-stun", {
	Name = _("Stun"),
	Icon = "icon-stun",
	Ability = true
})

DefineUpgrade("upgrade-sword-mastery", {
	Name = _("Sword Mastery"),
	Icon = "icon-sword-mastery",
	Ability = true,
	WeaponClasses = {"sword", "thrusting-sword"}
})

DefineModifier("upgrade-axe-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-critical-strike",
	{"CriticalStrikeChance", 10}
)

DefineModifier("upgrade-deadly-precision",
	{"CriticalStrikeChance", 10}
)

DefineModifier("upgrade-eagle-eye",
	{"Accuracy", 2}
)

DefineModifier("upgrade-mace-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-spear-mastery",
	{"BasicDamage", 2}
)

DefineModifier("upgrade-sword-mastery",
	{"BasicDamage", 2}
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
	for j = 1,7 do
		u.Costs[j - 1] = 0
	end
	u.TechnologyPointCost = 0
	u.Ability = false
	DefineAllow(misc_individual_upgrades[i][1], "AAAAAAAAAAAAAAAA")
end

DefineModifier("upgrade-child",
	{"BasicDamage", -2}
)

DefineModifier("upgrade-bee-child",
	{"BasicDamage", -1}
)

DefineModifier("upgrade-gryphon-child",
	{"BasicDamage", -8}
)

DefineModifier("upgrade-wyrm-child",
	{"BasicDamage", -24}
)

Load("scripts/item_prefixes.lua")
Load("scripts/item_suffixes.lua")
Load("scripts/item_suffixes_runic.lua")
Load("scripts/province_modifiers.lua")
Load("scripts/traits.lua")
Load("scripts/works.lua")
