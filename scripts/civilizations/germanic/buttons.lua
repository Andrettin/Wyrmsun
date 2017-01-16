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
--      (c) Copyright 2014-2017 by Andrettin
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

-- Buildings -----------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-germanic-town-hall",
	Action = "build", Value = "unit-germanic-town-hall",
	Key = "h", Hint = _("Build Chieftain's ~!Hall"), Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

DefineButton( { Pos = 2, Level = 1, Icon = "icon-germanic-farm",
	Action = "build", Value = "unit-germanic-farm",
	Key = "f", Hint = _("Build ~!Farm"), Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

DefineButton( { Pos = 3, Level = 1, Icon = "icon-germanic-barracks",
	Action = "build", Value = "unit-germanic-barracks",
	Key = "w", Hint = _("Build ~!War Lodge"), Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

DefineButton( { Pos = 4, Level = 1, Icon = "icon-germanic-carpenters-shop",
	Action = "build", Value = "unit-germanic-carpenters-shop",
	Key = "r", Hint = _("Build Ca~!rpenter's Shop"), Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

DefineButton( { Pos = 5, Level = 1, Icon = "icon-germanic-smithy",
	Action = "build", Value = "unit-germanic-smithy",
	Key = "s", Hint = _("Build ~!Smithy"), Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

--[[
DefineButton( { Pos = 7, Level = 1, Icon = "icon-germanic-temple",
	Action = "build", Value = "unit-germanic-temple",
	Key = "p", Hint = _("Build Tem~!ple"), Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})
--]]

DefineButton( { Pos = 9, Level = 1, Icon = "icon-germanic-dock",
	Action = "build", Value = "unit-germanic-dock",
	Key = "d", Hint = _("Build ~!Dock"), Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

-- Units --------------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-germanic-worker",
	Action = "train-unit", Value = "unit-germanic-worker",
	Key = "b", Hint = _("Train ~!Bura"), Popup = "popup-unit",
	ForUnit = {"unit-germanic-town-hall"}
})

DefineButton( { Pos = 1, Level = 0, Icon = "icon-germanic-warrior",
	Action = "train-unit", Value = "unit-germanic-warrior",
	Key = "e", Hint = _("Train ~!Erala"), Popup = "popup-unit",
	ForUnit = {"unit-germanic-barracks"}
})

DefineButton( { Pos = 3, Level = 0, Icon = "icon-germanic-archer",
	Action = "train-unit", Value = "unit-germanic-archer",
	Key = "s", Hint = _("Train ~!Skutan"), Popup = "popup-unit",
	ForUnit = {"unit-germanic-barracks"}
})

DefineButton( { Pos = 1, Level = 0,
	Action = "train-unit", Value = "unit-germanic-transport-ship",
	Key = "t", Hint = _("Build ~!Transport"), Popup = "popup-unit",
	ForUnit = {"unit-germanic-dock"}
})

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-germanic-broad-sword",
	Action = "research", Value = "upgrade-germanic-broad-sword",
	Allowed = "check-single-research",
	Key = "w", Hint = _("Research Broad S~!word"), Popup = "popup-research",
	Description = "+2 Damage for Eralas, Kunis, Kriegers and Adels.",
	ForUnit = {"unit-germanic-smithy", "unit-teuton-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-germanic-bronze-shield",
	Action = "research", Value = "upgrade-germanic-bronze-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = _("Research Bronze ~!Shield"), Popup = "popup-research",
	Description = "+2 Armor for Eralas, Kunis, Kriegers and Adels.",
	ForUnit = {"unit-germanic-smithy", "unit-teuton-smithy", "unit-latin-smithy"}
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
	Description = "+2 Damage for Skutans and Schutzes.",
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
  
-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 2,
	Action = "experience-upgrade-to", Value = "unit-germanic-veteran-warrior",
	Key = "k", Hint = _("Upgrade to ~!Kuni"), Popup = "popup-unit",
	ForUnit = {"unit-germanic-warrior"}
} )

