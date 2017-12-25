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
--      (c) Copyright 2015-2017 by Andrettin
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

DefineCharacter("gudlog", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 237-238.
	Name = "Gudlög",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- was captured in Denmark by Jorund and Eric Yngling, and then was killed by them
	Quote = "\"By the fierce East-kings' cruel pride,\nGudlog must on the wild horse rider -\nThe wildest horse you e'er did see:\n'Tis Segur's steed - the gallows tree.\"\n- Eyvind Skaldaspiller",
	HistoricalTitles = {
		"head-of-state", 0, 0, "halogaland" -- was a king, presumably of Halogaland, since his son was king of that place
	}
})

DefineCharacter("gylog", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 238.
	Name = "Gylög",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Father = "gudlog",
	HistoricalTitles = {
		"head-of-state", 0, 0, "halogaland"
	}
})

DefineCharacter("godgest", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 245.
	Name = "Godgest",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "halogaland",
	-- Adils Yngling sent Godgest the horse Raven as a gift
	HistoricalTitles = {
		"head-of-state", 0, 0, "halogaland"
	}
})

DefineCharacter("hogne-of-niardo", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 246.
	Name = "Hogne",
	ExtraName = "of Niardö",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- from Niardö, an island in "North Drontheim" (North Trondheim)
})

DefineCharacter("solve", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 246.
	Name = "Solve",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- sea-king
	Civilization = "norse",
	-- from Niardö, an island in "North Drontheim" (North Trondheim)
	Father = "hogne-of-niardo",
	-- Solve slew Adils Yngling by burning
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe" -- Solve became king of Sweden after killing Adils Yngling, but eventually he was killed and Adils' son made king
		-- Solve had dominions in Jutland, but from the source it is not clear if he ruled over all of Jutland, or only a portion of it
	}
})

DefineCharacter("solve-the-old", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Solve",
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- settled the Soloer Islands
})

DefineCharacter("solve-solvesson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Solve",
	ExtraName = "Solvesson",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- from the Soloer Islands
	Father = "solve-the-old"
})

DefineCharacter("halfdan-guldtand", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Halfdan",
	ExtraName = "Guldtand",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- from the Soloer Islands
	Father = "solve-solvesson"
})

DefineCharacter("solveig", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 255.
	Name = "Solveig", -- also known as Solva
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	-- from the Soloer Islands
	Father = "halfdan-guldtand",
	-- married to Olaf Treefeller Yngling
})

DefineCharacter("eystein-the-severe", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Eystein",
	ExtraName = "the Severe",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
	-- king of the Upland people (in Norway, so presumably Oppland)
})

DefineCharacter("asa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Asa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	-- daughter of the "king of the Upland people" (in Norway, so presumably Oppland)
	Father = "eystein-the-severe"
	-- married to Halfdan Huitbein Yngling
})

DefineCharacter("eric-agnarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Eric",
	ExtraName = "Agnarson", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- king in Westfold
	Father = "agnar-sigtrygson"
	-- had no son, so his dominions were taken over by Halfdan Huitbein and his son Eystein after his death (Eystein was married to Eric's daughter Hilde)
})

DefineCharacter("hilde", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 257.
	Name = "Hilde",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	-- her father was king in Westfold
	Father = "eric-agnarson"
})

DefineCharacter("alfarin", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Alfarin",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- king of Alfheim (the land between Glommen and Gotha rivers)
})

DefineCharacter("alfhild", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Alfhild",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	-- her father was king of Alfheim (the land between Glommen and Gotha rivers)
	Father = "alfarin"
})

DefineCharacter("harald-redbeard", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260.
	Name = "Harald",
	ExtraName = "Redbeard",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- ruled over Agder
	HairVariation = "red-hair" -- presumably, given his nickname
})

DefineCharacter("aasa", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260.
	Name = "Aasa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	-- her father ruled over Agder
	Father = "harald-redbeard",
	Trait = "upgrade-cruel" -- described as cruel
	-- married Gudrod the Magnificent Yngling
})

DefineCharacter("gyrder", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 259-260.
	Name = "Gyrder",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Father = "harald-redbeard"
})

DefineCharacter("alfgeir", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 260.
	Name = "Alfgeir",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
	-- ruled over (at least) Vingulmark
})

DefineCharacter("gandalf-of-vingulmark", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 260.
	Name = "Gandalf",
	ExtraName = "of Vingulmark", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- ruled over Vingulmark
	Father = "alfgeir"
	-- he lived during Olaf Geirstad-Alf Yngling's reign
})

DefineCharacter("eystein-the-great", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	Name = "Eystein",
	ExtraName = "the Great",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
	-- was king of Oppland
})

DefineCharacter("hogne-eysteinson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 261.
	Name = "Hogne",
	ExtraName = "Eysteinson", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- his father was king of Oppland
	Father = "eystein-the-great"
	-- he lived during Olaf Geirstad-Alf Yngling's reign
})

DefineCharacter("thiodolf-of-huine", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 227, 261.
	Name = "Thiodolf",
	ExtraName = "of Huine",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- composed the Ynglingatal for Rognvald Mountain-High Yngling of Vestfold
	AuthoredWorks = {"upgrade-work-ynglingatal"}
})

DefineCharacter("svan-the-red", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Svan",
	ExtraName = "the Red",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
	-- one of his descendants was a warrior of the king of Horthaland
})

DefineCharacter("saefari", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Saefari",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- one of his descendants was a warrior of the king of Horthaland
	Father = "svan-the-red"
})

DefineCharacter("ulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Ulf",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- his grandson was a warrior of the king of Horthaland
	Father = "saefari"
})

DefineCharacter("alf-the-old", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Alf",
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- his son was a warrior of the king of Horthaland
	Father = "ulf"
})

DefineCharacter("instein", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 100-101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Instein", -- one of the warriors of King Half of Horthaland
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "hordaland",
	Father = "alf-the-old"
})

DefineCharacter("saekonung", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101.
	Name = "Saekonung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
	-- a kinsman was a warrior of the king of Horthaland
})

DefineCharacter("svava", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101.
	Name = "Svava",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse"
	-- a kinsman was a warrior of the king of Horthaland
})

DefineCharacter("klypp", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Klypp",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
	-- a kinsman was a warrior of the king of Horthaland
})

DefineCharacter("ketil-hortha-kari", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Ketil", -- married to Hildigun; the semi-mythical Ketil Hortha-Kari, ancestor of many Icelandic families
	ExtraName = "Hortha-Kari",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- a kinsman was a warrior of the king of Horthaland
	Father = "klypp"
})

DefineCharacter("hildigun", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Hildigun", -- married to Ketil; also known as Hildiguth
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	-- a kinsman was a warrior of the king of Horthaland
	Father = "saekonung",
	Mother = "svava"
})

DefineCharacter("frodi", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Frodi",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
	-- a kinsman was a warrior of the king of Horthaland
})

-- "Frodi came before Kari" is said later; could this be the same Frodi as this one? The Kari here is perhaps Ketil Hortha-Kari, but he came before this Frodi, not after; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 223-224.

DefineCharacter("friaut", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Friaut",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	-- a kinsman was a warrior of the king of Horthaland
	Father = "ketil-hortha-kari",
	Mother = "hildigun"
})

DefineCharacter("hledis", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Hledis", -- adorned with golden bracelets
	Gender = "female",
	Type = "unit-teuton-priest", -- priestess
	Civilization = "norse",
	Faction = "hordaland", -- her husband was a warrior of the king of Horthaland
	Father = "frodi",
	Mother = "friaut"
})

DefineCharacter("ottar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 100-101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Ottar", -- in the Norse myths, human lover of the goddess Freya; made a bet with Argantyr for who had the better lineage
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "hordaland", -- his father was a warrior of the king of Horthaland
	Father = "instein",
	Mother = "hledis"
})

DefineCharacter("nokkvi", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Nokkvi",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
})

DefineCharacter("nanna", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Nanna", -- her son married Instein's sister
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Father = "nokkvi"
})

DefineCharacter("skekil", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Skekil", -- also known as Skekkil
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
})

DefineCharacter("olmod", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Olmod", -- married to Skurhold; also known as Olmoth
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Father = "ketil-hortha-kari"
})

DefineCharacter("skurhold", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 101-102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Skurhold", -- married to Olmod; also known as Skurhild
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Father = "skekil"
})

DefineCharacter("isulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Isulf", -- also known as Isolf
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Father = "olmod",
	Mother = "skurhold" -- presumably, since she was the wife of his father
})

DefineCharacter("osulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Osulf", -- also known as Osolf
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Father = "olmod",
	Mother = "skurhold" -- presumably, since she was the wife of his father
})

DefineCharacter("hild", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 223-224.
	Name = "Hild",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse"
})

DefineCharacter("half", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Half", -- also known as Hoalf; king of Horthaland (the Halfsrekkar); Instein was one of his warriors
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "hordaland",
	Mother = "hild"
})

DefineCharacter("swerre", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 115.
	Name = "Swerre", -- king (presumably) of Norway
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "norway",
	Date = 1177, -- reign began
	DeathDate = 1203, -- reign ended
	HistoricalTitles = {
		"head-of-state", 1177, 1203, "norway"
	}
})

DefineCharacter("magnus-the-saint", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 125, 128.
	Name = "Magnus", -- Earl (presumably) of Orkney, his sister was married to Koll; in his youth carried the dishes to the royal table
	ExtraName = "the Saint",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "orkney",
	DeathDate = 1129, -- presumably, since this is the date Kala was made Earl of Orkney
	HistoricalTitles = {
		"head-of-state", 0, 1129, "orkney"
	}
})

DefineCharacter("koll", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 125.
	Name = "Koll", -- husband of the sister of Earl Magnus the Saint
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "orkney" -- his son was Earl of Orkney
})

DefineCharacter("kala", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 125.
	Name = "Kala", -- Earl of Orkney; was made earl under the name of Earl Rognvald
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "orkney",
	Date = 1129, -- was made Earl of Orkney
	Father = "koll",
	HistoricalTitles = {
		"head-of-state", 1129, 0, "orkney"
	}
})

DefineCharacter("hakon", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Hakon", -- his son was King of Norway, so presumably he was too
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "norway",
	HistoricalTitles = {
		"head-of-state", 0, 0, "norway" -- his son was King of Norway, so presumably he was too; date estimated; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	}
})

DefineCharacter("hakon-hakonson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Hakon", -- King of Norway
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "norway",
	Date = 1261, -- annexed the Norse settlements in Greenland to Norway in 1261 AD
	Father = "hakon",
	HistoricalTitles = {
		"head-of-state", 1261, 0, "norway"
	}
})

