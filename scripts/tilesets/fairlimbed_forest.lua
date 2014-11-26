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
--      fairlimbed_forest.ccl - Define the fairlimbed forest tileset.
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
DefineTileset("name", "Fairlimbed Forest",
  "image", "tilesets/forest/terrain/forest.png",
  -- Slots descriptions
  "slots", { "special", {
    "top-one-tree", 48, "mid-one-tree", 64, "bot-one-tree", 80,
    "removed-tree", 16,
    "growing-tree", { -1, -1, },
    "top-one-rock", 158, "mid-one-rock", 159, "bot-one-rock", 160,
    "removed-rock", 163, },
  "solid", { "unused",
    {}},								-- 000
  "solid", { "shallow-water", "water",
    { 324, 325, 325, 326}},						-- 010
  "solid", { "unused",
    {}},								-- 020
  "solid", { "dirt", "land", "no-building",
    { 330, 331, 332, 330}},						-- 030
  "solid", { "dark-dirt", "land", "no-building",
    { 333, 334, 335, 333}},						-- 040
  "solid", { "grass", "land",
    { 346, 347, 348, 346}},						-- 050
  "solid", { "dark-grass", "land",
    { 349, 350, 351, 349}},						-- 060
  "solid", { "fairlimbed-tree", "image", "tilesets/fairlimbed_forest/terrain/fairlimbed_tree.png", "land", "forest", "unpassable",
    { 18, 18, 18, 18}},							-- 070
  "solid", { "rock", "land", "rock", "unpassable",
    { 162, 174, 175, 162}},						-- 080
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
    { 177, 177},								-- 100
    { 178, 178},								-- 110
    { 179, 180, 181},							-- 120
    { 182, 182},								-- 130
    { 183, 184, 185},							-- 140
    { 186, 187},								-- 150
    { 188, 188},								-- 160
    { 189, 189},								-- 170
    { 190, 191},								-- 180
    { 192, 193, 194},							-- 190
    { 195, 195},								-- 1A0
    { 196, 197, 198},							-- 1B0
    { 199, 199},								-- 1C0
    { 200, 200},								-- 1D0
    {},											-- 1E0
    {}},										-- 1F0
  "mixed", { "shallow-water", "dirt", "coast",
    { 201, 202, 201},							-- 200
    { 203, 204, 203},							-- 210
    { 205, 206, 207},							-- 220
    { 208, 209, 208},							-- 230
    { 210, 211, 212},							-- 240
    { 213, 213, 213},							-- 250
    { 214, 215, 214},							-- 260
    { 216, 217, 216},							-- 270
    { 218, 218, 218},							-- 280
    { 219, 220, 221},							-- 290
    { 222, 223, 222},							-- 2A0
    { 224, 225, 226},							-- 2B0
    { 227, 228, 227},							-- 2C0
    { 229, 230, 229},							-- 2D0
    {},											-- 2E0
    {}},										-- 2F0
  "mixed", { "dark-dirt", "dirt", "land", "no-building",
    { 279, 288, 279},							-- 300
    { 296, 297, 296},							-- 310
    { 298, 299, 300},							-- 320
    { 301, 301, 301},							-- 330
    { 302, 303, 304},							-- 340
    { 305, 306, 305},							-- 350
    { 307, 308, 307},							-- 360
    { 309, 309, 309},							-- 370
    { 310, 311, 310},							-- 380
    { 312, 313, 314},							-- 390
    { 315, 316, 315},							-- 3A0
    { 317, 318, 319},							-- 3B0
    { 320, 321, 320},							-- 3C0
    { 322, 323, 322},							-- 3D0
    {},											-- 3E0
    {}},										-- 3F0
  "mixed", { "rock", "dirt", "land", "rock", "unpassable",
    { 147, 170, 147},							-- 400
    { 139, 164, 139},							-- 410
    { 161, 173, 137},							-- 420
    { 144, 168, 144},							-- 430
    { 146, 169, 127},							-- 440
    { 151, 172, 151},							-- 450
    { 148, 134, 148},							-- 460
    { 141, 166, 141},							-- 470
    { 150, 171, 150},							-- 480
    { 140, 165, 138},							-- 490
    { 149, 130, 149},							-- 4A0
    { 143, 167, 176},							-- 4B0
    { 145, 131, 145},							-- 4C0
    { 142, 129, 142},							-- 4D0
    {},											-- 4E0
    {}},										-- 4F0
  "mixed", { "dirt", "grass", "land", "no-building",
    { 264, 265, 264},							-- 500
    { 266, 267, 266},							-- 510
    { 268, 269, 270},							-- 520
    { 271, 272, 271},							-- 530
    { 273, 274, 275},							-- 540
    { 276, 277, 276},							-- 550
    { 278, 278, 278},							-- 560
    { 280, 281, 280},							-- 570
    { 282, 283, 282},							-- 580
    { 284, 285, 286},							-- 590
    { 287, 287, 287},							-- 5A0
    { 289, 290, 291},							-- 5B0
    { 292, 293, 292},							-- 5C0
    { 294, 295, 294},							-- 5D0
    {},											-- 5E0
    {}},										-- 5F0
  "mixed", { "dark-grass", "grass", "land",
    { 239, 240, 239},							-- 600
    { 237, 238, 237},							-- 610
    { 244, 245, 246},							-- 620
    { 235, 236, 235},							-- 630
    { 250, 251, 252},							-- 640
    { 261, 262, 261},							-- 650
    { 253, 253, 253},							-- 660
    { 233, 234, 233},							-- 670
    { 259, 260, 259},							-- 680
    { 247, 248, 249},							-- 690
    { 254, 254, 254},							-- 6A0
    { 241, 242, 243},							-- 6B0
    { 255, 256, 255},							-- 6C0
    { 257, 258, 257},							-- 6D0
    {},											-- 6E0
    {}},										-- 6F0
  "mixed", { "fairlimbed-tree", "grass", "land", "forest", "unpassable",
    { 35, 35, 35},								-- 700
    { 33, 36, 33},								-- 710
    { 34, 37, 34},								-- 720
    { 3, 3, 3},									-- 730
    { 19, 19, 19},								-- 740
    { 30, 30, 30},								-- 750
    { 27, 27, 27},								-- 760
    { 1, 1, 1},									-- 770
    { 14, 14, 14},								-- 780
    { 17, 17, 17},								-- 790
    { 26, 26, 26},								-- 7A0
    { 2, 2, 2},									-- 7B0
    { 11, 11, 11},								-- 7C0
    { 10, 10, 10},								-- 7D0
    {},											-- 7E0
    {}}											-- 7F0
  })

BuildTilesetTables()

wyrmsun.tileset = "fairlimbed_forest"
Load("scripts/scripts.lua")

