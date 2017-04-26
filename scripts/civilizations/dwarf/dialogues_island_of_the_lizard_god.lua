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

DefineDialogue("island-of-the-lizard-god-introduction", {
	Nodes = {
		{
			"speaker", "unit", "unit-dwarven-axefighter",
			"text", "Curse these rocks! Our ship is done for, how will we return home from this strange island?"
		},
		{
			"speaker", "unit", "unit-dwarven-scout",
			"text", "Our fool of a captain thought it a good idea to sail to these unknown waters on mere rumors of silversteel. Now he is dead, and we are stranded..."
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter",
			"text", "Aye, but complaining of the dead won't help us any. We need to build shelters for us survivors. And once that is done... we will need to find the mithril. We have come too far to go back empty-handed.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "island-of-the-lizard-god")
--					SetPlayerData(trigger_player, "AcceptQuest", "island-of-the-lizard-god-build-shelters")
				end
			}
		}
	}
})

DefineDialogue("island-of-the-lizard-god-shelters-built", {
	Nodes = {
		{
			"speaker", "unit", "unit-brising-miner",
			"text", "Our shelters are done. We should now be safe from the elements, but... it might be good to scout the whereabouts."
		}
	}
})

DefineDialogue("island-of-the-lizard-god-whitesteel-ghosts-found", {
	Nodes = {
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "Intruders... did ye come to feed our volcano?"
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- could be a hero
			"text", "A... ghost? Have I lost my senses to the volcanic smokes?"
		},
		-- there could be a level check here to see if the Whitesteel ghosts attack the dwarves or not
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "Ha! Yer eyes tell ye true. Neither living nor truly dead, we guard the ruined forge of our clan. Be thankful yer not a kobold, or else ye would already be swimming in the lava!"
			
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter",
			"text", "What is there here for ye to guard? Do ye have silversteel here?"
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "Silversteel? Yer looking for mithril? Yer a noisy bunch, but with our clan gone there is no point in keeping our secrets from other dwarves any longer."
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "I was born long ago on this island, but before that, my ancestors came here chasing fables of silversteel. Much like ye, I presume. It was a risky business, and yet finding a vein of mithril can make one so wealthy that it was enough for them to make the attempt. They came to the island, and indeed found the metal. Skilled miners were brought, and eventually warriors to guard the mine, along with smiths to keep them supplied with weapons and the miners with tools. All in great secrecy, of course. If word got out, the island would be flooded with people seeking to profit from the mine. Or worse, a small force could try to take control of the mithril veins."
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "Every once in a while, a merchant ship would come to trade for the mithril. Like the miners, they had every incentive to keep the mithril's location a secret, to avoid having to share the profits with others. The dwarven people here eventually came to call itself the Whitesteel clan, our clan."
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter",
			"text", "And yet, for all yer efforts yer clan is now gone. Did some group of pirates find yer location and raid the mine?"
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "No one ever found out about the mithril. The secret was well-kept - too well-kept, in fact. The ships stopped coming. Perhaps it happened that in the merchant guild we traded with, the few who had knowledge of our location suddenly died, or were lost at sea, before they could pass the knowledge onto someone else. Either way, we lost connection to the outside world. Even if we managed to build ships, where would we sail to? Too many generations had passed since our ancestors came to the island, no one knew anymore how to get to the dwarven lands."
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "Despite losing our rich trade, we still had everything we needed here to survive, and even have some measure of comfort. The kobolds left us mostly alone. Well, they did then, at least. But that changed when they used some vile sorcery to summon forth that monster, the wyrm. It made its lair near the volcano, which was all that was needed for the kobolds to try to root us out from its environs. We fought valiantly, but they were too many. We could not defend our outposts on the surface, and had to retreat with those who survived to the mine itself inside the volcano."
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "A mastersmith among us even crafted a wondrous spear and imbued it with wyrmslaying magics. A runesmith, he called himself. And he claimed to know the arts of Thursagan, some legendary mainland smith. Me and some other warriors swore a sacred oath to guard this Spear of Wyrms until the opportunity to slay the kobolds' monster came. But it never did - and as our food stores dwindled, so too did our numbers. I even tasted dwarven flesh before dying of hunger... As I succumbed, the hunger went away, but I remained. It seems that the Spear's magic worked to keep this pale shadow of my former self guarding it, as I once swore."
		},
		-- if the wyrm is still alive
		{
			"speaker", "unit", "unit-dwarven-axefighter",
			"text", "Yer clan is gone beyond hope... but we can still avenge ye. Give us the Spear, and we shall kill the beast."
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "The Spear is yours. Claim it. Slay the wyrm. Set us free!"
		},
		-- if the wyrm is already dead
		{
			"speaker", "unit", "unit-dwarven-axefighter",
			"text", "Yer clan is gone beyond hope... but so is the wyrm. Ye can rest now."
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "Yer words bring us comfort. Claim the Spear and keep the last legacy of the Whitesteel clan."
		}
	}
})
