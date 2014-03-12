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
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-scout", "unit-dwarven-miner",
    "unit-dwarven-ballista",
    "unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-caravan",
    "unit-goblin-spearman",
    "unit-hero-rugnur", "unit-hero-rugnur-older", "unit-hero-baglur",
    "unit-critter",
    "dwarf-group"} } )

DefineButton( { Pos = 2, Level = 0, Icon = "icon-dwarven-shield-1",
  Action = "stop",
  Key = "s", Hint = "~!Stop",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-scout", "unit-dwarven-miner",
    "unit-dwarven-ballista",
    "unit-gnomish-worker", "unit-gnomish-recruit", "unit-gnomish-caravan",
    "unit-goblin-spearman",
    "unit-hero-rugnur", "unit-hero-rugnur-older", "unit-hero-baglur",
    "unit-critter",
    "dwarf-group"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-axe-1",
  Action = "attack",
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-miner",
    "unit-dwarven-ballista",
    "unit-gnomish-worker", "unit-gnomish-recruit",
    "unit-goblin-spearman",
    "unit-hero-rugnur", "unit-hero-rugnur-older", "unit-hero-baglur",
    "dwarf-group"} } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-throwing-axe-1",
  Action = "attack",
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-scout"
  } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-throwing-axe-2",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-throwing-axe-1"},
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-scout"
  } } )

DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-throwing-axe-3",
  Action = "attack",
  Allowed = "check-upgrade", AllowArg = {"upgrade-dwarven-throwing-axe-2"},
  Key = "a", Hint = "~!Attack",
  ForUnit = {
    "unit-dwarven-scout"
  } } )

DefineButton( { Pos = 4, Level = 0, Icon = "icon-dwarven-patrol-land",
  Action = "patrol",
  Key = "p", Hint = "~!Patrol",
  ForUnit = {
	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-scout",
	"unit-dwarven-ballista",
	"unit-gnomish-recruit", 
	"unit-goblin-spearman",
	"unit-hero-rugnur", "unit-hero-rugnur-older", "unit-hero-baglur",
	"dwarf-group"
  } } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-dwarven-stand-ground",
  Action = "stand-ground",
  Key = "t", Hint = "S~!tand Ground",
  ForUnit = {
  	"unit-dwarven-axefighter", "unit-dwarven-steelclad", "unit-dwarven-scout",
	"unit-dwarven-ballista",
	"unit-gnomish-recruit", 
	"unit-goblin-spearman",
	"unit-hero-rugnur", "unit-hero-rugnur-older", "unit-hero-baglur",
	"dwarf-group"} } )

-- miner specific actions ---------------------------------------------------

DefineButton( { Pos = 4, Level = 0, Icon = "icon-repair",
  Action = "repair",
  Key = "r", Hint = "~!Repair",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 5, Level = 0, Icon = "icon-harvest",
  Action = "harvest",
  Key = "h", Hint = "~!Harvest Lumber/Mine Gold",
  ForUnit = {"unit-dwarven-miner"} } )

DefineButton( { Pos = 6, Level = 0, Icon = "icon-dwarven-return-goods",
  Action = "return-goods",
  Key = "g", Hint = "Return with ~!Goods",
  ForUnit = {"unit-dwarven-miner", "unit-gnomish-worker"} } )

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

DefineButton( { Pos = 9, Level = 1, Icon = "icon-cancel",
  Action = "button", Value = 0,
  Key = "\27", Hint = "~<ESC~> Cancel",
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

--DefineButton( { Pos = 3, Level = 0, Icon = "icon-dwarven-ballista",
--  Action = "train-unit", Value = "unit-dwarven-ballista",
--  Key = "b", Hint = "Build ~!Ballista",
--  ForUnit = {"unit-dwarven-barracks"} } )

DefineButton( { Pos = 7, Level = 0, Icon = "icon-rugnur",
  Action = "train-unit", Value = "unit-hero-rugnur",
  Allowed = "check-single-research",
  Key = "r", Hint = "Hire ~!Rugnur",
  ForUnit = {"unit-dwarven-barracks"} } )

DefineButton( { Pos = 7, Level = 0, Icon = "icon-baglur",
  Action = "train-unit", Value = "unit-hero-baglur",
  Allowed = "check-single-research",
  Key = "g", Hint = "Hire ~!Baglur",
  ForUnit = {"unit-dwarven-barracks"} } )

--DefineButton( { Pos = 7, Level = 0, Icon = "icon-dwarven-steelclad",
--  Action = "train-unit", Value = "unit-dwarven-steelclad",
--  Allowed = "check-single-research",
--  Key = "u", Hint = "Hire S~!urghan Mercenaries",
--  ForUnit = {"unit-dwarven-barracks"} } )

-- Researches ---------------------------------------------------------

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-throwing-axe-2",
  Action = "research", Value = "upgrade-dwarven-throwing-axe-1",
  Allowed = "check-single-research",
  Key = "r", Hint = "~!Research Sharp Throwing Axes",
  ForUnit = {"unit-dwarven-lumber-mill"} } )

DefineButton( { Pos = 1, Level = 0, Icon = "icon-dwarven-throwing-axe-3",
  Action = "research", Value = "upgrade-dwarven-throwing-axe-2",
  Allowed = "check-single-research",
  Key = "r", Hint = "~!Research Bearded Throwing Axes",
  ForUnit = {"unit-dwarven-lumber-mill"} } )

