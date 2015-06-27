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
--      (c) Copyright 2013-2015 by Andrettin
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
	{
		"upgrade-dwarven-broad-axe", _("Broad Axe"), "icon-dwarven-axe-2", "melee-weapon-1",
		_("Dwarven smiths work hard at their craft to improve soldiers' weapons, and with the perfecting of smithing techniques the broadening of axe blades becomes possible.\n\nEffect: +2 Damage for Axefighters, Steelclads, Stonelords and Yale Riders."),
		"",
		"",
		{   200,   500,   150,     0,     0,     0,     0,     0},
		{   200,   500,   150,     0,     0,     0,     0,   800},
		1
	},
	{
		"upgrade-dwarven-great-axe", _("Great Axe"), "icon-dwarven-axe-3", "melee-weapon-2",
		_("Further innovations in dwarven smithing allow axes to be made sturdier, and often to carry double blades.\n\nEffect: +2 Damage for Axefighters, Steelclads, Stonelords and Yale Riders."),
		"",
		"",
		{   250,  1500,   450,     0,     0,     0,     0,     0},
		{   250,  1500,   450,     0,     0,     0,     0,  2400},
		1
	},
	{
		"upgrade-dwarven-shield-1", _("Heater Shield"), "icon-dwarven-shield-2", "bronze-shield",
		_("Earlier shields provided little more than a minimal degree of protection. With the development of heater shields, dwarven soldiers have a greater chance of survival in battle.\n\nEffect: +2 Armor for Axefighters, Steelclads, Stonelords and Yale Riders."),
		"",
		"",
		{   200,   300,   450,     0,     0,     0,     0,      0},
		{   200,   300,   450,     0,     0,     0,     0,   1200},
		1
	},
	{
		"upgrade-dwarven-shield-2", _("Thrymgjol Shield"), "icon-dwarven-shield-3", "iron-shield",
		_("As shield-making techniques improved, the creation of thrymgjol shields became possible. These shields receive their name from the impregnable gate crafted by the sons of the dwarf Solblindi, due to the mighty protection they give their users.\n\nEffect: +2 Armor for Axefighters, Steelclads, Stonelords and Yale Riders."),
		_("The Warder: \"Thrymgjol they call it; | 'twas made by the three, / The sons of Solblindi; / And fast as a fetter | the farer it holds, / Whoever shall lift the latch.\" - Dwarven Traditional Poetry"),
		_("The Thrymgjol gate and its makers, the sons of the dwarf Solblindi, are mentioned in the ~<Svipdagsmol~> of Norse mythology. The name \"Thrymgjol\" means \"loud-clanging\"."),
		{   250,   900,   750,     0,     0,     0,     0,     0},
		{   250,   900,   750,     0,     0,     0,     0,  2400},
		1
	},
	{
		"upgrade-dwarven-throwing-axe-1", _("Sharp Throwing Axe"), "icon-dwarven-throwing-axe-2", "ranged-projectile-1",
		_("As their craftsmanship progresses, dwarven artisans become capable of improving the basic throwing axe to have sharper blades.\n\nEffect: +1 Damage for Scouts and Gryphon Riders."),
		"",
		"",
		{   200,   300,   450,     0,     0,     0,     0,     0},
		{   200,   300,   450,     0,     0,     0,     0,  1200},
		1
	},
	{
		"upgrade-dwarven-throwing-axe-2", _("Bearded Throwing Axe"), "icon-dwarven-throwing-axe-3", "ranged-projectile-2",
		_("The 'bearding' of throwing axes by extending the bottom of their blades is an innovation which makes them more deadly when thrown.\n\nEffect: +1 Damage for Scouts and Gryphon Riders."),
		"",
		"",
		{   250,   900,   750,     0,     0,     0,     0,     0},
		{   250,   900,   750,     0,     0,     0,     0,  2400},
		1
	},
	{
		"upgrade-dwarven-ballista-bolt-1", _("Broadhead Ballista Bolt"), "icon-dwarven-ballista-bolt-2", "siege-projectile-1",
		_("While the earliest dwarven ballista bolts had been little more than tree trunks cut to have more penetrating effect, these bolts exhibit a broad metal head capable of slicing enemy foes and structures alike.\n\nEffect: +15 Damage for Ballistas."),
		"",
		"",
		{   250,   900,   300,     0,     0,     0,     0,     0},
		{   250,   900,   300,     0,     0,     0,     0,  1500},
		1
	},
	{
		"upgrade-dwarven-ballista-bolt-2", _("Penetrating Ballista Bolt"), "icon-dwarven-ballista-bolt-3", "siege-projectile-2",
		_("Although the slicing power of broadhead ballista bolts was a great improvement over previous bolts, it was still far from ideal. Th penetrating ballista bolts instead do not slice their targets, but concentrate their might on a single point, maximizing puncturing power and thus their capability to breach enemy walls.\n\nEffect: +15 Damage for Ballistas."),
		"",
		"",
		{   250,  2400,   800,     0,     0,     0,     0,     0},
		{   250,  2400,   800,     0,     0,     0,     0,  4000},
		1
	}
}

for i = 1,table.getn(upgrades) do
	u = CUpgrade:New(upgrades[i][1])
	u.Name = upgrades[i][2]
	u.Icon = Icons[upgrades[i][3]]
	u.Class = upgrades[i][4]
	u.Civilization = "dwarf"
	u.Description = upgrades[i][5]
	u.Quote = upgrades[i][6]
	u.Background = upgrades[i][7]
	for j = 1,table.getn(upgrades[i][8]) do
		u.Costs[j - 1] = upgrades[i][8][j]
	end
	for j = 1,table.getn(upgrades[i][9]) do
		u.GrandStrategyCosts[j - 1] = upgrades[i][9][j]
	end
	u.TechnologyPointCost = upgrades[i][10]
	u.Ability = false
end

DefineUpgrade("upgrade-dwarven-wood-plow", {
	Parent = "upgrade-wood-plow",
	Civilization = "dwarf",
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-dwarven-iron-tipped-wood-plow", {
	Parent = "upgrade-iron-tipped-wood-plow",
	Civilization = "dwarf",
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-dwarven-masonry", {
	Parent = "upgrade-masonry",
	Civilization = "dwarf",
	Description = _("Masonry is the craft of building structures from blocks, which are bound together with mortar.\n\nEffect: +20% Hit Points and +5 Armor for buildings, and allows Sentry Towers to be upgraded to Guard Towers and Mead Halls to Bastions."),
	Costs = {"time", 250, "gold", 900, "lumber", 375, "stone", 375},
	GrandStrategyCosts = {"time", 250, "gold", 900, "lumber", 375, "stone", 375, "research", 2400},
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-dwarven-coinage", {
	Parent = "upgrade-coinage",
	Civilization = "dwarf",
	Icon = "icon-dwarven-coinage",
	TechnologyPointCost = 1
})

DefineModifier("upgrade-dwarven-broad-axe",
	{"BasicDamage", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-yale-rider"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"},
	{"apply-to", "unit-hero-modsognir"}, {"apply-to", "unit-hero-modsognir-thane"},
	{"apply-to", "unit-hero-durin"}, {"apply-to", "unit-hero-durin-thane"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-rugnur-thane"},
	{"apply-to", "unit-hero-baglur"}, {"apply-to", "unit-hero-baglur-thane"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-great-axe",
	{"BasicDamage", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-yale-rider"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"},
	{"apply-to", "unit-hero-modsognir"}, {"apply-to", "unit-hero-modsognir-thane"},
	{"apply-to", "unit-hero-durin"}, {"apply-to", "unit-hero-durin-thane"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-rugnur-thane"},
	{"apply-to", "unit-hero-baglur"}, {"apply-to", "unit-hero-baglur-thane"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-shield-1",
	{"Armor", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-yale-rider"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"},
	{"apply-to", "unit-hero-modsognir"}, {"apply-to", "unit-hero-modsognir-thane"},
	{"apply-to", "unit-hero-durin"}, {"apply-to", "unit-hero-durin-thane"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-rugnur-thane"},
	{"apply-to", "unit-hero-baglur"}, {"apply-to", "unit-hero-baglur-thane"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-shield-2",
	{"Armor", 2},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-yale-rider"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"},
	{"apply-to", "unit-hero-modsognir"}, {"apply-to", "unit-hero-modsognir-thane"},
	{"apply-to", "unit-hero-durin"}, {"apply-to", "unit-hero-durin-thane"},
	{"apply-to", "unit-hero-rugnur"}, {"apply-to", "unit-hero-rugnur-steelclad"}, {"apply-to", "unit-hero-rugnur-thane"},
	{"apply-to", "unit-hero-baglur"}, {"apply-to", "unit-hero-baglur-thane"},
	{"apply-to", "unit-hero-durstorn"}, {"apply-to", "unit-hero-thursagan"}
)

DefineModifier("upgrade-dwarven-throwing-axe-1",
	{"BasicDamage", 1},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-gryphon-rider"})

DefineModifier("upgrade-dwarven-throwing-axe-2",
	{"BasicDamage", 1},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-gryphon-rider"}
)

DefineModifier("upgrade-dwarven-ballista-bolt-1",
	{"BasicDamage", 15},
	{"apply-to", "unit-dwarven-ballista"})

DefineModifier("upgrade-dwarven-ballista-bolt-2",
	{"BasicDamage", 15},
	{"apply-to", "unit-dwarven-ballista"})

DefineModifier("upgrade-dwarven-wood-plow",
	{"Supply", 1},
	{"apply-to", "unit-dwarven-mushroom-farm"}
)

DefineModifier("upgrade-dwarven-iron-tipped-wood-plow",
	{"Supply", 1},
	{"apply-to", "unit-dwarven-mushroom-farm"}
)

DefineModifier("upgrade-dwarven-masonry",
	{"HitPoints", 20, "Percent"},
	{"Armor", 5},
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"},
	{"apply-to", "unit-dwarven-mushroom-farm"}, {"apply-to", "unit-dwarven-barracks"},
	{"apply-to", "unit-dwarven-lumber-mill"}, {"apply-to", "unit-dwarven-smithy"},
	{"apply-to", "unit-dwarven-sentry-tower"}, {"apply-to", "unit-dwarven-guard-tower"}
)

DefineModifier("upgrade-dwarven-coinage",
	{"improve-production", "gold", 10},
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"}
)

DefineDependency("unit-dwarven-scout",
	{"unit-dwarven-lumber-mill"}
)

DefineDependency("upgrade-dwarven-great-axe",
	{"upgrade-dwarven-broad-axe"}
)

DefineDependency("upgrade-dwarven-shield-2",
	{"upgrade-dwarven-shield-1"}
)

DefineDependency("upgrade-dwarven-throwing-axe-2",
	{"upgrade-dwarven-throwing-axe-1"}
)

DefineDependency("upgrade-dwarven-ballista-bolt-1",
	{"unit-dwarven-lumber-mill"}
)

DefineDependency("upgrade-dwarven-ballista-bolt-2",
	{"upgrade-dwarven-ballista-bolt-1", "unit-dwarven-lumber-mill"}
)

DefineDependency("upgrade-dwarven-iron-tipped-wood-plow",
	{"upgrade-dwarven-wood-plow"}
)

DefineDependency("unit-dwarven-stronghold",
	{"unit-dwarven-barracks", "upgrade-dwarven-masonry"}
)

DefineDependency("upgrade-dwarven-coinage",
	{"unit-dwarven-smithy"}
)

DefineDependency("unit-dwarven-guard-tower",
	{"unit-dwarven-lumber-mill", "upgrade-dwarven-masonry"}
)

DefineDependency("unit-dwarven-ballista",
	{"unit-dwarven-smithy", "unit-dwarven-lumber-mill"}
)
