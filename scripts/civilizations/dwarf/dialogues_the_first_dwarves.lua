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

DefineDialogue("a-rocky-home-yales-hunted", {
	Nodes = {
		{
			"speaker", "character", "durin",
--			"text", "We have hunted enough of them to last for a while. Ah, nothing like the taste of roasted yale..."
			"text", "Ah, nothing like the taste of roasted yale..."
		},
		{
			"text", "Hint: Yale Hunting Lodges provide you with food, but that is not all. You can also instruct your workers to gather leather there, which is sold automatically for copper if you have built a market."
		}
	}
})

DefineDialogue("a-rocky-home-materials-collected", {
	Nodes = {
		{
			"speaker", "character", "modsognir",
			"text", "The materials we need have been collected. It is time to build our new homes by these rocks!"
		},
		{
			"speaker", "character", "durin",
			"text", "Aye, chieftain! And we should build a war hall here, to train warriors to fight off any potential foes.",
			"conditions", function(s)
				local war_hall = GetFactionClassUnitType("barracks", GetPlayerData(trigger_player, "Faction"))
				return (war_hall ~= nil and GetPlayerData(trigger_player, "UnitTypesCount", war_hall) == 0)
			end
		}
	}
})

DefineDialogue("grafvitning-kobolds-attack-modsognirs-clan", {
	Nodes = {
		{
			"speaker", "unit", "unit-kobold-footpad",
			"speaker-player", "grafvitning-tribe",
			"text", "This is our land! Die, breastling trespassers!"
		},
		{
			"speaker", "character", "durin",
			"text", "Kobolds! We are under attack!",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("grafvitning-tribe"))
					SetDiplomacy(GetFactionPlayer("grafvitning-tribe"), "enemy", trigger_player)
				end
			}
		}
	}
})

DefineDialogue("modsognirs-clan-destroys-the-grafvitnings", {
	Nodes = {
		{
			"speaker", "character", "modsognir",
			"text", "The diminutive fiends and their pet monster are done for. Our clan lives on!",
			"option-effects", {
				function(s)
					if (GetPlayerData(trigger_player, "HasQuest", "the-first-dwarves")) then
						if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "the-first-dwarves") then
							CallDialogue("campaign-victory", trigger_player)
						end
						SetPlayerData(trigger_player, "CompleteQuest", "the-first-dwarves")
					end
					SetPlayerData(trigger_player, "CompleteQuest", "the-slaying-of-grafvitnir")
				end
			}
		}
	}
})

DefineDialogue("worker-suggests-stone-furniture", {
	Nodes = {
		{
			"speaker", "unit", "unit-brising-miner",
			"text", "I have an idea! Why don't we make furniture out of stone?"
		},
		{
			"speaker", "unit", "unit-brising-expert-miner",
			"text", "Har! Even our hardy dwarven arses can't withstand sitting on stone for long. And have ye thought of how difficult it would be to move it around?"
		}
	}
})

DefineDialogue("brokk-and-eitri-craft-mjollnir", {
	Nodes = {
		{
			"speaker", "character", "eitri",
			"text", "We have gotten all the metal we need. To the forge!"
		}
	}
})
