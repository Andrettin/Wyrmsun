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
--      (c) Copyright 2014-2020 by Andrettin
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

-- General Commands -------------------------------

DefineButton( { Pos = 3, Icon = "icon-catapult-projectile-1",
	Action = "attack",
	Key = "a", Hint = "~!Attack", Popup = "popup_commands",
	ForUnit = {
		"unit-goblin-war-machine", "unit-goblin-warship"
	}
} )

DefineButton( { Pos = 3, Icon = "icon-catapult-projectile-2",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-goblin-catapult-projectile-1"},
	Key = "a", Hint = "~!Attack", Popup = "popup_commands",
	ForUnit = {
		"unit-goblin-war-machine", "unit-goblin-warship"
	}
} )

DefineButton( { Pos = 3, Icon = "icon-catapult-projectile-3",
	Action = "attack",
	Allowed = "check-upgrade", AllowArg = {"upgrade-goblin-catapult-projectile-2"},
	Key = "a", Hint = "~!Attack", Popup = "popup_commands",
	ForUnit = {
		"unit-goblin-war-machine", "unit-goblin-warship"
	}
} )

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Icon = "icon-goblin-broad-sword",
	Action = "research", Value = "upgrade-goblin-broad-sword",
	Allowed = "check-single-research",
	Key = "w", Hint = "Research Broad S~!word", Popup = "popup_research",
	Description = "+2 Damage for Swordsmen. Allows Broad Swords to be sold at the Market.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 2, Icon = "icon-goblin-long-sword",
	Action = "research", Value = "upgrade-goblin-long-sword",
	Allowed = "check-single-research",
	Key = "w", Hint = "Research Long S~!word", Popup = "popup_research",
	Description = "+2 Damage for Swordsmen. Allows Long Swords to be sold at the Market.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 3, Icon = "icon-goblin-rimmed-shield",
	Action = "research", Value = "upgrade-goblin-rimmed-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Rimmed ~!Shield", Popup = "popup_research",
	Description = "+2 Armor for Swordsmen and Impalers. Allows Rimmed Shields to be sold at the Market.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 4, Icon = "icon-goblin-embossed-shield",
	Action = "research", Value = "upgrade-goblin-embossed-shield",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Embossed ~!Shield", Popup = "popup_research",
	Description = "+2 Armor for Swordsmen and Impalers. Allows Embossed Shields to be sold at the Market.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 5, Icon = "icon-catapult-projectile-2",
	Action = "research", Value = "upgrade-goblin-catapult-projectile-1",
	Allowed = "check-single-research",
	Key = "c", Hint = "Research Granite ~!Catapult Projectile", Popup = "popup_research",
	Description = "+12 Damage for War Machines and +5 Damage for Warships.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 6, Icon = "icon-catapult-projectile-3",
	Action = "research", Value = "upgrade-goblin-catapult-projectile-2",
	Allowed = "check-single-research",
	Key = "c", Hint = "Research Metal ~!Catapult Projectile", Popup = "popup_research",
	Description = "+12 Damage for War Machines and +5 Damage for Warships.",
	ForUnit = {"unit-goblin-smithy"}
} )

DefineButton( { Pos = 1, Icon = "icon-long-spear",
	Action = "research", Value = "upgrade-goblin-long-spear",
	Allowed = "check-single-research",
	Key = "s", Hint = "Research Long ~!Spear", Popup = "popup_research",
	Description = "+2 Damage for Impalers. Allows Long Spears to be sold at the Market.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 2, Icon = "icon-pike",
	Action = "research", Value = "upgrade-goblin-pike",
	Allowed = "check-single-research",
	Key = "k", Hint = "Research Pi~!ke", Popup = "popup_research",
	Description = "+2 Damage for Impalers. Allows Pikes to be sold at the Market.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 3, Icon = "icon-germanic-barbed-arrow",
	Action = "research", Value = "upgrade-goblin-barbed-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = "Research Barbed ~!Arrow", Popup = "popup_research",
	Description = "+2 Damage for Archers, Strongholds and Guard Towers. Allows Barbed Arrows to be sold at the Market.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 4, Icon = "icon-bodkin-arrow",
	Action = "research", Value = "upgrade-goblin-bodkin-arrow",
	Allowed = "check-single-research",
	Key = "a", Hint = "Research Bodkin ~!Arrow", Popup = "popup_research",
	Description = "+2 Damage for Archers, Strongholds and Guard Towers. Allows Bodkin Arrows to be sold at the Market.",
	ForUnit = {"unit-goblin-lumber-mill"}
} )

DefineButton( { Pos = 5, Icon = "icon-cauldron",
	Action = "research", Value = "upgrade-goblin-alchemy",
	Allowed = "check-single-research",
	Description = "+1 Fire Damage for Archers, Strongholds and Guard Towers, +4 Fire Damage for War Machines and Warships. Allows new magic affixes for items sold at the Market. Allows potions and elixirs to be sold at the Market.",
	Key = "a", Hint = "Research ~!Alchemy", Popup = "popup_research",
	ForUnit = {"unit-goblin-academy"}
} )

-- Deities ----------------------------------------------------------

DefineButton( { Pos = 5, Icon = "icon-gathaarl",
	Action = "research", Value = "upgrade-deity-gathaarl",
	Allowed = "check-single-research",
	Key = "g", Hint = "Worship ~!Gathaarl", Popup = "popup_research",
	Description = "Choose Gathaarl as your major deity. Allows new magic affixes for items sold at the Market. +2 Damage for Swordsmen, enables Terror spell for Shamans.",
	ForUnit = {"unit-goblin-temple"}
})

DefineButton( { Pos = 6, Icon = "icon-hel",
	Action = "research", Value = "upgrade-deity-hel",
	Allowed = "check-single-research",
	Key = "l", Hint = "Worship He~!l", Popup = "popup_research",
	Description = "Choose Hel as a minor deity. +20 Mana and enables Wither spell for Shamans. Allows new magic affixes for items sold at the Market.",
	ForUnit = {"unit-goblin-temple"}
})

DefineButton( { Pos = 9, Level = "choose-individual-upgrade-level", Icon = "icon-gathaarl",
	Action = "learn-ability", Value = "upgrade-deity-gathaarl",
	Key = "g", Hint = "Worship ~!Gathaarl", Popup = "popup_learn_ability",
	Description = "Choose Gathaarl as your hero's major deity. +2 Damage for Swordsmen, enables Terror spell for Shamans.",
	ForUnit = {
		"unit-goblin-worker",
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman",
		"unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-goblin-shaman"
	}
})

DefineButton( { Pos = 10, Level = "choose-individual-upgrade-level", Icon = "icon-hel",
	Action = "learn-ability", Value = "upgrade-deity-hel",
	Key = "l", Hint = "Worship He~!l", Popup = "popup_learn_ability",
	Allowed = "check-individual-upgrade-or", AllowArg = {"upgrade-deity-gathaarl"},
	Description = "Choose Hel as a minor deity for your hero. +20 Mana and enables Wither spell for Shamans.",
	ForUnit = {
		"unit-goblin-worker",
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman",
		"unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-goblin-shaman"
	}
})

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Icon = "icon-goblin-guard-tower",
	Action = "upgrade-to", Value = "unit-goblin-guard-tower",
	Allowed = "check-upgrade-to",
	Key = "g", Hint = "Upgrade to ~!Guard Tower", Popup = "popup_building",
	ForUnit = {"unit-goblin-watch-tower"}
} )

DefineButton( { Pos = 2, Icon = "icon-goblin-catapult-tower",
	Action = "upgrade-to", Value = "unit-goblin-catapult-tower",
	Allowed = "check-upgrade-to",
	Key = "c", Hint = "Upgrade to ~!Catapult Tower", Popup = "popup_building",
	ForUnit = {"unit-goblin-watch-tower"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-goblin-barbarian",
	Action = "experience-upgrade-to", Value = "unit-goblin-barbarian",
	Key = "u", Hint = "~!Upgrade to Barbarian", Popup = "popup_unit",
	ForUnit = {"unit-goblin-swordsman"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-goblin-warlord",
	Action = "experience-upgrade-to", Value = "unit-goblin-warlord",
	Key = "u", Hint = "~!Upgrade to Warlord", Popup = "popup_unit",
	ForUnit = {"unit-goblin-barbarian"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-goblin-headhunter",
	Action = "experience-upgrade-to", Value = "unit-goblin-headhunter",
	Key = "u", Hint = "~!Upgrade to Headhunter", Popup = "popup_unit",
	ForUnit = {"unit-goblin-archer"}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-goblin-shadowstalker",
	Action = "experience-upgrade-to", Value = "unit-goblin-shadowstalker",
	Key = "u", Hint = "~!Upgrade to Shadowstalker", Popup = "popup_unit",
	ForUnit = {"unit-goblin-headhunter"}
} )
