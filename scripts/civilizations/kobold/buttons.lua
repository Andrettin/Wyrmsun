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
--      (c) Copyright 2017-2018 by Andrettin
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

-- Mercenaries

DefineButton( { Pos = 1,
	Action = "train-unit", Value = "unit-kobold-footpad",
	Key = "f", Hint = "Hire ~!Footpad", Popup = "popup-unit",
	ForUnit = {"unit-mercenary-camp"}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-kobold-slasher",
	Action = "experience-upgrade-to", Value = "unit-kobold-slasher",
	Key = "u", Hint = "~!Upgrade to Slasher", Popup = "popup-unit",
	ForUnit = {"unit-kobold-footpad"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-kobold-champion",
	Action = "experience-upgrade-to", Value = "unit-kobold-champion",
	Key = "u", Hint = "~!Upgrade to Champion", Popup = "popup-unit",
	ForUnit = {"unit-kobold-slasher"}
} )

