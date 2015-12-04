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

-- Load the buttons of all races

Load("scripts/civilizations/celt/buttons.lua")
Load("scripts/civilizations/dwarf/buttons.lua")
Load("scripts/civilizations/germanic/buttons.lua")
Load("scripts/civilizations/gnome/buttons.lua")
Load("scripts/civilizations/goblin/buttons.lua")
Load("scripts/civilizations/teuton/buttons.lua")

------------------------------------------------------------------------------
--  Define unit-button.
--
--  DefineButton( { Pos = n, Level = n, Icon = ident,
--    Action = name, [Value = value,]
--    [Allowed = check, [values,]]
--    Key = key, Hint = hint, ForUnit = units)
--

-- general cancel button ------------------------------------------------------

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
	Action = "button", Value = 1,
	Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1"},
	Key = "l", Hint = "Choose ~!Level-Up Upgrade", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-scout", "unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider",
		"unit-germanic-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-teuton-archer", "unit-teuton-ritter",
		"unit-gnomish-recruit", "unit-gnomish-herbalist",
		"unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer",
		"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-axe-mastery",
	Action = "learn-ability", Value = "upgrade-axe-mastery",
	Key = "x", Hint = "Learn A~!xe Mastery", Popup = "popup-commands",
	Description = "Axe Mastery is a passive ability that increases the axe-wielding unit's damage by 2.",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-rider",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-sword-mastery-bronze",
	Action = "learn-ability", Value = "upgrade-sword-mastery",
	Key = "w", Hint = "Learn S~!word Mastery", Popup = "popup-commands",
	Description = "Sword Mastery is a passive ability that increases the sword-wielding unit's damage by 2.",
	ForUnit = {
		"unit-germanic-warrior",
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-teuton-ritter",
		"unit-gnomish-recruit"
	}
} )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-sword-mastery",
	Action = "learn-ability", Value = "upgrade-sword-mastery",
	Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-spatha"},
	Key = "w", Hint = "Learn S~!word Mastery", Popup = "popup-commands",
	Description = "Sword Mastery is a passive ability that increases the sword-wielding unit's damage by 2.",
	ForUnit = {
		"unit-germanic-warrior",
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-teuton-ritter",
		"unit-gnomish-recruit"
	}
} )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-critical-strike",
	Action = "learn-ability", Value = "upgrade-critical-strike",
	Key = "c", Hint = "Learn ~!Critical Strike", Popup = "popup-commands",
	Description = "Critical Strike is a passive ability that provides a 10% chance to deal double damage in combat. In No Randomness mode it provides a 10% damage bonus instead.",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-rider",
		"unit-dwarven-scout", "unit-dwarven-gryphon-rider",
		"unit-germanic-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-teuton-archer", "unit-teuton-ritter",
		"unit-gnomish-recruit",
		"unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-deadly-precision",
	Action = "learn-ability", Value = "upgrade-deadly-precision",
	Allowed = "check-individual-upgrade", AllowArg = {"upgrade-critical-strike"},
	Key = "d", Hint = "Learn ~!Deadly Precision", Popup = "popup-commands",
	Description = "Deadly Precision is a passive ability that increases critical strike chance by 10%. In No Randomness mode it provides a 10% damage bonus instead.",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-rider",
		"unit-dwarven-scout", "unit-dwarven-gryphon-rider",
		"unit-germanic-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-teuton-archer", "unit-teuton-ritter",
		"unit-gnomish-recruit",
		"unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 3, Level = 1, Icon = "icon-eagle-eye",
	Action = "learn-ability", Value = "upgrade-eagle-eye",
	Key = "e", Hint = "Learn Eagle ~!Eye", Popup = "popup-commands",
	Description = "Eagle Eye is a passive ability that increases accuracy by 2.",
	ForUnit = {
		"unit-dwarven-thane",
		"unit-dwarven-yale-rider",
		"unit-dwarven-scout", "unit-dwarven-gryphon-rider",
		"unit-germanic-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-teuton-archer", "unit-teuton-ritter",
		"unit-gnomish-recruit",
		"unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer",
		"unit-surghan-mercenary-thane"
	}
} )

DefineButton( { Pos = 16, Level = 1, Icon = "icon-cancel",
	Action = "button", Value = 0,
	Key = "escape", Hint = "Cancel (~<Esc~>)", Popup = "popup-commands",
	ForUnit = {
		"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
		"unit-dwarven-scout", "unit-dwarven-gryphon-rider",
		"unit-dwarven-yale-rider",
		"unit-germanic-warrior", "unit-germanic-spearman", "unit-germanic-archer",
		"unit-teuton-swordsman", "unit-suebi-swordsman", "unit-teuton-archer", "unit-teuton-ritter",
		"unit-gnomish-recruit", "unit-gnomish-herbalist",
		"unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer",
		"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane"
	} 
} )

-- Purchasable Items ------------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-red-potion",
	Action = "train-unit", Value = "unit-potion-of-healing",
	Key = "h", Hint = _("Buy Potion of ~!Healing"), Popup = "popup-item",
	ForUnit = {"unit-teuton-stronghold", "unit-dwarven-stronghold"}
} )
