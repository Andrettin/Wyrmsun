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

function DefineUpgrade(upgrade_ident, data)
	upgrade = CUpgrade:New(upgrade_ident)
	if (data.Parent ~= nil) then
		upgrade.Name = CUpgrade:Get(data.Parent).Name
		upgrade.Icon = CUpgrade:Get(data.Parent).Icon
		upgrade.Class = CUpgrade:Get(data.Parent).Class
		upgrade.Civilization = CUpgrade:Get(data.Parent).Civilization
		upgrade.Faction = CUpgrade:Get(data.Parent).Faction
		upgrade.Description = CUpgrade:Get(data.Parent).Description
		upgrade.Quote = CUpgrade:Get(data.Parent).Quote
		upgrade.Background = CUpgrade:Get(data.Parent).Background
		for i = 1,MaxCosts do
			upgrade.Costs[i - 1] = CUpgrade:Get(data.Parent).Costs[i - 1]
			upgrade.GrandStrategyCosts[i - 1] = CUpgrade:Get(data.Parent).GrandStrategyCosts[i - 1]
			upgrade.GrandStrategyProductionEfficiencyModifier[i - 1] = CUpgrade:Get(data.Parent).GrandStrategyProductionEfficiencyModifier[i - 1]
		end
		for i = 1,MaxItemClasses do
			upgrade.ItemPrefix[i - 1] = CUpgrade:Get(data.Parent).ItemPrefix[i - 1]
			upgrade.ItemSuffix[i - 1] = CUpgrade:Get(data.Parent).ItemSuffix[i - 1]
		end
		upgrade.TechnologyPointCost = CUpgrade:Get(data.Parent).TechnologyPointCost
		upgrade.Ability = CUpgrade:Get(data.Parent).Ability
		upgrade.Weapon = CUpgrade:Get(data.Parent).Weapon
		upgrade.Shield = CUpgrade:Get(data.Parent).Shield
		upgrade.Boots = CUpgrade:Get(data.Parent).Boots
		upgrade.Arrows = CUpgrade:Get(data.Parent).Arrows
		upgrade.Item = CUpgrade:Get(data.Parent).Item
		upgrade.MagicPrefix = CUpgrade:Get(data.Parent).MagicPrefix
		upgrade.MagicSuffix = CUpgrade:Get(data.Parent).MagicSuffix
		upgrade.RunicAffix = CUpgrade:Get(data.Parent).RunicAffix
		upgrade.Work = CUpgrade:Get(data.Parent).Work
	end
	if (data.Name ~= nil) then
		upgrade.Name = data.Name
	end
	if (data.Icon ~= nil) then
		upgrade.Icon = Icons[data.Icon]
	end
	if (data.Class ~= nil) then
		upgrade.Class = data.Class
	end
	if (data.Civilization ~= nil) then
		upgrade.Civilization = data.Civilization
	end
	if (data.Faction ~= nil) then
		upgrade.Faction = data.Faction
	end
	if (data.Description ~= nil) then
		upgrade.Description = data.Description
	end
	if (data.Quote ~= nil) then
		upgrade.Quote = data.Quote
	end
	if (data.Background ~= nil) then
		upgrade.Background = data.Background
	end
	if (data.Costs ~= nil) then
		for i = 1,table.getn(data.Costs),2 do
			upgrade.Costs[GetResourceIdByName(data.Costs[i])] = data.Costs[i + 1]
		end
	end
	if (data.GrandStrategyCosts ~= nil) then
		for i = 1,table.getn(data.GrandStrategyCosts),2 do
			upgrade.GrandStrategyCosts[GetResourceIdByName(data.GrandStrategyCosts[i])] = data.GrandStrategyCosts[i + 1]
		end
	end
	if (data.GrandStrategyProductionEfficiencyModifier ~= nil) then
		for i = 1,table.getn(data.GrandStrategyProductionEfficiencyModifier),2 do
			upgrade.GrandStrategyProductionEfficiencyModifier[GetResourceIdByName(data.GrandStrategyProductionEfficiencyModifier[i])] = data.GrandStrategyProductionEfficiencyModifier[i + 1]
		end
	end
	if (data.TechnologyPointCost ~= nil) then
		upgrade.TechnologyPointCost = data.TechnologyPointCost
	end
	if (data.Ability ~= nil) then
		upgrade.Ability = data.Ability
	elseif (data.Parent == nil) then
		upgrade.Ability = false
	end
	if (data.Weapon ~= nil) then
		upgrade.Weapon = data.Weapon
	end
	if (data.Shield ~= nil) then
		upgrade.Shield = data.Shield
	end
	if (data.Boots ~= nil) then
		upgrade.Boots = data.Boots
	end
	if (data.Arrows ~= nil) then
		upgrade.Arrows = data.Arrows
	end
	if (data.MagicPrefix ~= nil) then
		upgrade.MagicPrefix = data.MagicPrefix
	end
	if (data.MagicSuffix ~= nil) then
		upgrade.MagicSuffix = data.MagicSuffix
	end
	if (data.RunicAffix ~= nil) then
		upgrade.RunicAffix = data.RunicAffix
	end
	if (data.Work ~= nil) then
		upgrade.Work = GetItemClassIdByName(data.Work)
	end
	if (data.Item ~= nil) then
		SetUpgradeItem(upgrade_ident, data.Item)
	end
	if (data.ItemPrefix ~= nil) then
		for i = 1,table.getn(data.ItemPrefix),2 do
			upgrade.ItemPrefix[GetItemClassIdByName(data.ItemPrefix[i])] = data.ItemPrefix[i + 1]
		end
	end
	if (data.ItemSuffix ~= nil) then
		for i = 1,table.getn(data.ItemSuffix),2 do
			upgrade.ItemSuffix[GetItemClassIdByName(data.ItemSuffix[i])] = data.ItemSuffix[i + 1]
		end
	end
	if (data.IncompatibleAffixes ~= nil) then
		for i = 1,table.getn(data.IncompatibleAffixes) do
			upgrade.IncompatibleAffixes[CUpgrade:Get(data.IncompatibleAffixes[i]).ID] = true
		end
	end
	if (data.RequiredAbilities ~= nil) then
		for i = 1,table.getn(data.RequiredAbilities) do
			AddUpgradeRequiredAbility(upgrade_ident, data.RequiredAbilities[i])
		end
	end
	if (data.WeaponClasses ~= nil) then
		for i = 1,table.getn(data.WeaponClasses) do
			AddUpgradeWeaponClass(upgrade_ident, GetItemClassIdByName(data.WeaponClasses[i]))
		end
	end
	
	if (upgrade.Ability) then
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
	Costs = {"time", 200, "gold", 500, "lumber", 150},
	GrandStrategyCosts = {"time", 200, "gold", 500, "lumber", 150, "research", 800}
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
	Costs = {"time", 250, "gold", 1500, "lumber", 450},
	GrandStrategyCosts = {"time", 250, "gold", 1500, "lumber", 450, "research", 2400}
})

DefineUpgrade("upgrade-long-spear", {
	Name = _("Long Spear"),
	Class = "long-spear",
	Description = _("With the lengthening of spear shafts, soldiers who wield these weapons have greater reach against their enemies."),
	Icon = "icon-long-spear",
	Weapon = true,
	Costs = {"time", 200, "gold", 400, "lumber", 200},
	GrandStrategyCosts = {"time", 200, "gold", 400, "lumber", 200, "research", 800}
})

DefineUpgrade("upgrade-pike", {
	Name = _("Pike"),
	Class = "pike",
	Description = _("Much longer than previous spears, pikes can be deadly when used by disciplined groups of soldiers."),
	Icon = "icon-pike",
	Weapon = true,
	Costs = {"time", 250, "gold", 1200, "lumber", 600},
	GrandStrategyCosts = {"time", 250, "gold", 1200, "lumber", 600, "research", 2400}
})

DefineUpgrade("upgrade-bronze-shield", {
	Name = _("Bronze Shield"),
	Class = "bronze-shield",
	Shield = true,
	Costs = {"time", 200, "gold", 300, "lumber", 450},
	GrandStrategyCosts = {"time", 200, "gold", 300, "lumber", 450, "research", 1200}
})

DefineUpgrade("upgrade-iron-shield", {
	Name = _("Iron Shield"),
	Class = "iron-shield",
	Shield = true,
	Costs = {"time", 250, "gold", 900, "lumber", 750},
	GrandStrategyCosts = {"time", 250, "gold", 900, "lumber", 750, "research", 2400}
})

DefineUpgrade("upgrade-ranged-projectile-1", {
	Name = _("Ranged Projectile 1"),
	Class = "ranged-projectile-1",
	Costs = {"time", 200, "gold", 300, "lumber", 450},
	GrandStrategyCosts = {"time", 200, "gold", 300, "lumber", 450, "research", 1200}
})

DefineUpgrade("upgrade-ranged-projectile-2", {
	Name = _("Ranged Projectile 2"),
	Class = "ranged-projectile-2",
	Costs = {"time", 250, "gold", 900, "lumber", 750},
	GrandStrategyCosts = {"time", 250, "gold", 900, "lumber", 750, "research", 2400}
})

DefineUpgrade("upgrade-wood-plow", {
	Name = _("Wood Plow"),
	Class = "wood-plow",
	Icon = "icon-wood-plow",
	Description = _("While at the dawn of agriculture seeds were simply spread over the soil, the invention of the plow allows farmers to more easily make furrows where seeds would be planted. This made way for the cultivation of heavier soils, and planting over larger areas became a more practical possibility.\n\nEffect: +1 Food supply for farms."),
	Costs = {"time", 200, "gold", 300, "lumber", 450},
	GrandStrategyCosts = {"time", 200, "gold", 300, "lumber", 450, "research", 1200},
	GrandStrategyProductionEfficiencyModifier = {"grain", 100, "mushrooms", 100}
})

DefineUpgrade("upgrade-iron-tipped-wood-plow", {
	Name = _("Iron-Tipped Wood Plow"),
	Class = "iron-tipped-wood-plow",
	Icon = "icon-iron-tipped-wood-plow",
	Description = _("The use of plowshares made of iron greatly increases the plow's strength, allowing it to penetrate more deeply into the soil.\n\nEffect: +1 Food supply for farms."),
	Costs = {"time", 250, "gold", 900, "lumber", 750},
	GrandStrategyCosts = {"time", 250, "gold", 900, "lumber", 750, "research", 2400},
	GrandStrategyProductionEfficiencyModifier = {"grain", 100, "mushrooms", 100}
})

DefineUpgrade("upgrade-masonry", {
	Name = _("Masonry"),
	Class = "masonry",
	Icon = "icon-masonry",
	Description = _("Masonry is the craft of building structures from blocks, which are bound together with mortar."),
	Costs = {"time", 250, "gold", 900, "lumber", 500, "stone", 250},
	GrandStrategyCosts = {"time", 250, "gold", 900, "lumber", 500, "stone", 250, "research", 2400}
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
	Costs = {"time", 250, "gold", 900, "lumber", 750},
	GrandStrategyCosts = {"time", 250, "gold", 900, "lumber", 750, "research", 2400},
	GrandStrategyProductionEfficiencyModifier = {"research", 50}
})

DefineUpgrade("upgrade-alchemy", {
	Name = _("Alchemy"),
	Class = "alchemy",
	Icon = "icon-cauldron",
	Description = _("Once writing had been developed, observations on the basic substances that form the world could be noted down and more easily passed on. This led to the appearance of the discipline of alchemy, mixing esoteric, scientific and philosophical postulations about the elements from which the material world is composed."),
	Costs = {"time", 250, "gold", 4000},
	GrandStrategyCosts = {"time", 250, "gold", 4000, "research", 4000}
})

-- Load the different civilizations
Load("scripts/civilizations/celt/upgrade.lua")
Load("scripts/civilizations/dwarf/upgrade.lua")
Load("scripts/civilizations/germanic/upgrade.lua")
Load("scripts/civilizations/gnome/upgrade.lua")
Load("scripts/civilizations/goblin/upgrade.lua")
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
					elseif (flags == "RRRRRRRRRRRRRRRR") then
						PlayerUnitFlag[j] = "R"
					else
						PlayerUnitFlag[j] = "A"
					end
				end
			end
			flags = PlayerUnitFlag[0] .. PlayerUnitFlag[1] .. PlayerUnitFlag[2] .. PlayerUnitFlag[3] .. PlayerUnitFlag[4] .. PlayerUnitFlag[5] .. PlayerUnitFlag[6] .. PlayerUnitFlag[7] .. PlayerUnitFlag[8] .. PlayerUnitFlag[9] .. PlayerUnitFlag[10] .. PlayerUnitFlag[11] .. PlayerUnitFlag[12] .. PlayerUnitFlag[13] .. PlayerUnitFlag[14] .. PlayerUnitFlag[15]
			DefineAllow(unitName, flags)
		end
	else
		for i, unitName in ipairs(Units) do
			if (flags == "RRRRRRRRRRRRRRRR" and string.find(unitName, "upgrade-") == nil) then
				DefineAllow(unitName, "AAAAAAAAAAAAAAAA")
			else
				DefineAllow(unitName, flags)
			end
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
	for j=0,15 do
		if (GetPlayerData(j, "RaceName") == "teuton") then
			SetPlayerData(j, "Allow", "upgrade-teuton-civilization", "R") -- ad hoc way of setting civilization upgrades
		elseif (GetPlayerData(j, "RaceName") == "celt") then
			SetPlayerData(j, "Allow", "upgrade-celt-civilization", "R")
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

-- traits
local traits = {
	{"upgrade-clumsy", _("Clumsy")},
	{"upgrade-compassionate", _("Compassionate")}, -- no current effect
	{"upgrade-cruel", _("Cruel")},
	{"upgrade-dextrous", _("Dextrous")},
	{"upgrade-generous", _("Generous")}, -- no current effect
	{"upgrade-keen", _("Keen")},
	{"upgrade-limping", _("Limping")},
	{"upgrade-mighty", _("Mighty")},
	{"upgrade-near-sighted", _("Near-Sighted")},
	{"upgrade-old", _("Old")},
	{"upgrade-pious", _("Pious")}, -- no current effect
	{"upgrade-quick", _("Quick")},
	{"upgrade-reckless", _("Reckless")},
	{"upgrade-resilient", _("Resilient")},
	{"upgrade-slow", _("Slow")},
	{"upgrade-strong", _("Strong")},
	{"upgrade-vicious", _("Vicious")},
	{"upgrade-weak", _("Weak")},
	{"upgrade-wise", _("Wise")} -- not available for normal units, because intelligence has no effect in the game yet
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
	u.Ability = false
	DefineAllow(traits[i][1], "AAAAAAAAAAAAAAAA")
end

DefineModifier("upgrade-clumsy",
	{"Accuracy", -1},
	{"Evasion", -1}
)

DefineModifier("upgrade-cruel",
	{"BasicDamage", 1}
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
	{"BasicDamage", -1}
)

DefineModifier("upgrade-wise",
	{"Intelligence", 1}
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
Load("scripts/works.lua")
