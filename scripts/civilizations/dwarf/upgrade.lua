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
--      (c) Copyright 2013-2017 by Andrettin
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

DefineUpgrade("upgrade-dwarven-civilization", {
	Name = "Dwarven Civilization"
})

DefineUpgrade("upgrade-dwarven-broad-axe", {
	Parent = "upgrade-broad-axe",
	Icon = "icon-dwarven-broad-axe",
	Civilization = "dwarf",
	Description = "Dwarven smiths work hard at their craft to improve soldiers' weapons, and with the perfecting of smithing techniques the broadening of axe blades becomes possible.\n\nEffect: +2 Damage for Axefighters and Yale Riders. Allows Broad Axes to be sold at the Market.",
	Item = "unit-broad-axe"
})

DefineUpgrade("upgrade-dwarven-great-axe", {
	Parent = "upgrade-great-axe",
	Icon = "icon-dwarven-great-axe",
	Civilization = "dwarf",
	RequirementsString = "Broad Axe",
	Description = "Further innovations in dwarven smithing allow axes to be made sturdier, and often to carry double blades.\n\nEffect: +2 Damage for Axefighters and Yale Riders. Allows Great Axes to be sold at the Market.",
	Item = "unit-great-axe"
})

DefineUpgrade("upgrade-dwarven-long-spear", {
	Parent = "upgrade-long-spear",
	Civilization = "dwarf",
	Description = "With the lengthening of spear shafts, soldiers who wield these weapons have greater reach against their enemies.\n\nEffect: +2 Damage for Guards. Allows Long Spears to be sold at the Market.",
	Item = "unit-long-spear"
})

DefineUpgrade("upgrade-dwarven-pike", {
	Parent = "upgrade-pike",
	Civilization = "dwarf",
	Description = "Much longer than previous spears, pikes can be deadly when used by disciplined groups of soldiers.\n\nEffect: +2 Damage for Guards. Allows Pikes to be sold at the Market.",
	Item = "unit-pike"
})

DefineUpgrade("upgrade-dwarven-shield-1", {
	Name = "Heater Shield",
	Parent = "upgrade-bronze-shield",
	Icon = "icon-dwarven-shield-2",
	Civilization = "dwarf",
	Description = "Earlier shields provided little more than a minimal degree of protection. With the development of heater shields, dwarven soldiers have a greater chance of survival in battle.\n\nEffect: +2 Armor for Axefighters, Guards and Yale Riders. Allows Heater Shields to be sold at the Market.",
	Item = "unit-heater-shield"
})

DefineUpgrade("upgrade-dwarven-shield-2", {
	Name = "Thrymgjol Shield",
	Parent = "upgrade-iron-shield",
	Icon = "icon-dwarven-shield-3",
	Civilization = "dwarf",
	RequirementsString = "Heater Shield",
	Description = "As shield-making techniques improved, the creation of thrymgjol shields became possible. These shields receive their name from the impregnable gate crafted by the sons of the dwarf Solblindi, due to the mighty protection they give their users.\n\nEffect: +2 Armor for Axefighters, Guards and Yale Riders. Allows Thrymgjol Shields to be sold at the Market.",
	Background = "The Thrymgjol gate and its makers, the sons of the dwarf Solblindi, are mentioned in the ~<Svipdagsmol~> of Norse mythology. The name \"Thrymgjol\" means \"loud-clanging\".",
	Quote = "\"Thrymgjol they call it; 'twas made by the three,\nThe sons of Solblindi;\nAnd fast as a fetter the farer it holds,\nWhoever shall lift the latch.\"\n- Dwarven Traditional Poetry (The Warder)",
	Item = "unit-thrymgjol-shield"
})

DefineUpgrade("upgrade-dwarven-sharp-throwing-axe", {
	Name = "Sharp Throwing Axe",
	Parent = "upgrade-ranged-projectile-1",
	Icon = "icon-dwarven-sharp-throwing-axe",
	Civilization = "dwarf",
	Description = "As their craftsmanship progresses, dwarven artisans become capable of improving the basic throwing axe to have sharper blades.\n\nEffect: +2 Damage for Scouts and Gryphon Riders. Allows Sharp Throwing Axes to be sold at the Market.",
	Weapon = true,
	Item = "unit-sharp-throwing-axe"
})

DefineUpgrade("upgrade-dwarven-bearded-throwing-axe", {
	Name = "Bearded Throwing Axe",
	Parent = "upgrade-ranged-projectile-2",
	Icon = "icon-dwarven-bearded-throwing-axe",
	Civilization = "dwarf",
	RequirementsString = "Sharp Throwing Axe",
	Description = "The 'bearding' of throwing axes by extending the bottom of their blades is an innovation which makes them more deadly when thrown.\n\nEffect: +2 Damage for Scouts and Gryphon Riders. Allows Bearded Throwing Axes to be sold at the Market.",
	Weapon = true,
	Item = "unit-bearded-throwing-axe"
})

DefineUpgrade("upgrade-dwarven-ballista-bolt-1", {
	Parent = "upgrade-broadhead-ballista-bolt",
	Icon = "icon-dwarven-ballista-bolt-2",
	Civilization = "dwarf",
	Description = "While the earliest dwarven ballista bolts had been little more than tree trunks cut to have more penetrating effect, these bolts exhibit a broad metal head capable of slicing enemy foes and structures alike.\n\nEffect: +15 Damage for Ballistas."
})

DefineUpgrade("upgrade-dwarven-ballista-bolt-2", {
	Parent = "upgrade-penetrating-ballista-bolt",
	Icon = "icon-dwarven-ballista-bolt-3",
	Civilization = "dwarf",
	Description = "Although the slicing power of broadhead ballista bolts was a great improvement over previous bolts, it was still far from ideal. Th penetrating ballista bolts instead do not slice their targets, but concentrate their might on a single point, maximizing puncturing power and thus their capability to breach enemy walls.\n\nEffect: +15 Damage for Ballistas."
})

DefineUpgrade("upgrade-dwarven-wood-plow", {
	Parent = "upgrade-wood-plow",
	Civilization = "dwarf"
})

DefineUpgrade("upgrade-dwarven-iron-tipped-wood-plow", {
	Parent = "upgrade-iron-tipped-wood-plow",
	Civilization = "dwarf"
})

DefineUpgrade("upgrade-dwarven-masonry", {
	Parent = "upgrade-masonry",
	Civilization = "dwarf",
	Description = "Masonry is the craft of building structures from blocks, which are bound together with mortar.\n\nEffect: +20% Hit Points, +5 Armor and -25% Salvage Factor for buildings, enables Road and Wall construction, and allows Sentry Towers to be upgraded to Guard Towers and Mead Halls to Bastions.",
	Costs = {"time", 250, "copper", 900, "lumber", 0, "stone", 1500}
})

DefineUpgrade("upgrade-dwarven-coinage", {
	Parent = "upgrade-coinage",
	Civilization = "dwarf",
	Icon = "icon-dwarven-coinage"
})

DefineUpgrade("upgrade-dwarven-runewriting", {
	Name = "Dvalic Runewriting",
	Parent = "upgrade-writing",
	Civilization = "dwarf",
	Description = "The dwarven system of runewriting is said to have been invented by the dwarven scholar, Dvalin.\n\nEffect: +10% Research Speed for buildings. Allows Scrolls and Books to be sold at the Market.",
	Background = "In the Poetic Edda's ~<Hovamol~>, Dvalin is mentioned as the one who bestowed the knowledge of runes upon the dwarves.",
	Icon = "icon-norse-runewriting"
})

DefineUpgrade("upgrade-dwarven-alchemy", {
	Parent = "upgrade-alchemy",
	Civilization = "dwarf",
	Description = "Once writing had been developed, observations on the basic substances that form the world could be noted down and more easily passed on. This led to the appearance of the discipline of alchemy, mixing esoteric, scientific and philosophical postulations about the elements from which the material world is composed.\n\nEffect: +1 Fire Damage for Scouts, Pathfinders, Explorers and Gryphon Riders, +5 Fire Damage for Ballistas and Ballista Warships. Allows new magic affixes for items sold at the Market. Allows potions and elixirs to be sold at the Market."
})

DefineModifier("upgrade-dwarven-broad-axe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-militia"}, 
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-yale-rider"}, {"apply-to", "unit-dwarven-yale-lord"},
	{"apply-to", "unit-joruvellir-yale-rider"}, {"apply-to", "unit-joruvellir-yale-lord"},
	{"apply-to", "unit-brising-militia"},
	{"apply-to", "unit-surghan-mercenary-axefighter"}, {"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"}
)

DefineModifier("upgrade-dwarven-great-axe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-militia"}, 
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-yale-rider"}, {"apply-to", "unit-dwarven-yale-lord"},
	{"apply-to", "unit-joruvellir-yale-rider"}, {"apply-to", "unit-joruvellir-yale-lord"},
	{"apply-to", "unit-brising-militia"},
	{"apply-to", "unit-surghan-mercenary-axefighter"}, {"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"}
)

DefineModifier("upgrade-dwarven-long-spear",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-guard"}
)

DefineModifier("upgrade-dwarven-pike",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-guard"}
)

DefineModifier("upgrade-dwarven-shield-1",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-guard"},
	{"apply-to", "unit-dwarven-yale-rider"}, {"apply-to", "unit-dwarven-yale-lord"},
	{"apply-to", "unit-joruvellir-yale-rider"}, {"apply-to", "unit-joruvellir-yale-lord"},
	{"apply-to", "unit-brising-militia"},
	{"apply-to", "unit-surghan-mercenary-axefighter"}, {"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"}
)

DefineModifier("upgrade-dwarven-shield-2",
	{"Armor", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-militia"},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-dwarven-guard"},
	{"apply-to", "unit-dwarven-yale-rider"}, {"apply-to", "unit-dwarven-yale-lord"},
	{"apply-to", "unit-joruvellir-yale-rider"}, {"apply-to", "unit-joruvellir-yale-lord"},
	{"apply-to", "unit-brising-militia"},
	{"apply-to", "unit-surghan-mercenary-axefighter"}, {"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"}
)

DefineModifier("upgrade-dwarven-sharp-throwing-axe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}, {"apply-to", "unit-dwarven-explorer"}, {"apply-to", "unit-dwarven-gryphon-rider"},
	{"apply-to", "unit-joruvellir-scout"}, {"apply-to", "unit-joruvellir-pathfinder"}, {"apply-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade-dwarven-bearded-throwing-axe",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}, {"apply-to", "unit-dwarven-explorer"}, {"apply-to", "unit-dwarven-gryphon-rider"},
	{"apply-to", "unit-joruvellir-scout"}, {"apply-to", "unit-joruvellir-pathfinder"}, {"apply-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade-dwarven-ballista-bolt-1",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-dwarven-ballista"}
)

DefineModifier("upgrade-dwarven-ballista-bolt-1",
	{"BasicDamage", 5},
	{"Points", 10},
	{"apply-to", "unit-dwarven-ballista-warship"}
)

DefineModifier("upgrade-dwarven-ballista-bolt-2",
	{"BasicDamage", 15},
	{"Points", 10},
	{"apply-to", "unit-dwarven-ballista"}
)

DefineModifier("upgrade-dwarven-ballista-bolt-2",
	{"BasicDamage", 5},
	{"Points", 10},
	{"apply-to", "unit-dwarven-ballista-warship"}
)

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
	{"SalvageFactor", -25},
	{"Points", 10},
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"},
	{"apply-to", "unit-dwarven-mushroom-farm"}, {"apply-to", "unit-dwarven-barracks"},
	{"apply-to", "unit-dwarven-lumber-mill"}, {"apply-to", "unit-dwarven-smithy"}, {"apply-to", "unit-brising-smithy"},
	{"apply-to", "unit-dwarven-masons-shop"},
	{"apply-to", "unit-dwarven-yale-pen"}, {"apply-to", "unit-joruvellir-yale-pen"},
	{"apply-to", "unit-dwarven-temple"}, {"apply-to", "unit-dwarven-market"},
	{"apply-to", "unit-dwarven-academy"},
	{"apply-to", "unit-dwarven-sentry-tower"}, {"apply-to", "unit-dwarven-guard-tower"},
	{"apply-to", "unit-dwarven-dock"}
)

DefineModifier("upgrade-dwarven-coinage",
	{"improve-production", "copper", 10},
	{"apply-to", "unit-dwarven-smithy"}, {"apply-to", "unit-brising-smithy"}
)

DefineModifier("upgrade-dwarven-coinage",
	{"TradeCost", -5},
	{"apply-to", "unit-dwarven-market"}
)

DefineModifier("upgrade-dwarven-runewriting",
	{"ResearchSpeedBonus", 10},
	{"apply-to", "unit-dwarven-town-hall"}, {"apply-to", "unit-dwarven-stronghold"},
	{"apply-to", "unit-dwarven-barracks"},
	{"apply-to", "unit-dwarven-lumber-mill"}, {"apply-to", "unit-dwarven-smithy"}, {"apply-to", "unit-brising-smithy"},
	{"apply-to", "unit-dwarven-masons-shop"},
--	{"apply-to", "unit-dwarven-yale-pen"}, {"apply-to", "unit-joruvellir-yale-pen"},
--	{"apply-to", "unit-dwarven-market"},
	{"apply-to", "unit-dwarven-temple"}, {"apply-to", "unit-dwarven-academy"}
--	{"apply-to", "unit-dwarven-dock"}
)

DefineModifier("upgrade-dwarven-alchemy",
	{"FireDamage", 1},
	{"Points", 10},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}, {"apply-to", "unit-dwarven-explorer"}, {"apply-to", "unit-dwarven-gryphon-rider"},
	{"apply-to", "unit-joruvellir-scout"}, {"apply-to", "unit-joruvellir-pathfinder"}, {"apply-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade-dwarven-alchemy",
	{"FireDamage", 5},
	{"Points", 5},
	{"apply-to", "unit-dwarven-ballista"}, {"apply-to", "unit-dwarven-ballista-warship"}
)
