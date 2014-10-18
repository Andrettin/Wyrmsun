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
--      quests.lua - Defines quests.
--
--      (c) Copyright 2013-2014 by Andre Novellino Gouvêa
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

Worlds = {
	Earth = {
		Name = _("Earth"),
		Description = _("The home planet of human beings, a myriad of generations have been born and died on Earth. History has witnessed the rise and fall of innumerous great powers, with few being able to stand the test of time. The first human civilization was Sumeria, and later times saw the appearance of the ancient Greeks and Romans. The mapping of the world progressed slowly, but steadily. The advancement of naval techniques in the 15th and 16h centuries allowed the world's oceans to be explored, and by the late 19th century the inner part of the continents had been fully mapped. The 20th century saw the beginnings of space exploration, with a man setting foot on the moon for the first time. By the 22nd century spacefaring had become common."),
		Background = ""
	},
	Alfheim = {
		Name = _("Alfheim"),
		Description = _("The lush world of Alfheim is inhabited by elves and trolls. Its forests are characterized by the beautiful golden foliage of the fairlimbed trees, which are much adored by the elves. The planet orbits a star known as Fairwheel, and is in turn orbited by a moon called Timeteller."),
		Background = _("Alfheim was the world of the light elves in Norse mythology. In the ~<Alvissmol~> it is mentioned that elves' term for \"wood\" is \"fair-limbed\". In that same poem, \"the Teller of Time\" is said to be the elves' term for the moon, and \"Fair Wheel\" their term for the sun. The ~<Grimnismol~> mentions that Alfheim was given to the Norse god Freyr by the other deities.")
	},
	Jotunheim = {
		Name = _("Jotunheim"),
		Description = _("The world of Jotunheim is home to orcs, ogres, ettins and other brutal races. The environment is hostile, and orcs often have to be wary, lest a roc descend upon them and devour the green creatures. Jotunheim's sun is called Everbright, and its single moon is known as the Rapid Traveller."),
		Background = _("Jotunheim was the world of the giants in Norse mythology. The ~<Alvissmol~> mentions that the giants call the sun \"Ever-Bright\", and the moon \"Rapid Traveller\".")
	},
	Nidavellir = {
		Name = _("Nidavellir"),
		Description = _("The dark plains and mountains of Nidavellir are home to the dwarves, gnomes, goblins and kobolds. Of these diminutive races, the gnomes established the first civilization, and the dwarves the greatest. Nidavellir orbits around a star known as Dvalin's Deceiver, which received its name from Dvalin's dislike of sunlight. The legendary dwarf allegedly preferred the dark even more than most dwarves, complaining incessantly if the sunlight caught him unaware during his travels. The Deep Sea which lies to the east of the dwarven realms of Kal Kartha and Lyr remained unexplored for a long time, until dwarves began building ships robust enough to sail through it. Nidavellir has one moon, which is called \"the Gleamer\". The first contact between dwarves and humans happened in the 23rd century, when an expedition happened upon a dwarven mining operation on a distant planet, resulting in a skirmish."),
		Background = _("Nidavellir was the world of the dwarves in Norse mythology. The name means \"the Dark Fields\" or \"the Dark Crags\". Nidavellir is mentioned in the ~<Voluspo~>. In the ~<Alvissmol~> it is said that \"the Gleamer\" is the dwarves' term for the moon, while \"the Deceiver of Dvalin\" is their term for the sun.")
	}
}
