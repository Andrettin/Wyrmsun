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

------------------------------------------------------------------------------
--	Define", "unit-button.
--
--	DefineButton( { Pos = n, Level = n 'icon ident Action = name ['value value]
--		['allowed check ['values]] Key = key, Hint = hint 'for-unit", "units)
--

-- general commands -- almost all units have it -------------------------------

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-1",
	Action = "attack",
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-ballista"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-2",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-ballista-bolt-1"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-ballista"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-3",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-ballista-bolt-2"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-ballista"
	}
} )

-- Buildings -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1,
	Action = "build", Value = "unit-dwarven-town-hall",
	Key = "h", Hint = _("Build Mead ~!Hall"), Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner"
	}
})

DefineButton( { Pos = 2, Level = 1, Icon = "icon-dwarven-mushroom-farm",
	Action = "build", Value = "unit-dwarven-mushroom-farm",
	Key = "f", Hint = _("Build Mushroom ~!Farm"), Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner"
	}
})

DefineButton( { Pos = 3, Level = 1, Icon = "icon-dwarven-barracks",
	Action = "build", Value = "unit-dwarven-barracks",
	Key = "w", Hint = _("Build ~!War Hall"), Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner"
	}
})

DefineButton( { Pos = 4, Level = 1, Icon = "icon-dwarven-lumber-mill",
	Action = "build", Value = "unit-dwarven-lumber-mill",
	Key = "l", Hint = _("Build ~!Lumber Mill"), Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
	}
})

DefineButton( { Pos = 5, Level = 1, Icon = "icon-dwarven-smithy",
	Action = "build", Value = "unit-dwarven-smithy",
	Key = "s", Hint = _("Build ~!Smithy"), Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
	}
})

DefineButton( { Pos = 5, Level = 1, Icon = "icon-brising-smithy",
	Action = "build", Value = "unit-brising-smithy",
	Key = "s", Hint = _("Build ~!Smithy"), Popup = "popup-building",
	ForUnit = {"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner"}
})

DefineButton( { Pos = 6, Level = 1, Icon = "icon-dwarven-yale-pen",
	Action = "build", Value = "unit-dwarven-yale-pen",
	Key = "y", Hint = _("Build ~!Yale Pen"), Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
	}
})

DefineButton( { Pos = 6, Level = 1, Icon = "icon-joruvellir-yale-pen",
	Action = "build", Value = "unit-joruvellir-yale-pen",
	Key = "y", Hint = _("Build ~!Yale Pen"), Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner"
	}
})

DefineButton( { Pos = 7, Level = 1, Icon = "icon-dwarven-temple",
	Action = "build", Value = "unit-dwarven-temple",
	Key = "p", Hint = _("Build Tem~!ple"), Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker"
	}
})

DefineButton( { Pos = 8, Level = 1, Icon = "icon-dwarven-market",
	Action = "build", Value = "unit-dwarven-market",
	Key = "m", Hint = "Build ~!Market", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker"
	}
})

DefineButton( { Pos = 9, Level = 1, Icon = "icon-dwarven-sentry-tower",
	Action = "build", Value = "unit-dwarven-sentry-tower",
	Key = "t", Hint = "Build Sentry ~!Tower", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker"
	}
} )

DefineButton( { Pos = 10, Level = 1, Icon = "icon-dwarven-dock",
	Action = "build", Value = "unit-dwarven-dock",
	Key = "d", Hint = "Build ~!Dock", Popup = "popup-building",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
	}
} )

-- Units --------------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-miner",
	Action = "train-unit", Value = "unit-dwarven-miner",
	Key = "m", Hint = _("Train ~!Miner"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-town-hall", "unit-dwarven-stronghold"}
})

DefineButton( { Pos = 1, Level = 0, Icon = "icon-brising-miner",
	Action = "train-unit", Value = "unit-brising-miner",
	Key = "m", Hint = _("Train ~!Miner"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-town-hall", "unit-dwarven-stronghold"}
})

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-axefighter",
	Action = "train-unit", Value = "unit-dwarven-axefighter",
	Key = "a", Hint = _("Train ~!Axefighter"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks"}
})

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-guard",
	Action = "train-unit", Value = "unit-dwarven-guard",
	Key = "g", Hint = _("Train ~!Guard"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks"}
})

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-scout",
	Action = "train-unit", Value = "unit-dwarven-scout",
	Key = "s", Hint = _("Train ~!Scout"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
})

DefineButton( { Pos = 4, Level = 0, Icon = "icon-dwarven-yale-rider",
	Action = "train-unit", Value = "unit-dwarven-yale-rider",
	Key = "y", Hint = _("Train ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
})

DefineButton( { Pos = 5, Level = 0, Icon = "icon-dwarven-ballista",
	Action = "train-unit", Value = "unit-dwarven-ballista",
	Key = "b", Hint = _("Build ~!Ballista"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
})

DefineButton( { Pos = 6, Level = 0, Icon = "icon-dwarven-gryphon-rider",
	Action = "train-unit", Value = "unit-dwarven-gryphon-rider",
	Key = "g", Hint = _("Train ~!Gryphon Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
})

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-witness",
	Action = "train-unit", Value = "unit-dwarven-witness",
	Key = "w", Hint = _("Train ~!Witness"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-temple"}
})

DefineButton( { Pos = 1, Level = 0,
	Action = "train-unit", Value = "unit-dwarven-transport-ship",
	Key = "t", Hint = _("Build ~!Transport"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-dock"}
})

-- Mercenaries

DefineButton( { Pos = 1, Level = 0,
	Action = "train-unit", Value = "unit-dwarven-axefighter",
	Key = "a", Hint = "Hire ~!Axefighter", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 1, Level = 0, Icon = "icon-surghan-mercenary-steelclad",
	Action = "train-unit", Value = "unit-surghan-mercenary-axefighter",
	Key = "a", Hint = "Hire ~!Axefighter", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 2, Level = 0,
	Action = "train-unit", Value = "unit-dwarven-guard",
	Key = "g", Hint = "Hire ~!Guard", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 3, Level = 0,
	Action = "train-unit", Value = "unit-dwarven-scout",
	Key = "s", Hint = "Hire ~!Scout", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 4, Level = 0,
	Action = "train-unit", Value = "unit-dwarven-yale-rider",
	Key = "y", Hint = "Hire ~!Yale Rider", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 5, Level = 0,
	Action = "train-unit", Value = "unit-dwarven-ballista",
	Key = "b", Hint = "Hire ~!Ballista", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

DefineButton( { Pos = 6, Level = 0,
	Action = "train-unit", Value = "unit-dwarven-gryphon-rider",
	Key = "r", Hint = "Hire Gryphon ~!Rider", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-broad-axe",
	Action = "research", Value = "upgrade-dwarven-broad-axe",
	Allowed = "check-single-research",
	Key = "a", Hint = _("Research Broad ~!Axe"), Popup = "popup-research",
	Description = _("+2 Damage for Axefighters, Steelclads, Stonelords, Yale Riders and Yale Lords."),
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-great-axe",
	Action = "research", Value = "upgrade-dwarven-great-axe",
	Allowed = "check-single-research",
	Key = "a", Hint = _("Research Great ~!Axe"), Popup = "popup-research",
	Description = _("+2 Damage for Axefighters, Steelclads, Stonelords, Yale Riders and Yale Lords."),
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-shield-2",
	Action = "research", Value = "upgrade-dwarven-shield-1",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Heater ~!Shield"), Popup = "popup-research",
	Description = _("+2 Armor for Axefighters, Steelclads, Stonelords, Guards and Yale Riders."),
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-dwarven-shield-3",
	Action = "research", Value = "upgrade-dwarven-shield-2",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Thrymgjol ~!Shield"), Popup = "popup-research",
	Description = _("+2 Armor for Axefighters, Steelclads, Stonelords, Guards and Yale Riders."),
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-dwarven-ballista-bolt-2",
	Action = "research", Value = "upgrade-dwarven-ballista-bolt-1",
	Allowed = "check-single-research",
	Key = "b", Hint = _("Research Broadhead Ballista ~!Bolt"), Popup = "popup-research",
	Description = _("+15 Damage for Ballistas."),
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-dwarven-ballista-bolt-3",
	Action = "research", Value = "upgrade-dwarven-ballista-bolt-2",
	Allowed = "check-single-research",
	Key = "b", Hint = _("Research Penetrating Ballista ~!Bolt"), Popup = "popup-research",
	Description = _("+15 Damage for Ballistas."),
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-long-spear",
	Action = "research", Value = "upgrade-dwarven-long-spear",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Long ~!Spear"), Popup = "popup-research",
	Description = _("+2 Damage for Guards."),
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-pike",
	Action = "research", Value = "upgrade-dwarven-pike",
	Allowed = "check-single-research",
	Key = "k", Hint = _("Research Pi~!ke"), Popup = "popup-research",
	Description = _("+2 Damage for Guards."),
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-sharp-throwing-axe",
	Action = "research", Value = "upgrade-dwarven-sharp-throwing-axe",
	Allowed = "check-single-research",
	Key = "t", Hint = _("Research Sharp ~!Throwing Axe"), Popup = "popup-research",
	Description = _("+2 Damage for Scouts, Pathfinders, Explorers and Gryphon Riders."),
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-dwarven-bearded-throwing-axe",
	Action = "research", Value = "upgrade-dwarven-bearded-throwing-axe",
	Allowed = "check-single-research",
	Key = "t", Hint = _("~!Research Bearded ~!Throwing Axe"), Popup = "popup-research",
	Description = _("+1 Damage for Scouts, Pathfinders, Explorers and Gryphon Riders."),
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-wood-plow",
	Action = "research", Value = "upgrade-dwarven-wood-plow",
	Allowed = "check-single-research",
	Description = _("+1 Food supply for Mushroom Farms."),
	Key = "p", Hint = _("Research Wood ~!Plow"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-iron-tipped-wood-plow",
	Action = "research", Value = "upgrade-dwarven-iron-tipped-wood-plow",
	Allowed = "check-single-research",
	Description = _("+1 Food supply for Mushroom Farms."),
	Key = "p", Hint = _("Research Iron-Tipped Wood ~!Plow"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

--[[
DefineButton( { Pos = 2, Level = 0, Icon = "icon-iron-plow",
	Action = "research", Value = "upgrade-dwarven-iron-plow",
	Allowed = "check-single-research",
	Description = _("+1 Food supply for Mushroom Farms."),
	Key = "p", Hint = _("Research Iron ~!Plow"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-lumber-mill"}
} )
--]]

DefineButton( { Pos = 7, Level = 0, Icon = "icon-masonry",
	Action = "research", Value = "upgrade-dwarven-masonry",
	Allowed = "check-single-research",
	Description = _("+20% Hit Points and +5 Armor for buildings, enables Road construction, and allows Sentry Towers to be upgraded to Guard Towers and Mead Halls to Bastions."),
	Key = "m", Hint = _("Research ~!Masonry"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-coinage",
	Action = "research", Value = "upgrade-dwarven-coinage",
	Allowed = "check-single-research",
	Description = "+10% Copper, Silver and Gold Processing. -15% Trade Cost for Markets.",
	Key = "c", Hint = "Research ~!Coinage", Popup = "popup-research",
	ForUnit = {"unit-dwarven-stronghold"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-norse-runewriting",
	Action = "research", Value = "upgrade-dwarven-runewriting",
	Allowed = "check-single-research",
	Description = _("+10% Time Efficiency for all buildings."),
	Key = "r", Hint = _("Research Dvalic ~!Runewriting"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-stronghold"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-cauldron",
	Action = "research", Value = "upgrade-dwarven-alchemy",
	Allowed = "check-single-research",
	Description = _("+1 Fire Damage for Scouts, Pathfinders, Explorers and Gryphon Riders, +5 Fire Damage for Ballistas."),
	Key = "a", Hint = _("Research ~!Alchemy"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-stronghold"}
} )

-- Deities ----------------------------------------------------------

DefineButton( { Pos = 5, Level = 0, Icon = "icon-odin",
	Action = "research", Value = "upgrade-deity-odin",
	Allowed = "check-single-research",
	Key = "h", Hint = "Worship ~!Hroptatyr", Popup = "popup-research",
	Description = "Choose Hroptatyr as your major deity. +2 Damage for Axefighters, enables Inspire spell for Witnesses. Incompatible with the Thor major deity.",
	ForUnit = {"unit-dwarven-temple"}
})
  
DefineButton( { Pos = 6, Level = 0, Icon = "icon-thor",
	Action = "research", Value = "upgrade-deity-thor",
	Allowed = "check-single-research",
	Key = "t", Hint = "Worship ~!Thor", Popup = "popup-research",
	Description = "Choose Thor as your major deity. +2 Damage for Scouts, enables Precision spell for Witnesses. Incompatible with the Hroptatyr major deity.",
	ForUnit = {"unit-dwarven-temple"}
})

DefineButton( { Pos = 9, Level = 0, Icon = "icon-odin",
	Action = "learn-ability", Value = "upgrade-deity-odin",
	Key = "h", Hint = "Worship ~!Hroptatyr", Popup = "popup-research",
	Description = "Choose Hroptatyr as your hero's major deity. +2 Damage for Axefighters, enables Inspire spell for Witnesses. Incompatible with the Thor major deity.",
	ForUnit = {
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-dwarven-witness",
		"unit-surghan-mercenary-axefighter", "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	}
})
  
DefineButton( { Pos = 10, Level = 0, Icon = "icon-thor",
	Action = "learn-ability", Value = "upgrade-deity-thor",
	Key = "t", Hint = "Worship ~!Thor", Popup = "popup-research",
	Description = "Choose Thor as your hero's major deity. +2 Damage for Scouts, enables Precision spell for Witnesses. Incompatible with the Hroptatyr major deity.",
	ForUnit = {
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-dwarven-witness",
		"unit-surghan-mercenary-axefighter", "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-skilled-miner",
	Action = "experience-upgrade-to", Value = "unit-dwarven-skilled-miner",
	Key = "u", Hint = _("~!Upgrade to Skilled Miner"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-miner"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-expert-miner",
	Action = "experience-upgrade-to", Value = "unit-dwarven-expert-miner",
	Key = "u", Hint = _("~!Upgrade to Expert Miner"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-skilled-miner"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-brising-skilled-miner",
	Action = "experience-upgrade-to", Value = "unit-brising-skilled-miner",
	Key = "u", Hint = _("~!Upgrade to Skilled Miner"), Popup = "popup-unit",
	ForUnit = {"unit-brising-miner"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-brising-expert-miner",
	Action = "experience-upgrade-to", Value = "unit-brising-expert-miner",
	Key = "u", Hint = _("~!Upgrade to Expert Miner"), Popup = "popup-unit",
	ForUnit = {"unit-brising-skilled-miner"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-steelclad",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-steelclad-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-steelclad",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-steelclad-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-steelclad-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-steelclad-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-surghan-mercenary-steelclad",
	Action = "experience-upgrade-to", Value = "unit-surghan-mercenary-steelclad",
	Key = "u", Hint = "~!Upgrade to Steelclad", Popup = "popup-unit",
	ForUnit = {"unit-surghan-mercenary-axefighter"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane",
	Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-steelclad"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane",
	Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "6"},
	Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-steelclad"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane-gray-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane-gray-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "7"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "8"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane-blond-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane-blond-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "9"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane-black-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane-black-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "10"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane-brown-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-thane-brown-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "11"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-surghan-mercenary-thane",
	Action = "experience-upgrade-to", Value = "unit-surghan-mercenary-thane",
	Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
	ForUnit = {"unit-surghan-mercenary-steelclad"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-dwarven-yale-rider",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter", "unit-surghan-mercenary-axefighter"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-dwarven-yale-rider-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-dwarven-yale-rider-orange-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-dwarven-yale-rider-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-dwarven-yale-rider-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-dwarven-yale-rider-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-yale-lord",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-yale-lord",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-yale-lord-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-yale-lord-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-yale-lord-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-yale-lord-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-yale-lord-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "6"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-yale-lord-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "7"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-yale-lord-orange-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "8"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-yale-lord-orange-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "9"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-pathfinder",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-pathfinder",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-pathfinder-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-pathfinder-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-pathfinder-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-pathfinder-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-explorer",
	Action = "experience-upgrade-to", Value = "unit-dwarven-explorer",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = _("~!Upgrade to Explorer"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-pathfinder"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-explorer-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-explorer",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "u", Hint = _("~!Upgrade to Explorer"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-pathfinder"}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-dwarven-explorer-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-explorer",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "u", Hint = _("~!Upgrade to Explorer"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-pathfinder"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-dwarven-gryphon-rider-red-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-gryphon-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "g", Hint = _("Upgrade to ~!Gryphon Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-pathfinder"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-dwarven-gryphon-rider-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-gryphon-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "g", Hint = _("Upgrade to ~!Gryphon Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-pathfinder"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-dwarven-gryphon-rider",
	Action = "experience-upgrade-to", Value = "unit-dwarven-gryphon-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "g", Hint = _("Upgrade to ~!Gryphon Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-pathfinder"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-stronghold",
	Action = "upgrade-to", Value = "unit-dwarven-stronghold",
	Allowed = "check-upgrade-to",
	Key = "b", Hint = _("Upgrade to ~!Bastion"), Popup = "popup-building",
	ForUnit = {"unit-dwarven-town-hall"}
} )
  
DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-guard-tower",
	Action = "upgrade-to", Value = "unit-dwarven-guard-tower",
	Allowed = "check-upgrade-to",
	Key = "g", Hint = _("Upgrade to ~!Guard Tower"), Popup = "popup-building",
	ForUnit = {"unit-dwarven-sentry-tower"}
} )

-- Special Abilities ------------------------------------------------------

--DefineButton( { Pos = 7, Level = 0, Icon = "icon-dwarven-throwing-axe",
--  Action = "cast-spell", Value = "spell-axe-twirl",
--  Key = "w", Hint = _("Axe T~!wirl"), Popup = "popup-commands",
--  ForUnit = {"unit-dwarven-thane", "unit-hero-rugnur-thane"} } )

Load("scripts/civilizations/dwarf/buttons_faction.lua")
