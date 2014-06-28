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
--      dungeon.ccl - Define the dungeon tileset.
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
DefineTileset("name", "Dungeon",
  "image", "tilesets/dungeon/terrain/dungeon.png",
  -- Slots descriptions
  "slots", { "special", {
    "top-one-tree", 121, "mid-one-tree", 122, "bot-one-tree", 123,
    "removed-tree", 126,
    "growing-tree", { -1, -1, },
    "top-one-rock", 158, "mid-one-rock", 159, "bot-one-rock", 160,
    "removed-rock", 163, },
  "solid", { "unused",
    {}},								-- 000
  "solid", { "unused",
    {}},								-- 010
  "solid", { "unused",
    {}},								-- 020
  "solid", { "unused",
    {}},								-- 030
  "solid", { "unused",
    {}},								-- 040
  "solid", { "floor", "land",
    { 464, 465, 466, 467}},						-- 050
  "solid", { "gold-pile", "land",
    { 480, 481, 482, 483, 484}},					-- 060
  "solid", { "unused",
    {}},								-- 070
  "solid", { "unused",
    {}},								-- 080
  "solid", { "dwarf-closed-wall", "land", "human", "wall", "unpassable",
    {  16, 18, 19, 20,   0,  16, 18, 19, 20,   0, 464, 465, 466, 467}},	-- 090
  "solid", { "unused",
    {}},								-- 0A0
  "solid", { "dwarf-open-wall", "land", "human", "wall", "unpassable",
    {  17, 21, 22, 23,   0,  17, 21, 22, 23,   0, 464, 465, 466, 467}},	-- 0B0
  "solid", { "unused",
    {}},								-- 0C0
  "solid", { "unused",
    {}},								-- 0D0
  "solid", { "unused",
    {}},								-- 0E0
  "solid", { "unused",
    {}},								-- 0F0
  "mixed", { "deep-water", "shallow-water", "water",
    { 177, 177},							-- 100
    { 178, 178},							-- 110
    { 179, 180, 181},							-- 120
    { 182, 182},							-- 130
    { 183, 184, 185},							-- 140
    { 186, 187},							-- 150
    { 188, 188},							-- 160
    { 189, 189},							-- 170
    { 190, 191},							-- 180
    { 192, 193, 194},							-- 190
    { 195, 195},							-- 1A0
    { 196, 197, 198},							-- 1B0
    { 199, 199},							-- 1C0
    { 200, 200},							-- 1D0
    {},									-- 1E0
    {}},								-- 1F0
  "mixed", { "shallow-water", "dirt", "coast",
    { 201, 202},							-- 200
    { 203, 204},							-- 210
    { 205, 206, 207},							-- 220
    { 208, 209},							-- 230
    { 210, 211, 212},							-- 240
    { 213, 213},							-- 250
    { 214, 215},							-- 260
    { 216, 217},							-- 270
    { 218, 218},							-- 280
    { 219, 220, 221},							-- 290
    { 222, 223},							-- 2A0
    { 224, 225, 226},							-- 2B0
    { 227, 228},							-- 2C0
    { 229, 230},							-- 2D0
    {},									-- 2E0
    {}},								-- 2F0
  "mixed", { "dark-dirt", "dirt", "land", "no-building",
    { 239, 240},							-- 300
    { 237, 238},							-- 310
    { 244, 245, 246},							-- 320
    { 235, 236},							-- 330
    { 250, 251, 252},							-- 340
    { 261, 262},							-- 350
    { 253, 253},							-- 360
    { 233, 234},							-- 370
    { 259, 260},							-- 380
    { 247, 248, 249},							-- 390
    { 254, 254},							-- 3A0
    { 241, 242, 243},							-- 3B0
    { 255, 256},							-- 3C0
    { 257, 258},							-- 3D0
    {},									-- 3E0
    {}},								-- 3F0
  "mixed", { "rock", "dirt", "land", "rock", "unpassable",
    { 147, 170},							-- 400
    { 139, 164},							-- 410
    { 161, 173, 137},							-- 420
    { 144, 168},							-- 430
    { 146, 169, 127},							-- 440
    { 151, 172},							-- 450
    { 148, 134},							-- 460
    { 141, 166},							-- 470
    { 150, 171},							-- 480
    { 140, 165, 138},							-- 490
    { 149, 130},							-- 4A0
    { 143, 167, 176},							-- 4B0
    { 145, 131},							-- 4C0
    { 142, 129},							-- 4D0
    {},									-- 4E0
    {}},								-- 4F0
  "mixed", { "dirt", "floor", "land", "no-building",
    { 264, 265},							-- 500
    { 266, 267},							-- 510
    { 268, 269, 270},							-- 520
    { 271, 272},							-- 530
    { 273, 274, 275},							-- 540
    { 276, 277},							-- 550
    { 278, 278},							-- 560
    { 280, 281},							-- 570
    { 282, 283},							-- 580
    { 284, 285, 286},							-- 590
    { 287, 287},							-- 5A0
    { 289, 290, 291},							-- 5B0
    { 292, 293},							-- 5C0
    { 294, 295},							-- 5D0
    {},									-- 5E0
    {}},								-- 5F0
  "mixed", { "gold-pile", "floor", "land",
    { 304, 304},							-- 600
    { 306, 306},							-- 610
    { 308, 309, 310},							-- 620
    { 311, 311},							-- 630
    { 313, 314, 315},							-- 640
    { 316, 317},							-- 650
    { 318, 319},							-- 660
    { 320, 320},							-- 670
    { 322, 323},							-- 680
    { 324, 325, 326},							-- 690
    { 327, 328},							-- 6A0
    { 329, 330, 331},							-- 6B0
    { 332, 333},							-- 6C0
    { 334, 335},							-- 6D0
    {},									-- 6E0
    {}},								-- 6F0
  "mixed", { "tree", "floor", "land", "forest", "unpassable",
    { 110, 110},							-- 700
    { 102, 102},							-- 710
    { 124, 124},							-- 720
    { 107, 107},							-- 730
    { 109, 109},							-- 740
    { 114, 114},							-- 750
    { 111, 111},							-- 760
    { 104, 104},							-- 770
    { 113, 113},							-- 780
    { 103, 103},							-- 790
    { 112, 112},							-- 7A0
    { 106, 106},							-- 7B0
    { 108, 108},							-- 7C0
    { 105, 105},							-- 7D0
    {},									-- 7E0
    {}},								-- 7F0
  "mixed", { "dwarf-wall", "gold-pile", "land", "human", "wall", "unpassable",
    {  17, 21, 22, 23,   0,  17, 21, 22, 23,   0,  464, 465, 466, 467},	-- 800
    {  16, 18, 19, 20,   0,  16, 18, 19, 20,   0,  464, 465, 466, 467},	-- 810
    {  17, 21, 22, 23,   0,  17, 21, 22, 23,   0,  464, 465, 466, 467},	-- 820
    {  16, 18, 19, 20,   0,  16, 18, 19, 20,   0,  464, 465, 466, 467},	-- 830
    {  17, 21, 22, 23,   0,  17, 21, 22, 23,   0,  464, 465, 466, 467},	-- 840
    {  16, 18, 19, 20,   0,  16, 18, 19, 20,   0,  464, 465, 466, 467},	-- 850
    {  17, 21, 22, 23,   0,  17, 21, 22, 23,   0,  464, 465, 466, 467},	-- 860
    {  16, 18, 19, 20,   0,  16, 18, 19, 20,   0,  464, 465, 466, 467},	-- 870
    {  17, 21, 22, 23,   0,  17, 21, 22, 23,   0,  464, 465, 466, 467},	-- 880
    {  16, 18, 19, 20,   0,  16, 18, 19, 20,   0,  464, 465, 466, 467},	-- 890
    {  17, 21, 22, 23,   0,  17, 21, 22, 23,   0,  464, 465, 466, 467},	-- 8A0
    {  16, 18, 19, 20,   0,  16, 18, 19, 20,   0,  464, 465, 466, 467},	-- 8B0
    {  17, 21, 22, 23,   0,  17, 21, 22, 23,   0,  464, 465, 466, 467},	-- 8C0
    {  16, 18, 19, 20,   0,  16, 18, 19, 20,   0,  464, 465, 466, 467},	-- 8D0
    {},									-- 8E0
    {}}									-- 8F0
  })

BuildTilesetTables()

wyrmsun.tileset = "dungeon"
Load("scripts/scripts.lua")

