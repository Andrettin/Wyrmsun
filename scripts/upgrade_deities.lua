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
--      (c) Copyright 2017-2020 by Andrettin
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

DefineUpgrade("upgrade-deity-domain-ice", {
	Name = "Ice"
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

-- Other Sins

DefineUpgrade("upgrade-deity-domain-fear", {
	Name = "Fear"
})

-- Skills

DefineUpgrade("upgrade-deity-domain-archery", {
	Name = "Archery"
})

DefineUpgrade("upgrade-deity-domain-magic", {
	Name = "Magic"
})

DefineUpgrade("upgrade-deity-domain-metalworking", {
	Name = "Metalworking"
})

DefineUpgrade("upgrade-deity-domain-poetry", {
	Name = "Poetry"
})

DefineUpgrade("upgrade-deity-domain-trickery", {
	Name = "Trickery"
})

DefineUpgrade("upgrade-deity-domain-warfare", {
	Name = "Warfare"
})

DefineUpgrade("upgrade-deity-domain-watch", {
	Name = "Watch"
})

-- Deity Upgrades

-- Christianity

DefineUpgrade("upgrade-deity-christian-god", {
--	Name = "Christian God",
	Name = "Christianity",
	Icon = "icon-christianity",
	Costs = {"time", 250, "copper", 3000},
	RequirementsString = "Writing",
	CivilizationPriorities = {
		"anglo-saxon", 200,
		"english", 200,
		"frankish", 200,
		"goth", 200,
		"suebi", 200,
		"teuton", 200
	}
})

-- Aesir Deities

DefineUpgrade("upgrade-deity-odin", {
	Name = "Odin",
	Icon = "icon-odin",
	Costs = {"time", 200, "copper", 1500},
	FactionPriorities = {
		"dere-tribe", 150,
		"skeldung-tribe", 200,
		"deira", 150
	}
})

DefineUpgrade("upgrade-deity-thor", {
	Name = "Thor",
	Icon = "icon-thor",
	Costs = {"time", 200, "copper", 1500},
	FactionPriorities = {
		"hlesing-tribe", 50,
		"thielung-tribe", 200
	}
})

DefineUpgrade("upgrade-deity-loki", {
	Name = "Loki",
	Icon = "icon-loki",
	Costs = {"time", 200, "copper", 1500}
})

DefineUpgrade("upgrade-deity-heimdall", {
	Name = "Heimdall",
	Icon = "icon-heimdall",
	Costs = {"time", 200, "copper", 1500},
	RequirementsString = "Odin, Thor or Loki",
	FactionPriorities = {
		"hersing-tribe", 125,
		"jarling-tribe", 200,
		"karling-tribe", 200,
		"thralling-tribe", 200
	}
})

DefineUpgrade("upgrade-deity-hel", {
	Name = "Hel",
	Icon = "icon-hel",
	Costs = {"time", 200, "copper", 1500},
	RequirementsString = "Odin, Thor, Loki or Gathaarl",
	FactionPriorities = {
		"kal-kartha", 200
	}
})

DefineUpgrade("upgrade-deity-tyr", {
	Name = "Tyr",
	Icon = "icon-tyr",
	Costs = {"time", 200, "copper", 1500},
	RequirementsString = "Odin, Thor or Loki",
	CivilizationPriorities = {
		"anglo-saxon", 150,
		"dwarf", 150,
		"english", 150,
		"frankish", 150,
		"germanic", 150,
		"goth", 150,
		"suebi", 150,
		"teuton", 150
	}
})

-- Goblin Deities

DefineUpgrade("upgrade-deity-gathaarl", {
	Name = "Gathaarl",
	Icon = "icon-gathaarl",
	Costs = {"time", 200, "copper", 1500}
})

-- Olympian Deities

DefineUpgrade("upgrade-deity-apollo", {
	Name = "Apollo",
	Icon = "icon-odin",
	Costs = {"time", 200, "copper", 1500}
})

DefineUpgrade("upgrade-deity-hermes", {
	Name = "Hermes",
	Icon = "icon-odin",
	Costs = {"time", 200, "copper", 1500}
})

DefineUpgrade("upgrade-deity-poseidon", {
	Name = "Poseidon",
	Icon = "icon-odin",
	Costs = {"time", 200, "copper", 1500}
})

-- Modifiers

DefineModifier("upgrade-deity-christian-god",
	{"HitPoints", 10},
	{"Mana", 20},
	{"Points", 20},
	{"apply-to", "unit-teuton-priest"}
)

DefineModifier("upgrade-deity-christian-god",
	{"remove-upgrade", "upgrade-deity-apollo"}, {"remove-upgrade", "upgrade-deity-hermes"}, {"remove-upgrade", "upgrade-deity-poseidon"},
	{"remove-upgrade", "upgrade-deity-odin"}, {"remove-upgrade", "upgrade-deity-thor"}, {"remove-upgrade", "upgrade-deity-loki"}, {"remove-upgrade", "upgrade-deity-frey"}, {"remove-upgrade", "upgrade-deity-freyja"}, {"remove-upgrade", "upgrade-deity-heimdall"}, {"remove-upgrade", "upgrade-deity-hel"}, {"remove-upgrade", "upgrade-deity-tyr"}
)

DefineModifier("upgrade-deity-christian-god", -- dummy upgrade modifier to change variation
	{"apply-to", "unit-teuton-priest"}, {"apply-to", "unit-teuton-temple"}
)

DefineModifier("upgrade-deity-gathaarl",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-goblin-swordsman"}, {"apply-to", "unit-goblin-barbarian"}, {"apply-to", "unit-goblin-warlord"}
)

DefineModifier("upgrade-deity-gathaarl", -- dummy upgrade modifier to change starting abilities
	{"apply-to", "unit-goblin-shaman"}
)

DefineModifier("upgrade-deity-heimdall",
	{"SightRange", 1},
	{"Points", 10},
	{"apply-to", "unit-germanic-archer"}, {"apply-to", "unit-teuton-archer"},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}, {"apply-to", "unit-dwarven-explorer"},
	{"apply-to", "unit-joruvellir-scout"}, {"apply-to", "unit-joruvellir-pathfinder"}, {"apply-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade-deity-heimdall",
	{"remove-upgrade", "upgrade-deity-hel"}, {"remove-upgrade", "upgrade-deity-tyr"}
)

DefineModifier("upgrade-deity-heimdall", -- dummy upgrade modifier to change starting abilities
	{"apply-to", "unit-germanic-priest"}, {"apply-to", "unit-teuton-priest"}
)

DefineModifier("upgrade-deity-hel",
	{"Mana", 20},
	{"Points", 10},
	{"apply-to", "unit-germanic-priest"}, {"apply-to", "unit-teuton-priest"},
	{"apply-to", "unit-dwarven-witness"}, {"apply-to", "unit-dwarven-annalist"}, {"apply-to", "unit-dwarven-loremaster"},
	{"apply-to", "unit-goblin-shaman"}
)

DefineModifier("upgrade-deity-hel",
	{"remove-upgrade", "upgrade-deity-heimdall"}, {"remove-upgrade", "upgrade-deity-tyr"}
)

DefineModifier("upgrade-deity-hel", -- dummy upgrade modifier to change starting abilities
	{"apply-to", "unit-germanic-priest"},
	{"apply-to", "unit-teuton-priest"},
	{"apply-to", "unit-dwarven-witness"}, {"apply-to", "unit-dwarven-annalist"}, {"apply-to", "unit-dwarven-loremaster"},
	{"apply-to", "unit-goblin-shaman"}
)

DefineModifier("upgrade-deity-odin",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-archer"}, {"apply-to", "unit-teuton-archer"},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-surghan-mercenary-axefighter"}, {"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"}
)

DefineModifier("upgrade-deity-odin",
	{"remove-upgrade", "upgrade-deity-thor"}, {"remove-upgrade", "upgrade-deity-loki"}, {"remove-upgrade", "upgrade-deity-frey"}, {"remove-upgrade", "upgrade-deity-freyja"}, {"remove-upgrade", "upgrade-deity-christian-god"}
)

DefineModifier("upgrade-deity-odin", -- dummy upgrade modifier to change starting abilities/variations
	{"apply-to", "unit-germanic-priest"},
	{"apply-to", "unit-teuton-priest"},
	{"apply-to", "unit-dwarven-witness"}, {"apply-to", "unit-dwarven-annalist"}, {"apply-to", "unit-dwarven-loremaster"},
	{"apply-to", "unit-teuton-temple"}
)

DefineModifier("upgrade-deity-poseidon",
	{"remove-upgrade", "upgrade-deity-christian-god"}
)

DefineModifier("upgrade-deity-thor",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"}, {"apply-to", "unit-germanic-veteran-warrior"}, {"apply-to", "unit-germanic-chieftain"},
	{"apply-to", "unit-norse-swordsman"}, {"apply-to", "unit-norse-veteran-swordsman"}, {"apply-to", "unit-norse-heroic-swordsman"},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit-suebi-swordsman"},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"},
	{"apply-to", "unit-dwarven-scout"}, {"apply-to", "unit-dwarven-pathfinder"}, {"apply-to", "unit-dwarven-explorer"},
	{"apply-to", "unit-joruvellir-scout"}, {"apply-to", "unit-joruvellir-pathfinder"}, {"apply-to", "unit-joruvellir-explorer"}
)

DefineModifier("upgrade-deity-thor",
	{"remove-upgrade", "upgrade-deity-odin"}, {"remove-upgrade", "upgrade-deity-loki"}, {"remove-upgrade", "upgrade-deity-frey"}, {"remove-upgrade", "upgrade-deity-freyja"}, {"remove-upgrade", "upgrade-deity-christian-god"}
)

DefineModifier("upgrade-deity-thor", -- dummy upgrade modifier to change starting abilities/variations
	{"apply-to", "unit-germanic-priest"},
	{"apply-to", "unit-teuton-priest"},
	{"apply-to", "unit-dwarven-witness"}, {"apply-to", "unit-dwarven-annalist"}, {"apply-to", "unit-dwarven-loremaster"},
	{"apply-to", "unit-teuton-temple"}
)

DefineModifier("upgrade-deity-loki",
	{"Backstab", 50},
	{"Points", 10},
	{"apply-to", "unit-norse-swordsman"}, {"apply-to", "unit-norse-veteran-swordsman"}, {"apply-to", "unit-norse-heroic-swordsman"},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"}
)

DefineModifier("upgrade-deity-loki",
	{"remove-upgrade", "upgrade-deity-odin"}, {"remove-upgrade", "upgrade-deity-thor"}, {"remove-upgrade", "upgrade-deity-frey"}, {"remove-upgrade", "upgrade-deity-freyja"}, {"remove-upgrade", "upgrade-deity-christian-god"}
)

DefineModifier("upgrade-deity-loki", -- dummy upgrade modifier to change starting abilities/variations
	{"apply-to", "unit-germanic-priest"},
	{"apply-to", "unit-teuton-priest"},
	{"apply-to", "unit-dwarven-witness"}, {"apply-to", "unit-dwarven-annalist"}, {"apply-to", "unit-dwarven-loremaster"},
	{"apply-to", "unit-teuton-temple"}
)

DefineModifier("upgrade-deity-tyr",
	{"BasicDamage", 2},
	{"Points", 10},
	{"apply-to", "unit-germanic-warrior"}, {"apply-to", "unit-germanic-veteran-warrior"}, {"apply-to", "unit-germanic-chieftain"},
	{"apply-to", "unit-norse-swordsman"}, {"apply-to", "unit-norse-veteran-swordsman"}, {"apply-to", "unit-norse-heroic-swordsman"},
	{"apply-to", "unit-teuton-swordsman"}, {"apply-to", "unit-teuton-veteran-swordsman"}, {"apply-to", "unit-teuton-heroic-swordsman"},
	{"apply-to", "unit-suebi-swordsman"},
	{"apply-to", "unit-frank-swordsman"}, {"apply-to", "unit-frank-veteran-swordsman"}, {"apply-to", "unit-frank-heroic-swordsman"},
	{"apply-to", "unit-dwarven-axefighter"}, {"apply-to", "unit-dwarven-steelclad"}, {"apply-to", "unit-dwarven-thane"},
	{"apply-to", "unit-surghan-mercenary-axefighter"}, {"apply-to", "unit-surghan-mercenary-steelclad"}, {"apply-to", "unit-surghan-mercenary-thane"}
)

DefineModifier("upgrade-deity-tyr",
	{"remove-upgrade", "upgrade-deity-heimdall"}, {"remove-upgrade", "upgrade-deity-hel"}
)

DefineModifier("upgrade-deity-tyr", -- dummy upgrade modifier to change starting abilities
	{"apply-to", "unit-germanic-priest"},
	{"apply-to", "unit-teuton-priest"},
	{"apply-to", "unit-dwarven-witness"}, {"apply-to", "unit-dwarven-annalist"}, {"apply-to", "unit-dwarven-loremaster"}
)
