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
--      upgrade.ccl - Define the dwarven dependencies and upgrades.
--
--      (c) Copyright 2013-2014 by Andre Novellino Gouvêa
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

local upgrades = {
	{"upgrade-dwarven-broad-axe", "Broad Axe", "icon-dwarven-axe-2", "melee-weapon-1",
		"Dwarven smiths work hard at their craft to improve soldiers' weapons, and with the perfecting of smithing techniques the broadening of axe blades becomes possible.\n\nEffect: +2 Damage for Axefighters, Steelclads and Thanes.",
		"",
		{   200,   500,   100,     0,     0,     0,     0}},
	{"upgrade-dwarven-great-axe", "Great Axe", "icon-dwarven-axe-3", "melee-weapon-2",
		"Further innovations in dwarven smithing allow axes to be made sturdier, and often to carry double blades.\n\nEffect: +2 Damage for Axefighters, Steelclads and Thanes.",
		"",
		{   250,  1500,   300,     0,     0,     0,     0}},
	{"upgrade-dwarven-shield-1", "Heater Shield", "icon-dwarven-shield-2", "bronze-shield",
		"Earlier shields provided little more than a minimal degree of protection. With the development of heater shields, dwarven soldiers have a greater chance of survival in battle.\n\nEffect: +2 Armor for Axefighters, Steelclads and Thanes.",
		"",
		{   200,   300,   300,     0,     0,     0,     0}},
	{"upgrade-dwarven-shield-2", "Thrymgjol Shield", "icon-dwarven-shield-3", "iron-shield",
		"As shield-making techniques improved, the creation of thrymgjol shields became possible, further enhancing the degree of protection available for the dwarven soldiery. These shields receive their name from the impregnable gate crafted by the sons of the dwarf Solblindi, due to the mighty protection they give their users.\n\nEffect: +2 Armor for Axefighters, Steelclads and Thanes.",
		"The Thrymgjol gate and its makers, the sons of the dwarf Solblindi, are mentioned in the ~<Svipdagsmol~> of Norse mythology.",
		{   250,   900,   500,     0,     0,     0,     0}},
	{"upgrade-dwarven-throwing-axe-1", "Sharp Throwing Axe", "icon-dwarven-throwing-axe-2", "ranged-projectiles-1",
		"As their craftsmanship progresses, dwarven artisans become capable of improving the basic throwing axe to have sharper blades.\n\nEffect: +1 Damage for Scouts and Gryphon Riders.",
		"",
		{   200,   300,   300,     0,     0,     0,     0}},
	{"upgrade-dwarven-throwing-axe-2", "Bearded Throwing Axe", "icon-dwarven-throwing-axe-3", "ranged-projectiles-2",
		"The 'bearding' of throwing axes by extending the bottom of their blades is an innovation which makes them more deadly when thrown.\n\nEffect: +1 Damage for Scouts and Gryphon Riders.",
		"",
		{   250,   900,   500,     0,     0,     0,     0}},
	{"upgrade-dwarven-ballista-bolt-1", "Broadhead Ballista Bolt", "icon-dwarven-ballista-bolt-2", "siege-projectiles-1",
		"While the earliest dwarven ballista bolts had been little more than tree trunks cut to have more penetrating effect, these bolts exhibit a broad metal head capable of slicing enemy foes and structures alike.\n\nEffect: +15 Damage for Ballistas.",
		"",
		{   250,  1500,     0,     0,     0,     0,     0}},
	{"upgrade-dwarven-ballista-bolt-2", "Penetrating Ballista Bolt", "icon-dwarven-ballista-bolt-3", "siege-projectiles-2",
		"Although the slicing power of broadhead ballista bolts was a great improvement over previous bolts, it was still far from ideal. Th penetrating ballista bolts instead do not slice their targets, but concentrate their might on a single point, maximizing puncturing power and thus their capability to breach enemy walls.\n\nEffect: +15 Damage for Ballistas.",
		"",
		{   250,  4000,     0,     0,     0,     0,     0}},
}

for i = 1,table.getn(upgrades) do
	u = CUpgrade:New(upgrades[i][1])
	u.Name = upgrades[i][2]
	u.Icon = Icons[upgrades[i][3]]
	u.Class = upgrades[i][4]
	u.Civilization = "dwarf"
	u.Description = upgrades[i][5]
	u.Background = upgrades[i][6]
	for j = 1,table.getn(upgrades[i][7]) do
		u.Costs[j - 1] = upgrades[i][7][j]
	end
end

DefineModifier("upgrade-dwarven-broad-axe",
	{"PiercingDamage", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-rugnur-thane"}, {"apply-to", "unit-hero-baglur"}, {"apply-to", "unit-hero-baglur-thane"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-great-axe",
	{"PiercingDamage", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-rugnur-thane"}, {"apply-to", "unit-hero-baglur"}, {"apply-to", "unit-hero-baglur-thane"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-shield-1",
	{"Armor", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-rugnur-thane"}, {"apply-to", "unit-hero-baglur"}, {"apply-to", "unit-hero-baglur-thane"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-shield-2",
	{"Armor", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-rugnur-thane"}, {"apply-to", "unit-hero-baglur"}, {"apply-to", "unit-hero-baglur-thane"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-throwing-axe-1",
	{"PiercingDamage", 1},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-gryphon-rider"})

DefineModifier("upgrade-dwarven-throwing-axe-2",
	{"PiercingDamage", 1},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-gryphon-rider"})

DefineModifier("upgrade-dwarven-ballista-bolt-1",
	{"PiercingDamage", 15},
	{"apply-to", "unit-dwarven-ballista"})

DefineModifier("upgrade-dwarven-ballista-bolt-2",
	{"PiercingDamage", 15},
	{"apply-to", "unit-dwarven-ballista"})

DefineDependency("unit-dwarven-scout",
	{"unit-dwarven-lumber-mill"})

DefineDependency("upgrade-dwarven-great-axe",
	{"upgrade-dwarven-broad-axe"})

DefineDependency("upgrade-dwarven-shield-2",
	{"upgrade-dwarven-shield-1"})

DefineDependency("upgrade-dwarven-throwing-axe-2",
	{"upgrade-dwarven-throwing-axe-1"})

DefineDependency("upgrade-dwarven-ballista-bolt-1",
	{"unit-dwarven-lumber-mill"})

DefineDependency("upgrade-dwarven-ballista-bolt-2",
	{"upgrade-dwarven-ballista-bolt-1", "unit-dwarven-lumber-mill"})

DefineDependency("unit-dwarven-guard-tower",
	{"unit-dwarven-lumber-mill"})

DefineDependency("unit-dwarven-ballista",
	{"unit-dwarven-smith", "unit-dwarven-lumber-mill"})

--DefineDependency("unit-dwarven-steelclad",
--	{"unit-dwarven-smith"})

--DefineDependency("unit-hero-rugnur-steelclad",
--	{"unit-dwarven-smith"})




GrandStrategyTechnologies["DwarvenBroadAxe"] = {
	Name = "Broad Axe",
	UpgradeType = "upgrade-dwarven-broad-axe",
	Icon = "dwarf/icons/axe_2.png",
	Civilization = "dwarf",
	Type = "Melee Weapon Upgrade I",
	Costs = {
		Gold = 500,
		Lumber = 100
	},
	X = 0,
	Y = -2,
	RequiredBuildings = { "DwarvenSmith" },
	InterfaceState = "Smith"
}

GrandStrategyTechnologies["DwarvenGreatAxe"] = {
	Name = "Great Axe",
	UpgradeType = "upgrade-dwarven-great-axe",
	Icon = "dwarf/icons/axe_3.png",
	Civilization = "dwarf",
	Type = "Melee Weapon Upgrade II",
	Costs = {
		Gold = 1500,
		Lumber = 300
	},
	X = 0,
	Y = -2,
	RequiredBuildings = { "DwarvenSmith" },
	RequiredTechnologies = { "DwarvenBroadAxe" },
	InterfaceState = "Smith"
}

GrandStrategyTechnologies["DwarvenHeaterShield"] = {
	Name = "Heater Shield",
	UpgradeType = "upgrade-dwarven-shield-1",
	Icon = "dwarf/icons/shield_2.png",
	Civilization = "dwarf",
	Type = "Shield Upgrade I",
	Costs = {
		Gold = 300,
		Lumber = 300
	},
	X = 1,
	Y = -2,
	RequiredBuildings = { "DwarvenSmith" },
	InterfaceState = "Smith"
}

GrandStrategyTechnologies["DwarvenThrymgjolShield"] = {
	Name = "Thrymgjol Shield",
	UpgradeType = "upgrade-dwarven-shield-2",
	Icon = "dwarf/icons/shield_3.png",
	Civilization = "dwarf",
	Type = "Shield Upgrade II",
	Costs = {
		Gold = 900,
		Lumber = 500
	},
	X = 1,
	Y = -2,
	RequiredBuildings = { "DwarvenSmith" },
	RequiredTechnologies = { "DwarvenHeaterShield" },
	InterfaceState = "Smith"
}

GrandStrategyTechnologies["DwarvenSharpThrowingAxe"] = {
	Name = "Sharp Throwing Axe",
	UpgradeType = "upgrade-dwarven-throwing-axe-1",
	Icon = "dwarf/icons/throwing_axe_2.png",
	Civilization = "dwarf",
	Type = "Ranged Projectiles Upgrade I",
	Costs = {
		Gold = 300,
		Lumber = 300
	},
	X = 0,
	Y = -2,
	RequiredBuildings = { "DwarvenLumberMill" },
	InterfaceState = "Lumber Mill"
}

GrandStrategyTechnologies["DwarvenBeardedThrowingAxe"] = {
	Name = "Bearded Throwing Axe",
	UpgradeType = "upgrade-dwarven-throwing-axe-2",
	Icon = "dwarf/icons/throwing_axe_3.png",
	Civilization = "dwarf",
	Type = "Ranged Projectiles Upgrade II",
	Costs = {
		Gold = 900,
		Lumber = 500
	},
	X = 0,
	Y = -2,
	RequiredBuildings = { "DwarvenLumberMill" },
	RequiredTechnologies = { "DwarvenSharpThrowingAxe" },
	InterfaceState = "Lumber Mill"
}

GrandStrategyTechnologies["DwarvenBroadheadBallistaBolt"] = {
	Name = "Broadhead Ballista Bolt",
	UpgradeType = "upgrade-dwarven-ballista-bolt-1",
	Icon = "dwarf/icons/ballista_bolt_2.png",
	Civilization = "dwarf",
	Type = "Siege Projectiles Upgrade I",
	Costs = {
		Gold = 1500
	},
	X = 2,
	Y = -2,
	RequiredBuildings = { "DwarvenSmith", "DwarvenLumberMill" },
	InterfaceState = "Smith"
}

GrandStrategyTechnologies["DwarvenPenetratingBallistaBolt"] = {
	Name = "Penetrating Ballista Bolt",
	UpgradeType = "upgrade-dwarven-ballista-bolt-2",
	Icon = "dwarf/icons/ballista_bolt_3.png",
	Civilization = "dwarf",
	Type = "Siege Projectiles Upgrade II",
	Costs = {
		Gold = 4000
	},
	X = 2,
	Y = -2,
	RequiredBuildings = { "DwarvenSmith", "DwarvenLumberMill" },
	RequiredTechnologies = { "DwarvenBroadheadBallistaBolt" },
	InterfaceState = "Smith"
}
