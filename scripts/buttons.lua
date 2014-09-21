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

Load("scripts/dwarf/buttons.lua")
Load("scripts/gnome/buttons.lua")
Load("scripts/goblin/buttons.lua")

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
  Key = "escape", Hint = "~<ESC~> Cancel",
  ForUnit = {"*"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-cancel",
  Action = "cancel-upgrade",
  Key = "escape", Hint = "~<ESC~> Cancel Upgrade",
  ForUnit = {"cancel-upgrade"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-cancel",
  Action = "cancel-train-unit",
  Key = "escape", Hint = "~<ESC~> Cancel Unit Training",
  ForUnit = {"*"} } )

DefineButton( { Pos = 9, Level = 0, Icon = "icon-cancel",
  Action = "cancel-build",
  Key = "escape", Hint = "~<ESC~> Cancel Construction",
  ForUnit = {"cancel-build"} } )

-- Level-Up Upgrades ------------------------------------------------------

DefineButton( { Pos = 7, Level = 0, Icon = "icon-level-up",
  Action = "button", Value = 1,
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1"},
  Key = "l", Hint = "Choose ~!Level-Up Upgrade",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
    "unit-dwarven-scout", "unit-dwarven-gryphon-rider",
    "unit-gnomish-recruit",
    "unit-goblin-spearman", "unit-goblin-archer",
    "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
    "unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn",
    "unit-hero-greebo"
  } } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-axe-mastery",
  Action = "cast-spell", Value = "spell-learn-axe-mastery",
  Allowed = "check-unit-variable", AllowArg = {"AxeMastery", "Value", "<", "1", "LevelUp", "Value", ">=", "1"},
  Key = "x", Hint = "Learn A~!xe Mastery (+2 damage)",
  ForUnit = {
    "unit-dwarven-thane",
    "unit-surghan-mercenary-thane",
    "unit-hero-rugnur-thane", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn"
  } } )

DefineButton( { Pos = 3, Level = 1, Icon = "icon-critical-strike",
  Action = "cast-spell", Value = "spell-learn-critical-strike",
  Allowed = "check-unit-variable", AllowArg = {"CriticalStrike", "Value", "<", "1", "LevelUp", "Value", ">=", "1"},
  Key = "c", Hint = "Learn ~!Critical Strike (chance to deal double damage)",
  ForUnit = {
    "unit-dwarven-thane",
    "unit-dwarven-scout", "unit-dwarven-gryphon-rider",
    "unit-gnomish-recruit",
    "unit-goblin-spearman", "unit-goblin-archer",
    "unit-surghan-mercenary-thane",
    "unit-hero-rugnur-thane", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn",
    "unit-hero-greebo"
  } } )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "escape", Hint = "~<ESC~> Cancel",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
    "unit-dwarven-scout", "unit-dwarven-gryphon-rider",
    "unit-gnomish-recruit",
    "unit-goblin-spearman", "unit-goblin-archer",
    "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
    "unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn",
    "unit-hero-greebo"
  } } )

-- For the Motherland Buttons ------------------------------------------------------

DefineButton( { Pos = 8, Level = 0, Icon = "icon-level-up",
  Action = "button", Value = 1,
  Allowed = "check-unit-variable", AllowArg = {"ForTheMotherland", "Value", ">=", "1"},
  Key = "c", Hint = "~!Create Unit",
  ForUnit = {
    "unit-dwarven-thane",
    "unit-goblin-spearman"
  } } )
