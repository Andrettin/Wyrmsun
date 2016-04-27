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
--      (c) Copyright 2013-2016 by Andrettin
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

-- Miner-specific actions ---------------------------------------------------

DefineButton( { Pos = 5, Level = 0, Icon = "icon-dwarven-return-goods",
	Action = "return-goods",
	Key = "g", Hint = _("Return with ~!Goods"), Popup = "popup-commands",
	ForUnit = {"unit-dwarven-miner", "unit-brising-miner", "unit-gnomish-worker", "unit-goblin-worker" }
})

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-broad-axe",
	Action = "research", Value = "upgrade-dwarven-broad-axe",
	Allowed = "check-single-research",
	Key = "a", Hint = _("Research Broad ~!Axe"), Popup = "popup-research",
	Description = _("+2 Damage for Axefighters, Steelclads, Stonelords and Yale Riders."),
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-great-axe",
	Action = "research", Value = "upgrade-dwarven-great-axe",
	Allowed = "check-single-research",
	Key = "a", Hint = _("Research Great ~!Axe"), Popup = "popup-research",
	Description = _("+2 Damage for Axefighters, Steelclads, Stonelords and Yale Riders."),
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-2",
	Action = "research", Value = "upgrade-dwarven-shield-1",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Heater ~!Shield"), Popup = "popup-research",
	Description = _("+2 Armor for Axefighters, Steelclads, Stonelords and Yale Riders."),
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-3",
	Action = "research", Value = "upgrade-dwarven-shield-2",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Thrymgjol ~!Shield"), Popup = "popup-research",
	Description = _("+2 Armor for Axefighters, Steelclads, Stonelords and Yale Riders."),
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-2",
	Action = "research", Value = "upgrade-dwarven-ballista-bolt-1",
	Allowed = "check-single-research",
	Key = "b", Hint = _("Research Broadhead Ballista ~!Bolt"), Popup = "popup-research",
	Description = _("+15 Damage for Ballistas."),
	ForUnit = {"unit-dwarven-smithy", "unit-brising-smithy"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-3",
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

DefineButton( { Pos = 1, Level = 0, Icon = "icon-pike",
	Action = "research", Value = "upgrade-dwarven-pike",
	Allowed = "check-single-research",
	Key = "k", Hint = _("Research Pi~!ke"), Popup = "popup-research",
	Description = _("+2 Damage for Guards."),
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-sharp-throwing-axe",
	Action = "research", Value = "upgrade-dwarven-sharp-throwing-axe",
	Allowed = "check-single-research",
	Key = "t", Hint = _("Research Sharp ~!Throwing Axe"), Popup = "popup-research",
	Description = _("+2 Damage for Scouts, Pathfinders, Explorers and Gryphon Riders."),
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-bearded-throwing-axe",
	Action = "research", Value = "upgrade-dwarven-bearded-throwing-axe",
	Allowed = "check-single-research",
	Key = "t", Hint = _("~!Research Bearded ~!Throwing Axe"), Popup = "popup-research",
	Description = _("+1 Damage for Scouts, Pathfinders, Explorers and Gryphon Riders."),
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-wood-plow",
	Action = "research", Value = "upgrade-dwarven-wood-plow",
	Allowed = "check-single-research",
	Description = _("+1 Food supply for Mushroom Farms."),
	Key = "p", Hint = _("Research Wood ~!Plow"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-lumber-mill"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-iron-tipped-wood-plow",
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

DefineButton( { Pos = 4, Level = 0, Icon = "icon-masonry",
	Action = "research", Value = "upgrade-dwarven-masonry",
	Allowed = "check-single-research",
	Description = _("+20% Hit Points and +5 Armor for buildings, allows Sentry Towers to be upgraded to Guard Towers and Mead Halls to Bastions."),
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
	Description = _("+10% Time Efficiency for all buildings, changes faction from tribe to polity."),
	Key = "r", Hint = _("Research Dvalic ~!Runewriting"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-stronghold"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-cauldron",
	Action = "research", Value = "upgrade-dwarven-alchemy",
	Allowed = "check-single-research",
	Description = _("+1 Fire Damage for Scouts, Pathfinders, Explorers and Gryphon Riders, +5 Fire Damage for Ballistas."),
	Key = "a", Hint = _("Research ~!Alchemy"), Popup = "popup-research",
	ForUnit = {"unit-dwarven-stronghold"}
} )

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-steelclad",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
	Key = "u", Hint = _("~!Upgrade to Steelclad"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-axefighter"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane",
	Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-steelclad"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane",
	Action = "experience-upgrade-to", Value = "unit-dwarven-thane",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "6"},
	Key = "u", Hint = _("~!Upgrade to Stonelord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-steelclad"}
} )

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

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-yale-lord",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-yale-lord",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-yale-lord-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-yale-lord-black-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-yale-lord-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-yale-lord-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-yale-lord-brown-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "6"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-yale-lord-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "7"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-yale-lord-orange-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "8"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-yale-lord-orange-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-yale-lord",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "9"},
	Key = "y", Hint = _("Upgrade to ~!Yale Lord"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-yale-rider"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-pathfinder",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-pathfinder",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-pathfinder-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-pathfinder-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "3"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-pathfinder-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "4"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-pathfinder-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-pathfinder",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "5"},
	Key = "u", Hint = _("~!Upgrade to Pathfinder"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-scout"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-explorer",
	Action = "experience-upgrade-to", Value = "unit-dwarven-explorer",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "0"},
	Key = "u", Hint = _("~!Upgrade to Explorer"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-pathfinder"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-explorer-blond-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-explorer",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "1"},
	Key = "u", Hint = _("~!Upgrade to Explorer"), Popup = "popup-unit",
	ForUnit = {"unit-dwarven-pathfinder"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-explorer-gray-hair",
	Action = "experience-upgrade-to", Value = "unit-dwarven-explorer",
	Allowed = "check-unit-variable", AllowArg = {"Variation", "Value", "==", "2"},
	Key = "u", Hint = _("~!Upgrade to Explorer"), Popup = "popup-unit",
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
