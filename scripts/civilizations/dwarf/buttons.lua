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
--      (c) Copyright 2013-2018 by Andrettin
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

DefineButton( { Pos = 3, Icon = "icon-dwarven-ballista-bolt-1",
	Action = "attack",
	Key = "a", Hint = "~!Attack", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-ballista", "unit-dwarven-ballista-warship"
	}
} )

DefineButton( { Pos = 3, Icon = "icon-dwarven-ballista-bolt-2",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-ballista-bolt-1"},
	Key = "a", Hint = "~!Attack", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-ballista", "unit-dwarven-ballista-warship"
	}
} )

DefineButton( { Pos = 3, Icon = "icon-dwarven-ballista-bolt-3",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-ballista-bolt-2"},
	Key = "a", Hint = "~!Attack", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-ballista", "unit-dwarven-ballista-warship"
	}
} )

DefineButton( { Pos = 5, Icon = "icon-dwarven-coinage",
	Action = "harvest",
	Allowed = "check-upgrade-or", AllowArg = {"upgrade-dwarven-civilization"},
	Key = "t", Hint = "~!Trade", Popup = "popup-commands",
	Description = "Trade with foreign markets",
	ForUnit = {
		"unit-caravan"
	}
})

DefineButton( { Pos = 5, Icon = "icon-dwarven-coinage",
	Action = "harvest",
	Key = "t", Hint = "~!Trade", Popup = "popup-commands",
	Description = "Trade with foreign docks",
	ForUnit = {
		"unit-dwarven-transport-ship"
	}
})

-- Buildings -----------------------------------------------------

DefineButton( { Pos = 1, Level = "build-structure-level",
	Action = "build", Value = "unit-dwarven-town-hall",
	Key = "h", Hint = "Build Mead ~!Hall", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner"
	}
})

DefineButton( { Pos = 2, Level = "build-structure-level", Icon = "icon-dwarven-mushroom-farm",
	Action = "build", Value = "unit-dwarven-mushroom-farm",
	Key = "f", Hint = "Build Mushroom ~!Farm", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner"
	}
})

DefineButton( { Pos = 3, Level = "build-structure-level", Icon = "icon-dwarven-barracks",
	Action = "build", Value = "unit-dwarven-barracks",
	Key = "w", Hint = "Build ~!War Hall", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner"
	}
})

DefineButton( { Pos = 4, Level = "build-structure-level", Icon = "icon-dwarven-lumber-mill",
	Action = "build", Value = "unit-dwarven-lumber-mill",
	Key = "l", Hint = "Build ~!Lumber Mill", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker"
	}
})

DefineButton( { Pos = 5, Level = "build-structure-level", Icon = "icon-dwarven-smithy",
	Action = "build", Value = "unit-dwarven-smithy",
	Key = "s", Hint = "Build ~!Smithy", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker"
	}
})

DefineButton( { Pos = 5, Level = "build-structure-level", Icon = "icon-brising-smithy",
	Action = "build", Value = "unit-brising-smithy",
	Key = "s", Hint = "Build ~!Smithy", Popup = "popup-building",
	ForUnit = {
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister"
	}
})

DefineButton( { Pos = 6, Level = "build-structure-level", Icon = "icon-dwarven-masons-shop",
	Action = "build", Value = "unit-dwarven-masons-shop",
	Key = "n", Hint = "Build Maso~!n's Shop", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker"
	}
})

DefineButton( { Pos = 7, Level = "build-structure-level", Icon = "icon-dwarven-yale-pen",
	Action = "build", Value = "unit-dwarven-yale-pen",
	Key = "y", Hint = "Build ~!Yale Pen", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
	}
})

DefineButton( { Pos = 7, Level = "build-structure-level", Icon = "icon-joruvellir-yale-pen",
	Action = "build", Value = "unit-joruvellir-yale-pen",
	Key = "y", Hint = "Build ~!Yale Pen", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister"
	}
})

DefineButton( { Pos = 8, Level = "build-structure-level", Icon = "icon-dwarven-temple",
	Action = "build", Value = "unit-dwarven-temple",
	Key = "p", Hint = "Build Tem~!ple", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker"
	}
})

DefineButton( { Pos = 9, Level = "build-structure-level", Icon = "icon-dwarven-market",
	Action = "build", Value = "unit-dwarven-market",
	Key = "m", Hint = "Build ~!Market", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker"
	}
})

DefineButton( { Pos = 10, Level = "build-structure-level", Icon = "icon-dwarven-sentry-tower",
	Action = "build", Value = "unit-dwarven-sentry-tower",
	Key = "t", Hint = "Build Sentry ~!Tower", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker"
	}
} )

DefineButton( { Pos = 11, Level = "build-structure-level", Icon = "icon-dwarven-dock",
	Action = "build", Value = "unit-dwarven-dock",
	Key = "d", Hint = "Build ~!Dock", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
	}
} )

DefineButton( { Pos = 12, Level = "build-structure-level", Icon = "icon-dwarven-academy",
	Action = "build", Value = "unit-dwarven-academy",
	Key = "a", Hint = "Build ~!Academy", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker"
	}
})

DefineButton( { Pos = 2, Level = "build-structure-level-2", Icon = "icon-dwarven-wall",
	Action = "build", Value = "unit-dwarven-wall",
	Key = "w", Hint = "Build ~!Wall", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

-- Units --------------------------------------------------------------

DefineButton( { Pos = 1, Icon = "icon-dwarven-miner",
	Action = "train-unit", Value = "unit-dwarven-miner",
	Key = "m", Hint = "Train ~!Miner", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-town-hall", "unit-dwarven-stronghold"}
})

DefineButton( { Pos = 1, Icon = "icon-brising-miner",
	Action = "train-unit", Value = "unit-brising-miner",
	Key = "m", Hint = "Train ~!Miner", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-town-hall", "unit-dwarven-stronghold"}
})

DefineButton( { Pos = 1, Icon = "icon-dwarven-axefighter",
	Action = "train-unit", Value = "unit-dwarven-axefighter",
	Key = "a", Hint = "Train ~!Axefighter", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks"}
})

DefineButton( { Pos = 2, Icon = "icon-dwarven-guard",
	Action = "train-unit", Value = "unit-dwarven-guard",
	Key = "g", Hint = "Train ~!Guard", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks"}
})

DefineButton( { Pos = 3, Icon = "icon-dwarven-scout",
	Action = "train-unit", Value = "unit-dwarven-scout",
	Key = "s", Hint = "Train ~!Scout", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
})

DefineButton( { Pos = 3,
	Action = "train-unit", Value = "unit-joruvellir-scout",
	Key = "s", Hint = "Train ~!Scout", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks"}
})

DefineButton( { Pos = 4, Icon = "icon-dwarven-yale-rider",
	Action = "train-unit", Value = "unit-dwarven-yale-rider",
	Key = "y", Hint = "Train ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
})

DefineButton( { Pos = 4, Icon = "icon-joruvellir-yale-rider-black-hair",
	Action = "train-unit", Value = "unit-joruvellir-yale-rider",
	Key = "y", Hint = "Train ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks"}
})

DefineButton( { Pos = 5, Icon = "icon-dwarven-ballista",
	Action = "train-unit", Value = "unit-dwarven-ballista",
	Key = "b", Hint = "Build ~!Ballista", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
})

DefineButton( { Pos = 6, Icon = "icon-dwarven-gryphon-rider",
	Action = "train-unit", Value = "unit-dwarven-gryphon-rider",
	Key = "p", Hint = "Train Gry~!phon Rider", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
})

DefineButton( { Pos = 7, Icon = "icon-dwarven-thunderer",
	Action = "train-unit", Value = "unit-dwarven-thunderer",
	Key = "t", Hint = "Train ~!Thunderer", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
})

DefineButton( { Pos = 1, Icon = "icon-dwarven-witness",
	Action = "train-unit", Value = "unit-dwarven-witness",
	Key = "w", Hint = "Train ~!Witness", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-temple"}
})

DefineButton( { Pos = 1,
	Action = "train-unit", Value = "unit-dwarven-transport-ship",
	Key = "t", Hint = "Build ~!Transport", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-dock"}
})

DefineButton( { Pos = 2,
	Action = "train-unit", Value = "unit-dwarven-ballista-warship",
	Key = "b", Hint = "Build ~!Ballista Warship", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-dock"}
})

-- Mercenaries ---------------------------------------------------------

DefineButton( { Pos = 1,
	Action = "train-unit", Value = "unit-dwarven-axefighter",
	Key = "a", Hint = "Hire ~!Axefighter", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 1, Icon = "icon-surghan-mercenary-axefighter",
	Action = "train-unit", Value = "unit-surghan-mercenary-axefighter",
	Key = "a", Hint = "Hire ~!Axefighter", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 2,
	Action = "train-unit", Value = "unit-dwarven-guard",
	Key = "g", Hint = "Hire ~!Guard", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 3,
	Action = "train-unit", Value = "unit-dwarven-scout",
	Key = "s", Hint = "Hire ~!Scout", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 3,
	Action = "train-unit", Value = "unit-joruvellir-scout",
	Key = "s", Hint = "Hire ~!Scout", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 4,
	Action = "train-unit", Value = "unit-dwarven-yale-rider",
	Key = "y", Hint = "Hire ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 4,
	Action = "train-unit", Value = "unit-joruvellir-yale-rider",
	Key = "y", Hint = "Hire ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 5,
	Action = "train-unit", Value = "unit-dwarven-ballista",
	Key = "b", Hint = "Hire ~!Ballista", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 6,
	Action = "train-unit", Value = "unit-dwarven-gryphon-rider",
	Key = "p", Hint = "Hire Gry~!phon Rider", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 7,
	Action = "train-unit", Value = "unit-dwarven-thunderer",
	Key = "t", Hint = "Hire ~!Thunderer", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Icon = "icon-dwarven-broad-axe",
	Action = "research", Value = "upgrade-dwarven-broad-axe",
	Allowed = "check-single-research",
	Key = "a", Hint = "Research Broad ~!Axe", Popup = "popup-research",
	Description = "+2 Damage for Axefighters and Yale Riders. Allows Broad Axes to be sold at the Market.",
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 2, Icon = "icon-dwarven-great-axe",
	Action = "research", Value = "upgrade-dwarven-great-axe",
	Allowed = "check-single-research",
	Key = "a", Hint = "Research Great ~!Axe", Popup = "popup-research",
	Description = "+2 Damage for Axefighters and Yale Riders. Allows Great Axes to be sold at the Market.",
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 3, Icon = "icon-dwarven-shield-2",
	Action = "research", Value = "upgrade-dwarven-shield-1",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Heater ~!Shield", Popup = "popup-research",
	Description = "+2 Armor for Axefighters, Guards and Yale Riders. Allows Heater Shields to be sold at the Market.",
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 4, Icon = "icon-dwarven-shield-3",
	Action = "research", Value = "upgrade-dwarven-shield-2",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Thrymgjol ~!Shield", Popup = "popup-research",
	Description = "+2 Armor for Axefighters, Guards and Yale Riders. Allows Thrymgjol Shields to be sold at the Market.",
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 5, Icon = "icon-dwarven-ballista-bolt-2",
	Action = "research", Value = "upgrade-dwarven-ballista-bolt-1",
	Allowed = "check-single-research",
	Key = "b", Hint = "Research Broadhead Ballista ~!Bolt", Popup = "popup-research",
	Description = "+12 Damage for Ballistas, +5 Damage for Ballista Warships and Ballista Towers.",
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 6, Icon = "icon-dwarven-ballista-bolt-3",
	Action = "research", Value = "upgrade-dwarven-ballista-bolt-2",
	Allowed = "check-single-research",
	Key = "b", Hint = "Research Penetrating Ballista ~!Bolt", Popup = "popup-research",
	Description = "+12 Damage for Ballistas, +5 Damage for Ballista Warships and Ballista Towers.",
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 1, Icon = "icon-long-spear",
	Action = "research", Value = "upgrade-dwarven-long-spear",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Long ~!Spear", Popup = "popup-research",
	Description = "+2 Damage for Guards. Allows Long Spears to be sold at the Market.",
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 2, Icon = "icon-pike",
	Action = "research", Value = "upgrade-dwarven-pike",
	Allowed = "check-single-research",
	Key = "k", Hint = "Research Pi~!ke", Popup = "popup-research",
	Description = "+2 Damage for Guards. Allows Pikes to be sold at the Market.",
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 3, Icon = "icon-dwarven-sharp-throwing-axe",
	Action = "research", Value = "upgrade-dwarven-sharp-throwing-axe",
	Allowed = "check-single-research",
	Key = "t", Hint = "Research Sharp ~!Throwing Axe", Popup = "popup-research",
	Description = "+2 Damage for Scouts, Gryphon Riders, Bastions and Guard Towers. Allows Sharp Throwing Axes to be sold at the Market.",
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 4, Icon = "icon-dwarven-bearded-throwing-axe",
	Action = "research", Value = "upgrade-dwarven-bearded-throwing-axe",
	Allowed = "check-single-research",
	Key = "t", Hint = "Research Bearded ~!Throwing Axe", Popup = "popup-research",
	Description = "+1 Damage for Scouts, Gryphon Riders, Bastions and Guard Towers. Allows Bearded Throwing Axes to be sold at the Market.",
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 3, Icon = "icon-dwarven-coinage",
	Action = "research", Value = "upgrade-dwarven-coinage",
	Allowed = "check-single-research",
	Description = "+10% Copper, Silver and Gold Processing Bonus for Smithies. -5% Trade Cost for Markets.",
	Key = "c", Hint = "Research ~!Coinage", Popup = "popup-research",
	ForUnit = {"unit-dwarven-stronghold"}
} )

DefineButton( { Pos = 4, Icon = "icon-norse-runewriting",
	Action = "research", Value = "upgrade-dwarven-runewriting",
	Allowed = "check-single-research",
	Description = "+10% Research Speed for buildings. Allows Scrolls and Books to be sold at the Market.",
	Key = "r", Hint = "Research ~!Runewriting", Popup = "popup-research",
	ForUnit = {"unit-dwarven-stronghold"}
} )

DefineButton( { Pos = 5, Icon = "icon-cauldron",
	Action = "research", Value = "upgrade-dwarven-alchemy",
	Allowed = "check-single-research",
	Description = "+1 Fire Damage for Scouts, Gryphon Riders, Bastions and Guard Towers, +4 Fire Damage for Ballistas and Ballista Warships. Allows new magic affixes for items sold at the Market. Allows potions and elixirs to be sold at the Market.",
	Key = "a", Hint = "Research ~!Alchemy", Popup = "popup-research",
	ForUnit = {"unit-dwarven-academy"}
} )

-- Deities ----------------------------------------------------------

DefineButton( { Pos = 5, Icon = "icon-odin",
	Action = "research", Value = "upgrade-deity-odin",
	Allowed = "check-single-research",
	Key = "o", Hint = "Worship Hr~!optatyr", Popup = "popup-research",
	Description = "Choose Hroptatyr as your major deity. +2 Damage for Axefighters, enables Far Sight spell for Witnesses. Allows new magic affixes for items sold at the Market. Incompatible with the Thor major deity.",
	ForUnit = {"unit-dwarven-temple"}
})
  
DefineButton( { Pos = 6, Icon = "icon-thor",
	Action = "research", Value = "upgrade-deity-thor",
	Allowed = "check-single-research",
	Key = "t", Hint = "Worship ~!Thor", Popup = "popup-research",
	Description = "Choose Thor as your major deity. +2 Damage for Scouts, enables Shocking Grasp spell for Witnesses. Allows new magic affixes for items sold at the Market. Incompatible with the Hroptatyr major deity.",
	ForUnit = {"unit-dwarven-temple"}
})

DefineButton( { Pos = 7, Icon = "icon-tyr",
	Action = "research", Value = "upgrade-deity-tyr",
	Allowed = "check-single-research",
	Key = "y", Hint = "Worship T~!yr", Popup = "popup-research",
	Description = "Choose Tyr as a minor deity. +2 Damage for Axefighters and enables Inspire spell for Witnesses. Allows new magic affixes for items sold at the Market. Incompatible with the Hel minor deity.",
	ForUnit = {"unit-dwarven-temple"}
})

DefineButton( { Pos = 8, Icon = "icon-hel",
	Action = "research", Value = "upgrade-deity-hel",
	Allowed = "check-single-research",
	Key = "l", Hint = "Worship He~!l", Popup = "popup-research",
	Description = "Choose Hel as a minor deity. +20 Mana and enables Wither spell for Witnesses. Allows new magic affixes for items sold at the Market. Incompatible with the Tyr minor deity.",
	ForUnit = {"unit-dwarven-temple"}
})

DefineButton( { Pos = 9, Level = "choose-individual-upgrade-level", Icon = "icon-odin",
	Action = "learn-ability", Value = "upgrade-deity-odin",
	Key = "o", Hint = "Worship Hr~!optatyr", Popup = "popup-learn-ability",
	Description = "Choose Hroptatyr as your hero's major deity. +2 Damage for Axefighters, enables Far Sight spell for Witnesses. Incompatible with the Thor major deity.",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard", "unit-dwarven-stalwart", "unit-dwarven-sentinel",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
		"unit-dwarven-thunderer",
		"unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster",
		"unit-joruvellir-scout", "unit-joruvellir-pathfinder", "unit-joruvellir-explorer",
		"unit-joruvellir-yale-rider", "unit-joruvellir-yale-lord",
		"unit-surghan-mercenary-axefighter", "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	}
})
  
DefineButton( { Pos = 10, Level = "choose-individual-upgrade-level", Icon = "icon-thor",
	Action = "learn-ability", Value = "upgrade-deity-thor",
	Key = "t", Hint = "Worship ~!Thor", Popup = "popup-learn-ability",
	Description = "Choose Thor as your hero's major deity. +2 Damage for Scouts, enables Shocking Grasp spell for Witnesses. Incompatible with the Hroptatyr major deity.",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard", "unit-dwarven-stalwart", "unit-dwarven-sentinel",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
		"unit-dwarven-thunderer",
		"unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster",
		"unit-joruvellir-scout", "unit-joruvellir-pathfinder", "unit-joruvellir-explorer",
		"unit-joruvellir-yale-rider", "unit-joruvellir-yale-lord",
		"unit-surghan-mercenary-axefighter", "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	}
})

DefineButton( { Pos = 11, Level = "choose-individual-upgrade-level", Icon = "icon-tyr",
	Action = "learn-ability", Value = "upgrade-deity-tyr",
	Key = "y", Hint = "Worship T~!yr", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Tyr as a minor deity for your hero. +2 Damage for Axefighters and enables Inspire spell for Witnesses. Incompatible with the Hel minor deity.",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard", "unit-dwarven-stalwart", "unit-dwarven-sentinel",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
		"unit-dwarven-thunderer",
		"unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster",
		"unit-joruvellir-scout", "unit-joruvellir-pathfinder", "unit-joruvellir-explorer",
		"unit-joruvellir-yale-rider", "unit-joruvellir-yale-lord",
		"unit-surghan-mercenary-axefighter", "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	}
})
  
DefineButton( { Pos = 12, Level = "choose-individual-upgrade-level", Icon = "icon-hel",
	Action = "learn-ability", Value = "upgrade-deity-hel",
	Key = "l", Hint = "Worship He~!l", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Hel as a minor deity for your hero. +20 Mana and enables Wither spell for Witnesses. Incompatible with the Tyr minor deity.",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard", "unit-dwarven-stalwart", "unit-dwarven-sentinel",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
		"unit-dwarven-thunderer",
		"unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster",
		"unit-joruvellir-scout", "unit-joruvellir-pathfinder", "unit-joruvellir-explorer",
		"unit-joruvellir-yale-rider", "unit-joruvellir-yale-lord",
		"unit-surghan-mercenary-axefighter", "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	}
})
  
-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-skilled-miner",
	Action = "experience-upgrade-to", Value = "unit-dwarven-skilled-miner",
	Key = "u", Hint = "~!Upgrade to Skilled Miner", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-miner"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-expert-miner",
	Action = "experience-upgrade-to", Value = "unit-dwarven-expert-miner",
	Key = "u", Hint = "~!Upgrade to Expert Miner", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-skilled-miner"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-brising-skilled-miner",
	Action = "experience-upgrade-to", Value = "unit-brising-skilled-miner",
	Key = "u", Hint = "~!Upgrade to Skilled Miner", Popup = "popup-unit",
	ForUnit = {"unit-brising-miner"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-brising-expert-miner",
	Action = "experience-upgrade-to", Value = "unit-brising-expert-miner",
	Key = "u", Hint = "~!Upgrade to Expert Miner", Popup = "popup-unit",
	ForUnit = {"unit-brising-skilled-miner"}
} )

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-runesmith",
	Action = "experience-upgrade-to", Value = "unit-dwarven-runesmith",
	Key = "r", Hint = "Upgrade to ~!Runesmith", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-miner", "unit-brising-miner"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-runemaster",
	Action = "experience-upgrade-to", Value = "unit-dwarven-runemaster",
	Key = "r", Hint = "Upgrade to ~!Runemaster", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-runesmith"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-arcanister",
	Action = "experience-upgrade-to", Value = "unit-dwarven-arcanister",
	Key = "a", Hint = "Upgrade to ~!Arcanister", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-runemaster"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-steelclad",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = "~!Upgrade to Steelclad", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-steelclad-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "u", Hint = "~!Upgrade to Steelclad", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-steelclad",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "u", Hint = "~!Upgrade to Steelclad", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-steelclad-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "u", Hint = "~!Upgrade to Steelclad", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-steelclad-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
	Key = "u", Hint = "~!Upgrade to Steelclad", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-steelclad-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
	Key = "u", Hint = "~!Upgrade to Steelclad", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-surghan-mercenary-steelclad",
	Action = "experience-upgrade-to", Value = "unit-surghan-mercenary-steelclad",
	Key = "u", Hint = "~!Upgrade to Steelclad", Popup = "popup-unit",
	ForUnit = {"unit-surghan-mercenary-axefighter"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane",
	Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-steelclad"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane",
	Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "6"},
	Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-steelclad"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane-gray-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
  Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane-gray-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "7"},
  Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
  Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "8"},
  Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane-blond-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
  Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane-blond-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "9"},
  Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane-black-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
  Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane-black-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "10"},
  Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane-brown-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
  Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-thane-brown-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "11"},
  Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-surghan-mercenary-thane",
	Action = "experience-upgrade-to", Value = "unit-surghan-mercenary-thane",
	Key = "u", Hint = "~!Upgrade to Stonelord", Popup = "popup-unit",
	ForUnit = {"unit-surghan-mercenary-steelclad"}
} )

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-rider",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "y", Hint = "Upgrade to ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter", "unit-surghan-mercenary-axefighter"}
} )

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-rider-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "y", Hint = "Upgrade to ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-rider-orange-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "y", Hint = "Upgrade to ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-rider-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "y", Hint = "Upgrade to ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-rider-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
	Key = "y", Hint = "Upgrade to ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-rider-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
	Key = "y", Hint = "Upgrade to ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-lord",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "y", Hint = "Upgrade to ~!Yale Lord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-lord",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "y", Hint = "Upgrade to ~!Yale Lord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-lord-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "y", Hint = "Upgrade to ~!Yale Lord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-lord-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "y", Hint = "Upgrade to ~!Yale Lord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-lord-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
	Key = "y", Hint = "Upgrade to ~!Yale Lord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-lord-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
	Key = "y", Hint = "Upgrade to ~!Yale Lord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-lord-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "6"},
	Key = "y", Hint = "Upgrade to ~!Yale Lord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-lord-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "7"},
	Key = "y", Hint = "Upgrade to ~!Yale Lord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-lord-orange-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "8"},
	Key = "y", Hint = "Upgrade to ~!Yale Lord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-dwarven-yale-lord-orange-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "9"},
	Key = "y", Hint = "Upgrade to ~!Yale Lord", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-joruvellir-yale-rider",
	Key = "y", Hint = "Upgrade to ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-joruvellir-yale-lord",
	Key = "y", Hint = "Upgrade to ~!Yale Lord", Popup = "popup-unit",
	ForUnit = {"unit-joruvellir-yale-rider"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-dwarven-stalwart",
	Key = "u", Hint = "~!Upgrade to Stalwart", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-guard"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-dwarven-sentinel",
	Key = "u", Hint = "~!Upgrade to Sentinel", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-stalwart"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Key = "u", Hint = "~!Upgrade to Pathfinder", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-joruvellir-pathfinder",
	Key = "u", Hint = "~!Upgrade to Pathfinder", Popup = "popup-unit",
	ForUnit = {"unit-joruvellir-scout"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-dwarven-explorer",
	Key = "u", Hint = "~!Upgrade to Explorer", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-pathfinder"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-joruvellir-explorer",
	Key = "u", Hint = "~!Upgrade to Explorer", Popup = "popup-unit",
	ForUnit = {"unit-joruvellir-pathfinder"}
} )

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-dwarven-gryphon-rider",
	Key = "g", Hint = "Upgrade to ~!Gryphon Rider", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-pathfinder", "unit-joruvellir-pathfinder"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-dwarven-annalist",
	Key = "u", Hint = "~!Upgrade to Annalist", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-witness"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-dwarven-loremaster",
	Key = "u", Hint = "~!Upgrade to Loremaster", Popup = "popup-unit",
	ForUnit = {"unit-dwarven-annalist"}
} )

DefineButton( { Pos = 3, Icon = "icon-dwarven-stronghold",
	Action = "upgrade-to", Value = "unit-dwarven-stronghold",
	Allowed = "check-upgrade-to",
	Key = "b", Hint = "Upgrade to ~!Bastion", Popup = "popup-building",
	ForUnit = {"unit-dwarven-town-hall"}
} )
  
DefineButton( { Pos = 1, Icon = "icon-dwarven-guard-tower",
	Action = "upgrade-to", Value = "unit-dwarven-guard-tower",
	Allowed = "check-upgrade-to",
	Key = "g", Hint = "Upgrade to ~!Guard Tower", Popup = "popup-building",
	ForUnit = {"unit-dwarven-sentry-tower"}
} )

DefineButton( { Pos = 2, Icon = "icon-dwarven-ballista-tower",
	Action = "upgrade-to", Value = "unit-dwarven-ballista-tower",
	Allowed = "check-upgrade-to",
	Key = "b", Hint = "Upgrade to ~!Ballista Tower", Popup = "popup-building",
	ForUnit = {"unit-dwarven-sentry-tower"}
} )

DefineButton( { Pos = 2, Icon = "icon-dwarven-cannon-tower",
	Action = "upgrade-to", Value = "unit-dwarven-cannon-tower",
	Allowed = "check-upgrade-to",
	Key = "c", Hint = "Upgrade to ~!Cannon Tower", Popup = "popup-building",
	ForUnit = {"unit-dwarven-sentry-tower"}
} )

-- Special Abilities ------------------------------------------------------

--DefineButton( { Pos = 7, Icon = "icon-dwarven-throwing-axe",
--  Action = "cast-spell", Value = "spell-axe-twirl",
--  Key = "w", Hint = "Axe T~!wirl", Popup = "popup-commands",
--  ForUnit = {"unit-dwarven-thane", "unit-hero-rugnur-thane"} } )
