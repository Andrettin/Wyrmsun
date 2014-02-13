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

local RatStill = UnitStill
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
    "frame 0","move 1", "wait 2", "frame 5", "move 1", "wait 1",
    "frame 5", "move 1", "wait 2", "frame 10", "move 1", "wait 1",
    "frame 10", "move 1", "wait 1", "frame 0", "wait 1",
    "frame 0", "move 1", "wait 2", "frame 15", "move 1", "wait 1",
    "frame 15", "move 1", "wait 2", "frame 20", "move 1", "wait 1",
    "frame 20", "move 1", "wait 1", "frame 0",
    "unbreakable end", "wait 1",}
local RatDeath = {"unbreakable begin", "frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100",
    "frame 55", "unbreakable end", "wait 1",}

DefineAnimations("animations-rat", {
  Still = RatStill,
  Move = RatMove,
  Death = RatDeath,
})

DefineAnimations("animations-building", {
  Still = BuildingStill,
  Research = BuildingStill,
  Train = BuildingStill,
  Upgrade = BuildingStill,
})

DefineAnimations("animations-gold-mine", {
  Still = {"label start", "if-var v.ResourceActive.Value >= 1 active",
			"frame 0", "wait 4", "frame 0", "wait 1", "goto start",
			"label active", "frame 1", "wait 4", "frame 1", "wait 1"}
})


DefineAnimations("animations-human-dead-body", {
  Death = {"unbreakable begin", "frame 0", "wait 200", "frame 10", "wait 200", "frame 15", "wait 200",
    "frame 20", "wait 200", "frame 25", "wait 200", "frame 25", "unbreakable end", "wait 1",},
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

DefineAnimations("animations-gold-sack", {
  Still = BuildingStill,
  Death = BuildingStill,
})

--
-- Gnomish Worker
--

DefineAnimations("animations-gnomish-worker", {
  Still = {"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate", "label taunt", "frame 65", "wait 6", "frame 70", "wait 6", "frame 65", "wait 6", "frame 70", "wait 6", "frame 65", "wait 6", "frame 70", "wait 6", "frame 0", "label no-rotate", "wait 1",},
  Move = {"unbreakable begin", "frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
    "frame 20", "move 3", "wait 1", "frame 0", "move 2", "unbreakable end", "wait 1",},
  Attack = {"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "attack", "sound mace-attack", "wait 5", "frame 45", "wait 3",
    "frame 25", "wait 7", "frame 25", "unbreakable end", "wait 1",},
  Harvest_wood = {"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "sound tree-chopping", "wait 5", "frame 45", "wait 3",
    "frame 25", "wait 7", "frame 25", "unbreakable end", "wait 1",},
  Repair = {"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "sound mace-attack", "wait 5", "frame 45", "wait 3",
    "frame 25", "wait 7", "frame 25", "unbreakable end", "wait 1",},
  Death = {"unbreakable begin", "frame 50", "wait 3", "frame 55", "wait 3", "frame 60", "wait 100",
    "frame 60", "unbreakable end", "wait 1",},
})

--
-- Gnomish Recruit
--

local GnomishRecruitStill = {"frame 0", "wait 4", "random-goto 1 taunt", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate", "label taunt", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 60", "wait 6", "frame 65", "wait 6", "frame 0", "label no-rotate", "wait 1",}
local GnomishRecruitMove = {"unbreakable begin","frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
    "frame 20", "move 3", "wait 1", "frame 0", "move 2", "unbreakable end", "wait 1",}
local GnomishRecruitDeath = {"unbreakable begin", "frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100",
    "frame 55", "unbreakable end", "wait 1",}

DefineAnimations("animations-gnomish-recruit", {
  Still = GnomishRecruitStill,
  Move = GnomishRecruitMove,
  Attack = {"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "attack", "sound sword-attack", "wait 5", "frame 0", "wait 10",
    "frame 0", "unbreakable end", "wait 1",},
  Death = GnomishRecruitDeath,
})

--
-- Gnomish Caravan
--

DefineAnimations("animations-gnomish-caravan", {
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
  Death = {"unbreakable begin", "frame 10", "wait 3", "frame 15", "wait 3", "frame 20", "wait 3", "frame 25", "wait 100",
    "frame 25", "unbreakable end", "wait 1",}
})

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
})
