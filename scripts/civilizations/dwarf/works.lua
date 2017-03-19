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

DefineUpgrade("upgrade-work-alvissmol", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 183-194.
	Name = _("Alvissmol"),
	Work = "scroll",
	Civilization = "dwarf",
	Quote = "\"Alvis am I, and under the earth\nMy home 'neath the rocks I have;\nWith the wagon-guider a word do I seek,\nLet the gods their bond not break.\"\n- Alvissmol (Alvis)"
})

DefineUpgrade("upgrade-work-fafnismol", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 370-385.
	Name = _("Fafnismol"),
	Work = "scroll",
	Civilization = "dwarf",
	Quote = "\"Hail to thee, warrior! Thou victory hast,\nAnd Fafnir in fight hast slain;\nOf all the dwarves who tread the earth,\nMost fearless art thou, methinks.\"\n- Fafnismol (Regin)"
--	Quote = "\"Hail to thee, Sigurd! Thou victory hast,\nAnd Fafnir in fight hast slain;\nOf all the men who tread the earth,\nMost fearless art thou, methinks.\"\n- Fafnismol (Regin)" -- original
})

DefineUpgrade("upgrade-work-reginsmol", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 356-369.
	Name = _("Reginsmol"),
	Work = "scroll",
	Civilization = "dwarf",
	Quote = "\"Here shall I foster the fearless prince,\nNow Hroptatyr's heir to us is come;\nThe noblest hero under the mountains,\nThe threads of his fate all lands enfold.\"\n- Reginsmol (Regin)"
--	Quote = "\"Here shall I foster the fearless prince,\nNow Yngvi's heir to us is come;\nThe noblest hero beneath the sun,\nThe threads of his fate all lands enfold.\"\n- Reginsmol (Regin)" -- original
})

DefineUpgrade("upgrade-work-the-scepter-of-fire", {
	Name = _("The Scepter of Fire"), -- from Wesnoth
	Work = "scroll",
	Civilization = "dwarf",
	Quote = "\"The land of Untersberg's banner bold\nComes not from its own land;\nIt comes from Dwarfdom, grim and old\nMade by a runesmith's hand.\"\n- The Scepter of Fire"
})

DefineUpgrade("upgrade-work-thursagans-book", { -- From Battle for Wesnoth: The Hammer of Thursagan
	Name = _("Thursagan's Book"),
	Work = "book",
	Civilization = "dwarf",
	UniqueOnly = true
})

DefineModifier("upgrade-work-alvissmol",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-fafnismol",
	{"KnowledgeWarfare", 1}
)

DefineModifier("upgrade-work-reginsmol",
	{"KnowledgeWarfare", 1}
)

DefineModifier("upgrade-work-the-scepter-of-fire",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-thursagans-book",
	{"KnowledgeMagic", 5},
	{"FireResistance", 5}
)
