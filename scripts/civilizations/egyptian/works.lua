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

DefineUpgrade("upgrade-work-adventures-of-horus-and-seth", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 17.
	Name = _("Adventures of Horus and Seth"),
	Work = "scroll",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-book-of-caverns", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 15.
	Name = _("Book of Caverns"),
	Work = "book",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-book-of-the-celestial-cow", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 17.
	Name = _("Book of the Celestial Cow"),
	Work = "book",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-book-of-the-dead", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 15.
	Name = _("Book of the Dead"),
	Work = "book",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-book-of-doors", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 15.
	Name = _("Book of Doors"),
	Work = "book",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-book-of-fayum", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 18.
	Name = _("Book of Fayum"),
	Work = "book",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-book-of-imduat", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 15.
	Name = _("Book of Imduat"),
	Work = "book",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-great-hymn-to-the-nile", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 16.
	Name = _("Great Hymn to the Nile"),
	Work = "scroll",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-hymn-to-amon", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 49.
	Name = _("Hymn to Amon"),
	Work = "scroll",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-tale-of-the-god-of-the-sea", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 17.
	Name = _("Tale of the God of the Sea"),
	Work = "scroll",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-tale-of-two-brothers", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 16-17.
	Name = _("Tale of Two Brothers"),
	Work = "scroll",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-texts-of-the-pyramids", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 49.
	Name = _("Texts of the Pyramids"),
	Work = "book",
	Civilization = "egyptian"
})

DefineUpgrade("upgrade-work-texts-of-the-sarcophaguses", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 48.
	Name = _("Texts of the Sarcophaguses"),
	Work = "book",
	Civilization = "egyptian"
})

DefineModifier("upgrade-work-adventures-of-horus-and-seth",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-book-of-caverns",
	{"KnowledgeMagic", 3}
)

DefineModifier("upgrade-work-book-of-the-celestial-cow",
	{"KnowledgeMagic", 3}
)

DefineModifier("upgrade-work-book-of-the-dead",
	{"KnowledgeMagic", 3}
)

DefineModifier("upgrade-work-book-of-doors",
	{"KnowledgeMagic", 3}
)

DefineModifier("upgrade-work-book-of-fayum",
	{"KnowledgeMagic", 3}
)

DefineModifier("upgrade-work-book-of-imduat",
	{"KnowledgeMagic", 3}
)

DefineModifier("upgrade-work-great-hymn-to-the-nile",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-hymn-to-amon",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-tale-of-the-god-of-the-sea",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-tale-of-two-brothers",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-texts-of-the-pyramids",
	{"KnowledgeMagic", 3}
)

DefineModifier("upgrade-work-texts-of-the-sarcophaguses",
	{"KnowledgeMagic", 3}
)
