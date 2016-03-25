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
--      upgrade.ccl - Define the teuton dependencies and upgrades.
--
--      (c) Copyright 2014-2016 by Andrettin
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
	{"upgrade-teuton-catapult-projectile-1", _("Catapult Granite Projectile"), "icon-catapult-projectile-2", "siege-projectile-1",
		_("As siegecrafting techniques develop, catapult rocks made out of sandstone are replaced by ones made of granite, increasing the damage catapults can cause.\n\nEffect: +15 Damage for Catapults."),
		"",
		"",
		{   250,   900,     0,     0,     0,   300,     0,     0},
		{   250,   900,     0,     0,     0,   300,     0,  1500},
		1
	},
	{"upgrade-teuton-catapult-projectile-2", _("Catapult Metal Projectile"), "icon-catapult-projectile-3", "siege-projectile-2",
		_("Advances in metalworking make it possible to use metal balls as catapult projectiles, greatly magnifying the destructive power of those siege weapons.\n\nEffect: +15 Damage for Catapults."),
		"",
		"",
		{   250,  4000,     0,     0,     0,     0,     0,     0},
		{   250,  4000,     0,     0,     0,     0,     0,  4000},
		1
	}
}

for i = 1,table.getn(upgrades) do
	u = CUpgrade:New(upgrades[i][1])
	u.Name = upgrades[i][2]
	u.Icon = Icons[upgrades[i][3]]
	u.Class = upgrades[i][4]
	u.Civilization = "teuton"
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
end

DefineUpgrade("upgrade-teuton-spatha", {
	Name = _("Spatha"),
	Parent = "upgrade-long-sword",
	Icon = "icon-teuton-spatha",
	Civilization = "teuton",
	Description = _("With the development of iron working, the forging of longer swords became a practical possibility.\n\nEffect: +2 Damage for Kriegers and Ritters."),
	Background = _("During the Migration Period, Germanic peoples - including West Germanics - used longswords such as these in combat."),
	TechnologyPointCost = 1,
	Item = "unit-spatha"
})

DefineUpgrade("upgrade-frank-spatha", {
	Name = _("Spatha"),
	Parent = "upgrade-teuton-spatha",
	Icon = "icon-frankish-spatha",
	Civilization = "teuton",
	Faction = "Frank Tribe",
	Description = _("With the development of iron working, the forging of longer swords became a practical possibility.\n\nEffect: +2 Damage for Kriegers and Ritters."),
	Background = _("During the Migration Period, Germanic peoples - including West Germanics - used longswords such as these in combat."),
	TechnologyPointCost = 1,
	Item = "unit-frankish-spatha"
})

DefineUpgrade("upgrade-teuton-pike", {
	Parent = "upgrade-pike",
	Civilization = "teuton",
	Description = _("Much longer than previous spears, pikes can be deadly when used by disciplined groups of soldiers.\n\nEffect: +2 Damage for Speerkampfers."),
	TechnologyPointCost = 1,
	Item = "unit-pike"
})

DefineUpgrade("upgrade-teuton-iron-shield", {
	Parent = "upgrade-iron-shield",
	Icon = "icon-teuton-iron-shield",
	Civilization = "teuton",
	Description = _("The development of iron working makes the crafting of sturdier shields possible.\n\nEffect: +2 Armor for Kriegers, Speerkampfers and Ritters."),
	TechnologyPointCost = 1,
	Item = "unit-iron-shield"
})

DefineUpgrade("upgrade-teuton-bodkin-arrow", {
	Name = _("Bodkin Arrow"),
	Parent = "upgrade-ranged-projectile-2",
	Icon = "icon-bodkin-arrow",
	Civilization = "teuton",
	Description = _("Bodkin arrows focus pressure on a single point, greatly enhancing their piercing capability.\n\nEffect: +2 Damage for Skutans."),
	TechnologyPointCost = 1,
	Arrows = true,
	Item = "unit-bodkin-arrows"
})

DefineUpgrade("upgrade-teuton-iron-tipped-wood-plow", {
	Parent = "upgrade-iron-tipped-wood-plow",
	Civilization = "teuton",
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-teuton-masonry", {
	Parent = "upgrade-masonry",
	Civilization = "teuton",
	Description = _("Masonry is the craft of building structures from blocks, which are bound together with mortar.\n\nEffect: +20% Hit Points and +5 Armor for buildings, and allows Watch Towers to be upgraded to Guard Towers and Rathauses to Burgs."),
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-teuton-coinage", {
	Parent = "upgrade-coinage",
	Civilization = "teuton",
	Icon = "icon-teuton-coinage",
	Background = _("West Germanic peoples first obtained knowledge of currency throughout their contacts with Celtic tribes and the Romans. Soon afterwards they would adopt the usage of coins, eventually beginning to mint their own."),
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-teuton-writing", {
	Parent = "upgrade-writing",
	Civilization = "teuton",
	Icon = "icon-norse-runewriting",
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-teuton-alchemy", {
	Parent = "upgrade-alchemy",
	Civilization = "teuton",
	Description = _("Once writing had been developed, observations on the basic substances that form the world could be noted down and more easily passed on. This led to the appearance of the discipline of alchemy, mixing esoteric, scientific and philosophical postulations about the elements from which the material world is composed.\n\nEffect: +1 Fire Damage for Skutans, +5 Fire Damage for Catapults."),
	TechnologyPointCost = 1
})

DefineUpgrade("upgrade-alamanni-tribe-faction", {
	Name = _("Alamanni Tribe Faction")
})

DefineUpgrade("upgrade-angle-tribe-faction", {
	Name = _("Angle Tribe Faction")
})

DefineUpgrade("upgrade-bavarian-tribe-faction", {
	Name = _("Bavarian Tribe Faction")
})

DefineUpgrade("upgrade-frank-tribe-faction", {
	Name = _("Frank Tribe Faction")
})

DefineUpgrade("upgrade-frisian-tribe-faction", {
	Name = _("Frisian Tribe Faction")
})

DefineUpgrade("upgrade-lombard-tribe-faction", {
	Name = _("Lombard Tribe Faction")
})

DefineUpgrade("upgrade-saxon-tribe-faction", {
	Name = _("Saxon Tribe Faction")
})

DefineUpgrade("upgrade-suebi-tribe-faction", {
	Name = _("Suebi Tribe Faction")
})

DefineUpgrade("upgrade-thuringian-tribe-faction", {
	Name = _("Thuringian Tribe Faction")
})

DefineUpgrade("upgrade-mecklenburg-faction", {
	Name = _("Mecklenburg Faction")
})

DefineModifier("upgrade-teuton-spatha",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-suebi-swordsman"},
	{"apply-to", "unit-teuton-ritter"}
)

DefineModifier("upgrade-frank-spatha",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-swordsman"},
	{"apply-to", "unit-frank-horseman"}
)

DefineModifier("upgrade-frank-spatha", -- for the case that a Frankish tribe becomes a civilization with a different upgrade
	{"allow", "upgrade-teuton-spatha", "R"}
)

DefineModifier("upgrade-teuton-pike",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-spearman"}, {"apply-to", "unit-frank-spearman"}
)

DefineModifier("upgrade-teuton-iron-shield",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-suebi-swordsman"}, {"apply-to", "unit-frank-swordsman"},
	{"apply-to", "unit-teuton-spearman"}, {"apply-to", "unit-frank-spearman"},
	{"apply-to", "unit-teuton-ritter"}, {"apply-to", "unit-frank-horseman"}
)

DefineModifier("upgrade-teuton-bodkin-arrow",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-teuton-catapult-projectile-1",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-teuton-catapult"}
)

DefineModifier("upgrade-teuton-catapult-projectile-2",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-teuton-catapult"}
)

DefineModifier("upgrade-teuton-iron-tipped-wood-plow",
	{"Supply", 1},
	{"apply-to", "unit-teuton-farm"}
)

DefineModifier("upgrade-teuton-masonry",
	{"HitPoints", 20, "Percent"},
	{"Armor", 5},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"},
	{"apply-to", "unit-teuton-farm"}, {"apply-to", "unit-teuton-barracks"},
	{"apply-to", "unit-teuton-lumber-mill"}, {"apply-to", "unit-teuton-smithy"},
	{"apply-to", "unit-teuton-stables"},
	{"apply-to", "unit-teuton-watch-tower"}, {"apply-to", "unit-teuton-guard-tower"},
	{"apply-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-teuton-coinage",
	{"improve-production", "gold", 10},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"}
)

DefineModifier("upgrade-teuton-writing",
	{"TimeEfficiencyBonus", 10},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"},
	{"apply-to", "unit-teuton-farm"}, {"apply-to", "unit-teuton-barracks"},
	{"apply-to", "unit-teuton-lumber-mill"}, {"apply-to", "unit-teuton-smithy"},
--	{"apply-to", "unit-teuton-stables"},
	{"apply-to", "unit-teuton-watch-tower"}, {"apply-to", "unit-teuton-guard-tower"},
	{"apply-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-teuton-alchemy",
	{"FireDamage", 1},
	{"Points", 8},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-teuton-alchemy",
	{"FireDamage", 5},
	{"Points", 5},
	{"apply-to", "unit-teuton-catapult"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-town-hall"}, {"convert-to", "unit-teuton-town-hall"}
)
  
DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-farm"}, {"convert-to", "unit-teuton-farm"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-barracks"}, {"convert-to", "unit-teuton-barracks"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-carpenters-shop"}, {"convert-to", "unit-teuton-lumber-mill"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-smithy"}, {"convert-to", "unit-teuton-smithy"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-worker"}, {"convert-to", "unit-teuton-worker"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-warrior"}, {"convert-to", "unit-teuton-swordsman"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-spearman"}, {"convert-to", "unit-teuton-spearman"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-archer"}, {"convert-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-alamanni-tribe-faction",
	{"HitPoints", 10},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}
)

DefineModifier("upgrade-angle-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}
)

DefineModifier("upgrade-bavarian-tribe-faction",
	{"Armor", 1},
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-swordsman"}, {"convert-to", "unit-frank-swordsman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-spearman"}, {"convert-to", "unit-frank-spearman"}
)

DefineModifier("upgrade-frank-tribe-faction",
	{"apply-to", "unit-teuton-ritter"}, {"convert-to", "unit-frank-horseman"}
)

DefineModifier("upgrade-frisian-tribe-faction",
	{"Armor", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}
)

DefineModifier("upgrade-lombard-tribe-faction",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}
)

DefineModifier("upgrade-saxon-tribe-faction",
	{"BasicDamage", 1},
	{"HitPoints", 5},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}
)

DefineModifier("upgrade-suebi-tribe-faction",
	{"apply-to", "unit-teuton-swordsman"}, {"convert-to", "unit-suebi-swordsman"}
)

DefineModifier("upgrade-thuringian-tribe-faction",
	{"BasicDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-mecklenburg-faction",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}
)

DefineDependency("unit-teuton-archer",
	{"unit-teuton-lumber-mill"}
)

DefineDependency("unit-teuton-guard-tower",
	{"unit-teuton-lumber-mill", "upgrade-teuton-masonry"}
)

DefineDependency("unit-teuton-catapult",
	{"unit-teuton-smithy", "unit-teuton-lumber-mill"}
)

DefineDependency("upgrade-teuton-spatha",
	{"upgrade-germanic-broad-sword", "upgrade-frank-tribe-faction", 0}
)

DefineDependency("upgrade-frank-spatha",
	{"upgrade-germanic-broad-sword", "upgrade-frank-tribe-faction"}
)

DefineDependency("upgrade-teuton-pike",
	{"upgrade-germanic-long-spear"}
)

DefineDependency("upgrade-teuton-iron-shield",
	{"upgrade-germanic-bronze-shield"}
)

DefineDependency("upgrade-teuton-bodkin-arrow",
	{"upgrade-germanic-barbed-arrow"}
)

DefineDependency("upgrade-teuton-catapult-projectile-1",
	{"unit-teuton-lumber-mill"}
)

DefineDependency("upgrade-teuton-catapult-projectile-2",
	{"upgrade-teuton-catapult-projectile-1", "unit-teuton-lumber-mill"}
)

DefineDependency("upgrade-teuton-iron-tipped-wood-plow",
	{"upgrade-germanic-wood-plow"}
)

DefineDependency("unit-teuton-stronghold",
	{"unit-teuton-barracks", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-teuton-coinage",
	{"unit-teuton-smithy"}
)

DefineDependency("upgrade-teuton-alchemy",
	{"upgrade-teuton-writing"}
)

DefineDependency("unit-teuton-stables",
	{"unit-teuton-lumber-mill"}
)

DefineDependency("unit-teuton-ritter",
	{"unit-teuton-smithy", "unit-teuton-stables"}
)

DefineDependency("unit-frank-horseman",
	{"unit-teuton-smithy", "unit-teuton-stables", "upgrade-frank-tribe-faction"}
)

DefineDependency("unit-suebi-swordsman",
	{"upgrade-suebi-tribe-faction"}
)

DefineDependency("unit-frank-swordsman",
	{"upgrade-frank-tribe-faction"}
)

DefineDependency("unit-frank-spearman",
	{"upgrade-frank-tribe-faction"}
)

DefineDependency("unit-teuton-dock",
	{"unit-teuton-lumber-mill"}
)

DefineDependency("unit-teuton-kogge",
	{"unit-teuton-lumber-mill"}
)
