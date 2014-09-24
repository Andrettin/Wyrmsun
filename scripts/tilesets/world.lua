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
--      world.ccl - Define the world tileset.
--
--      (c) Copyright 2000-2003 by Lutz Sammer and Jimmy Salmon
--
--      This program is free software-- you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation-- either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY-- without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program-- if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

--=============================================================================
--	Define a tileset
--
--	(define-tileset ident class name image palette slots animations)
--
DefineTileset("name", "World",
  "image", "tilesets/world/terrain/cave.png",
  "size", {64, 64},
  -- Slots descriptions
  "slots", { "special", {
    "top-one-tree", 121, "mid-one-tree", 122, "bot-one-tree", 123,
    "removed-tree", 126,
    "growing-tree", { -1, -1, },
    "top-one-rock", 173, "mid-one-rock", 174, "bot-one-rock", 175,
    "removed-rock", 152, },
  "solid", { "unused",
    {}},								-- 000
  "solid", { "shallow-water", "water",
    { 400, 401, 402, 400 }},						-- 010
  "solid", { "unused",
    {}},								-- 020
  "solid", { "rockbound-cave-floor", "land", "no-building",
    { 432, 433, 434, 432}},						-- 030
  "solid", { "unused",
    {}},								-- 040
  "solid", { "cave-floor", "land",
    { 464, 465, 466, 464}},						-- 050
  "solid", { "unused",
    {}},								-- 060
  "solid", { "unused",
    {}},								-- 070
  "solid", { "mountains", "image", "tilesets/world/terrain/mountains.png", "land", "rock", "unpassable",
    { 17, 20, 23, 17}},							-- 080
  "solid", { "unused",
    {}},								-- 090
  "solid", { "unused",
    {}},								-- 0A0
  "solid", { "unused",
    {}},								-- 0B0
  "solid", { "unused",
    {}},								-- 0C0
  "solid", { "unused",
    {}},								-- 0D0
  "solid", { "unused",
    {}},								-- 0E0
  "solid", { "unused",
    {}},								-- 0F0
  "mixed", { "deep-water", "shallow-water", "water",
    { 201, 202},							-- 100
    { 203, 204},							-- 110
    { 205, 206, 207},							-- 120
    { 208, 209},							-- 130
    { 210, 211, 212},							-- 140
    { 213, 213},							-- 150
    { 214, 215},							-- 160
    { 216, 217},							-- 170
    { 218, 218},							-- 180
    { 219, 220, 221},							-- 190
    { 222, 223},							-- 1A0
    { 224, 225, 226},							-- 1B0
    { 227, 228},							-- 1C0
    { 229, 230},							-- 1D0
    {},									-- 1E0
    {}},								-- 1F0
  "mixed", { "shallow-water", "rockbound-cave-floor", "coast",
    { 240, 241, 240},							-- 200
    { 242, 243, 242},							-- 210
    { 244, 245, 246},							-- 220
    { 247, 248, 247},							-- 230
    { 249, 250, 251},							-- 240
    { 252, 270, 252},							-- 250
    { 253, 254, 253},							-- 260
    { 255, 256, 255},							-- 270
    { 257, 271, 257},							-- 280
    { 258, 259, 260},							-- 290
    { 261, 262, 261},							-- 2A0
    { 263, 264, 265},							-- 2B0
    { 266, 267, 266},							-- 2C0
    { 268, 269, 268},							-- 2D0
    {},									-- 2E0
    {}},								-- 2F0
  "mixed", { "dark-rockbound-cave-floor", "rockbound-cave-floor", "land", "no-building",
    { 177, 177, 177},							-- 300
    { 178, 178, 178},							-- 310
    { 179, 180, 181},							-- 320
    { 182, 182, 182},							-- 330
    { 183, 184, 185},							-- 340
    { 186, 187, 186},							-- 350
    { 188, 188, 188},							-- 360
    { 189, 189, 189},							-- 370
    { 190, 191, 190},							-- 380
    { 192, 193, 194},							-- 390
    { 195, 195, 195},							-- 3A0
    { 196, 197, 198},							-- 3B0
    { 199, 199, 199},							-- 3C0
    { 200, 200, 200},							-- 3D0
    {},									-- 3E0
    {}},								-- 3F0
  "mixed", { "mountains", "rockbound-cave-floor", "land", "rock", "unpassable",
    { 34, 37, 34},							-- 400
    { 32, 35, 32},							-- 410
    { 33, 36, 39},							-- 420
    { 2, 5, 2},								-- 430
    { 18, 21, 24},							-- 440
    { 29, 30, 29},							-- 450
    { 26, 28, 26},							-- 460
    { 3, 6, 3},								-- 470
    { 13, 14, 13},							-- 480
    { 16, 19, 22},							-- 490
    { 25, 27, 25},							-- 4A0
    { 1, 4, 7},								-- 4B0
    { 10, 12, 10},							-- 4C0
    { 9, 11, 9},							-- 4D0
    {},									-- 4E0
    {}},								-- 4F0
  "mixed", { "rockbound-cave-floor", "cave-floor", "land", "no-building",
    { 272, 273, 272},							-- 500
    { 274, 275, 274},							-- 510
    { 276, 277, 278},							-- 520
    { 279, 280, 279},							-- 530
    { 281, 282, 283},							-- 540
    { 284, 285, 284},							-- 550
    { 286, 302, 286},							-- 560
    { 287, 288, 287},							-- 570
    { 289, 290, 289},							-- 580
    { 291, 292, 293},							-- 590
    { 294, 303, 294},							-- 5A0
    { 295, 296, 297},							-- 5B0
    { 298, 299, 298},							-- 5C0
    { 300, 301, 300},							-- 5D0
    {},									-- 5E0
    {}},								-- 5F0
  })

BuildTilesetTables()

wyrmsun.tileset = "cave"
Load("scripts/scripts.lua")

ClearAllColorCyclingRange()
