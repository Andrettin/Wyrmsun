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
--      (c) Copyright 2001-2003 by Vladi Belperchinov-Shabanski and Lutz Sammer
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
  Key = "m", Hint = "~!MOVE",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-scout", "unit-dwarven-miner",
    "unit-dwarven-ballista",
    "unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-caravan",
    "unit-goblin-spearman",
    "unit-rugnur", "unit-rugnur-older",
    "unit-critter",
    "dwarf-group"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-1",
  Action = "stop",
  Key = "s", Hint = "~!STOP",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-scout", "unit-dwarven-miner",
    "unit-dwarven-ballista",
    "unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-caravan",
    "unit-goblin-spearman",
    "unit-rugnur", "unit-rugnur-older",
    "unit-critter",
    "dwarf-group"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-axe-1",
  Action = "attack",
  Key = "a", Hint = "~!ATTACK",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-scout", "unit-dwarven-miner",
    "unit-dwarven-ballista",
    "unit-gnomish-worker", "unit-gnomish-recruit",
    "unit-goblin-spearman",
    "unit-rugnur", "unit-rugnur-older",
    "dwarf-group"} } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-dwarven-patrol-land",
  Action = "patrol",
  Key = "p", Hint = "~!PATROL",
  ForUnit = {
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-scout",
	"unit-dwarven-ballista",
	"unit-gnomish-recruit", 
	"unit-goblin-spearman",
	"unit-rugnur", "unit-rugnur-older",
	"dwarf-group"
  } } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-dwarven-stand-ground",
  Action = "stand-ground",
  Key = "t", Hint = "S~!TAND GROUND",
  ForUnit = {
  	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-scout",
	"unit-dwarven-ballista",
	"unit-gnomish-recruit", 
	"unit-goblin-spearman",
	"unit-rugnur", "unit-rugnur-older",
	"dwarf-group"} } )

-- miner specific actions ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = "~!REPAIR",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = "~!HARVEST LUMBER/MINE GOLD",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"} } )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-dwarven-return-goods",
  Action = "return-goods",
  Key = "g", Hint = "RETURN WITH ~!GOODS",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"} } )

-- build basic/advanced structs -----------------------------------------------

DefineButton( { Pos = 7, Level = 0, Icon = "icon-build-basic-structure",
  Action = "button", Value = 1,
  Key = "b", Hint = "~!BUILD BASIC STRUCTURE",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"} } )

-- simple buildings dwarf -----------------------------------------------------

DefineButton( { Pos = 3, Level = 1, Icon = "icon-dwarven-town-hall",
  Action = "build", Value = "unit-dwarven-town-hall",
  Key = "h", Hint = "BUILD MEAD ~!HALL",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"} } )

DefineButton( { Pos = 1, Level = 1, Icon = "icon-dwarven-mushroom-farm",
  Action = "build", Value = "unit-dwarven-mushroom-farm",
  Key = "f", Hint = "BUILD MUSHROOM ~!FARM",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"} } )

DefineButton( { Pos = 2, Level = 1, Icon = "icon-dwarven-barracks",
  Action = "build", Value = "unit-dwarven-barracks",
  Key = "w", Hint = "BUILD ~!WAR HALL",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"} } )

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "\27", Hint = "~<ESC~> CANCEL",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"} } )

-- buildings commands ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-miner",
  Action = "train-unit", Value = "unit-dwarven-miner",
  Allowed = "check-no-research",
  Key = "m", Hint = "TRAIN ~!MINER",
  ForUnit = {"unit-dwarven-town-hall"} } )

--DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-miner",
--  Action = "train-unit", Value = "unit-gnomish-worker",
--  Allowed = "check-no-research",
--  Key = "s", Hint = "TRAIN GNOMISH ~!SCAVENGER",
--  ForUnit = {"unit-dwarven-town-hall"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-axefighter",
  Action = "train-unit", Value = "unit-dwarven-axefighter",
  Key = "a", Hint = "TRAIN ~!AXEFIGHTER",
  ForUnit = {"unit-dwarven-barracks"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-scout",
  Action = "train-unit", Value = "unit-dwarven-scout",
  Key = "s", Hint = "TRAIN ~!SCOUT",
  ForUnit = {"unit-dwarven-barracks"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-gnomish-recruit",
  Action = "train-unit", Value = "unit-gnomish-recruit",
  Key = "r", Hint = "TRAIN GNOMISH ~!RECRUIT",
  ForUnit = {"unit-dwarven-barracks"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-goblin-spearman",
  Action = "train-unit", Value = "unit-goblin-spearman",
  Key = "i", Hint = "TRAIN GOBLIN ~!IMPALER",
  ForUnit = {"unit-dwarven-barracks"} } )
