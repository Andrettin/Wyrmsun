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
--      (c) Copyright 2014-2016 by Andrettin
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

-- Special Abilities ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-herbal-cure",
	Action = "cast-spell", Value = "spell-herbal-cure",
	Key = "h", Hint = _("~!Herbal Cure (per 1 HP)"), Popup = "popup-commands",
	ForUnit = {"unit-gnomish-herbalist", "unit-deep-gnomish-herbalist", "unit-forest-gnomish-herbalist"}
})

DefineButton( { Pos = 1, Level = 1, Icon = "icon-portent",
	Action = "learn-ability", Value = "upgrade-portent",
	Key = "p", Hint = _("Learn ~!Portent"), Popup = "popup-commands",
	ForUnit = {"unit-gnomish-herbalist", "unit-deep-gnomish-herbalist", "unit-forest-gnomish-herbalist"}
})

DefineButton( { Pos = 5, Level = 0, Icon = "icon-portent",
	Action = "cast-spell", Value = "spell-portent",
	Key = "p", Hint = _("~!Portent"), Popup = "popup-commands",
	ForUnit = {"unit-gnomish-herbalist", "unit-deep-gnomish-herbalist", "unit-forest-gnomish-herbalist"}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-duelist",
	Action = "experience-upgrade-to", Value = "unit-gnomish-duelist",
	Key = "u", Hint = _("~!Upgrade to Duelist"), Popup = "popup-unit",
	ForUnit = {"unit-gnomish-recruit"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-master-at-arms",
	Action = "experience-upgrade-to", Value = "unit-gnomish-master-at-arms",
	Key = "u", Hint = _("~!Upgrade to Master at Arms"), Popup = "popup-unit",
	ForUnit = {"unit-gnomish-duelist"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-duelist",
	Action = "experience-upgrade-to", Value = "unit-deep-gnomish-duelist",
	Key = "u", Hint = _("~!Upgrade to Duelist"), Popup = "popup-unit",
	ForUnit = {"unit-deep-gnomish-recruit"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-master-at-arms",
	Action = "experience-upgrade-to", Value = "unit-deep-gnomish-master-at-arms",
	Key = "u", Hint = _("~!Upgrade to Master at Arms"), Popup = "popup-unit",
	ForUnit = {"unit-deep-gnomish-duelist"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-duelist",
	Action = "experience-upgrade-to", Value = "unit-forest-gnomish-duelist",
	Key = "u", Hint = _("~!Upgrade to Duelist"), Popup = "popup-unit",
	ForUnit = {"unit-forest-gnomish-recruit"}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-gnomish-master-at-arms",
	Action = "experience-upgrade-to", Value = "unit-forest-gnomish-master-at-arms",
	Key = "u", Hint = _("~!Upgrade to Master at Arms"), Popup = "popup-unit",
	ForUnit = {"unit-forest-gnomish-duelist"}
} )
