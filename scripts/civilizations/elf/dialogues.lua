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

DefineDialogue("the-two-kings-of-annwn-introduction", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 10-11, 13.
	Nodes = {
		{
			"text", "The kingdom of Annwn has fallen into civil war. The scheming Hafgan has claimed king Arawn's throne, with many of the realm's nobles pledging allegiance to him, while others remained loyal to the king. After a year of inconclusive warfare, the two sides have massed their forces for a decisive battle. Arawn is marching with his followers to combat Hafgan and his supporters, who have gathered in a ford."
		},
		{
			"speaker", "character", "arawn",
			"text", "My noble elves, hear me well!"
		},
		{
			"speaker", "character", "arawn",
			"text", "This encounter between me and the usurper shall decide whose claim to these lands will persevere. Each of you shall follow me to the field of battle, and we will put an end to this conflict!",
			"option-effects", {
				function(s)
					AddPlayerObjective(player, "- Kill Hafgan")
					AddPlayerObjective(player, "- Arawn must survive")
				end
			}
		}
	}
})

DefineDialogue("the-two-kings-of-annwn-hafgan-dies", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 13-14.
	Nodes = {
		{
			"speaker", "character", "hafgan",
			"text", "My lord, what right did you have to kill me? But by the gods, now that you have begun to take my life, put an end to it!"
		},
		{
			"speaker", "character", "hafgan",
			"text", "My loyal nobles, my death is sealed. I can no longer provide for you."
		},
		{
			"speaker", "character", "arawn",
			"text", "My noble elves of Hafgan's household, I will hear now which of you shall pledge yourselves to me."
		},
		{
			"speaker", "unit", "unit-elven-swordsman",
			"speaker-player", "Annwn (Hafgan)",
			"text", "Lord, all of us shall, as there is no king over all of Annwn other than you."
		},
		{
			"speaker", "character", "arawn",
			"text", "Now it is time, then, to take your oaths of fealty. Those who refuse to do so of their own will shall be forced by the sword."
		},
		{
			"text", "Arawn then received the oaths of Hafgan's hitherto followers, and reunited his kingdom.",
			"option-effects", {
				function(s)
					ActionVictory()
					SetQuestCompleted("the-two-kings-of-annwn", GameSettings.Difficulty)
				end
			}
		}
	}
})

Load("scripts/civilizations/elf/dialogues_the_winter_war.lua")
