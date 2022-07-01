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
--      (c) Copyright 2018-2022 by Andrettin
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

DefineDialogue("ariovistus-claims-victory-over-the-aedui", {
	Nodes = {
		{
			"speaker", "character", "ariovistus",
			"text", "The Aedui settlement lies in ruins. Our allies, the Sequani, thanked us for our efforts... but failed to recognize the new reality in Gaul. Our arms were the deciding factor in the battle against the Aedui, and our strength grants us the right to be the arbiters of Gaul. The Sequani refused to grant us a portion of their land, territory we are in much need of to support the Harude newcomers who have come over the Rhine to reinforce us. War it must be then!",
			"option-effects", {
				function(s)
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("sequania"))
					SetDiplomacy(GetFactionPlayer("sequania"), "enemy", trigger_player)
					SetSharedVision(trigger_player, false, GetFactionPlayer("sequania"))
					SetSharedVision(GetFactionPlayer("sequania"), false, trigger_player)
					
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("arvernia"))
					SetDiplomacy(GetFactionPlayer("arvernia"), "enemy", trigger_player)
					SetSharedVision(trigger_player, false, GetFactionPlayer("arvernia"))
					SetSharedVision(GetFactionPlayer("arvernia"), false, trigger_player)
				end
			}
		}
	}
})

Load("scripts/civilizations/suebi/dialogues_marcomanni.lua")