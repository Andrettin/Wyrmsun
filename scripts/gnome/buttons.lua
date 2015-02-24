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
--      buttons.ccl - Define the unit-buttons of the gnomish civilization.
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

DefineButton( { Pos = 1, Level = 0, Icon = "icon-gnomish-boots",
  Action = "move",
  Key = "m", Hint = _("~!Move"),
  ForUnit = {
	"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-herbalist", "unit-gnomish-caravan",
	"gnome-group"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-gnomish-thrusting-sword-1",
  Action = "attack",
  Key = "a", Hint = _("~!Attack"),
  ForUnit = {
	"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-herbalist",
	"gnome-group"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-gnomish-patrol-land",
  Action = "patrol",
  Key = "p", Hint = _("~!Patrol"),
  ForUnit = {
	"unit-gnomish-recruit", 
	"gnome-group"
  } } )

-- worker specific actions ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = _("~!Repair"),
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = _("~!Harvest Lumber/Mine Gold"),
  ForUnit = {"unit-gnomish-worker"} } )

-- Special Abilities ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-herbal-cure",
  Action = "cast-spell", Value = "spell-herbal-cure",
  Key = "h", Hint = "~!Herbal Cure (per 1 HP)",
  ForUnit = {"unit-gnomish-herbalist"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-portent",
  Action = "learn-ability", Value = "upgrade-portent",
  Key = "p", Hint = "Learn ~!Portent",
  ForUnit = {"unit-gnomish-herbalist"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-portent",
  Action = "cast-spell", Value = "spell-portent",
  Allowed = "check-ability", AllowArg = {"upgrade-portent"},
  Key = "p", Hint = "~!Portent",
  ForUnit = {"unit-gnomish-herbalist"} } )

-- build basic/advanced structs -----------------------------------------------

DefineButton( { Pos = 7, Level = 0, Icon = "icon-build-basic-structure",
  Action = "button", Value = 1,
  Key = "b", Hint = _("~!Build Basic Structure"),
  ForUnit = {"unit-gnomish-worker"} } )

-- simple buildings gnome -----------------------------------------------------

DefineButton( { Pos = 3, Level = 1, Icon = "icon-gnomish-town-hall",
  Action = "build", Value = "unit-gnomish-town-hall",
  Key = "h", Hint = _("Build Town ~!Hall"),
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-farm",
  Action = "build", Value = "unit-gnomish-farm",
  Key = "f", Hint = _("Build ~!Farm"),
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-gnomish-barracks",
  Action = "build", Value = "unit-gnomish-barracks",
  Key = "b", Hint = _("Build ~!Barracks"),
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "escape", Hint = _("~<ESC~> Cancel"),
  ForUnit = {"unit-gnomish-worker"} } )

-- buildings commands ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-gnomish-worker",
  Action = "train-unit", Value = "unit-gnomish-worker",
  Key = "s", Hint = _("Train ~!Scavenger"),
  ForUnit = {"unit-gnomish-town-hall"} } )

--DefineButton( { Pos = 2, Level = 0, Icon = "icon-gnomish-caravan",
--  Action = "train-unit", Value = "unit-gnomish-caravan",
--  Key = "c", Hint = _("Build ~!Caravan"),
--  ForUnit = {"unit-gnomish-town-hall"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-gnomish-recruit",
  Action = "train-unit", Value = "unit-gnomish-recruit",
  Key = "r", Hint = _("Train ~!Recruit"),
  ForUnit = {"unit-gnomish-barracks"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-gnomish-herbalist",
  Action = "train-unit", Value = "unit-gnomish-herbalist",
  Key = "h", Hint = _("Train ~!Herbalist"),
  ForUnit = {"unit-gnomish-barracks"} } )
  