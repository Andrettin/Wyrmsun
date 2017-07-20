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
--      (c) Copyright 2014-2017 by Andrettin
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

DefineUpgrade("upgrade-goblin-civilization", {
	Name = "Goblin Civilization"
})

DefineUpgrade("upgrade-goblin-broad-sword", {
	Parent = "upgrade-broad-sword",
	Icon = "icon-goblin-broad-sword",
	Civilization = "goblin",
	Description = "Made for swift and lethal attacks, goblin broad swords leave bitter memories in raided settlements.\n\nEffect: +2 Damage for Swordsmen. Allows Broad Swords to be sold at the Market.",
	Item = "unit-goblin-broad-sword"
})

DefineUpgrade("upgrade-goblin-long-sword", {
	Parent = "upgrade-long-sword",
	Icon = "icon-goblin-long-sword",
	Civilization = "goblin",
	Description = _("There are few sights more terrifying for dwarven frontier settlements than a charging goblin army entirely equipped with these deadly long swords.\n\nEffect: +2 Damage for Swordsmen. Allows Long Swords to be sold at the Market."),
	Item = "unit-goblin-long-sword"
})

DefineUpgrade("upgrade-goblin-rimmed-shield", {
	Name = _("Rimmed Shield"),
	Parent = "upgrade-bronze-shield",
	Icon = "icon-goblin-rimmed-shield",
	Civilization = "goblin",
	Description = _("The addition of a metal rim to a wooden shield significantly improves its capability from fending off blows from swords and the like.\n\nEffect: +2 Armor for Swordsmen and Impalers. Allows Rimmed Shields to be sold at the Market."),
	Item = "unit-goblin-rimmed-shield"
})

DefineUpgrade("upgrade-goblin-embossed-shield", {
	Name = _("Embossed Shield"),
	Parent = "upgrade-iron-shield",
	Icon = "icon-goblin-embossed-shield",
	Civilization = "goblin",
	RequirementsString = "Rimmed Shield",
	Description = _("The shield boss, or metal centerpiece, made the shield better capable of deflecting attacks.\n\nEffect: +2 Armor for Swordsmen and Impalers. Allows Embossed Shields to be sold at the Market."),
	Item = "unit-goblin-embossed-shield"
})

DefineUpgrade("upgrade-goblin-long-spear", {
	Parent = "upgrade-long-spear",
	Civilization = "goblin",
	Description = _("With the lengthening of spear shafts, soldiers who wield these weapons have greater reach against their enemies.\n\nEffect: +2 Damage for Impalers. Allows Long Spears to be sold at the Market."),
	Item = "unit-long-spear"
})

DefineUpgrade("upgrade-goblin-pike", {
	Parent = "upgrade-pike",
	Civilization = "goblin",
	Description = _("Much longer than previous spears, pikes can be deadly when used by disciplined groups of soldiers.\n\nEffect: +2 Damage for Impalers. Allows Pikes to be sold at the Market."),
	Item = "unit-pike"
})

DefineUpgrade("upgrade-goblin-barbed-arrow", {
	Name = _("Barbed Arrow"),
	Parent = "upgrade-ranged-projectile-1",
	Icon = "icon-germanic-barbed-arrow",
	Civilization = "goblin",
	Description = _("An improvement over the basic triangular-shaped arrow, the barbed arrow is much harder to be removed from the wound after puncturing an enemy.\n\nEffect: +2 Damage for Archers. Allows Barbed Arrows to be sold at the Market."),
	Arrows = true,
	Item = "unit-barbed-arrows"
})

DefineUpgrade("upgrade-goblin-bodkin-arrow", {
	Name = _("Bodkin Arrow"),
	Parent = "upgrade-ranged-projectile-2",
	Icon = "icon-bodkin-arrow",
	Civilization = "goblin",
	RequirementsString = "Barbed Arrow",
	Description = _("Bodkin arrows focus pressure on a single point, greatly enhancing their piercing capability.\n\nEffect: +2 Damage for Archers. Allows Bodkin Arrows to be sold at the Market."),
	Arrows = true,
	Item = "unit-bodkin-arrows"
})

DefineUpgrade("upgrade-goblin-catapult-projectile-1", {
	Parent = "upgrade-catapult-granite-projectile",
	Civilization = "goblin",
	Description = _("As siegecrafting techniques develop, catapult rocks made out of sandstone are replaced by ones made of granite, increasing the damage war machines can cause.\n\nEffect: +15 Damage for War Machines.")
})

DefineUpgrade("upgrade-goblin-catapult-projectile-2", {
	Parent = "upgrade-catapult-metal-projectile",
	Civilization = "goblin",
	Description = _("Advances in metalworking make it possible to use metal balls as catapult projectiles, greatly magnifying the destructive power of war machines.\n\nEffect: +15 Damage for War Machines.")
})

DefineUpgrade("upgrade-goblin-wood-plow", {
	Parent = "upgrade-wood-plow",
	Civilization = "goblin"
})

DefineUpgrade("upgrade-goblin-iron-tipped-wood-plow", {
	Parent = "upgrade-iron-tipped-wood-plow",
	Civilization = "goblin"
})

DefineUpgrade("upgrade-goblin-masonry", {
	Parent = "upgrade-masonry",
	Civilization = "goblin",
	Description = _("Masonry is the craft of building structures from blocks, which are bound together with mortar.\n\nEffect: +20% Hit Points and +5 Armor for buildings, enables Road construction, and allows Watch Towers to be upgraded to Guard Towers and Town Halls to Strongholds.")
})

DefineUpgrade("upgrade-goblin-coinage", {
	Parent = "upgrade-coinage",
	Civilization = "goblin",
	Icon = "icon-goblin-coinage",
	RequirementsString = "Fugla Forge"
})

DefineUpgrade("upgrade-goblin-writing", {
	Parent = "upgrade-writing",
	Civilization = "goblin",
	Icon = "icon-norse-runewriting"
})

DefineUpgrade("upgrade-goblin-alchemy", {
	Parent = "upgrade-alchemy",
	Civilization = "goblin",
	Description = "Once writing had been developed, observations on the basic substances that form the world could be noted down and more easily passed on. This led to the appearance of the discipline of alchemy, mixing esoteric, scientific and philosophical postulations about the elements from which the material world is composed.\n\nEffect: +1 Fire Damage for Archers and Headhunters, +5 Fire Damage for War Machines. Allows new magic affixes for items sold at the Market. Allows potions and elixirs to be sold at the Market."
})

DefineModifier("upgrade-goblin-broad-sword",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-militia"}, 
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"}
)

DefineModifier("upgrade-goblin-long-sword",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-militia"},
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"}
)

DefineModifier("upgrade-goblin-rimmed-shield",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-militia"},
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-goblin-embossed-shield",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-militia"},
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-goblin-long-spear",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-goblin-pike",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-spearman"}
)

DefineModifier("upgrade-goblin-barbed-arrow",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-archer"}, {"apply-to", "unit-goblin-headhunter"}, {"apply-to", "unit-goblin-shadowstalker"}
)

DefineModifier("upgrade-goblin-bodkin-arrow",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-archer"}, {"apply-to", "unit-goblin-headhunter"}, {"apply-to", "unit-goblin-shadowstalker"}
)

DefineModifier("upgrade-goblin-catapult-projectile-1",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-goblin-war-machine"}
)

DefineModifier("upgrade-goblin-catapult-projectile-2",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-goblin-war-machine"}
)

DefineModifier("upgrade-goblin-masonry",
	{"HitPoints", 20, "Percent"},
	{"Armor", 5},
	{"apply-to", "unit-goblin-town-hall"}, {"apply-to", "unit-goblin-stronghold"},
	{"apply-to", "unit-goblin-farm"}, {"apply-to", "unit-goblin-mess-hall"},
	{"apply-to", "unit-goblin-lumber-mill"}, {"apply-to", "unit-goblin-smithy"},
	{"apply-to", "unit-goblin-temple"}, {"apply-to", "unit-goblin-market"},
	{"apply-to", "unit-goblin-academy"},
	{"apply-to", "unit-goblin-watch-tower"}, {"apply-to", "unit-goblin-guard-tower"},
	{"apply-to", "unit-goblin-dock"}
)

DefineModifier("upgrade-goblin-wood-plow",
	{"Supply", 1},
	{"apply-to", "unit-goblin-farm"}
)

DefineModifier("upgrade-goblin-iron-tipped-wood-plow",
	{"Supply", 1},
	{"apply-to", "unit-goblin-farm"}
)

DefineModifier("upgrade-goblin-coinage",
	{"improve-production", "copper", 10},
	{"apply-to", "unit-goblin-town-hall"}, {"apply-to", "unit-goblin-stronghold"}
)

DefineModifier("upgrade-goblin-coinage",
	{"TradeCost", -5},
	{"apply-to", "unit-goblin-market"}
)

DefineModifier("upgrade-goblin-writing",
	{"TimeEfficiencyBonus", 10},
	{"apply-to", "unit-goblin-town-hall"}, {"apply-to", "unit-goblin-stronghold"},
	{"apply-to", "unit-goblin-farm"}, {"apply-to", "unit-goblin-mess-hall"},
	{"apply-to", "unit-goblin-lumber-mill"}, {"apply-to", "unit-goblin-smithy"},
	{"apply-to", "unit-goblin-temple"},
	{"apply-to", "unit-goblin-market"},
	{"apply-to", "unit-goblin-academy"},
	{"apply-to", "unit-goblin-watch-tower"}, {"apply-to", "unit-goblin-guard-tower"},
	{"apply-to", "unit-goblin-dock"}
)

DefineModifier("upgrade-goblin-alchemy",
	{"FireDamage", 1},
	{"Points", 8},
	{"apply-to", "unit-goblin-archer"}, {"apply-to", "unit-goblin-headhunter"}, {"apply-to", "unit-goblin-shadowstalker"}
)

DefineModifier("upgrade-goblin-alchemy",
	{"FireDamage", 5},
	{"Points", 5},
	{"apply-to", "unit-goblin-war-machine"}
)

DefinePredependency("unit-goblin-swordsman",
	{"upgrade-goblin-civilization"}
)

DefinePredependency("unit-goblin-spearman",
	{"upgrade-goblin-civilization"}
)

DefinePredependency("unit-goblin-archer",
	{"upgrade-goblin-civilization"}
)

DefineDependency("unit-goblin-archer",
	{"unit-goblin-lumber-mill"}, "or", {"upgrade-mercenary-company"}
)

DefineDependency("upgrade-goblin-long-sword",
	{"upgrade-goblin-broad-sword"}
)

DefineDependency("upgrade-goblin-embossed-shield",
	{"upgrade-goblin-rimmed-shield"}
)

DefineDependency("unit-goblin-guard-tower",
	{"unit-goblin-lumber-mill", "upgrade-goblin-masonry"}
)

DefinePredependency("unit-goblin-war-machine",
	{"upgrade-goblin-civilization"}
)

DefineDependency("unit-goblin-war-machine",
	{"unit-goblin-smithy", "unit-goblin-lumber-mill", "upgrade-engineering"}, "or", {"upgrade-mercenary-company", "upgrade-engineering"}
)

DefinePredependency("unit-goblin-thief",
	{"upgrade-goblin-civilization"}
)

DefinePredependency("unit-goblin-glider",
	{"upgrade-goblin-civilization"}
)

DefineDependency("unit-goblin-glider",
	{"unit-goblin-lumber-mill"}, "or", {"upgrade-mercenary-company"}
)

DefineDependency("upgrade-goblin-pike",
	{"upgrade-goblin-long-spear"}
)

DefineDependency("unit-goblin-temple",
	{"unit-goblin-lumber-mill"}
)

DefineDependency("unit-goblin-market",
	{"unit-goblin-lumber-mill"}
)

DefineDependency("unit-goblin-academy",
	{"upgrade-goblin-writing"}
)

DefineDependency("unit-goblin-shaman",
	{"upgrade-deity-gathaarl"}
)

DefineDependency("unit-goblin-dock",
	{"unit-goblin-lumber-mill"}
)

DefineDependency("unit-goblin-stronghold",
	{"unit-goblin-mess-hall", "upgrade-goblin-masonry"}
)

DefineDependency("upgrade-goblin-bodkin-arrow",
	{"upgrade-goblin-barbed-arrow"}
)

DefineDependency("upgrade-goblin-catapult-projectile-1",
	{"unit-goblin-lumber-mill"}
)

DefineDependency("upgrade-goblin-catapult-projectile-2",
	{"upgrade-goblin-catapult-projectile-1", "unit-goblin-lumber-mill"}
)

DefineDependency("upgrade-goblin-iron-tipped-wood-plow",
	{"upgrade-goblin-wood-plow"}
)

DefineDependency("upgrade-goblin-coinage",
	{"unit-goblin-smithy"}
)

DefineDependency("upgrade-goblin-alchemy",
	{"upgrade-goblin-writing", "upgrade-mathematics"}
)

DefineDependency("unit-goblin-transport-ship",
	{"unit-goblin-lumber-mill"}
)

Load("scripts/civilizations/goblin/upgrade_faction.lua")