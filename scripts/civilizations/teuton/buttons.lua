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
--      (c) Copyright 2014-2021 by Andrettin
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

DefineButton( { Pos = 3, Icon = "icon-catapult-projectile-1",
	Action = "attack",
	Key = "a", Hint = "~!Attack", Popup = "popup_commands",
	ForUnit = {
		"unit-teuton-catapult",
		"unit-norse-longship"
	}
} )

DefineButton( { Pos = 3, Icon = "icon-catapult-projectile-2",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-catapult-projectile-1"},
	Key = "a", Hint = "~!Attack", Popup = "popup_commands",
	ForUnit = {
		"unit-teuton-catapult",
		"unit-norse-longship"
	}
} )

DefineButton( { Pos = 3, Icon = "icon-catapult-projectile-3",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-catapult-projectile-2"},
	Key = "a", Hint = "~!Attack", Popup = "popup_commands",
	ForUnit = {
		"unit-teuton-catapult",
		"unit-norse-longship"
	}
} )

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 2, Icon = "icon-teuton-spatha",
	Action = "research", Value = "upgrade-teuton-spatha",
	Allowed = "check-single-research",
	Key = "p", Hint = "Research S~!patha", Popup = "popup_research",
	Description = "+2 Damage for swordwielders. Allows Spathas to be sold at the Market.",
	ForUnit = {"unit_teutonic_smithy", "unit-norse-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 4, Icon = "saxon_iron_shield",
	Action = "research", Value = "upgrade-teuton-iron-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Iron ~!Shield", Popup = "popup_research",
	Description = "+2 Armor for melee infantry and cavalry. Allows Iron Shields to be sold at the Market.",
	ForUnit = {"unit_teutonic_smithy", "unit-norse-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 5, Icon = "icon-catapult-projectile-2",
	Action = "research", Value = "upgrade-teuton-catapult-projectile-1",
	Allowed = "check-single-research",
	Key = "c", Hint = "Research Granite ~!Catapult Projectile", Popup = "popup_research",
	Description = "+12 Damage for Catapults, +5 Damage for Longships.",
	ForUnit = {"unit_teutonic_smithy", "unit-norse-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 6, Icon = "icon-catapult-projectile-3",
	Action = "research", Value = "upgrade-teuton-catapult-projectile-2",
	Allowed = "check-single-research",
	Key = "c", Hint = "Research Metal ~!Catapult Projectile", Popup = "popup_research",
	Description = "+12 Damage for Catapults, +5 Damage for Longships.",
	ForUnit = {"unit_teutonic_smithy", "unit-norse-smithy", "unit-latin-smithy"}
} )

DefineButton( { Pos = 2, Icon = "icon-pike",
	Action = "research", Value = "upgrade-teuton-pike",
	Allowed = "check-single-research",
	Key = "k", Hint = "Research Pi~!ke", Popup = "popup_research",
	Description = "+2 Damage for Spearmen. Allows Pikes to be sold at the Market.",
	ForUnit = {"unit-norse-lumber-mill", "unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 4, Icon = "icon-bodkin-arrow",
	Action = "research", Value = "upgrade-teuton-bodkin-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = "Research Bodkin ~!Arrow", Popup = "popup_research",
	Description = "+2 Damage for Archers, Strongholds and Guard Towers. Allows Bodkin Arrows to be sold at the Market.",
	ForUnit = {"unit-norse-lumber-mill", "unit-teuton-lumber-mill"}
} )

DefineButton( { Pos = 5, Icon = "icon-cauldron",
	Action = "research", Value = "upgrade-teuton-alchemy",
	Allowed = "check-single-research",
	Description = "+1 Fire Damage for Archers, Strongholds and Guard Towers, +4 Fire Damage for Catapults and Longships. Allows new magic affixes for items sold at the Market. Allows potions and elixirs to be sold at the Market.",
	Key = "a", Hint = "Research ~!Alchemy", Popup = "popup_research",
	ForUnit = {"unit-teuton-university"}
} )

-- Deities ----------------------------------------------------------

DefineButton( { Pos = 5, Icon = "icon-christianity",
	Action = "research", Value = "upgrade_deity_christian_god",
	Allowed = "check-single-research",
	Key = "c", Hint = "Convert to ~!Christianity", Popup = "popup_research",
	Description = "Choose Christianity as your religion. +10 HP, +20 Mana and enables Healing and Blessing spells for Clerics. Allows new magic affixes for items sold at the Market. Incompatible with any pagan deities.",
	ForUnit = {"unit-teuton-temple", "unit-norse-temple"}
})
  
DefineButton( { Pos = 6, Icon = "icon-odin",
	Action = "research", Value = "upgrade-deity-odin",
	Allowed = "check-upgrade-or", AllowArg = {"upgrade-frankish-civilization", "upgrade-gothic-civilization", "upgrade-suebi-civilization", "upgrade_teutonic_civilization"},
	Key = "w", Hint = "Worship ~!Wodan", Popup = "popup_research",
	Description = "Choose Wodan as your major deity. +2 Damage for Archers, enables Far Sight spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Christianity religion or with the Thunor major deity.",
	ForUnit = {"unit-teuton-temple"}
})
  
DefineButton( { Pos = 6, Icon = "icon-odin",
	Action = "research", Value = "upgrade-deity-odin",
	Allowed = "check-upgrade", AllowArg = {"upgrade-anglo-saxon-civilization"},
	Key = "w", Hint = "Worship ~!Woden", Popup = "popup_research",
	Description = "Choose Woden as your major deity. +2 Damage for Archers, enables Far Sight spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Christianity religion or with the Thunor major deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 7, Icon = "icon-thor",
	Action = "research", Value = "upgrade-deity-thor",
	Allowed = "check-upgrade-or", AllowArg = {"upgrade-anglo-saxon-civilization", "upgrade-frankish-civilization", "upgrade-gothic-civilization", "upgrade-suebi-civilization", "upgrade_teutonic_civilization"},
	Key = "t", Hint = "Worship ~!Thunor", Popup = "popup_research",
	Description = "Choose Thunor as your major deity. +2 Damage for sword infantry, enables Shocking Grasp spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Christianity religion or with the Wodan major deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 10, Icon = "icon-tyr",
	Action = "research", Value = "upgrade-deity-tyr",
	Key = "y", Hint = "Worship T~!yr", Popup = "popup_research",
	Description = "Choose Tyr as a minor deity. +2 Damage for sword infantry, enables Inspire spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Heimdall and Hel minor deities.",
	ForUnit = {"unit-teuton-temple", "unit-norse-temple"}
})

DefineButton( { Pos = 10, Icon = "icon-tyr",
	Action = "research", Value = "upgrade-deity-tyr",
	Key = "z", Hint = "Worship ~!Ziu", Popup = "popup_research",
	Allowed = "check-upgrade-or", AllowArg = {"upgrade-frankish-civilization", "upgrade-suebi-civilization", "upgrade_teutonic_civilization"},
	Description = "Choose Ziu as a minor deity. +2 Damage for sword infantry, enables Inspire spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Hella minor deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 10, Icon = "icon-tyr",
	Action = "research", Value = "upgrade-deity-tyr",
	Key = "w", Hint = "Worship Ti~!w", Popup = "popup_research",
	Allowed = "check-upgrade", AllowArg = {"upgrade-anglo-saxon-civilization"},
	Description = "Choose Tiw as a minor deity. +2 Damage for sword infantry, enables Inspire spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Heimdall and Hel minor deities.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 11, Icon = "icon-heimdall",
	Action = "research", Value = "upgrade-deity-heimdall",
	Key = "h", Hint = "Worship ~!Heimdall", Popup = "popup_research",
	Description = "Choose Heimdall as a minor deity. +1 Sight for Archers, enables Precision spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Frankish, Gothic, Suebi and Teuton civilizations, and with the Hel and Tyr minor deities.",
	ForUnit = {"unit-teuton-temple", "unit-norse-temple"}
})

DefineButton( { Pos = 12, Icon = "icon-hel",
	Action = "research", Value = "upgrade-deity-hel",
	Key = "l", Hint = "Worship He~!l", Popup = "popup_research",
	Description = "Choose Hel as a minor deity. +20 Mana and enables Wither spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Heimdall and Tyr minor deities.",
	ForUnit = {"unit-teuton-temple", "unit-norse-temple"}
})

DefineButton( { Pos = 12, Icon = "icon-hel",
	Action = "research", Value = "upgrade-deity-hel",
	Key = "l", Hint = "Worship He~!lla", Popup = "popup_research",
	Allowed = "check-upgrade-or", AllowArg = {"upgrade-frankish-civilization", "upgrade-suebi-civilization", "upgrade_teutonic_civilization"},
	Description = "Choose Hella as a minor deity. +20 Mana and enables Wither spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Ziu minor deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 12, Icon = "icon-hel",
	Action = "research", Value = "upgrade-deity-hel",
	Key = "l", Hint = "Worship Ha~!lja", Popup = "popup_research",
	Allowed = "check-upgrade", AllowArg = {"upgrade-gothic-civilization"},
	Description = "Choose Halja as a minor deity. +20 Mana and enables Wither spell for Gudjans. Allows new magic affixes for items sold at the Market. Incompatible with the Tyr minor deity.",
	ForUnit = {"unit-teuton-temple"}
})

DefineButton( { Pos = 9, Level = "choose-individual-upgrade-level", Icon = "icon-christianity",
	Action = "learn-ability", Value = "upgrade_deity_christian_god",
	Key = "c", Hint = "Convert to ~!Christianity", Popup = "popup_learn_ability",
	Description = "Choose Christianity as your hero's religion. +10 HP, +20 Mana and enables Healing and Blessing spells for Clerics. Incompatible with any pagan deities.",
	ForUnit = {
		"unit_teuton_worker",
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-latin-legionary", "unit-latin-veteran-legionary", "unit-latin-centurion", "unit-latin-javelineer",
		"unit-slavic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord",
		"unit-frank-horseman", "unit-frank-knight-lord",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-teuton-priest"
	}
})

DefineButton( { Pos = 10, Level = "choose-individual-upgrade-level", Icon = "icon-odin",
	Action = "learn-ability", Value = "upgrade-deity-odin",
	Key = "w", Hint = "Worship ~!Wodan", Popup = "popup_learn_ability",
	Description = "Choose Wodan as your hero's major deity. +2 Damage for Archers, enables Far Sight spell for Gudjans. Incompatible with the Christianity religion or with the Thunor major deity.",
	ForUnit = {
		"unit_teuton_worker",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord",
		"unit-frank-horseman", "unit-frank-knight-lord",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-teuton-priest"
	}
})
  
DefineButton( { Pos = 11, Level = "choose-individual-upgrade-level", Icon = "icon-thor",
	Action = "learn-ability", Value = "upgrade-deity-thor",
	Key = "t", Hint = "Worship ~!Thunor", Popup = "popup_learn_ability",
	Description = "Choose Thunor as your hero's major deity. +2 Damage for sword infantry, enables Shocking Grasp spell for Gudjans. Incompatible with the Christianity religion or with the Wodan major deity.",
	ForUnit = {
		"unit_teuton_worker",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord",
		"unit-frank-horseman", "unit-frank-knight-lord",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-teuton-priest"
	}
})

DefineButton( { Pos = 12, Level = "choose-individual-upgrade-level", Icon = "icon-tyr",
	Action = "learn-ability", Value = "upgrade-deity-tyr",
	Key = "z", Hint = "Worship ~!Ziu", Popup = "popup_learn_ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Ziu as a minor deity for your hero. +2 Damage for sword infantry and enables Inspire spell for Gudjans. Incompatible with the Hella minor deity.",
	ForUnit = {
		"unit_teuton_worker",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord",
		"unit-frank-horseman", "unit-frank-knight-lord",
		"unit-teuton-priest"
	}
})

--[[
DefineButton( { Pos = 13, Level = "choose-individual-upgrade-level", Icon = "icon-heimdall",
	Action = "learn-ability", Value = "upgrade-deity-heimdall",
	Key = "d", Hint = "Worship Haima~!dala", Popup = "popup_learn_ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Heimdall as a minor deity for your hero. +1 Sight for Archers, enables Precision spell for Gudjans. Incompatible with the Haljo and Tiwaz minor deities.",
	ForUnit = {
	}
})
--]]

DefineButton( { Pos = 14, Level = "choose-individual-upgrade-level", Icon = "icon-hel",
	Action = "learn-ability", Value = "upgrade-deity-hel",
	Key = "l", Hint = "Worship He~!lla", Popup = "popup_learn_ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Hella as a minor deity for your hero. +20 Mana and enables Wither spell for Gudjans. Incompatible with the Ziu minor deity.",
	ForUnit = {
		"unit_teuton_worker",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord",
		"unit-frank-horseman", "unit-frank-knight-lord",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-teuton-priest"
	}
})

DefineButton( { Pos = 14, Level = "choose-individual-upgrade-level", Icon = "icon-hel",
	Action = "learn-ability", Value = "upgrade-deity-hel",
	Key = "l", Hint = "Worship Ha~!lja", Popup = "popup_learn_ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-odin", "upgrade-deity-thor"},
	Description = "Choose Halja as a minor deity for your hero. +20 Mana and enables Wither spell for Gudjans. Incompatible with the Tyr minor deity.",
	ForUnit = {
		"unit-gothic-horse-rider", "unit-gothic-horse-lord"
	}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Icon = "icon-teuton-guard-tower",
	Action = "upgrade-to", Value = "unit-teuton-guard-tower",
	Allowed = "check-upgrade-to",
	Key = "g", Hint = "Upgrade to ~!Guard Tower", Popup = "popup_building",
	ForUnit = {"unit-teuton-watch-tower", "unit-norse-watch-tower"}
} )

DefineButton( { Pos = 2, Icon = "icon-teuton-catapult-tower",
	Action = "upgrade-to", Value = "unit-teuton-catapult-tower",
	Allowed = "check-upgrade-to",
	Key = "c", Hint = "Upgrade to ~!Catapult Tower", Popup = "popup_building",
	ForUnit = {"unit-teuton-watch-tower", "unit-norse-watch-tower"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-teuton-veteran-swordsman",
	Key = "w", Hint = "Upgrade to Veteran S~!wordsman", Popup = "popup_unit",
	ForUnit = {"unit-teuton-swordsman", "unit-suebi-swordsman"}
})

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-teuton-heroic-swordsman",
	Key = "w", Hint = "Upgrade to ~!Warlord", Popup = "popup_unit",
	ForUnit = {"unit-teuton-veteran-swordsman"}
})

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level", Icon = "icon-teuton-ritter",
	Action = "experience-upgrade-to", Value = "unit-teuton-ritter",
	Key = "k", Hint = "Upgrade to ~!Knight", Popup = "popup_unit",
	ForUnit = {"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-norse-swordsman", "unit-latin-legionary", "unit-slavic-swordsman"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level",
	Action = "experience-upgrade-to", Value = "unit-teuton-knight-lord",
	Key = "k", Hint = "Upgrade to ~!Knight Lord", Popup = "popup_unit",
	ForUnit = {"unit-teuton-ritter"}
} )
