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
--      buttons.lua - Define the general unit-buttons.
--
--      (c) Copyright 2001-2015 by Vladi Belperchinov-Shabanski, Lutz Sammer,
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

------------------------------------------------------------------------------
--  Define unit-button.
--
--  DefineButton( { Pos = n, Level = n, Icon = ident,
--    Action = name, [Value = value,]
--    [Allowed = check, [values,]]
--    Key = key, Hint = hint, ForUnit = units)
--

-- General Commands ------------------------------------------------------

DefineButton( { Pos = 6, Level = 0, Icon = "icon-attack-ground",
	Action = "attack-ground",
	Key = "g", Hint = _("Attack ~!Ground"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-catapult", "germanic-group", "teuton-group",
		"unit-dwarven-ballista", "dwarf-group",
		"unit-goblin-war-machine", "goblin-group"
	}
})

-- Worker Commands ------------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
	Action = "repair",
	Key = "r", Hint = _("~!Repair"), Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
	Action = "harvest",
	Key = "h", Hint = _("~!Harvest Resource"), Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 13, Level = 0, Icon = "icon-build-basic-structure",
	Action = "button", Value = 1,
	Key = "b", Hint = _("~!Build Structure"), Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

-- Building Commands ------------------------------------------------------

DefineButton( { Pos = 13, Level = 0, Icon = "icon-rally-point",
	Action = "rally-point",
	Key = "r", Hint = _("Set ~!Rally Point"), Popup = "popup-commands",
	ForUnit = {
		"unit-latin-town-hall",
		"unit-latin-barracks",
		"unit-germanic-town-hall",
		"unit-germanic-barracks",
		"unit-germanic-dock",
		"unit-teuton-town-hall", "unit-teuton-stronghold",
		"unit-teuton-barracks",
		"unit-teuton-temple", "unit-teuton-dock",
		"unit-teuton-watch-tower", "unit-teuton-guard-tower",
		"unit-dwarven-town-hall", "unit-dwarven-stronghold",
		"unit-dwarven-barracks",
		"unit-dwarven-temple", "unit-dwarven-dock",
		"unit-dwarven-sentry-tower", "unit-dwarven-guard-tower",
		"unit-gnomish-town-hall",
		"unit-gnomish-barracks",
		"unit-goblin-town-hall", "unit-goblin-stronghold",
		"unit-goblin-barracks",
		"unit-goblin-temple", "unit-goblin-dock",
		"unit-goblin-watch-tower", "unit-goblin-guard-tower"
	}
} )

DefineButton( { Pos = 14, Level = 0, Icon = "icon-garrison",
	Action = "button", Value = 1,
	Allowed = "check-unit-variable", AllowArg = {"Transport", "Value", ">=", "1"},
	Key = "g", Hint = _("See ~!Garrison"), Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-stronghold",
		"unit-dwarven-stronghold",
		"unit-goblin-stronghold",
	}
})

-- General Cancel Buttons ------------------------------------------------------

DefineButton( { Pos = 16, Level = 9, Icon = "icon-cancel",
	Action = "cancel",
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {"*"}
} )

DefineButton( { Pos = 16, Level = 0, Icon = "icon-cancel",
	Action = "cancel-upgrade",
	Key = "escape", Hint = "Cancel Upgrade (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {"cancel-upgrade"}
} )

DefineButton( { Pos = 16, Level = 0, Icon = "icon-cancel",
	Action = "cancel-train-unit",
	Key = "escape", Hint = "Cancel Unit Training (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {"*"}
} )

DefineButton( { Pos = 16, Level = 0, Icon = "icon-cancel",
	Action = "cancel-build",
	Key = "escape", Hint = "Cancel Construction (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {"cancel-build"}
} )

-- Level-Up Upgrades ------------------------------------------------------

DefineButton( { Pos = 13, Level = 0, Icon = "icon-level-up",
	Action = "button", Value = 2,
	Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1"},
	Key = "l", Hint = "Choose ~!Level-Up Upgrade", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-dwarven-witness",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman", "unit-teuton-archer",
		"unit-teuton-ritter", "unit-frank-horseman",
		"unit-teuton-priest",
		"unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist",
		"unit-deep-gnomish-recruit", "unit-deep-gnomish-duelist", "unit-deep-gnomish-master-at-arms", "unit-deep-gnomish-herbalist",
		"unit-derro-thug", "unit-derro-executioner", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker", "unit-goblin-shaman",
		"unit-kobold-footpad",
		"unit-ettin",
		"unit-elven-swordsman", "unit-elven-priest",
		"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 14, Level = 0, Icon = "icon-level-up",
	Action = "button", Value = 2,
	Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1"},
	Key = "l", Hint = "Choose ~!Level-Up Upgrade", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
} )

DefineButton( { Pos = 1, Level = 2, Icon = "icon-mace-mastery",
	Action = "learn-ability", Value = "upgrade-mace-mastery",
	Key = "m", Hint = "Learn ~!Mace Mastery", Popup = "popup-commands",
	Description = "Mace Mastery is a passive ability that increases damage with maces by 2",
	ForUnit = {
		"unit-dwarven-expert-miner",
		"unit-dwarven-thane",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 2, Level = 2, Icon = "icon-axe-mastery",
	Action = "learn-ability", Value = "upgrade-axe-mastery",
	Key = "x", Hint = "Learn A~!xe Mastery", Popup = "popup-commands",
	Description = "Axe Mastery is a passive ability that increases damage with axes by 2",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-lord",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 3, Level = 2, Icon = "icon-sword-mastery-bronze",
	Action = "learn-ability", Value = "upgrade-sword-mastery",
	Key = "w", Hint = "Learn S~!word Mastery", Popup = "popup-commands",
	Description = "Sword Mastery is a passive ability that increases damage with swords by 2",
	ForUnit = {
		"unit-germanic-veteran-warrior",
		"unit-teuton-veteran-swordsman", "unit-frank-veteran-swordsman", "unit-teuton-ritter", "unit-frank-horseman",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-warlord",
		"unit-kobold-footpad",
		"unit-elven-swordsman"
	}
} )

DefineButton( { Pos = 3, Level = 2, Icon = "icon-sword-mastery",
	Action = "learn-ability", Value = "upgrade-sword-mastery",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-spatha"},
	Key = "w", Hint = "Learn S~!word Mastery", Popup = "popup-commands",
	Description = "Sword Mastery is a passive ability that increases damage with swords by 2",
	ForUnit = {
		"unit-germanic-veteran-warrior",
		"unit-teuton-veteran-swordsman", "unit-teuton-ritter", "unit-frank-horseman",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-warlord",
		"unit-kobold-footpad",
		"unit-elven-swordsman"
	}
} )

DefineButton( { Pos = 3, Level = 2, Icon = "icon-sword-mastery",
	Action = "learn-ability", Value = "upgrade-sword-mastery",
	Allowed = "check-upgrade", AllowArg = {"upgrade-frank-spatha"},
	Key = "w", Hint = "Learn S~!word Mastery", Popup = "popup-commands",
	Description = "Sword Mastery is a passive ability that increases damage with swords by 2",
	ForUnit = {
		"unit-frank-swordsman", "unit-frank-veteran-swordsman", "unit-frank-horseman"
	}
} )

DefineButton( { Pos = 4, Level = 2, Icon = "icon-spear-mastery",
	Action = "learn-ability", Value = "upgrade-spear-mastery",
	Key = "p", Hint = "Learn S~!pear Mastery", Popup = "popup-commands",
	Description = "Spear Mastery is a passive ability that increases damage with spears by 2",
	ForUnit = {
		"unit-dwarven-guard",
		"unit-goblin-spearman",
		"unit-germanic-spearman", "unit-teuton-spearman", "unit-frank-spearman"
	}
} )

DefineButton( { Pos = 5, Level = 2, Icon = "icon-critical-strike",
	Action = "learn-ability", Value = "upgrade-critical-strike",
	Key = "c", Hint = "Learn ~!Critical Strike", Popup = "popup-commands",
	Description = "Critical Strike is a passive ability that provides a 10% chance to deal double damage in combat. In No Randomness mode it provides a 10% damage bonus instead",
	ForUnit = {
		"unit-dwarven-expert-miner",
		"unit-dwarven-thane",
		"unit-dwarven-guard",
		"unit-dwarven-yale-lord",
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-germanic-veteran-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-veteran-swordsman", "unit-frank-veteran-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer", "unit-teuton-ritter", "unit-frank-horseman",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-shadowstalker",
		"unit-kobold-footpad",
		"unit-ettin",
		"unit-elven-swordsman",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 5, Level = 2, Icon = "icon-deadly-precision",
	Action = "learn-ability", Value = "upgrade-deadly-precision",
	Key = "d", Hint = "Learn ~!Deadly Precision", Popup = "popup-commands",
	Description = "Deadly Precision is a passive ability that increases critical strike chance by 10%. In No Randomness mode it provides a 10% damage bonus instead",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-guard",
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-germanic-veteran-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-veteran-swordsman", "unit-frank-veteran-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer", "unit-teuton-ritter", "unit-frank-horseman",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-shadowstalker",
		"unit-kobold-footpad",
		"unit-ettin",
		"unit-elven-swordsman",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 6, Level = 2, Icon = "icon-eagle-eye",
	Action = "learn-ability", Value = "upgrade-eagle-eye",
	Key = "e", Hint = "Learn Eagle ~!Eye", Popup = "popup-commands",
	Description = "Eagle Eye is a passive ability that increases accuracy by 2",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-guard",
		"unit-dwarven-yale-lord",
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-germanic-veteran-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-veteran-swordsman", "unit-frank-veteran-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer", "unit-teuton-ritter", "unit-frank-horseman",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-shadowstalker",
		"unit-kobold-footpad",
		"unit-ettin",
		"unit-elven-swordsman",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 7, Level = 2, Icon = "icon-stun",
	Action = "learn-ability", Value = "upgrade-stun",
	Key = "u", Hint = "Learn St~!un", Popup = "popup-commands",
	Description = "Stun is an active ability which does a stunning attack on a target, leaving it paralyzed for a few moments",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-lord",
		"unit-elven-swordsman",
		"unit-germanic-veteran-warrior",
		"unit-teuton-veteran-swordsman", "unit-frank-veteran-swordsman",
		"unit-teuton-ritter", "unit-frank-horseman",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-warlord",
		"unit-kobold-footpad",
		"unit-ettin",
		"unit-elven-swordsman",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 7, Level = 2, Icon = "icon-scouting",
	Action = "learn-ability", Value = "upgrade-scouting",
	Key = "s", Hint = "Learn ~!Scouting", Popup = "popup-commands",
	Description = "Scouting is a passive ability that increases sight by 1",
	ForUnit = {
		"unit-dwarven-gryphon-rider",
		"unit-germanic-archer",
		"unit-teuton-archer",
		"unit-goblin-shadowstalker"
	}
} )

DefineButton( { Pos = 8, Level = 2, Icon = "icon-puncture",
	Action = "learn-ability", Value = "upgrade-puncture",
	Key = "r", Hint = "Learn Punctu~!re", Popup = "popup-commands",
	Description = "Puncture is an active ability which makes the target bleed for a certain duration. Only usable with melee weapons capable of doing thrusting attacks",
	ForUnit = {
		"unit-germanic-veteran-warrior", "unit-germanic-spearman",
		"unit-teuton-veteran-swordsman", "unit-frank-veteran-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-dwarven-guard",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman",
		"unit-elven-swordsman"
	}
} )

DefineButton( { Pos = 8, Level = 2, Icon = "icon-precise-shot",
	Action = "learn-ability", Value = "upgrade-precise-shot",
	Key = "r", Hint = "Learn P~!recise Shot", Popup = "popup-commands",
	Description = "Precise Shot is an active ability which deals a critical hit. Only usable with ranged weapons",
	ForUnit = {
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-germanic-archer",
		"unit-teuton-archer",
		"unit-goblin-shadowstalker"
	}
} )

DefineButton( { Pos = 9, Level = 2, Icon = "icon-leadership",
	Action = "learn-ability", Value = "upgrade-leadership",
	Key = "l", Hint = "Learn ~!Leadership Aura", Popup = "popup-commands",
	Description = "Leadership Aura is an aura ability that increases the damage of nearby friendly units by 10%",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-lord",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms",
		"unit-ettin",
		"unit-surghan-mercenary-thane"
	}
} )

--[[
DefineButton( { Pos = 13, Level = 2, Icon = "icon-ethereal-vision",
	Action = "learn-ability", Value = "upgrade-ethereal-vision",
	Key = "v", Hint = "Learn Ethereal ~!Vision", Popup = "popup-commands",
	Description = "Ethereal Vision is a passive ability that allows the unit to see ethereal objects, such as interplanar portals",
	ForUnit = { -- allow only level 3 units to learn it, so that it isn't too easy to do so
		"unit-dwarven-expert-miner",
		"unit-dwarven-thane",
--		"unit-dwarven-guard",
		"unit-dwarven-yale-lord",
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
--		"unit-dwarven-witness",
--		"unit-germanic-veteran-warrior", "unit-germanic-spearman", "unit-germanic-archer",
--		"unit-teuton-veteran-swordsman", "unit-frank-veteran-swordsman",
--		"unit-teuton-spearman", "unit-frank-spearman",
--		"unit-teuton-archer", "unit-teuton-ritter", "unit-frank-horseman",
		"unit-teuton-ritter", "unit-frank-horseman",
--		"unit-teuton-priest",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
--		"unit-gnomish-herbalist",
--		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-shadowstalker",
		"unit-goblin-warlord", "unit-goblin-shadowstalker",
--		"unit-goblin-shaman",
--		"unit-kobold-footpad",
		"unit-ettin",
--		"unit-elven-swordsman", "unit-elven-priest",
		"unit-surghan-mercenary-thane"
	}
} )
--]]

DefineButton( { Pos = 1, Level = 2, Icon = "icon-healing",
	Action = "learn-ability", Value = "upgrade-healing",
	Description = "Healing is an active ability that heals an organic unit",
	Key = "h", Hint = _("Learn ~!Healing"), Popup = "popup-commands",
	ForUnit = {"unit-dwarven-witness"}
})

DefineButton( { Pos = 2, Level = 2, Icon = "icon-precision",
	Action = "learn-ability", Value = "upgrade-precision",
	Key = "r", Hint = _("Learn P~!recision"), Popup = "popup-commands",
	Description = "Precision is an active ability that doubles the accuracy of an organic unit while in combat",
	ForUnit = {"unit-teuton-priest", "unit-elven-priest", "unit-dwarven-witness"}
})

DefineButton( { Pos = 16, Level = 2, Icon = "icon-cancel",
	Action = "button", Value = 0,
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-dwarven-witness",
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer", "unit-teuton-ritter", "unit-frank-horseman",
		"unit-teuton-priest",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist",
		"unit-deep-gnomish-recruit", "unit-deep-gnomish-duelist", "unit-deep-gnomish-master-at-arms", "unit-deep-gnomish-herbalist",
		"unit-derro-thug", "unit-derro-executioner", "unit-derro-shadowguard",
		"unit-goblin-worker",
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker", "unit-goblin-shaman",
		"unit-kobold-footpad",
		"unit-ettin",
		"unit-elven-swordsman", "unit-elven-priest",
		"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	} 
} )

-- Inventory ------------------------------------------------------

DefineButton( { Pos = 14, Level = 0, Icon = "icon-inventory",
	Action = "button", Value = 3,
	Allowed = "check-has-inventory",
	Key = "i", Hint = "Open ~!Inventory", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-dwarven-witness",
		"unit-dwarven-gryphon-rider",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer", "unit-teuton-ritter", "unit-frank-horseman",
		"unit-teuton-priest",
		"unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist",
		"unit-deep-gnomish-recruit", "unit-deep-gnomish-duelist", "unit-deep-gnomish-master-at-arms", "unit-deep-gnomish-herbalist",
		"unit-derro-thug", "unit-derro-executioner", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker", "unit-goblin-shaman",
		"unit-kobold-footpad",
		"unit-wyrm",
		"unit-ettin",
		"unit-elven-swordsman", "unit-elven-priest",
		"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 15, Level = 0, Icon = "icon-inventory",
	Action = "button", Value = 3,
	Allowed = "check-has-inventory",
	Key = "i", Hint = "Open ~!Inventory", Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
} )

DefineButton( { Pos = 16, Level = 3, Icon = "icon-cancel",
	Action = "button", Value = 0,
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-guard",
		"unit-dwarven-scout", "unit-dwarven-pathfinder", "unit-dwarven-explorer",
		"unit-dwarven-yale-rider", "unit-dwarven-yale-lord",
		"unit-dwarven-witness",
		"unit-dwarven-gryphon-rider",
		"unit-germanic-warrior", "unit-germanic-veteran-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-swordsman", "unit-teuton-veteran-swordsman", "unit-suebi-swordsman",
		"unit-frank-swordsman", "unit-frank-veteran-swordsman",
		"unit-teuton-spearman", "unit-frank-spearman",
		"unit-teuton-archer", "unit-teuton-ritter", "unit-frank-horseman",
		"unit-teuton-priest",
		"unit-gnomish-recruit", "unit-gnomish-duelist", "unit-gnomish-master-at-arms", "unit-gnomish-herbalist",
		"unit-deep-gnomish-recruit", "unit-deep-gnomish-duelist", "unit-deep-gnomish-master-at-arms", "unit-deep-gnomish-herbalist",
		"unit-derro-thug", "unit-derro-executioner", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-swordsman", "unit-goblin-barbarian", "unit-goblin-warlord", "unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-headhunter", "unit-goblin-shadowstalker", "unit-goblin-shaman",
		"unit-kobold-footpad",
		"unit-wyrm",
		"unit-ettin",
		"unit-elven-swordsman", "unit-elven-priest",
		"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	} 
} )

DefineButton( { Pos = 16, Level = 1, Icon = "icon-cancel",
	Action = "button", Value = 0,
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-teuton-stronghold",
		"unit-dwarven-stronghold",
		"unit-goblin-stronghold",
	}
} )

-- Special Abilities ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-inspire",
	Action = "cast-spell", Value = "spell-inspire",
	Description = "Inspires an organic unit to deal 50% more damage",
	Key = "i", Hint = _("~!Inspire"), Popup = "popup-commands",
	ForUnit = {"unit-dwarven-witness"}
})

DefineButton( { Pos = 6, Level = 0, Icon = "icon-terror",
	Action = "cast-spell", Value = "spell-terror",
	Description = "Makes a unit flee in terror",
	Key = "t", Hint = _("~!Terror"), Popup = "popup-commands",
	ForUnit = {"unit-goblin-shaman"}
})

DefineButton( { Pos = 5, Level = 0, Icon = "icon-healing",
	Action = "cast-spell", Value = "spell-healing",
	Description = "Heals an organic unit",
	Key = "h", Hint = _("~!Healing"), Popup = "popup-commands",
	ForUnit = {"unit-teuton-priest", "unit-elven-priest", "unit-dwarven-witness"}
})

DefineButton( { Pos = 6, Level = 0, Icon = "icon-precision",
	Action = "cast-spell", Value = "spell-precision",
	Description = "Doubles the accuracy of an organic unit while in combat",
	Key = "r", Hint = _("P~!recision"), Popup = "popup-commands",
	ForUnit = {"unit-teuton-priest", "unit-elven-priest", "unit-dwarven-witness"}
})

DefineButton( { Pos = 6, Level = 0, Icon = "icon-stun",
	Action = "cast-spell", Value = "spell-stun",
	Description = "Does a stunning attack on a target, leaving it paralyzed for a few moments",
	Key = "u", Hint = _("St~!un"), Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-lord",
		"unit-elven-swordsman",
		"unit-germanic-veteran-warrior",
		"unit-teuton-veteran-swordsman", "unit-frank-veteran-swordsman", "unit-teuton-ritter", "unit-frank-horseman",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-warlord",
		"unit-kobold-footpad",
		"unit-ettin",
		"unit-elven-swordsman",
		"unit-surghan-mercenary-thane"
	}
})

DefineButton( { Pos = 7, Level = 0, Icon = "icon-puncture",
	Action = "cast-spell", Value = "spell-puncture",
	Description = "Makes the target bleed for a certain duration. Only usable with melee weapons capable of doing thrusting attacks",
	Key = "r", Hint = _("Punctu~!re"), Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-veteran-warrior", "unit-germanic-spearman",
		"unit-teuton-veteran-swordsman", "unit-frank-veteran-swordsman", "unit-teuton-spearman", "unit-frank-spearman",
		"unit-dwarven-guard",
		"unit-gnomish-master-at-arms", "unit-deep-gnomish-master-at-arms", "unit-derro-shadowguard",
		"unit-goblin-thief", "unit-goblin-warlord", "unit-goblin-spearman",
		"unit-elven-swordsman"
	}
})

DefineButton( { Pos = 6, Level = 0, Icon = "icon-precise-shot",
	Action = "cast-spell", Value = "spell-precise-shot",
	Description = "Deals an attack which always results in a critical hit. Only usable with ranged weapons",
	Key = "r", Hint = _("P~!recise Shot"), Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-explorer", "unit-dwarven-gryphon-rider",
		"unit-germanic-archer",
		"unit-teuton-archer",
		"unit-goblin-shadowstalker"
	}
})

-- Buildings ---------------------------------------------------

DefineButton( { Pos = 10, Level = 1, Icon = "icon-copper-mine",
	Action = "build", Value = "unit-copper-mine",
	Key = "c", Hint = _("Build ~!Copper Mine"), Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 11, Level = 1, Icon = "icon-silver-mine",
	Action = "build", Value = "unit-silver-mine",
	Key = "v", Hint = _("Build Si~!lver Mine"), Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 12, Level = 1, Icon = "icon-gold-mine",
	Action = "build", Value = "unit-gold-mine",
	Key = "g", Hint = _("Build ~!Gold Mine"), Popup = "popup-building",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

DefineButton( { Pos = 16, Level = 1, Icon = "icon-cancel",
	Action = "button", Value = 0,
	Key = "escape", Hint = _("Cancel (~<Esc~>)"), Popup = "popup-commands",
	ForUnit = {
		"unit-germanic-worker", "unit-teuton-worker",
		"unit-dwarven-miner", "unit-dwarven-skilled-miner", "unit-dwarven-expert-miner",
		"unit-brising-miner", "unit-brising-skilled-miner", "unit-brising-expert-miner",
		"unit-gnomish-worker", "unit-deep-gnomish-worker", "unit-derro-worker",
		"unit-goblin-worker"
	}
})

-- Quest Buttons

DefineButton( { Pos = 9, Level = 0, Icon = "icon-quest",
	Action = "quest", Value = 0,
	Key = "", Hint = _("Quest"), Popup = "popup-commands",
	ForUnit = {"unit-latin-town-hall", "unit-germanic-town-hall", "unit-teuton-town-hall", "unit-teuton-stronghold", "unit-dwarven-town-hall", "unit-dwarven-stronghold", "unit-gnomish-town-hall", "unit-goblin-town-hall", "unit-goblin-stronghold"}
})

DefineButton( { Pos = 10, Level = 0, Icon = "icon-quest",
	Action = "quest", Value = 1,
	Key = "", Hint = _("Quest"), Popup = "popup-commands",
	ForUnit = {"unit-latin-town-hall", "unit-germanic-town-hall", "unit-teuton-town-hall", "unit-teuton-stronghold", "unit-dwarven-town-hall", "unit-dwarven-stronghold", "unit-gnomish-town-hall", "unit-goblin-town-hall", "unit-goblin-stronghold"}
})

DefineButton( { Pos = 11, Level = 0, Icon = "icon-quest",
	Action = "quest", Value = 2,
	Key = "", Hint = _("Quest"), Popup = "popup-commands",
	ForUnit = {"unit-latin-town-hall", "unit-germanic-town-hall", "unit-teuton-town-hall", "unit-teuton-stronghold", "unit-dwarven-town-hall", "unit-dwarven-stronghold", "unit-gnomish-town-hall", "unit-goblin-town-hall", "unit-goblin-stronghold"}
})

-- Item Sell / Hero Recruitment Buttons

DefineButton( { Pos = 9, Level = 0,
	Action = "buy", Value = -1,
	Key = "", Hint = _("Buy"), Popup = "popup-unit",
	ForUnit = {
		"unit-latin-barracks",
		"unit-germanic-barracks",
		"unit-teuton-barracks",
		"unit-teuton-temple",
		"unit-dwarven-barracks",
		"unit-dwarven-temple",
		"unit-gnomish-barracks",
		"unit-goblin-barracks",
		"unit-goblin-temple",
		"unit-mercenary-camp"
	}
})

DefineButton( { Pos = 10, Level = 0,
	Action = "buy", Value = -1,
	Key = "", Hint = _("Buy"), Popup = "popup-unit",
	ForUnit = {
		"unit-latin-barracks",
		"unit-germanic-barracks",
		"unit-teuton-barracks",
		"unit-teuton-temple",
		"unit-dwarven-barracks",
		"unit-dwarven-temple",
		"unit-gnomish-barracks",
		"unit-goblin-barracks",
		"unit-goblin-temple",
		"unit-mercenary-camp"
	}
})

DefineButton( { Pos = 11, Level = 0,
	Action = "buy", Value = -1,
	Key = "", Hint = _("Buy"), Popup = "popup-unit",
	ForUnit = {
		"unit-latin-barracks",
		"unit-germanic-barracks",
		"unit-teuton-barracks",
		"unit-teuton-temple",
		"unit-dwarven-barracks",
		"unit-dwarven-temple",
		"unit-gnomish-barracks",
		"unit-goblin-barracks",
		"unit-goblin-temple",
		"unit-mercenary-camp"
	}
})

-- Units --------------------------------------------------------------

-- Items --------------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-cheese",
	Action = "train-unit", Value = "unit-cheese",
	Key = "c", Hint = _("Buy ~!Cheese"), Popup = "popup-unit",
	ForUnit = {
		"unit-celt-farm", "unit-germanic-farm", "unit-teuton-farm", "unit-latin-farm",
		"unit-dwarven-mushroom-farm", "unit-gnomish-farm", "unit-goblin-farm"
	}
})

DefineButton( { Pos = 2, Level = 0, Icon = "icon-carrots",
	Action = "train-unit", Value = "unit-carrots",
	Key = "r", Hint = _("Buy Ca~!rrots"), Popup = "popup-unit",
	ForUnit = {
		"unit-celt-farm", "unit-germanic-farm", "unit-teuton-farm", "unit-latin-farm",
		"unit-gnomish-farm", "unit-goblin-farm"
	}
})

DefineButton( { Pos = 2, Level = 0, Icon = "icon-red-potion",
	Action = "train-unit", Value = "unit-potion-of-healing",
	Key = "c", Hint = _("Buy Potion of ~!Healing"), Popup = "popup-unit",
	ForUnit = {"unit-teuton-temple", "unit-dwarven-temple", "unit-goblin-temple"}
})


-- Load the buttons of all civilizations

Load("scripts/civilizations/celt/buttons.lua")
Load("scripts/civilizations/dwarf/buttons.lua")
Load("scripts/civilizations/germanic/buttons.lua")
Load("scripts/civilizations/gnome/buttons.lua")
Load("scripts/civilizations/goblin/buttons.lua")
Load("scripts/civilizations/latin/buttons.lua")
Load("scripts/civilizations/teuton/buttons.lua")
