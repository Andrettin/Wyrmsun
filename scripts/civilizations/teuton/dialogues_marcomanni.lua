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
--      (c) Copyright 2017 by Andrettin
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

DefineDialogue("the-marcomannic-wars-introduction", {
	Nodes = {
		{
			"text", "Almost two centuries after Marbod conquered Bohemia for the Marcomanni, their chieftain Ballomar has gathered more than a dozen Germanic tribes in an alliance to invade the Roman Empire. Attracted by the southern riches, the tribal alliance seeks to plunder its way to northern Italy. Once the coastal city of Aquileia has been razed, Marcomanni control of the Alpine lands will be secure."
		},
		{
			"text", "Hint: Hover the mouse over a building to see the name of its settlement.", -- to be implemented
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "the-marcomannic-wars")
				end
			}
		}
	}
})
