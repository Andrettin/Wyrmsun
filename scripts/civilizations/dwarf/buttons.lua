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
--      buttons.ccl - Define the unit-buttons of the dwarven civilization.
--
--      (c) Copyright 2013-2015 by Andrettin
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

-- general commands -- almost all", "units have it -------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-boots",
	Action = "move",
	Key = "m", Hint = _("~!Move"), Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-scout", "unit-dwarven-miner", "unit-dwarven-militia",
		"unit-dwarven-yale-rider",
		"unit-dwarven-ballista", "unit-dwarven-gryphon-rider",
		"unit-goblin-worker", "unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer",
		"unit-goblin-war-machine", "unit-goblin-glider",
		"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
		"unit-germanic-worker",
		"unit-germanic-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-worker", 
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-teuton-archer", "unit-teuton-ritter",
		"unit-teuton-catapult", 
		"unit-slug", "unit-rat",
		"unit-slime", "unit-yale", "unit-gryphon", "unit-wyrm",
		"dwarf-group", "germanic-group", "teuton-group"
	}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-1",
  Action = "stop",
  Key = "s", Hint = _("~!Stop"), Popup = "popup-commands",
  ForUnit = {
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-scout", "unit-dwarven-miner", "unit-dwarven-militia",
	"unit-dwarven-yale-rider",
	"unit-dwarven-ballista", "unit-dwarven-gryphon-rider",
	"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-herbalist", "unit-gnomish-caravan",
	"unit-goblin-worker", "unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer",
	"unit-goblin-war-machine", "unit-goblin-glider",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
 	"unit-slug", "unit-rat",
	"unit-slime", "unit-yale", "unit-gryphon", "unit-wyrm",
 	"dwarf-group"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-2",
  Action = "stop",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-shield-1"},
  Key = "s", Hint = _("~!Stop"), Popup = "popup-commands",
  ForUnit = {
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-militia",
	"unit-dwarven-yale-rider",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
 	"dwarf-group"
    } } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-3",
  Action = "stop",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-shield-2"},
  Key = "s", Hint = _("~!Stop"), Popup = "popup-commands",
  ForUnit = {
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-militia",
	"unit-dwarven-yale-rider",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
 	"dwarf-group"
    } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-battle-axe",
  Action = "attack",
  Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
  ForUnit = {
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-miner", "unit-dwarven-militia",
	"unit-dwarven-yale-rider",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
	"unit-slug", "unit-rat",
	"unit-slime", "unit-yale", "unit-gryphon", "unit-wyrm",
	"dwarf-group"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-broad-axe",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-broad-axe"},
  Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
  ForUnit = {
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-militia",
	"unit-dwarven-yale-rider",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
 	"dwarf-group"
    } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-great-axe",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-great-axe"},
  Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
  ForUnit = {
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-militia",
	"unit-dwarven-yale-rider",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
 	"dwarf-group"
    } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-throwing-axe-1",
  Action = "attack",
  Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
  ForUnit = {
	"unit-dwarven-scout", "unit-dwarven-gryphon-rider"
  } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-throwing-axe-2",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-throwing-axe-1"},
  Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
  ForUnit = {
	"unit-dwarven-scout", "unit-dwarven-gryphon-rider"
  } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-throwing-axe-3",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-throwing-axe-2"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-scout", "unit-dwarven-gryphon-rider"
	}
} )

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

DefineButton( { Pos = 4, Level = 0, Icon = "icon-dwarven-patrol-land",
  Action = "patrol",
  Key = "p", Hint = _("~!Patrol"), Popup = "popup-commands",
  ForUnit = {
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-militia", "unit-dwarven-scout",
	"unit-dwarven-yale-rider",
	"unit-dwarven-ballista", "unit-dwarven-gryphon-rider",
	"unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer",
	"unit-goblin-war-machine", "unit-goblin-glider",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
	"dwarf-group"
  } } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-dwarven-stand-ground",
  Action = "stand-ground",
  Key = "t", Hint = _("S~!tand Ground"), Popup = "popup-commands",
  ForUnit = {
  	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-militia", "unit-dwarven-scout",
	"unit-dwarven-yale-rider",
	"unit-dwarven-ballista", "unit-dwarven-gryphon-rider",
	"unit-gnomish-recruit", 
	"unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-war-machine",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
	"dwarf-group"} } )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-attack-ground",
  Action = "attack-ground",
  Key = "g", Hint = _("Attack ~!Ground"), Popup = "popup-commands",
  ForUnit = {"unit-dwarven-ballista", "dwarf-group"} } )

-- miner specific actions ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = _("~!Repair"), Popup = "popup-commands",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = _("~!Harvest Resource"), Popup = "popup-commands",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-dwarven-return-goods",
  Action = "return-goods",
  Key = "g", Hint = _("Return with ~!Goods"), Popup = "popup-commands",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker", "unit-goblin-worker" } } )

-- Building Commands -----------------------------------------------

DefineButton( { Pos = 13, Level = 0, Icon = "icon-rally-point",
	Action = "rally-point",
	Key = "r", Hint = _("Set ~!Rally Point"), Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-dwarven-barracks",
		"unit-dwarven-sentry-tower", "unit-dwarven-guard-tower"
	}
} )
  
-- build basic/advanced structs -----------------------------------------------

DefineButton( { Pos = 6, Level = 0, Icon = "icon-build-basic-structure",
  Action = "button", Value = 1,
  Key = "b", Hint = _("~!Build Structure"), Popup = "popup-commands",
  ForUnit = {"unit-dwarven-miner"} } )

-- simple buildings dwarf -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-town-hall",
  Action = "build", Value = "unit-dwarven-town-hall",
  Key = "h", Hint = _("Build Mead ~!Hall"), Popup = "popup-building",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-dwarven-mushroom-farm",
  Action = "build", Value = "unit-dwarven-mushroom-farm",
  Key = "f", Hint = _("Build Mushroom ~!Farm"), Popup = "popup-building",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 3, Level = 1, Icon = "icon-dwarven-barracks",
  Action = "build", Value = "unit-dwarven-barracks",
  Key = "w", Hint = _("Build ~!War Hall"), Popup = "popup-building",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 4, Level = 1, Icon = "icon-dwarven-lumber-mill",
  Action = "build", Value = "unit-dwarven-lumber-mill",
  Key = "l", Hint = _("Build ~!Lumber Mill"), Popup = "popup-building",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"} } )

DefineButton( { Pos = 5, Level = 1, Icon = "icon-dwarven-smithy",
  Action = "build", Value = "unit-dwarven-smithy",
  Key = "s", Hint = _("Build ~!Smithy"), Popup = "popup-building",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"} } )

DefineButton( { Pos = 6, Level = 1, Icon = "icon-dwarven-yale-pen",
	Action = "build", Value = "unit-dwarven-yale-pen",
	Key = "y", Hint = _("Build ~!Yale Pen"), Popup = "popup-building",
	ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"}
} )

DefineButton( { Pos = 7, Level = 1, Icon = "icon-dwarven-sentry-tower",
	Action = "build", Value = "unit-dwarven-sentry-tower",
	Key = "t", Hint = _("Build Sentry ~!Tower"), Popup = "popup-building",
	ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"}
} )

DefineButton( { Pos = 8, Level = 1, Icon = "icon-dwarven-dock",
	Action = "build", Value = "unit-dwarven-dock",
	Key = "d", Hint = _("Build ~!Dock"), Popup = "popup-building",
	ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"}
} )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-gold-mine",
	Action = "build", Value = "unit-gold-mine",
	Key = "g", Hint = _("Build ~!Gold Mine"), Popup = "popup-building",
	ForUnit = {"unit-dwarven-miner"}
} )

DefineButton( { Pos = 10, Level = 1, Icon = "icon-silver-mine",
	Action = "build", Value = "unit-silver-mine",
	Key = "v", Hint = _("Build Si~!lver Mine"), Popup = "popup-building",
	ForUnit = {"unit-dwarven-miner"}
} )

DefineButton( { Pos = 11, Level = 1, Icon = "icon-copper-mine",
	Action = "build", Value = "unit-copper-mine",
	Key = "c", Hint = _("Build ~!Copper Mine"), Popup = "popup-building",
	ForUnit = {"unit-dwarven-miner"}
} )

DefineButton( { Pos = 16, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "escape", Hint = _("Cancel (~<Esc~>)"), Popup = "popup-commands",
  ForUnit = {"unit-dwarven-miner"} } )

-- Building Commands ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-miner",
	Action = "train-unit", Value = "unit-dwarven-miner",
	Key = "m", Hint = _("Train ~!Miner"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-town-hall", "unit-dwarven-stronghold"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-axefighter",
	Action = "train-unit", Value = "unit-dwarven-axefighter",
	Key = "a", Hint = _("Train ~!Axefighter"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-scout",
	Action = "train-unit", Value = "unit-dwarven-scout",
	Key = "s", Hint = _("Train ~!Scout"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-yale-rider",
	Action = "train-unit", Value = "unit-dwarven-yale-rider",
	Key = "y", Hint = _("Train ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-dwarven-ballista",
	Action = "train-unit", Value = "unit-dwarven-ballista",
	Key = "b", Hint = _("Build ~!Ballista"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
} )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-dwarven-gryphon-rider",
	Action = "train-unit", Value = "unit-dwarven-gryphon-rider",
	Key = "g", Hint = _("Train ~!Gryphon Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-barracks", "unit-gnomish-barracks"}
} )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-surghan-mercenary-steelclad",
	Action = "train-unit", Value = "unit-surghan-mercenary-steelclad",
	Key = "s", Hint = _("Hire ~!Surghan Mercenaries"), Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
} )

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-broad-axe",
	Action = "research", Value = "upgrade-dwarven-broad-axe",
	Allowed = "check-single-research",
	Key = "a", Hint = _("Research Broad ~!Axe"), Popup = "popup-research",
	Description = _("+2 Damage for Axefighters, Steelclads, Stonelords and Yale Riders."),
	ForUnit = {"unit-dwarven-smithy"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-great-axe",
	Action = "research", Value = "upgrade-dwarven-great-axe",
	Allowed = "check-single-research",
	Key = "a", Hint = _("Research Great ~!Axe"), Popup = "popup-research",
	Description = _("+2 Damage for Axefighters, Steelclads, Stonelords and Yale Riders."),
	ForUnit = {"unit-dwarven-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-2",
	Action = "research", Value = "upgrade-dwarven-shield-1",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Heater ~!Shield"), Popup = "popup-research",
	Description = _("+2 Armor for Axefighters, Steelclads, Stonelords and Yale Riders."),
	ForUnit = {"unit-dwarven-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-3",
	Action = "research", Value = "upgrade-dwarven-shield-2",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Thrymgjol ~!Shield"), Popup = "popup-research",
	Description = _("+2 Armor for Axefighters, Steelclads, Stonelords and Yale Riders."),
	ForUnit = {"unit-dwarven-smithy"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-2",
	Action = "research", Value = "upgrade-dwarven-ballista-bolt-1",
	Allowed = "check-single-research",
	Key = "b", Hint = _("Research Broadhead Ballista ~!Bolt"), Popup = "popup-research",
	Description = _("+15 Damage for Ballistas."),
	ForUnit = {"unit-dwarven-smithy"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-3",
	Action = "research", Value = "upgrade-dwarven-ballista-bolt-2",
	Allowed = "check-single-research",
	Key = "b", Hint = _("Research Penetrating Ballista ~!Bolt"), Popup = "popup-research",
	Description = _("+15 Damage for Ballistas."),
	ForUnit = {"unit-dwarven-smithy"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-throwing-axe-2",
	Action = "research", Value = "upgrade-dwarven-throwing-axe-1",
	Allowed = "check-single-research",
	Key = "t", Hint = _("Research Sharp ~!Throwing Axe"), Popup = "popup-research",
	Description = _("+1 Damage for Scouts and Gryphon Riders."),
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-throwing-axe-3",
	Action = "research", Value = "upgrade-dwarven-throwing-axe-2",
	Allowed = "check-single-research",
	Key = "t", Hint = _("~!Research Bearded ~!Throwing Axe"), Popup = "popup-research",
	Description = _("+1 Damage for Scouts and Gryphon Riders."),
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-wood-plow",
	Action = "research", Value = "upgrade-dwarven-wood-plow",
	Allowed = "check-single-research",
	Description = _("+1 Food supply for Mushroom Farms."),
	Key = "p", Hint = _("Research Wood ~!Plow"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-iron-tipped-wood-plow",
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

DefineButton( { Pos = 3, Level = 0, Icon = "icon-masonry",
	Action = "research", Value = "upgrade-dwarven-masonry",
	Allowed = "check-single-research",
	Description = _("+20% Hit Points and +5 Armor for buildings, and allows Sentry Towers to be upgraded to Guard Towers and Mead Halls to Bastions."),
	Key = "m", Hint = _("Research ~!Masonry"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-coinage",
	Action = "research", Value = "upgrade-dwarven-coinage",
	Allowed = "check-single-research",
	Description = _("+10% Gold Processing."),
	Key = "c", Hint = _("Research ~!Coinage"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-stronghold"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-norse-runewriting",
	Action = "research", Value = "upgrade-dwarven-runewriting",
	Allowed = "check-single-research",
	Description = _("+10% Research Speed, changes faction from tribe to polity."),
	Key = "r", Hint = _("Research Dvalic ~!Runewriting"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-stronghold"}
} )

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad",
  Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
  Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-gray-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
  Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad",
  Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
  Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-blond-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
  Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-black-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
  Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-brown-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
  Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "6"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-gray-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-gray-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "7"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "8"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-blond-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-blond-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "9"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-black-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-black-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "10"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-brown-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-brown-hair",
  Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "11"},
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-surghan-mercenary-thane",
  Action = "experience-upgrade-to", Value = "unit-surghan-mercenary-thane",
  Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
  ForUnit = {"unit-surghan-mercenary-steelclad"} } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-dwarven-yale-rider",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-dwarven-yale-rider-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-dwarven-yale-rider-orange-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-dwarven-yale-rider-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-dwarven-yale-rider-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-dwarven-yale-rider-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-rider",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
	Key = "y", Hint = _("Upgrade to ~!Yale Rider"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-stronghold",
  Action = "upgrade-to", Value = "unit-dwarven-stronghold",
  Allowed = "check-upgrade-to",
  Key = "b", Hint = _("Upgrade to ~!Bastion"), Popup = "popup-building",
  ForUnit = {"unit-dwarven-town-hall"} } )
  
DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-guard-tower",
	Action = "upgrade-to", Value = "unit-dwarven-guard-tower",
	Allowed = "check-upgrade-to",
	Key = "g", Hint = _("Upgrade to ~!Guard Tower"), Popup = "popup-building",
	ForUnit = {"unit-dwarven-sentry-tower"}
} )

-- Items ---------------------------------------------------------

--DefineButton( { Pos = 7, Level = 0, Icon = "icon-build-basic-structure",
--  Action = "button", Value = 1,
--  Key = "o", Hint = _("~!Open Inventory"), Popup = "popup-commands",
--  ForUnit = {"unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane"} } )

-- Special Abilities ------------------------------------------------------

--DefineButton( { Pos = 7, Level = 0, Icon = "icon-dwarven-throwing-axe-1",
--  Action = "cast-spell", Value = "spell-axe-twirl",
--  Key = "w", Hint = _("Axe T~!wirl"), Popup = "popup-commands",
--  ForUnit = {"unit-dwarven-thane", "unit-hero-rugnur-thane"} } )
