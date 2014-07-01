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
    "top-one-rock", 173, "mid-one-rock", 174, "bot-one-rock", 175,
    "removed-rock", 152, },
  "solid", { "unused",
    {}},								-- 000
  "solid", { "unused",
    {}},								-- 010
  "solid", { "unused",
    {}},								-- 020
  "solid", { "rockbound-cave-floor", "land", "no-building",
    { 432, 433, 434}},							-- 030
  "solid", { "unused",
    {}},								-- 040
  "solid", { "floor", "land",
    { 464, 465, 466, 467}},						-- 050
  "solid", { "gold-pile", "land",
    { 480, 481, 482, 483, 484}},					-- 060
  "solid", { "unused",
    {}},								-- 070
  "solid", { "cave-wall", "land", "air-unit", "rock", "unpassable",
    { 151, 151, 151, 151}},						-- 080
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
  "mixed", { "cave-wall", "rockbound-cave-floor", "land", "air-unit", "rock", "unpassable",
    { 136, 159, 172},							-- 400
    { 128, 153, 171},							-- 410
    { 150, 162, 167},							-- 420
    { 133, 157, 170},							-- 430
    { 135, 158, 168},							-- 440
    { 140, 161},							-- 450
    { 137, 137},							-- 460
    { 130, 155, 169},							-- 470
    { 139, 160},							-- 480
    { 129, 141, 154},							-- 490
    { 138, 138},							-- 4A0
    { 132, 156, 166},							-- 4B0
    { 134, 134},							-- 4C0
    { 131, 131},							-- 4D0
    {},									-- 4E0
    {}},								-- 4F0
  "mixed", { "rockbound-cave-floor", "floor", "land", "no-building",
    { 272, 272},							-- 500
    { 274, 274},							-- 510
    { 276, 277, 278},							-- 520
    { 279, 279},							-- 530
    { 281, 282, 283},							-- 540
    { 284, 285},							-- 550
    { 286, 287},							-- 560
    { 288, 288},							-- 570
    { 290, 291},							-- 580
    { 292, 293, 294},							-- 590
    { 295, 296},							-- 5A0
    { 297, 298, 299},							-- 5B0
    { 300, 301},							-- 5C0
    { 302, 303},							-- 5D0
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

