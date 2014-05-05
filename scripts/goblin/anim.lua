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
--      anim.lua - The goblin unit animation definitions.
--
--      (c) Copyright 2014 by Andre Novellino Gouvêa
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
-- Goblin Spearman
--

local GoblinSpearmanStill = {"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate", "label taunt", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 0", "label no-rotate", "wait 1",}
local GoblinSpearmanMove = {"unbreakable begin","frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
    "frame 20", "move 3", "wait 1", "frame 0", "move 2", "unbreakable end", "wait 1",}
local GoblinSpearmanDeath = {"unbreakable begin", "frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100",
    "frame 55", "unbreakable end", "wait 1",}

DefineAnimations("animations-goblin-spearman", {
  Still = GoblinSpearmanStill,
  Move = GoblinSpearmanMove,
  Attack = {"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "attack", "sound spear-attack", "wait 5", "frame 0", "wait 10",
    "frame 0", "unbreakable end", "wait 1",},
  Death = GoblinSpearmanDeath,
  SpellCast = {"unbreakable begin",
	"attack",
	"unbreakable end",
	"wait 1",}
})

--
-- Goblin Swordsman / Greebo
--

local GoblinSwordsmanStill = {"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate", "label taunt", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 0", "label no-rotate", "wait 1",}
local GoblinSwordsmanMove = {"unbreakable begin","frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
    "frame 20", "move 3", "wait 1", "frame 0", "move 2", "unbreakable end", "wait 1",}
local GoblinSwordsmanDeath = {"unbreakable begin", "frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100",
    "frame 55", "spawn-unit unit-gold-sack 0 0 5 15", "unbreakable end", "wait 1",}

DefineAnimations("animations-goblin-swordsman", {
  Still = GoblinSwordsmanStill,
  Move = GoblinSwordsmanMove,
  Attack = {"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "attack", "sound sword-attack", "wait 5", "frame 0", "wait 10",
    "frame 0", "unbreakable end", "wait 1",},
  Death = GoblinSwordsmanDeath,
  SpellCast = {"unbreakable begin",
	"attack",
	"unbreakable end",
	"wait 1",}
})

--
-- Goblin Archer
--

local GoblinArcherStill  = {"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate",
	"label taunt", "frame 70", "wait 6", "frame 75", "wait 6", "frame 70", "wait 6", "frame 75", "wait 6", "frame 70", "wait 6", "frame 75", "wait 6", "frame 0",
	"label no-rotate", "wait 1",}
local GoblinArcherMove = {"unbreakable begin","frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
	"frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
	"frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
	"frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
	"frame 20", "move 3", "wait 1", "frame 0", "move 2", "unbreakable end", "wait 1",}
local GoblinArcherDeath = {"unbreakable begin", "frame 55", "wait 3", "frame 60", "wait 3", "frame 65", "wait 100",
	"frame 65", "unbreakable end", "wait 1",}

DefineAnimations("animations-goblin-archer", {
	Still = GoblinArcherStill,
	Move = GoblinArcherMove,
	Attack = {"unbreakable begin", "frame 25", "wait 5", "frame 30", "wait 5", "frame 35", "attack", "sound bow", "wait 3",
		"frame 40", "wait 3", "frame 45", "wait 10", "frame 50", "wait 38", "frame 50", "unbreakable end", "wait 1",},
	Death = GoblinArcherDeath,
  SpellCast = {"unbreakable begin",
	"if-var s_spell-unarmed-attack == 1 unarmed_attack",
	"goto end",
	"label unarmed_attack",
	"frame 80", "wait 3", "frame 85", "wait 3", "frame 90", "wait 3",
	"frame 95", "attack", "sound fist-attack", "wait 5", "frame 0", "wait 10",
	"frame 0",
	"goto end",
	"label end",
	"unbreakable end",
	"wait 1",}
})

--
-- Goblin Banner
--

DefineAnimations("animations-goblin-banner", {
  Still = { "label begin",
	"if-var v.GraphicsVariation.Value == 0 set_variation",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2",
	"label set_variation", "random-goto 50 variation_1", "random-goto 50 variation_2", "goto begin",
	"label variation_1", "set-var GraphicsVariation.Value = 1", "frame 0", "wait 4", "random-goto 1 variation_1_flap", "random-goto 99 end",
	"label variation_1_flap", "frame 1", "wait 6", "frame 0", "wait 6", "frame 2", "wait 6", "frame 0", "goto end",
	"label variation_2", "set-var GraphicsVariation.Value = 2", "frame 7", "wait 4", "random-goto 1 variation_2_flap", "random-goto 99 end",
	"label variation_2_flap", "frame 8", "wait 6", "frame 7", "wait 6", "frame 9", "wait 6", "frame 7", "goto end",
	"label end", "wait 1",},
  Death = {
	"unbreakable begin",
	"if-var v.GraphicsVariation.Value == 1 variation_1",
	"if-var v.GraphicsVariation.Value == 2 variation_2",
	"label variation_1", "frame 3", "wait 3", "frame 4", "wait 3", "frame 5", "wait 3", "frame 6", "wait 100", "frame 6", "goto end",
	"label variation_2", "frame 10", "wait 3", "frame 11", "wait 3", "frame 12", "wait 3", "frame 13", "wait 100", "frame 13", "goto end",
	"label end", "unbreakable end", "wait 1",},
})
