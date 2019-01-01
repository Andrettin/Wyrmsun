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
--      (c) Copyright 2014-2019 by Andrettin
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

DefineButton( { Pos = 1, Level = "build-structure-level", Icon = "icon-germanic-town-hall",
	Action = "build", Value = "unit-germanic-town-hall",
	Key = "h", Hint = "Build Chieftain's ~!Hall", Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

DefineButton( { Pos = 2, Level = "build-structure-level", Icon = "icon-germanic-farm",
	Action = "build", Value = "unit-germanic-farm",
	Key = "f", Hint = "Build ~!Farm", Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

DefineButton( { Pos = 3, Level = "build-structure-level", Icon = "icon-germanic-barracks",
	Action = "build", Value = "unit-germanic-barracks",
	Key = "w", Hint = "Build ~!War Lodge", Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

DefineButton( { Pos = 4, Level = "build-structure-level", Icon = "icon-germanic-carpenters-shop",
	Action = "build", Value = "unit-germanic-carpenters-shop",
	Key = "a", Hint = "Build C~!arpenter's Shop", Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

DefineButton( { Pos = 5, Level = "build-structure-level", Icon = "icon-germanic-smithy",
	Action = "build", Value = "unit-germanic-smithy",
	Key = "s", Hint = "Build ~!Smithy", Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

DefineButton( { Pos = 8, Level = "build-structure-level", Icon = "icon-germanic-temple",
	Action = "build", Value = "unit-germanic-temple",
	Key = "p", Hint = "Build Tem~!ple", Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

DefineButton( { Pos = 9, Level = "build-structure-level", Icon = "icon-germanic-market",
	Action = "build", Value = "unit-germanic-market",
	Key = "m", Hint = "Build ~!Market", Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

DefineButton( { Pos = 11, Level = "build-structure-level", Icon = "icon-germanic-dock",
	Action = "build", Value = "unit-germanic-dock",
	Key = "d", Hint = "Build ~!Dock", Popup = "popup-building",
	ForUnit = {"unit-germanic-worker"}
})

-- Units --------------------------------------------------------------

DefineButton( { Pos = 1, Icon = "icon-germanic-worker",
	Action = "train-unit", Value = "unit-germanic-worker",
	Key = "b", Hint = "Train ~!Bura", Popup = "popup-unit",
	ForUnit = {"unit-germanic-town-hall"}
})

DefineButton( { Pos = 1, Icon = "icon-germanic-warrior",
	Action = "train-unit", Value = "unit-germanic-warrior",
	Key = "e", Hint = "Train ~!Erala", Popup = "popup-unit",
	ForUnit = {"unit-germanic-barracks"}
})

DefineButton( { Pos = 3, Icon = "icon-germanic-archer",
	Action = "train-unit", Value = "unit-germanic-archer",
	Key = "s", Hint = "Train ~!Skutan", Popup = "popup-unit",
	ForUnit = {"unit-germanic-barracks"}
})

DefineButton( { Pos = 1,
	Action = "train-unit", Value = "unit-germanic-transport-ship",
	Key = "t", Hint = "Build ~!Transport", Popup = "popup-unit",
	ForUnit = {"unit-germanic-dock"}
})

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Icon = "icon-germanic-broad-sword",
	Action = "research", Value = "upgrade-germanic-broad-sword",
	Allowed = "check-single-research",
	Key = "w", Hint = "Research Broad S~!word", Popup = "popup-research",
	Description = "+2 Damage for swordwielders. Allows Broad Swords to be sold at the Market.",
	ForUnit = {"unit-germanic-smithy", "unit-norse-smithy", "unit-teuton-smithy", "unit-latin-smithy"}
})

DefineButton( { Pos = 3, Icon = "icon-germanic-bronze-shield",
	Action = "research", Value = "upgrade-germanic-bronze-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Bronze ~!Shield", Popup = "popup-research",
	Description = "+2 Armor for melee infantry and cavalry. Allows Bronze Shields to be sold at the Market.",
	ForUnit = {"unit-germanic-smithy", "unit-norse-smithy", "unit-teuton-smithy", "unit-latin-smithy"}
})

DefineButton( { Pos = 1, Icon = "icon-long-spear",
	Action = "research", Value = "upgrade-germanic-long-spear",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Long ~!Spear", Popup = "popup-research",
	Description = "+2 Damage for Spearmen. Allows Long Spears to be sold at the Market.",
--	ForUnit = {"unit-germanic-carpenters-shop", "unit-norse-lumber-mill", "unit-teuton-lumber-mill"}
	ForUnit = {"unit-norse-lumber-mill", "unit-teuton-lumber-mill"}
})
  
DefineButton( { Pos = 3, Icon = "icon-germanic-barbed-arrow",
	Action = "research", Value = "upgrade-germanic-barbed-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = "Research Barbed ~!Arrow", Popup = "popup-research",
	Description = "+2 Damage for archers, strongholds and guard towers. Allows Barbed Arrows to be sold at the Market.",
	ForUnit = {"unit-germanic-carpenters-shop", "unit-norse-lumber-mill", "unit-teuton-lumber-mill"}
})
  
-- Deities ----------------------------------------------------------

DefineButton( { Pos = 5, Icon = "icon-odin",
	Action = "research", Value = "upgrade-deity-odin",
	Allowed = "check-single-research",
	Key = "w", Hint = "Worship ~!Wodanaz", Popup = "popup-research",
	Description = "Choose Wodanaz as your major deity. +2 Damage for Skutans, enables Far Sight spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Thunraz major deity.",
	ForUnit = {"unit-germanic-temple"}
})

DefineButton( { Pos = 6, Icon = "icon-thor",
	Action = "research", Value = "upgrade-deity-thor",
	Allowed = "check-single-research",
	Key = "t", Hint = "Worship ~!Thunraz", Popup = "popup-research",
	Description = "Choose Thunraz as your major deity. +2 Damage for Eralas, enables Shocking Grasp spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Wodanaz major deity.",
	ForUnit = {"unit-germanic-temple"}
})

DefineButton( { Pos = 7, Icon = "icon-tyr",
	Action = "research", Value = "upgrade-deity-tyr",
	Allowed = "check-single-research",
	Key = "z", Hint = "Worship Tiwa~!z", Popup = "popup-research",
	Description = "Choose Tiwaz as a minor deity. +2 Damage for Eralas, enables Inspire spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Haimadala and Haljo minor deities.",
	ForUnit = {"unit-germanic-temple"}
})

DefineButton( { Pos = 8, Icon = "icon-heimdall",
	Action = "research", Value = "upgrade-deity-heimdall",
	Allowed = "check-single-research",
	Key = "d", Hint = "Worship Haima~!dala", Popup = "popup-research",
	Description = "Choose Haimadala as a minor deity. +1 Sight for Skutans, enables Precision spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Frankish, Gothic, Suebi and Teuton civilizations, and with the Haljo and Tiwaz minor deities.",
	ForUnit = {"unit-germanic-temple"}
})

DefineButton( { Pos = 9, Icon = "icon-hel",
	Action = "research", Value = "upgrade-deity-hel",
	Allowed = "check-single-research",
	Key = "l", Hint = "Worship Ha~!ljo", Popup = "popup-research",
	Description = "Choose Haljo as a minor deity. +20 Mana and enables Wither spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Haimadala and Tiwaz minor deities.",
	ForUnit = {"unit-germanic-temple"}
})

DefineButton( { Pos = 9, Level = "choose-individual-upgrade-level", Icon = "icon-odin",
	Action = "learn-ability", Value = "upgrade-deity-odin",
	Key = "w", Hint = "Worship ~!Wodanaz", Popup = "popup-learn-ability",
	Description = "Choose Wodanaz as your hero's major deity. +2 Damage for Skutans, enables Far Sight spell for Gudjans. Incompatible with the Thunraz major deity.",
	ForUnit = {
		"unit-germanic-worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest"
	}
})
  
DefineButton( { Pos = 10, Level = "choose-individual-upgrade-level", Icon = "icon-thor",
	Action = "learn-ability", Value = "upgrade-deity-thor",
	Key = "t", Hint = "Worship ~!Thunraz", Popup = "popup-learn-ability",
	Description = "Choose Thunraz as your hero's major deity. +2 Damage for Eralas, enables Shocking Grasp spell for Gudjans. Incompatible with the Wodanaz major deity.",
	ForUnit = {
		"unit-germanic-worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest"
	}
})

DefineButton( { Pos = 11, Level = "choose-individual-upgrade-level", Icon = "icon-tyr",
	Action = "learn-ability", Value = "upgrade-deity-tyr",
	Key = "z", Hint = "Worship Tiwa~!z", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Tiwaz as a minor deity for your hero. +2 Damage for Eralas and enables Inspire spell for Gudjans. Incompatible with the Haimadala and Haljo minor deities.",
	ForUnit = {
		"unit-germanic-worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest"
	}
})
  
DefineButton( { Pos = 12, Level = "choose-individual-upgrade-level", Icon = "icon-heimdall",
	Action = "learn-ability", Value = "upgrade-deity-heimdall",
	Key = "d", Hint = "Worship Haima~!dala", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Haimadala as a minor deity for your hero. +1 Sight for Skutans, enables Precision spell for Gudjans. Incompatible with the Haljo and Tiwaz minor deities.",
	ForUnit = {
		"unit-germanic-worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest"
	}
})
  
DefineButton( { Pos = 13, Level = "choose-individual-upgrade-level", Icon = "icon-hel",
	Action = "learn-ability", Value = "upgrade-deity-hel",
	Key = "l", Hint = "Worship Ha~!ljo", Popup = "popup-learn-ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Haljo as a minor deity for your hero. +20 Mana and enables Wither spell for Gudjans. Incompatible with the Haimadala and Tiwaz minor deities.",
	ForUnit = {
		"unit-germanic-worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest"
	}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-germanic-veteran-warrior",
	Key = "k", Hint = "Upgrade to ~!Kuni", Popup = "popup-unit",
	ForUnit = {"unit-germanic-warrior"}
})

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-germanic-chieftain",
	Key = "d", Hint = "Upgrade to ~!Druhtana", Popup = "popup-unit",
	ForUnit = {"unit-germanic-veteran-warrior"}
})
