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
--      (c) Copyright 2000-2016 by Lutz Sammer, Jimmy Salmon and Andrettin
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
	"ident", "cave",
	"image", "tilesets/cave/terrain/cave.png",
	-- Slots descriptions
	"slots", {
		"special", {
			"top-one-tree", 121, "mid-one-tree", 122, "bot-one-tree", 123,
			"removed-tree", 126,
			"growing-tree", { -1, -1, },
			"top-one-rock", 48, "mid-one-rock", 64, "bot-one-rock", 80,
			"removed-rock", 16, },
		"solid", { "unused",
			{}},								-- 000
		"solid", { "gray-shallow-water", "water",
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
		"solid", { "cave-wall", "land", "rock", "unpassable", "air-unpassable",
			{ 18, 18, 18, 18}},					-- 080
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
		"mixed", { "deep-water", "gray-shallow-water", "water",
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
		"mixed", { "gray-shallow-water", "rockbound-cave-floor", "coast",
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
		"mixed", { "cave-wall", "rockbound-cave-floor", "land", "rock", "unpassable", "air-unpassable",
			{ 35, 38, 35},							-- 400
			{ 33, 36, 33},							-- 410
			{ 34, 37, 40},							-- 420
			{ 3, 6, 3},								-- 430
			{ 19, 22, 25},							-- 440
			{ 30, 31, 30},							-- 450
			{ 27, 27, 27},							-- 460
			{ 1, 4, 1},								-- 470
			{ 14, 15, 14},							-- 480
			{ 17, 20, 23},							-- 490
			{ 26, 26, 26},							-- 4A0
			{ 2, 5, 8},								-- 4B0
			{ 11, 11, 11},							-- 4C0
			{ 10, 10, 10},							-- 4D0
			{},										-- 4E0
			{}},									-- 4F0
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
	}
)

BuildTilesetTables()

Load("scripts/scripts.lua")
GameSettings.Inside = true
