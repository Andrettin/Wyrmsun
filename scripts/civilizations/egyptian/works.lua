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

DefineUpgrade("upgrade-work-adventures-of-horus-and-seth", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 17.
	Name = _("Adventures of Horus and Seth"),
	Work = "scroll"
})

DefineUpgrade("upgrade-work-book-of-caverns", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 15.
	Name = _("Book of Caverns"),
	Work = "book"
})

DefineUpgrade("upgrade-work-book-of-the-celestial-cow", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 17.
	Name = _("Book of the Celestial Cow"),
	Work = "book"
})

DefineUpgrade("upgrade-work-book-of-the-dead", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 15.
	Name = _("Book of the Dead"),
	Work = "book"
})

DefineUpgrade("upgrade-work-book-of-doors", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 15.
	Name = _("Book of Doors"),
	Work = "book"
})

DefineUpgrade("upgrade-work-book-of-the-earth", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 93.
	Name = _("Book of the Earth"),
	Work = "book"
})

DefineUpgrade("upgrade-work-book-of-fayum", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 18.
	Name = _("Book of Fayum"),
	Work = "book"
})

DefineUpgrade("upgrade-work-book-of-imduat", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 15.
	Name = _("Book of Imduat"),
	Work = "book"
})

DefineUpgrade("upgrade-work-book-of-nut", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 50.
	Name = _("Book of Nut"),
	Work = "book"
})

DefineUpgrade("upgrade-work-book-of-the-two-paths", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 84.
	Name = _("Book of the Two Paths"),
	Work = "book"
})

DefineUpgrade("upgrade-work-great-hymn-to-the-nile", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 16.
	Name = _("Great Hymn to the Nile"),
	Work = "scroll"
})

DefineUpgrade("upgrade-work-hymn-to-amon", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 49, 52.
	Name = _("Hymn to Amon"),
	Work = "scroll"
})

DefineUpgrade("upgrade-work-hymn-to-aton", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 55.
	Name = _("Hymn to Aton"),
	Work = "scroll"
})

DefineUpgrade("upgrade-work-naos-of-ismailia", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 52.
	Name = _("Naos of Ismailia"),
	Work = "scroll"
})

DefineUpgrade("upgrade-work-prophecy-of-neferty", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 51.
	Name = _("Prophecy of Neferty"),
	Work = "scroll"
})

DefineUpgrade("upgrade-work-tale-of-the-god-of-the-sea", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 17.
	Name = _("Tale of the God of the Sea"),
	Work = "scroll"
})

DefineUpgrade("upgrade-work-tale-of-the-ghost", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 52.
	Name = _("Tale of the Ghost"),
	Work = "scroll"
})

DefineUpgrade("upgrade-work-tale-of-the-two-brothers", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 16-17.
	Name = _("Tale of the Two Brothers"),
	Work = "scroll"
})

DefineUpgrade("upgrade-work-teachings-of-ani", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 57.
	Name = _("Teachings of Ani"),
	Work = "scroll"
})

DefineUpgrade("upgrade-work-teachings-to-merikara", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 102.
	Name = _("Teachings to Merikara"),
	Work = "scroll",
	Year = -2100 -- dated c. 2100 BC
})

DefineUpgrade("upgrade-work-texts-of-the-pyramids", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, pp. 49, 52.
	Name = _("Texts of the Pyramids"),
	Work = "book"
})

DefineUpgrade("upgrade-work-texts-of-the-sarcophaguses", { -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 48.
	Name = _("Texts of the Sarcophaguses"),
	Work = "book"
})

DefineModifier("upgrade-work-adventures-of-horus-and-seth",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-book-of-caverns",
	{"KnowledgeMagic", 5}
)

DefineModifier("upgrade-work-book-of-the-celestial-cow",
	{"KnowledgeMagic", 5}
)

DefineModifier("upgrade-work-book-of-the-dead",
	{"KnowledgeMagic", 5}
)

DefineModifier("upgrade-work-book-of-doors",
	{"KnowledgeMagic", 5}
)

DefineModifier("upgrade-work-book-of-the-earth",
	{"KnowledgeMagic", 5}
)

DefineModifier("upgrade-work-book-of-fayum",
	{"KnowledgeMagic", 5}
)

DefineModifier("upgrade-work-book-of-imduat",
	{"KnowledgeMagic", 5}
)

DefineModifier("upgrade-work-book-of-nut",
	{"KnowledgeMagic", 5}
)

DefineModifier("upgrade-work-book-of-the-two-paths",
	{"KnowledgeMagic", 5}
)

DefineModifier("upgrade-work-great-hymn-to-the-nile",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-hymn-to-amon",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-hymn-to-aton",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-naos-of-ismailia",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-prophecy-of-neferty",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-tale-of-the-god-of-the-sea",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-tale-of-the-ghost",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-tale-of-the-two-brothers",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-teachings-of-ani",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-teachings-to-merikara",
	{"KnowledgeMagic", 1}
)

DefineModifier("upgrade-work-texts-of-the-pyramids",
	{"KnowledgeMagic", 5}
)

DefineModifier("upgrade-work-texts-of-the-sarcophaguses",
	{"KnowledgeMagic", 5}
)

DefineDependency("upgrade-work-adventures-of-horus-and-seth",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-book-of-caverns",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-book-of-the-celestial-cow",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-book-of-the-dead",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-book-of-doors",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-book-of-the-earth",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-book-of-fayum",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-book-of-imduat",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-book-of-nut",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-book-of-the-two-paths",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-great-hymn-to-the-nile",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-hymn-to-amon",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-hymn-to-aton",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-naos-of-ismailia",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-prophecy-of-neferty",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-tale-of-the-god-of-the-sea",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-tale-of-the-ghost",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-tale-of-the-two-brothers",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-teachings-of-ani",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-teachings-to-merikara",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-texts-of-the-pyramids",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)

DefineDependency("upgrade-work-texts-of-the-sarcophaguses",
	{"upgrade-egyptian-civilization", "unit-teuton-temple"}
)
