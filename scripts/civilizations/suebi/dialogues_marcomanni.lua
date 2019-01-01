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
--      (c) Copyright 2017-2019 by Andrettin
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

DefineDialogue("the-first-marcomannic-war-introduction", {
	Nodes = {
		{
			"text", "Almost two centuries after Marbod conquered Bohemia for the Marcomanni, their chieftain Ballomar has gathered more than a dozen Germanic tribes in an alliance to invade the Roman Empire. Attracted by the southern riches, the tribal alliance seeks to plunder its way to northern Italy. Once the coastal city of Aquileia has been razed, Marcomanni control of the Alpine lands will be secure."
		},
		{
			"text", "Hint: Hover the mouse over a building to see the name of its settlement.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "the-first-marcomannic-war")
				end
			}
		}
	}
})

DefineDialogue("aquileia-destroyed", {
	Nodes = {
		{
			"text", "Aquileia lies in shambles, plundered for its wealth. Due to this astounding victory, we were able to obtain generous peace terms from the Romans. We shall keep all Roman land we currently occupy, no plunder will be given back, and we are to receive a large tribute.",
			"option-effects", {
				function(s)
					if (GetPlayerData(trigger_player, "HasQuest", "the-first-marcomannic-war")) then
						if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "the-first-marcomannic-war") then
							CallDialogue("campaign-victory", trigger_player)
						end
						SetPlayerData(trigger_player, "CompleteQuest", "the-first-marcomannic-war")
					end
					local rome_player = GetFactionPlayer("rome")
					SetPlayerData(trigger_player, "Resources", "copper", GetPlayerData(trigger_player, "Resources", "copper") + 20000)
					if (rome_player ~= nil) then
						SetPlayerData(rome_player, "Resources", "copper", GetPlayerData(rome_player, "Resources", "copper") - 20000)
						SetDiplomacy(trigger_player, "neutral", rome_player)
						SetDiplomacy(rome_player, "neutral", trigger_player)
						for i=0,(PlayerMax - 2) do
							if (Players[i]:IsAllied(Players[trigger_player])) then
								SetDiplomacy(rome_player, "neutral", i)
								SetDiplomacy(i, "neutral", rome_player)
							end
						end
					end
				end
			},
			"option-tooltips", {"Peace with Rome, +20,000 Copper"}
		}
	}
})
