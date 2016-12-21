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
--      (c) Copyright 2016 by Andrettin
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
			"speaker", "character", "Modsognir",
			"text", "My clansfolk, these rocky hills seem like a promising place to build our place of dwelling. And if we are to survive here, we will need food and materials to build shelters for our people."
		},
		{
			"speaker", "character", "Durin",
			"text", "Aye. There are plenty of yales here, we should hunt some."
		},
		{
			"speaker", "character", "Modsognir",
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
			"speaker", "character", "Durin",
			"text", "We have hunted enough of them to last for a while. Ah, nothing like the taste of roasted yale..."
		}
	}
})

DefineDialogue("a-rocky-home-materials-collected", {
	Nodes = {
		{
			"speaker", "character", "Modsognir",
			"text", "The materials we need have been collected. It is time to build our new homes by these rocks!"
		}
	}
})
