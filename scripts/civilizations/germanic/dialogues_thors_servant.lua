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

DefineDialogue("thialfi-commanded-to-gotland", {
	Nodes = {
		{
			"speaker", "character", "thialfi",
			"text", "My master, the god Thunraz, has revealed to me the existence of an island to the east. I am to establish my hearth there, bringing human life to the isle.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "thors-servant")
					SetPlayerData(trigger_player, "AcceptQuest", "the-discovery-of-gotland")
					unit = CreateUnit("unit-revealer", trigger_player, {4265 - EarthStartX, 741 - EarthStartY})
					SetUnitVariable(unit, "TTL", 600)
				end
			}
		}
	}
})

DefineDialogue("thialfi-settles-gotland", {
	Nodes = {
		{
			"speaker", "character", "thialfi",
			"text", "At last, my hall is complete. But it is not enough. I am pledged to Thunraz, and if this is my dwelling, then there must also be a temple to the god on this island.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "thors-servant-thors-temple")
				end
			}
		}
	}
})

DefineDialogue("thors-servant-temple-complete", {
	Nodes = {
		{
			"speaker", "character", "thialfi",
			"text", "The temple to Thunraz is finished. From my island I shall gather the necessary forces to deal with my next task."
		},
		{
			"speaker", "character", "thialfi",
			"text", "The priests of Thunraz have told me that a group of wild berserkers are living in the island of Hlesey. They attack the passing ships, and must be rooted out to restore safety to that sea passage. The island lies far to the west, beyond the great chain of isles where the Skeldungs dwell.",
			"option-effects", {
				function(s)
					unit = CreateUnit("unit-revealer", trigger_player, {4089 - EarthStartX, 745 - EarthStartY})
					SetUnitVariable(unit, "TTL", 600)
					SetPlayerData(trigger_player, "AcceptQuest", "slay-the-berserker-brides-at-hlesey")
				end
			}
		}
	}
})

DefineDialogue("berserker-brides-arrive-on-hlesey", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 119.
	Nodes = {
		{
			"text", "Rumors have reached us that some wild folk have settled on the island of Hersey. It is better to be cautious when navigating the nearby waters..."
		}
	}
})
