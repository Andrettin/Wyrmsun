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

DefineDialogue("island-of-the-lizard-god-introduction", {
	Nodes = {
		{
			"speaker", "unit", "unit-dwarven-axefighter",
			"text", "Curse these rocks! Our ship is done for, how will we return home from this strange island?"
		},
		{
			"speaker", "unit", "unit-dwarven-scout",
			"text", "Our fool of a captain thought he could avoid goblin pirates by sailing far from the coast. Now he is dead, and we are stranded..."
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter",
			"text", "Aye, but complaining of the dead won't help us any. We need to build shelters for us survivors.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "island-of-the-lizard-god")
					SetPlayerData(trigger_player, "AcceptQuest", "island-of-the-lizard-god-build-shelters")
				end
			}
		}
	}
})

DefineDialogue("island-of-the-lizard-god-shelters-built", {
	Nodes = {
		{
			"speaker", "unit", "unit-dwarven-miner",
			"text", "Our shelters are done. We should now be safe from the elements, but.. might be good to scout the whereabouts."
		}
	}
})
