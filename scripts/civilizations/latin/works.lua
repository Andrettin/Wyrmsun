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
--      (c) Copyright 2016-2020 by Andrettin
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

DefineUpgrade("upgrade-work-anabasis", { -- Source: "Ancient Warfare VII.6", 2013, pp. 18-19.
	Name = "Anabasis", -- written by Arrian
	Work = "book",
	Year = 162 -- possibly published in 162, according to the source
})

DefineUpgrade("upgrade-work-belli-parthici", { -- Source: "Ancient Warfare VII.6", 2013, p. 18.
	Name = "Belli Parthici", -- written by Asinius Quadratus
	Work = "book"
})

DefineUpgrade("upgrade-work-bithyniaca", { -- Source: "Ancient Warfare VII.6", 2013, p. 19.
	Name = "Bithyniaca", -- written by Arrian
	Work = "book"
})

DefineUpgrade("upgrade-work-de-bello-gallico", { -- Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 227.
	Name = "De Bello Gallico",
	Work = "book",
--	Description = "Caesar has written his treatise on the Gallic Wars, \"De Bello Gallico\"",
	Description = "This work is a treatise on the Gallic Wars.",
	Year = -52 -- De Bello Gallico was written 58-52 BC
	-- should probably have some other requirements, like events pertaining to the Gallic Wars having occurred, or Gaul having been conquered by Rome
})

DefineUpgrade("upgrade-work-meditations", { -- Source: "Ancient Warfare VII.6", 2013, pp. 8-10.
	Name = "Meditations", -- known as "Ta eis heauton" in Greek ("To Himself")
	Work = "book",
	Description = "Comprising twelve books, the \"Meditations\" of Marcus Aurelius is a prime work of Roman stoicism. The author emphasizes the importance of doing one's duty and living in an austere manner, in a way reminiscent of the ideal of the Roman soldier.",
	Year = 174 -- written during Marcus Aurelius' campaign of 174 AD
})

DefineUpgrade("upgrade-work-notitia-dignitatum", { -- Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 231.
	Name = "Notitia Dignitatum",
	Work = "book",
--	Description = "A new military handbook has been written, the \"Notitia Dignitatum\". Among other things, the manual details Germanic military units, such as the Brisigavi iuniores, the Brisigavi seniores and the Lentienses.",
	Description = "Among other things, this military handbook details Germanic military units, such as the Brisigavi iuniores, the Brisigavi seniores and the Lentienses.",
	Year = 400 -- Notitia Dignitatum was written c. 400 AD
})

DefineUpgrade("upgrade-work-on-writing-history", { -- Source: "Ancient Warfare VII.6", 2013, p. 18.
	Name = "On Writing History", -- written by Lucian of Samosata
	Work = "book",
	Description = "Lucian of Samosata's \"On Writing History\" is a remarkable treatise on the craft of the historian. The work also made particular criticisms to the historians who went with Lucius Verus on his Parthian campaign."
})

DefineUpgrade("upgrade-work-parthica", { -- Source: "Ancient Warfare VII.6", 2013, p. 19.
	Name = "Parthica", -- written by Arrian
	Work = "book"
})

DefineUpgrade("upgrade-work-principia-historiae", { -- Source: "Ancient Warfare VII.6", 2013, pp. 18-19.
	Name = "Principia Historiae", -- written by Marcus Cornelius Fronto, imperial rhetoric tutor
	Work = "book",
	Description = "The \"Principia Historiae\" of Marcus Cornelius Fronto about Lucius Verus' campaign against the Parthians.",
	Year = 165 -- written in 165
})

DefineUpgrade("upgrade-work-pro-lege-manilia", { -- Source: "Ancient Warfare VII.6", 2013, p. 19.
	Name = "Pro Lege Manilia", -- written by Cicero
	Work = "book"
})

DefineUpgrade("upgrade-work-scriptores-historiae-augustae", { -- Source: "Ancient Warfare VII.6", 2013, pp. 18-19.
	Name = "Scriptores Historiae Augustae",
	Work = "book"
})

DefineUpgrade("upgrade-work-strategemata", { -- Source: "Ancient Warfare VII.6", 2013, pp. 18-19.
	Name = "Strategemata", -- written by Polyaenus, a forensic rhetor
	Work = "book",
	Year = 161 -- published between 161 and the summer of 162, comprised of multiple books
})

DefineModifier("upgrade-work-anabasis",
	{"KnowledgeWarfare", 5}
)

DefineModifier("upgrade-work-belli-parthici",
	{"KnowledgeWarfare", 5}
)

DefineModifier("upgrade-work-bithyniaca",
	{"KnowledgeWarfare", 5}
)

DefineModifier("upgrade-work-de-bello-gallico",
	{"KnowledgeWarfare", 5}
)

DefineModifier("upgrade-work-meditations",
	{"KnowledgeWarfare", 5}
)

DefineModifier("upgrade-work-notitia-dignitatum",
	{"KnowledgeWarfare", 5}
)

DefineModifier("upgrade-work-on-writing-history",
	{"KnowledgeWarfare", 5} -- should probably be something else
)

DefineModifier("upgrade-work-parthica",
	{"KnowledgeWarfare", 5}
)

DefineModifier("upgrade-work-principia-historiae",
	{"KnowledgeWarfare", 5}
)

DefineModifier("upgrade-work-pro-lege-manilia",
	{"KnowledgeWarfare", 5}
)

DefineModifier("upgrade-work-scriptores-historiae-augustae",
	{"KnowledgeWarfare", 5}
)

DefineModifier("upgrade-work-strategemata",
	{"KnowledgeWarfare", 5}
)

DefineDependency("upgrade-work-anabasis",
	{"upgrade-latin-civilization"}
)

DefineDependency("upgrade-work-belli-parthici",
	{"upgrade-latin-civilization", "unit-latin-barracks"}
)

DefineDependency("upgrade-work-bithyniaca",
	{"upgrade-latin-civilization", "unit-latin-barracks"}
)

DefineDependency("upgrade-work-de-bello-gallico",
	{"upgrade-latin-civilization", "unit-latin-barracks"}
)

DefineDependency("upgrade-work-meditations",
	{"upgrade-latin-civilization", "unit-latin-barracks"}
)

DefineDependency("upgrade-work-notitia-dignitatum",
	{"upgrade-latin-civilization", "unit-latin-barracks"}
)

DefineDependency("upgrade-work-on-writing-history",
	{"upgrade-latin-civilization"} -- should require a university/academy building when that is added to the game
)

DefineDependency("upgrade-work-parthica",
	{"upgrade-latin-civilization", "unit-latin-barracks"}
)

DefineDependency("upgrade-work-principia-historiae",
	{"upgrade-latin-civilization"} -- should require a university/academy building when that is added to the game
)

DefineDependency("upgrade-work-pro-lege-manilia",
	{"upgrade-latin-civilization", "unit-latin-barracks"}
)

DefineDependency("upgrade-work-scriptores-historiae-augustae",
	{"upgrade-latin-civilization"} -- should require a university/academy building when that is added to the game
)

DefineDependency("upgrade-work-strategemata",
	{"upgrade-latin-civilization", "unit-latin-barracks"}
)
