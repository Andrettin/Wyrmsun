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
--      (c) Copyright 2015-2016 by Andrettin
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

-- personnages from the Volsungasaga, presumed Teuton since Sigurd was a Frank
DefineCharacter("Volsung", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 226.
	Name = "Volsung",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Frank Tribe",
--	ProvinceOfOrigin = "?"
})

DefineCharacter("Eylimi Othling", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 226.
	Name = "Eylimi",
	FamilyName = "Othling", -- dynasty name in the Norse myths
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton", -- Norse?
	Faction = "Frank Tribe", -- what should it be instead, Dane Tribe?
	ProvinceOfOrigin = "Zealand" -- since he descends from Halfdan the Old of Denmark
})

DefineCharacter("Signy Volsung", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, pp. 2-3.
	Name = "Signy",
	FamilyName = "Volsung",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton",
	Faction = "Frank Tribe",
--	ProvinceOfOrigin = "?",
	Father = "Volsung"
	-- wedded to Siggeir
})

DefineCharacter("Siggeir", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, pp. 2-3.
	Name = "Siggeir",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Frank Tribe",
--	ProvinceOfOrigin = "?",
	DateReferenceCharacter = "Signy Volsung" -- comes from the same generation as Signy Volsung
	-- wedded to Signy
})

DefineCharacter("Siegmund Volsung", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3.
	Name = "Siegmund", -- also known as Sigmund in the Norse myths; tenth and youngest son of Volsung
	FamilyName = "Volsung",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Frank Tribe",
--	ProvinceOfOrigin = "?",
	Father = "Volsung"
})

DefineCharacter("Sieglind Hraudung", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 226.
	Name = "Sieglind", -- also known as Hjordis in the Norse myths; 
	FamilyName = "Hraudung", -- dynasty name in the Norse myths (would be better to know the German name to put here, since her given name is in German); she was also an Othling
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton", -- Norse?
	Faction = "Frank Tribe", -- seems unlikely to be correct
	ProvinceOfOrigin = "Zealand", -- since he descends from Halfdan the Old of Denmark
	Father = "Eylimi Othling"
})

DefineCharacter("Sinfiotli Volsung", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3.
	Name = "Sinfiotli", -- born out of the incestuous relationship between Siegmund and his sister Signy
	FamilyName = "Volsung",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Frank Tribe",
--	ProvinceOfOrigin = "?",
	Father = "Siegmund Volsung",
	Mother = "Signy Volsung"
})

DefineCharacter("Siegfried Volsung", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94.
	Name = "Siegfried", -- Son of Siegmund and Sieglind; Gudrun's husband
	FamilyName = "Volsung",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "Frank Tribe",
--	ProvinceOfOrigin = "?",
	Father = "Siegmund Volsung",
	Mother = "Sieglind Hraudung"
})

DefineCharacter("Svanhild Volsung", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 226, 536, 538, 542, 546.
	Name = "Svanhild", -- also called Sunilda or Sanielh; in the Norse myths was married to and killed by Jormunrek, but they could hardly have lived at the same time
	-- suffix is likely the Old Norse noun "Hildr"
	FamilyName = "Volsung",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "teuton",
	Faction = "Frank Tribe",
--	ProvinceOfOrigin = "?",
	Father = "Siegfried Volsung",
	Mother = "Gudrun"
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

DefineCharacter("Adalbert", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 141.
	Name = "Adalbert", -- archbishop of Bremen; was requested by Norse people (including from Greenland) to send clergymen to them, which he did
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "teuton", -- presumably
	ProvinceOfOrigin = "Bremen", -- presumably
	DeathYear = 1075 -- died
})

DefineCharacter("Judith von Babenberg", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 620.
	Name = "Judith",
	FamilyName = "von Babenberg",
	NobleFamilyNamePredicateElements = {"word", "high-german", "adposition", "Von"},
	PlaceNameDerivedFamilyName = true, -- presumably
	Gender = "female",
	Type = "unit-teuton-priest", -- correct?
	Civilization = "teuton",
	ProvinceOfOrigin = "Bavaria", -- her brother was margrave of Nordgau
	Noble = true
	-- was abducted by and married to Duke Břetislav I of Bohemia
})

Load("scripts/civilizations/teuton/characters_frank.lua")
Load("scripts/civilizations/teuton/characters_saxon.lua")
Load("scripts/civilizations/teuton/characters_suebi.lua")
Load("scripts/civilizations/teuton/characters_bavarian.lua")
Load("scripts/civilizations/teuton/characters_austrian.lua")
Load("scripts/civilizations/teuton/characters_lombard.lua")
