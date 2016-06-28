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

DefineDialogue("pypos-gold-introduction", { -- Source: Franz Hartmann, "Among the Gnomes", 1895, pp. 12-13.
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
			"text", "I am not a coward. I am not afraid of losing my life, which is worthless to me without the possession of my beloved. More than once I have looked into the face of death while engaged in battle. I want the gold of the gnomes, and must have it, let the consequences be what they may. If the gnomes are not willing to surrender their gold, I shall take it by force.",
			"option-effects", {
				function(s)
					AddPlayerObjective(player, "- Defend Untersberg")
					AddPlayerObjective(player, "- Pypo must survive")
				end
			}
		}
	}
})
