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
--      anim.lua - The teuton unit animation definitions.
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
-- Teuton Catapult
--

DefineAnimations("animations-teuton-catapult", {
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
  Attack = {"unbreakable begin", "frame 15", "attack", "wait 2",
    "frame 10", "wait 41", "frame 15", "wait 6", "frame 15", "wait 100", "frame 0", "wait 50", "frame 0", "unbreakable end", "wait 1",}
})

--
-- Teuton Town Hall
--

DefineAnimations("animations-teuton-town-hall", {
	Still = {
		"if-var v.Armor.Value <= 15 town_hall",
		"if-var v.Armor.Value >= 20 masonry_town_hall", -- if has masonry
		"label town_hall",
		"frame 0", "wait 6", "frame 1", "wait 6", "frame 2", "wait 6", "frame 0", "goto end",
		"label masonry_town_hall",
		"frame 0", "wait 4", "frame 0", "goto end",
		"label end",
		"wait 1",
	},
	Research = {
		"if-var v.Armor.Value <= 15 town_hall",
		"if-var v.Armor.Value >= 20 masonry_town_hall", -- if has masonry
		"label town_hall",
		"frame 0", "wait 6", "frame 1", "wait 6", "frame 2", "wait 6", "frame 0", "goto end",
		"label masonry_town_hall",
		"frame 0", "wait 4", "frame 0", "goto end",
		"label end",
		"wait 1",
	},
	Train = {
		"if-var v.Armor.Value <= 15 town_hall",
		"if-var v.Armor.Value >= 20 masonry_town_hall", -- if has masonry
		"label town_hall",
		"frame 0", "wait 6", "frame 1", "wait 6", "frame 2", "wait 6", "frame 0", "goto end",
		"label masonry_town_hall",
		"frame 0", "wait 4", "frame 0", "goto end",
		"label end",
		"wait 1",
	},
	Upgrade = {"frame 1", "wait 4", "frame 1", "wait 1",},
})
