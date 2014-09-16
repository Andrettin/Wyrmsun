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
--      (c) Copyright 2014 by Andre Novellino Gouvêa
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
  Key = "m", Hint = "~!Move",
  ForUnit = {
	"unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-caravan",
	"gnome-group"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-gnomish-thrusting-sword-1",
  Action = "attack",
  Key = "a", Hint = "~!Attack",
  ForUnit = {
	"unit-gnomish-worker", "unit-gnomish-recruit",
	"unit-hero-greebo",
	"gnome-group"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-gnomish-patrol-land",
  Action = "patrol",
  Key = "p", Hint = "~!Patrol",
  ForUnit = {
	"unit-gnomish-recruit", 
	"gnome-group"
  } } )

-- worker specific actions ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = "~!Repair",
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = "~!Harvest Lumber/Mine Gold",
  ForUnit = {"unit-gnomish-worker"} } )

-- build basic/advanced structs -----------------------------------------------

DefineButton( { Pos = 7, Level = 0, Icon = "icon-build-basic-structure",
  Action = "button", Value = 1,
  Key = "b", Hint = "~!Build Basic Structure",
  ForUnit = {"unit-gnomish-worker"} } )

-- simple buildings gnome -----------------------------------------------------

DefineButton( { Pos = 3, Level = 1, Icon = "icon-gnomish-town-hall",
  Action = "build", Value = "unit-gnomish-town-hall",
  Key = "h", Hint = "Build Town ~!Hall",
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-farm",
  Action = "build", Value = "unit-gnomish-farm",
  Key = "f", Hint = "Build ~!Farm",
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-gnomish-barracks",
  Action = "build", Value = "unit-gnomish-barracks",
  Key = "b", Hint = "Build ~!Barracks",
  ForUnit = {"unit-gnomish-worker"} } )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "escape", Hint = "~<ESC~> Cancel",
  ForUnit = {"unit-gnomish-worker"} } )

-- buildings commands ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-gnomish-worker",
  Action = "train-unit", Value = "unit-gnomish-worker",
  Key = "s", Hint = "Train Gnomish ~!Scavenger",
  ForUnit = {"unit-gnomish-town-hall"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-gnomish-recruit",
  Action = "train-unit", Value = "unit-gnomish-recruit",
  Key = "r", Hint = "Train Gnomish ~!Recruit",
  ForUnit = {"unit-gnomish-barracks"} } )
