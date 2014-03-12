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
--      anim.lua - The dwarf unit animation definitions.
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

--
-- Dwarven Miner
--

DefineAnimations("animations-dwarven-miner", {
  Still = UnitStill,
  Move = {"unbreakable begin", "frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
    "frame 20", "move 3", "wait 1", "frame 0", "move 2", "unbreakable end", "wait 1",},
--  Move = {"unbreakable begin", "frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1", -- miner after movement speed boosting upgrade
--    "frame 5", "move 3", "wait 1", "frame 10", "move 2", "wait 1",
--    "frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
--    "frame 0", "move 3", "wait 1", "frame 15", "move 3", "wait 1",
--    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
--    "frame 20", "move 3", "wait 1", "frame 0", "move 2", "unbreakable end", "wait 1",},
  Attack = {"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "attack", "sound mace-attack", "wait 5", "frame 45", "wait 3",
    "frame 25", "wait 7", "frame 25", "unbreakable end", "wait 1",},
  Harvest_wood = {"unbreakable begin", "frame 25", "wait 4", "frame 30", "wait 4", "frame 35", "wait 4",
    "frame 40", "sound tree-chopping", "wait 5", "frame 45", "wait 3",
    "frame 25", "wait 9", "frame 25", "unbreakable end", "wait 1",},
  Repair = {"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "sound mace-attack", "wait 5", "frame 45", "wait 3",
    "frame 25", "wait 7", "frame 25", "unbreakable end", "wait 1",},
  Death = {"unbreakable begin", "frame 50", "wait 3", "frame 55", "wait 3", "frame 60", "wait 100",
    "frame 60", "unbreakable end", "wait 1",},
})

--
-- Dwarven Axefighter
--

local AxefighterStill = UnitStill
local AxefighterMove = {"unbreakable begin","frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
    "frame 20", "move 3", "wait 1", "frame 0", "move 2", "unbreakable end", "wait 1",}
local AxefighterDeath = {"unbreakable begin", "frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100",
    "frame 55", "unbreakable end", "wait 1",}

DefineAnimations("animations-dwarven-axefighter", {
  Still = AxefighterStill,
  Move = AxefighterMove,
  Attack = {"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "attack", "sound axe-attack", "wait 5", "frame 0", "wait 10",
    "frame 0", "unbreakable end", "wait 1",},
  Death = AxefighterDeath,
})

DefineAnimations("animations-rugnur", {
  Still = {"frame 300", "wait 4", "random-goto 99 no-rotate", "random-rotate 1", "label no-rotate", "wait 1",},
  Move = {"unbreakable begin","frame 300", "move 3", "wait 2", "frame 305", "move 3", "wait 1",
    "frame 305", "move 3", "wait 2", "frame 310", "move 2", "wait 1",
    "frame 310", "move 3", "wait 1", "frame 300", "move 2", "wait 1",
    "frame 300", "move 3", "wait 2", "frame 315", "move 3", "wait 1",
    "frame 315", "move 3", "wait 2", "frame 320", "move 2", "wait 1",
    "frame 320", "move 3", "wait 1", "frame 300", "move 2", "unbreakable end", "wait 1",},
  Attack = {"unbreakable begin", "frame 325", "wait 3", "frame 330", "wait 3", "frame 335", "wait 3",
    "frame 340", "attack", "sound axe-attack", "wait 5", "frame 300", "wait 10",
    "frame 300", "unbreakable end", "wait 1",},
  Death = {"unbreakable begin", "frame 345", "wait 3", "frame 350", "wait 3", "frame 355", "wait 100",
    "frame 355", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-baglur", {
  Still = {"frame 60", "wait 4", "random-goto 99 no-rotate", "random-rotate 1", "label no-rotate", "wait 1",},
  Move = {"unbreakable begin","frame 60", "move 3", "wait 2", "frame 65", "move 3", "wait 1",
    "frame 65", "move 3", "wait 2", "frame 70", "move 2", "wait 1",
    "frame 70", "move 3", "wait 1", "frame 60", "move 2", "wait 1",
    "frame 60", "move 3", "wait 2", "frame 75", "move 3", "wait 1",
    "frame 75", "move 3", "wait 2", "frame 80", "move 2", "wait 1",
    "frame 80", "move 3", "wait 1", "frame 60", "move 2", "unbreakable end", "wait 1",},
  Attack = {"unbreakable begin", "frame 85", "wait 3", "frame 90", "wait 3", "frame 95", "wait 3",
    "frame 100", "attack", "sound axe-attack", "wait 5", "frame 60", "wait 10",
    "frame 60", "unbreakable end", "wait 1",},
  Death = {"unbreakable begin", "frame 105", "wait 3", "frame 110", "wait 3", "frame 115", "wait 100",
    "frame 115", "unbreakable end", "wait 1",},
})

--
-- Dwarven Scout
--

local ScoutStill = {
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2",
	"if-var v.GraphicsVariation.Value == 3 variation_3",
	"label variation_1", "frame 0", "goto end",
	"label variation_2", "frame 60", "goto end",
	"label variation_3", "frame 120", "goto end",
	"label end", "wait 4", "random-goto 99 no-rotate", "random-rotate 1", "label no-rotate", "wait 1",}
local ScoutDeath = {"unbreakable begin", "frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100",
    "frame 55", "unbreakable end", "wait 1",}

DefineAnimations("animations-dwarven-scout", {
  Still = ScoutStill,
  Move = {"unbreakable begin",
    "if-var v.GraphicsVariation.Value == 1 variation_1",
    "if-var v.GraphicsVariation.Value == 2 variation_2", 
    "if-var v.GraphicsVariation.Value == 3 variation_3", 
    "label variation_1", "frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
    "frame 20", "move 3", "wait 1", "frame 0", "move 2", "goto end",
    "label variation_2", "frame 60", "move 3", "wait 2", "frame 65", "move 3", "wait 1",
    "frame 65", "move 3", "wait 2", "frame 70", "move 2", "wait 1",
    "frame 70", "move 3", "wait 1", "frame 60", "move 2", "wait 1",
    "frame 60", "move 3", "wait 2", "frame 75", "move 3", "wait 1",
    "frame 75", "move 3", "wait 2", "frame 80", "move 2", "wait 1",
    "frame 80", "move 3", "wait 1", "frame 60", "move 2", "goto end",
    "label variation_3", "frame 120", "move 3", "wait 2", "frame 125", "move 3", "wait 1",
    "frame 125", "move 3", "wait 2", "frame 130", "move 2", "wait 1",
    "frame 130", "move 3", "wait 1", "frame 120", "move 2", "wait 1",
    "frame 120", "move 3", "wait 2", "frame 135", "move 3", "wait 1",
    "frame 135", "move 3", "wait 2", "frame 140", "move 2", "wait 1",
    "frame 140", "move 3", "wait 1", "frame 120", "move 2", "goto end",
    "label end", "unbreakable end", "wait 1",},
  Attack = {"unbreakable begin", 
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2", 
	"if-var v.GraphicsVariation.Value == 3 variation_3", 
	"label variation_1",
	"frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
	"frame 40", "attack", "sound throwing-axe", "wait 12",
	"frame 0", "wait 43", "frame 0", "goto end",
	"label variation_2",
	"frame 85", "wait 3", "frame 90", "wait 3", "frame 95", "wait 3",
	"frame 100", "attack", "sound throwing-axe", "wait 12",
	"frame 60", "wait 43", "frame 60", "goto end",
	"label variation_3",
	"frame 145", "wait 3", "frame 150", "wait 3", "frame 155", "wait 3",
	"frame 160", "attack", "sound throwing-axe", "wait 12",
	"frame 120", "wait 43", "frame 120", "goto end",
	"label end", "unbreakable end", "wait 1",},
  Death = ScoutDeath,
})

--
-- Dwarven Ballista
--

DefineAnimations("animations-dwarven-ballista", {
  Still = {"frame 0", "wait 4", "frame 0", "wait 1",},
  Move = {"unbreakable begin","frame 0", "wait 1", "frame 5", "move 2", "wait 2",
    "frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
    "frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
    "frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
    "frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
    "frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
    "frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
    "frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
    "frame 0", "move 2", "unbreakable end", "wait 1",},	
  Attack = {"unbreakable begin",
    "frame 10", "wait 25",
    "frame 15", "attack", "sound ballista-attack", "wait 5", 
    "frame 20", "wait 4",
    "frame 15", "wait 6",
    "frame 20", "wait 8",
    "frame 15", "wait 10",
    "frame 15", "wait 92",
    "frame 0", "wait 49",
    "frame 0", "unbreakable end", "wait 1",},
})
