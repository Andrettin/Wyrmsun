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

-- Deity Domain Upgrades

-- The Five Classical Elements

DefineUpgrade("upgrade-deity-domain-air", {
	Name = "Air"
})

DefineUpgrade("upgrade-deity-domain-earth", {
	Name = "Earth"
})

DefineUpgrade("upgrade-deity-domain-fire", {
	Name = "Fire"
})

DefineUpgrade("upgrade-deity-domain-water", {
	Name = "Water"
})

DefineUpgrade("upgrade-deity-domain-aether", {
	Name = "Aether"
})

-- Chinese Elements (which aren't present in the classical ones)

DefineUpgrade("upgrade-deity-domain-metal", {
	Name = "Metal"
})

DefineUpgrade("upgrade-deity-domain-wood", {
	Name = "Wood"
})

-- Other Elements

DefineUpgrade("upgrade-deity-domain-cold", {
	Name = "Cold"
})

DefineUpgrade("upgrade-deity-domain-lightning", {
	Name = "Lightning"
})

-- Chaos and Order

DefineUpgrade("upgrade-deity-domain-chaos", {
	Name = "Chaos"
})

DefineUpgrade("upgrade-deity-domain-order", {
	Name = "Order"
})

-- Life and Death

DefineUpgrade("upgrade-deity-domain-death", {
	Name = "Death"
})

DefineUpgrade("upgrade-deity-domain-life", {
	Name = "Life"
})

-- Darkness and Light (Yin and Yang)

DefineUpgrade("upgrade-deity-domain-darkness", {
	Name = "Darkness"
})

DefineUpgrade("upgrade-deity-domain-light", {
	Name = "Light"
})

-- Sun and Moon

DefineUpgrade("upgrade-deity-domain-sun", {
	Name = "Sun"
})

DefineUpgrade("upgrade-deity-domain-moon", {
	Name = "Moon"
})

-- Four Cardinal Virtues

DefineUpgrade("upgrade-deity-domain-courage", {
	Name = "Courage"
})

DefineUpgrade("upgrade-deity-domain-justice", {
	Name = "Justice"
})

DefineUpgrade("upgrade-deity-domain-temperance", {
	Name = "Temperance"
})

DefineUpgrade("upgrade-deity-domain-wisdom", {
	Name = "Wisdom"
})

-- Three Theological Virtues

DefineUpgrade("upgrade-deity-domain-charity", {
	Name = "Charity"
})

DefineUpgrade("upgrade-deity-domain-faith", {
	Name = "Faith"
})

DefineUpgrade("upgrade-deity-domain-hope", {
	Name = "Hope"
})

-- Other Virtues

DefineUpgrade("upgrade-deity-domain-love", {
	Name = "Love"
})

-- Seven Sins

DefineUpgrade("upgrade-deity-domain-envy", {
	Name = "Envy"
})

DefineUpgrade("upgrade-deity-domain-gluttony", {
	Name = "Gluttony"
})

DefineUpgrade("upgrade-deity-domain-greed", {
	Name = "Greed"
})

DefineUpgrade("upgrade-deity-domain-lust", {
	Name = "Lust"
})

DefineUpgrade("upgrade-deity-domain-pride", {
	Name = "Pride"
})

DefineUpgrade("upgrade-deity-domain-sloth", {
	Name = "Sloth"
})

DefineUpgrade("upgrade-deity-domain-wrath", {
	Name = "Wrath"
})

-- Skills

DefineUpgrade("upgrade-deity-domain-archery", {
	Name = "Archery"
})

DefineUpgrade("upgrade-deity-domain-metalworking", {
	Name = "Metalworking"
})

DefineUpgrade("upgrade-deity-domain-poetry", {
	Name = "Poetry"
})

DefineUpgrade("upgrade-deity-domain-warfare", {
	Name = "Warfare"
})

-- Deity Upgrades

-- Christianity

DefineUpgrade("upgrade-deity-christian-god", {
--	Name = "Christian God",
	Name = "Christianity",
	Icon = "icon-christianity",
	Costs = {"time", 120, "copper", 750},
	RequirementsString = "Writing"
})

-- Aesir

DefineUpgrade("upgrade-deity-odin", {
	Name = "Odin",
	Icon = "icon-odin",
	Costs = {"time", 120, "copper", 750}
})

DefineUpgrade("upgrade-deity-thor", {
	Name = "Thor",
	Icon = "icon-thor",
	Costs = {"time", 120, "copper", 750}
})

-- Goblin Deities

DefineUpgrade("upgrade-deity-gathaarl", {
	Name = "Gathaarl",
	Icon = "icon-gathaarl",
	Costs = {"time", 120, "copper", 750}
})

-- Modifiers

DefineModifier("upgrade-deity-christian-god",
	{"HitPoints", 10},
	{"Mana", 20},
	{"Points", 20},
	{"apply-to", "unit-teuton-priest"}
)

DefineModifier("upgrade-deity-christian-god",
	{"remove-upgrade", "upgrade-deity-odin"}, {"remove-upgrade", "upgrade-deity-thor"}
)

DefineModifier("upgrade-deity-christian-god", -- dummy upgrade modifier to change variation
	{"apply-to", "unit-teuton-temple"}
)

DefineModifier("upgrade-deity-gathaarl",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"}
)

DefineModifier("upgrade-deity-gathaarl", -- dummy upgrade modifier to change starting abilities
	{"apply-to", "unit-goblin-shaman"}
)

DefineModifier("upgrade-deity-odin",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-archer"}, {"apply-to", "unit-teuton-archer"},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-deity-odin",
	{"remove-upgrade", "upgrade-deity-thor"}, {"remove-upgrade", "upgrade-deity-christian-god"}
)

DefineModifier("upgrade-deity-odin",
	{"apply-to", "unit-germanic-priest"}, {"apply-to", "unit-teuton-priest"}, {"apply-to", "unit-dwarven-witness"},
	{"apply-to", "unit-teuton-temple"}
)

DefineModifier("upgrade-deity-thor",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"}, {"apply-to", "unit-germanic-veteran-warrior"}, {"apply-to", "unit-germanic-chieftain"},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit-suebi-swordsman"},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}, {"apply-to", "unit-dwarven-explorer"}
)

DefineModifier("upgrade-deity-thor",
	{"remove-upgrade", "upgrade-deity-odin"}, {"remove-upgrade", "upgrade-deity-christian-god"}
)

DefineModifier("upgrade-deity-thor",
	{"apply-to", "unit-germanic-priest"}, {"apply-to", "unit-teuton-priest"}, {"apply-to", "unit-dwarven-witness"},
	{"apply-to", "unit-teuton-temple"}
)

-- Spell Upgrade Dependencies
DefineDependency("upgrade-healing",
	{"upgrade-deity-christian-god"}
)

DefineDependency("upgrade-inspire",
	{"upgrade-deity-odin"}
)

DefineDependency("upgrade-precision",
	{"upgrade-deity-thor"}
)

DefineDependency("upgrade-terror",
	{"upgrade-deity-gathaarl"}
)
