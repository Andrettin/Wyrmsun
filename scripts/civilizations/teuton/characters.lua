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
--      (c) Copyright 2015 by Andrettin
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

DefineCharacter("Ariovistus", {
	Name = "Ariovistus",
	Gender = "male",
	Type = "unit-suebi-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Brandenburg",
	Year = -71, -- Ariovistus invades Gaul in 71 BC
	DeathYear = -58 -- Ariovistus beaten by Caesar in 58 BC
})

DefineCharacter("Marbod", {
	Name = "Marbod",
	Type = "unit-hero-marbod",
	Civilization = "teuton",
	ProvinceOfOrigin = "Brandenburg",
	Year = -9, -- Marbod, king of the Suebic tribe of the Marcomanni, conquers Bohemia in 9 BC
	DeathYear = 19 + 15 -- Marbod deposed in 19 AD; give +15 years of life
})

-- personnages from the Volsungasaga, presumed Teuton since Sigurd was a Frank
DefineCharacter("Volsung", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 226.
	Name = "Volsung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
	Year = 437 - (30 * 3),
	DeathYear = 437 - (30 * 2) -- Gunnar/Gundahar died in 437 AD; Volsung comes from two generations before him
})

DefineCharacter("Eylimi Othling", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 226.
	Name = "Eylimi",
	Dynasty = "Othling", -- dynasty name in the Norse myths
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton", -- Norse?
	ProvinceOfOrigin = "Zealand", -- since he descends from Halfdan the Old of Denmark
	Year = 437 - (30 * 3),
	DeathYear = 437 - (30 * 2) -- Gunnar/Gundahar died in 437 AD; Eylimi comes from one generation before him
})

DefineCharacter("Signy Volsung", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, pp. 2-3.
	Name = "Signy",
	Dynasty = "Volsung",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
	Year = 437 - (30 * 2),
	DeathYear = 437 - (30 * 1), -- Gunnar/Gundahar died in 437 AD; Signy comes from one generation before him
	Father = "Volsung"
	-- wedded to Siggeir
})

DefineCharacter("Siggeir", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, pp. 2-3.
	Name = "Siggeir",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
	Year = 437 - (30 * 2),
	DeathYear = 437 - (30 * 1), -- Gunnar/Gundahar died in 437 AD; Siggeir comes from one generation before him
	-- wedded to Signy
})

DefineCharacter("Siegmund Volsung", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3.
	Name = "Siegmund", -- also known as Sigmund in the Norse myths; tenth and youngest son of Volsung
	Dynasty = "Volsung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
	Year = 437 - (30 * 2),
	DeathYear = 437 - (30 * 1), -- Gunnar/Gundahar died in 437 AD; Siegmund comes from one generation before him
	Father = "Volsung"
})

DefineCharacter("Sieglind Hraudung", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 226.
	Name = "Sieglind", -- also known as Hjordis in the Norse myths; 
	Dynasty = "Hraudung", -- dynasty name in the Norse myths (would be better to know the German name to put here, since her given name is in German); she was also an Othling
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton", -- Norse?
	ProvinceOfOrigin = "Zealand", -- since he descends from Halfdan the Old of Denmark
	Year = 437 - (30 * 2),
	DeathYear = 437 - (30 * 1), -- Gunnar/Gundahar died in 437 AD; Sieglind comes from one generation before him
	Father = "Eylimi Othling"
})

DefineCharacter("Sinfiotli Volsung", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3.
	Name = "Sinfiotli", -- born out of the incestuous relationship between Siegmund and his sister Signy
	Dynasty = "Volsung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
	Year = 437 - (30 * 1),
	DeathYear = 437, -- Gunnar/Gundahar died in 437 AD; Siegfried comes from the same generation as him
	Father = "Siegmund Volsung",
	Mother = "Signy Volsung"
})

DefineCharacter("Siegfried Volsung", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94.
	Name = "Siegfried", -- Son of Siegmund and Sieglind; Gudrun's husband
	Dynasty = "Volsung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
	Year = 437 - (30 * 1),
	DeathYear = 437, -- Gunnar/Gundahar died in 437 AD; Siegfried comes from the same generation as him
	Father = "Siegmund Volsung",
	Mother = "Sieglind Hraudung"
})

DefineCharacter("Svanhild Volsung", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 226.
	Name = "Svanhild",
	Dynasty = "Volsung",
	Gender = "female",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
	Year = 437,
	DeathYear = 437 + (30 * 1), -- Gunnar/Gundahar died in 437 AD; Svanhild comes from one generation after him
	Father = "Siegfried Volsung"
})

DefineCharacter("Ricimer", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 96-97.
	Name = "Ricimer", -- ally of Flavius Aetius and de facto ruler of the Roman Empire at a certain stage; was married to the sister of the Burgundian king Gundioc
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton", -- correct?
--	ProvinceOfOrigin = "?",
	Year = 405, -- born
	DeathYear = 472 -- died
})

DefineCharacter("Clovis", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 97, 99.
	Name = "Clovis", -- Frankish king and husband of Clothilda (daughter of the Burgundian king Chilperic); converted to Catholic Christianity
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
--	ProvinceOfOrigin = "?",
	Year = 511 - 30, -- estimated
	DeathYear = 511 -- died
})
