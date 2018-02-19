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
--      (c) Copyright 2014-2018 by Andrettin
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

------------------------------------------------------------------------------
--	Define", "unit-button.
--
--	DefineButton( { Pos = n, Level = n 'icon ident Action = name ['value value]
--		['allowed check ['values]] Key = key, Hint = hint 'for-unit", "units)
--

-- General Commands -------------------------------

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-1",
	Action = "attack",
	Key = "a", Hint = "~!Attack", Popup = "popup-commands",
	ForUnit = {
		"unit-goblin-war-machine"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-2",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-goblin-catapult-projectile-1"},
	Key = "a", Hint = "~!Attack", Popup = "popup-commands",
	ForUnit = {
		"unit-goblin-war-machine"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-3",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-goblin-catapult-projectile-2"},
	Key = "a", Hint = "~!Attack", Popup = "popup-commands",
	ForUnit = {
		"unit-goblin-war-machine"
	}
} )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-goblin-coinage",
	Action = "harvest",
	Allowed = "check-upgrade-or", AllowArg = {"upgrade-goblin-civilization"},
	Key = "t", Hint = "~!Trade", Popup = "popup-commands",
	Description = "Trade with foreign markets",
	ForUnit = {
		"unit-caravan"
	}
})

DefineButton( { Pos = 5, Level = 0, Icon = "icon-goblin-coinage",
	Action = "harvest",
	Key = "t", Hint = "~!Trade", Popup = "popup-commands",
	Description = "Trade with foreign docks",
	ForUnit = {
		"unit-goblin-transport-ship"
	}
})

-- Units --------------------------------------------------------------

DefineButton( { Pos = 8, Level = 0, Icon = "icon-goblin-gunpowder-infantry",
	Action = "train-unit", Value = "unit-goblin-gunpowder-infantry",
	Key = "p", Hint = "Train Gun~!powder Infantry", Popup = "popup-unit",
	ForUnit = {"unit-goblin-mess-hall"}
})

-- Mercenaries --------------------------------------------------------

DefineButton( { Pos = 1, Level = 0,
	Action = "train-unit", Value = "unit-goblin-thief",
	Key = "t", Hint = "Hire ~!Thief", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 2, Level = 0,
	Action = "train-unit", Value = "unit-goblin-swordsman",
	Key = "s", Hint = "Hire ~!Swordsman", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 3, Level = 0,
	Action = "train-unit", Value = "unit-goblin-spearman",
	Key = "i", Hint = "Hire ~!Impaler", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 4, Level = 0,
	Action = "train-unit", Value = "unit-goblin-archer",
	Key = "a", Hint = "Hire ~!Archer", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 6, Level = 0,
	Action = "train-unit", Value = "unit-goblin-war-machine",
	Key = "m", Hint = "Hire War ~!Machine", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 7, Level = 0,
	Action = "train-unit", Value = "unit-goblin-glider",
	Key = "g", Hint = "Hire ~!Glider", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 8, Level = 0,
	Action = "train-unit", Value = "unit-goblin-gunpowder-infantry",
	Key = "p", Hint = "Hire Gun~!power Infantry", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

-- Buildings -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-goblin-town-hall",
	Action = "build", Value = "unit-goblin-town-hall",
	Key = "h", Hint = "Build Town ~!Hall", Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
} )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-goblin-farm",
	Action = "build", Value = "unit-goblin-farm",
	Key = "f", Hint = "Build ~!Farm", Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 3, Level = 1, Icon = "icon-goblin-mess-hall",
	Action = "build", Value = "unit-goblin-mess-hall",
	Key = "s", Hint = "Build Me~!ss Hall", Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 4, Level = 1, Icon = "icon-goblin-lumber-mill",
	Action = "build", Value = "unit-goblin-lumber-mill",
	Key = "l", Hint = "Build ~!Lumber Mill", Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 5, Level = 1, Icon = "icon-goblin-smithy",
	Action = "build", Value = "unit-goblin-smithy",
	Key = "e", Hint = "Build Fugla Forg~!e", Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 8, Level = 1, Icon = "icon-goblin-temple",
	Action = "build", Value = "unit-goblin-temple",
	Key = "p", Hint = "Build Tem~!ple", Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 9, Level = 1, Icon = "icon-goblin-market",
	Action = "build", Value = "unit-goblin-market",
	Key = "m", Hint = "Build ~!Market", Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 10, Level = 1, Icon = "icon-goblin-watch-tower",
	Action = "build", Value = "unit-goblin-watch-tower",
	Key = "t", Hint = "Build Watch ~!Tower", Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 11, Level = 1, Icon = "icon-goblin-dock",
	Action = "build", Value = "unit-goblin-dock",
	Key = "d", Hint = "Build ~!Dock", Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 12, Level = 1, Icon = "icon-goblin-academy",
	Action = "build", Value = "unit-goblin-academy",
	Key = "a", Hint = "Build ~!Academy", Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 7, Level = 1, Icon = "icon-goblin-banner",
	Action = "build", Value = "unit-goblin-banner",
	Key = "b", Hint = "Build ~!Banner", Popup = "popup-building",
	ForUnit = {"unit-goblin-worker"}
})

DefineButton( { Pos = 2, Level = 4, Icon = "icon-goblin-wall",
	Action = "build", Value = "unit-goblin-wall",
	Key = "w", Hint = "Build ~!Wall", Popup = "popup-building",
	ForUnit = {
		"unit-goblin-worker"
	}
})

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-goblin-broad-sword",
	Action = "research", Value = "upgrade-goblin-broad-sword",
	Allowed = "check-single-research",
	Key = "w", Hint = "Research Broad S~!word", Popup = "popup-research",
	Description = "+2 Damage for Swordsmen. Allows Broad Swords to be sold at the Market.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-goblin-long-sword",
	Action = "research", Value = "upgrade-goblin-long-sword",
	Allowed = "check-single-research",
	Key = "w", Hint = "Research Long S~!word", Popup = "popup-research",
	Description = "+2 Damage for Swordsmen. Allows Long Swords to be sold at the Market.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-goblin-rimmed-shield",
	Action = "research", Value = "upgrade-goblin-rimmed-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Rimmed ~!Shield", Popup = "popup-research",
	Description = "+2 Armor for Swordsmen and Impalers. Allows Rimmed Shields to be sold at the Market.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-goblin-embossed-shield",
	Action = "research", Value = "upgrade-goblin-embossed-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Embossed ~!Shield", Popup = "popup-research",
	Description = "+2 Armor for Swordsmen and Impalers. Allows Embossed Shields to be sold at the Market.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-catapult-projectile-2",
	Action = "research", Value = "upgrade-goblin-catapult-projectile-1",
	Allowed = "check-single-research",
	Key = "c", Hint = "Research Granite ~!Catapult Projectile", Popup = "popup-research",
	Description = "+12 Damage for War Machines.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-catapult-projectile-3",
	Action = "research", Value = "upgrade-goblin-catapult-projectile-2",
	Allowed = "check-single-research",
	Key = "c", Hint = "Research Metal ~!Catapult Projectile", Popup = "popup-research",
	Description = "+12 Damage for War Machines.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-long-spear",
	Action = "research", Value = "upgrade-goblin-long-spear",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Long ~!Spear", Popup = "popup-research",
	Description = "+2 Damage for Impalers. Allows Long Spears to be sold at the Market.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-pike",
	Action = "research", Value = "upgrade-goblin-pike",
	Allowed = "check-single-research",
	Key = "k", Hint = "Research Pi~!ke", Popup = "popup-research",
	Description = "+2 Damage for Impalers. Allows Pikes to be sold at the Market.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-germanic-barbed-arrow",
	Action = "research", Value = "upgrade-goblin-barbed-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = "Research Barbed ~!Arrow", Popup = "popup-research",
	Description = "+2 Damage for Archers, Strongholds and Guard Towers. Allows Barbed Arrows to be sold at the Market.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-bodkin-arrow",
	Action = "research", Value = "upgrade-goblin-bodkin-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = "Research Bodkin ~!Arrow", Popup = "popup-research",
	Description = "+2 Damage for Archers, Strongholds and Guard Towers. Allows Bodkin Arrows to be sold at the Market.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 8, Level = 0, Icon = "icon-masonry",
	Action = "research", Value = "upgrade-goblin-masonry",
	Allowed = "check-single-research",
	Key = "m", Hint = "Research ~!Masonry", Popup = "popup-research",
	Description = "+20% Hit Points, +5 Armor and -25% Salvage Factor for buildings, enables Road and Wall construction, and allows Watch Towers to be upgraded to Guard Towers and Town Halls to Strongholds.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-goblin-coinage",
	Action = "research", Value = "upgrade-goblin-coinage",
	Allowed = "check-single-research",
	Description = "+10% Copper, Silver and Gold Processing Bonus for Smithies. -5% Trade Cost for Markets.",
	Key = "c", Hint = "Research ~!Coinage", Popup = "popup-research",
	ForUnit = {"unit-goblin-stronghold"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-norse-runewriting",
	Action = "research", Value = "upgrade-goblin-writing",
	Allowed = "check-single-research",
	Description = "+10% Research Speed for buildings. Allows Scrolls and Books to be sold at the Market.",
	Key = "w", Hint = "Research ~!Writing", Popup = "popup-research",
	ForUnit = {"unit-goblin-stronghold"}
} )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-cauldron",
	Action = "research", Value = "upgrade-goblin-alchemy",
	Allowed = "check-single-research",
	Description = "+1 Fire Damage for Archers, Strongholds and Guard Towers, +4 Fire Damage for War Machines. Allows new magic affixes for items sold at the Market. Allows potions and elixirs to be sold at the Market.",
	Key = "a", Hint = "Research ~!Alchemy", Popup = "popup-research",
	ForUnit = {"unit-goblin-academy"}
} )

-- Deities ----------------------------------------------------------

DefineButton( { Pos = 5, Level = 0, Icon = "icon-gathaarl",
	Action = "research", Value = "upgrade-deity-gathaarl",
	Allowed = "check-single-research",
	Key = "g", Hint = "Worship ~!Gathaarl", Popup = "popup-research",
	Description = "Choose Gathaarl as your major deity. Allows new magic affixes for items sold at the Market. +2 Damage for Swordsmen, enables Terror spell for Shamans.",
	ForUnit = {"unit-goblin-temple"}
})

DefineButton( { Pos = 6, Level = 0, Icon = "icon-hel",
	Action = "research", Value = "upgrade-deity-hel",
	Allowed = "check-single-research",
	Key = "h", Hint = "Worship ~!Hel", Popup = "popup-research",
	Description = "Choose Hel as a minor deity. +20 Mana and enables Wither spell for Shamans. Allows new magic affixes for items sold at the Market.",
	ForUnit = {"unit-goblin-temple"}
})

DefineButton( { Pos = 9, Level = 2, Icon = "icon-gathaarl",
	Action = "learn-ability", Value = "upgrade-deity-gathaarl",
	Key = "g", Hint = "Worship ~!Gathaarl", Popup = "popup-learn-ability",
	Description = "Choose Gathaarl as your hero's major deity. +2 Damage for Swordsmen, enables Terror spell for Shamans.",
	ForUnit = {
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman",
		"unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-goblin-shaman"
	}
})

DefineButton( { Pos = 10, Level = 2, Icon = "icon-hel",
	Action = "learn-ability", Value = "upgrade-deity-hel",
	Key = "h", Hint = "Worship ~!Hel", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-gathaarl"},
	Description = "Choose Hel as a minor deity for your hero. +20 Mana and enables Wither spell for Shamans.",
	ForUnit = {
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman",
		"unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-goblin-shaman"
	}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 3, Level = 0, Icon = "icon-goblin-stronghold",
	Action = "upgrade-to", Value = "unit-goblin-stronghold",
	Allowed = "check-upgrade-to",
	Key = "s", Hint = "Upgrade to ~!Stronghold", Popup = "popup-building",
	ForUnit = {"unit-goblin-town-hall"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-goblin-guard-tower",
	Action = "upgrade-to", Value = "unit-goblin-guard-tower",
	Allowed = "check-upgrade-to",
	Key = "g", Hint = "Upgrade to ~!Guard Tower", Popup = "popup-building",
	ForUnit = {"unit-goblin-watch-tower"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-goblin-barbarian",
	Action = "experience-upgrade-to", Value = "unit-goblin-barbarian",
	Key = "u", Hint = "~!Upgrade to Barbarian", Popup = "popup-unit",
	ForUnit = {"unit-goblin-swordsman"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-goblin-warlord",
	Action = "experience-upgrade-to", Value = "unit-goblin-warlord",
	Key = "u", Hint = "~!Upgrade to Warlord", Popup = "popup-unit",
	ForUnit = {"unit-goblin-barbarian"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-goblin-headhunter",
	Action = "experience-upgrade-to", Value = "unit-goblin-headhunter",
	Key = "u", Hint = "~!Upgrade to Headhunter", Popup = "popup-unit",
	ForUnit = {"unit-goblin-archer"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-goblin-shadowstalker",
	Action = "experience-upgrade-to", Value = "unit-goblin-shadowstalker",
	Key = "u", Hint = "~!Upgrade to Shadowstalker", Popup = "popup-unit",
	ForUnit = {"unit-goblin-headhunter"}
} )
