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
--      (c) Copyright 2001-2004 by Vladi Belperchinov-Shabanski, Lutz Sammer,
--                                 and Jimmy Salmon
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

Load("scripts/celt/buttons.lua")
Load("scripts/dwarf/buttons.lua")
Load("scripts/germanic/buttons.lua")
Load("scripts/gnome/buttons.lua")
Load("scripts/goblin/buttons.lua")
Load("scripts/teuton/buttons.lua")

------------------------------------------------------------------------------
--  Define unit-button.
--
--  DefineButton( { Pos = n, Level = n, Icon = ident,
--    Action = name, [Value = value,]
--    [Allowed = check, [values,]]
--    Key = key, Hint = hint, ForUnit = units)
--

-- general cancel button ------------------------------------------------------

DefineButton( { Pos = 9, Level = 9, Icon = "icon-cancel",
  Action = "cancel",
  Key = "escape", Hint = "~<ESC~> Cancel", Popup = "popup-commands",
  ForUnit = {"*"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-cancel",
  Action = "cancel-upgrade",
  Key = "escape", Hint = "~<ESC~> Cancel Upgrade", Popup = "popup-commands",
  ForUnit = {"cancel-upgrade"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-cancel",
  Action = "cancel-train-unit",
  Key = "escape", Hint = "~<ESC~> Cancel Unit Training", Popup = "popup-commands",
  ForUnit = {"*"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-cancel",
  Action = "cancel-build",
  Key = "escape", Hint = "~<ESC~> Cancel Construction", Popup = "popup-commands",
  ForUnit = {"cancel-build"} } )

-- Level-Up Upgrades ------------------------------------------------------

DefineButton( { Pos = 7, Level = 0, Icon = "icon-level-up",
  Action = "button", Value = 1,
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1"},
  Key = "l", Hint = "Choose ~!Level-Up Upgrade", Popup = "popup-commands",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
    "unit-dwarven-scout", "unit-dwarven-gryphon-rider",
	"unit-dwarven-yale-rider",
    "unit-germanic-warrior", "unit-germanic-archer",
	"unit-teuton-swordsman", "unit-teuton-archer",
    "unit-gnomish-recruit", "unit-gnomish-herbalist",
    "unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer",
    "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
	"unit-hero-marbod",
	"unit-hero-durin", "unit-hero-durin-thane", 
    "unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn",
    "unit-hero-greebo"
  } } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-axe-mastery",
  Action = "learn-ability", Value = "upgrade-axe-mastery",
  Key = "x", Hint = "Learn A~!xe Mastery", Popup = "popup-commands",
  Description = "Axe Mastery is a passive ability that increases the axe-wielding unit's piercing damage by 2.",
  ForUnit = {
    "unit-dwarven-thane",
    "unit-dwarven-yale-rider",
    "unit-surghan-mercenary-thane",
	"unit-hero-durin-thane", 
    "unit-hero-rugnur-thane", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn"
  } } )

DefineButton( { Pos = 3, Level = 1, Icon = "icon-critical-strike",
  Action = "learn-ability", Value = "upgrade-critical-strike",
  Key = "c", Hint = "Learn ~!Critical Strike", Popup = "popup-commands",
  Description = "Critical Strike is a passive ability that provides 15% chance to deal double damage in combat. In No Randomness mode it provides a 15% damage bonus instead.",
  ForUnit = {
    "unit-dwarven-thane",
    "unit-dwarven-yale-rider",
    "unit-dwarven-scout", "unit-dwarven-gryphon-rider",
    "unit-germanic-warrior", "unit-germanic-archer",
	"unit-teuton-swordsman", "unit-teuton-archer",
    "unit-gnomish-recruit",
    "unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer",
    "unit-surghan-mercenary-thane",
	"unit-hero-marbod",
	"unit-hero-durin-thane", 
    "unit-hero-rugnur-thane", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn",
    "unit-hero-greebo"
  } } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-sword-mastery-bronze",
  Action = "learn-ability", Value = "upgrade-sword-mastery",
  Key = "w", Hint = "Learn S~!word Mastery", Popup = "popup-commands",
  Description = "Sword Mastery is a passive ability that increases the sword-wielding unit's piercing damage by 2.",
  ForUnit = {
    "unit-germanic-warrior",
	"unit-teuton-swordsman",
    "unit-gnomish-recruit",
	"unit-hero-marbod",
	"unit-hero-greebo"
  } } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-sword-mastery",
  Action = "learn-ability", Value = "upgrade-sword-mastery",
  Allowed = "check-upgrade", AllowArg = {"upgrade-teuton-spatha"},
  Key = "w", Hint = "Learn S~!word Mastery", Popup = "popup-commands",
  Description = "Sword Mastery is a passive ability that increases the sword-wielding unit's piercing damage by 2.",
  ForUnit = {
    "unit-germanic-warrior",
	"unit-teuton-swordsman",
    "unit-gnomish-recruit",
	"unit-hero-marbod",
	"unit-hero-greebo"
  } } )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "escape", Hint = "~<ESC~> Cancel", Popup = "popup-commands",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
    "unit-dwarven-scout", "unit-dwarven-gryphon-rider",
	"unit-dwarven-yale-rider",
    "unit-germanic-warrior", "unit-germanic-archer",
	"unit-teuton-swordsman", "unit-teuton-archer",
    "unit-gnomish-recruit", "unit-gnomish-herbalist",
    "unit-goblin-thief", "unit-goblin-spearman", "unit-goblin-archer",
    "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
	"unit-hero-marbod",
	"unit-hero-durin", "unit-hero-durin-thane", 
    "unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn",
    "unit-hero-greebo"
  } } )
