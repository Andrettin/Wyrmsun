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
--      (c) Copyright 2017-2020 by Andrettin
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

DefineMapTemplate("east-gate-of-knalga", { -- from Battle for Wesnoth: The Hammer of Thursagan (At the East Gate)
	Name = "East Gate of Knalga",
	MainTemplate = "nidavellir",
	Width = 47,
	Height = 32,
	SubtemplatePosition = {480, 205}
})

-- roads present as of the beginning of The Hammer of Thursagan (550 YW)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {4, 15}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {5, 15}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {5, 16}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {6, 16}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {7, 16}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {8, 16}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {8, 17}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {9, 17}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {10, 17}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {11, 17}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {12, 17}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {13, 17}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {14, 17}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {14, 18}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {15, 18}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {16, 18}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {16, 19}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {17, 19}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {18, 19}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {18, 20}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {19, 20}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {20, 19}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {20, 20}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {21, 19}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {22, 19}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {22, 20}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {23, 20}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {24, 20}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {24, 21}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {25, 21}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {26, 21}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {26, 22}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {27, 22}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {28, 22}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {29, 22}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {30, 22}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {30, 23}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {31, 23}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {32, 23}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {32, 24}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {33, 24}, 550)
--SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {34, 24}, 550) -- cannot be built on mud (and dry mud cannot be adjacent to water)
--SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {36, 25}, 550) -- cannot be built on mud (and dry mud cannot be adjacent to water)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {37, 25}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {38, 25}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {39, 25}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {39, 26}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {40, 26}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {41, 26}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {41, 27}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {42, 27}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {43, 27}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {43, 28}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {44, 28}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {45, 28}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {45, 29}, 550)
SetMapTemplateTileTerrain("east-gate-of-knalga", "road", {46, 29}, 550)
