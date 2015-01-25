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

-- General Commands -------------------------------

DefineButton( { Pos = 6, Level = 0, Icon = "icon-attack-ground",
  Action = "attack-ground",
  Key = "g", Hint = _("Attack ~!Ground"),
  ForUnit = {"unit-teuton-catapult", "germanic-group"} } )

-- Simple Buildings Teuton -----------------------------------------------------

DefineButton( { Pos = 4, Level = 1, Icon = "icon-teuton-lumber-mill",
  Action = "build", Value = "unit-teuton-lumber-mill",
  Key = "l", Hint = _("Build ~!Lumber Mill"),
  ForUnit = {"unit-germanic-worker", "unit-germanic-builder"} } )

DefineButton( { Pos = 7, Level = 1, Icon = "icon-teuton-watch-tower",
  Action = "build", Value = "unit-teuton-watch-tower",
  Key = "t", Hint = _("Build Watch ~!Tower"),
  ForUnit = {"unit-germanic-worker", "unit-germanic-builder"} } )

-- Building Commands ---------------------------------------------------------

DefineButton( { Pos = 3, Level = 0, Icon = "icon-teuton-catapult",
  Action = "train-unit", Value = "unit-teuton-catapult",
  Key = "b", Hint = _("Build ~!Catapult"),
  ForUnit = {"unit-germanic-barracks"} } )

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 2, Level = 0, Icon = "icon-masonry",
  Action = "research", Value = "upgrade-teuton-masonry",
  Allowed = "check-single-research",
  Key = "m", Hint = _("Research ~!Masonry"),
  ForUnit = {"unit-germanic-carpenters-shop", "unit-teuton-lumber-mill"} } )

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-teuton-guard-tower",
  Action = "upgrade-to", Value = "unit-teuton-guard-tower",
  Key = "g", Hint = _("Upgrade to ~!Guard Tower"),
  ForUnit = {"unit-teuton-watch-tower"} } )
