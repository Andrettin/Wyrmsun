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

-- general commands -------------------------------

DefineButton( { Pos = 3, Level = 0, Icon = "icon-germanic-short-sword",
	Action = "attack",
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-warrior",
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-frank-swordsman", "unit-teuton-ritter", "unit-frank-horseman",
		"unit-goblin-swordsman"
	}
})

DefineButton( { Pos = 3, Level = 0, Icon = "icon-germanic-broad-sword",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-germanic-broad-sword"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-warrior",
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-frank-swordsman", "unit-teuton-ritter", "unit-frank-horseman",
		"germanic-group", "teuton-group"
	}
})

DefineButton( { Pos = 3, Level = 0, Icon = "icon-long-spear",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-germanic-long-spear"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-spearman", "unit-frank-spearman"
	}
})

DefineButton( { Pos = 2, Level = 0, Icon = "icon-germanic-wooden-oblong-shield",
	Action = "stop",
	Key = "s", Hint = _("~!Stop"), Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-warrior", "unit-germanic-spearman",
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-frank-swordsman", "unit-teuton-spearman", "unit-frank-spearman"
	}
})

DefineButton( { Pos = 2, Level = 0, Icon = "icon-germanic-bronze-shield",
	Action = "stop",
	Allowed = "check-upgrade", AllowArg = {"upgrade-germanic-bronze-shield"},
	Key = "s", Hint = _("~!Stop"), Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-warrior", "unit-germanic-spearman",
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-frank-swordsman", "unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-ritter", "unit-frank-horseman",
		"germanic-group", "teuton-group"
	}
})

DefineButton( { Pos = 3, Level = 0, Icon = "icon-germanic-arrow",
	Action = "attack",
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-archer", "unit-teuton-archer", "unit-goblin-archer", "unit-goblin-headhunter"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-germanic-barbed-arrow",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-germanic-barbed-arrow"},
  Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
  ForUnit = {
	"unit-germanic-archer", "unit-teuton-archer"
  } } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-germanic-stand-ground",
  Action = "stand-ground",
  Key = "t", Hint = _("S~!tand Ground"), Popup = "popup-commands",
  ForUnit = {
	"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-frank-swordsman",
	"unit-goblin-swordsman"
} } )

-- worker specific actions ---------------------------------------------------

DefineButton( { Pos = 5, Level = 0, Icon = "icon-germanic-return-goods",
	Action = "return-goods",
	Key = "g", Hint = _("Return with ~!Goods"), Popup = "popup-commands",
	ForUnit = {"unit-germanic-worker", "unit-teuton-worker"}
} )

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-germanic-broad-sword",
	Action = "research", Value = "upgrade-germanic-broad-sword",
	Allowed = "check-single-research",
	Key = "w", Hint = _("Research Broad S~!word"), Popup = "popup-research",
	Description = "+2 Damage for Eralas and Kriegers.",
	ForUnit = {"unit-germanic-smithy", "unit-teuton-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-germanic-bronze-shield",
	Action = "research", Value = "upgrade-germanic-bronze-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Bronze ~!Shield"), Popup = "popup-research",
	Description = "+2 Armor for Eralas and Kriegers.",
	ForUnit = {"unit-germanic-smithy", "unit-teuton-smithy"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-long-spear",
	Action = "research", Value = "upgrade-germanic-long-spear",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Long ~!Spear"), Popup = "popup-research",
	Description = "+2 Damage for Speerkampfers.",
--	ForUnit = {"unit-germanic-carpenters-shop", "unit-teuton-lumber-mill"}
	ForUnit = {"unit-teuton-lumber-mill"}
} )
  
DefineButton( { Pos = 2, Level = 0, Icon = "icon-germanic-barbed-arrow",
	Action = "research", Value = "upgrade-germanic-barbed-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = _("Research Barbed ~!Arrow"), Popup = "popup-research",
	Description = "+1 Damage for Skutans.",
	ForUnit = {"unit-germanic-carpenters-shop", "unit-teuton-lumber-mill"}
} )
  
DefineButton( { Pos = 3, Level = 0, Icon = "icon-wood-plow",
	Action = "research", Value = "upgrade-germanic-wood-plow",
	Allowed = "check-single-research",
	Description = _("+1 Food supply for Farms."),
	Key = "p", Hint = _("Research Wood ~!Plow"), Popup = "popup-research",
	ForUnit = {"unit-germanic-carpenters-shop", "unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-civilization",
	Action = "research", Value = "upgrade-teuton-civilization",
	Allowed = "check-single-research",
	Key = "t", Hint = _("Develop ~!Teuton Civilization"), Popup = "popup-research",
	ForUnit = {"unit-germanic-town-hall"}
} )
  
