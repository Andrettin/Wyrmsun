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
--      cave.ccl - Define the cave tileset.
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
DefineTileset("name", "Cave",
  "image", "tilesets/cave/terrain/cave.png",
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
  "solid", { "rockbound-cave-floor", "land", "no-building",
    { 432, 433, 434}},							-- 030
  "solid", { "unused",
    {}},								-- 040
  "solid", { "cave-floor", "land",
    { 464, 465, 466}},							-- 050
  "solid", { "unused",
    {}},								-- 060
  "solid", { "unused",
    {}},								-- 070
  "solid", { "unused",
    {}},								-- 080
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
  "mixed", { "dark-rockbound-cave-floor", "rockbound-cave-floor", "land", "no-building",
    { 177, 177},							-- 300
    { 178, 178},							-- 310
    { 179, 180, 181},							-- 320
    { 182, 182},							-- 330
    { 183, 184, 185},							-- 340
    { 186, 187},							-- 350
    { 188, 188},							-- 360
    { 189, 189},							-- 370
    { 190, 191},							-- 380
    { 192, 193, 194},							-- 390
    { 195, 195},							-- 3A0
    { 196, 197, 198},							-- 3B0
    { 199, 199},							-- 3C0
    { 200, 200},							-- 3D0
    {},									-- 3E0
    {}},								-- 3F0
  "mixed", { "cave-wall", "rockbound-cave-floor", "land", "rock", "unpassable",
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
  "mixed", { "rockbound-cave-floor", "cave-floor", "land", "no-building",
    { 272, 273},							-- 500
    { 274, 275},							-- 510
    { 276, 277, 278},							-- 520
    { 279, 280},							-- 530
    { 281, 282, 283},							-- 540
    { 284, 285},							-- 550
    { 286, 302},							-- 560
    { 287, 288},							-- 570
    { 289, 290},							-- 580
    { 291, 292, 293},							-- 590
    { 294, 303},							-- 5A0
    { 295, 296, 297},							-- 5B0
    { 298, 299},							-- 5C0
    { 300, 301},							-- 5D0
    {},									-- 5E0
    {}},								-- 5F0
  })

BuildTilesetTables()

wyrmsun.tileset = "cave"
Load("scripts/scripts.lua")

