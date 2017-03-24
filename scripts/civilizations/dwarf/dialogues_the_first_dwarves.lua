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

DefineDialogue("a-rocky-home-introduction", {
	Nodes = {
		{
			"text", "After a long time wandering, a clan of dwarves led by Modsognir has arrived in Svarinshaug, seeking a new home..."
		},
		{
			"speaker", "character", "modsognir",
			"text", "My clansfolk, this rocky hill seems like a promising place to build our place of dwelling. And if we are to survive here, we will need food and materials to build shelters for our people."
		},
		{
			"speaker", "character", "durin",
			"text", "Aye. There are plenty of yales here, we should hunt some."
		},
		{
			"speaker", "character", "modsognir",
			"text", "There are many perils laying about. We need to be ready quickly."
		},
		{
			"text", "Hint: Select a Miner, press the Build Structure button and then click on the Build Mead Hall button to build the structure required for this quest."
		},
		{
			"text", "Hint: Press A and then click on a yale to attack it.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "the-first-dwarves")
					SetPlayerData(trigger_player, "AcceptQuest", "a-rocky-home")
				end
			}
		}
	}
})

DefineDialogue("a-rocky-home-yales-hunted", {
	Nodes = {
		{
			"speaker", "character", "durin",
			"text", "We have hunted enough of them to last for a while. Ah, nothing like the taste of roasted yale..."
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

DefineDialogue("modsognirs-clan-kills-a-kobold", {
	Nodes = {
		{
			"speaker", "character", "durin",
			"text", "Damn scaly beast!"
		},
		{
			"speaker", "character", "modsognir",
			"text", "The kobolds claim these stonelands as their own. There are many other kobold territories, however, and us dwarves have only these rocks to call home. If our settlement in Svarinshaug is destroyed, we will go extinct."
		},
		{
			"speaker", "character", "durin",
			"text", "Ye speak truly, Modsognir. But perhaps we can agree to some form of peace with the creatures?"
		},
		{
			"speaker", "character", "modsognir",
			"text", "It would be no use. If they attacked us on sight, they hold Svarinshaug to be sacred ground and would never let us live here. Many kobold tribes build their homes around a wyrm's lair, serving the colossal beast who resides within. This is likely the case here."
		},
		{
			"speaker", "character", "durin",
			"text", "A dire situation, if true. Our clan has never fought a wyrm before."
		},
		{
			"speaker", "character", "modsognir",
			"text", "Either way, the survival of our clan requires that we root the kobolds out. Ready our warriors!",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "the-slaying-of-grafvitnir")
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
