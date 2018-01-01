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
--      (c) Copyright 2015-2018 by Andrettin
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
DefineTileset("name", "Conifer Forest (Autumn)",
	"ident", "conifer-forest-autumn",
	"image", "tilesets/forest/terrain/forest.png",
	-- Slots descriptions
	"slots", {
		"special", {
			"top-one-tree", 49, "mid-one-tree", 65, "bot-one-tree", 81,
			"removed-tree", 16,
			"removed-tree", 32,
			"removed-tree", 48,
			"growing-tree", { -1, -1, },
			"top-one-rock", 59, "mid-one-rock", 60, "bot-one-rock", 61, -- need to update this later
			"removed-rock", 56,
			"removed-rock", 57,
			"removed-rock", 58,
		},
		"solid", { "unused",
			{}},								-- 000
		"solid", { "shallow-water", "water",
			{ 1, 1, 1, 1}},								-- 010
		"solid", { "unused",
			{}},								-- 020
		"solid", { "dirt", "land", "no-building", "dirt",
			{ 4, 5, 6, 4}},								-- 030
		"solid", { "unused",
			{}},										-- 040
		"solid", { "grass", "land", "grass",
			{ 1, 2, 3, 1}},								-- 050
		"solid", { "unused",
			{}},										-- 060
		"solid", { "pine-tree", "land", "forest", "unpassable",
			{ 18, 18, 18, 18}},							-- 070
		"solid", { "rock", "land", "rock", "unpassable",
			{ 1, 2, 3, 1}},								-- 080
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
			{ 37, 39, 41},								-- 200
			{ 36, 38, 40},								-- 210
			{ 19, 21, 23},								-- 220
			{ 31, 33, 35},								-- 230
			{ 18, 20, 22},								-- 240
			{ 44, 45, 44},								-- 250
			{ 6, 8, 10},								-- 260
			{ 30, 32, 34},								-- 270
			{ 42, 43, 42},								-- 280
			{ 25, 27, 29},								-- 290
			{ 7, 9, 11},								-- 2A0
			{ 24, 26, 28},								-- 2B0
			{ 12, 14, 16},								-- 2C0
			{ 13, 15, 17},								-- 2D0
			{},											-- 2E0
			{}},										-- 2F0
		"mixed", { "dark-dirt", "dirt", "land", "no-building", "dirt",
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
			{ 15, 17, 19},								-- 400
			{ 14, 16, 18},								-- 410
			{ 28, 30, 32},								-- 420
			{ 8, 10, 12},								-- 430
			{ 29, 31, 33},								-- 440
			{ 51, 52, 51},								-- 450
			{ 35, 37, 39},								-- 460
			{ 7, 9, 11},								-- 470
			{ 49, 50, 49},								-- 480
			{ 21, 23, 25},								-- 490
			{ 36, 38, 40},								-- 4A0
			{ 22, 24, 26},								-- 4B0
			{ 42, 44, 46},								-- 4C0
			{ 43, 45, 47},								-- 4D0
			{},											-- 4E0
			{}},										-- 4F0
		"mixed", { "dirt", "grass", "land", "no-building", "dirt",
			{ 15, 17, 19},								-- 500
			{ 14, 16, 18},								-- 510
			{ 28, 30, 32},								-- 520
			{ 8, 10, 12},								-- 530
			{ 29, 31, 33},								-- 540
			{ 51, 52, 51},								-- 550
			{ 35, 37, 39},								-- 560
			{ 7, 9, 11},								-- 570
			{ 49, 50, 49},								-- 580
			{ 21, 23, 25},								-- 590
			{ 36, 38, 40},								-- 5A0
			{ 22, 24, 26},								-- 5B0
			{ 42, 44, 46},								-- 5C0
			{ 43, 45, 47},								-- 5D0
			{},											-- 5E0
			{}},										-- 5F0
		"mixed", { "dark-grass", "grass", "land", "grass",
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
		"mixed", { "pine-tree", "grass", "land", "forest", "unpassable",
			{ 35, 35, 35},								-- 700
			{ 33, 33, 33},								-- 710
			{ 34, 34, 34},								-- 720
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
	}
)

BuildTilesetTables()

Load("scripts/scripts.lua")

