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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineDialogue("oin-leaves", {
	Nodes = {
		{
			"text", "According to the latest gossip, it seems that the dwarf Oin moved with his kin and retainers to settle near a waterfall."
		}
	}
})

DefineDialogue("andvaris-gold-is-ours", {
	Nodes = {
		{
			"text", "We have successfully raided Andvari's holding and obtained his gold. We even found a ring which seems particularly valuable. Andvari spoke a curse upon us for getting the ring... Ramblings of an impoverished dwarf."
		}
	}
})

Load("scripts/civilizations/dwarf/dialogues_island_of_the_lizard_god.lua")
Load("scripts/civilizations/dwarf/dialogues_the_first_dwarves.lua")
Load("scripts/civilizations/dwarf/dialogues_the_mead_of_poetry.lua")
