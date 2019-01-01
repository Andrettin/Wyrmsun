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

DefineDialogue("chlodwig-meets-syagrius", {
	Nodes = {
		{
			"speaker", "character", "chlodwig",
			"text", "King Syagrius! At last we have come to give you a taste of Frankish axes, I hope you did not have to wait for too long!"
		},
		{
			"speaker", "character", "syagrius",
			"text", "I am no king, barbarian. I am a Roman governor, and we have faced worse than you before."
		},
		{
			"speaker", "character", "chlodwig",
			"text", "Rome? What Rome? The city of Rome lies in Odoacer's hands, and the Eastern Empire is so far away... You are but a meager remnant, and you shall not last for a fortnight."
		},
		{
			"speaker", "character", "chlodwig",
			"text", "My tribesmen! Roman riches lay before us! We shall take them, becoming the masters of vast lands and making the Romans our servants!"
		},
		{
			"speaker", "character", "syagrius",
			"text", "Fellow Romans! The barbarians are on our gates! The Day of Judgement is fast approaching, as the world around us swirls into chaos. The northern tribes have taken over much of the Empire, and it may be that we will be defeated. But not today! On this day we will fight for the glory of Rome, and send these pagans to the fires of Hell!"
		}
	}
})

DefineDialogue("syagrius-dies", {
	Nodes = {
		{
			"speaker", "character", "chlodwig",
			"text", "A honorable warrior... my respects, Syagrius."
		}
	}
})
