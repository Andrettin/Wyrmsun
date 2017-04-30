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
			"speaker", "character", "vindalf",
			"text", "Curse these rocks! Our ship is done for, how will we return home from this forsaken island?"
		},
		{
			"speaker", "character", "vindalf",
			"text", "Ah well, lamenting will do us little good. The island looks inhabited, perhaps the locals possess seaworthy ships? We ought to look around.",
			"option-effects", {
				function(s)
					SetPlayerData(trigger_player, "AcceptQuest", "island-of-the-lizard-god")
				end
			}
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
			"speaker", "character", "vindalf",
			"text", "A... ghost? Have I lost my senses to the volcanic smokes?"
		},
		-- there could be a level check here to see if the Whitesteel ghosts attack the dwarves or not
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "Ha! Yer eyes tell ye true. Neither living nor truly dead, we guard the ruined forge of our clan. Be thankful yer not a kobold, or else ye would already be swimming in the lava!"
			
		},
		{
			"speaker", "character", "vindalf",
			"text", "What is there here for ye to guard?"
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "Yer a noisy bunch, aren't ye?"
		},
		{
			"speaker", "character", "vindalf",
			"text", "Our ship crashed on the shores of this island, leaving us trapped here. Do ye know where we could find a vessel to take us home?"
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "A seaworthy ship, in this island? Ha! The kobolds here only possess small boats, ye won't get far with that. Driftwood is formed by shipwrecks and lost sailors or their descendants. They do not stay here by choice. Us dwarves, however... we used to have ships to do some trade with the mainland. But don't go thinking I would just give one to ye."
		},
		{
			"speaker", "character", "vindalf",
			"text", "What do ye want for the ship?"
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "My clan lived in this volcano in days past, forging tools and weapons with the high-quality ores found here. But we are no more. We had everything we needed here to survive, and even have some measure of comfort. The kobolds left us mostly alone. Well, they did then, at least. But that changed when they used some vile sorcery to summon forth that monster, the wyrm. It made its lair near the volcano, and began preying on our clan. When we fought back, that was all that was needed for the kobolds to try to root us out. They besieged our volcanic fortress, cutting us off from the surface."
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "A mastersmith among us crafted a wondrous spear and imbued it with wyrmslaying magics. A runesmith, he called himself. And he claimed to know the arts of Thursagan, some legendary mainland smith. Me and some other warriors swore a sacred oath to guard this Spear of Wyrms until the kobolds' monster was dead. We never had the chance - the kobolds breached our defenses, and I was cut down myself by a group of them... As I succumbed, the pain went away, but I remained. It seems that the Spear's magic worked to keep this pale shadow of my former self guarding it, as I once swore. The kobolds looted our corpses, though they never got to the Spear's secret resting place. They did get the required key, but they never found out how to use it. The kobolds likely still have it somewhere in their lair on Mount Sacrifice, on the island's eastern shore."
		},
		{
			"speaker", "unit", "unit-dwarven-axefighter", -- should be a dwarven ghost
			"speaker-player", "whitesteel-clan",
			"text", "What do I want, ye ask? What I want is vengeance. Kill the kobold king for what was done to us. What I want is freedom. Slay the wyrm, so that the Spear may finally let me rest."
		},
		-- if the wyrm and the kobold king are already dead
		{
			"speaker", "character", "vindalf",
			"text", "The blood of yer foes already stain this island's soil. Tell us where the ship is, and ye may rest."
		}
	}
})
