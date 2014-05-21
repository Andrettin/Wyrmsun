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

local AxefighterStill = { "label begin",
	"if-var v.GraphicsVariation.Value == 0 set_variation",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2",
	"if-var v.GraphicsVariation.Value == 3 variation_3",
	"if-var v.GraphicsVariation.Value == 4 variation_4",
	"if-var v.GraphicsVariation.Value == 5 variation_5",
	"if-var v.GraphicsVariation.Value == 6 variation_6",
	"label set_variation", "random-goto 16 variation_1", "random-goto 16 variation_2", "random-goto 16 variation_3", "random-goto 16 variation_4", "random-goto 16 variation_5", "random-goto 16 variation_6", "goto begin",
	"label variation_1", "set-var GraphicsVariation.Value = 1", "frame 0", "goto end",
	"label variation_2", "set-var GraphicsVariation.Value = 2", "frame 60", "goto end",
	"label variation_3", "set-var GraphicsVariation.Value = 3", "frame 120", "goto end",
	"label variation_4", "set-var GraphicsVariation.Value = 4", "frame 180", "goto end",
	"label variation_5", "set-var GraphicsVariation.Value = 5", "frame 240", "goto end",
	"label variation_6", "set-var GraphicsVariation.Value = 6", "frame 300", "goto end",
	"label end", "wait 4", "random-goto 99 no-rotate", "random-rotate 1", "label no-rotate", "wait 1",}
local AxefighterMove = {"unbreakable begin",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2", 
	"if-var v.GraphicsVariation.Value == 3 variation_3", 
	"if-var v.GraphicsVariation.Value == 4 variation_4", 
	"if-var v.GraphicsVariation.Value == 5 variation_5", 
	"if-var v.GraphicsVariation.Value == 6 variation_6", 
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
	"label variation_4", "frame 180", "move 3", "wait 2", "frame 185", "move 3", "wait 1",
	"frame 185", "move 3", "wait 2", "frame 190", "move 2", "wait 1",
	"frame 190", "move 3", "wait 1", "frame 180", "move 2", "wait 1",
	"frame 180", "move 3", "wait 2", "frame 195", "move 3", "wait 1",
	"frame 195", "move 3", "wait 2", "frame 200", "move 2", "wait 1",
	"frame 200", "move 3", "wait 1", "frame 180", "move 2", "goto end",
	"label variation_5", "frame 240", "move 3", "wait 2", "frame 245", "move 3", "wait 1",
	"frame 245", "move 3", "wait 2", "frame 250", "move 2", "wait 1",
	"frame 250", "move 3", "wait 1", "frame 240", "move 2", "wait 1",
	"frame 240", "move 3", "wait 2", "frame 255", "move 3", "wait 1",
	"frame 255", "move 3", "wait 2", "frame 260", "move 2", "wait 1",
	"frame 260", "move 3", "wait 1", "frame 240", "move 2", "goto end",
	"label variation_6", "frame 300", "move 3", "wait 2", "frame 305", "move 3", "wait 1",
	"frame 305", "move 3", "wait 2", "frame 310", "move 2", "wait 1",
	"frame 310", "move 3", "wait 1", "frame 300", "move 2", "wait 1",
	"frame 300", "move 3", "wait 2", "frame 315", "move 3", "wait 1",
	"frame 315", "move 3", "wait 2", "frame 320", "move 2", "wait 1",
	"frame 320", "move 3", "wait 1", "frame 300", "move 2", "goto end",
	"label end", "unbreakable end", "wait 1",}
local AxefighterDeath = {"unbreakable begin",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2",
	"if-var v.GraphicsVariation.Value == 3 variation_3",
	"if-var v.GraphicsVariation.Value == 4 variation_4",
	"if-var v.GraphicsVariation.Value == 5 variation_5",
	"if-var v.GraphicsVariation.Value == 6 variation_6",
	"label variation_1", "frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100", "frame 55", "goto end",
	"label variation_2", "frame 105", "wait 3", "frame 110", "wait 3", "frame 115", "wait 100", "frame 115", "goto end",
	"label variation_3", "frame 165", "wait 3", "frame 170", "wait 3", "frame 175", "wait 100", "frame 175", "goto end",
	"label variation_4", "frame 225", "wait 3", "frame 230", "wait 3", "frame 235", "wait 100", "frame 235", "goto end",
	"label variation_5", "frame 285", "wait 3", "frame 290", "wait 3", "frame 295", "wait 100", "frame 295", "goto end",
	"label variation_6", "frame 345", "wait 3", "frame 350", "wait 3", "frame 355", "wait 100", "frame 355", "goto end",
	"label end", "unbreakable end", "wait 1",}

DefineAnimations("animations-dwarven-axefighter", {
  Still = AxefighterStill,
  Move = AxefighterMove,
  Attack = {"unbreakable begin",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2", 
	"if-var v.GraphicsVariation.Value == 3 variation_3", 
	"if-var v.GraphicsVariation.Value == 4 variation_4", 
	"if-var v.GraphicsVariation.Value == 5 variation_5", 
	"if-var v.GraphicsVariation.Value == 6 variation_6", 
  	"label variation_1", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
  	"frame 40", "attack", "sound axe-attack", "wait 5", "frame 0", "wait 10", "frame 0", "goto end",
  	"label variation_2", "frame 85", "wait 3", "frame 90", "wait 3", "frame 95", "wait 3",
	"frame 100", "attack", "sound axe-attack", "wait 5", "frame 60", "wait 10", "frame 60", "goto end",
  	"label variation_3", "frame 145", "wait 3", "frame 150", "wait 3", "frame 155", "wait 3",
  	"frame 160", "attack", "sound axe-attack", "wait 5", "frame 120", "wait 10", "frame 120", "goto end",
  	"label variation_4", "frame 205", "wait 3", "frame 210", "wait 3", "frame 215", "wait 3",
  	"frame 220", "attack", "sound axe-attack", "wait 5", "frame 180", "wait 10", "frame 180", "goto end",
  	"label variation_5", "frame 265", "wait 3", "frame 270", "wait 3", "frame 275", "wait 3",
  	"frame 280", "attack", "sound axe-attack", "wait 5", "frame 240", "wait 10", "frame 240", "goto end",
  	"label variation_6", "frame 325", "wait 3", "frame 330", "wait 3", "frame 335", "wait 3",
	"frame 340", "attack", "sound axe-attack", "wait 5", "frame 300", "wait 10", "frame 300", "goto end",
	"label end", "unbreakable end", "wait 1",},
  Upgrade = { "set-var LevelUp.Value -= 1", "wait 1",},
  Death = AxefighterDeath,
  SpellCast = {"unbreakable begin",
	"attack",
	"unbreakable end",
	"wait 1",}
})

--
-- Dwarven Steelclad
--

local SteelcladStill = { "label begin",
	"if-var v.GraphicsVariation.Value == 0 set_variation",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2",
	"if-var v.GraphicsVariation.Value == 3 variation_3",
	"if-var v.GraphicsVariation.Value == 4 variation_4",
	"if-var v.GraphicsVariation.Value == 5 variation_5",
	"if-var v.GraphicsVariation.Value == 6 variation_6",
	"label set_variation", "random-goto 16 variation_1", "random-goto 16 variation_2", "random-goto 16 variation_3", "random-goto 16 variation_4", "random-goto 16 variation_5", "random-goto 16 variation_6", "goto begin",
	"label variation_1", "set-var GraphicsVariation.Value = 1", "if-var v.PiercingDamage.Value >= 7 variation_1_great_axe", "frame 0", "goto end",
	"label variation_1_great_axe", "frame 60", "goto end",
	"label variation_2", "set-var GraphicsVariation.Value = 2", "if-var v.PiercingDamage.Value >= 7 variation_2_great_axe", "frame 120", "goto end",
	"label variation_2_great_axe", "frame 180", "goto end",
	"label variation_3", "set-var GraphicsVariation.Value = 3", "if-var v.PiercingDamage.Value >= 7 variation_3_great_axe", "frame 240", "goto end",
	"label variation_3_great_axe", "frame 300", "goto end",
	"label variation_4", "set-var GraphicsVariation.Value = 4", "if-var v.PiercingDamage.Value >= 7 variation_4_great_axe", "frame 360", "goto end",
	"label variation_4_great_axe", "frame 420", "goto end",
	"label variation_5", "set-var GraphicsVariation.Value = 5", "if-var v.PiercingDamage.Value >= 7 variation_5_great_axe", "frame 480", "goto end",
	"label variation_5_great_axe", "frame 540", "goto end",
	"label variation_6", "set-var GraphicsVariation.Value = 6", "if-var v.PiercingDamage.Value >= 7 variation_6_great_axe", "frame 600", "goto end",
	"label variation_6_great_axe", "frame 660", "goto end",
	"label end", "wait 4", "random-goto 99 no-rotate", "random-rotate 1", "label no-rotate", "wait 1",}
local SteelcladMove = {"unbreakable begin",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2", 
	"if-var v.GraphicsVariation.Value == 3 variation_3", 
	"if-var v.GraphicsVariation.Value == 4 variation_4", 
	"if-var v.GraphicsVariation.Value == 5 variation_5", 
	"if-var v.GraphicsVariation.Value == 6 variation_6", 
	"label variation_1", "if-var v.PiercingDamage.Value >= 7 variation_1_great_axe", "frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
	"frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
	"frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
	"frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
	"frame 20", "move 3", "wait 1", "frame 0", "move 2", "goto end",
	"label variation_1_great_axe", "frame 60", "move 3", "wait 2", "frame 65", "move 3", "wait 1",
	"frame 65", "move 3", "wait 2", "frame 70", "move 2", "wait 1",
	"frame 70", "move 3", "wait 1", "frame 60", "move 2", "wait 1",
	"frame 60", "move 3", "wait 2", "frame 75", "move 3", "wait 1",
	"frame 75", "move 3", "wait 2", "frame 80", "move 2", "wait 1",
	"frame 80", "move 3", "wait 1", "frame 60", "move 2", "goto end",
	"label variation_2", "if-var v.PiercingDamage.Value >= 7 variation_2_great_axe", "frame 120", "move 3", "wait 2", "frame 125", "move 3", "wait 1",
	"frame 125", "move 3", "wait 2", "frame 130", "move 2", "wait 1",
	"frame 130", "move 3", "wait 1", "frame 120", "move 2", "wait 1",
	"frame 120", "move 3", "wait 2", "frame 135", "move 3", "wait 1",
	"frame 135", "move 3", "wait 2", "frame 140", "move 2", "wait 1",
	"frame 140", "move 3", "wait 1", "frame 120", "move 2", "goto end",
	"label variation_2_great_axe", "frame 180", "move 3", "wait 2", "frame 185", "move 3", "wait 1",
	"frame 185", "move 3", "wait 2", "frame 190", "move 2", "wait 1",
	"frame 190", "move 3", "wait 1", "frame 180", "move 2", "wait 1",
	"frame 180", "move 3", "wait 2", "frame 195", "move 3", "wait 1",
	"frame 195", "move 3", "wait 2", "frame 200", "move 2", "wait 1",
	"frame 200", "move 3", "wait 1", "frame 180", "move 2", "goto end",
	"label variation_3", "if-var v.PiercingDamage.Value >= 7 variation_3_great_axe", "frame 240", "move 3", "wait 2", "frame 245", "move 3", "wait 1",
	"frame 245", "move 3", "wait 2", "frame 250", "move 2", "wait 1",
	"frame 250", "move 3", "wait 1", "frame 240", "move 2", "wait 1",
	"frame 240", "move 3", "wait 2", "frame 255", "move 3", "wait 1",
	"frame 255", "move 3", "wait 2", "frame 260", "move 2", "wait 1",
	"frame 260", "move 3", "wait 1", "frame 240", "move 2", "goto end",
	"label variation_3_great_axe", "frame 300", "move 3", "wait 2", "frame 305", "move 3", "wait 1",
	"frame 305", "move 3", "wait 2", "frame 310", "move 2", "wait 1",
	"frame 310", "move 3", "wait 1", "frame 300", "move 2", "wait 1",
	"frame 300", "move 3", "wait 2", "frame 315", "move 3", "wait 1",
	"frame 315", "move 3", "wait 2", "frame 320", "move 2", "wait 1",
	"frame 320", "move 3", "wait 1", "frame 300", "move 2", "goto end",
	"label variation_4", "if-var v.PiercingDamage.Value >= 7 variation_4_great_axe", "frame 360", "move 3", "wait 2", "frame 365", "move 3", "wait 1",
	"frame 365", "move 3", "wait 2", "frame 370", "move 2", "wait 1",
	"frame 370", "move 3", "wait 1", "frame 360", "move 2", "wait 1",
	"frame 360", "move 3", "wait 2", "frame 375", "move 3", "wait 1",
	"frame 375", "move 3", "wait 2", "frame 380", "move 2", "wait 1",
	"frame 380", "move 3", "wait 1", "frame 360", "move 2", "goto end",
	"label variation_4_great_axe", "frame 420", "move 3", "wait 2", "frame 425", "move 3", "wait 1",
	"frame 425", "move 3", "wait 2", "frame 430", "move 2", "wait 1",
	"frame 430", "move 3", "wait 1", "frame 420", "move 2", "wait 1",
	"frame 420", "move 3", "wait 2", "frame 435", "move 3", "wait 1",
	"frame 435", "move 3", "wait 2", "frame 440", "move 2", "wait 1",
	"frame 440", "move 3", "wait 1", "frame 420", "move 2", "goto end",
	"label variation_5", "if-var v.PiercingDamage.Value >= 7 variation_5_great_axe", "frame 480", "move 3", "wait 2", "frame 485", "move 3", "wait 1",
	"frame 485", "move 3", "wait 2", "frame 490", "move 2", "wait 1",
	"frame 490", "move 3", "wait 1", "frame 480", "move 2", "wait 1",
	"frame 480", "move 3", "wait 2", "frame 495", "move 3", "wait 1",
	"frame 495", "move 3", "wait 2", "frame 500", "move 2", "wait 1",
	"frame 500", "move 3", "wait 1", "frame 480", "move 2", "goto end",
	"label variation_5_great_axe", "frame 540", "move 3", "wait 2", "frame 545", "move 3", "wait 1",
	"frame 545", "move 3", "wait 2", "frame 550", "move 2", "wait 1",
	"frame 550", "move 3", "wait 1", "frame 540", "move 2", "wait 1",
	"frame 540", "move 3", "wait 2", "frame 555", "move 3", "wait 1",
	"frame 555", "move 3", "wait 2", "frame 560", "move 2", "wait 1",
	"frame 560", "move 3", "wait 1", "frame 540", "move 2", "goto end",
	"label variation_6", "if-var v.PiercingDamage.Value >= 7 variation_6_great_axe", "frame 600", "move 3", "wait 2", "frame 605", "move 3", "wait 1",
	"frame 605", "move 3", "wait 2", "frame 610", "move 2", "wait 1",
	"frame 610", "move 3", "wait 1", "frame 600", "move 2", "wait 1",
	"frame 600", "move 3", "wait 2", "frame 615", "move 3", "wait 1",
	"frame 615", "move 3", "wait 2", "frame 620", "move 2", "wait 1",
	"frame 620", "move 3", "wait 1", "frame 600", "move 2", "goto end",
	"label variation_6_great_axe", "frame 660", "move 3", "wait 2", "frame 665", "move 3", "wait 1",
	"frame 665", "move 3", "wait 2", "frame 670", "move 2", "wait 1",
	"frame 670", "move 3", "wait 1", "frame 660", "move 2", "wait 1",
	"frame 660", "move 3", "wait 2", "frame 675", "move 3", "wait 1",
	"frame 675", "move 3", "wait 2", "frame 680", "move 2", "wait 1",
	"frame 680", "move 3", "wait 1", "frame 660", "move 2", "goto end",
	"label end", "unbreakable end", "wait 1",}
local SteelcladDeath = {"unbreakable begin",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2",
	"if-var v.GraphicsVariation.Value == 3 variation_3",
	"if-var v.GraphicsVariation.Value == 4 variation_4",
	"if-var v.GraphicsVariation.Value == 5 variation_5",
	"if-var v.GraphicsVariation.Value == 6 variation_6",
	"label variation_1", "if-var v.PiercingDamage.Value >= 7 variation_1_great_axe",
	"frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100", "frame 55", "goto end",
	"label variation_1_great_axe", "frame 105", "wait 3", "frame 110", "wait 3", "frame 115", "wait 100", "frame 115", "goto end",
	"label variation_2", "if-var v.PiercingDamage.Value >= 7 variation_2_great_axe",
	"frame 165", "wait 3", "frame 170", "wait 3", "frame 175", "wait 100", "frame 175", "goto end",
	"label variation_2_great_axe", "frame 225", "wait 3", "frame 230", "wait 3", "frame 235", "wait 100", "frame 235", "goto end",
	"label variation_3", "if-var v.PiercingDamage.Value >= 7 variation_3_great_axe",
	"frame 285", "wait 3", "frame 290", "wait 3", "frame 295", "wait 100", "frame 295", "goto end",
	"label variation_3_great_axe", "frame 345", "wait 3", "frame 350", "wait 3", "frame 355", "wait 100", "frame 355", "goto end",
	"label variation_4", "if-var v.PiercingDamage.Value >= 7 variation_4_great_axe",
	"frame 405", "wait 3", "frame 410", "wait 3", "frame 415", "wait 100", "frame 415", "goto end",
	"label variation_4_great_axe", "frame 465", "wait 3", "frame 470", "wait 3", "frame 475", "wait 100", "frame 475", "goto end",
	"label variation_5", "if-var v.PiercingDamage.Value >= 7 variation_5_great_axe",
	"frame 525", "wait 3", "frame 530", "wait 3", "frame 535", "wait 100", "frame 535", "goto end",
	"label variation_5_great_axe", "frame 585", "wait 3", "frame 590", "wait 3", "frame 595", "wait 100", "frame 595", "goto end",
	"label variation_6", "if-var v.PiercingDamage.Value >= 7 variation_6_great_axe",
	"frame 645", "wait 3", "frame 650", "wait 3", "frame 655", "wait 100", "frame 655", "goto end",
	"label variation_6_great_axe", "frame 705", "wait 3", "frame 710", "wait 3", "frame 715", "wait 100", "frame 715", "goto end",
	"label end", "unbreakable end", "wait 1",}

DefineAnimations("animations-dwarven-steelclad", {
  Still = SteelcladStill,
  Move = SteelcladMove,
  Attack = {"unbreakable begin",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2", 
	"if-var v.GraphicsVariation.Value == 3 variation_3", 
	"if-var v.GraphicsVariation.Value == 4 variation_4", 
	"if-var v.GraphicsVariation.Value == 5 variation_5", 
	"if-var v.GraphicsVariation.Value == 6 variation_6", 
  	"label variation_1", "if-var v.PiercingDamage.Value >= 7 variation_1_great_axe", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
  	"frame 40", "attack", "sound axe-attack", "wait 5", "frame 0", "wait 10", "frame 0", "goto end",
  	"label variation_1_great_axe", "frame 85", "wait 3", "frame 90", "wait 3", "frame 95", "wait 3",
  	"frame 100", "attack", "sound axe-attack", "wait 5", "frame 60", "wait 10", "frame 60", "goto end",
  	"label variation_2", "if-var v.PiercingDamage.Value >= 7 variation_2_great_axe", "frame 145", "wait 3", "frame 150", "wait 3", "frame 155", "wait 3",
  	"frame 160", "attack", "sound axe-attack", "wait 5", "frame 120", "wait 10", "frame 120", "goto end",
  	"label variation_2_great_axe", "frame 205", "wait 3", "frame 210", "wait 3", "frame 215", "wait 3",
  	"frame 220", "attack", "sound axe-attack", "wait 5", "frame 180", "wait 10", "frame 180", "goto end",
  	"label variation_3", "if-var v.PiercingDamage.Value >= 7 variation_3_great_axe", "frame 265", "wait 3", "frame 270", "wait 3", "frame 275", "wait 3",
  	"frame 280", "attack", "sound axe-attack", "wait 5", "frame 240", "wait 10", "frame 240", "goto end",
  	"label variation_3_great_axe", "frame 325", "wait 3", "frame 330", "wait 3", "frame 335", "wait 3",
  	"frame 340", "attack", "sound axe-attack", "wait 5", "frame 300", "wait 10", "frame 300", "goto end",
  	"label variation_4", "if-var v.PiercingDamage.Value >= 7 variation_4_great_axe", "frame 385", "wait 3", "frame 390", "wait 3", "frame 395", "wait 3",
  	"frame 400", "attack", "sound axe-attack", "wait 5", "frame 360", "wait 10", "frame 360", "goto end",
  	"label variation_4_great_axe", "frame 445", "wait 3", "frame 450", "wait 3", "frame 455", "wait 3",
  	"frame 460", "attack", "sound axe-attack", "wait 5", "frame 420", "wait 10", "frame 420", "goto end",
  	"label variation_5", "if-var v.PiercingDamage.Value >= 7 variation_5_great_axe", "frame 505", "wait 3", "frame 510", "wait 3", "frame 515", "wait 3",
  	"frame 520", "attack", "sound axe-attack", "wait 5", "frame 480", "wait 10", "frame 480", "goto end",
  	"label variation_5_great_axe", "frame 565", "wait 3", "frame 570", "wait 3", "frame 575", "wait 3",
  	"frame 580", "attack", "sound axe-attack", "wait 5", "frame 540", "wait 10", "frame 540", "goto end",
  	"label variation_6", "if-var v.PiercingDamage.Value >= 7 variation_6_great_axe", "frame 625", "wait 3", "frame 630", "wait 3", "frame 635", "wait 3",
  	"frame 640", "attack", "sound axe-attack", "wait 5", "frame 600", "wait 10", "frame 600", "goto end",
  	"label variation_6_great_axe", "frame 685", "wait 3", "frame 690", "wait 3", "frame 695", "wait 3",
  	"frame 700", "attack", "sound axe-attack", "wait 5", "frame 660", "wait 10", "frame 660", "goto end",
	"label end", "unbreakable end", "wait 1",},
  Death = SteelcladDeath,
  SpellCast = {"unbreakable begin",
	"attack",
	"unbreakable end",
	"wait 1",}
})

--
-- Dwarven Scout
--

local ScoutStill = { "label begin",
	"if-var v.GraphicsVariation.Value == 0 set_variation",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2",
	"if-var v.GraphicsVariation.Value == 3 variation_3",
	"label set_variation", "random-goto 33 variation_1", "random-goto 33 variation_2", "random-goto 33 variation_3", "goto begin",
	"label variation_1", "set-var GraphicsVariation.Value = 1", "frame 0", "goto end",
	"label variation_2", "set-var GraphicsVariation.Value = 2", "frame 60", "goto end",
	"label variation_3", "set-var GraphicsVariation.Value = 3", "frame 120", "goto end",
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
  SpellCast = {"unbreakable begin",
	"attack",
	"unbreakable end",
	"wait 1",}
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

--
-- Gryphon Rider
--

local GryphonRiderStill = {"frame 0", "wait 6", "frame 5", "wait 6", "frame 10", "wait 6",
    "frame 15", "wait 6",}
local GryphonRiderMove = {"unbreakable begin", "frame 0", "wait 1", "frame 0", "move 3", "wait 1",
    "frame 0", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
    "frame 5", "move 2", "wait 1", "frame 5", "move 3", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 10", "move 3", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 15", "move 3", "wait 1",
    "frame 15", "move 3", "wait 1", "frame 0", "move 3", "unbreakable end", "wait 1",}
local GryphonRiderDeath = {"unbreakable begin", "frame 35", "wait 5", "frame 40", "wait 5", "frame 45", "wait 5",
    "frame 50", "wait 5", "frame 55", "wait 5", "frame 60", "wait 5",
    "frame 60", "unbreakable end", "wait 1",}

DefineAnimations("animations-dwarven-gryphon-rider", {
  Still = GryphonRiderStill,
  Move = GryphonRiderMove,
  Attack = {"unbreakable begin", "frame 0", "wait 6", "frame 5", "wait 6",
    "frame 10", "wait 6", "frame 15", "wait 6", "frame 15", "wait 1",
    "frame 20", "wait 6", "frame 25", "wait 6",
    "frame 30", "attack", "sound throwing-axe", "wait 8",
    "frame 0", "wait 6", "frame 5", "wait 6", "frame 10", "wait 6",
    "frame 15", "wait 6",
    "frame 0", "unbreakable end", "wait 1", },
  Death = GryphonRiderDeath,
})

--
-- Dwarven Guard Tower
--

DefineAnimations("animations-dwarven-guard-tower", {
  Still = {"frame 0", "wait 4", "frame 0", "wait 1",},
  Attack = {"unbreakable begin", "frame 0", "attack", "wait 59",
    "frame 0", "unbreakable end", "wait 1",},
})
