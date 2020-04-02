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
--      ai_helper.lua - Defines the AI helper.
--
--      (c) Copyright 2000-2020 by Lutz Sammer, Jimmy Salmon and Andrettin
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

--(define (ai:sleep) () #t)

--=============================================================================
--
--  AI helper table, the AI must know where to build units,
--  where to research spells, where to upgrade units.
--  If this is allowed and which dependencies exists, isn't
--  handled here. (see upgrade.lua)
--
--  NOTE: perhaps this could later be used to build the buttons?
--
--  DefineAiHelper(list)
--

DefineAiHelper(
	--
	-- Equivalence of units for the resource manager.
	--
	{"unit-equiv", "unit-latin-town-hall",
	"unit-teuton-stronghold"},
	{"unit-equiv", "unit-norse-town-hall",
	"unit-teuton-stronghold"},
	{"unit-equiv", "unit-teuton-town-hall",
	"unit-teuton-stronghold"},
	{"unit-equiv", "unit-dwarven-town-hall",
	"unit-dwarven-stronghold"},
	{"unit-equiv", "unit-goblin-town-hall",
	"unit-goblin-stronghold"},
	
	{"unit-equiv", "unit-dwarven-miner",
	"unit-dwarven-skilled-miner"},
	{"unit-equiv", "unit-dwarven-miner",
	"unit-dwarven-expert-miner"},
	{"unit-equiv", "unit-dwarven-miner",
	"unit-dwarven-runesmith"},
	{"unit-equiv", "unit-dwarven-miner",
	"unit-dwarven-runemaster"},
	{"unit-equiv", "unit-dwarven-miner",
	"unit-dwarven-arcanister"}
)
