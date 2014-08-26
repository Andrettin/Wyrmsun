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
--      anim.lua - The unit animation definitions.
--
--      (c) Copyright 2000-2011 by Josh Cogliati, Lutz Sammer,
--                                 Jimmy Salmon and Pali Rohár
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

UnitStill = {"frame 0", "wait 4", "random-goto 99 no-rotate", "random-rotate 1", "label no-rotate", "wait 1",}
BuildingStill = {"frame 0", "wait 4", "frame 0", "wait 1",}

Load("scripts/dwarf/anim.lua")
Load("scripts/gnome/anim.lua")
Load("scripts/goblin/anim.lua")


DefineAnimations("animations-critter", {
  Still = {"frame 0", "wait 4", "frame 0", "wait 1",},
  Move = {"unbreakable begin", "frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 3",
    "frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 3",
    "frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 3",
    "frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 3",
    "frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 3",
    "frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 3",
    "frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 3",
    "frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 3",
    "frame 0", "unbreakable end", "wait 1",},
  Attack = {"unbreakable begin", "frame 0", "attack", "unbreakable end", "wait 1",},
  Death = {"unbreakable begin", "frame 5", "wait 200", "frame 5", "unbreakable end", "wait 1",},
})

--
-- Rat
--

local RatMove = {"unbreakable begin",
	"frame 0","move 1", "wait 2", "frame 5", "move 1", "wait 1",
	"frame 5", "move 1", "wait 2", "frame 10", "move 1", "wait 1",
	"frame 10", "move 1", "wait 1", "frame 0", "move 1", "wait 1",
	"frame 0", "move 1", "wait 2", "frame 15", "move 1", "wait 1",
	"frame 15", "move 1", "wait 2", "frame 20", "move 1", "wait 1",
	"frame 20", "move 1", "wait 1", "frame 0",
	"frame 0","move 1", "wait 2", "frame 5", "move 1", "wait 1",
	"frame 5", "move 1", "wait 2", "frame 10", "move 1", "wait 1",
	"frame 10", "move 1", "wait 1", "frame 0", "move 1", "wait 1",
	"frame 0", "move 1", "wait 2", "frame 15", "move 1", "wait 1",
	"frame 15", "move 1", "wait 2", "frame 20", "move 1", "wait 1",
	"frame 20", "move 1", "wait 1", "frame 0",
	"frame 0", "move 1", "wait 2", "frame 5", "move 1", "wait 1",
	"frame 5", "move 1", "wait 2", "frame 10", "move 1", "wait 1",
	"frame 10", "move 1", "wait 1", "frame 0", "wait 1",
	"frame 0", "move 1", "wait 2", "frame 15", "move 1", "wait 1",
	"frame 15", "move 1", "wait 2", "frame 20", "move 1", "wait 1",
	"frame 20", "move 1", "wait 1", "frame 0",
	"unbreakable end", "wait 1",}
local RatDeath = {"unbreakable begin",
	"frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100", "frame 55",
	"unbreakable end", "wait 1",}

DefineAnimations("animations-rat", {
  Still = UnitStill,
  Move = RatMove,
  Attack = {"unbreakable begin",
	"frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
	"frame 40", "attack", "sound axe-attack", "wait 5", "frame 0", "wait 10", "frame 0",
	"unbreakable end", "wait 1",},
  Death = RatDeath,
})

--
-- Gryphon
--

local GryphonStill = {
	"frame 0", "wait 6", "frame 5", "wait 6", "frame 10", "wait 6", "frame 15",
	"wait 6",
}
local GryphonMove = {"unbreakable begin",
	"frame 0", "wait 1", "frame 0", "move 3", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
	"frame 5", "move 2", "wait 1", "frame 5", "move 3", "wait 1",
	"frame 10", "move 3", "wait 1", "frame 10", "move 3", "wait 1",
	"frame 10", "move 3", "wait 1", "frame 15", "move 3", "wait 1",
	"frame 15", "move 3", "wait 1", "frame 0", "move 3",
	"unbreakable end", "wait 1",}
local GryphonDeath = {"unbreakable begin",
	"frame 35", "wait 5", "frame 40", "wait 5", "frame 45", "wait 5",
	"frame 50", "wait 5", "frame 55", "wait 5", "frame 60", "wait 5",
	"frame 60",
	"unbreakable end", "wait 1",}

DefineAnimations("animations-gryphon", {
  Still = GryphonStill,
  Move = GryphonMove,
  Attack = {"unbreakable begin",
	"frame 0", "wait 6", "frame 5", "wait 6",
	"frame 10", "wait 6", "frame 15", "wait 6", "frame 15", "wait 1",
	"frame 20", "wait 6", "frame 25", "wait 6",
	"frame 30", "attack", "sound claw-attack", "wait 8",
	"frame 0",
	"unbreakable end", "wait 1", },
  Death = GryphonDeath,
})

DefineAnimations("animations-wyrm", {
   Still = {"frame 0", "wait 4", "random-goto 1 idle_animation", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate",
	"label idle_animation","frame 0", "wait 6", "frame 95", "wait 6", "frame 100", "wait 6", "frame 95", "wait 6", "frame 0", "wait 6",
	"label no-rotate", "wait 1",},
   Move = {"unbreakable begin",
	"frame 0", "move 4", "wait 3",
	"frame 5", "move 4", "wait 3",
	"frame 10", "move 4", "wait 3",
	"frame 15", "move 4", "wait 3",
	"frame 20", "move 4", "wait 3",
	"frame 25", "move 4", "wait 3",
	"frame 30", "move 4", "wait 3",
	"frame 35", "move 4", "wait 2", "unbreakable end", "wait 1",},
  Attack = {"unbreakable begin",
  	"frame 40", "wait 3", "frame 45", "wait 3", "frame 50", "wait 3",
  	"frame 55", "attack", "sound claw-attack", "wait 3", "frame 60", "wait 3", "frame 65", "wait 5", "frame 65", "wait 29",
	"unbreakable end", "wait 1",},
   Death = {"unbreakable begin", "frame 5", "wait 50", "frame 10",
	"wait 50", "frame 10", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-building", {
  Still = BuildingStill,
  Research = BuildingStill,
  Train = BuildingStill,
  Upgrade = {"frame 1", "wait 4", "frame 1", "wait 1",},
})

DefineAnimations("animations-farm", {
  Still = BuildingStill,
  Research = BuildingStill,
  Train = BuildingStill,
  Death = {"unbreakable begin", "random-goto 50 end", "random-goto 50 drop_cheese", "goto drop_carrots",
  "label drop_cheese", "spawn-unit unit-cheese 0 0 5 15", "goto end",
  "label drop_carrots", "spawn-unit unit-carrots 0 0 5 15", "goto end",
  "label end", "unbreakable end", "wait 1",}
})

DefineAnimations("animations-gold-mine", {
  Still = {"label start", "if-var v.ResourceActive.Value >= 1 active",
			"frame 0", "wait 4", "frame 0", "wait 1", "goto start",
			"label active", "frame 1", "wait 4", "frame 1", "wait 1"}
})


DefineAnimations("animations-dwarven-dead-body", {
  Death = {"unbreakable begin", "frame 0", "wait 200", "frame 5", "wait 200", "frame 10", "wait 200",
    "frame 15", "wait 200", "frame 15", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-gnomish-dead-body", {
  Death = {"unbreakable begin", "frame 0", "wait 200", "frame 10", "wait 200", "frame 15", "wait 200",
    "frame 20", "wait 200", "frame 20", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-goblin-dead-body", {
  Death = {"unbreakable begin", "frame 5", "wait 200", "frame 10", "wait 200", "frame 15", "wait 200",
    "frame 20", "wait 200", "frame 20", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-dead-sea-body", {
  Death = {"unbreakable begin", "frame 30", "wait 100", "frame 30", "wait 100",
    "frame 30", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-destroyed-place", {
  Death = {"unbreakable begin", "frame 0", "wait 200", "frame 1", "wait 200", "frame 1", "unbreakable end", "wait 1", },
})

--DefineAnimations("animations-destroyed-place-water", {
--  Death = {"unbreakable begin", "frame 2", "wait 200", "frame 3", "wait 200", "frame 1", "unbreakable end", "wait 1", },
--})

DefineAnimations("animations-decoration", {
  Still = {
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2",
	"if-var v.GraphicsVariation.Value == 3 variation_3",
	"if-var v.GraphicsVariation.Value == 4 variation_4",
	"if-var v.GraphicsVariation.Value == 5 variation_5",
	"if-var v.GraphicsVariation.Value == 6 variation_6",
	"if-var v.GraphicsVariation.Value == 7 variation_7",
	"if-var v.GraphicsVariation.Value == 8 variation_8",
	"if-var v.GraphicsVariation.Value == 9 variation_9",
	"if-var v.GraphicsVariation.Value == 10 variation_10",
	"if-var v.GraphicsVariation.Value == 11 variation_11",
	"if-var v.GraphicsVariation.Value == 12 variation_12",
	"if-var v.GraphicsVariation.Value == 13 variation_13",
	"label variation_1", "frame 0", "goto end",
	"label variation_2", "frame 1", "goto end",
	"label variation_3", "frame 2", "goto end",
	"label variation_4", "frame 3", "goto end",
	"label variation_5", "frame 4", "goto end",
	"label variation_6", "frame 5", "goto end",
	"label variation_7", "frame 6", "goto end",
	"label variation_8", "frame 7", "goto end",
	"label variation_9", "frame 8", "goto end",
	"label variation_10", "frame 9", "goto end",
	"label variation_11", "frame 10", "goto end",
	"label variation_12", "frame 11", "goto end",
	"label variation_13", "frame 12", "goto end",
	"label end", "wait 1",},
})

DefineAnimations("animations-mushroom-patch", {
  Still = {
	"if-var v.Variation.Value == 0 variation_1",
	"if-var v.Variation.Value == 1 variation_2",
	"if-var v.Variation.Value == 2 variation_3",
	"if-var v.Variation.Value == 3 variation_4",
	"label variation_1",
	"if-var v.LifeStage.Value == 1 variation_1_stage_1",
	"if-var v.LifeStage.Value == 2 variation_1_stage_2",
	"if-var v.LifeStage.Value == 3 variation_1_stage_3",
	"if-var v.LifeStage.Value == 4 variation_1_stage_4",
	"if-var v.LifeStage.Value == 5 variation_1_stage_5",
	"if-var v.LifeStage.Value == 6 variation_1_stage_6",
	"if-var v.LifeStage.Value == 7 variation_1_stage_7",
	"if-var v.LifeStage.Value == 8 variation_1_stage_8",
	"if-var v.LifeStage.Value == 9 variation_1_stage_9",
	"if-var v.LifeStage.Value == 10 variation_1_stage_10",
	"if-var v.LifeStage.Value == 11 variation_1_stage_11",
	"if-var v.LifeStage.Value == 12 variation_1_stage_12",
	"if-var v.LifeStage.Value == 13 variation_1_stage_13",
	"label variation_2",
	"if-var v.LifeStage.Value == 1 variation_2_stage_1",
	"if-var v.LifeStage.Value == 2 variation_2_stage_2",
	"if-var v.LifeStage.Value == 3 variation_2_stage_3",
	"if-var v.LifeStage.Value == 4 variation_2_stage_4",
	"if-var v.LifeStage.Value == 5 variation_2_stage_5",
	"if-var v.LifeStage.Value == 6 variation_2_stage_6",
	"if-var v.LifeStage.Value == 7 variation_2_stage_7",
	"if-var v.LifeStage.Value == 8 variation_2_stage_8",
	"if-var v.LifeStage.Value == 9 variation_2_stage_9",
	"if-var v.LifeStage.Value == 10 variation_2_stage_10",
	"if-var v.LifeStage.Value == 11 variation_2_stage_11",
	"if-var v.LifeStage.Value == 12 variation_2_stage_12",
	"if-var v.LifeStage.Value == 13 variation_2_stage_13",
	"label variation_3",
	"if-var v.LifeStage.Value == 1 variation_3_stage_1",
	"if-var v.LifeStage.Value == 2 variation_3_stage_2",
	"if-var v.LifeStage.Value == 3 variation_3_stage_3",
	"if-var v.LifeStage.Value == 4 variation_3_stage_4",
	"if-var v.LifeStage.Value == 5 variation_3_stage_5",
	"if-var v.LifeStage.Value == 6 variation_3_stage_6",
	"if-var v.LifeStage.Value == 7 variation_3_stage_7",
	"if-var v.LifeStage.Value == 8 variation_3_stage_8",
	"if-var v.LifeStage.Value == 9 variation_3_stage_9",
	"if-var v.LifeStage.Value == 10 variation_3_stage_10",
	"if-var v.LifeStage.Value == 11 variation_3_stage_11",
	"if-var v.LifeStage.Value == 12 variation_3_stage_12",
	"if-var v.LifeStage.Value == 13 variation_3_stage_13",
	"label variation_4",
	"if-var v.LifeStage.Value == 1 variation_4_stage_1",
	"if-var v.LifeStage.Value == 2 variation_4_stage_2",
	"if-var v.LifeStage.Value == 3 variation_4_stage_3",
	"if-var v.LifeStage.Value == 4 variation_4_stage_4",
	"if-var v.LifeStage.Value == 5 variation_4_stage_5",
	"if-var v.LifeStage.Value == 6 variation_4_stage_6",
	"if-var v.LifeStage.Value == 7 variation_4_stage_7",
	"if-var v.LifeStage.Value == 8 variation_4_stage_8",
	"if-var v.LifeStage.Value == 9 variation_4_stage_9",
	"if-var v.LifeStage.Value == 10 variation_4_stage_10",
	"if-var v.LifeStage.Value == 11 variation_4_stage_11",
	"if-var v.LifeStage.Value == 12 variation_4_stage_12",
	"if-var v.LifeStage.Value == 13 variation_4_stage_13",	
	"label variation_1_stage_1", "frame 0", "goto end",
	"label variation_1_stage_2", "frame 1", "goto end",
	"label variation_1_stage_3", "frame 2", "goto end",
	"label variation_1_stage_4", "frame 3", "goto end",
	"label variation_1_stage_5", "frame 4", "goto end",
	"label variation_1_stage_6", "frame 5", "goto end",
	"label variation_1_stage_7", "frame 6", "goto end",
	"label variation_1_stage_8", "frame 7", "goto end",
	"label variation_1_stage_9", "frame 8", "goto end",
	"label variation_1_stage_10", "frame 9", "goto end",
	"label variation_1_stage_11", "frame 10", "goto end",
	"label variation_1_stage_12", "frame 11", "goto end",
	"label variation_1_stage_13", "frame 12", "goto end",
	"label variation_2_stage_1", "frame 13", "goto end",
	"label variation_2_stage_2", "frame 14", "goto end",
	"label variation_2_stage_3", "frame 15", "goto end",
	"label variation_2_stage_4", "frame 16", "goto end",
	"label variation_2_stage_5", "frame 17", "goto end",
	"label variation_2_stage_6", "frame 18", "goto end",
	"label variation_2_stage_7", "frame 19", "goto end",
	"label variation_2_stage_8", "frame 20", "goto end",
	"label variation_2_stage_9", "frame 21", "goto end",
	"label variation_2_stage_10", "frame 22", "goto end",
	"label variation_2_stage_11", "frame 23", "goto end",
	"label variation_2_stage_12", "frame 24", "goto end",
	"label variation_2_stage_13", "frame 25", "goto end",
	"label variation_3_stage_1", "frame 26", "goto end",
	"label variation_3_stage_2", "frame 27", "goto end",
	"label variation_3_stage_3", "frame 28", "goto end",
	"label variation_3_stage_4", "frame 29", "goto end",
	"label variation_3_stage_5", "frame 30", "goto end",
	"label variation_3_stage_6", "frame 31", "goto end",
	"label variation_3_stage_7", "frame 32", "goto end",
	"label variation_3_stage_8", "frame 33", "goto end",
	"label variation_3_stage_9", "frame 34", "goto end",
	"label variation_3_stage_10", "frame 35", "goto end",
	"label variation_3_stage_11", "frame 36", "goto end",
	"label variation_3_stage_12", "frame 37", "goto end",
	"label variation_3_stage_13", "frame 38", "goto end",
	"label variation_4_stage_1", "frame 39", "goto end",
	"label variation_4_stage_2", "frame 40", "goto end",
	"label variation_4_stage_3", "frame 41", "goto end",
	"label variation_4_stage_4", "frame 42", "goto end",
	"label variation_4_stage_5", "frame 43", "goto end",
	"label variation_4_stage_6", "frame 44", "goto end",
	"label variation_4_stage_7", "frame 45", "goto end",
	"label variation_4_stage_8", "frame 46", "goto end",
	"label variation_4_stage_9", "frame 47", "goto end",
	"label variation_4_stage_10", "frame 48", "goto end",
	"label variation_4_stage_11", "frame 49", "goto end",
	"label variation_4_stage_12", "frame 50", "goto end",
	"label variation_4_stage_13", "frame 51", "goto end",
	"label end", "wait 1",},
})

DefineAnimations("animations-gold-sack", {
  Still = BuildingStill,
  Death = BuildingStill,
})

DefineAnimations("animations-gold-chest", {
  Still = {
	"if-var v.GraphicsVariation.Value == 0 variation_0",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2",
	"label variation_0", "frame 0", "if-var v.HitPoints.Percent < 100 open_chest", "goto end",
	"label variation_1", "frame 1", "goto end",
	"label variation_2", "frame 2", "goto end",
	"label open_chest", "sound open-chest", "set-var GraphicsVariation.Value = 2", "goto end",
	"label end", "wait 1",},
})

DefineAnimations("animations-gold-and-gems-chest", {
  Still = {
	"if-var v.GraphicsVariation.Value == 0 variation_0",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2",
	"label variation_0", "frame 0", "if-var v.HitPoints.Percent < 100 open_chest", "goto end",
	"label variation_1", "frame 1", "goto end",
	"label variation_2", "frame 3", "goto end",
	"label open_chest", "sound open-chest", "set-var GraphicsVariation.Value = 2", "goto end",
	"label end", "wait 1",},
})

DefineAnimations("animations-barrel", {
	Still = BuildingStill,
	Death = {"unbreakable begin",
	"frame 1", "wait 3", "frame 2", "wait 3", "frame 3", "wait 3", "frame 4", "wait 3", "frame 5", "wait 100", "frame 5", 
	"random-goto 66 end", "random-goto 66 drop_potion_of_healing", "goto drop_potion_of_decay",
	"label drop_potion_of_healing", "spawn-unit unit-potion-of-healing 0 0 5 15", "goto end",
	"label drop_potion_of_decay", "spawn-unit unit-potion-of-decay 0 0 5 15", "goto end",
	"label end", "unbreakable end", "wait 1",}
})

DefineAnimations("animations-green-potion", {
  Still = BuildingStill,
  Death = BuildingStill,
})

DefineAnimations("animations-red-potion", {
  Still = {
	"frame 1",
	"wait 4",
	"frame 1",
	"wait 1",},
  Death = {
	"frame 1",
	"wait 4",
	"frame 1",
	"wait 1",},
})

DefineAnimations("animations-blue-potion", {
  Still = {
	"frame 2",
	"wait 4",
	"frame 2",
	"wait 1",},
  Death = {
	"frame 2",
	"wait 4",
	"frame 2",
	"wait 1",},
})
