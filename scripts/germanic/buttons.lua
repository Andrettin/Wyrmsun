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
--      buttons.ccl - Define the unit-buttons of the germanic civilization.
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

-- general commands -------------------------------

DefineButton( { Pos = 3, Level = 0, Icon = "icon-germanic-short-sword",
  Action = "attack",
  Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
  ForUnit = {
	"unit-germanic-worker", "unit-germanic-builder",
    "unit-germanic-warrior",
	"unit-germanic-old-man",
	"unit-teuton-worker",
	"unit-teuton-swordsman",
	"unit-teuton-old-man",
	"unit-hero-marbod",
	"unit-hero-greebo",
	"germanic-group", "teuton-group"
} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-germanic-broad-sword",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-germanic-broad-sword"},
  Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
  ForUnit = {
    "unit-germanic-warrior",
	"unit-teuton-swordsman",
	"unit-hero-marbod",
	"unit-hero-greebo",
	"germanic-group", "teuton-group"
} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-germanic-wooden-oblong-shield",
  Action = "stop",
  Key = "s", Hint = _("~!Stop"), Popup = "popup-commands",
  ForUnit = {
	"unit-germanic-worker", "unit-germanic-builder",
    "unit-germanic-warrior", "unit-germanic-archer",
	"unit-germanic-old-man",
	"unit-teuton-worker",
	"unit-teuton-swordsman", "unit-teuton-archer",
	"unit-teuton-catapult",
	"unit-teuton-old-man",
	"unit-hero-marbod",
	"germanic-group", "teuton-group"
} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-germanic-bronze-shield",
  Action = "stop",
  Allowed = "check-upgrade", AllowArg = {"upgrade-germanic-bronze-shield"},
  Key = "s", Hint = _("~!Stop"), Popup = "popup-commands",
  ForUnit = {
    "unit-germanic-warrior",
	"unit-teuton-swordsman",
	"unit-hero-marbod",
	"germanic-group", "teuton-group"
} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-germanic-arrow",
  Action = "attack",
  Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
  ForUnit = {
	"unit-germanic-archer", "unit-teuton-archer", "unit-goblin-archer"
  } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-germanic-barbed-arrow",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-germanic-barbed-arrow"},
  Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
  ForUnit = {
	"unit-germanic-archer", "unit-teuton-archer"
  } } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-germanic-patrol-land",
  Action = "patrol",
  Key = "p", Hint = _("~!Patrol"), Popup = "popup-commands",
  ForUnit = {
    "unit-germanic-warrior", "unit-germanic-archer",
	"unit-teuton-swordsman", "unit-teuton-archer",
	"unit-teuton-catapult",
	"unit-hero-marbod",
	"germanic-group", "teuton-group"
  } } )
  
DefineButton( { Pos = 5, Level = 0, Icon = "icon-germanic-stand-ground",
  Action = "stand-ground",
  Key = "t", Hint = _("S~!tand Ground"), Popup = "popup-commands",
  ForUnit = {
    "unit-germanic-warrior", "unit-germanic-archer",
	"unit-teuton-swordsman", "unit-teuton-archer",
	"unit-teuton-catapult",
	"unit-hero-marbod",
	"germanic-group", "teuton-group"
} } )

-- worker specific actions ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = _("~!Repair"), Popup = "popup-commands",
  ForUnit = {"unit-germanic-worker", "unit-germanic-builder", "unit-teuton-worker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = _("~!Harvest Lumber/Mine Gold"), Popup = "popup-commands",
  ForUnit = {"unit-germanic-worker", "unit-teuton-worker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-germanic-return-goods",
  Action = "return-goods",
  Key = "g", Hint = _("Return with ~!Goods"), Popup = "popup-commands",
  ForUnit = {"unit-germanic-worker", "unit-teuton-worker"} } )

-- build basic/advanced structs -----------------------------------------------

DefineButton( { Pos = 7, Level = 0, Icon = "icon-build-basic-structure",
  Action = "button", Value = 1,
  Key = "b", Hint = _("~!Build Basic Structure"), Popup = "popup-commands",
  ForUnit = {"unit-germanic-worker", "unit-germanic-builder", "unit-teuton-worker"} } )

-- Simple Buildings Germanic -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-germanic-town-hall",
  Action = "build", Value = "unit-germanic-town-hall",
  Key = "h", Hint = _("Build Chieftain's ~!Hall"), Popup = "popup-building",
  ForUnit = {"unit-germanic-worker", "unit-germanic-builder"} } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-germanic-farm",
  Action = "build", Value = "unit-germanic-farm",
  Key = "f", Hint = _("Build ~!Farm"), Popup = "popup-building",
  ForUnit = {"unit-germanic-worker", "unit-germanic-builder"} } )

DefineButton( { Pos = 3, Level = 1, Icon = "icon-germanic-barracks",
  Action = "build", Value = "unit-germanic-barracks",
  Key = "w", Hint = _("Build ~!War Lodge"), Popup = "popup-building",
  ForUnit = {"unit-germanic-worker", "unit-germanic-builder"} } )

DefineButton( { Pos = 4, Level = 1, Icon = "icon-germanic-carpenters-shop",
  Action = "build", Value = "unit-germanic-carpenters-shop",
  Key = "c", Hint = _("Build ~!Carpenter's Shop"), Popup = "popup-building",
  ForUnit = {"unit-germanic-worker", "unit-germanic-builder"} } )

DefineButton( { Pos = 5, Level = 1, Icon = "icon-germanic-smithy",
  Action = "build", Value = "unit-germanic-smithy",
  Key = "s", Hint = _("Build ~!Smithy"), Popup = "popup-building",
  ForUnit = {"unit-germanic-worker", "unit-germanic-builder"} } )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "escape", Hint = _("~<ESC~> Cancel"), Popup = "popup-commands",
  ForUnit = {"unit-germanic-worker", "unit-germanic-builder", "unit-teuton-worker"} } )

-- Building Commands ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-germanic-worker",
  Action = "train-unit", Value = "unit-germanic-worker",
  Key = "b", Hint = _("Train ~!Bura"), Popup = "popup-unit",
  ForUnit = {"unit-germanic-town-hall"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-germanic-warrior",
  Action = "train-unit", Value = "unit-germanic-warrior",
  Key = "e", Hint = _("Train ~!Erala"), Popup = "popup-unit",
  ForUnit = {"unit-germanic-barracks"} } )
  
DefineButton( { Pos = 2, Level = 0, Icon = "icon-germanic-archer",
  Action = "train-unit", Value = "unit-germanic-archer",
  Key = "s", Hint = _("Train ~!Skutan"), Popup = "popup-unit",
  ForUnit = {"unit-germanic-barracks"} } )

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-germanic-broad-sword",
  Action = "research", Value = "upgrade-germanic-broad-sword",
  Allowed = "check-single-research",
  Key = "w", Hint = _("Research Broad S~!word"), Popup = "popup-research",
  ForUnit = {"unit-germanic-smithy", "unit-teuton-smithy"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-germanic-bronze-shield",
  Action = "research", Value = "upgrade-germanic-bronze-shield",
  Allowed = "check-single-research",
  Key = "s", Hint = _("Research Bronze ~!Shield"), Popup = "popup-research",
  ForUnit = {"unit-germanic-smithy", "unit-teuton-smithy"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-germanic-barbed-arrow",
  Action = "research", Value = "upgrade-germanic-barbed-arrow",
  Allowed = "check-single-research",
  Key = "a", Hint = _("Research Barbed ~!Arrow"), Popup = "popup-research",
  ForUnit = {"unit-germanic-carpenters-shop", "unit-teuton-lumber-mill"} } )
  
DefineButton( { Pos = 4, Level = 0, Icon = "icon-teuton-civilization",
  Action = "research", Value = "upgrade-teuton-civilization",
  Allowed = "check-single-research",
  Key = "t", Hint = _("Develop ~!Teuton Civilization"), Popup = "popup-research",
  ForUnit = {"unit-germanic-town-hall"} } )
  
