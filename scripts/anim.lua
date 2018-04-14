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
--      (c) Copyright 2000-2018 by Josh Cogliati, Lutz Sammer, Jimmy Salmon, Pali Rohár and Andrettin
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

UnitMove = {
	"unbreakable begin", 
	"if-var v.Speed.Value <= 3 speed_3",
	"if-var v.Speed.Value <= 6 speed_6",
	"if-var v.Speed.Value == 7 speed_7",
	"if-var v.Speed.Value == 8 speed_8",
	"if-var v.Speed.Value == 9 speed_9",
	"if-var v.Speed.Value == 10 speed_10",
	"if-var v.Speed.Value == 11 speed_11",
	"if-var v.Speed.Value == 12 speed_12",
	"if-var v.Speed.Value == 13 speed_13",
	"if-var v.Speed.Value == 14 speed_14",
	"if-var v.Speed.Value == 15 speed_15",
	"if-var v.Speed.Value >= 16 speed_16",
	"label speed_3", -- 16 / (3 / 10) = c. 53 waits
	"frame 0", "move 3", "wait 5", "frame 5", "move 3", "wait 4",
    "frame 5", "move 3", "wait 5", "frame 10", "move 2", "wait 5",
    "frame 10", "move 3", "wait 5", "frame 0", "move 2", "wait 4",
    "frame 0", "move 3", "wait 5", "frame 15", "move 3", "wait 5",
    "frame 15", "move 3", "wait 5", "frame 20", "move 2", "wait 4",
    "frame 20", "move 3", "wait 5", "frame 0", "move 2", "goto end",
	-- speed_4 16 / (4 / 10) = 40 waits
	"label speed_6", -- 16 / (6 / 10) = c. 26 waits
	"frame 0", "move 3", "wait 3", "frame 5", "move 3", "wait 2",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 2",
    "frame 10", "move 3", "wait 3", "frame 0", "move 2", "wait 2",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 2",
    "frame 15", "move 3", "wait 3", "frame 20", "move 2", "wait 2",
    "frame 20", "move 3", "wait 2", "frame 0", "move 2", "goto end",
	"label speed_7", -- 16 / (7 / 10) = c. 22 waits
	"frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 2",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 2",
    "frame 10", "move 3", "wait 2", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 2",
    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 2",
    "frame 20", "move 3", "wait 2", "frame 0", "move 2", "goto end",
	"label speed_8", -- 16 / (8 / 10) = 20 waits
	"frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 2",
    "frame 10", "move 3", "wait 2", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 2",
    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
    "frame 20", "move 3", "wait 2", "frame 0", "move 2", "goto end",
	"label speed_9", -- 16 / (9 / 10) = c. 18 waits
	"frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
    "frame 10", "move 3", "wait 2", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
    "frame 20", "move 3", "wait 2", "frame 0", "move 2", "goto end",
	"label speed_10", -- 16 waits (this is the reference speed for other ones)
	"frame 0", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
    "frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
    "frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
    "frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
    "frame 20", "move 3", "wait 1", "frame 0", "move 2", "goto end",
	"label speed_11", -- 16 / (11 / 10) = c. 14 waits
	"frame 0", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
	"frame 5", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
	"frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 15", "move 3", "wait 1",
	"frame 15", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
	"frame 20", "move 3", "wait 1", "frame 0", "move 2", "goto end",
	"label speed_12", -- 16 / (12 / 10) = c. 13 waits
	"frame 0", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
	"frame 5", "move 3", "wait 1", "frame 10", "move 2", "wait 1",
	"frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 2", "frame 15", "move 3", "wait 1",
	"frame 15", "move 3", "wait 1", "frame 20", "move 2", "wait 1",
	"frame 20", "move 3", "wait 1", "frame 0", "move 2", "goto end",
	"label speed_13", -- 16 / (13 / 10) = c. 12 waits
	"frame 0", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
	"frame 5", "move 3", "wait 1", "frame 10", "move 2", "wait 1",
	"frame 10", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 15", "move 3", "wait 1",
	"frame 15", "move 3", "wait 1", "frame 20", "move 2", "wait 1",
	"frame 20", "move 3", "wait 1", "frame 0", "move 2", "goto end",
	"label speed_14", -- 16 / (14 / 10) = c. 11 waits
	"frame 0", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
	"frame 5", "move 3", "wait 1", "frame 10", "move 3", "wait 1",
	"frame 10", "move 3", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 15", "move 3", "wait 1",
	"frame 15", "move 3", "wait 1", "frame 20", "move 3", "wait 1",
	"frame 20", "move 3", "wait 1", "frame 0", "move 2", "goto end",
	"label speed_15", -- 16 / (15 / 10) = c. 10 waits
	"frame 0", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
	"frame 5", "move 4", "wait 1", "frame 10", "move 3", "wait 1",
	"frame 10", "move 3", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 15", "move 3", "wait 1",
	"frame 15", "move 3", "wait 1", "frame 20", "move 4", "wait 1",
	"frame 0", "move 3", "goto end",
	"label speed_16", -- 16 / (16 / 10) = 10 waits (same as speed 15)
	"frame 0", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
	"frame 5", "move 4", "wait 1", "frame 10", "move 3", "wait 1",
	"frame 10", "move 3", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 15", "move 3", "wait 1",
	"frame 15", "move 3", "wait 1", "frame 20", "move 4", "wait 1",
	"frame 0", "move 3", "goto end",
	"label end", "unbreakable end", "wait 1",
}

UnitWheeledMove = {
	"unbreakable begin",
	"if-var v.Speed.Value <= 5 speed_5",
	"if-var v.Speed.Value == 6 speed_6",
	"if-var v.Speed.Value >= 7 speed_7",
	"label speed_5", -- 16 / (5 / 10) = 32 waits
	"frame 0", "wait 1", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "goto end",
	"label speed_6", -- 16 / (6 / 10) = c. 26 waits
	"frame 0", "wait 1", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 1", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "goto end",
	"label speed_7", -- 16 / (7 / 10) = c. 22 waits
	"frame 0", "wait 1", "frame 5", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 5", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 5", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 5", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 5", "move 2", "wait 1",
	"frame 0", "move 2", "goto end",
	"label end", "unbreakable end", "wait 1",
}

UnitMoveNewMovement = {"unbreakable begin", 
	"label speed_10", -- 16 waits (this is the reference speed for other ones)
	"frame 5", "move 3", "wait 2", "frame 5", "move 3", "wait 1",
    "frame 10", "move 3", "wait 2", "frame 10", "move 2", "wait 1",
    "frame 10", "move 3", "wait 1", "frame 15", "move 2", "wait 1",
    "frame 15", "move 3", "wait 2", "frame 20", "move 3", "wait 1",
    "frame 20", "move 3", "wait 2", "frame 20", "move 2", "wait 1",
    "frame 25", "move 3", "wait 1", "frame 25", "move 2", "goto end",
	"label end", "unbreakable end", "wait 1",
}

ShipMove = {
	"unbreakable begin",
	"if-var v.Speed.Value <= 3 speed_3",
	"if-var v.Speed.Value == 4 speed_4",
	"if-var v.Speed.Value == 5 speed_5",
	"if-var v.Speed.Value == 6 speed_6",
	"if-var v.Speed.Value == 7 speed_7",
	"if-var v.Speed.Value == 8 speed_8",
	"if-var v.Speed.Value == 9 speed_9",
	"if-var v.Speed.Value == 10 speed_10",
	"if-var v.Speed.Value == 11 speed_11",
	"if-var v.Speed.Value == 12 speed_12",
	"if-var v.Speed.Value >= 13 speed_13",
	"label speed_3", -- 16 / (3 / 10) = c. 53 waits
	"frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 3",
	"frame 0", "move 2", "wait 4", "frame 0", "move 2", "wait 3",
	"frame 0", "move 2", "wait 4", "frame 0", "move 2", "wait 3",
	"frame 0", "move 2", "wait 4", "frame 0", "move 2", "wait 3",
	"frame 0", "move 2", "wait 4", "frame 0", "move 2", "wait 3",
	"frame 0", "move 2", "wait 4", "frame 0", "move 2", "wait 3",
	"frame 0", "move 2", "wait 4", "frame 0", "move 2", "wait 3",
	"frame 0", "move 2", "wait 4", "frame 0", "move 2", "goto end",
	"label speed_4", -- 16 / (4 / 10) = 40 waits
	"frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 3",
	"frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 3", "frame 0", "move 2", "goto end",
	"label speed_5", -- 16 / (5 / 10) = 32 waits
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 3", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "goto end",
	"label speed_6", -- 16 / (6 / 10) = c. 26 waits
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "goto end",
	"label speed_7", -- 16 / (7 / 10) = c. 22 waits
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "goto end",
	"label speed_8", -- 16 / (8 / 10) = 20 waits
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "goto end",
	"label speed_9", -- 16 / (9 / 10) = c. 18 waits
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 0", "move 2", "goto end",
	"label speed_10", -- 16 waits (this is the reference speed for other ones)
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "goto end",
	"label speed_11", -- 16 / (11 / 10) = c. 14 waits
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "goto end",
	"label speed_12", -- 16 / (12 / 10) = c. 13 waits
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "goto end",
	"label speed_13", -- 16 / (13 / 10) = c. 12 waits
	"frame 0", "move 3", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 3", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 3", "wait 1",
	"frame 0", "move 3", "wait 1", "frame 0", "move 2", "goto end",
	"label end", "unbreakable end", "wait 1",
}

UnitMeleeAttack = {
	"unbreakable begin",
  	"frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
  	"frame 40", "attack", "wait 5", "frame 0", "wait 10", "frame 0",
	"unbreakable end", "wait 1",
}
UnitMeleeAttackNew = {
	"unbreakable begin", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "attack", "wait 5", "frame 45", "wait 3",
    "frame 25", "wait 10", "frame 25", "unbreakable end", "wait 1",
}
UnitMeleeAttackNewMovement = {
	"unbreakable begin",
  	"frame 30", "wait 3", "frame 35", "wait 3", "frame 40", "wait 3",
  	"frame 45", "attack", "wait 5", "frame 0", "wait 10", "frame 0",
	"unbreakable end", "wait 1",
}
WorkerAttack = {
	"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
    "frame 40", "attack", "wait 5", "frame 45", "wait 3",
    "frame 25", "wait 7", "frame 25", "unbreakable end", "wait 1",
}
UnitDeath = {
	"unbreakable begin",
	"frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100", "frame 55",
	"unbreakable end", "wait 1",
}
UnitDeathNewMovement = {
	"unbreakable begin",
	"frame 50", "wait 3", "frame 55", "wait 3", "frame 60", "wait 100", "frame 60",
	"unbreakable end", "wait 1",
}
WorkerDeath = {
	"unbreakable begin",
	"frame 50", "wait 3", "frame 55", "wait 3", "frame 60", "wait 100", "frame 60",
	"unbreakable end", "wait 1",
}
ArcherDeath = {
	"unbreakable begin", "frame 55", "wait 3", "frame 60", "wait 3", "frame 65", "wait 100",
	"frame 65", "unbreakable end", "wait 1",
}
WorkerMetalMining = {
	"frame 25", "wait 4", "frame 30", "wait 4", "frame 35", "wait 4",
	"frame 40", "sound metal-mining", "wait 5", "frame 45", "wait 3",
	"frame 25", "wait 9", "frame 25",
	"wait 1",
}
WorkerLumberHarvesting = {
	"frame 25", "wait 4", "frame 30", "wait 4", "frame 35", "wait 4",
	"frame 40", "sound tree-chopping", "wait 5", "frame 45", "wait 3",
	"frame 25", "wait 9", "frame 25",
	"wait 1",
}
WorkerStoneMining = {
	"frame 25", "wait 4", "frame 30", "wait 4", "frame 35", "wait 4",
	"frame 40", "sound stone-mining", "wait 5", "frame 45", "wait 3",
	"frame 25", "wait 9", "frame 25",
	"wait 1",
}

BuildingStill = {"frame 0", "wait 4", "frame 0", "wait 1",}

Load("scripts/civilizations/dwarf/anim.lua")
Load("scripts/civilizations/germanic/anim.lua")
Load("scripts/civilizations/gnome/anim.lua")
Load("scripts/civilizations/goblin/anim.lua")
Load("scripts/civilizations/teuton/anim.lua")

DefineAnimations("animations-static-npc", {
  Still = {"exact-frame 0", "wait 4", "exact-frame 0", "wait 1",},
})

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

DefineAnimations("animations-melee-unit", {
	Still = UnitStill,
	Move = UnitMove,
	Attack = UnitMeleeAttack,
	Death = UnitDeath
})

DefineAnimations("animations-melee-unit-new", {
	Still = UnitStill,
	Move = UnitMove,
	Attack = UnitMeleeAttackNew,
	Death = WorkerDeath
})

DefineAnimations("animations-melee-unit-new-movement", {
	Still = UnitStill,
	Move = UnitMoveNewMovement,
	Attack = UnitMeleeAttackNewMovement,
	Death = UnitDeathNewMovement
})

DefineAnimations("animations-worker", {
	Still = UnitStill,
	Move = UnitMove,
	Attack = WorkerAttack,
	Harvest_gold = WorkerMetalMining,
	Harvest_silver = WorkerMetalMining,
	Harvest_copper = WorkerMetalMining,
	Harvest_iron = WorkerMetalMining,
	Harvest_mithril = WorkerMetalMining,
	Harvest_lumber = WorkerLumberHarvesting,
	Harvest_stone = WorkerStoneMining,
	Harvest_limestone = WorkerStoneMining,
	Harvest_diamonds = WorkerStoneMining,
	Harvest_emeralds = WorkerStoneMining,
	Repair = {
		"unbreakable begin", "frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
		"frame 40", "sound construction-wood", "wait 5", "frame 45", "wait 3",
		"frame 25", "wait 7", "frame 25", "unbreakable end", "wait 1",
	},
	Death = WorkerDeath
})

DefineAnimations("animations-archer", {
	Still = UnitStill,
	Move = UnitMove,
	Attack = {
		"unbreakable begin",
		"frame 25", "wait 5", "frame 30", "wait 5", "frame 35", "attack", "sound bow", "wait 3",
		"frame 40", "wait 3", "frame 45", "wait 10", "frame 50", "wait 13", "frame 50",
		"unbreakable end", "wait 1",
	},
	Death = ArcherDeath
})

DefineAnimations("animations-weapon-thrower", {
	Still = UnitStill,
	Move = UnitMove,
	Attack = {
		"unbreakable begin", 
		"frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
		"frame 40", "attack", "wait 12",
		"frame 0", "wait 18", "frame 0",
		"unbreakable end", "wait 1",
	},
	Death = UnitDeath
})

DefineAnimations("animations-gunpowder-infantry", {
	Still = UnitStill,
	Move = UnitMove,
	Attack = {
		"unbreakable begin", 
		"frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 9",
		"frame 40", "attack", "sound thunderstick", "wait 6",
		"frame 0", "wait 18", "frame 0",
		"unbreakable end", "wait 1",
	},
	Death = UnitDeath
})

--
-- Rat
--

local RatMove = {"unbreakable begin",
	"if-var v.Speed.Value <= 3 speed_3",
	"if-var v.Speed.Value == 4 speed_4",
	"if-var v.Speed.Value >= 8 speed_8",
	"label speed_3", -- 16 / (3 / 10) = c. 53 waits
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
	"frame 20", "move 1", "wait 1", "frame 0", "goto end", -- should have 7 more waits to be speed 3 more precisely
	"label speed_4", -- 16 / (4 / 10) = 40 waits
	"frame 0","move 1", "wait 1", "frame 5", "move 1", "wait 1",
	"frame 5", "move 1", "wait 1", "frame 10", "move 1", "wait 1",
	"frame 10", "move 1", "wait 1", "frame 0", "move 1", "wait 1",
	"frame 0", "move 1", "wait 2", "frame 15", "move 1", "wait 1",
	"frame 15", "move 1", "wait 2", "frame 20", "move 1", "wait 1",
	"frame 20", "move 1", "wait 1", "frame 0",
	"frame 0","move 1", "wait 1", "frame 5", "move 1", "wait 1",
	"frame 5", "move 1", "wait 2", "frame 10", "move 1", "wait 1",
	"frame 10", "move 1", "wait 1", "frame 0", "move 1", "wait 1",
	"frame 0", "move 1", "wait 1", "frame 15", "move 1", "wait 1",
	"frame 15", "move 1", "wait 2", "frame 20", "move 1", "wait 1",
	"frame 20", "move 1", "wait 1", "frame 0",
	"frame 0", "move 1", "wait 2", "frame 5", "move 1", "wait 1",
	"frame 5", "move 1", "wait 2", "frame 10", "move 1", "wait 1",
	"frame 10", "move 1", "wait 1", "frame 0", "wait 1",
	"frame 0", "move 1", "wait 1", "frame 15", "move 1", "wait 1",
	"frame 15", "move 1", "wait 2", "frame 20", "move 1", "wait 1",
	"frame 20", "move 1", "wait 1", "frame 0", "goto end",
	"label speed_8", -- 16 / (8 / 10) = 20 waits
	"frame 0","move 2", "wait 1", "frame 5", "move 2", "wait 1",
	"frame 5", "move 1", "wait 1", "frame 10", "move 1", "wait 1",
	"frame 10", "move 2", "wait 1", "frame 0", "move 1", "wait 1",
	"frame 0", "move 1", "wait 1", "frame 15", "move 2", "wait 1",
	"frame 15", "move 2", "wait 1", "frame 20", "move 1", "wait 1",
	"frame 20", "move 1", "wait 1", "frame 0",
	"frame 0","move 2", "wait 1", "frame 5", "move 2", "wait 1",
	"frame 5", "move 1", "wait 1", "frame 10", "move 1", "wait 1",
	"frame 10", "move 2", "wait 1", "frame 0", "move 1", "wait 1",
	"frame 0", "move 1", "wait 1", "frame 15", "move 2", "wait 1",
	"frame 15", "move 2", "wait 1", "frame 20", "move 1", "wait 1",
	"frame 20", "move 1", "wait 1", "frame 0", "goto end", -- has 22 waits, should be 20 (needs to have a wait after every "move")
	"label end", "unbreakable end", "wait 1",
}

local RatDeath = {"unbreakable begin",
	"frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100", "frame 55",
	"unbreakable end", "wait 1",
}

DefineAnimations("animations-rat", {
  Still = UnitStill,
  Move = RatMove,
  Attack = {"unbreakable begin",
	"frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
	"frame 40", "attack", "wait 5", "frame 0", "wait 10", "frame 0",
	"unbreakable end", "wait 1",},
  Death = RatDeath,
})

--
-- Worm
--

DefineAnimations("animations-worm", {
  Still = UnitStill,
  Move = RatMove,
  Attack = {"unbreakable begin",
	"frame 25", "wait 3", "frame 30", "wait 3", "frame 35", "wait 3",
	"frame 40", "attack", "wait 5", "frame 0", "wait 10", "frame 0",
	"unbreakable end", "wait 1",},
  Death = RatDeath,
})

--
-- Snail
--

local SnailStill = {
	"unbreakable begin",
	"frame 0", "wait 4", "random-goto 1 idle_anim", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate",
	"label idle_anim", "frame 0", "wait 6", "frame 5", "wait 6", "frame 10", "wait 6", "frame 15", "wait 6", "frame 20", "wait 100",
	"frame 15", "wait 6", "frame 10", "wait 6", "frame 5", "wait 6", "frame 0",
	"label no-rotate",
	"unbreakable end", "wait 1",
}

local SnailMove = {"unbreakable begin",
	"if-var v.Speed.Value <= 3 speed_3",
	"if-var v.Speed.Value >= 4 speed_4",
	"label speed_3", -- 16 / (3 / 10) = c. 53 waits
	"frame 0", "move 2", "wait 3", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 3", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 3", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 3", "frame 0",
	"frame 0", "move 2", "wait 3", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 3", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 0", "move 2", "wait 2",
	"frame 0", "move 2", "wait 3", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 3", "frame 0", "goto end",
	"label speed_4", -- 16 / (4 / 10) = 40 waits
	"frame 0", "move 2", "wait 2", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 0",
	"frame 0", "move 2", "wait 2", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 0", "move 2", "wait 1",
	"frame 0", "move 2", "wait 2", "frame 5", "move 1", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 0",
	"label end", "unbreakable end", "wait 1",}
local SnailDeath = {"unbreakable begin",
	"frame 25", "wait 100", "frame 30", "wait 100", "frame 35", "wait 100", "frame 35",
	"unbreakable end", "wait 1",}

DefineAnimations("animations-snail", {
  Still = SnailStill,
  Move = SnailMove,
  Death = SnailDeath,
})

--
-- Slug
--

local SlugAttack = {
	"unbreakable begin",
  	"frame 0", "wait 3", "frame 5", "wait 3", "frame 10", "wait 3",
  	"frame 15", "attack", "wait 5", "frame 20", "wait 10", "frame 20",
	"unbreakable end", "wait 1",
}
 
DefineAnimations("animations-slug", {
  Still = UnitStill,
  Move = SnailMove,
  Attack = SlugAttack,
  Death = SnailDeath,
})

--
-- Yale
--
 
DefineAnimations("animations-yale", {
	Still = UnitStill,
	Move = UnitMove,
	Attack = UnitMeleeAttack,
	Death = {
		"unbreakable begin",
		"frame 45", "wait 3", "frame 50", "wait 3", "frame 55", "wait 100", "frame 55",
		"wait 200", "frame 60", "wait 200", "frame 65",
		"wait 200", "frame 65",
		"unbreakable end", "wait 1",
	},
})

--
-- Bird
--
 
local BirdStill = {
	"frame 0", "wait 3",
	"frame 5", "wait 3",
	"frame 10", "wait 3",
	"frame 15", "wait 3",
	"frame 20", "wait 3",
	"frame 25", "wait 3",
	-- following part for bird hop, not for bat
	-- "random-goto 1 idle_animation", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate",
	-- "label idle_animation","frame 60", "wait 6", "frame 60", "wait 6", "frame 60", "wait 6", "frame 60", "wait 6", "frame 60", "wait 6",
	-- "label no-rotate", "wait 1",
}
local BirdMove = {"unbreakable begin",
	"frame 0", "wait 1", "frame 0", "move 3", "wait 1",
	"frame 5", "move 3", "wait 1", "frame 5", "move 3", "wait 1",
	"frame 10", "move 2", "wait 1", "frame 10", "move 3", "wait 1",
	"frame 15", "move 3", "wait 1", "frame 15", "move 3", "wait 1",
	"frame 20", "move 3", "wait 1", "frame 20", "move 3", "wait 1",
	"frame 25", "move 3", "wait 1", "frame 25", "move 3",
	"unbreakable end", "wait 1",}
local BirdDeath = {"unbreakable begin", 
	"frame 45", "wait 3",
	"frame 50", "wait 3",
	"frame 55", "wait 3",
	"frame 55", "wait 5",
	"frame 55",
	"unbreakable end", "wait 1",}
 
DefineAnimations("animations-bird", {
	Still = BirdStill,
	Move = BirdMove,
	Attack = {"unbreakable begin",
		"frame 30", "wait 2",
		"frame 35", "wait 2",
		"frame 40", "wait 1",
		"frame 40", "attack", "wait 1",
		"frame 35", "wait 2",
		"frame 30", "wait 2",
		"frame 5", "wait 3",
		"frame 10", "wait 3",
		"frame 15", "wait 3",
		"frame 20", "wait 3",
		"frame 25", "wait 3",
		"frame 0", "wait 3",
		"frame 5", "wait 3",
		"frame 10", "wait 3",
		"frame 15", "wait 3",
		"frame 20", "wait 3",
		"frame 25", "wait 3",
		"frame 30", "unbreakable end", "wait 1", },
	Death = BirdDeath,
})

--
-- Bee
--
 
local BeeStill = {
	"frame 0", "wait 3",
	"frame 5", "wait 3",
	"frame 10", "wait 3",
}
local BeeMove = {"unbreakable begin",
	"frame 0", "wait 3", "frame 0", "move 2", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 10", "move 1", "wait 3", "frame 10", "move 2", "wait 2",
	"frame 0", "move 1", "wait 3", "frame 0", "move 2", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 10", "move 1", "wait 3", "frame 10", "move 1",
	"frame 0", "wait 3", "frame 0", "move 2", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 10", "move 1", "wait 3", "frame 10", "move 2", "wait 2",
	"frame 0", "move 1", "wait 3", "frame 0", "move 2", "wait 2",
	"frame 5", "move 1", "wait 2", "frame 5", "move 2", "wait 2",
	"frame 10", "move 1", "wait 3", "frame 10", "move 1",
	"unbreakable end", "wait 1",}
	
DefineAnimations("animations-bee", {
	Still = BeeStill,
	Move = BeeMove,
	Attack = {"unbreakable begin",
		"frame 0", "wait 2",
		"frame 5", "wait 2",
		"frame 10", "wait 1",
		"frame 10", "attack", "wait 1",
		"frame 5", "wait 2",
		"frame 0", "wait 2",
		"frame 5", "wait 3",
		"frame 10", "wait 3",
		"frame 0", "wait 3",
		"frame 5", "wait 3",
		"frame 10", "wait 3",
		"frame 0", "wait 3",
		"frame 5", "wait 3",
		"frame 10", "wait 3",
		"frame 0", "wait 3",
		"frame 5", "wait 3",
		"frame 10", "wait 3",
		"frame 0", "unbreakable end", "wait 1", }
})

--
-- Frog
--

local FrogStill = {
--	"unbreakable begin",
	"frame 0", "wait 8",
	"frame 5", "wait 3",
	"frame 10", "wait 3",
	"frame 15", "wait 3",
	"frame 20", "wait 3",
	"frame 0", "wait 7",
	"frame 0",
--	"unbreakable end", "wait 1",
}

local FrogMove = {
	"unbreakable begin", "frame 25", "wait 1",
	"frame 25", "move 0", "wait 10",
	"frame 30", "move 5", "wait 3",
	"frame 35", "move 6", "wait 4",
	"frame 40", "move 7", "wait 4",
	"frame 45", "move 6", "wait 3",
	"frame 50", "move 5", "wait 3",
	"frame 55", "move 3", "wait 3",
	"frame 25", "unbreakable end", "wait 1",
}
local FrogDeath = {
	"unbreakable begin",
	"frame 90", "wait 70",
	"frame 95", "wait 100",
	"frame 100", "wait 100",
	"frame 100", "unbreakable end", "wait 1",
}

DefineAnimations("animations-frog", {
	Still = FrogStill,
	Move = FrogMove,
	Attack = {
		"unbreakable begin",
		"frame 60", "wait 7",
		"frame 65", "attack", "wait 2",
		"frame 70", "wait 1",
		"frame 75", "wait 1",
		"frame 80", "wait 3",
		"frame 85", "wait 3",
		"frame 0", "wait 3",
		"frame 0", "unbreakable end", "wait 1",
	},
	Death = FrogDeath,
})

--
-- Slime
--

local SlimeStill = {
	"frame 0", "wait 6", "frame 5", "wait 6", "frame 10", "wait 6",
}
local SlimeMove = {"unbreakable begin",
	"frame 15","move 1", "wait 2", "move 1", "wait 1",
	"move 1", "wait 2", "move 1", "wait 1",
	"frame 20", "move 1", "wait 2", "move 1", "wait 1",
	"move 1", "wait 2", "move 1", "wait 1",
	"frame 15", "move 1", "wait 2", "move 1", "wait 1",
	"move 1", "wait 2",
	"frame 15","move 1", "wait 2", "move 1", "wait 1",
	"move 1", "wait 2", "move 1", "wait 1",
	"frame 20", "move 1", "wait 2", "move 1", "wait 1",
	"move 1", "wait 2", "move 1", "wait 1",
	"frame 15", "move 1", "wait 2", "move 1", "wait 1",
	"move 1", "wait 1",
	"frame 15", "move 1", "wait 2", "move 1", "wait 1",
	"move 1", "wait 2", "move 1", "wait 1",
	"frame 20", "move 1", "wait 2",
	"move 1", "wait 2", "move 1", "wait 1",
	"frame 15", "move 1", "wait 2", "move 1", "wait 1",
	"move 1", "wait 1",
	"unbreakable end", "wait 1",}
	
local SlimeAttack = {
	"unbreakable begin",
  	"frame 15", "wait 6", "frame 20", "wait 6", "frame 25", "wait 6",
  	"frame 30", "attack", "wait 10", "frame 25", "wait 10", "frame 20", "wait 10", "frame 15",
	"unbreakable end", "wait 1",
}
local SlimeDeath = {"unbreakable begin",
	"frame 35", "wait 5", "frame 40", "wait 5", "frame 45", "wait 5",
	"unbreakable end", "wait 1",}

DefineAnimations("animations-slime", {
  Still = SlimeStill,
  Move = SlimeMove,
  Attack = SlimeAttack,
  Death = SlimeDeath,
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
	"frame 30", "attack", "wait 8",
	"frame 0",
	"unbreakable end", "wait 1", },
  Death = GryphonDeath,
})

DefineAnimations("animations-wyrm", {
	Still = {"frame 0", "wait 4", "random-goto 1 idle_animation", "random-goto 99 no-rotate", "random-rotate 1", "goto no-rotate",
		"label idle_animation","frame 0", "wait 6", "frame 105", "wait 6", "frame 110", "wait 6", "frame 105", "wait 6", "frame 0", "wait 6",
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
		"frame 55", "attack", "wait 3", "frame 60", "wait 3", "frame 65", "wait 5", "frame 65", "wait 29",
		"unbreakable end", "wait 1",},
	Death = {"unbreakable begin",
		"frame 70", "wait 5",
		"frame 75", "wait 5",
		"frame 70", "wait 5",
		"frame 75", "wait 5",
		"frame 80", "wait 5",
		"frame 85", "wait 5",
		"frame 90", "wait 10",
		"frame 95", "wait 70",
		"frame 100","wait 80", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-building", {
	Still = BuildingStill,
	Research = BuildingStill,
	Train = BuildingStill,
	Upgrade = {"frame 1", "wait 4", "frame 1", "wait 1",},
	Attack = {"unbreakable begin", "frame 0", "attack", "wait 59", "frame 0", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-stronghold", {
	Still = BuildingStill,
	Research = BuildingStill,
	Train = BuildingStill,
	Upgrade = {"frame 1", "wait 4", "frame 1", "wait 1",},
	Attack = {"unbreakable begin", "frame 0", "attack", "wait 8", "frame 0", "attack", "wait 51", "frame 0", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-fortress", {
	Still = BuildingStill,
	Research = BuildingStill,
	Train = BuildingStill,
	Upgrade = {"frame 1", "wait 4", "frame 1", "wait 1",},
	Attack = {"unbreakable begin", "frame 0", "attack", "wait 8", "frame 0", "attack", "wait 8", "frame 0", "attack", "wait 43", "frame 0", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-guard-tower", {
	Still = BuildingStill,
	Upgrade = {"frame 1", "wait 4", "frame 1", "wait 1",},
	Attack = {"unbreakable begin", "frame 0", "attack", "wait 59", "frame 0", "unbreakable end", "wait 1",},
})

local ActiveBuildingStill = {
	"label start",
	"if-var v.InsideCount.Value >= 1 active",
	"frame 0", "wait 4", "frame 0", "wait 1", "goto start",
	"label active", "frame 1", "wait 4", "frame 1", "wait 1"
}

local ActiveBuildingActive = {
	"frame 1", "wait 4", "frame 1", "wait 1",
}

DefineAnimations("animations-active-building", {
	Still = ActiveBuildingStill,
	Research = ActiveBuildingActive,
	Train = ActiveBuildingActive,
	Upgrade = {"frame 2", "wait 4", "frame 2", "wait 1",}
})

--
-- Mercenary Camp
--

DefineAnimations("animations-mercenary-camp", {
  Still = {"frame 0", "wait 6", "frame 1", "wait 6", "frame 2", "wait 6", "frame 0", "wait 1",},
  Research = {"frame 0", "wait 6", "frame 1", "wait 6", "frame 2", "wait 6", "frame 0", "wait 1",},
  Train = {"frame 0", "wait 6", "frame 1", "wait 6", "frame 2", "wait 6", "frame 0", "wait 1",},
  Upgrade = {"frame 1", "wait 4", "frame 1", "wait 1",},
})

DefineAnimations("animations-tree-stump", {
	Still = {
		"if-var v.Transport.Value >= 1 transport",
		"exact-frame 0", "wait 4", "exact-frame 0", "goto end",
		"label transport", 
		"exact-frame 2", "wait 4", "exact-frame 2", "goto end",
		"label end", 
		"wait 1",
	},
	Death = {"unbreakable begin",
		"frame 1",
		"wait 200", "exact-frame 1",
		"unbreakable end", "wait 1",
	}
})

DefineAnimations("animations-dwarven-dead-body", {
  Death = {"unbreakable begin", "frame 0", "wait 200", "frame 5", "wait 200", "frame 10", "wait 200",
    "frame 15", "wait 200", "frame 15", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-gnomish-dead-body", {
  Death = {"unbreakable begin", "frame 0", "wait 200", "frame 15", "wait 200", "frame 20", "wait 200",
    "frame 25", "wait 200", "frame 25", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-goblin-dead-body", {
  Death = {"unbreakable begin", "frame 5", "wait 200", "frame 15", "wait 200", "frame 20", "wait 200",
    "frame 25", "wait 200", "frame 25", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-kobold-dead-body", {
  Death = {"unbreakable begin", "frame 10", "wait 200", "frame 15", "wait 200", "frame 20", "wait 200",
    "frame 25", "wait 200", "frame 25", "unbreakable end", "wait 1",},
})

DefineAnimations("animations-dead-sea-body", {
	Death = {
		"unbreakable begin", "frame 30", "wait 100", "frame 30", "wait 100",
		"frame 30", "unbreakable end", "wait 1",
	}
})

DefineAnimations("animations-destroyed-place", {
  Death = {"unbreakable begin", "frame 0", "wait 200", "frame 1", "wait 200", "frame 1", "unbreakable end", "wait 1", },
})

--DefineAnimations("animations-destroyed-place-water", {
--  Death = {"unbreakable begin", "frame 2", "wait 200", "frame 3", "wait 200", "frame 1", "unbreakable end", "wait 1", },
--})

local DecorationStill = {
	"if-var v.Variation.Value == 0 variation_1",
	"if-var v.Variation.Value == 1 variation_2",
	"if-var v.Variation.Value == 2 variation_3",
	"if-var v.Variation.Value == 3 variation_4",
	"if-var v.Variation.Value == 4 variation_5",
	"if-var v.Variation.Value == 5 variation_6",
	"if-var v.Variation.Value == 6 variation_7",
	"if-var v.Variation.Value == 7 variation_8",
	"if-var v.Variation.Value == 8 variation_9",
	"if-var v.Variation.Value == 9 variation_10",
	"if-var v.Variation.Value == 10 variation_11",
	"if-var v.Variation.Value == 11 variation_12",
	"if-var v.Variation.Value == 12 variation_13",
	"if-var v.Variation.Value == 13 variation_14",
	"if-var v.Variation.Value == 14 variation_15",
	"if-var v.Variation.Value == 15 variation_16",
	"if-var v.Variation.Value == 16 variation_17",
	"if-var v.Variation.Value == 17 variation_18",
	"if-var v.Variation.Value == 18 variation_19",
	"if-var v.Variation.Value == 19 variation_20",
	"if-var v.Variation.Value == 20 variation_21",
	"if-var v.Variation.Value == 21 variation_22",
	"if-var v.Variation.Value == 22 variation_23",
	"if-var v.Variation.Value == 23 variation_24",
	"if-var v.Variation.Value == 24 variation_25",
	"if-var v.Variation.Value == 25 variation_26",
	"if-var v.Variation.Value == 26 variation_27",
	"if-var v.Variation.Value == 27 variation_28",
	"if-var v.Variation.Value == 28 variation_29",
	"if-var v.Variation.Value == 29 variation_30",
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
	"label variation_14", "frame 13", "goto end",
	"label variation_15", "frame 14", "goto end",
	"label variation_16", "frame 15", "goto end",
	"label variation_17", "frame 16", "goto end",
	"label variation_18", "frame 17", "goto end",
	"label variation_19", "frame 18", "goto end",
	"label variation_20", "frame 19", "goto end",
	"label variation_21", "frame 20", "goto end",
	"label variation_22", "frame 21", "goto end",
	"label variation_23", "frame 22", "goto end",
	"label variation_24", "frame 23", "goto end",
	"label variation_25", "frame 24", "goto end",
	"label variation_26", "frame 25", "goto end",
	"label variation_27", "frame 26", "goto end",
	"label variation_28", "frame 27", "goto end",
	"label variation_29", "frame 28", "goto end",
	"label variation_30", "frame 29", "goto end",
	"label end", "wait 1",}

DefineAnimations("animations-decoration", {
	Still = DecorationStill
})

DefineAnimations("animations-table", {
	Still = DecorationStill,
	Death = {
		"unbreakable begin",
		"label loop", 
		"exact-frame 30", "wait 100", "exact-frame 30", "goto loop",
		"unbreakable end", "wait 1",
	}
})

DefineAnimations("animations-chair", {
	Still = DecorationStill,
	Death = {
		"unbreakable begin",
		"label loop", 
		"exact-frame 4", "wait 100", "exact-frame 4", "goto loop",
		"unbreakable end", "wait 1",
	}
})

DefineAnimations("animations-bed", {
	Still = DecorationStill,
	Death = {
		"unbreakable begin",
		"label loop", 
		"exact-frame 2", "wait 100", "exact-frame 2", "goto loop",
		"unbreakable end", "wait 1",
	}
})

DefineAnimations("animations-volcanic-crater", {
	Attack = {
		"unbreakable begin",
		"exact-frame 0", "wait 8", "exact-frame 1", "wait 8", "exact-frame 2", "wait 8", "exact-frame 3", "wait 8",
		"exact-frame 4", "attack", "wait 8", "exact-frame 5", "wait 8", "exact-frame 6", "wait 8",
		"unbreakable end", "wait 1",
	},
	Still = {
		"exact-frame 0", "wait 8", "exact-frame 1", "wait 8", "exact-frame 2", "wait 8", "exact-frame 3", "wait 8",
		"exact-frame 4", "wait 8", "exact-frame 5", "wait 8", "exact-frame 6", "wait 8",
	},
})

DefineAnimations("animations-yale-excrement", {
	Still = {
		"frame 0", "wait 3",
		"frame 5", "wait 3",
		"frame 10", "wait 3",
		"frame 15", "wait 3",
		"frame 20", "wait 300",
		"frame 25", "wait 100",
		"frame 30", "wait 100",
		"die",
		"wait 1",
	}
})

DefineAnimations("animations-decoration-old", {
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
		"label variation_1_stage_1", "frame 0", "goto update_life_stage",
		"label variation_1_stage_2", "frame 1", "goto update_life_stage",
		"label variation_1_stage_3", "frame 2", "goto update_life_stage",
		"label variation_1_stage_4", "frame 3", "goto update_life_stage",
		"label variation_1_stage_5", "frame 4", "goto update_life_stage",
		"label variation_1_stage_6", "frame 5", "goto update_life_stage",
		"label variation_1_stage_7", "frame 6", "goto update_life_stage",
		"label variation_1_stage_8", "frame 7", "goto update_life_stage",
		"label variation_1_stage_9", "frame 8", "goto update_life_stage",
		"label variation_1_stage_10", "frame 9", "goto update_life_stage",
		"label variation_1_stage_11", "frame 10", "goto update_life_stage",
		"label variation_1_stage_12", "frame 11", "goto update_life_stage",
		"label variation_1_stage_13", "frame 12", "goto update_life_stage",
		"label variation_2_stage_1", "frame 13", "goto update_life_stage",
		"label variation_2_stage_2", "frame 14", "goto update_life_stage",
		"label variation_2_stage_3", "frame 15", "goto update_life_stage",
		"label variation_2_stage_4", "frame 16", "goto update_life_stage",
		"label variation_2_stage_5", "frame 17", "goto update_life_stage",
		"label variation_2_stage_6", "frame 18", "goto update_life_stage",
		"label variation_2_stage_7", "frame 19", "goto update_life_stage",
		"label variation_2_stage_8", "frame 20", "goto update_life_stage",
		"label variation_2_stage_9", "frame 21", "goto update_life_stage",
		"label variation_2_stage_10", "frame 22", "goto update_life_stage",
		"label variation_2_stage_11", "frame 23", "goto update_life_stage",
		"label variation_2_stage_12", "frame 24", "goto update_life_stage",
		"label variation_2_stage_13", "frame 25", "goto update_life_stage",
		"label variation_3_stage_1", "frame 26", "goto update_life_stage",
		"label variation_3_stage_2", "frame 27", "goto update_life_stage",
		"label variation_3_stage_3", "frame 28", "goto update_life_stage",
		"label variation_3_stage_4", "frame 29", "goto update_life_stage",
		"label variation_3_stage_5", "frame 30", "goto update_life_stage",
		"label variation_3_stage_6", "frame 31", "goto update_life_stage",
		"label variation_3_stage_7", "frame 32", "goto update_life_stage",
		"label variation_3_stage_8", "frame 33", "goto update_life_stage",
		"label variation_3_stage_9", "frame 34", "goto update_life_stage",
		"label variation_3_stage_10", "frame 35", "goto update_life_stage",
		"label variation_3_stage_11", "frame 36", "goto update_life_stage",
		"label variation_3_stage_12", "frame 37", "goto update_life_stage",
		"label variation_3_stage_13", "frame 38", "goto update_life_stage",
		"label variation_4_stage_1", "frame 39", "goto update_life_stage",
		"label variation_4_stage_2", "frame 40", "goto update_life_stage",
		"label variation_4_stage_3", "frame 41", "goto update_life_stage",
		"label variation_4_stage_4", "frame 42", "goto update_life_stage",
		"label variation_4_stage_5", "frame 43", "goto update_life_stage",
		"label variation_4_stage_6", "frame 44", "goto update_life_stage",
		"label variation_4_stage_7", "frame 45", "goto update_life_stage",
		"label variation_4_stage_8", "frame 46", "goto update_life_stage",
		"label variation_4_stage_9", "frame 47", "goto update_life_stage",
		"label variation_4_stage_10", "frame 48", "goto update_life_stage",
		"label variation_4_stage_11", "frame 49", "goto update_life_stage",
		"label variation_4_stage_12", "frame 50", "goto update_life_stage",
		"label variation_4_stage_13", "frame 51", "goto update_life_stage",
		"label update_life_stage", "wait 750", "set-var LifeStage.Value += 1",
		"if-var v.LifeStage.Value < 13 end", "set-var LifeStage.Value = 1", -- reset lifestage if it is 13 or more
		"label end", "wait 1",
	},
})

DefineAnimations("animations-item", {
	Still = BuildingStill,
	Death = BuildingStill,
})

DefineAnimations("animations-potion", {
	Still = BuildingStill,
	Death = {
		"unbreakable begin",
		"exact-frame 0", "wait 3", "exact-frame 1", "wait 3", "exact-frame 2", "wait 100", "exact-frame 3", "wait 100", "exact-frame 4",
		"unbreakable end", "wait 1",
	},
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
	"unbreakable end", "wait 1",}
})

DefineAnimations("animations-door", {
	Still = {
		"if-var v_HitPoints.Percent <= 50 damaged_50",
		"if-var v_HitPoints.Percent <= 75 damaged_25",
		"frame 0", "wait 4", "frame 0", "goto end",
		"label damaged_50", "frame 2", "wait 4", "frame 2", "goto end",
		"label damaged_25", "frame 1", "wait 4", "frame 1", "goto end",
		"label end", "wait 1",
	},
	Death = {"unbreakable begin",
	"frame 3", "wait 3", "frame 4",
	"label loop", 
	"wait 100", "frame 4", "goto loop",
	"unbreakable end", "wait 1",}
})

DefineAnimations("animations-alchemy-bench", {
	--[[
	Still = {
		"exact-frame 0", "wait 8", "random-goto 1 use", "goto end",
		"label use",
		"exact-frame 2", "wait 8", "exact-frame 1", "wait 8", "exact-frame 2", "wait 8", "exact-frame 1", "wait 8", "exact-frame 2", "wait 8", "exact-frame 3", "wait 8", "exact-frame 4", "wait 8", "exact-frame 5", "wait 8", "exact-frame 6", "wait 8", "exact-frame 7", "wait 8",
		"label end",
	}
	--]]
	Still = {
		"exact-frame 2", "wait 8", "exact-frame 1", "wait 8", "exact-frame 2", "wait 8", "exact-frame 1", "wait 8", "exact-frame 2", "wait 8", "exact-frame 3", "wait 8", "exact-frame 4", "wait 8", "exact-frame 5", "wait 8", "exact-frame 6", "wait 8", "exact-frame 7", "wait 8",
	}
})

DefineAnimations("animations-trap", {
	Still = BuildingStill,
	Death = {"unbreakable begin",
		"frame 0", "wait 5", "frame 1", "wait 2", "frame 2", "wait 100", "frame 2",
		"unbreakable end", "wait 1",
	}
})

--
-- Roaming Fog
--

DefineAnimations("animations-roaming-fog", {
	Still = BuildingStill,
	Move = {
		"unbreakable begin",
		"exact-frame 0","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 0","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 0","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 0","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 1","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 1","move 1", "wait 2",
		"exact-frame 1","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 1","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 2","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 2","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 2","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 2","move 1", "wait 1",
		"exact-frame 2","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 1","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 1","move 1", "wait 2",
		"exact-frame 1","move 1", "wait 2", "move 1", "wait 1",
		"exact-frame 1", "move 1", "wait 2", "move 1", "wait 1",
		"move 1", "wait 1",
		"unbreakable end", "wait 1",
	}
})

DefineAnimations("animations-raft", {
	Still = BuildingStill,
	Move = {
		"unbreakable begin",
		"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
		"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
		"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
		"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
		"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
		"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
		"frame 0", "move 2", "wait 1", "frame 0", "move 2", "wait 1",
		"frame 0", "move 2", "wait 1", "frame 0", "move 2",
		"unbreakable end", "wait 1",
	},
	Death = BuildingStill,
})

MinecartMining = {
	"frame 0", "wait 4", "frame 5", "wait 5",
	"frame 0", "wait 5", "frame 5", "wait 5",
	"frame 0", "wait 5", "frame 5", "wait 5",
	"frame 0",
	"wait 1",
}

DefineAnimations("animations-minecart", {
	Still = {"frame 0", "wait 4", "frame 0", "wait 1",},
	Move = {
		"unbreakable begin",
		"if-var v.Speed.Value <= 5 speed_5",
		"if-var v.Speed.Value == 6 speed_6",
		"if-var v.Speed.Value == 7 speed_7",
		"if-var v.Speed.Value >= 8 speed_8",
		"label speed_5", -- 16 / (5 / 10) = 32 waits
		"frame 0", "move 5", "wait 4", "frame 5", "move 5", "wait 5",
		"frame 0", "move 6", "wait 6", "frame 5", "move 6", "wait 6",
		"frame 0", "move 5", "wait 5", "frame 5", "move 5", "wait 5",
		"frame 0", "goto end",
		"label speed_6", -- 16 / (6 / 10) = c. 26 waits
		"frame 0", "move 5", "wait 3", "frame 5", "move 5", "wait 4",
		"frame 0", "move 6", "wait 5", "frame 5", "move 6", "wait 5",
		"frame 0", "move 5", "wait 4", "frame 5", "move 5", "wait 4",
		"frame 0", "goto end",
		"label speed_7", -- 16 / (7 / 10) = c. 22 waits
		"frame 0", "move 5", "wait 2", "frame 5", "move 5", "wait 4",
		"frame 0", "move 6", "wait 4", "frame 5", "move 6", "wait 4",
		"frame 0", "move 5", "wait 3", "frame 5", "move 5", "wait 4",
		"frame 0", "goto end",
		"label speed_8", -- 16 / (8 / 10) = 20 waits
		"frame 0", "move 5", "wait 2", "frame 5", "move 5", "wait 3",
		"frame 0", "move 6", "wait 4", "frame 5", "move 6", "wait 4",
		"frame 0", "move 5", "wait 3", "frame 5", "move 5", "wait 3",
		"frame 0", "goto end",
		"label end", "unbreakable end", "wait 1",
	},
	Harvest_gold = MinecartMining,
	Harvest_silver = MinecartMining,
	Harvest_copper = MinecartMining,
	Harvest_iron = MinecartMining,
	Harvest_mithril = MinecartMining,
	Harvest_diamonds = MinecartMining,
	Harvest_emeralds = MinecartMining,
	Death = {
		"unbreakable begin", "frame 10", "wait 3", "frame 15", "wait 3", "frame 20", "wait 3", "frame 25", "wait 100",
		"frame 25", "unbreakable end", "wait 1",
	}
})

DefineAnimations("animations-transport-ship", {
	Still = {"frame 0", "wait 4", "frame 0", "wait 1",},
	Move = ShipMove,
	Attack = {"unbreakable begin", "frame 0", "attack", "wait 119", "frame 0", "unbreakable end", "wait 1",},
	Death = {"unbreakable begin", "frame 5", "wait 50", "frame 10", "wait 50", "frame 10", "unbreakable end", "wait 1",}
})

DefineAnimations("animations-siege-warship", {
	Still = {"frame 0", "wait 4", "frame 0", "wait 1",},
	Move = ShipMove,
	Attack = {"unbreakable begin", "frame 0", "attack", "wait 119", "frame 0", "unbreakable end", "wait 1",},
	Death = {"unbreakable begin", "frame 5", "wait 50", "frame 10", "wait 50", "frame 10", "unbreakable end", "wait 1",}
})

DefineAnimations("animations-portal", {
	Still = {"frame 0", "wait 5", "frame 1", "wait 5", "frame 2", "wait 5", "frame 3", "wait 5", "frame 4", "wait 5", "frame 5", "wait 5", "frame 6", "wait 5", "frame 7", "wait 5", "frame 8", "wait 5", "frame 9", "wait 5", "frame 10", "wait 5", "frame 11", "wait 5", "frame 0", "wait 1",},
	Research = {"frame 0", "wait 5", "frame 1", "wait 5", "frame 2", "wait 5", "frame 3", "wait 5", "frame 4", "wait 5", "frame 5", "wait 5", "frame 6", "wait 5", "frame 7", "wait 5", "frame 8", "wait 5", "frame 9", "wait 5", "frame 10", "wait 5", "frame 11", "wait 5", "frame 0", "wait 1",},
	Train = {"frame 0", "wait 5", "frame 1", "wait 5", "frame 2", "wait 5", "frame 3", "wait 5", "frame 4", "wait 5", "frame 5", "wait 5", "frame 6", "wait 5", "frame 7", "wait 5", "frame 8", "wait 5", "frame 9", "wait 5", "frame 10", "wait 5", "frame 11", "wait 5", "frame 0", "wait 1",},
	Upgrade = {"frame 0", "wait 5", "frame 1", "wait 5", "frame 2", "wait 5", "frame 3", "wait 5", "frame 4", "wait 5", "frame 5", "wait 5", "frame 6", "wait 5", "frame 7", "wait 5", "frame 8", "wait 5", "frame 9", "wait 5", "frame 10", "wait 5", "frame 11", "wait 5", "frame 0", "wait 1",}
})
