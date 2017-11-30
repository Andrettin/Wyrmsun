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
					unit = CreateUnit("unit-revealer", trigger_player, {4265 - EarthStartX, 741 - EarthStartY}, GetMapLayer("material-plane", "earth", 0))
					SetUnitVariable(unit, "TTL", 600)
					ChangeCurrentMapLayer(GetMapLayer("material-plane", "earth", 0))
					CenterMap(4265 - EarthStartX, 741 - EarthStartY)
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
			"text", "The temple to Thunraz is finished. The god's might shall now protect this island."
		},
		{
			"speaker", "character", "thialfi",
			"text", "The priests of Thunraz I invited to take charge of the new temple have told me that a group of wild berserkers are living in the island of Hlesey. They attack the passing ships, and must be rooted out to restore safety to that sea passage. The island lies far to the west, beyond the great chain of isles where the Skeldungs dwell.",
			"option-effects", {
				function(s)
					unit = CreateUnit("unit-revealer", trigger_player, {4089 - EarthStartX, 745 - EarthStartY}, GetMapLayer("material-plane", "earth", 0))
					SetUnitVariable(unit, "TTL", 600)
					SetPlayerData(trigger_player, "AcceptQuest", "slay-the-berserker-brides-at-hlesey")
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("hlesing-tribe"))
					SetDiplomacy(GetFactionPlayer("hlesing-tribe"), "enemy", trigger_player)
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

DefineDialogue("thors-servant-berserker-brides-killed", {
	Nodes = {
		{
			"speaker", "character", "thialfi",
			"text", "How foolish those wild folk were, to think they could attack ships without fearing revenge."
		},
		{
			"speaker", "character", "thialfi",
			"text", "The priests have brought me something exquisite... a true beauty, she is."
		},
		{
			"speaker", "character", "thialfi",
			"text", "A ship, they say of dwarven making, and used by the gods themselves. I had never seen such a sturdy vessel before... The sacred men tell me that its purpose is to take me to another world, the realm of the giants, through a magic passage near my island that can only be seen with the ship's magic. Once there I shall slay the ettin Geirrod, who has given much trouble to the few friends the gods have in the giants' realm. I, Thunraz's hammer, shall bring the monster his end!",
			"option-effects", {
				function(s)
					unit = CreateUnit("unit-dwarven-transport-ship", trigger_player, {Players[trigger_player].StartPos.x, Players[trigger_player].StartPos.y}, GetMapLayer("material-plane", "earth", 0))
					SetUnitVariable(unit, "Unique", "skidbladnir")
					SetPlayerData(trigger_player, "AcceptQuest", "slay-geirrod")
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("geirrodung-clan"))
					SetDiplomacy(GetFactionPlayer("geirrodung-clan"), "enemy", trigger_player)
					unit = CreateUnit("unit-ethereal-revealer", trigger_player, {4270 - EarthStartX, 723 - EarthStartY}, GetMapLayer("material-plane", "earth", 0))
					SetUnitVariable(unit, "TTL", 600)
					ChangeCurrentMapLayer(GetMapLayer("material-plane", "earth", 0))
					CenterMap(4270 - EarthStartX, 723 - EarthStartY)
				end
			}
		},
		{
			"text", "Hint: Scout around the island with the ship Skidbladnir to find the Portal. Portals can only be seen and used by units with Ethereal Vision, such as the unique ship you now possess."
		},
		{
			"text", "Hint: If you find Geirrod to be more than a match for you, don't hesitate to flee aboard your ship back to Earth. The ettins cannot follow you back to your homeworld, allowing you to recover and regroup before staging a new attack."
		}
	}
})

DefineDialogue("thors-servant-skidbladnir-destroyed", {
	Nodes = {
		{
			"speaker", "character", "thialfi",
			"text", "The ship Skidbladnir has been destroyed... there is no way for me to reach the world of the ettins now. I have failed Thunraz.",
			"option-effects", {
				function(s)
					if (GetPlayerData(trigger_player, "HasQuest", "thors-servant")) then
						SetPlayerData(trigger_player, "FailQuest", "thors-servant")
					end
				end
			}
		}
	}
})

DefineDialogue("thors-servant-geirrod-killed", {
	Nodes = {
		{
			"speaker", "character", "thialfi",
			"text", "Ha! I have done it, truly. Not without some wounds, but... Thialfi the Giantslayer, now that has a nice ring to it.",
			"option-effects", {
				function(s)
					if (GetPlayerData(trigger_player, "HasQuest", "thors-servant")) then
						SetPlayerData(trigger_player, "CompleteQuest", "thors-servant")
					end
				end
			}
		}
	}
})
