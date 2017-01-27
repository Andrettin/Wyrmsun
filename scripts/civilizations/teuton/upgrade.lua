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

DefineUpgrade("upgrade-teuton-spatha", {
	Name = _("Spatha"),
	Parent = "upgrade-long-sword",
	Icon = "icon-teuton-spatha",
	Civilization = "teuton",
	Description = "With the development of iron working, the forging of longer swords became a practical possibility.\n\nEffect: +2 Damage for Kregars and Ritars.",
	Background = "During the Migration Period, Germanic peoples - including West Germanics - used longswords such as these in combat.",
	Item = "unit-spatha"
})

DefineUpgrade("upgrade-frank-spatha", {
	Name = _("Spatha"),
	Parent = "upgrade-teuton-spatha",
	Icon = "icon-frankish-spatha",
	Civilization = "teuton",
	Faction = "frank-tribe",
	Description = "With the development of iron working, the forging of longer swords became a practical possibility.\n\nEffect: +2 Damage for Kregars and Ritars.",
	Background = "During the Migration Period, Germanic peoples - including West Germanics - used longswords such as these in combat.",
	Item = "unit-frankish-spatha"
})

DefineUpgrade("upgrade-teuton-pike", {
	Parent = "upgrade-pike",
	Civilization = "teuton",
	Description = "Much longer than previous spears, pikes can be deadly when used by disciplined groups of soldiers.\n\nEffect: +2 Damage for Spearmen.",
	Item = "unit-pike"
})

DefineUpgrade("upgrade-teuton-iron-shield", {
	Parent = "upgrade-iron-shield",
	Icon = "icon-teuton-iron-shield",
	Civilization = "teuton",
	Description = "The development of iron working makes the crafting of sturdier shields possible.\n\nEffect: +2 Armor for Kregars, Spearmen and Ritars.",
	Item = "unit-iron-shield"
})

DefineUpgrade("upgrade-teuton-bodkin-arrow", {
	Name = _("Bodkin Arrow"),
	Parent = "upgrade-ranged-projectile-2",
	Icon = "icon-bodkin-arrow",
	Civilization = "teuton",
	Description = "Bodkin arrows focus pressure on a single point, greatly enhancing their piercing capability.\n\nEffect: +2 Damage for Scuzzos.",
	Arrows = true,
	Item = "unit-bodkin-arrows"
})

DefineUpgrade("upgrade-teuton-catapult-projectile-1", {
	Parent = "upgrade-catapult-granite-projectile",
	Civilization = "teuton",
	Description = _("As siegecrafting techniques develop, catapult rocks made out of sandstone are replaced by ones made of granite, increasing the damage catapults can cause.\n\nEffect: +15 Damage for Catapults.")
})

DefineUpgrade("upgrade-teuton-catapult-projectile-2", {
	Parent = "upgrade-catapult-metal-projectile",
	Civilization = "teuton",
	Description = _("Advances in metalworking make it possible to use metal balls as catapult projectiles, greatly magnifying the destructive power of those siege weapons.\n\nEffect: +15 Damage for Catapults.")
})

DefineUpgrade("upgrade-teuton-iron-tipped-wood-plow", {
	Parent = "upgrade-iron-tipped-wood-plow",
	Civilization = "teuton"
})

DefineUpgrade("upgrade-teuton-masonry", {
	Parent = "upgrade-masonry",
	Civilization = "teuton",
	Description = _("Masonry is the craft of building structures from blocks, which are bound together with mortar.\n\nEffect: +20% Hit Points and +5 Armor for buildings, and allows Watch Towers to be upgraded to Guard Towers and Rathauses to Burgs.")
})

DefineUpgrade("upgrade-teuton-coinage", {
	Parent = "upgrade-coinage",
	Civilization = "teuton",
	Icon = "icon-teuton-coinage",
	Background = _("West Germanic peoples first obtained knowledge of currency throughout their contacts with Celtic tribes and the Romans. Soon afterwards they would adopt the usage of coins, eventually beginning to mint their own.")
})

DefineUpgrade("upgrade-teuton-writing", {
	Parent = "upgrade-writing",
	Civilization = "teuton",
	Icon = "icon-norse-runewriting"
})

DefineUpgrade("upgrade-teuton-alchemy", {
	Parent = "upgrade-alchemy",
	Civilization = "teuton",
	Description = "Once writing had been developed, observations on the basic substances that form the world could be noted down and more easily passed on. This led to the appearance of the discipline of alchemy, mixing esoteric, scientific and philosophical postulations about the elements from which the material world is composed.\n\nEffect: +1 Fire Damage for Scuzzos, +5 Fire Damage for Catapults."
})

DefineModifier("upgrade-teuton-spatha",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit-suebi-swordsman"},
	{"apply-to", "unit-teuton-ritter"}, {"apply-to", "unit-teuton-knight-lord"}
)

DefineModifier("upgrade-frank-spatha",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"},
	{"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
)

DefineModifier("upgrade-teuton-pike",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-spearman"}, {"apply-to", "unit-frank-spearman"}
)

DefineModifier("upgrade-teuton-iron-shield",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit-suebi-swordsman"},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"},
	{"apply-to", "unit-teuton-spearman"}, {"apply-to", "unit-frank-spearman"},
	{"apply-to", "unit-teuton-ritter"}, {"apply-to", "unit-teuton-knight-lord"}, {"apply-to", "unit-frank-horseman"}, {"apply-to", "unit-frank-knight-lord"}
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
	{"apply-to", "unit-teuton-farm"}, {"apply-to", "unit-latin-farm"}
)

DefineModifier("upgrade-teuton-masonry",
	{"HitPoints", 20, "Percent"},
	{"Armor", 5},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"},
	{"apply-to", "unit-teuton-farm"}, {"apply-to", "unit-teuton-barracks"},
	{"apply-to", "unit-teuton-lumber-mill"}, {"apply-to", "unit-teuton-smithy"},
	{"apply-to", "unit-teuton-stables"}, {"apply-to", "unit-teuton-temple"},
	{"apply-to", "unit-teuton-watch-tower"}, {"apply-to", "unit-teuton-guard-tower"},
	{"apply-to", "unit-teuton-dock"},
	{"apply-to", "unit-latin-town-hall"},
	{"apply-to", "unit-latin-farm"}, {"apply-to", "unit-latin-barracks"},
	{"apply-to", "unit-latin-smithy"},
	{"apply-to", "unit-latin-stables"}
)

DefineModifier("upgrade-teuton-coinage",
	{"improve-production", "copper", 10},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"},
	{"apply-to", "unit-latin-town-hall"}
)

DefineModifier("upgrade-teuton-writing",
	{"TimeEfficiencyBonus", 10},
	{"apply-to", "unit-teuton-town-hall"}, {"apply-to", "unit-teuton-stronghold"},
	{"apply-to", "unit-teuton-farm"}, {"apply-to", "unit-teuton-barracks"},
	{"apply-to", "unit-teuton-lumber-mill"}, {"apply-to", "unit-teuton-smithy"},
--	{"apply-to", "unit-teuton-stables"},
	{"apply-to", "unit-teuton-temple"},
	{"apply-to", "unit-teuton-watch-tower"}, {"apply-to", "unit-teuton-guard-tower"},
	{"apply-to", "unit-teuton-dock"},
	{"apply-to", "unit-latin-town-hall"},
	{"apply-to", "unit-latin-farm"}, {"apply-to", "unit-latin-barracks"},
	{"apply-to", "unit-latin-smithy"}
--	{"apply-to", "unit-latin-stables"}
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
	{"apply-to", "unit-germanic-temple"}, {"convert-to", "unit-teuton-temple"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-dock"}, {"convert-to", "unit-teuton-dock"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-worker"}, {"convert-to", "unit-teuton-worker"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-warrior"}, {"convert-to", "unit-teuton-swordsman"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-suebi-swordsman"}, {"convert-to", "unit-teuton-swordsman"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-veteran-warrior"}, {"convert-to", "unit-teuton-veteran-swordsman"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-chieftain"}, {"convert-to", "unit-teuton-heroic-swordsman"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-spearman"}, {"convert-to", "unit-teuton-spearman"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-archer"}, {"convert-to", "unit-teuton-archer"}
)

DefineModifier("upgrade-teuton-civilization",
	{"apply-to", "unit-germanic-transport-ship"}, {"convert-to", "unit-teuton-kogge"}
)

Load("scripts/civilizations/teuton/upgrade_faction.lua")

DefineDependency("unit-teuton-archer",
	{"unit-teuton-lumber-mill"}
)

DefineDependency("unit-teuton-guard-tower",
	{"unit-teuton-lumber-mill", "upgrade-teuton-masonry"}
)

DefineDependency("unit-teuton-catapult",
	{"unit-teuton-smithy", "unit-teuton-lumber-mill"}, "or", {"unit-latin-smithy", "unit-teuton-lumber-mill"}
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
	{"unit-teuton-barracks", "upgrade-teuton-masonry"}, "or", {"unit-latin-barracks", "upgrade-teuton-masonry"}
)

DefineDependency("upgrade-teuton-coinage",
	{"unit-teuton-smithy"}, "or", {"unit-latin-smithy"}
)

DefineDependency("upgrade-teuton-alchemy",
	{"upgrade-teuton-writing"}
)

DefineDependency("unit-teuton-stables",
	{"unit-teuton-lumber-mill"}
)

DefineDependency("unit-teuton-swordsman",
	{"upgrade-suebi-civilization", 0, "upgrade-frank-tribe-faction", 0}
)

DefineDependency("unit-frank-swordsman",
	{"upgrade-frank-tribe-faction"}
)

DefineDependency("unit-teuton-spearman",
	{"upgrade-frank-tribe-faction", 0}
)

DefineDependency("unit-frank-spearman",
	{"upgrade-frank-tribe-faction"}
)

DefineDependency("unit-teuton-ritter",
	{"unit-teuton-smithy", "unit-teuton-stables", "upgrade-frank-tribe-faction", 0, "upgrade-latin-civilization", 0}, "or", {"unit-latin-smithy", "unit-latin-stables"}
)

DefineDependency("unit-frank-horseman",
	{"unit-teuton-smithy", "unit-teuton-stables", "upgrade-frank-tribe-faction"}
)

DefineDependency("unit-teuton-town-hall",
	{"upgrade-teuton-civilization", "upgrade-latin-civilization", 0}, "or", {"upgrade-suebi-civilization", "upgrade-latin-civilization", 0}
)

DefineDependency("unit-teuton-farm",
	{"upgrade-latin-civilization", 0}
)

DefineDependency("unit-teuton-barracks",
	{"upgrade-latin-civilization", 0}
)

DefineDependency("unit-teuton-smithy",
	{"upgrade-latin-civilization", 0}
)

DefineDependency("unit-teuton-temple",
	{"unit-teuton-lumber-mill"}
)

DefineDependency("unit-teuton-dock",
	{"unit-teuton-lumber-mill"}
)

DefineDependency("unit-teuton-kogge",
	{"unit-teuton-lumber-mill"}
)
