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
--      buttons.ccl - Define the unit-buttons of the dwarven civilization.
--
--      (c) Copyright 2013-2014 by Andre Novellino Gouvêa
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

-- general commands -- almost all", "units have it -------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-boots",
  Action = "move",
  Key = "m", Hint = "~!Move",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-scout", "unit-dwarven-miner",
    "unit-dwarven-ballista", "unit-dwarven-gryphon-rider",
    "unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-caravan",
    "unit-goblin-worker", "unit-goblin-spearman", "unit-goblin-archer",
    "unit-goblin-war-machine", "unit-goblin-glider",
    "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
    "unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn",
    "unit-critter", "unit-gryphon", "unit-wyrm",
    "dwarf-group"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-1",
  Action = "stop",
  Key = "s", Hint = "~!Stop",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-scout", "unit-dwarven-miner",
    "unit-dwarven-ballista", "unit-dwarven-gryphon-rider",
    "unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-caravan",
    "unit-goblin-worker", "unit-goblin-spearman", "unit-goblin-archer",
    "unit-goblin-war-machine", "unit-goblin-glider",
    "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
    "unit-dwarven-guard-tower",
    "unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn",
    "unit-critter", "unit-gryphon", "unit-wyrm",
    "dwarf-group"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-2",
  Action = "stop",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-shield-1"},
  Key = "s", Hint = "~!Stop",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
    "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
    "unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn"
    } } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-3",
  Action = "stop",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-shield-2"},
  Key = "s", Hint = "~!Stop",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
    "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
    "unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn"
    } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-axe-1",
  Action = "attack",
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-miner",
    "unit-gnomish-worker", "unit-gnomish-recruit",
    "unit-goblin-worker", "unit-goblin-spearman",
    "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
    "unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn",
    "unit-critter", "unit-gryphon", "unit-wyrm",
    "dwarf-group"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-axe-2",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-broad-axe"},
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
    "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
    "unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn"
    } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-axe-3",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-great-axe"},
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane",
    "unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
    "unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn"
    } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-throwing-axe-1",
  Action = "attack",
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-scout", "unit-dwarven-gryphon-rider",
    "unit-dwarven-guard-tower",
    "unit-goblin-archer"
  } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-throwing-axe-2",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-throwing-axe-1"},
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-scout", "unit-dwarven-gryphon-rider",
    "unit-dwarven-guard-tower"
  } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-throwing-axe-3",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-throwing-axe-2"},
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-scout", "unit-dwarven-gryphon-rider",
    "unit-dwarven-guard-tower"
  } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-1",
  Action = "attack",
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-ballista", "unit-goblin-war-machine"
  } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-2",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-ballista-bolt-1"},
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-ballista"
  } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-3",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-ballista-bolt-2"},
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-ballista"
  } } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-dwarven-patrol-land",
  Action = "patrol",
  Key = "p", Hint = "~!Patrol",
  ForUnit = {
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-scout",
	"unit-dwarven-ballista", "unit-dwarven-gryphon-rider",
	"unit-goblin-spearman", "unit-goblin-archer",
	"unit-goblin-war-machine", "unit-goblin-glider",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
	"unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn",
	"dwarf-group"
  } } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-dwarven-stand-ground",
  Action = "stand-ground",
  Key = "t", Hint = "S~!tand Ground",
  ForUnit = {
  	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-thane", "unit-dwarven-scout",
	"unit-dwarven-ballista", "unit-dwarven-gryphon-rider",
	"unit-gnomish-recruit", 
	"unit-goblin-spearman", "unit-goblin-archer", "unit-goblin-war-machine",
	"unit-surghan-mercenary-steelclad", "unit-surghan-mercenary-thane",
	"unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane", "unit-hero-baglur", "unit-hero-baglur-thane", "unit-hero-thursagan", "unit-hero-durstorn",
	"dwarf-group"} } )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-attack-ground",
  Action = "attack-ground",
  Key = "g", Hint = "Attack ~!Ground",
  ForUnit = {"unit-dwarven-ballista", "dwarf-group"} } )

-- miner specific actions ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = "~!Repair",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = "~!Harvest Lumber/Mine Gold",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-dwarven-return-goods",
  Action = "return-goods",
  Key = "g", Hint = "Return with ~!Goods",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker", "unit-goblin-worker" } } )

-- build basic/advanced structs -----------------------------------------------

DefineButton( { Pos = 7, Level = 0, Icon = "icon-build-basic-structure",
  Action = "button", Value = 1,
  Key = "b", Hint = "~!Build Basic Structure",
  ForUnit = {"unit-dwarven-miner"} } )

-- simple buildings dwarf -----------------------------------------------------

DefineButton( { Pos = 3, Level = 1, Icon = "icon-dwarven-town-hall",
  Action = "build", Value = "unit-dwarven-town-hall",
  Key = "h", Hint = "Build Mead ~!Hall",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-mushroom-farm",
  Action = "build", Value = "unit-dwarven-mushroom-farm",
  Key = "f", Hint = "Build Mushroom ~!Farm",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-dwarven-barracks",
  Action = "build", Value = "unit-dwarven-barracks",
  Key = "w", Hint = "Build ~!War Hall",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 4, Level = 1, Icon = "icon-dwarven-lumber-mill",
  Action = "build", Value = "unit-dwarven-lumber-mill",
  Key = "l", Hint = "Build ~!Lumber Mill",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 5, Level = 1, Icon = "icon-dwarven-smith",
  Action = "build", Value = "unit-dwarven-smith",
  Key = "s", Hint = "Build ~!Smith",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 7, Level = 1, Icon = "icon-dwarven-sentry-tower",
  Action = "build", Value = "unit-dwarven-sentry-tower",
  Key = "t", Hint = "Build Sentry ~!Tower",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "escape", Hint = "~<ESC~> Cancel",
  ForUnit = {"unit-dwarven-miner"} } )

-- Building Commands ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-miner",
  Action = "train-unit", Value = "unit-dwarven-miner",
  Key = "m", Hint = "Train ~!Miner",
  ForUnit = {"unit-dwarven-town-hall"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-axefighter",
  Action = "train-unit", Value = "unit-dwarven-axefighter",
  Key = "a", Hint = "Train ~!Axefighter",
  ForUnit = {"unit-dwarven-barracks"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-scout",
  Action = "train-unit", Value = "unit-dwarven-scout",
  Key = "s", Hint = "Train ~!Scout",
  ForUnit = {"unit-dwarven-barracks"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista",
  Action = "train-unit", Value = "unit-dwarven-ballista",
  Key = "b", Hint = "Build ~!Ballista",
  ForUnit = {"unit-dwarven-barracks"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-surghan-mercenary-steelclad",
  Action = "train-unit", Value = "unit-surghan-mercenary-steelclad",
  Key = "s", Hint = "Hire ~!Surghan Mercenaries",
  ForUnit = {"unit-mercenary-camp"} } )

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-axe-2",
  Action = "research", Value = "upgrade-dwarven-broad-axe",
  Allowed = "check-single-research",
  Key = "a", Hint = "Research Broad ~!Axe",
  ForUnit = {"unit-dwarven-smith"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-axe-3",
  Action = "research", Value = "upgrade-dwarven-great-axe",
  Allowed = "check-single-research",
  Key = "a", Hint = "Research Great ~!Axe",
  ForUnit = {"unit-dwarven-smith"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-2",
  Action = "research", Value = "upgrade-dwarven-shield-1",
  Allowed = "check-single-research",
  Key = "s", Hint = "Research Heater ~!Shield",
  ForUnit = {"unit-dwarven-smith"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-3",
  Action = "research", Value = "upgrade-dwarven-shield-2",
  Allowed = "check-single-research",
  Key = "s", Hint = "Research Thrymgjol ~!Shield",
  ForUnit = {"unit-dwarven-smith"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-2",
  Action = "research", Value = "upgrade-dwarven-ballista-bolt-1",
  Allowed = "check-single-research",
  Key = "b", Hint = "Research Broadhead Ballista ~!Bolt",
  ForUnit = {"unit-dwarven-smith"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista-bolt-3",
  Action = "research", Value = "upgrade-dwarven-ballista-bolt-2",
  Allowed = "check-single-research",
  Key = "b", Hint = "Research Penetrating Ballista ~!Bolt",
  ForUnit = {"unit-dwarven-smith"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-throwing-axe-2",
  Action = "research", Value = "upgrade-dwarven-throwing-axe-1",
  Allowed = "check-single-research",
  Key = "t", Hint = "Research Sharp ~!Throwing Axe",
  ForUnit = {"unit-dwarven-lumber-mill"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-throwing-axe-3",
  Action = "research", Value = "upgrade-dwarven-throwing-axe-2",
  Allowed = "check-single-research",
  Key = "t", Hint = "~!Research Bearded ~!Throwing Axe",
  ForUnit = {"unit-dwarven-lumber-mill"} } )

-- Upgrades ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad",
  Action = "upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "0"},
  Key = "u", Hint = "~!Upgrade to Steelclad",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-gray-hair",
  Action = "upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "1"},
  Key = "u", Hint = "~!Upgrade to Steelclad",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad",
  Action = "upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "2"},
  Key = "u", Hint = "~!Upgrade to Steelclad",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-blond-hair",
  Action = "upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "3"},
  Key = "u", Hint = "~!Upgrade to Steelclad",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-black-hair",
  Action = "upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "4"},
  Key = "u", Hint = "~!Upgrade to Steelclad",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-brown-hair",
  Action = "upgrade-to", Value = "unit-dwarven-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "5"},
  Key = "u", Hint = "~!Upgrade to Steelclad",
  ForUnit = {"unit-dwarven-axefighter"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-steelclad-brown-hair",
  Action = "upgrade-to", Value = "unit-hero-rugnur-steelclad",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1"},
  Key = "u", Hint = "~!Upgrade to Steelclad",
  ForUnit = {"unit-hero-rugnur"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane",
  Action = "upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "0"},
  Key = "u", Hint = "~!Upgrade to Thane",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-gray-hair",
  Action = "upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "1"},
  Key = "u", Hint = "~!Upgrade to Thane",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane",
  Action = "upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "2"},
  Key = "u", Hint = "~!Upgrade to Thane",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-blond-hair",
  Action = "upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "3"},
  Key = "u", Hint = "~!Upgrade to Thane",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-black-hair",
  Action = "upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "4"},
  Key = "u", Hint = "~!Upgrade to Thane",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane-brown-hair",
  Action = "upgrade-to", Value = "unit-dwarven-thane",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1", "Variation", "Value", "==", "5"},
  Key = "u", Hint = "~!Upgrade to Thane",
  ForUnit = {"unit-dwarven-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-surghan-mercenary-thane",
  Action = "upgrade-to", Value = "unit-surghan-mercenary-thane",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1"},
  Key = "u", Hint = "~!Upgrade to Thane",
  ForUnit = {"unit-surghan-mercenary-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-rugnur-older",
  Action = "upgrade-to", Value = "unit-hero-rugnur-thane",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1"},
  Key = "u", Hint = "~!Upgrade to Thane",
  ForUnit = {"unit-hero-rugnur-steelclad"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-thane",
  Action = "upgrade-to", Value = "unit-hero-baglur-thane",
  Allowed = "check-unit-variable", AllowArg = {"LevelUp", "Value", ">=", "1"},
  Key = "u", Hint = "~!Upgrade to Thane",
  ForUnit = {"unit-hero-baglur"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-guard-tower",
  Action = "upgrade-to", Value = "unit-dwarven-guard-tower",
  Key = "g", Hint = "Upgrade to ~!Guard Tower",
  ForUnit = {"unit-dwarven-sentry-tower"} } )

-- Items ---------------------------------------------------------

--DefineButton( { Pos = 7, Level = 0, Icon = "icon-build-basic-structure",
--  Action = "button", Value = 1,
--  Key = "o", Hint = "~!Open Inventory",
--  ForUnit = {"unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane"} } )

--DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-axe-3",
--  Action = "cast-spell", Value = "spell-equip-axe-of-perun",
--  Allowed = "check-unit-variable", AllowArg = {"AxeOfPerun", "Value", "==", "1"},
--  Key = "e", Hint = "~!Equip Toporik",
--  ForUnit = {"unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane"} } )

--DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-axe-3",
--  Action = "attack",
--  Allowed = "check-unit-variable", AllowArg = {"AxeOfPerun", "Value", "==", "2"},
--  Key = "a", Hint = "~!Attack",
--  ForUnit = {"unit-hero-rugnur", "unit-hero-rugnur-steelclad", "unit-hero-rugnur-thane"} } )

-- Item Purchase ---------------------------------------------------------

--DefineButton( { Pos = 3, Level = 0, Icon = "icon-red-potion",
--  Action = "train-unit", Value = "unit-potion-of-healing",
--  Key = "p", Hint = "Buy ~!Potion of Healing",
--  ForUnit = {"unit-dwarven-smith"} } )
