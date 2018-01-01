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
--      (c) Copyright 2015-2018 by Andrettin
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

DefineCharacter("vana", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 227.
	Name = "Vana",
	Gender = "female",
	Type = "unit-germanic-archer",
	Civilization = "norse",
	-- from Vanaland/Vanaheim
	-- wife of Svegðir's
})

DefineCharacter("aud-the-rich", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 229.
	Name = "Aud",
	ExtraName = "the Rich",
	Gender = "female", -- presumably, since another character named "Aud" was a female
	Type = "unit-teuton-archer",
	Civilization = "norse"
})

DefineCharacter("bera", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 235.
	Name = "Bera",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "swede-tribe", -- presumably, since her husband is from Sweden
	Quote = "\"A deed of dreadful note I sing,\nHow by false Bera, wicked queen,\nThe murderous brother-hands were seen\nEach raised against a brother's life\"\n- Thiodolf of Huine",
	-- married to Alf Yngling
	-- described as agreeable, very brisk and gay, but also false and wicked
})

DefineCharacter("hake", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 236-238.
	Name = "Hake",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	-- described as being a murderous combatant
	HistoricalTitles = {
		-- was king (of somewhere), and then invaded and conquered Sweden, becoming its king as well
		"head-of-state", 0, 0, "swede-tribe"
	}
	-- brother of Hagberd
})

DefineCharacter("hagberd", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Hagberd",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse"
	-- was king (of where?)
	-- brother of Hake
})

DefineCharacter("svipdag", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Svipdag",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Faction = "swede-tribe",
	Trait = "upgrade-mighty", -- described as a powerful combatant
	-- came to the assistance of king Hugleik of Sweden when he was attacked by Hake
	-- brother of Geigad
})

DefineCharacter("geigad", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Geigad",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Trait = "upgrade-mighty", -- described as a powerful combatant
	-- came to the assistance of king Hugleik of Sweden when he was attacked by Hake
	-- brother of Svipdag
})

DefineCharacter("starkod-the-old", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 236.
	Name = "Starkod",
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Trait = "upgrade-old",
	-- was a champion of Hake's
})

DefineCharacter("tunne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 240-241.
	Name = "Tunne",
	Gender = "male",
	Type = "unit-teuton-worker",
	Civilization = "norse"
	-- slave who was counsellor and treasurer to On the Old of Sweden
})

DefineCharacter("ali-of-the-uplands", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 245.
	Name = "Ali",
	ExtraName = "of the Uplands",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse"
	-- fought against Adils Yngling, dying in battle
	-- was king of the Uplands
})

DefineCharacter("yngvar", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 250.
	Name = "Yngvar",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse"
	-- lived during the reign of Onund over Sweden
	-- district-king of Fiadryndaland (in Sweden)
})

DefineCharacter("alf-yngvarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 250.
	Name = "Alf",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "yngvar"
})

DefineCharacter("agnar-yngvarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 250.
	Name = "Agnar",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "yngvar"
})

DefineCharacter("svipdag-the-blind", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 248, 253.
	Name = "Svipdag",
	ExtraName = "the Blind",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse"
	-- presumably from Fiundaland, where Upsal is located
	-- lived during the reign of Onund over Sweden
	-- district-king of Fiundaland (in Sweden)
	-- Ingiald Yngling's foster-father
})

DefineCharacter("gautvid", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248, 253.
	Name = "Gautvid",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "svipdag-the-blind"
	-- Ingiald Yngling's foster-brother
})

DefineCharacter("olaf-skygne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Olaf",
	ExtraName = "Skygne",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	-- king in Nerike
})

DefineCharacter("alofa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Alofa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	-- from Nerike
	Father = "olaf-skygne"
})

DefineCharacter("gaut", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249.
	Name = "Gaut",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse"
})

DefineCharacter("gautrek-the-mild", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249.
	Name = "Gautrek",
	ExtraName = "the Mild",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "gaut"
})

DefineCharacter("algaut", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249.
	Name = "Algaut",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "geat-tribe",
	Father = "gautrek-the-mild",
	HistoricalTitles = {
		"head-of-state", 0, 0, "geat-tribe" -- was a king - apparently of Got(a?)land
	}
})

DefineCharacter("gauthild", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 248-249, 255.
	Name = "Gauthild", -- name also written in the source as "Gautheld"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Father = "algaut",
	Mother = "alofa"
})

DefineCharacter("spossniall", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 250.
	Name = "Spossniall",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse"
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	-- (district-)king of Nerike (in Sweden)
})

DefineCharacter("sighvat", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 250.
	Name = "Sighvat",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse"
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	-- (district-)king of Aattundaland (in Sweden)
})

DefineCharacter("granmar", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 250-252.
	Name = "Granmar",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse"
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	-- (district-)king of Sondermanland (in Sweden)
	-- married to Hilda
})

DefineCharacter("hogne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 252.
	Name = "Hogne",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse"
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	-- ruled over East Gotaland
})

DefineCharacter("hildur", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 252.
	Name = "Hildur",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "hogne"
})

DefineCharacter("hilda", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 252.
	Name = "Hilda",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Father = "hogne"
	-- married to Granmar
})

DefineCharacter("folkvid", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 251.
	Name = "Folkvid",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	-- presumably from Fiundaland (where his father ruled), where Upsal is located
	Father = "svipdag-the-blind"
})

DefineCharacter("hylvid", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 251, 253.
	Name = "Hylvid",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	-- presumably from Fiundaland (where his father ruled), where Upsal is located
	Father = "svipdag-the-blind"
})

DefineCharacter("ylfing", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 251.
	Name = "Ylfing",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse"
})

DefineCharacter("hiorvard-ylfing", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 251-252.
	Name = "Hiorvard",
	FamilyName = "Ylfing",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "ylfing",
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	-- was a king (of where?)
	-- married to Hildigunna
})

DefineCharacter("hildigunna", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 251-252.
	Name = "Hildigunna",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Father = "granmar",
	Mother = "hilda"
	-- described as beautiful
	-- married to Hiorvard Ylfing
})

DefineCharacter("bove", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-254.
	Name = "Bove",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	-- from West Gotaland
	-- Gauthild sent her son to be fostered by Bove
})

DefineCharacter("savre-flettir", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 253-254.
	Name = "Savre",
	ExtraName = "Flettir",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	-- from West Gotaland
	Father = "bove"
})

DefineCharacter("arngrim", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102.
	Name = "Arngrim", -- married to Eyfura
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse"
	-- his sons were born in the island of Bolmsö off Smaland
})

DefineCharacter("eyfura", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102.
	Name = "Eyfura", -- married to Arngrim
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse"
	-- her sons were born in the island of Bolmsö off Smaland
})

DefineCharacter("hervard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hervard", -- berserk; born in the island of Bolmsö long before Ottar's time; also known as Hervarth
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("hjorvard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 225, 227.
	Name = "Hjorvard", -- berserk; born in the island of Bolmsö long before Ottar's time; also known as Hjorvarth
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("hrani", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hrani", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("argantyr", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Argantyr", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("bui", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Bui", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("brami", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Brami", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("barri", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Barri", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("reifnir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Reifnir", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("tind", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Tind", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("tyrfing", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Tyrfing", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("hadding", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hadding", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("hadding-ii", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 225.
	Name = "Hadding", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Father = "arngrim",
	Mother = "eyfura"
})

DefineCharacter("hvedna", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Hvedna", -- wife of king Halfdan of Denmark (likely to not be Halfdan the Old, who had another wife)
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	-- her father (if indeed the same as the previously-mentioned berserk) was born in the island of Bolmsö off Smaland
	Father = "hjorvard" -- her father was called Hjorvard; presumably the same berserk mentioned previously
})

DefineCharacter("haki", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Haki", -- the best of Hvedna's sons
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	-- his grandfather (if indeed the same as the previously-mentioned berserk) was born in the island of Bolmsö off Smaland
	Mother = "hvedna"
})

DefineCharacter("hrorek-the-ring-giver", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Hrorek", -- also known as Hrörek; was killed by his father-in-law Ivar
	ExtraName = "the Ring Giver", -- or "Ring-Giver"
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse"
	-- his father-in-law was king of Sweden
})

DefineCharacter("ivar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Ivar",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "sweden",
	HistoricalTitles = {
		"head-of-state", 0, 0, "sweden" -- king of Sweden
	}
})

DefineCharacter("aud-the-profound", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Aud", -- wife of Hrorek the Ring Giver; after her father Ivar killed her husband, she fled with her son Harald to Russia and married King Rathbard
	ExtraName = "the Profound",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "sweden", -- her father was king of Sweden
	Father = "ivar",
	Children = {"randver"}
})

DefineCharacter("harald-war-tooth", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Harald", -- had a warring career in Norway; died in Bravalla-field at the hands of his nephew, Sigurd Ring (son of Randver)
	ExtraName = "War Tooth", -- or "Battle-Tooth"
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Faction = "sweden", -- his grandfather was king of Sweden
	Father = "hrorek-the-ring-giver",
	Mother = "aud-the-profound"
})

