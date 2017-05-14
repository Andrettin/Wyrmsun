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

DefineDialogue("volund-speaks-to-the-kings-sons", {
	Nodes = {
		{
			"text", "The elven prince Volund was a talented smith, and became renowned for his masterful work. He married a brave warrior-maiden, but after nine winters she grew bored of their life in Ulfdalir and fled, leaving the ring she had made for her, some of his finest work. While Volund fruitlessly searched for his missing wife, a group of warriors raided his dwelling under orders of the king of Lintanir. They took many of the products of Volund's craftsmanship, including his wife's ring. When the elven prince returned home, he was ambushed by the Lintanir warriors, and brought in chains to their king."
		},
		{
			"text", "Uselessly, Volund plead with the king, promising a hefty ransom. Volund's father was a king in his own right, and could afford to pay much gold for his release, he said. But the queen of Lintanir was unimpressed. Whatever gold Volund's father would pay could scarcely compare with enjoying the fruits of Volund's labor, she thought. And so she imprisoned Volund in the island of Saevarstad, where he would craft many wondrous treasures for the royal couple..."
		},
		{
			"speaker", "character", "volund",
			"text", "Hail, young sons of the king! I am glad you came to visit me, to see my latest work. You came in secret, I am sure, as I had asked you. I am afraid, however, that you will not be able to leave this place... your father has done me much ill, and my revenge begins in earnest.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "volunds-flight")
					SetDiplomacy(trigger_player, "enemy", GetFactionPlayer("lintanir"))
					SetDiplomacy(GetFactionPlayer("lintanir"), "enemy", trigger_player)
				end
			}
		}
	}
})
