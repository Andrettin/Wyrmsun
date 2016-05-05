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

DefineUpgrade("upgrade-work-alvissmol", {
	Name = _("Alvissmol"), -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 183-194.
	NameElements = {
		"compound", "suffix", "dwarven", "noun", "Mol"
	},
	Work = "scroll",
	Civilization = "dwarf",
	Quote = "\"Alvis am I, and under the earth / My home 'neath the rocks I have; / With the thunder-thrower a word do I seek, / Let the gods their bond not break.\" - Alvissmol (Alvis)"
--	Quote = "\"Alvis am I, and under the earth / My home 'neath the rocks I have; / With the wagon-guider a word do I seek, / Let the gods their bond not break.\" - Alvissmol (Alvis)" -- original
})

DefineUpgrade("upgrade-work-fafnismol", {
	Name = _("Fafnismol"), -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 370-385.
	NameElements = {
		"compound", "suffix", "dwarven", "noun", "Mol"
	},
	Work = "scroll",
	Civilization = "dwarf",
	Quote = "\"Hail to thee, warrior! Thou victory hast, / And Fafnir in fight hast slain; / Of all the dwarves who tread the earth, / Most fearless art thou, methinks.\" - Fafnismol (Regin)"
--	Quote = "\"Hail to thee, Sigurd! Thou victory hast, / And Fafnir in fight hast slain; / Of all the men who tread the earth, / Most fearless art thou, methinks.\" - Fafnismol (Regin)" -- original
})

DefineUpgrade("upgrade-work-reginsmol", {
	Name = _("Reginsmol"), -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 356-369.
	NameElements = {
		"compound", "suffix", "dwarven", "noun", "Mol"
	},
	Work = "scroll",
	Civilization = "dwarf",
	Quote = "\"Here shall I foster the fearless prince, / Now Modsognir's heir | to us is come; / The noblest hero | under the mountains, / The threads of his fate all lands enfold.\" - Reginsmol (Regin)"
--	Quote = "\"Here shall I foster the fearless prince, / Now Yngvi's heir | to us is come; / The noblest hero | beneath the sun, / The threads of his fate all lands enfold.\" - Reginsmol (Regin)" -- original
})

DefineUpgrade("upgrade-work-the-scepter-of-fire", {
	Name = _("The Scepter of Fire"), -- from Wesnoth
	Work = "scroll",
	Civilization = "dwarf",
	Quote = "\"The land of Untersberg's banner bold / Comes not from its own land; / It comes from Dwarfdom, grim and old / Made by a runesmith's hand.\" - The Scepter of Fire"
})

DefineModifier("upgrade-work-alvissmol",
	{"Mana", 1}
)

DefineModifier("upgrade-work-fafnismol",
	{"BonusAgainstDragons", 1}
)

DefineModifier("upgrade-work-reginsmol",
	{"Backstab", 1}
)

DefineModifier("upgrade-work-the-scepter-of-fire",
	{"FireResistance", 1}
)
