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
--      (c) Copyright 2001-2020 by Vladi Belperchinov-Shabanski, Lutz Sammer,
--                                 Jimmy Salmon and Andrettin
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

-- General Commands ------------------------------------------------------

DefineButton( { Pos = 6, Icon = "icon-attack-ground",
	Action = "attack-ground",
	Key = "g", Hint = "Attack ~!Ground", Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-catapult", "germanic-group", "anglo-saxon-group", "english-group", "frankish-group", "goth-group", "norse-group", "suebi-group", "teuton-group",
		"unit-norse-longship",
		"unit-dwarven-ballista", "unit-dwarven-ballista-warship", "dwarf-group",
		"unit-goblin-war-machine", "unit-goblin-warship", "goblin-group"
	}
})

DefineButton( { Pos = 5, Icon = "icon-unload",
	Action = "unload",
	Key = "u", Hint = "~!Unload", Popup = "popup-commands",
	ForUnit = {
		"unit-caravan", "unit-gnomish-caravan",
		"unit-germanic-transport-ship", "unit-teuton-kogge", "unit-dwarven-transport-ship", "unit-goblin-transport-ship"
	}
})

DefineButton( { Pos = 16, Icon = "icon-salvage",
	Action = "salvage",
	Key = "delete", Hint = "Salvage Unit (~<Del~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-minecart"
	}
})

-- Worker Commands ------------------------------------------------------

DefineButton( { Pos = 4, Icon = "icon-repair",
	Action = "repair",
	Key = "r", Hint = "~!Repair", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 5, Icon = "icon-harvest",
	Action = "harvest",
	Key = "h", Hint = "~!Harvest Resource", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker",
		"unit-minecart"
	}
})

DefineButton( { Pos = 5,
	Action = "return-goods",
	Key = "g", Hint = "Return with ~!Goods", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker",
		"unit-minecart",
		"unit-caravan", "unit-gnomish-caravan",
		"unit-germanic-transport-ship", "unit-teuton-kogge", "unit-dwarven-transport-ship", "unit-goblin-transport-ship"
	}
})

DefineButton( { Pos = 13, Icon = "icon-build-basic-structure",
	Action = "button", Value = "build-structure-level",
	Allowed = "check-has-sub-buttons",
	Key = "b", Hint = "~!Build Structure", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

-- Building Commands ------------------------------------------------------

DefineButton( { Pos = 13, Icon = "icon-rally-point",
	Action = "rally-point",
	Key = "r", Hint = "Set ~!Rally Point", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-latin-barracks",
		"unit-germanic-town-hall",
		"unit-germanic-barracks",
		"unit-germanic-temple", "unit-germanic-dock",
		"unit-germanic-market",
		"unit-norse-town-hall",
		"unit-norse-barracks",
		"unit-norse-temple", "unit-norse-dock",
		"unit-norse-market",
		"unit-norse-watch-tower",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-teuton-barracks",
		"unit-teuton-temple", "unit-teuton-dock",
		"unit-teuton-market",
		"unit-teuton-watch-tower", "unit-teuton-guard-tower",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-dwarven-barracks",
		"unit-dwarven-temple", "unit-dwarven-dock",
		"unit-dwarven-market",
		"unit-dwarven-sentry-tower", "unit-dwarven-guard-tower",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-gnomish-barracks",
		"unit-goblin-town-hall", "unit-goblin-stronghold",
		"unit-goblin-mess-hall",
		"unit-goblin-temple", "unit-goblin-dock",
		"unit-goblin-market",
		"unit-goblin-watch-tower", "unit-goblin-guard-tower"
	}
} )

DefineButton( { Pos = 14, Icon = "icon-crown",
	Action = "button", Value = "found-faction-level",
	Allowed = "check-has-sub-buttons",
	Key = "f", Hint = "~!Found a Faction", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 14, Icon = "icon-chest",
	Action = "button", Value = "buy-item-level",
	Allowed = "check-has-sub-buttons",
	Key = "b", Hint = "~!Buy Items", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 15, Icon = "icon-book-red",
	Action = "button", Value = "enact-law-level",
	Allowed = "check-has-sub-buttons",
	Key = "l", Hint = "Enact a ~!Law", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 16, Icon = "icon-garrison",
	Action = "button", Value = "garrison-level",
	Allowed = "check-unit-variable", AllowArg = {"Transport", "Value", ">=", "1"},
	Key = "g", Hint = "View ~!Garrison", Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-stronghold",
		"unit-dwarven-stronghold",
		"unit-goblin-stronghold",
	}
})

DefineButton( { Pos = 16, Icon = "icon-salvage",
	Action = "salvage",
	Key = "delete", Hint = "Salvage Building (~<Del~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall", "unit-latin-farm", "unit-latin-barracks", "unit-latin-smithy", "unit-latin-stables",
		"unit-germanic-town-hall",
		"unit-germanic-farm", "unit-germanic-barracks",
		"unit-germanic-carpenters-shop", "unit-germanic-smithy",
		"unit-germanic-market", "unit-germanic-dock",
		"unit-germanic-temple",
		"unit-norse-town-hall",
		"unit-norse-farm", "unit-norse-barracks",
		"unit-norse-lumber-mill", "unit-norse-smithy",
		"unit-norse-market",
		"unit-norse-temple",
		"unit-norse-watch-tower",
		"unit-norse-dock",
		"unit-teuton-town-hall", -- "unit-teuton-stronghold",
		"unit-teuton-farm", "unit-teuton-barracks",
		"unit-teuton-lumber-mill", "unit-teuton-smithy", "unit-teuton-masons-shop",
		"unit-teuton-stables",
		"unit-teuton-temple", "unit-teuton-university",
		"unit-teuton-market", "unit-teuton-dock",
		"unit-teuton-watch-tower", "unit-teuton-guard-tower", "unit-teuton-catapult-tower",
		"unit-celt-farm",
		"unit-dwarven-town-hall", -- "unit-dwarven-stronghold",
		"unit-dwarven-mushroom-farm", "unit-dwarven-barracks",
		"unit-dwarven-lumber-mill", "unit-dwarven-smithy", "unit-dwarven-masons-shop",
		"unit-dwarven-yale-pen", "unit-dwarven-temple", "unit-dwarven-market",
		"unit-dwarven-academy",
		"unit-dwarven-sentry-tower", "unit-dwarven-guard-tower", "unit-dwarven-ballista-tower", "unit-dwarven-cannon-tower",
		"unit-dwarven-dock",
		"unit-brising-smithy",
		"unit-joruvellir-yale-pen",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-gnomish-barracks",
		"unit-gnomish-farm",
		"unit-goblin-town-hall", -- "unit-goblin-stronghold",
		"unit-goblin-mess-hall", "unit-goblin-farm",
		"unit-goblin-lumber-mill", "unit-goblin-smithy", "unit-goblin-masons-shop",
		"unit-goblin-temple", "unit-goblin-market", "unit-goblin-academy",
		"unit-goblin-watch-tower", "unit-goblin-guard-tower", "unit-goblin-catapult-tower",
		"unit-goblin-dock",
		"unit-goblin-banner",
		"unit-gold-mine", "unit-silver-mine", "unit-copper-mine", "unit-iron-mine", "unit-mithril-mine",
		"unit-coal-mine",
		"unit-diamond-mine", "unit-emerald-mine",
		"unit-yale-hunting-lodge",
		"unit-mercenary-camp"
	}
})

--[[
DefineButton( { Pos = 16, Icon = "icon-crown",
	Action = "button", Value = "grand-settlement-to-faction-level",
	Allowed = "check-has-sub-buttons",
	Key = "g", Hint = "~!Grant Settlement to Faction", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})
--]]

DefineButton( { Pos = 16, Level = "quest-level", Icon = "icon-cancel",
	Action = "button", Value = "",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-stronghold",
		"unit-dwarven-stronghold",
		"unit-goblin-stronghold"
	}
} )

DefineButton( { Pos = 16, Level = "found-faction-level", Icon = "icon-cancel",
	Action = "button", Value = "",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
} )

DefineButton( { Pos = 16, Level = "buy-item-level", Icon = "icon-cancel",
	Action = "button", Value = "",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
} )

DefineButton( { Pos = 16, Level = "enact-law-level", Icon = "icon-cancel",
	Action = "button", Value = "",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
} )

DefineButton( { Pos = 16, Level = "found-faction-level-2", Icon = "icon-cancel",
	Action = "button", Value = "",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
} )

-- General Cancel Buttons ------------------------------------------------------

DefineButton( { Pos = 16, Level = "cancel-level", Icon = "icon-cancel",
	Action = "cancel",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {"*"}
} )

DefineButton( { Pos = 16, Icon = "icon-cancel",
	Action = "cancel-upgrade",
	Key = "escape", Hint = "Cancel Upgrade (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {"cancel-upgrade"}
} )

DefineButton( { Pos = 16, Icon = "icon-cancel",
	Action = "cancel-train-unit",
	Key = "escape", Hint = "Cancel Unit Training (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {"*"}
} )

DefineButton( { Pos = 16, Icon = "icon-cancel",
	Action = "cancel-build",
	Key = "escape", Hint = "Cancel Construction (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {"cancel-build"}
} )

-- Level-Up Upgrades ------------------------------------------------------

DefineButton( { Pos = 13, Icon = "icon-level-up",
	Action = "button", Value = "choose-individual-upgrade-level",
	Allowed = "check-has-sub-buttons",
	Key = "u", Hint = "Choose ~!Upgrade", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard", "unit-dwarven-stalwart", "unit-dwarven-sentinel",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
		"unit-dwarven-thunderer",
		"unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-joruvellir-scout", "unit-joruvellir-pathfinder", "unit-joruvellir-explorer",
		"unit-joruvellir-yale-rider", "unit-joruvellir-yale-lord",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster",
		"unit-surghan-mercenary-axefighter", "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest",
		"unit-latin-legionary", "unit-latin-veteran-legionary", "unit-latin-centurion", "unit-latin-javelineer",
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord",
		"unit-frank-horseman", "unit-frank-knight-lord",
		"unit-teuton-priest",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-slavic-swordsman",
		"unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist",
		"unit-deep-gnomish-recruit", "unit-deep-gnomish-duelist", "unit-deep-gnomish-master-at-arms", "unit-deep-gnomish-herbalist",
		"unit-derro-thug", "unit-derro-executioner", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman",
		"unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-goblin-shaman",
		"unit-goblin-magnate",
		"unit-kobold-footpad", "unit-kobold-slasher", "unit-kobold-champion",
		"unit-ettin",
		"unit-elven-swordsman", "unit-elven-priest",
		"unit-troll-warrior",
		"unit-wolf", "unit-wyrm", "unit-gryphon", "unit-bird", "unit-crow", "unit-bat", "unit-blood-bat", "unit-dread-bat"
	}
} )

DefineButton( { Pos = 14, Icon = "icon-level-up",
	Action = "button", Value = "choose-individual-upgrade-level",
	Allowed = "check-has-sub-buttons",
	Key = "u", Hint = "Choose ~!Upgrade", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-mace-mastery",
	Action = "learn-ability", Value = "upgrade-mace-mastery",
	Key = "m", Hint = "Learn ~!Mace Mastery", Popup = "popup-learn-ability",
	Description = "Mace Mastery is a passive ability that increases damage with maces by 2.",
	ForUnit = {
		"unit-dwarven-expert-miner", "unit-brising-expert-miner", "unit-dwarven-arcanister",
		"unit-dwarven-loremaster",
		"unit-troll-warrior"
	}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-bow-mastery",
	Action = "learn-ability", Value = "upgrade-bow-mastery",
	Key = "b", Hint = "Learn ~!Bow Mastery", Popup = "popup-learn-ability",
	Description = "Bow Mastery is a passive ability that increases damage with bows by 2.",
	ForUnit = {
		"unit-germanic-archer",
		"unit-teuton-archer",
		"unit-goblin-shadowstalker"
	}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-throwing-mastery",
	Action = "learn-ability", Value = "upgrade-throwing-mastery",
	Key = "t", Hint = "Learn ~!Throwing Mastery", Popup = "popup-learn-ability",
	Description = "Throwing Mastery is a passive ability that increases damage with javelins and throwing axes by 2.",
	ForUnit = {
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-joruvellir-explorer",
		"unit-latin-javelineer"
	}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-gun-mastery",
	Action = "learn-ability", Value = "upgrade-gun-mastery",
	Key = "g", Hint = "Learn ~!Gun Mastery", Popup = "popup-learn-ability",
	Description = "Gun Mastery is a passive ability that increases damage with guns by 2.",
	ForUnit = {
		"unit-dwarven-thunderer",
		"unit-teuton-gunpowder-infantry",
		"unit-goblin-gunpowder-infantry"
	}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-axe-mastery",
	Action = "learn-ability", Value = "upgrade-axe-mastery",
	Key = "x", Hint = "Learn A~!xe Mastery", Popup = "popup-learn-ability",
	Description = "Axe Mastery is a passive ability that increases damage with axes by 2.",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-lord",
		"unit-joruvellir-yale-lord",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-sword-mastery-bronze",
	Action = "learn-ability", Value = "upgrade-sword-mastery",
	Key = "w", Hint = "Learn S~!word Mastery", Popup = "popup-learn-ability",
	Description = "Sword Mastery is a passive ability that increases damage with swords by 2.",
	ForUnit = {
		"unit-germanic-chieftain",
		"unit-norse-heroic-swordsman",
		"unit-teuton-heroic-swordsman", "unit-frank-heroic-swordsman", "unit-teuton-knight-lord", "unit-frank-knight-lord",
		"unit-gothic-horse-lord",
		"unit-latin-centurion",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-warlord",
		"unit-kobold-champion",
		"unit-elven-swordsman"
	}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-sword-mastery",
	Action = "learn-ability", Value = "upgrade-sword-mastery",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-spatha"},
	Key = "w", Hint = "Learn S~!word Mastery", Popup = "popup-learn-ability",
	Description = "Sword Mastery is a passive ability that increases damage with swords by 2.",
	ForUnit = {
		"unit-germanic-chieftain",
		"unit-norse-heroic-swordsman",
		"unit-teuton-heroic-swordsman", "unit-teuton-knight-lord",
		"unit-gothic-horse-lord",
		"unit-latin-centurion",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-warlord",
		"unit-kobold-champion",
		"unit-elven-swordsman"
	}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-sword-mastery",
	Action = "learn-ability", Value = "upgrade-sword-mastery",
	Allowed = "check-upgrade", AllowArg = {"upgrade-frank-spatha"},
	Key = "w", Hint = "Learn S~!word Mastery", Popup = "popup-learn-ability",
	Description = "Sword Mastery is a passive ability that increases damage with swords by 2.",
	ForUnit = {
		"unit-frank-heroic-swordsman", "unit-frank-knight-lord"
	}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-spear-mastery",
	Action = "learn-ability", Value = "upgrade-spear-mastery",
	Key = "p", Hint = "Learn S~!pear Mastery", Popup = "popup-learn-ability",
	Description = "Spear Mastery is a passive ability that increases damage with spears by 2.",
	ForUnit = {
		"unit-dwarven-sentinel",
		"unit-goblin-spearman",
		"unit-germanic-spearman", "unit-teuton-spearman", "unit-frank-spearman"
	}
} )

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level", Icon = "icon-critical-strike",
	Action = "learn-ability", Value = "upgrade-critical-strike",
	Key = "c", Hint = "Learn ~!Critical Strike", Popup = "popup-learn-ability",
	Description = "Critical Strike is a passive ability that provides a 10% chance to deal double damage in combat. In No Randomness mode it provides a 10% damage bonus instead.",
	ForUnit = {
		"unit-dwarven-expert-miner", "unit-brising-expert-miner", "unit-dwarven-arcanister",
		"unit-dwarven-thane",
		"unit-dwarven-sentinel",
		"unit-dwarven-yale-lord",
		"unit-joruvellir-yale-lord",
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-joruvellir-explorer",
		"unit-dwarven-thunderer",
		"unit-surghan-mercenary-thane",
		"unit-germanic-chieftain", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-latin-centurion", "unit-latin-javelineer",
		"unit-norse-heroic-swordsman",
		"unit-teuton-heroic-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-knight-lord", "unit-frank-knight-lord",
		"unit-gothic-horse-lord",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-kobold-champion",
		"unit-ettin",
		"unit-elven-swordsman",
		"unit-troll-warrior",
		"unit-wolf", "unit-wyrm", "unit-bat", "unit-blood-bat", "unit-dread-bat"
	}
} )

DefineButton( { Pos = 3, Level = "choose-individual-upgrade-level", Icon = "icon-deadly-precision",
	Action = "learn-ability", Value = "upgrade-deadly-precision",
	Key = "d", Hint = "Learn ~!Deadly Precision", Popup = "popup-learn-ability",
	Description = "Deadly Precision is a passive ability that increases critical strike chance by 10%. In No Randomness mode it provides a 10% damage bonus instead.",
	ForUnit = {
		"unit-dwarven-arcanister",
		"unit-dwarven-thane",
		"unit-dwarven-sentinel",
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-joruvellir-explorer",
		"unit-dwarven-thunderer",
		"unit-surghan-mercenary-thane",
		"unit-germanic-chieftain", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-latin-centurion", "unit-latin-javelineer",
		"unit-norse-heroic-swordsman",
		"unit-teuton-heroic-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-knight-lord", "unit-frank-knight-lord",
		"unit-gothic-horse-lord",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-kobold-champion",
		"unit-ettin",
		"unit-elven-swordsman",
		"unit-troll-warrior",
		"unit-wolf", "unit-wyrm", "unit-bat", "unit-blood-bat", "unit-dread-bat"
	}
} )

DefineButton( { Pos = 4, Level = "choose-individual-upgrade-level", Icon = "icon-eagle-eye",
	Action = "learn-ability", Value = "upgrade-eagle-eye",
	Key = "e", Hint = "Learn Eagle ~!Eye", Popup = "popup-learn-ability",
	Description = "Eagle Eye is a passive ability that increases accuracy by 2.",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-sentinel",
		"unit-dwarven-yale-lord",
		"unit-joruvellir-yale-lord",
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-joruvellir-explorer",
		"unit-dwarven-thunderer",
		"unit-surghan-mercenary-thane",
		"unit-germanic-chieftain", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-latin-centurion", "unit-latin-javelineer",
		"unit-norse-heroic-swordsman",
		"unit-teuton-heroic-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-knight-lord", "unit-frank-knight-lord",
		"unit-gothic-horse-lord",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-kobold-champion",
		"unit-ettin",
		"unit-elven-swordsman",
		"unit-troll-warrior",
		"unit-wolf", "unit-wyrm", "unit-gryphon", "unit-bird", "unit-crow", "unit-bat", "unit-blood-bat", "unit-dread-bat"
	}
} )

DefineButton( { Pos = 5, Level = "choose-individual-upgrade-level", Icon = "icon-scouting",
	Action = "learn-ability", Value = "upgrade-scouting",
	Key = "s", Hint = "Learn ~!Scouting", Popup = "popup-learn-ability",
	Description = "Scouting is a passive ability that increases sight by 1.",
	ForUnit = {
		"unit-dwarven-gryphon-rider",
		"unit-germanic-archer",
		"unit-latin-javelineer",
		"unit-teuton-archer",
		"unit-goblin-shadowstalker"
	}
} )

DefineButton( { Pos = 5, Level = "choose-individual-upgrade-level", Icon = "icon-stun",
	Action = "learn-ability", Value = "upgrade-stun",
	Key = "u", Hint = "Learn St~!un", Popup = "popup-learn-ability",
	Description = "Stun is an active ability which does a stunning attack on a target, leaving it paralyzed for a few moments.",
	ForUnit = {
		"unit-dwarven-arcanister",
		"unit-dwarven-thane",
		"unit-dwarven-yale-lord",
		"unit-joruvellir-yale-lord",
		"unit-surghan-mercenary-thane",
		"unit-elven-swordsman",
		"unit-germanic-chieftain",
		"unit-norse-heroic-swordsman",
		"unit-teuton-heroic-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-knight-lord", "unit-frank-knight-lord",
		"unit-gothic-horse-lord",
		"unit-latin-centurion",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-warlord",
		"unit-kobold-champion",
		"unit-ettin",
		"unit-elven-swordsman",
		"unit-troll-warrior"
	}
} )

DefineButton( { Pos = 6, Level = "choose-individual-upgrade-level", Icon = "icon-precise-shot",
	Action = "learn-ability", Value = "upgrade-precise-shot",
	Key = "r", Hint = "Learn P~!recise Shot", Popup = "popup-learn-ability",
	Description = "Precise Shot is an active ability which deals a critical hit. Only usable with ranged weapons.",
	ForUnit = {
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-joruvellir-explorer",
		"unit-dwarven-thunderer",
		"unit-germanic-archer",
		"unit-latin-javelineer",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry"
	}
} )

DefineButton( { Pos = 6, Level = "choose-individual-upgrade-level", Icon = "icon-puncture",
	Action = "learn-ability", Value = "upgrade-puncture",
	Key = "r", Hint = "Learn Punctu~!re", Popup = "popup-learn-ability",
	Description = "Puncture is an active ability which makes the target bleed for a certain duration. Only usable with melee weapons capable of doing thrusting attacks.",
	ForUnit = {
		"unit-germanic-chieftain", "unit-germanic-spearman",
		"unit-norse-heroic-swordsman",
		"unit-teuton-heroic-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-latin-centurion",
		"unit-dwarven-sentinel",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman",
		"unit-elven-swordsman",
		"unit-wolf", "unit-wyrm", "unit-bat", "unit-blood-bat", "unit-dread-bat"
	}
} )

DefineButton( { Pos = 7, Level = "choose-individual-upgrade-level", Icon = "icon-leadership",
	Action = "learn-ability", Value = "upgrade-leadership",
	Key = "l", Hint = "Learn ~!Leadership Aura", Popup = "popup-learn-ability",
	Description = "Leadership Aura is an aura ability that increases the damage of nearby friendly units by 10%.",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-lord",
		"unit-joruvellir-yale-lord",
		"unit-surghan-mercenary-thane",
		"unit-germanic-chieftain",
		"unit-norse-heroic-swordsman",
		"unit-teuton-heroic-swordsman", "unit-frank-heroic-swordsman",
		"unit-latin-centurion",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms",
		"unit-ettin"
	}
} )

DefineButton( { Pos = 8, Level = "choose-individual-upgrade-level", Icon = "icon-toughness",
	Action = "learn-ability", Value = "upgrade-toughness",
	Key = "o", Hint = "Learn T~!oughness", Popup = "popup-learn-ability",
	Description = "Toughness is a passive ability that increases HP by 10.",
	ForUnit = {
		"unit-dwarven-expert-miner", "unit-brising-expert-miner", "unit-dwarven-arcanister",
		"unit-dwarven-thane",
		"unit-dwarven-sentinel",
		"unit-dwarven-yale-lord",
		"unit-joruvellir-yale-lord",
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-joruvellir-explorer",
		"unit-dwarven-thunderer",
		"unit-dwarven-loremaster",
		"unit-surghan-mercenary-thane",
		"unit-germanic-worker",
		"unit-germanic-chieftain", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest",
		"unit-latin-centurion", "unit-latin-javelineer",
		"unit-frank-heroic-swordsman", "unit-frank-spearman", "unit-frank-knight-lord",
		"unit-norse-heroic-swordsman",
		"unit-teuton-worker",
		"unit-teuton-heroic-swordsman", 
		"unit-teuton-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-knight-lord",
		"unit-teuton-priest",
		"unit-gothic-horse-lord",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-worker",
		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-goblin-shaman",
		"unit-goblin-magnate",
		"unit-kobold-champion",
		"unit-ettin",
		"unit-elven-swordsman", "unit-elven-priest",
		"unit-troll-warrior",
		"unit-wolf", "unit-wyrm", "unit-bat", "unit-blood-bat", "unit-dread-bat", "unit-gryphon"
	}
} )

--[[
DefineButton( { Pos = 10, Level = "choose-individual-upgrade-level", Icon = "icon-ethereal-vision",
	Action = "learn-ability", Value = "upgrade-ethereal-vision",
	Key = "v", Hint = "Learn Ethereal ~!Vision", Popup = "popup-learn-ability",
	Description = "Ethereal Vision is a passive ability that allows the unit to see ethereal objects, such as interplanar portals.",
	ForUnit = { -- allow only level 3 units to learn it, so that it isn't too easy to do so
		"unit-dwarven-expert-miner", "unit-brising-expert-miner", "unit-dwarven-arcanister",
		"unit-dwarven-thane",
		"unit-dwarven-sentinel",
		"unit-dwarven-yale-lord",
		"unit-joruvellir-yale-lord",
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-joruvellir-explorer",
		"unit-dwarven-thunderer",
--		"unit-dwarven-loremaster",
		"unit-surghan-mercenary-thane",
--		"unit-germanic-chieftain", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest",
		"unit-latin-centurion", "unit-latin-javelineer",
		"unit-norse-heroic-swordsman",
--		"unit-teuton-heroic-swordsman", "unit-frank-heroic-swordsman",
--		"unit-teuton-spearman", "unit-frank-spearman",
--		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-knight-lord", "unit-frank-knight-lord",
--		"unit-teuton-priest",
		"unit-gothic-horse-lord",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
--		"unit-gnomish-herbalist",
--		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-shadowstalker",
		"unit-goblin-warlord", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
--		"unit-goblin-shaman",
		"unit-goblin-magnate",
--		"unit-kobold-champion",
		"unit-ettin",
--		"unit-elven-swordsman", "unit-elven-priest",
		"unit-troll-warrior"
	}
} )
--]]

--[[
DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-healing",
	Action = "learn-ability", Value = "upgrade-healing",
	Description = "Healing is an active ability that heals an organic unit.",
	Key = "h", Hint = "Learn ~!Healing", Popup = "popup-learn-ability",
	ForUnit = {"unit-dwarven-loremaster"}
})

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level", Icon = "icon-precision",
	Action = "learn-ability", Value = "upgrade-precision",
	Key = "r", Hint = "Learn P~!recision", Popup = "popup-learn-ability",
	Description = "Precision is an active ability that doubles the accuracy of an organic unit while in combat.",
	ForUnit = {"unit-germanic-priest", "unit-teuton-priest", "unit-elven-priest", "unit-dwarven-loremaster"}
})
--]]

DefineButton( { Pos = 16, Level = "choose-individual-upgrade-level", Icon = "icon-cancel",
	Action = "button", Value = "",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard", "unit-dwarven-stalwart", "unit-dwarven-sentinel",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
		"unit-dwarven-thunderer",
		"unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-joruvellir-scout", "unit-joruvellir-pathfinder", "unit-joruvellir-explorer",
		"unit-joruvellir-yale-rider", "unit-joruvellir-yale-lord",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster",
		"unit-surghan-mercenary-axefighter", "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest", 
		"unit-latin-legionary", "unit-latin-veteran-legionary", "unit-latin-centurion", "unit-latin-javelineer",
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord", "unit-frank-horseman", "unit-frank-knight-lord",
		"unit-teuton-priest",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-slavic-swordsman",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist",
		"unit-deep-gnomish-recruit", "unit-deep-gnomish-duelist", "unit-deep-gnomish-master-at-arms", "unit-deep-gnomish-herbalist",
		"unit-derro-thug", "unit-derro-executioner", "unit-derro-shadowguard",
		"unit-goblin-worker",
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman",
		"unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-goblin-shaman",
		"unit-goblin-magnate",
		"unit-kobold-footpad", "unit-kobold-slasher", "unit-kobold-champion",
		"unit-ettin",
		"unit-elven-swordsman", "unit-elven-priest",
		"unit-troll-warrior",
		"unit-wolf", "unit-wyrm", "unit-gryphon", "unit-bird", "unit-crow", "unit-bat", "unit-blood-bat", "unit-dread-bat"
	} 
} )

-- Inventory ------------------------------------------------------

DefineButton( { Pos = 14, Icon = "icon-inventory",
	Action = "button", Value = "inventory-level",
	Allowed = "check-has-inventory",
	Key = "i", Hint = "Open ~!Inventory", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard", "unit-dwarven-stalwart", "unit-dwarven-sentinel",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
		"unit-dwarven-thunderer",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-joruvellir-scout", "unit-joruvellir-pathfinder", "unit-joruvellir-explorer",
		"unit-joruvellir-yale-rider", "unit-joruvellir-yale-lord",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster",
		"unit-dwarven-gryphon-rider",
		"unit-surghan-mercenary-axefighter", "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest",
		"unit-latin-legionary", "unit-latin-veteran-legionary", "unit-latin-centurion", "unit-latin-javelineer",
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord", "unit-frank-horseman", "unit-frank-knight-lord",
		"unit-teuton-priest",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-slavic-swordsman",
		"unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist",
		"unit-deep-gnomish-recruit", "unit-deep-gnomish-duelist", "unit-deep-gnomish-master-at-arms", "unit-deep-gnomish-herbalist",
		"unit-derro-thug", "unit-derro-executioner", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-goblin-shaman",
		"unit-goblin-magnate",
		"unit-kobold-footpad", "unit-kobold-slasher", "unit-kobold-champion",
		"unit-wyrm",
		"unit-ettin",
		"unit-elven-swordsman", "unit-elven-priest",
		"unit-troll-warrior"
	}
} )

DefineButton( { Pos = 15, Icon = "icon-inventory",
	Action = "button", Value = "inventory-level",
	Allowed = "check-has-inventory",
	Key = "i", Hint = "Open ~!Inventory", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
} )

DefineButton( { Pos = 16, Level = "inventory-level", Icon = "icon-cancel",
	Action = "button", Value = "",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard", "unit-dwarven-stalwart", "unit-dwarven-sentinel",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
		"unit-dwarven-thunderer",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-joruvellir-scout", "unit-joruvellir-pathfinder", "unit-joruvellir-explorer",
		"unit-joruvellir-yale-rider", "unit-joruvellir-yale-lord",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster",
		"unit-dwarven-gryphon-rider",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-surghan-mercenary-axefighter", "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
		"unit-germanic-worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-chieftain",
		"unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest",
		"unit-latin-legionary", "unit-latin-veteran-legionary", "unit-latin-centurion", "unit-latin-javelineer",
		"unit-norse-swordsman", "unit-norse-veteran-swordsman", "unit-norse-heroic-swordsman",
		"unit-teuton-worker",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-teuton-heroic-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-heroic-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-ritter", "unit-teuton-knight-lord", "unit-frank-horseman", "unit-frank-knight-lord",
		"unit-teuton-priest",
		"unit-gothic-horse-rider", "unit-gothic-horse-lord",
		"unit-slavic-swordsman",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist",
		"unit-deep-gnomish-recruit", "unit-deep-gnomish-duelist", "unit-deep-gnomish-master-at-arms", "unit-deep-gnomish-herbalist",
		"unit-derro-thug", "unit-derro-executioner", "unit-derro-shadowguard",
		"unit-goblin-worker",
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry",
		"unit-goblin-shaman",
		"unit-goblin-magnate",
		"unit-kobold-footpad", "unit-kobold-slasher", "unit-kobold-champion",
		"unit-wyrm",
		"unit-ettin",
		"unit-elven-swordsman", "unit-elven-priest",
		"unit-troll-warrior"
	} 
} )

-- Special Abilities ---------------------------------------------------

DefineButton( { Pos = 4, Icon = "icon-far-sight",
	Action = "cast-spell", Value = "spell-far-sight",
	Description = "Reveals an area",
	Key = "f", Hint = "~!Far Sight", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster"
	}
})

DefineButton( { Pos = 4, Icon = "icon-terror",
	Action = "cast-spell", Value = "spell-terror",
	Description = "Makes an organic unit flee in terror",
	Key = "t", Hint = "~!Terror", Popup = "popup-commands",
	ForUnit = {"unit-goblin-shaman"}
})

DefineButton( { Pos = 4, Icon = "icon-healing",
	Action = "cast-spell", Value = "spell-healing",
	Description = "Heals an organic unit",
	Key = "h", Hint = "~!Healing", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-elven-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster"
	}
})

DefineButton( { Pos = 4, Icon = "icon-shocking-grasp",
	Action = "cast-spell", Value = "spell-shocking-grasp",
	Description = "Deals lightning damage at melee range to a unit, leaving it stunned for a few seconds",
	Key = "k", Hint = "Shoc~!king Grasp", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster"
	}
})

DefineButton( { Pos = 4, Icon = "icon-slow",
	Action = "cast-spell", Value = "spell-slow",
	Description = "Slows a target unit",
	Key = "w", Hint = "Slo~!w", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster"
	}
})

DefineButton( { Pos = 5, Icon = "icon-inspire",
	Action = "cast-spell", Value = "spell-inspire",
	Description = "Inspires an organic unit to deal 50% more damage",
	Key = "i", Hint = "~!Inspire", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster"
	}
})

DefineButton( { Pos = 5, Icon = "icon-wither",
	Action = "cast-spell", Value = "spell-wither",
	Description = "Causes an organic unit to deal 50% less damage",
	Key = "w", Hint = "~!Wither", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-elven-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster",
		"unit-goblin-shaman"
	}
})

DefineButton( { Pos = 5, Icon = "icon-blessing",
	Action = "cast-spell", Value = "spell-blessing",
	Description = "Blesses an organic unit to deal 50% more damage and to evade 50% better",
	Key = "b", Hint = "~!Blessing", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-elven-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster"
	}
})

DefineButton( { Pos = 5, Icon = "icon-precision",
	Action = "cast-spell", Value = "spell-precision",
	Description = "Doubles the accuracy of an organic unit while in combat",
	Key = "r", Hint = "P~!recision", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-elven-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster"
	}
})

DefineButton( { Pos = 6, Icon = "icon-stun",
	Action = "cast-spell", Value = "spell-stun",
	Description = "Does a stunning attack on a target, leaving it paralyzed for a few moments",
	Key = "n", Hint = "Stu~!n", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-lord",
		"unit-joruvellir-yale-lord",
		"unit-surghan-mercenary-thane",
		"unit-elven-swordsman",
		"unit-germanic-chieftain",
		"unit-norse-heroic-swordsman",
		"unit-teuton-heroic-swordsman", "unit-frank-heroic-swordsman", "unit-teuton-knight-lord", "unit-frank-knight-lord",
		"unit-gothic-horse-lord",
		"unit-latin-centurion",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-warlord",
		"unit-kobold-champion",
		"unit-ettin",
		"unit-troll-warrior"
	}
})

DefineButton( { Pos = 7, Icon = "icon-puncture",
	Action = "cast-spell", Value = "spell-puncture",
	Description = "Makes the target bleed for a certain duration. Only usable with melee weapons capable of doing thrusting attacks",
	Key = "r", Hint = "Punctu~!re", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-chieftain", "unit-germanic-spearman",
		"unit-norse-heroic-swordsman",
		"unit-teuton-heroic-swordsman", "unit-frank-heroic-swordsman", "unit-teuton-spearman", "unit-frank-spearman",
		"unit-latin-centurion",
		"unit-dwarven-sentinel",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman",
		"unit-elven-swordsman",
		"unit-wolf", "unit-wyrm", "unit-bat", "unit-blood-bat", "unit-dread-bat"
	}
})

DefineButton( { Pos = 6, Icon = "icon-precise-shot",
	Action = "cast-spell", Value = "spell-precise-shot",
	Description = "Deals an attack which always results in a critical hit. Only usable with ranged weapons",
	Key = "r", Hint = "P~!recise Shot", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-joruvellir-explorer",
		"unit-dwarven-thunderer",
		"unit-germanic-archer",
		"unit-latin-javelineer",
		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-goblin-shadowstalker",
		"unit-goblin-gunpowder-infantry"
	}
})

-- Units ---------------------------------------------------------

DefineButton( { Pos = 2, Icon = "icon-teuton-minecart",
	Action = "train-unit", Value = "unit-minecart",
	Key = "c", Hint = "Build Mine~!cart", Popup = "popup-unit",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 1,
	Action = "train-unit", Value = "unit-caravan",
	Key = "c", Hint = "Build ~!Caravan", Popup = "popup-unit",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

-- Buildings ---------------------------------------------------

DefineButton( { Pos = 13, Level = "build-structure-level", Icon = "icon-road",
	Action = "build", Value = "unit-road",
	Key = "o", Hint = "Build R~!oad", Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 14, Level = "build-structure-level", Icon = "icon-railroad",
	Action = "build", Value = "unit-railroad",
	Key = "r", Hint = "Build ~!Railroad", Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 3, Level = "build-structure-level-2", Icon = "icon-copper-mine",
	Action = "build", Value = "unit-copper-mine",
	Key = "c", Hint = "Build ~!Copper Mine", Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 4, Level = "build-structure-level-2", Icon = "icon-silver-mine",
	Action = "build", Value = "unit-silver-mine",
	Key = "v", Hint = "Build Si~!lver Mine", Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 5, Level = "build-structure-level-2", Icon = "icon-gold-mine",
	Action = "build", Value = "unit-gold-mine",
	Key = "g", Hint = "Build ~!Gold Mine", Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 6, Level = "build-structure-level-2", Icon = "icon-diamond-mine",
	Action = "build", Value = "unit-diamond-mine",
	Key = "d", Hint = "Build ~!Diamond Mine", Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 7, Level = "build-structure-level-3", Icon = "icon-emerald-mine", -- unreachable level so that the mine is buildable, but the button doesn't actually appear
	Action = "build", Value = "unit-emerald-mine",
	Key = "e", Hint = "Build ~!Emerald Mine", Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 7, Level = "build-structure-level-2", Icon = "icon-iron-mine",
	Action = "build", Value = "unit-iron-mine",
	Key = "i", Hint = "Build ~!Iron Mine", Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 8, Level = "build-structure-level-2", Icon = "icon-mithril-mine",
	Action = "build", Value = "unit-mithril-mine",
	Key = "m", Hint = "Build ~!Mithril Mine", Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 9, Level = "build-structure-level-2",
	Action = "build", Value = "unit-yale-hunting-lodge",
	Key = "y", Hint = "Build ~!Yale Hunting Lodge", Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 15, Level = "build-structure-level", Icon = "icon-right-arrow",
	Action = "button", Value = "build-structure-level-2",
	Key = "pagedown", Hint = "Next (~<PgDwn~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 15, Level = "build-structure-level-2", Icon = "icon-left-arrow",
	Action = "button", Value = "build-structure-level",
	Key = "pageup", Hint = "Previous (~<PgUp~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 16, Level = "build-structure-level", Icon = "icon-cancel",
	Action = "button", Value = "",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 16, Level = "build-structure-level-2", Icon = "icon-cancel",
	Action = "button", Value = "",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-dwarven-runesmith", "unit-dwarven-runemaster", "unit-dwarven-arcanister",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

-- Faction Change Buttons

DefineButton( { Pos = 1, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 2, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 3, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 4, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 5, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 6, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 7, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 8, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 9, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 10, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 11, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 12, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 13, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 14, Level = "found-faction-level",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 15, Level = "found-faction-level", Icon = "icon-right-arrow",
	Action = "button", Value = "found-faction-level-2",
	Allowed = "check-has-sub-buttons",
	Key = "pagedown", Hint = "Next (~<PgDwn~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 1, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 2, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 3, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 4, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 5, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 6, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 7, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 8, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 9, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 10, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 11, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 12, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 13, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 14, Level = "found-faction-level-2",
	Action = "faction", Value = -1,
	Key = "", Hint = "", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 15, Level = "found-faction-level-2", Icon = "icon-left-arrow",
	Action = "button", Value = "found-faction-level",
	Key = "pageup", Hint = "Previous (~<PgUp~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

-- Quest Buttons

DefineButton( { Pos = 5, Icon = "icon-quest",
	Action = "quest", Value = 0,
	Key = "", Hint = "Quest", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 6, Icon = "icon-quest",
	Action = "quest", Value = 1,
	Key = "", Hint = "Quest", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

DefineButton( { Pos = 7, Icon = "icon-quest",
	Action = "quest", Value = 2,
	Key = "", Hint = "Quest", Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
})

-- Hero Recruitment Buttons

DefineButton( { Pos = 9,
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-unit",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold",
		"unit-mercenary-camp"
	}
})

DefineButton( { Pos = 10,
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-unit",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold",
		"unit-mercenary-camp"
	}
})

DefineButton( { Pos = 11,
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-unit",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold",
		"unit-mercenary-camp"
	}
})

DefineButton( { Pos = 12,
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-unit",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold",
		"unit-mercenary-camp"
	}
})

-- Item Sell Buttons

DefineButton( { Pos = 1, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 2, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 3, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 4, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 5, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 6, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 7, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 8, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 9, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 10, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 11, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 12, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 13, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 14, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 15, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup-item-inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

-- Resource Production ------------------------------------------------

DefineButton( { Pos = 9, Icon = "icon-ring",
	Action = "produce-resource", Value = "jewelry",
	Key = "j", Hint = "Produce ~!Jewelry", Popup = "popup-commands",
	Description = "Allows workers to transform Copper into Jewelry in this building",
	ForUnit = {
		"unit-brising-smithy",
		"unit-dwarven-smithy",
		"unit-germanic-smithy",
		"unit-goblin-smithy",
		"unit-latin-smithy",
		"unit-norse-smithy",
		"unit-teuton-smithy"
	}
})

DefineButton( { Pos = 13, Icon = "icon-furniture",
	Action = "produce-resource", Value = "furniture",
	Key = "f", Hint = "Produce ~!Furniture", Popup = "popup-commands",
	Description = "Allows workers to transform Lumber into Furniture in this building",
	ForUnit = {
		"unit-dwarven-lumber-mill",
		"unit-germanic-carpenters-shop",
		"unit-goblin-lumber-mill",
		"unit-norse-lumber-mill",
		"unit-teuton-lumber-mill"
	}
})

DefineButton( { Pos = 1, Icon = "icon-leather",
	Action = "produce-resource", Value = "leather",
	Key = "l", Hint = "Produce ~!Leather", Popup = "popup-commands",
	Description = "Allows workers to gather Leather in this building",
	ForUnit = {
		"unit-yale-hunting-lodge",
		"unit-dwarven-yale-pen",
		"unit-joruvellir-yale-pen"
	}
})

-- Resource Trade -----------------------------------------------------

DefineButton( { Pos = 5, Icon = "icon-lumber",
	Action = "sell-resource", Value = "lumber",
	Hint = "Sell Lumber", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-market",
		"unit-germanic-market",
		"unit-goblin-market",
		"unit-norse-market",
		"unit-teuton-market"
	}
})

DefineButton( { Pos = 6, Icon = "icon-stone",
	Action = "sell-resource", Value = "stone",
	Hint = "Sell Stone", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-market",
		"unit-germanic-market",
		"unit-goblin-market",
		"unit-norse-market",
		"unit-teuton-market"
	}
})

DefineButton( { Pos = 9, Icon = "icon-lumber",
	Action = "buy-resource", Value = "lumber",
	Hint = "Buy Lumber", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-market",
		"unit-germanic-market",
		"unit-goblin-market",
		"unit-norse-market",
		"unit-teuton-market"
	}
})

DefineButton( { Pos = 10, Icon = "icon-stone",
	Action = "buy-resource", Value = "stone",
	Hint = "Buy Stone", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-market",
		"unit-germanic-market",
		"unit-goblin-market",
		"unit-norse-market",
		"unit-teuton-market"
	}
})

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = "enact-law-level", Icon = "icon-labor",
	Action = "research", Value = "upgrade-free-workers",
	Allowed = "check-single-research",
	Description = "Removes Serfdom.",
	Key = "f", Hint = "Enact ~!Free Workers", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
} )

DefineButton( { Pos = 2, Level = "enact-law-level", Icon = "icon-serfdom",
	Action = "research", Value = "upgrade-serfdom",
	Allowed = "check-single-research",
	Description = "-100 Copper cost for workers, -1 worker gathering rate. Removes Free Workers.",
	Key = "s", Hint = "Enact ~!Serfdom", Popup = "popup-research",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-ettin-town-hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold"
	}
} )

DefineButton( { Pos = 9, Icon = "icon-shield-wall",
	Action = "research", Value = "upgrade-shield-wall",
	Allowed = "check-single-research",
	Description = "+2 Armor for infantry. Incompatible with Svinfylking.",
	Key = "h", Hint = "Develop S~!hield Wall", Popup = "popup-research",
	ForUnit = {
		"unit-latin-barracks",
		"unit-germanic-barracks",
		"unit-norse-barracks",
		"unit-teuton-barracks",
		"unit-dwarven-barracks",
		"unit-gnomish-barracks",
		"unit-goblin-mess-hall"
	}
} )

DefineButton( { Pos = 10, Icon = "icon-svinfylking",
	Action = "research", Value = "upgrade-svinfylking",
	Allowed = "check-single-research",
	Description = "+2 Damage for infantry. Incompatible with Shield Wall.",
	Key = "f", Hint = "Develop Svin~!fylking", Popup = "popup-research",
	ForUnit = {
		"unit-latin-barracks",
		"unit-germanic-barracks",
		"unit-norse-barracks",
		"unit-teuton-barracks",
		"unit-dwarven-barracks",
		"unit-gnomish-barracks",
		"unit-goblin-mess-hall"
	}
} )

DefineButton( { Pos = 5, Icon = "icon-wood-plow",
	Action = "research", Value = "upgrade-wood-plow",
	Allowed = "check-single-research",
	Description = "+1 Food supply for farms.",
	Key = "p", Hint = "Research Wood ~!Plow", Popup = "popup-research",
	ForUnit = {
		"unit-dwarven-lumber-mill",
		"unit-germanic-carpenters-shop",
		"unit-goblin-lumber-mill",
		"unit-norse-lumber-mill",
		"unit-teuton-lumber-mill"
	}
} )

DefineButton( { Pos = 6, Icon = "icon-iron-tipped-wood-plow",
	Action = "research", Value = "upgrade-iron-tipped-wood-plow",
	Allowed = "check-single-research",
	Description = "+1 Food supply for farms.",
	Key = "p", Hint = "Research Iron-Tipped Wood ~!Plow", Popup = "popup-research",
	ForUnit = {
		"unit-dwarven-lumber-mill",
		"unit-germanic-carpenters-shop",
		"unit-goblin-lumber-mill",
		"unit-norse-lumber-mill",
		"unit-teuton-lumber-mill"
	}
} )

DefineButton( { Pos = 7, Icon = "icon-iron-plow",
	Action = "research", Value = "upgrade-iron-plow",
	Allowed = "check-single-research",
	Description = "+1 Food supply for farms.",
	Key = "p", Hint = "Research Iron ~!Plow", Popup = "popup-research",
	ForUnit = {
		"unit-dwarven-lumber-mill",
		"unit-germanic-carpenters-shop",
		"unit-goblin-lumber-mill",
		"unit-norse-lumber-mill",
		"unit-teuton-lumber-mill"
	}
} )

DefineButton( { Pos = 1, Icon = "icon-masonry",
	Action = "research", Value = "upgrade-masonry",
	Allowed = "check-single-research",
	Key = "m", Hint = "Research ~!Masonry", Popup = "popup-research",
	Description = "+20% Hit Points, +5 Armor and -25% Salvage Factor for buildings, enables Road and Wall construction, and allows Sentry Towers to be upgraded to Guard Towers and Mead Halls to Bastions.",
	ForUnit = {
		"unit-dwarven-masons-shop",
		"unit-goblin-masons-shop",
		"unit-teuton-masons-shop"
	}
} )

DefineButton( { Pos = 7, Icon = "anvil",
	Action = "research", Value = "upgrade_ironworking",
	Allowed = "check-single-research",
	Description = "Allows Iron Mines and Mithril Mines, +10% Iron and Mithril Processing Bonus for Smithies.",
	Key = "i", Hint = "Research ~!Ironworking", Popup = "popup-research",
	ForUnit = {
		"unit-dwarven-smithy", "unit-brising-smithy",
		"unit-germanic-smithy",
		"unit-goblin-smithy",
		"unit-latin-smithy",
		"unit-norse-smithy",
		"unit-teuton-smithy"
	}
} )

DefineButton( { Pos = 1, Icon = "icon-mathematics",
	Action = "research", Value = "upgrade-mathematics",
	Allowed = "check-single-research",
	Description = "-5% Trade Cost for Markets.",
	Key = "m", Hint = "Research ~!Mathematics", Popup = "popup-research",
	ForUnit = {
		"unit-dwarven-academy",
		"unit-goblin-academy",
		"unit-teuton-university"
	}
} )

DefineButton( { Pos = 2, Icon = "icon-engineering",
	Action = "research", Value = "upgrade-engineering",
	Allowed = "check-single-research",
	Description = "Allows siege engines, railroads and minecarts.",
	Key = "e", Hint = "Research ~!Engineering", Popup = "popup-research",
	ForUnit = {
		"unit-dwarven-academy",
		"unit-goblin-academy",
		"unit-teuton-university"
	}
} )

DefineButton( { Pos = 3, Icon = "icon-architecture",
	Action = "research", Value = "upgrade-architecture",
	Allowed = "check-single-research",
	Description = "+20% Hit Points, +5 Armor and -25% Salvage Factor for buildings.",
	Key = "c", Hint = "Research Ar~!chitecture", Popup = "popup-research",
	ForUnit = {
		"unit-dwarven-academy",
		"unit-goblin-academy",
		"unit-teuton-university"
	}
} )

DefineButton( { Pos = 4, Icon = "icon-philosophy",
	Action = "research", Value = "upgrade-philosophy",
	Allowed = "check-single-research",
	Description = "+10% Research Speed for buildings.",
	Key = "s", Hint = "Research Philo~!sophy", Popup = "popup-research",
	ForUnit = {
		"unit-dwarven-academy",
		"unit-goblin-academy",
		"unit-teuton-university"
	}
} )

DefineButton( { Pos = 6, Icon = "gunpowder",
	Action = "research", Value = "upgrade_gunpowder",
	Allowed = "check-single-research",
	Description = "Allows gunpowder infantry.",
	Key = "g", Hint = "Research ~!Gunpowder", Popup = "popup-research",
	ForUnit = {
		"unit-goblin-academy",
		"unit-teuton-university"
	}
} )

DefineButton( { Pos = 6, Icon = "gunpowder",
	Action = "research", Value = "upgrade_gunpowder",
	Allowed = "check-single-research",
	Description = "Allows gunpowder infantry and upgrades Ballista Towers to Cannon Towers.",
	Key = "g", Hint = "Research ~!Gunpowder", Popup = "popup-research",
	ForUnit = {
		"unit-dwarven-academy"
	}
} )

-- Items --------------------------------------------------------------

DefineButton( { Pos = 2, Icon = "icon-red-potion",
	Action = "train-unit", Value = "unit-potion-of-healing",
	Key = "h", Hint = "Buy Potion of ~!Healing", Popup = "popup-item",
	ForUnit = {"unit-germanic-temple", "unit-norse-temple", "unit-teuton-temple", "unit-dwarven-temple", "unit-goblin-temple"}
})


-- Load the buttons of all civilizations

Load("scripts/civilizations/anglo_saxon/buttons.lua")
Load("scripts/civilizations/celt/buttons.lua")
Load("scripts/civilizations/dwarf/buttons.lua")
Load("scripts/civilizations/english/buttons.lua")
Load("scripts/civilizations/ettin/buttons.lua")
Load("scripts/civilizations/frankish/buttons.lua")
Load("scripts/civilizations/germanic/buttons.lua")
Load("scripts/civilizations/gnome/buttons.lua")
Load("scripts/civilizations/goblin/buttons.lua")
Load("scripts/civilizations/goth/buttons.lua")
Load("scripts/civilizations/kobold/buttons.lua")
Load("scripts/civilizations/latin/buttons.lua")
Load("scripts/civilizations/norse/buttons.lua")
Load("scripts/civilizations/slav/buttons.lua")
Load("scripts/civilizations/suebi/buttons.lua")
Load("scripts/civilizations/teuton/buttons.lua")
