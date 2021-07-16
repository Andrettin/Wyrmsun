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
--      (c) Copyright 2017-2021 by Andrettin
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

DefineDialogue("aurvangling-goblins-sighted", {
	Nodes = {
		{
			"speaker", "unit", "unit-goblin-archer",
			"speaker-player", "aurvangling-tribe",
			"text", "What are dwarves doing in Aurvang? They must have come to despoil our homes, attack!",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("aurvangling-tribe"))
					SetDiplomacy(GetFactionPlayer("aurvangling-tribe"), "enemy", trigger_player)
				end
			}
		}
	}
})

DefineDialogue("joruvellir-sighted", {
	Nodes = {
		{
			"speaker", "character", "draupnir",
			"text", "At last, we are almost to Joruvellir!"
		},
		{
			"speaker", "character", "draupnir",
			"text", "The sun is scorching in these parts, and it will be worse in the desert. It would be best to travel through it during the night."
		},
		{
			"text", "Hint: Organic units suffer from dehydration in desert tiles, which slowly depletes their HP. The effect can be avoided by journeying through the desert at night, and some units (like wyrms) are immune to it. Units are not affected by dehydration in their player's own territory."
		}
	}
})

DefineDialogue("joruvellir-hall-completed", {
	Nodes = {
		{
			"speaker", "character", "draupnir",
			"text", "The foundations of our new settlement have been laid. After a long journey, we can finally rejoice in the safety our new dwelling!",
			"option-effects", {
				function(s)
					if (GetPlayerData(trigger_player, "HasQuest", "a_home_in_the_fields_of_sand")) then
						SetPlayerData(trigger_player, "CompleteQuest", "a_home_in_the_fields_of_sand")
					end
				end
			}
		}
	}
})

DefineDialogue("joruvellir-hall-construction-failed", {
	Nodes = {
		{
			"speaker", "character", "draupnir",
			"text", "Our workers have been lost... how will we build our settlement now?",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "FailQuest", "a_home_in_the_fields_of_sand")
				end
			}
		}
	}
})
