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

-- General Commands -------------------------------

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-1",
	Action = "attack",
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-catapult"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-2",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-catapult-projectile-1"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-catapult"
	}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-3",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-catapult-projectile-2"},
	Key = "a", Hint = _("~!Attack"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-catapult"
	}
} )

-- Buildings -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-germanic-town-hall",
	Action = "build", Value = "unit-teuton-town-hall",
	Key = "h", Hint = _("Build Chieftain's ~!Hall"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})
  
DefineButton( { Pos = 1, Level = 1, Icon = "icon-teuton-town-hall",
	Action = "build", Value = "unit-teuton-town-hall",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-masonry"},
	Key = "h", Hint = _("Build Rat~!haus"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 2, Level = 1,
	Action = "build", Value = "unit-teuton-farm",
	Key = "f", Hint = _("Build ~!Farm"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 3, Level = 1, Icon = "icon-germanic-barracks",
	Action = "build", Value = "unit-teuton-barracks",
	Key = "w", Hint = _("Build ~!War Lodge"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})
  
DefineButton( { Pos = 3, Level = 1, Icon = "icon-teuton-barracks",
	Action = "build", Value = "unit-teuton-barracks",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-masonry"},
	Key = "b", Hint = _("Build ~!Barracks"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})
  
DefineButton( { Pos = 4, Level = 1, Icon = "icon-germanic-carpenters-shop",
	Action = "build", Value = "unit-teuton-lumber-mill",
	Key = "r", Hint = _("Build Ca~!rpenter's Shop"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 4, Level = 1, Icon = "icon-teuton-lumber-mill",
	Action = "build", Value = "unit-teuton-lumber-mill",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-masonry"},
	Key = "l", Hint = _("Build ~!Lumber Mill"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 5, Level = 1,
	Action = "build", Value = "unit-teuton-smithy",
	Key = "s", Hint = _("Build ~!Smithy"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})
  
DefineButton( { Pos = 6, Level = 1,
	Action = "build", Value = "unit-teuton-stables",
	Key = "e", Hint = _("Build Stabl~!es"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 7, Level = 1, Icon = "icon-teuton-church",
	Action = "build", Value = "unit-teuton-temple",
	Key = "p", Hint = _("Build Tem~!ple"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 8, Level = 1, Icon = "icon-teuton-watch-tower",
	Action = "build", Value = "unit-teuton-watch-tower",
	Key = "t", Hint = _("Build Watch ~!Tower"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

DefineButton( { Pos = 9, Level = 1,
	Action = "build", Value = "unit-teuton-dock",
	Key = "d", Hint = _("Build ~!Dock"), Popup = "popup-building",
	ForUnit = {"unit-teuton-worker"}
})

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-teuton-spatha",
	Action = "research", Value = "upgrade-teuton-spatha",
	Allowed = "check-single-research",
	Key = "p", Hint = _("Research S~!patha"), Popup = "popup-research",
	Description = "+2 Damage for Kriegers and Ritters.",
	ForUnit = {"unit-teuton-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-frankish-spatha",
	Action = "research", Value = "upgrade-frank-spatha",
	Allowed = "check-single-research",
	Key = "p", Hint = _("Research S~!patha"), Popup = "popup-research",
	Description = "+2 Damage for Kriegers and Ritters.",
	ForUnit = {"unit-teuton-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-iron-shield",
	Action = "research", Value = "upgrade-teuton-iron-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Iron ~!Shield"), Popup = "popup-research",
	Description = "+2 Armor for Kriegers, Speerkampfers and Ritters.",
	ForUnit = {"unit-teuton-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-2",
	Action = "research", Value = "upgrade-teuton-catapult-projectile-1",
	Allowed = "check-single-research",
	Key = "c", Hint = _("Research Granite ~!Catapult Projectile"), Popup = "popup-research",
	Description = "+15 Damage for Catapults.",
	ForUnit = {"unit-teuton-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-catapult-projectile-3",
	Action = "research", Value = "upgrade-teuton-catapult-projectile-2",
	Allowed = "check-single-research",
	Key = "c", Hint = _("Research Metal ~!Catapult Projectile"), Popup = "popup-research",
	Description = "+15 Damage for Catapults.",
	ForUnit = {"unit-teuton-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-pike",
	Action = "research", Value = "upgrade-teuton-pike",
	Allowed = "check-single-research",
	Key = "k", Hint = _("Research Pi~!ke"), Popup = "popup-research",
	Description = _("+2 Damage for Speerkampfers."),
	ForUnit = {"unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-bodkin-arrow",
	Action = "research", Value = "upgrade-teuton-bodkin-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = _("Research Bodkin ~!Arrow"), Popup = "popup-research",
	Description = "+2 Damage for Schutzes.",
	ForUnit = {"unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-iron-tipped-wood-plow",
	Action = "research", Value = "upgrade-teuton-iron-tipped-wood-plow",
	Allowed = "check-single-research",
	Description = _("+1 Food supply for Farms."),
	Key = "p", Hint = _("Research Iron-Tipped Wood ~!Plow"), Popup = "popup-research",
	ForUnit = {"unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-masonry",
	Action = "research", Value = "upgrade-teuton-masonry",
	Allowed = "check-single-research",
	Key = "m", Hint = _("Research ~!Masonry"), Popup = "popup-research",
	Description = "+20% Hit Points and +5 Armor for buildings, and allows Watch Towers to be upgraded to Guard Towers and Rathauses to Burgs.",
	ForUnit = {"unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-coinage",
	Action = "research", Value = "upgrade-teuton-coinage",
	Allowed = "check-single-research",
	Description = _("+10% Copper, Silver and Gold Processing."),
	Key = "c", Hint = _("Research ~!Coinage"), Popup = "popup-research",
	ForUnit = {"unit-teuton-stronghold"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-norse-runewriting",
	Action = "research", Value = "upgrade-teuton-writing",
	Allowed = "check-single-research",
	Description = _("+10% Time Efficiency for all buildings, changes faction from tribe to polity."),
	Key = "w", Hint = _("Research ~!Writing"), Popup = "popup-research",
	ForUnit = {"unit-teuton-stronghold"}
} )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-cauldron",
	Action = "research", Value = "upgrade-teuton-alchemy",
	Allowed = "check-single-research",
	Description = _("+1 Fire Damage for Schutzes, +5 Fire Damage for Catapults."),
	Key = "a", Hint = _("Research ~!Alchemy"), Popup = "popup-research",
	ForUnit = {"unit-teuton-stronghold"}
} )

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-teuton-guard-tower",
  Action = "upgrade-to", Value = "unit-teuton-guard-tower",
  Key = "g", Hint = _("Upgrade to ~!Guard Tower"), Popup = "popup-building",
  ForUnit = {"unit-teuton-watch-tower"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-teuton-stronghold",
	Action = "upgrade-to", Value = "unit-teuton-stronghold",
	Allowed = "check-upgrade-to",
	Key = "u", Hint = _("Upgrade to B~!urg"), Popup = "popup-building",
	ForUnit = {"unit-teuton-town-hall", "unit-latin-town-hall"}
} )

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-teuton-veteran-swordsman",
	Key = "a", Hint = _("Upgrade to ~!Adel"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-swordsman", "unit-suebi-swordsman"}
} )

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-teuton-heroic-swordsman",
	Key = "d", Hint = _("Upgrade to ~!Degen"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-veteran-swordsman"}
} )

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-frank-veteran-swordsman",
	Key = "a", Hint = _("Upgrade to ~!Adel"), Popup = "popup-unit",
	ForUnit = {"unit-frank-swordsman"}
} )

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-frank-heroic-swordsman",
	Key = "d", Hint = _("Upgrade to ~!Degen"), Popup = "popup-unit",
	ForUnit = {"unit-frank-veteran-swordsman"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-teuton-ritter",
	Action = "experience-upgrade-to", Value = "unit-teuton-ritter",
	Key = "r", Hint = _("Upgrade to ~!Ritter"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-swordsman", "unit-suebi-swordsman"}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-frank-horseman",
	Action = "experience-upgrade-to", Value = "unit-frank-horseman",
	Key = "r", Hint = _("Upgrade to ~!Ritter"), Popup = "popup-unit",
	ForUnit = {"unit-frank-swordsman"}
} )
