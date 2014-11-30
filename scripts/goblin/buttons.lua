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
--      buttons.ccl - Define the unit-buttons of the goblin civilization.
--
--      (c) Copyright 2014 by Andre Novellino Gouv�a
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

DefineButton( { Pos = 6, Level = 0, Icon = "icon-attack-ground",
  Action = "attack-ground",
  Key = "g", Hint = _("Attack ~!Ground"),
  ForUnit = {"unit-goblin-war-machine", "goblin-group"} } )

-- worker specific actions ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = _("~!Repair"),
  ForUnit = {"unit-goblin-worker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = _("~!Harvest Lumber/Mine Gold"),
  ForUnit = {"unit-goblin-worker"} } )

-- build basic/advanced structs -----------------------------------------------

DefineButton( { Pos = 7, Level = 0, Icon = "icon-build-basic-structure",
  Action = "button", Value = 1,
  Key = "b", Hint = _("~!Build Basic Structure"),
  ForUnit = {"unit-goblin-worker"} } )

-- simple buildings goblin -----------------------------------------------------

DefineButton( { Pos = 3, Level = 1, Icon = "icon-goblin-town-hall",
  Action = "build", Value = "unit-goblin-town-hall",
  Key = "h", Hint = _("Build Town ~!Hall"),
  ForUnit = {"unit-goblin-worker"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-goblin-farm",
  Action = "build", Value = "unit-goblin-farm",
  Key = "f", Hint = _("Build ~!Farm"),
  ForUnit = {"unit-goblin-worker"} } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-goblin-mess-hall",
  Action = "build", Value = "unit-goblin-mess-hall",
  Key = "m", Hint = _("Build ~!Mess Hall"),
  ForUnit = {"unit-goblin-worker"} } )

DefineButton( { Pos = 4, Level = 1, Icon = "icon-goblin-lumber-mill",
  Action = "build", Value = "unit-goblin-lumber-mill",
  Key = "l", Hint = _("Build ~!Lumber Mill"),
  ForUnit = {"unit-goblin-worker"} } )

DefineButton( { Pos = 5, Level = 1, Icon = "icon-goblin-smithy",
  Action = "build", Value = "unit-goblin-smithy",
  Key = "g", Hint = _("Build Fu~!gla Forge"),
  ForUnit = {"unit-goblin-worker"} } )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "escape", Hint = _("~<ESC~> Cancel"),
  ForUnit = {"unit-goblin-worker"} } )

-- buildings commands ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-goblin-worker",
  Action = "train-unit", Value = "unit-goblin-worker",
  Key = "w", Hint = _("Train ~!Worker"),
  ForUnit = {"unit-goblin-town-hall"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-goblin-spearman",
  Action = "train-unit", Value = "unit-goblin-spearman",
  Key = "i", Hint = _("Train ~!Impaler"),
  ForUnit = {"unit-goblin-mess-hall"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-goblin-archer",
  Action = "train-unit", Value = "unit-goblin-archer",
  Key = "a", Hint = _("Train ~!Archer"),
  ForUnit = {"unit-goblin-mess-hall"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-goblin-war-machine",
  Action = "train-unit", Value = "unit-goblin-war-machine",
  Key = "m", Hint = _("Build War ~!Machine"),
  ForUnit = {"unit-goblin-mess-hall"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-goblin-worker",
  Action = "train-unit", Value = "unit-goblin-glider",
  Key = "g", Hint = _("Build ~!Glider"),
  ForUnit = {"unit-goblin-mess-hall"} } )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-goblin-spearman",
	Action = "cast-spell", Value = "spell-unit-goblin-spearman",
	Allowed = "check-unit-variable", AllowArg = {"ForTheMotherland", "Value", ">=", "1"},
	Key = "i", Hint = _("Goblin ~!Impaler"),
	ForUnit = {"unit-goblin-spearman"} }
)

DefineButton( { Pos = 2, Level = 2, Icon = "icon-goblin-archer",
	Action = "cast-spell", Value = "spell-unit-goblin-archer",
	Allowed = "check-unit-variable", AllowArg = {"ForTheMotherland", "Value", ">=", "1"},
	Key = "a", Hint = _("Goblin ~!Archer"),
	ForUnit = {"unit-goblin-spearman"} }
)

DefineButton( { Pos = 2, Level = 2, Icon = "icon-goblin-war-machine",
	Action = "cast-spell", Value = "spell-unit-goblin-war-machine",
	Allowed = "check-unit-variable", AllowArg = {"ForTheMotherland", "Value", ">=", "1"},
	Key = "m", Hint = _("Goblin War ~!Machine"),
	ForUnit = {"unit-goblin-spearman"} }
)
