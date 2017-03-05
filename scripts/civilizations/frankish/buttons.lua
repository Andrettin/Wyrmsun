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
--      (c) Copyright 2017 by Andrettin
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

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 2, Level = 0, Icon = "icon-frankish-spatha",
	Action = "research", Value = "upgrade-frank-spatha",
	Allowed = "check-single-research",
	Key = "p", Hint = "Research S~!patha", Popup = "popup-research",
	Description = "+2 Damage for swordwielders.",
	ForUnit = {"unit-teuton-smithy"}
} )

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-frank-veteran-swordsman",
	Key = "a", Hint = "Upgrade to ~!Adal", Popup = "popup-unit",
	ForUnit = {"unit-frank-swordsman"}
} )

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-frank-heroic-swordsman",
	Key = "d", Hint = "Upgrade to ~!Truhtin", Popup = "popup-unit",
	ForUnit = {"unit-frank-veteran-swordsman"}
} )

DefineButton( { Pos = 2, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-frank-horseman",
	Key = "r", Hint = "Upgrade to ~!Ritar", Popup = "popup-unit",
	ForUnit = {"unit-frank-swordsman"}
} )

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-frank-knight-lord",
	Key = "h", Hint = "Upgrade to ~!Heriro", Popup = "popup-unit",
	ForUnit = {"unit-frank-horseman"}
} )

Load("scripts/civilizations/frankish/buttons_faction.lua")
