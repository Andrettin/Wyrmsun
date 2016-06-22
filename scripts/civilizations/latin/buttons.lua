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
--      (c) Copyright 2016 by Andrettin
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

DefineButton( { Pos = 1, Level = 1, Icon = "icon-latin-forum",
	Action = "build", Value = "unit-latin-town-hall", Popup = "popup-building",
	Key = "m", Hint = _("Build Foru~!m"),
	ForUnit = {"unit-teuton-worker"}
} )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-latin-farm",
	Action = "build", Value = "unit-latin-farm", Popup = "popup-building",
	Key = "f", Hint = _("Build ~!Farm"),
	ForUnit = {"unit-teuton-worker"}
} )

DefineButton( { Pos = 3, Level = 1, Icon = "icon-latin-barracks",
	Action = "build", Value = "unit-latin-barracks", Popup = "popup-building",
	Key = "b", Hint = _("Build ~!Barracks"),
	ForUnit = {"unit-teuton-worker"}
} )

DefineButton( { Pos = 5, Level = 1, Icon = "icon-latin-smithy",
	Action = "build", Value = "unit-latin-smithy", Popup = "popup-building",
	Key = "s", Hint = _("Build ~!Smithy"),
	ForUnit = {"unit-teuton-worker"}
} )
