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
--      (c) Copyright 2001-2017 by Lutz Sammer, Jimmy Salmon and Andrettin
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

DefineUpgrade("upgrade-melee-weapon-1", {
	Name = _("Melee Weapon 1"),
	Class = "melee-weapon-1",
	Weapon = true
})

DefineUpgrade("upgrade-broad-sword", {
	Name = _("Broad Sword"),
	Parent = "upgrade-melee-weapon-1",
	Costs = {"time", 200, "copper", 800},
	GrandStrategyCosts = {"time", 200, "copper", 800, "research", 800}
})

DefineUpgrade("upgrade-broad-axe", {
	Name = _("Broad Axe"),
	Parent = "upgrade-melee-weapon-1",
	Costs = {"time", 200, "copper", 500, "lumber", 300},
	GrandStrategyCosts = {"time", 200, "copper", 500, "lumber", 300, "research", 800}
})

DefineUpgrade("upgrade-melee-weapon-2", {
	Name = _("Melee Weapon 2"),
	Class = "melee-weapon-2",
	Weapon = true
})

DefineUpgrade("upgrade-long-sword", {
	Name = _("Long Sword"),
	Parent = "upgrade-melee-weapon-2",
	Costs = {"time", 250, "copper", 2400},
	RequirementsString = "Broad Sword",
	GrandStrategyCosts = {"time", 250, "copper", 2400, "research", 2400}
})

DefineUpgrade("upgrade-great-axe", {
	Name = _("Great Axe"),
	Parent = "upgrade-melee-weapon-2",
	Costs = {"time", 250, "copper", 1500, "lumber", 900},
	GrandStrategyCosts = {"time", 250, "copper", 1500, "lumber", 900, "research", 2400}
})

DefineUpgrade("upgrade-long-spear", {
	Name = _("Long Spear"),
	Class = "long-spear",
	Description = _("With the lengthening of spear shafts, soldiers who wield these weapons have greater reach against their enemies."),
	Icon = "icon-long-spear",
	Weapon = true,
	Costs = {"time", 200, "copper", 400, "lumber", 400},
	GrandStrategyCosts = {"time", 200, "copper", 400, "lumber", 400, "research", 800}
})

DefineUpgrade("upgrade-pike", {
	Name = "Pike",
	Class = "pike",
	Description = "Much longer than previous spears, pikes can be deadly when used by disciplined groups of soldiers.",
	Icon = "icon-pike",
	Weapon = true,
	Costs = {"time", 250, "copper", 1200, "lumber", 1200},
	RequirementsString = "Long Spear",
	GrandStrategyCosts = {"time", 250, "copper", 1200, "lumber", 1200, "research", 2400}
})

DefineUpgrade("upgrade-bronze-shield", {
	Name = _("Bronze Shield"),
	Class = "bronze-shield",
	Shield = true,
	Costs = {"time", 200, "copper", 300, "lumber", 900},
	GrandStrategyCosts = {"time", 200, "copper", 300, "lumber", 900, "research", 1200}
})

DefineUpgrade("upgrade-iron-shield", {
	Name = _("Iron Shield"),
	Class = "iron-shield",
	Shield = true,
	Costs = {"time", 250, "copper", 900, "lumber", 1500},
	GrandStrategyCosts = {"time", 250, "copper", 900, "lumber", 1500, "research", 2400}
})

DefineUpgrade("upgrade-ranged-projectile-1", {
	Name = _("Ranged Projectile 1"),
	Class = "ranged-projectile-1",
	Costs = {"time", 200, "copper", 300, "lumber", 900},
	GrandStrategyCosts = {"time", 200, "copper", 300, "lumber", 900, "research", 1200}
})

DefineUpgrade("upgrade-ranged-projectile-2", {
	Name = _("Ranged Projectile 2"),
	Class = "ranged-projectile-2",
	Costs = {"time", 250, "copper", 900, "lumber", 1500},
	GrandStrategyCosts = {"time", 250, "copper", 900, "lumber", 1500, "research", 2400}
})

DefineUpgrade("upgrade-siege-projectile-1", {
	Name = _("Siege Projectile 1"),
	Class = "siege-projectile-1"
})

DefineUpgrade("upgrade-catapult-granite-projectile", {
	Name = _("Catapult Granite Projectile"),
	Parent = "upgrade-siege-projectile-1",
	Icon = "icon-catapult-projectile-2",
	Costs = {"time", 250, "copper", 1000, "stone", 500},
	RequirementsString = "Lumber Mill",
	GrandStrategyCosts = {"time", 250, "copper", 1000, "stone", 500, "research", 1500}
})

DefineUpgrade("upgrade-broadhead-ballista-bolt", {
	Name = _("Broadhead Ballista Bolt"),
	Parent = "upgrade-siege-projectile-1",
	Costs = {"time", 250, "copper", 1000, "lumber", 500},
	RequirementsString = "Lumber Mill",
	GrandStrategyCosts = {"time", 250, "copper", 1000, "lumber", 500, "research", 1500}
})

DefineUpgrade("upgrade-siege-projectile-2", {
	Name = _("Siege Projectile 2"),
	Class = "siege-projectile-2"
})

DefineUpgrade("upgrade-catapult-metal-projectile", {
	Name = _("Catapult Metal Projectile"),
	Parent = "upgrade-siege-projectile-2",
	Icon = "icon-catapult-projectile-3",
	Costs = {"time", 250, "copper", 4000},
	RequirementsString = "Lumber Mill and Catapult Granite Projectile",
	GrandStrategyCosts = {"time", 250, "copper", 4000, "research", 4000}
})

DefineUpgrade("upgrade-penetrating-ballista-bolt", {
	Name = _("Penetrating Ballista Bolt"),
	Parent = "upgrade-siege-projectile-2",
	Costs = {"time", 250, "copper", 3000, "lumber", 1000},
	RequirementsString = "Lumber Mill and Broadhead Ballista Bolt",
	GrandStrategyCosts = {"time", 250, "copper", 3000, "lumber", 1000, "research", 4000}
})

DefineUpgrade("upgrade-wood-plow", {
	Name = _("Wood Plow"),
	Class = "wood-plow",
	Icon = "icon-wood-plow",
	Description = _("While at the dawn of agriculture seeds were simply spread over the soil, the invention of the plow allows farmers to more easily make furrows where seeds would be planted. This made way for the cultivation of heavier soils, and planting over larger areas became a more practical possibility.\n\nEffect: +1 Food supply for farms."),
	Costs = {"time", 200, "copper", 300, "lumber", 900},
	GrandStrategyCosts = {"time", 200, "copper", 300, "lumber", 900, "research", 1200},
	GrandStrategyProductionEfficiencyModifier = {"grain", 100, "mushrooms", 100}
})

DefineUpgrade("upgrade-iron-tipped-wood-plow", {
	Name = "Iron-Tipped Wood Plow",
	Class = "iron-tipped-wood-plow",
	Icon = "icon-iron-tipped-wood-plow",
	Description = "The use of plowshares made of iron greatly increases the plow's strength, allowing it to penetrate more deeply into the soil.\n\nEffect: +1 Food supply for farms.",
	Costs = {"time", 250, "copper", 900, "lumber", 1500},
	RequirementsString = "Wood Plow",
	GrandStrategyCosts = {"time", 250, "copper", 900, "lumber", 1500, "research", 2400},
	GrandStrategyProductionEfficiencyModifier = {"grain", 100, "mushrooms", 100}
})

DefineUpgrade("upgrade-masonry", {
	Name = "Masonry",
	Class = "masonry",
	Icon = "icon-masonry",
	Description = _("Masonry is the craft of building structures from blocks, which are bound together with mortar."),
	Costs = {"time", 250, "copper", 900, "lumber", 1000, "stone", 500},
	GrandStrategyCosts = {"time", 250, "copper", 900, "lumber", 1000, "stone", 500, "research", 2400}
})

DefineUpgrade("upgrade-coinage", {
	Name = "Coinage",
	Class = "coinage",
	Description = "While previously trade was conducted by trading one commodity for another, the introduction of currency provides a more practical means of exchange.\n\nEffect: +10% Copper, Silver and Gold Processing. -5% Trade Cost for Markets.",
	Costs = {"time", 250, "copper", 1500},
	RequirementsString = "Smithy",
	GrandStrategyCosts = {"time", 250, "copper", 1500, "research", 1500},
	GrandStrategyProductionEfficiencyModifier = {"gold", 10, "silver", 10, "copper", 10}
})

DefineUpgrade("upgrade-writing", {
	Name = "Writing",
	Class = "writing",
	Description = "The invention of writing makes it possible for ideas and traditions to be more easily spread and preserved.\n\nEffect: +10% Time Efficiency for all buildings. Allows Scrolls and Books to be sold at the Market.",
	Costs = {"time", 250, "copper", 900, "lumber", 1500},
	GrandStrategyCosts = {"time", 250, "copper", 900, "lumber", 1500, "research", 2400},
	GrandStrategyProductionEfficiencyModifier = {"research", 50, "leadership", 25}
})

DefineUpgrade("upgrade-alchemy", {
	Name = "Alchemy",
	Class = "alchemy",
	Icon = "icon-cauldron",
	Description = "Once writing had been developed, observations on the basic substances that form the world could be noted down and more easily passed on. This led to the appearance of the discipline of alchemy, mixing esoteric, scientific and philosophical postulations about the elements from which the material world is composed.",
	RequirementsString = "Writing",
	Costs = {"time", 250, "copper", 4000},
	GrandStrategyCosts = {"time", 250, "copper", 4000, "research", 4000}
})

DefineUpgrade("upgrade-printing-press", {
	Name = "Printing Press",
	Class = "printing-press",
	Description = "The invention of the printing press allowed knowledge to be more quickly and more efficiently spread.",
	Icon = "icon-printing-press",
	Costs = {"time", 250, "copper", 2000, "lumber", 2000},
	GrandStrategyCosts = {"time", 250, "copper", 2000, "lumber", 2000, "research", 4000},
	GrandStrategyProductionEfficiencyModifier = {"research", 25}
})

DefineUpgrade("upgrade-engineering", {
	Name = "Engineering",
	Class = "engineering",
	Civilization = "neutral",
	Icon = "icon-engineering",
	Description = "The development of engineering allows the creation of more complex mechanisms.\n\nEffect: Allows siege engines, railroads and minecarts.",
	RequirementsString = "Writing and Masonry",
	Costs = {"time", 250, "copper", 2000, "lumber", 2000}
})

DefineUpgrade("upgrade-steam-engine", {
	Name = "Steam Engine",
	Class = "steam-engine",
--	Description = "The invention of the printing press allowed knowledge to be more quickly and more efficiently spread.",
	Icon = "icon-printing-press",
	Costs = {"time", 250, "copper", 2000, "lumber", 2000}
})

-- Load the faction type upgrades
Load("scripts/upgrade_faction_types.lua")

-- Load the deity upgrades
Load("scripts/upgrade_deities.lua")

-- Law upgrades
Load("scripts/upgrade_laws.lua")

-- Load the upgrades of the different civilizations
Load("scripts/civilizations/celt/upgrade.lua")
Load("scripts/civilizations/dwarf/upgrade.lua")
Load("scripts/civilizations/egyptian/upgrade.lua")
Load("scripts/civilizations/ettin/upgrade.lua")
Load("scripts/civilizations/germanic/upgrade.lua")
Load("scripts/civilizations/anglo_saxon/upgrade.lua")
Load("scripts/civilizations/frankish/upgrade.lua")
Load("scripts/civilizations/gnome/upgrade.lua")
Load("scripts/civilizations/goblin/upgrade.lua")
Load("scripts/civilizations/greek/upgrade.lua")
Load("scripts/civilizations/kobold/upgrade.lua")
Load("scripts/civilizations/latin/upgrade.lua")
Load("scripts/civilizations/norse/upgrade.lua")
Load("scripts/civilizations/suebi/upgrade.lua")
Load("scripts/civilizations/teuton/upgrade.lua")

-- dependencies for neutral units
DefineDependency("unit-road",
	{"upgrade-dwarven-masonry"},
	"or", {"upgrade-goblin-masonry"},
	"or", {"upgrade-teuton-masonry"}
)

DefineDependency("unit-railroad",
	{"upgrade-engineering"}
)

DefineDependency("unit-minecart",
	{"upgrade-engineering"}
)

-- dependencies for neutral upgrades
DefineDependency("upgrade-engineering",
	{"upgrade-dwarven-runewriting", "upgrade-dwarven-masonry"},
	"or", {"upgrade-goblin-writing", "upgrade-goblin-masonry"},
	"or", {"upgrade-teuton-writing", "upgrade-teuton-masonry"}
)

-- dependencies for items
DefineDependency("unit-book",
	{"upgrade-dwarven-runewriting"},
	"or", {"upgrade-goblin-writing"},
	"or", {"upgrade-teuton-writing"}
)

DefineDependency("unit-scroll",
	{"upgrade-dwarven-runewriting"},
	"or", {"upgrade-goblin-writing"},
	"or", {"upgrade-teuton-writing"}
)

DefineDependency("unit-potion-of-healing",
	{"upgrade-dwarven-alchemy"},
	"or", {"upgrade-goblin-alchemy"},
	"or", {"upgrade-teuton-alchemy"}
)

DefineDependency("unit-elixir-of-dexterity",
	{"upgrade-dwarven-alchemy"},
	"or", {"upgrade-goblin-alchemy"},
	"or", {"upgrade-teuton-alchemy"}
)

DefineDependency("unit-elixir-of-intelligence",
	{"upgrade-dwarven-alchemy"},
	"or", {"upgrade-goblin-alchemy"},
	"or", {"upgrade-teuton-alchemy"}
)

DefineDependency("unit-elixir-of-strength",
	{"upgrade-dwarven-alchemy"},
	"or", {"upgrade-goblin-alchemy"},
	"or", {"upgrade-teuton-alchemy"}
)

DefineDependency("unit-short-sword",
	{"unit-germanic-smithy"},
	"or", {"unit-teuton-smithy"},
	"or", {"unit-latin-smithy"}
)

DefineDependency("unit-broad-sword",
	{"unit-germanic-smithy", "upgrade-germanic-broad-sword"},
	"or", {"unit-teuton-smithy", "upgrade-germanic-broad-sword"},
	"or", {"unit-latin-smithy", "upgrade-germanic-broad-sword"}
)

DefineDependency("unit-spatha",
	{"unit-teuton-smithy", "upgrade-teuton-spatha"},
	"or", {"unit-latin-smithy", "upgrade-teuton-spatha"}
)

DefineDependency("unit-frankish-spatha",
	{"unit-teuton-smithy", "upgrade-frank-spatha"}
)

DefineDependency("unit-goblin-short-sword",
	{"unit-goblin-smithy"}
)

DefineDependency("unit-goblin-broad-sword",
	{"unit-goblin-smithy", "upgrade-goblin-broad-sword"}
)

DefineDependency("unit-goblin-long-sword",
	{"unit-goblin-smithy", "upgrade-goblin-long-sword"}
)

DefineDependency("unit-thrusting-sword", -- gnomish
	{"unit-dwarven-smithy"}
)

DefineDependency("unit-battle-axe",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"}
)

DefineDependency("unit-broad-axe",
	{"unit-brising-smithy", "upgrade-dwarven-broad-axe"},
	"or", {"unit-dwarven-smithy", "upgrade-dwarven-broad-axe"}
)

DefineDependency("unit-great-axe",
	{"unit-brising-smithy", "upgrade-dwarven-great-axe"},
	"or", {"unit-dwarven-smithy", "upgrade-dwarven-great-axe"}
)

DefineDependency("unit-hammer",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"},
	"or", {"unit-germanic-smithy"},
	"or", {"unit-goblin-smithy"},
	"or", {"unit-latin-smithy"},
	"or", {"unit-teuton-smithy"}
)

DefineDependency("unit-mining-pick",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"},
	"or", {"unit-germanic-smithy"},
	"or", {"unit-goblin-smithy"},
	"or", {"unit-latin-smithy"},
	"or", {"unit-teuton-smithy"}
)

DefineDependency("unit-short-spear",
	{"unit-dwarven-lumber-mill"},
	"or", {"unit-germanic-carpenters-shop"},
	"or", {"unit-goblin-lumber-mill"},
	"or", {"unit-teuton-lumber-mill"}
)

DefineDependency("unit-long-spear",
	{"unit-dwarven-lumber-mill", "upgrade-dwarven-long-spear"},
	"or", {"unit-germanic-carpenters-shop", "upgrade-germanic-long-spear"},
	"or", {"unit-goblin-lumber-mill", "upgrade-goblin-long-spear"},
	"or", {"unit-teuton-lumber-mill", "upgrade-germanic-long-spear"}
)

DefineDependency("unit-pike",
	{"unit-dwarven-lumber-mill", "upgrade-dwarven-pike"},
	"or", {"unit-goblin-lumber-mill", "upgrade-goblin-pike"},
	"or", {"unit-teuton-lumber-mill", "upgrade-teuton-pike"}
)

DefineDependency("unit-throwing-axe",
	{"unit-dwarven-lumber-mill"}
)

DefineDependency("unit-sharp-throwing-axe",
	{"unit-dwarven-lumber-mill", "upgrade-dwarven-sharp-throwing-axe"}
)

DefineDependency("unit-bearded-throwing-axe",
	{"unit-dwarven-lumber-mill", "upgrade-dwarven-bearded-throwing-axe"}
)

DefineDependency("unit-wooden-shield",
	{"unit-germanic-smithy"},
	"or", {"unit-teuton-smithy"},
	"or", {"unit-latin-smithy"}
)

DefineDependency("unit-bronze-shield",
	{"unit-germanic-smithy", "upgrade-germanic-bronze-shield"},
	"or", {"unit-teuton-smithy", "upgrade-germanic-bronze-shield"},
	"or", {"unit-latin-smithy", "upgrade-germanic-bronze-shield"}
)

DefineDependency("unit-iron-shield",
	{"unit-teuton-smithy", "upgrade-teuton-iron-shield"},
	"or", {"unit-latin-smithy", "upgrade-teuton-iron-shield"}
)

DefineDependency("unit-goblin-wooden-shield",
	{"unit-goblin-smithy"}
)

DefineDependency("unit-goblin-rimmed-shield",
	{"unit-goblin-smithy", "upgrade-goblin-rimmed-shield"}
)

DefineDependency("unit-goblin-embossed-shield",
	{"unit-goblin-smithy", "upgrade-goblin-embossed-shield"}
)

DefineDependency("unit-kite-shield",
	{"unit-teuton-smithy", "upgrade-teuton-iron-shield"}
)

DefineDependency("unit-round-shield",
	{"unit-dwarven-smithy"}
)

DefineDependency("unit-brising-round-shield",
	{"unit-brising-smithy"}
)

DefineDependency("unit-heater-shield",
	{"unit-brising-smithy", "upgrade-dwarven-shield-1"},
	"or", {"unit-dwarven-smithy", "upgrade-dwarven-shield-1"}
)

DefineDependency("unit-thrymgjol-shield",
	{"unit-brising-smithy", "upgrade-dwarven-shield-2"},
	"or", {"unit-dwarven-smithy", "upgrade-dwarven-shield-2"}
)

DefineDependency("unit-horn",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"},
	"or", {"unit-germanic-smithy"},
	"or", {"unit-goblin-smithy"},
	"or", {"unit-latin-smithy"},
	"or", {"unit-teuton-smithy"}
)

DefineDependency("unit-arrows",
	{"unit-germanic-carpenters-shop"},
	"or", {"unit-goblin-lumber-mill"},
	"or", {"unit-teuton-lumber-mill"}
)

DefineDependency("unit-barbed-arrows",
	{"unit-germanic-carpenters-shop", "upgrade-germanic-barbed-arrow"},
	"or", {"unit-goblin-lumber-mill", "upgrade-goblin-barbed-arrow"},
	"or", {"unit-teuton-lumber-mill", "upgrade-germanic-barbed-arrow"}
)

DefineDependency("unit-bodkin-arrows",
	{"unit-goblin-lumber-mill", "upgrade-goblin-bodkin-arrow"},
	"or", {"unit-teuton-lumber-mill", "upgrade-teuton-bodkin-arrow"}
)

DefineDependency("unit-amulet",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"},
	"or", {"unit-germanic-smithy"},
	"or", {"unit-goblin-smithy"},
	"or", {"unit-latin-smithy"},
	"or", {"unit-teuton-smithy"}
)

DefineDependency("unit-ring",
	{"unit-brising-smithy"},
	"or", {"unit-dwarven-smithy"},
	"or", {"unit-germanic-smithy"},
	"or", {"unit-goblin-smithy"},
	"or", {"unit-latin-smithy"},
	"or", {"unit-teuton-smithy"}
)

-- dependencies for deity upgrades that require a certain upgrade
DefineDependency("upgrade-deity-christian-god",
	{"upgrade-teuton-writing"}
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
	u.Ability = false
	DefineAllow(misc_individual_upgrades[i][1], "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA")
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
Load("scripts/elixirs.lua")
Load("scripts/works.lua")

DefineUpgrade("upgrade-character-deity", {
	Name = _("Deity Character Upgrade"),
	Icon = "icon-level-up"
})

DefineUpgrade("upgrade-kvasir-character", {
	Name = _("Kvasir Character Upgrade"),
	Icon = "icon-kvasir"
})

DefineModifier("upgrade-character-deity",
	{"FireResistance", 100},
	{"ColdResistance", 100},
	{"ArcaneResistance", 100},
	{"LightningResistance", 100},
	{"AirResistance", 100},
	{"EarthResistance", 100},
	{"WaterResistance", 100},
	{"HackResistance", 100},
	{"PierceResistance", 100},
	{"BluntResistance", 100},
	{"HitPoints", 1, "Increase"}
)

DefineModifier("upgrade-kvasir-character",
	{"FireResistance", 100},
	{"ColdResistance", 100},
	{"ArcaneResistance", 100},
	{"LightningResistance", 100},
	{"AirResistance", 100},
	{"EarthResistance", 100},
	{"WaterResistance", 100},
--	{"HackResistance", 100},
--	{"PierceResistance", 100},
	{"BluntResistance", 100},
	{"HitPoints", 1, "Increase"}
)
