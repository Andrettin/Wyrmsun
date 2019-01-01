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
--      (c) Copyright 2016-2019 by Andrettin
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

player = 0

DefineDialogue("campaign-victory", {
	Nodes = {
		{
			"text", "You have completed the scenario! You may now choose to end the game here, or to pursue a full conquest of your world.",
			"options", {"~!Victory!", "~!Continue Game"},
			"option-effects", {
				function(s)
					ActionVictory()
				end,
				function(s)
					AddPlayerObjective(GetThisPlayer(), "- Defeat your rivals")
				end
			}
		}
	}
})

DefineDialogue("campaign-defeat", {
	Nodes = {
		{
			"text", "You have failed the scenario... But the game need not end. You still have forces standing, and you may choose to pursue a full conquest of your world instead of the scenario's objectives.",
			"options", {"~!Defeat...", "~!Continue Game"},
			"option-effects", {
				function(s)
					ActionDefeat()
				end,
				function(s)
					AddPlayerObjective(GetThisPlayer(), "- Defeat your rivals")
				end
			}
		}
	}
})

Load("scripts/civilizations/dwarf/dialogues.lua")
Load("scripts/civilizations/elf/dialogues.lua")
Load("scripts/civilizations/frankish/dialogues.lua")
Load("scripts/civilizations/germanic/dialogues.lua")
Load("scripts/civilizations/gnome/dialogues.lua")
Load("scripts/civilizations/norse/dialogues.lua")
Load("scripts/civilizations/suebi/dialogues.lua")
Load("scripts/civilizations/teuton/dialogues.lua")
