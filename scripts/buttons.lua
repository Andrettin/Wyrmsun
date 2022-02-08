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
--      (c) Copyright 2001-2022 by Vladi Belperchinov-Shabanski, Lutz Sammer,
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
	Key = "g", Hint = "Attack ~!Ground", Popup = "popup_commands",
	ForUnit = {
		"unit-teuton-catapult", "germanic-group", "anglo-saxon-group", "english-group", "frankish-group", "goth-group", "norse-group", "suebi-group", "teuton-group",
		"unit-norse-longship",
		"unit-dwarven-ballista", "unit-dwarven-ballista-warship", "dwarf-group",
		"unit-goblin-war-machine", "unit-goblin-warship", "goblin-group"
	}
})

-- Building Commands ------------------------------------------------------

DefineButton( { Pos = 14, Icon = "icon-chest",
	Action = "button", Value = "buy-item-level",
	Allowed = "check-has-sub-buttons",
	Key = "b", Hint = "~!Buy Items", Popup = "popup_commands",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

DefineButton( { Pos = 14, Icon = "icon-garrison",
	Action = "button", Value = "garrison-level",
	Allowed = "check-unit-variable", AllowArg = {"Transport", "Value", ">=", "1"},
	Key = "g", Hint = "View ~!Garrison", Popup = "popup_commands",
	ForUnit = {
		"unit-teuton-stronghold",
		"unit-dwarven-stronghold",
		"unit-goblin-stronghold",
		"unit-elven-stronghold"
	}
})

--[[
DefineButton( { Pos = 16, Icon = "royal_crown",
	Action = "button", Value = "grant-settlement-to-faction-level",
	Allowed = "check-has-sub-buttons",
	Key = "g", Hint = "~!Grant Settlement to Faction", Popup = "popup_commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-germanic-town-hall",
		"unit-norse-town-hall",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit_ettin_town_hall",
		"unit-gnomish-town-hall",
		"unit-goblin-town-hall", "unit-goblin-stronghold",
		"unit-elven-town-hall", "unit-elven-stronghold"
	}
})
--]]

DefineButton( { Pos = 16, Level = "buy-item-level", Icon = "icon-cancel",
	Action = "button", Value = "",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup_commands",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
} )

-- General Cancel Buttons ------------------------------------------------------

DefineButton( { Pos = 16, Level = "cancel-level", Icon = "icon-cancel",
	Action = "cancel",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup_commands",
	ForUnit = {"*"}
} )

DefineButton( { Pos = 16, Icon = "icon-cancel",
	Action = "cancel-upgrade",
	Key = "escape", Hint = "Cancel Upgrade (~<Esc~>)", Popup = "popup_commands",
	ForUnit = {"cancel-upgrade"}
} )

DefineButton( { Pos = 16, Icon = "icon-cancel",
	Action = "cancel-train-unit",
	Key = "escape", Hint = "Cancel Unit Training (~<Esc~>)", Popup = "popup_commands",
	ForUnit = {"*"}
} )

DefineButton( { Pos = 16, Icon = "icon-cancel",
	Action = "cancel-build",
	Key = "escape", Hint = "Cancel Construction (~<Esc~>)", Popup = "popup_commands",
	ForUnit = {"cancel-build"}
} )

-- Level-Up Upgrades ------------------------------------------------------

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-gun-mastery",
	Action = "learn-ability", Value = "upgrade-gun-mastery",
	Key = "g", Hint = "Learn ~!Gun Mastery", Popup = "popup_learn_ability",
	Description = "Gun Mastery is a passive ability that increases damage with guns by 2.",
	ForUnit = {
		"unit-dwarven-thunderer",
		"unit-teuton-gunpowder-infantry",
		"unit-goblin-gunpowder-infantry"
	}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-axe-mastery",
	Action = "learn-ability", Value = "upgrade-axe-mastery",
	Key = "x", Hint = "Learn A~!xe Mastery", Popup = "popup_learn_ability",
	Description = "Axe Mastery is a passive ability that increases damage with axes by 2.",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-lord",
		"unit-joruvellir-yale-lord",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 1, Level = "choose-individual-upgrade-level", Icon = "icon-spear-mastery",
	Action = "learn-ability", Value = "upgrade-spear-mastery",
	Key = "p", Hint = "Learn S~!pear Mastery", Popup = "popup_learn_ability",
	Description = "Spear Mastery is a passive ability that increases damage with spears by 2.",
	ForUnit = {
		"unit-dwarven-sentinel",
		"unit-goblin-spearman",
		"unit-germanic-spearman", "unit-teuton-spearman", "unit-frank-spearman"
	}
} )

--[[
DefineButton( { Pos = 10, Level = "choose-individual-upgrade-level", Icon = "icon-ethereal-vision",
	Action = "learn-ability", Value = "upgrade-ethereal-vision",
	Key = "v", Hint = "Learn Ethereal ~!Vision", Popup = "popup_learn_ability",
	Description = "Ethereal Vision is a passive ability that allows the unit to see ethereal objects, such as interplanar portals.",
	ForUnit = { -- allow only level 3 units to learn it, so that it isn't too easy to do so
		"unit-dwarven-expert-miner", "unit-brising-expert-miner", "unit-dwarven-arcanister",
		"unit-dwarven-thane",
		"unit-dwarven-sentinel",
		"unit-dwarven-yale-lord",
		"unit-joruvellir-yale-lord",
		"unit-dwarven-explorer", "unit_dwarven_gryphon_rider",
		"unit-joruvellir-explorer",
		"unit-dwarven-thunderer",
--		"unit-dwarven-loremaster",
		"unit-surghan-mercenary-thane",
--		"unit-germanic-chieftain", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-germanic-priest",
		"unit-latin-centurion", "unit-latin-javelineer",
		"unit-norse-heroic-swordsman",
		"unit-orc-spearthrower",
--		"unit-teuton-heroic-swordsman", "unit-frank-heroic-swordsman",
--		"unit-teuton-spearman", "unit-frank-spearman",
--		"unit-teuton-archer",
		"unit-teuton-gunpowder-infantry",
		"unit-teuton-knight-lord", "unit-frank-knight-lord",
--		"unit-teuton-priest",
		"unit-gothic-horse-lord",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
--		"unit-gnomish-herbalist",
--		"unit_goblin_thief", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-shadowstalker",
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
	Key = "h", Hint = "Learn ~!Healing", Popup = "popup_learn_ability",
	ForUnit = {"unit-dwarven-loremaster"}
})

DefineButton( { Pos = 2, Level = "choose-individual-upgrade-level", Icon = "icon-precision",
	Action = "learn-ability", Value = "upgrade-precision",
	Key = "r", Hint = "Learn P~!recision", Popup = "popup_learn_ability",
	Description = "Precision is an active ability that doubles the accuracy of an organic unit while in combat.",
	ForUnit = {"unit-germanic-priest", "unit-teuton-priest", "unit-elven-priest", "unit-dwarven-loremaster"}
})
--]]

-- Special Abilities ---------------------------------------------------

DefineButton( { Pos = 4, Icon = "icon-far-sight",
	Action = "cast-spell", Value = "spell-far-sight",
	Description = "Reveals an area",
	Key = "f", Hint = "~!Far Sight", Popup = "popup_commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster"
	}
})

DefineButton( { Pos = 4, Icon = "icon-terror",
	Action = "cast-spell", Value = "spell-terror",
	Description = "Makes an organic unit flee in terror",
	Key = "t", Hint = "~!Terror", Popup = "popup_commands",
	ForUnit = {"unit-goblin-shaman"}
})

DefineButton( { Pos = 4, Icon = "icon-healing",
	Action = "cast-spell", Value = "spell-healing",
	Description = "Heals an organic unit",
	Key = "h", Hint = "~!Healing", Popup = "popup_commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-elven-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster"
	}
})

DefineButton( { Pos = 4, Icon = "icon-slow",
	Action = "cast-spell", Value = "spell-slow",
	Description = "Slows a target unit",
	Key = "w", Hint = "Slo~!w", Popup = "popup_commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster"
	}
})

DefineButton( { Pos = 5, Icon = "icon-wither",
	Action = "cast-spell", Value = "spell-wither",
	Description = "Causes an organic unit to deal 50% less damage",
	Key = "w", Hint = "~!Wither", Popup = "popup_commands",
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
	Key = "b", Hint = "~!Blessing", Popup = "popup_commands",
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
	Key = "r", Hint = "P~!recision", Popup = "popup_commands",
	ForUnit = {
		"unit-germanic-priest",
		"unit-teuton-priest",
		"unit-elven-priest",
		"unit-dwarven-witness", "unit-dwarven-annalist", "unit-dwarven-loremaster"
	}
})

-- Units ---------------------------------------------------------

DefineButton( { Pos = 1,
	Action = "train-unit", Value = "unit-caravan",
	Key = "c", Hint = "Build ~!Caravan", Popup = "popup_unit",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

-- Item Sell Buttons

DefineButton( { Pos = 1, Level = "buy-item-level",
	Action = "buy", Value = -1,
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
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
	Key = "", Hint = "Buy", Popup = "popup_item_inventory",
	ForUnit = {
		"unit-germanic-market",
		"unit-norse-market",
		"unit-teuton-market",
		"unit-dwarven-market",
		"unit-goblin-market"
	}
})

-- Resource Production ------------------------------------------------

DefineButton( { Pos = 13, Icon = "icon-furniture",
	Action = "produce_resource", Value = "furniture",
	Key = "f", Hint = "Produce ~!Furniture", Popup = "popup_commands",
	Description = "Allows workers to transform Lumber into Furniture in this building",
	ForUnit = {
		"unit-dwarven-lumber-mill",
		"unit-germanic-carpenters-shop",
		"unit-goblin-lumber-mill",
		"unit-norse-lumber-mill",
		"unit-teuton-lumber-mill"
	}
})

DefineButton( { Pos = 13, Icon = "icon-leather",
	Action = "produce_resource", Value = "leather",
	Key = "l", Hint = "Produce ~!Leather", Popup = "popup_commands",
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
	Hint = "Sell Lumber", Popup = "popup_commands",
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
	Hint = "Sell Stone", Popup = "popup_commands",
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
	Hint = "Buy Lumber", Popup = "popup_commands",
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
	Hint = "Buy Stone", Popup = "popup_commands",
	ForUnit = {
		"unit-dwarven-market",
		"unit-germanic-market",
		"unit-goblin-market",
		"unit-norse-market",
		"unit-teuton-market"
	}
})

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 5, Icon = "icon_wood_plow",
	Action = "research", Value = "upgrade-wood-plow",
	Allowed = "check-single-research",
	Description = "+1 Food supply for farms.",
	Key = "p", Hint = "Research Wood ~!Plow", Popup = "popup_research",
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
	Key = "p", Hint = "Research Iron-Tipped Wood ~!Plow", Popup = "popup_research",
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
	Key = "p", Hint = "Research Iron ~!Plow", Popup = "popup_research",
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
	Key = "m", Hint = "Research ~!Masonry", Popup = "popup_research",
	Description = "+20% Hit Points, +5 Armor and -25% Salvage Factor for buildings, enables Road and Wall construction, and allows Sentry Towers to be upgraded to Guard Towers and Mead Halls to Bastions.",
	ForUnit = {
		"unit-dwarven-masons-shop",
		"unit-goblin-masons-shop",
		"unit-teuton-masons-shop"
	}
} )

DefineButton( { Pos = 1, Icon = "icon-mathematics",
	Action = "research", Value = "upgrade-mathematics",
	Allowed = "check-single-research",
	Description = "-5% Trade Cost for Markets.",
	Key = "m", Hint = "Research ~!Mathematics", Popup = "popup_research",
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
	Key = "e", Hint = "Research ~!Engineering", Popup = "popup_research",
	ForUnit = {
		"unit-dwarven-academy",
		"unit-goblin-academy",
		"unit-teuton-university"
	}
} )

DefineButton( { Pos = 3, Icon = "architecture",
	Action = "research", Value = "upgrade-architecture",
	Allowed = "check-single-research",
	Description = "+20% Hit Points, +5 Armor and -25% Salvage Factor for buildings.",
	Key = "c", Hint = "Research Ar~!chitecture", Popup = "popup_research",
	ForUnit = {
		"unit-dwarven-academy",
		"unit-goblin-academy",
		"unit-teuton-university"
	}
} )

DefineButton( { Pos = 4, Icon = "icon-philosophy",
	Action = "research", Value = "upgrade-philosophy",
	Allowed = "check-single-research",
	Description = "+25% Research Speed for buildings.",
	Key = "s", Hint = "Research Philo~!sophy", Popup = "popup_research",
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
	Key = "g", Hint = "Research ~!Gunpowder", Popup = "popup_research",
	ForUnit = {
		"unit-goblin-academy",
		"unit-teuton-university"
	}
} )

DefineButton( { Pos = 6, Icon = "gunpowder",
	Action = "research", Value = "upgrade_gunpowder",
	Allowed = "check-single-research",
	Description = "Allows gunpowder infantry and upgrades Ballista Towers to Cannon Towers.",
	Key = "g", Hint = "Research ~!Gunpowder", Popup = "popup_research",
	ForUnit = {
		"unit-dwarven-academy"
	}
} )

-- Items --------------------------------------------------------------

DefineButton( { Pos = 2, Icon = "icon-red-potion",
	Action = "train-unit", Value = "unit-potion-of-healing",
	Key = "h", Hint = "Buy Potion of ~!Healing", Popup = "popup_item",
	ForUnit = {"unit-germanic-temple", "unit-norse-temple", "unit-teuton-temple", "unit-dwarven-temple", "unit-goblin-temple"}
})


-- Load the buttons of all civilizations

Load("scripts/civilizations/dwarf/buttons.lua")
Load("scripts/civilizations/frankish/buttons.lua")
Load("scripts/civilizations/germanic/buttons.lua")
Load("scripts/civilizations/gnome/buttons.lua")
Load("scripts/civilizations/goblin/buttons.lua")
Load("scripts/civilizations/goth/buttons.lua")
Load("scripts/civilizations/kobold/buttons.lua")
Load("scripts/civilizations/latin/buttons.lua")
Load("scripts/civilizations/norse/buttons.lua")
Load("scripts/civilizations/teuton/buttons.lua")
