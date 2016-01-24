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

DefineUpgrade("upgrade-dwarven-broad-axe", {
	Parent = "upgrade-broad-axe",
	Icon = "icon-dwarven-broad-axe",
	Civilization = "dwarf",
	Description = _("Dwarven smiths work hard at their craft to improve soldiers' weapons, and with the perfecting of smithing techniques the broadening of axe blades becomes possible.\n\nEffect: +2 Damage for Axefighters, Steelclads, Stonelords and Yale Riders."),
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-dwarven-great-axe", {
	Parent = "upgrade-great-axe",
	Icon = "icon-dwarven-great-axe",
	Civilization = "dwarf",
	Description = _("Further innovations in dwarven smithing allow axes to be made sturdier, and often to carry double blades.\n\nEffect: +2 Damage for Axefighters, Steelclads, Stonelords and Yale Riders."),
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-dwarven-shield-1", {
	Name = _("Heater Shield"),
	Parent = "upgrade-bronze-shield",
	Icon = "icon-dwarven-shield-2",
	Civilization = "dwarf",
	Description = _("Earlier shields provided little more than a minimal degree of protection. With the development of heater shields, dwarven soldiers have a greater chance of survival in battle.\n\nEffect: +2 Armor for Axefighters, Steelclads, Stonelords and Yale Riders."),
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-dwarven-shield-2", {
	Name = _("Thrymgjol Shield"),
	Parent = "upgrade-iron-shield",
	Icon = "icon-dwarven-shield-3",
	Civilization = "dwarf",
	Description = _("As shield-making techniques improved, the creation of thrymgjol shields became possible. These shields receive their name from the impregnable gate crafted by the sons of the dwarf Solblindi, due to the mighty protection they give their users.\n\nEffect: +2 Armor for Axefighters, Steelclads, Stonelords and Yale Riders."),
	Background = _("The Thrymgjol gate and its makers, the sons of the dwarf Solblindi, are mentioned in the ~<Svipdagsmol~> of Norse mythology. The name \"Thrymgjol\" means \"loud-clanging\"."),
	Quote = _("\"Thrymgjol they call it; | 'twas made by the three, / The sons of Solblindi; / And fast as a fetter | the farer it holds, / Whoever shall lift the latch.\" - Dwarven Traditional Poetry (The Warder)"),
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-dwarven-sharp-throwing-axe", {
	Name = _("Sharp Throwing Axe"),
	Parent = "upgrade-ranged-projectile-1",
	Icon = "icon-dwarven-sharp-throwing-axe",
	Civilization = "dwarf",
	Description = _("As their craftsmanship progresses, dwarven artisans become capable of improving the basic throwing axe to have sharper blades.\n\nEffect: +2 Damage for Scouts, Pathfinders and Gryphon Riders."),
	TechnologyPointCost = 1,
	Weapon = true
})

DefineUpgrade("upgrade-dwarven-bearded-throwing-axe", {
	Name = _("Bearded Throwing Axe"),
	Parent = "upgrade-ranged-projectile-2",
	Icon = "icon-dwarven-bearded-throwing-axe",
	Civilization = "dwarf",
	Description = _("The 'bearding' of throwing axes by extending the bottom of their blades is an innovation which makes them more deadly when thrown.\n\nEffect: +2 Damage for Scouts, Pathfinders and Gryphon Riders."),
	TechnologyPointCost = 1,
	Weapon = true
})

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

DefineUpgrade("upgrade-dwarven-runewriting", {
	Name = _("Dvalic Runewriting"),
	Parent = "upgrade-writing",
	Civilization = "dwarf",
	Description = _("The dwarven system of runewriting is said to have been invented by the dwarven scholar, Dvalin.\n\nEffect: +10% Time Efficiency for all buildings, changes faction from tribe to polity."),
	Background = _("In the Poetic Edda's ~<Hovamol~>, Dvalin is mentioned as the one who bestowed the knowledge of runes upon the dwarves."),
	Icon = "icon-norse-runewriting",
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-dwarven-alchemy", {
	Parent = "upgrade-alchemy",
	Civilization = "dwarf",
	Description = _("Once writing had been developed, observations on the basic substances that form the world could be noted down and more easily passed on. This led to the appearance of the discipline of alchemy, mixing esoteric, scientific and philosophical postulations about the elements from which the material world is composed.\n\nEffect: +1 Fire Damage for Scouts, Pathfinders and Gryphon Riders, +5 Fire Damage for Ballistas."),
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-eikinskjaldi-clan-faction", {
	Name = _("Eikinskjaldi Clan Faction")
})

DefineUpgrade("upgrade-brising-clan-faction", {
	Name = _("Brising Clan Faction")
})

DefineUpgrade("upgrade-norlund-clan-faction", {
	Name = _("Norlund Clan Faction")
})

DefineUpgrade("upgrade-shinsplitter-clan-faction", {
	Name = _("Shinsplitter Clan Faction")
})

DefineUpgrade("upgrade-shorbear-clan-faction", {
	Name = _("Shorbear Clan Faction")
})

DefineUpgrade("upgrade-joruvellir-faction", {
	Name = _("Joruvellir Faction")
})

DefineUpgrade("upgrade-kal-kartha-faction", {
	Name = _("Kal Kartha Faction")
})

DefineUpgrade("upgrade-knalga-faction", {
	Name = _("Knalga Faction")
})

DefineUpgrade("upgrade-lyr-faction", {
	Name = _("Lyr Faction")
})

DefineModifier("upgrade-dwarven-broad-axe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-yale-rider"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"}
)

DefineModifier("upgrade-dwarven-great-axe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-yale-rider"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"}
)

DefineModifier("upgrade-dwarven-shield-1",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-yale-rider"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"}
)

DefineModifier("upgrade-dwarven-shield-2",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-yale-rider"},
	{"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"}
)

DefineModifier("upgrade-dwarven-sharp-throwing-axe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}, {"apply-to", "unit-dwarven-gryphon-rider"})

DefineModifier("upgrade-dwarven-bearded-throwing-axe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}, {"apply-to", "unit-dwarven-gryphon-rider"}
)

DefineModifier("upgrade-dwarven-ballista-bolt-1",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-dwarven-ballista"})

DefineModifier("upgrade-dwarven-ballista-bolt-2",
	{"BasicDamage", 15},
	{"Points", 10},
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
	{"Points", 10},
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"},
	{"apply-to", "unit-dwarven-mushroom-farm"}, {"apply-to", "unit-dwarven-barracks"},
	{"apply-to", "unit-dwarven-lumber-mill"}, {"apply-to", "unit-dwarven-smithy"},
	{"apply-to", "unit-dwarven-yale-pen"},
	{"apply-to", "unit-dwarven-sentry-tower"}, {"apply-to", "unit-dwarven-guard-tower"},
	{"apply-to", "unit-dwarven-dock"}
)

DefineModifier("upgrade-dwarven-coinage",
	{"improve-production", "gold", 10},
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"}
)

DefineModifier("upgrade-dwarven-runewriting",
	{"TimeEfficiencyBonus", 10},
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"},
	{"apply-to", "unit-dwarven-mushroom-farm"}, {"apply-to", "unit-dwarven-barracks"},
	{"apply-to", "unit-dwarven-lumber-mill"}, {"apply-to", "unit-dwarven-smithy"},
--	{"apply-to", "unit-dwarven-yale-pen"},
	{"apply-to", "unit-dwarven-sentry-tower"}, {"apply-to", "unit-dwarven-guard-tower"},
	{"apply-to", "unit-dwarven-dock"}
)

DefineModifier("upgrade-dwarven-alchemy",
	{"FireDamage", 1},
	{"Points", 8},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}, {"apply-to", "unit-dwarven-gryphon-rider"}
)

DefineModifier("upgrade-dwarven-alchemy",
	{"FireDamage", 5},
	{"Points", 5},
	{"apply-to", "unit-dwarven-ballista"}
)

DefineModifier("upgrade-eikinskjaldi-clan-faction",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-brising-clan-faction",
	{"BasicDamage", 1},
	{"Points", 5},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-brising-clan-faction",
	{"TimeEfficiencyBonus", 50},
	{"apply-to", "unit-dwarven-smithy"}
)

DefineModifier("upgrade-norlund-clan-faction",
	{"BasicDamage", 1},
	{"Armor", 1},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-shinsplitter-clan-faction",
	{"Armor", -1},
	{"BasicDamage", 3},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-shorbear-clan-faction",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-dwarven-ballista"}
)

DefineModifier("upgrade-joruvellir-faction",
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}
)

DefineModifier("upgrade-kal-kartha-faction",
	{"BasicDamage", 3},
	{"HitPoints", -5},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-knalga-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-lyr-faction",
	{"Armor", 5}, -- Thrymgjol bonus
	{"Points", 10},
	{"apply-to", "unit-dwarven-sentry-tower"}, {"apply-to", "unit-dwarven-guard-tower"}
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

DefineDependency("upgrade-dwarven-bearded-throwing-axe",
	{"upgrade-dwarven-sharp-throwing-axe"}
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

DefineDependency("upgrade-dwarven-alchemy",
	{"upgrade-dwarven-runewriting"}
)

DefineDependency("unit-dwarven-guard-tower",
	{"unit-dwarven-lumber-mill", "upgrade-dwarven-masonry"}
)

DefineDependency("unit-dwarven-ballista",
	{"unit-dwarven-smithy", "unit-dwarven-lumber-mill"}
)

DefineDependency("unit-dwarven-yale-pen",
	{"unit-dwarven-lumber-mill"}
)

DefineDependency("unit-dwarven-yale-rider",
	{"unit-dwarven-smithy", "unit-dwarven-yale-pen"}
)

DefineDependency("unit-dwarven-dock",
	{"unit-dwarven-lumber-mill"}
)

DefineDependency("unit-dwarven-transport-ship",
	{"unit-dwarven-lumber-mill"}
)

DefineDependency("unit-dwarven-gryphon-rider",
	{"unit-dwarven-stronghold", "unit-dwarven-lumber-mill"}
)
