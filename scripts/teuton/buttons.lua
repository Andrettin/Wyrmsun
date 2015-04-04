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
--      buttons.ccl - Define the unit-buttons of the teuton civilization.
--
--      (c) Copyright 2014 by Andrettin
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

DefineButton( { Pos = 3, Level = 0, Icon = "icon-teuton-spatha",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-spatha"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-swordsman",
		"unit-hero-marbod",
		"unit-hero-greebo",
		"germanic-group", "teuton-group"
	}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-iron-shield",
	Action = "stop",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-iron-shield"},
	Key = "s", Hint = _("~!Stop"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-swordsman",
		"unit-hero-marbod",
		"germanic-group", "teuton-group"
	}
} )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-attack-ground",
  Action = "attack-ground",
  Key = "g", Hint = _("Attack ~!Ground"), Popup = "popup-commands",
  ForUnit = {"unit-teuton-catapult", "germanic-group", "teuton-group"} } )

-- Simple Buildings Teuton -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-germanic-town-hall",
  Action = "build", Value = "unit-teuton-town-hall",
  Key = "h", Hint = _("Build Chieftain's ~!Hall"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )
  
DefineButton( { Pos = 1, Level = 1, Icon = "icon-teuton-town-hall",
  Action = "build", Value = "unit-teuton-town-hall",
  Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-masonry"},
  Key = "h", Hint = _("Build Rat~!haus"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )
  
DefineButton( { Pos = 2, Level = 1, Icon = "icon-germanic-farm",
  Action = "build", Value = "unit-teuton-farm",
  Key = "f", Hint = _("Build ~!Farm"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )

DefineButton( { Pos = 3, Level = 1, Icon = "icon-germanic-barracks",
  Action = "build", Value = "unit-teuton-barracks",
  Key = "w", Hint = _("Build ~!War Lodge"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )
  
DefineButton( { Pos = 3, Level = 1, Icon = "icon-teuton-barracks",
  Action = "build", Value = "unit-teuton-barracks",
  Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-masonry"},
  Key = "b", Hint = _("Build ~!Barracks"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )
  
DefineButton( { Pos = 4, Level = 1, Icon = "icon-germanic-carpenters-shop",
  Action = "build", Value = "unit-teuton-lumber-mill",
  Key = "c", Hint = _("Build ~!Carpenter's Shop"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )

DefineButton( { Pos = 4, Level = 1, Icon = "icon-teuton-lumber-mill",
  Action = "build", Value = "unit-teuton-lumber-mill",
  Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-masonry"},
  Key = "l", Hint = _("Build ~!Lumber Mill"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )

DefineButton( { Pos = 5, Level = 1, Icon = "icon-germanic-smithy",
  Action = "build", Value = "unit-teuton-smithy",
  Key = "s", Hint = _("Build ~!Smithy"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )
  
DefineButton( { Pos = 7, Level = 1, Icon = "icon-teuton-watch-tower",
  Action = "build", Value = "unit-teuton-watch-tower",
  Key = "t", Hint = _("Build Watch ~!Tower"), Popup = "popup-building",
  ForUnit = {"unit-teuton-worker"} } )

-- Building Commands ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-germanic-worker",
  Action = "train-unit", Value = "unit-teuton-worker",
  Key = "b", Hint = _("Train ~!Bura"), Popup = "popup-unit",
  ForUnit = {"unit-teuton-town-hall", "unit-teuton-stronghold"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-germanic-warrior",
  Action = "train-unit", Value = "unit-teuton-swordsman",
  Key = "e", Hint = _("Train ~!Erala"), Popup = "popup-unit",
  ForUnit = {"unit-teuton-barracks"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-germanic-archer",
  Action = "train-unit", Value = "unit-teuton-archer",
  Key = "s", Hint = _("Train ~!Skutan"), Popup = "popup-unit",
  ForUnit = {"unit-teuton-barracks"} } )
  
DefineButton( { Pos = 3, Level = 0, Icon = "icon-teuton-catapult",
  Action = "train-unit", Value = "unit-teuton-catapult",
  Key = "c", Hint = _("Build ~!Catapult"), Popup = "popup-unit",
  ForUnit = {"unit-teuton-barracks"} } )

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-teuton-spatha",
	Action = "research", Value = "upgrade-teuton-spatha",
	Allowed = "check-single-research",
	Key = "p", Hint = _("Research S~!patha"), Popup = "popup-research",
	ForUnit = {"unit-teuton-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-iron-shield",
	Action = "research", Value = "upgrade-teuton-iron-shield",
	Allowed = "check-single-research",
	Key = "p", Hint = _("Research Iron ~!Shield"), Popup = "popup-research",
	ForUnit = {"unit-teuton-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-masonry",
  Action = "research", Value = "upgrade-teuton-masonry",
  Allowed = "check-single-research",
  Key = "m", Hint = _("Research ~!Masonry"), Popup = "popup-research",
  ForUnit = {"unit-teuton-lumber-mill"} } )

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-teuton-guard-tower",
  Action = "upgrade-to", Value = "unit-teuton-guard-tower",
  Key = "g", Hint = _("Upgrade to ~!Guard Tower"), Popup = "popup-building",
  ForUnit = {"unit-teuton-watch-tower"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-stronghold",
  Action = "upgrade-to", Value = "unit-teuton-stronghold",
  Allowed = "check-upgrade-to",
  Key = "b", Hint = _("Upgrade to ~!Burg"), Popup = "popup-building",
  ForUnit = {"unit-teuton-town-hall"} } )
