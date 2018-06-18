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
		"unit-teuton-catapult",
		"unit-norse-longship"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-2",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-catapult-projectile-1"},
	Key = "a", Hint = "~!Attack", Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-catapult",
		"unit-norse-longship"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-3",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-catapult-projectile-2"},
	Key = "a", Hint = "~!Attack", Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-catapult",
		"unit-norse-longship"
	}
} )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-suebi-coinage",
	Action = "harvest",
	Allowed = "check-upgrade-or", AllowArg = {"upgrade-germanic-civilization", "upgrade-anglo-saxon-civilization", "upgrade-english-civilization", "upgrade-frankish-civilization", "upgrade-suebi-civilization", "upgrade-teuton-civilization", "upgrade-gothic-civilization", "upgrade-celt-civilization"},
	Key = "t", Hint = "~!Trade", Popup = "popup-commands",
	Description = "Trade with foreign markets",
	ForUnit = {
		"unit-caravan"
	}
})

DefineButton( { Pos = 5, Level = 0, Icon = "icon-suebi-coinage",
	Action = "harvest",
	Key = "t", Hint = "~!Trade", Popup = "popup-commands",
	Description = "Trade with foreign docks",
	ForUnit = {
		"unit-germanic-transport-ship",
		"unit-teuton-kogge"
	}
})

-- Units ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0,
	Action = "train-unit", Value = "unit-teuton-worker",
	Key = "b", Hint = "Train ~!Bura", Popup = "popup-unit",
	ForUnit = {
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-latin-town-hall",
		"unit-norse-town-hall"
	}
})

DefineButton( { Pos = 7, Level = 0,
	Action = "train-unit", Value = "unit-teuton-gunpowder-infantry",
	Key = "p", Hint = "Train Gun~!powder Infantry", Popup = "popup-unit",
	ForUnit = {"unit-teuton-barracks", "unit-norse-barracks"}
})

DefineButton( { Pos = 1, Level = 0,
	Action = "train-unit", Value = "unit-teuton-priest",
	Key = "g", Hint = "Train ~!Gudjan", Popup = "popup-unit",
	ForUnit = {"unit-teuton-temple", "unit-norse-temple"}
})

DefineButton( { Pos = 1, Level = 0,
	Action = "train-unit", Value = "unit-teuton-priest",
	Allowed = "check-upgrade", AllowArg = {"upgrade-deity-christian-god"},
	Key = "l", Hint = "Train C~!leric", Popup = "popup-unit",
	ForUnit = {"unit-teuton-temple", "unit-norse-temple"}
})

DefineButton( { Pos = 1, Level = 0,
	Action = "train-unit", Value = "unit-teuton-priest",
	Allowed = "check-upgrade", AllowArg = {"upgrade-deity-christian-god", "upgrade-holy-order"},
	Key = "l", Hint = "Hire C~!leric", Popup = "popup-unit",
	ForUnit = {"unit-teuton-temple", "unit-norse-temple"}
})

DefineButton( { Pos = 1, Level = 0,
	Action = "train-unit", Value = "unit-teuton-kogge",
	Key = "c", Hint = "Build ~!Cog", Popup = "popup-unit",
	ForUnit = {"unit-teuton-dock", "unit-norse-dock"}
})

-- Mercenaries ---------------------------------------------------------

--[[
DefineButton( { Pos = 7, Level = 0,
	Action = "train-unit", Value = "unit-teuton-gunpowder-infantry",
	Key = "p", Hint = "Hire Gun~!powder Infantry", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})
--]]

-- Buildings -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-germanic-town-hall",
	Action = "build", Value = "unit-teuton-town-hall",
	Key = "h", Hint = "Build Chieftain's ~!Hall", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 1, Level = 1, Icon = "icon-teuton-town-hall",
	Action = "build", Value = "unit-teuton-town-hall",
	Allowed = "check-upgrade", AllowArg = {"upgrade-masonry"},
	Key = "h", Hint = "Build Town ~!Hall", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 2, Level = 1,
	Action = "build", Value = "unit-teuton-farm",
	Key = "f", Hint = "Build ~!Farm", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 3, Level = 1, Icon = "icon-germanic-barracks",
	Action = "build", Value = "unit-teuton-barracks",
	Key = "w", Hint = "Build ~!War Lodge", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})
  
DefineButton( { Pos = 3, Level = 1, Icon = "icon-teuton-barracks",
	Action = "build", Value = "unit-teuton-barracks",
	Allowed = "check-upgrade", AllowArg = {"upgrade-masonry"},
	Key = "b", Hint = "Build ~!Barracks", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})
  
DefineButton( { Pos = 4, Level = 1, Icon = "icon-germanic-carpenters-shop",
	Action = "build", Value = "unit-teuton-lumber-mill",
	Key = "a", Hint = "Build C~!arpenter's Shop", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 4, Level = 1, Icon = "icon-english-lumber-mill",
	Action = "build", Value = "unit-teuton-lumber-mill",
	Allowed = "check-upgrade", AllowArg = {"upgrade-masonry"},
	Key = "l", Hint = "Build ~!Lumber Mill", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 5, Level = 1,
	Action = "build", Value = "unit-teuton-smithy",
	Key = "s", Hint = "Build ~!Smithy", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 6, Level = 1, Icon = "icon-teuton-masons-shop",
	Action = "build", Value = "unit-teuton-masons-shop",
	Key = "n", Hint = "Build Maso~!n's Shop", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 7, Level = 1,
	Action = "build", Value = "unit-teuton-stables",
	Key = "e", Hint = "Build Stabl~!es", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 8, Level = 1, Icon = "icon-germanic-temple",
	Action = "build", Value = "unit-teuton-temple",
	Key = "p", Hint = "Build Tem~!ple", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 8, Level = 1, Icon = "icon-teuton-church",
	Action = "build", Value = "unit-teuton-temple",
	Allowed = "check-upgrade", AllowArg = {"upgrade-deity-christian-god"},
	Key = "c", Hint = "Build ~!Church", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 9, Level = 1,
	Action = "build", Value = "unit-teuton-market",
	Key = "m", Hint = "Build ~!Market", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 10, Level = 1, Icon = "icon-teuton-watch-tower",
	Action = "build", Value = "unit-teuton-watch-tower",
	Key = "t", Hint = "Build Watch ~!Tower", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 11, Level = 1,
	Action = "build", Value = "unit-teuton-dock",
	Key = "d", Hint = "Build ~!Dock", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 12, Level = 1, Icon = "icon-teuton-university",
	Action = "build", Value = "unit-teuton-university",
	Key = "u", Hint = "Build ~!University", Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 2, Level = 4, Icon = "icon-teuton-wall",
	Action = "build", Value = "unit-teuton-wall",
	Key = "w", Hint = "Build ~!Wall", Popup = "popup-building",
	ForUnit = {
		"unit-teuton-worker"
	}
})

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-spatha",
	Action = "research", Value = "upgrade-teuton-spatha",
	Allowed = "check-single-research",
	Key = "p", Hint = "Research S~!patha", Popup = "popup-research",
	Description = "+2 Damage for swordwielders. Allows Spathas to be sold at the Market.",
	ForUnit = {"unit-teuton-smithy", "unit-norse-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-teuton-iron-shield",
	Action = "research", Value = "upgrade-teuton-iron-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Iron ~!Shield", Popup = "popup-research",
	Description = "+2 Armor for melee infantry and cavalry. Allows Iron Shields to be sold at the Market.",
	ForUnit = {"unit-teuton-smithy", "unit-norse-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-catapult-projectile-2",
	Action = "research", Value = "upgrade-teuton-catapult-projectile-1",
	Allowed = "check-single-research",
	Key = "c", Hint = "Research Granite ~!Catapult Projectile", Popup = "popup-research",
	Description = "+12 Damage for Catapults, +5 Damage for Longships.",
	ForUnit = {"unit-teuton-smithy", "unit-norse-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-catapult-projectile-3",
	Action = "research", Value = "upgrade-teuton-catapult-projectile-2",
	Allowed = "check-single-research",
	Key = "c", Hint = "Research Metal ~!Catapult Projectile", Popup = "popup-research",
	Description = "+12 Damage for Catapults, +5 Damage for Longships.",
	ForUnit = {"unit-teuton-smithy", "unit-norse-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-pike",
	Action = "research", Value = "upgrade-teuton-pike",
	Allowed = "check-single-research",
	Key = "k", Hint = "Research Pi~!ke", Popup = "popup-research",
	Description = "+2 Damage for Spearmen. Allows Pikes to be sold at the Market.",
	ForUnit = {"unit-norse-lumber-mill", "unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-bodkin-arrow",
	Action = "research", Value = "upgrade-teuton-bodkin-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = "Research Bodkin ~!Arrow", Popup = "popup-research",
	Description = "+2 Damage for Archers, Strongholds and Guard Towers. Allows Bodkin Arrows to be sold at the Market.",
	ForUnit = {"unit-norse-lumber-mill", "unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-suebi-coinage",
	Action = "research", Value = "upgrade-teuton-coinage",
	Allowed = "check-single-research",
	Description = "+10% Copper, Silver and Gold Processing Bonus for Smithies. -5% Trade Cost for Markets.",
	Key = "c", Hint = "Research ~!Coinage", Popup = "popup-research",
	ForUnit = {"unit-teuton-stronghold"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-norse-runewriting",
	Action = "research", Value = "upgrade-teuton-writing",
	Allowed = "check-single-research",
	Description = "+10% Research Speed for buildings. Allows Scrolls and Books to be sold at the Market.",
	Key = "w", Hint = "Research ~!Writing", Popup = "popup-research",
	ForUnit = {"unit-teuton-stronghold"}
} )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-cauldron",
	Action = "research", Value = "upgrade-teuton-alchemy",
	Allowed = "check-single-research",
	Description = "+1 Fire Damage for Archers, Strongholds and Guard Towers, +4 Fire Damage for Catapults and Longships. Allows new magic affixes for items sold at the Market. Allows potions and elixirs to be sold at the Market.",
	Key = "a", Hint = "Research ~!Alchemy", Popup = "popup-research",
	ForUnit = {"unit-teuton-university"}
} )

-- Deities ----------------------------------------------------------

DefineButton( { Pos = 5, Level = 0, Icon = "icon-christianity",
	Action = "research", Value = "upgrade-deity-christian-god",
	Allowed = "check-single-research",
	Key = "c", Hint = "Convert to ~!Christianity", Popup = "popup-research",
	Description = "Choose Christianity as your religion. +10 HP, +20 Mana and enables Healing and Blessing spells for Clerics. Allows new magic affixes for items sold at the Market. Incompatible with any pagan deities.",
	ForUnit = {"unit-teuton-temple", "unit-norse-temple"}
})
  
DefineButton( { Pos = 6, Level = 0, Icon = "icon-odin",
	Action = "research", Value = "upgrade-deity-odin",
	Allowed = "check-upgrade-or", AllowArg = {"upgrade-frankish-civilization", "upgrade-gothic-civilization", "upgrade-suebi-civilization", "upgrade-teuton-civilization"},
	Key = "w", Hint = "Worship ~!Wodan", Popup = "popup-research",
	Description = "Choose Wodan as your major deity. +2 Damage for Archers, enables Far Sight spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Christianity religion or with the Thunor major deity.",
	ForUnit = {"unit-teuton-temple"}
})
  
DefineButton( { Pos = 6, Level = 0, Icon = "icon-odin",
	Action = "research", Value = "upgrade-deity-odin",
	Allowed = "check-upgrade", AllowArg = {"upgrade-anglo-saxon-civilization"},
	Key = "w", Hint = "Worship ~!Woden", Popup = "popup-research",
	Description = "Choose Woden as your major deity. +2 Damage for Archers, enables Far Sight spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Christianity religion or with the Thunor major deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 7, Level = 0, Icon = "icon-thor",
	Action = "research", Value = "upgrade-deity-thor",
	Allowed = "check-upgrade-or", AllowArg = {"upgrade-anglo-saxon-civilization", "upgrade-frankish-civilization", "upgrade-gothic-civilization", "upgrade-suebi-civilization", "upgrade-teuton-civilization"},
	Key = "t", Hint = "Worship ~!Thunor", Popup = "popup-research",
	Description = "Choose Thunor as your major deity. +2 Damage for sword infantry, enables Shocking Grasp spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Christianity religion or with the Wodan major deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 8, Level = 0, Icon = "icon-tyr",
	Action = "research", Value = "upgrade-deity-tyr",
	Key = "y", Hint = "Worship T~!yr", Popup = "popup-research",
	Description = "Choose Tyr as a minor deity. +2 Damage for sword infantry, enables Inspire spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Heimdall and Hel minor deities.",
	ForUnit = {"unit-teuton-temple", "unit-norse-temple"}
})

DefineButton( { Pos = 8, Level = 0, Icon = "icon-tyr",
	Action = "research", Value = "upgrade-deity-tyr",
	Key = "z", Hint = "Worship ~!Ziu", Popup = "popup-research",
	Allowed = "check-upgrade-or", AllowArg = {"upgrade-frankish-civilization", "upgrade-suebi-civilization", "upgrade-teuton-civilization"},
	Description = "Choose Ziu as a minor deity. +2 Damage for sword infantry, enables Inspire spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Hella minor deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 8, Level = 0, Icon = "icon-tyr",
	Action = "research", Value = "upgrade-deity-tyr",
	Key = "w", Hint = "Worship Ti~!w", Popup = "popup-research",
	Allowed = "check-upgrade", AllowArg = {"upgrade-anglo-saxon-civilization"},
	Description = "Choose Tiw as a minor deity. +2 Damage for sword infantry, enables Inspire spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Heimdall and Hel minor deities.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 9, Level = 0, Icon = "icon-heimdall",
	Action = "research", Value = "upgrade-deity-heimdall",
	Key = "h", Hint = "Worship ~!Heimdall", Popup = "popup-research",
	Description = "Choose Heimdall as a minor deity. +1 Sight for Archers, enables Precision spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Frankish, Gothic, Suebi and Teuton civilizations, and with the Hel and Tyr minor deities.",
	ForUnit = {"unit-teuton-temple", "unit-norse-temple"}
})

DefineButton( { Pos = 10, Level = 0, Icon = "icon-hel",
	Action = "research", Value = "upgrade-deity-hel",
	Key = "h", Hint = "Worship ~!Hel", Popup = "popup-research",
	Description = "Choose Hel as a minor deity. +20 Mana and enables Wither spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Heimdall and Tyr minor deities.",
	ForUnit = {"unit-teuton-temple", "unit-norse-temple"}
})

DefineButton( { Pos = 10, Level = 0, Icon = "icon-hel",
	Action = "research", Value = "upgrade-deity-hel",
	Key = "h", Hint = "Worship ~!Hella", Popup = "popup-research",
	Allowed = "check-upgrade-or", AllowArg = {"upgrade-frankish-civilization", "upgrade-suebi-civilization", "upgrade-teuton-civilization"},
	Description = "Choose Hella as a minor deity. +20 Mana and enables Wither spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Ziu minor deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 10, Level = 0, Icon = "icon-hel",
	Action = "research", Value = "upgrade-deity-hel",
	Key = "h", Hint = "Worship ~!Halja", Popup = "popup-research",
	Allowed = "check-upgrade", AllowArg = {"upgrade-gothic-civilization"},
	Description = "Choose Halja as a minor deity. +20 Mana and enables Wither spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Tyr minor deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 9, Level = 2, Icon = "icon-christianity",
	Action = "learn-ability", Value = "upgrade-deity-christian-god",
	Key = "c", Hint = "Convert to ~!Christianity", Popup = "popup-learn-ability",
	Description = "Choose Christianity as your hero's religion. +10 HP, +20 Mana and enables Healing and Blessing spells for Clerics. Incompatible with any pagan deities.",
	ForUnit = {
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-latin-legionary", "unit-latin-veteran-legionary", "unit-latin-centurion", "unit-latin-javelineer",
		"unit-slavic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord",
		"unit-frank-horseman", "unit-frank-knight-lord",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-teuton-priest"
	}
})

DefineButton( { Pos = 10, Level = 2, Icon = "icon-odin",
	Action = "learn-ability", Value = "upgrade-deity-odin",
	Key = "w", Hint = "Worship ~!Wodan", Popup = "popup-learn-ability",
	Description = "Choose Wodan as your hero's major deity. +2 Damage for Archers, enables Far Sight spell for Gudjans. Incompatible with the Christianity religion or with the Thunor major deity.",
	ForUnit = {
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord",
		"unit-frank-horseman", "unit-frank-knight-lord",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-teuton-priest"
	}
})
  
DefineButton( { Pos = 11, Level = 2, Icon = "icon-thor",
	Action = "learn-ability", Value = "upgrade-deity-thor",
	Key = "t", Hint = "Worship ~!Thunor", Popup = "popup-learn-ability",
	Description = "Choose Thunor as your hero's major deity. +2 Damage for sword infantry, enables Shocking Grasp spell for Gudjans. Incompatible with the Christianity religion or with the Wodan major deity.",
	ForUnit = {
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord",
		"unit-frank-horseman", "unit-frank-knight-lord",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-teuton-priest"
	}
})

DefineButton( { Pos = 12, Level = 2, Icon = "icon-tyr",
	Action = "learn-ability", Value = "upgrade-deity-tyr",
	Key = "z", Hint = "Worship ~!Ziu", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Ziu as a minor deity for your hero. +2 Damage for sword infantry and enables Inspire spell for Gudjans. Incompatible with the Hella minor deity.",
	ForUnit = {
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord",
		"unit-frank-horseman", "unit-frank-knight-lord",
		"unit-teuton-priest"
	}
})

--[[
DefineButton( { Pos = 13, Level = 2, Icon = "icon-heimdall",
	Action = "learn-ability", Value = "upgrade-deity-heimdall",
	Key = "d", Hint = "Worship Haima~!dala", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Heimdall as a minor deity for your hero. +1 Sight for Archers, enables Precision spell for Gudjans. Incompatible with the Haljo and Tiwaz minor deities.",
	ForUnit = {
	}
})
--]]

DefineButton( { Pos = 14, Level = 2, Icon = "icon-hel",
	Action = "learn-ability", Value = "upgrade-deity-hel",
	Key = "h", Hint = "Worship ~!Hella", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Hella as a minor deity for your hero. +20 Mana and enables Wither spell for Gudjans. Incompatible with the Ziu minor deity.",
	ForUnit = {
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord",
		"unit-frank-horseman", "unit-frank-knight-lord",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-teuton-priest"
	}
})

DefineButton( { Pos = 14, Level = 2, Icon = "icon-hel",
	Action = "learn-ability", Value = "upgrade-deity-hel",
	Key = "h", Hint = "Worship ~!Halja", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Halja as a minor deity for your hero. +20 Mana and enables Wither spell for Gudjans. Incompatible with the Tyr minor deity.",
	ForUnit = {
		"unit-gothic-horse-rider", "unit-gothic-horse-lord"
	}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 3, Level = 0, Icon = "icon-teuton-stronghold",
	Action = "upgrade-to", Value = "unit-teuton-stronghold",
	Allowed = "check-upgrade-to",
	Key = "h", Hint = "Upgrade to Strong~!hold", Popup = "popup-building",
	ForUnit = {"unit-teuton-town-hall", "unit-latin-town-hall", "unit-norse-town-hall"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-teuton-guard-tower",
	Action = "upgrade-to", Value = "unit-teuton-guard-tower",
	Key = "g", Hint = "Upgrade to ~!Guard Tower", Popup = "popup-building",
	ForUnit = {"unit-teuton-watch-tower", "unit-norse-watch-tower"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-catapult-tower",
	Action = "upgrade-to", Value = "unit-teuton-catapult-tower",
	Allowed = "check-upgrade-to",
	Key = "c", Hint = "Upgrade to ~!Catapult Tower", Popup = "popup-building",
	ForUnit = {"unit-teuton-watch-tower", "unit-norse-watch-tower"}
} )

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-teuton-veteran-swordsman",
	Key = "w", Hint = "Upgrade to Veteran S~!wordsman", Popup = "popup-unit",
	ForUnit = {"unit-teuton-swordsman", "unit-suebi-swordsman"}
})

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-teuton-heroic-swordsman",
	Key = "w", Hint = "Upgrade to ~!Warlord", Popup = "popup-unit",
	ForUnit = {"unit-teuton-veteran-swordsman"}
})

DefineButton( { Pos = 2, Level = 2, Icon = "icon-teuton-ritter",
	Action = "experience-upgrade-to", Value = "unit-teuton-ritter",
	Key = "k", Hint = "Upgrade to ~!Knight", Popup = "popup-unit",
	ForUnit = {"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-norse-swordsman", "unit-latin-legionary", "unit-slavic-swordsman"}
} )

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-teuton-knight-lord",
	Key = "k", Hint = "Upgrade to ~!Knight Lord", Popup = "popup-unit",
	ForUnit = {"unit-teuton-ritter"}
} )
