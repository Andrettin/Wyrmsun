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
--      editor.lua - Editor configuration and functions.
--
--      (c) Copyright 2002-2004 by Lutz Sammer and Jimmy Salmon
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

--	Set which icons to display
SetEditorSelectIcon("icon-dwarven-patrol-land")
SetEditorUnitsIcon("icon-dwarven-axefighter")


--
--	editor-unit-types a sorted list of unit-types for the editor.
--	FIXME: this is only a temporary hack, for better sorted units.
--
local editor_types = {

   "unit-human-lumber-mill",

--- - - - - - - - - - - - - - - - - - -

   "unit-dwarven-miner",
   "unit-dwarven-axefighter",
   "unit-dwarven-steelclad",
   "unit-dwarven-thane",
   "unit-dwarven-scout",
   "unit-dwarven-ballista",
   "unit-dwarven-gryphon-rider",

   "unit-dwarven-town-hall",
   "unit-dwarven-mushroom-farm",
   "unit-dwarven-barracks",
   "unit-dwarven-lumber-mill",
   "unit-dwarven-blacksmith",
   "unit-dwarven-sentry-tower",
   "unit-dwarven-guard-tower",

   "unit-surghan-mercenary-steelclad",
   "unit-surghan-mercenary-thane",

   "unit-hero-rugnur",
   "unit-hero-rugnur-steelclad",
   "unit-hero-rugnur-thane",
   "unit-hero-baglur",
   "unit-hero-baglur-thane",
   "unit-hero-thursagan",
   "unit-hero-durstorn",

--- - - - - - - - - - - - - - - - - - -

   "unit-gnomish-worker",
   "unit-gnomish-recruit",
   "unit-gnomish-caravan",

   "unit-gnomish-town-hall",
   "unit-gnomish-farm",
   "unit-gnomish-barracks",

--- - - - - - - - - - - - - - - - - - -

   "unit-goblin-worker",
   "unit-goblin-spearman",
   "unit-goblin-archer",
   "unit-goblin-war-machine",

   "unit-goblin-town-hall",
   "unit-goblin-farm",
   "unit-goblin-mess-hall",
   "unit-goblin-lumber-mill",

   "unit-hero-greebo",

--- - - - - - - - - - - - - - - - - - -

   "unit-gold-mine",
   "unit-coal-mine",
   "unit-wood-pile",
   "unit-gold-coins",
   "unit-gold-sack",
   "unit-gold-chest",
   "unit-gold-and-gems-chest",
   "unit-barrel",
   "unit-potion-of-healing",
   "unit-potion-of-decay",
   "unit-cheese",
   "unit-carrots",
   "unit-gryphon-feather",

   "unit-critter",
   "unit-gryphon",

--- - - - - - - - - - - - - - - - - - -

   "unit-goblin-banner",
   "unit-glyph",
   "unit-stairs",
   "unit-mushroom",
   "unit-mushroom-patch",
   "unit-flowers",
   "unit-large-flower",
   "unit-fern",
   "unit-twigs",
   "unit-log",
   "unit-small-rocks",
   "unit-bones",
   "unit-wyrm-skeleton",
   "unit-floor-decoration",
   "unit-outer-wall-decoration",
   "unit-inner-wall-decoration"
}


Editor.UnitTypes:clear()
for key,value in ipairs(editor_types) do
  Editor.UnitTypes:push_back(value)
end
