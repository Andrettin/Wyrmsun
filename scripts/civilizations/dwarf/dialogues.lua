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
			"text", "After a long time wandering, a clan of dwarves led by Modsognir has arrived in Svarinshaug, seeking a new home...",
			"conditions", function(s) return GrandStrategy == false; end
		},
		{
			"speaker", "character", "Modsognir",
			"text", "My clansfolk, if we are to survive, we will need food and materials to build shelters for our people."
		},
		{
			"speaker", "character", "Durin",
			"text", "Aye. There are plenty of yales here, we should hunt some."
		},
		{
			"speaker", "unit", "unit-dwarven-witness",
			"text", "By nightfall the blood bats - or worse - will come out into the open, we need to be ready before then.",
			"option-effects", {
				function(s)
					AddPlayerObjective(player, "- Kill 8 Yales")
					AddPlayerObjective(player, "- Gather 800 lumber and 400 stone")
					AddPlayerObjective(player, "- Modsognir must survive")
					AddPlayerObjective(player, "- Durin must survive")
				end
			}
		}
	}
})
