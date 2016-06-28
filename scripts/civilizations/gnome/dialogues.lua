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

DefineDialogue("pypos-gold-introduction", { -- Source: Franz Hartmann, "Among the Gnomes", 1895, pp. 10-20.
	Nodes = {
		{
			"text", "A dwarven noble arrives in Untersberg, together with his entourage...",
			"conditions", function(s) return GrandStrategy == false; end
		},
		{
			"speaker", "unit", "unit-dwarven-witness",
			"text", "My lord, this is a wicked and dangerous undertaking. Forget the proud lady! If she will not have ye for yer lack of means, she is entirely unworthy of yer attention."
		},
		{
			"speaker", "unit", "unit-dwarven-yale-rider",
			"text", "..."
		},
		{
			"speaker", "unit", "unit-dwarven-witness",
			"text", "Hroptatyr be merciful to ye! Shake off this delusion, noble rider; think of yer high descent and what yer ancestors would say. The gnomes of Untersberg will mislead and ruin ye."
		},
		{
			"speaker", "unit", "unit-dwarven-yale-rider",
			"text", "I am not a coward. I am not afraid of losing my life, which is worthless to me without the possession of my beloved. More than once I have looked into the face of death while engaged in battle. I want the gold of the gnomes, and must have it, let the consequences be what they may. If the gnomes are not willing to surrender their gold, I shall take it by force."
		},
		{
			"speaker", "unit", "unit-dwarven-yale-rider",
			"text", "...?! Who are ye standing there?"
		},
		{
			"speaker", "character", "Pypo",
			"text", "Ho! Ho! Know, you creeping worm of the earth, I am Pypo, the king of the gnomes. Mine is the Untersberg with its treasures. What have you to seek in my territory?"
		},
		{
			"speaker", "unit", "unit-dwarven-yale-rider",
			"text", "Yer Highness, I am in a sorry situation. The lady of my dreams scorns me for my poverty. I ask ye provide me with a loan, and ye shall have my everlasting gratitude."
		},
		{
			"speaker", "character", "Pypo",
			"text", "Confound your gratitude, there would be plenty of wretches like you coming to borrow money from me, if it could be had so easily. Nothing brings nothing."
		},
		{
			"speaker", "unit", "unit-dwarven-yale-rider",
			"text", "Ask what ye will! But give me only one bag of money. Only one bag of gold I am asking of ye!"
		},
		{
			"speaker", "character", "Pypo",
			"text", "Ha! Ha!"
		},
		{
			"speaker", "unit", "unit-dwarven-yale-rider",
			"text", "Derrospawn! If ye will not give the gold to me, then look out for the wrath of the dwarves!"
		},
		{
			"speaker", "character", "Pypo",
			"text", "Fool! Do you wish to frighten me? I laugh at you and your threats; but if you wish to meet your end, be it so!",
			"option-effects", {
				function(s)
					AddPlayerObjective(player, "- Defeat the dwarves")
					AddPlayerObjective(player, "- Pypo must survive")
				end
			}
		}
	}
})
