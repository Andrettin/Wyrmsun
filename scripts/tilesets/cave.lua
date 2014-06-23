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
    {}}									-- 0F0
  })

BuildTilesetTables()

wyrmsun.tileset = "cave"
Load("scripts/scripts.lua")

