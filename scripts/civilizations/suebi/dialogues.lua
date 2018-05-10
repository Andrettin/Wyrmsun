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
--      (c) Copyright 2018 by Andrettin
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

DefineDialogue("ariovistus-enters-gaul", {
	Nodes = {
		{
			"speaker", "character", "ariovistus",
			"text", "The Sequani have invited us, the Suebi, to enter Gaul and aid them and their Arverni allies against the tribe of the Aedui. To their aid we shall come, though our ambitions are greater than they could expect... once the Aedui are defeated, the entirety of Gaul shall be open to us, ripe for conquest.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "ariovistus-ambition")
				end
			}
		}
	}
})

DefineDialogue("ariovistus-conquers-gaul", {
	Nodes = {
		{
			"speaker", "character", "ariovistus",
			"text", "Through this great effort of our tribal confederation, ours are now the fair fields of Gaul. Let us feast now, on Gaulish wine!",
			"option-effects", {
				function(s)
					if (trigger_player == GetThisPlayer() and GetCurrentCampaign() == "ariovistus-ambition") then
						CallDialogue("campaign-victory", trigger_player)
					end
				end
			}
		}
	}
})

Load("scripts/civilizations/suebi/dialogues_marcomanni.lua")