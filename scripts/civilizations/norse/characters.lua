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

DefineCharacter("eymund", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Eymund", -- king of Holmgarth (i.e. Russia); described as "the strongest of men"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- accurate?
	Trait = "upgrade-strong"
})

DefineCharacter("almveig", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Almveig", -- wife of Halfdan the Old Skjoldung; also known as Alvig; bore Halfdan the Old eighteen sons (nine of them being in a single birth); the nine who were the result of a single birth were all slain, while the other nine are held to be the ancestors of the most famous heroes in Norse myths
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse", -- accurate?
	-- her father was king of Russia
	Father = "eymund"
})

DefineCharacter("sigtrygg", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Sigtrygg", -- Halfdan the Old slew him with an ice-cold sword
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
})

DefineCharacter("gudrod", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 254.
	Name = "Gudrod",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "scania",
	-- lived during the reign of Ingiald the Evil-Adviser over Sweden
	HistoricalTitles = {
		"head-of-state", 0, 0, "scania" -- king of Scania
	}
	-- married Aasa Yngling
})

DefineCharacter("halfdan", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 254.
	Name = "Halfdan",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "scania"
	-- Gudrod's brother
})

DefineCharacter("ivar-vidfadme", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 254-255.
	Name = "Ivar",
	ExtraName = "Vidfadme",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "scania",
	Father = "halfdan",
	HistoricalTitles = {
		"head-of-state", 0, 0, "scania", -- king of Scania
		"head-of-state", 0, 0, "swede-tribe" -- conquered Sweden
	}
})

DefineCharacter("sigtryg", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Sigtryg",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- was king in the "Vend district" (where?)
})

DefineCharacter("agnar-sigtrygson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 257-258.
	Name = "Agnar",
	ExtraName = "Sigtrygson", -- to differentiate him from the other Agnar
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- his father was king in the "Vend district" (where?)
	Father = "sigtryg"
})

DefineCharacter("skiold", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 258.
	Name = "Skiold",
	Gender = "male",
	Type = "unit-teuton-swordsman", -- was a great warlock
	Civilization = "norse",
	-- lived in Varna (where?)
	-- Eystein Yngling, son of Halfdan Huitbein, went with ships and raided Varna
	-- was a king
})

DefineCharacter("dag-of-westmor", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Dag",
	ExtraName = "of Westmor", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	-- was king of Westmor (where?)
})

DefineCharacter("hlif", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 259.
	Name = "Hlif",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	-- her father was king of Westmor (where?)
	Father = "dag-of-westmor"
	-- married to Halfdan the Mild Yngling
})

DefineCharacter("rathbard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Rathbard", -- king
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse" -- correct?
	-- from Russia
})

DefineCharacter("randver", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Randver",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- correct?
	-- his father was a king from Russia
	Father = "rathbard",
	-- his mother was Aud the Profound
})

DefineCharacter("sigurd-ring", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 227.
	Name = "Sigurd",
	ExtraName = "Ring",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- correct?
	-- his grandfather was a king from Russia
	Father = "randver"
})

DefineCharacter("skelfir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 221.
	Name = "Skelfir", -- a mythical king in "the East", from whom the Skilfings spring
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
})

DefineCharacter("helgi-hundingsbane-ylfing", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 221.
	Name = "Helgi",
	ExtraName = "Hundingsbane",
	FamilyName = "Ylfing",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
})

DefineCharacter("gautrek", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Gautrek",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse"
	-- his son was king of Gautland
})

DefineCharacter("hrolf-the-old", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Hrolf", -- King Hrolf Gautreksson of Gautland, also known as Hrolf the Old
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland",
	Father = "gautrek",
	HistoricalTitles = {
		"head-of-state", 0, 0, "gautland"
	}
})

DefineCharacter("gunnar-the-bulwark", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Gunnar",
	ExtraName = "the Bulwark",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland" -- was in Hrolf the Old's household
})

DefineCharacter("thorkel", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Thorkel",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland" -- his son was in Hrolf the Old's household
})

DefineCharacter("grim-the-hardy", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Grim",
	ExtraName = "the Hardy",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland", -- was in Hrolf the Old's household
	Father = "thorkel"
})

DefineCharacter("thorir-the-iron-shield", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Thorir",
	ExtraName = "the Iron-Shield",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland" -- was in Hrolf the Old's household
})

DefineCharacter("ulf-the-gaper", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Ulf",
	ExtraName = "the Gaper",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland" -- was in Hrolf the Old's household
})

DefineCharacter("brodd", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Brodd",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland" -- was in Hrolf the Old's household
})

DefineCharacter("horvir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 224.
	Name = "Hörvir",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Faction = "gautland" -- was in Hrolf the Old's household
})

DefineCharacter("eric-red", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 161.
	Name = "Eric",
	ExtraName = "Red",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Date = 986 -- in the Spring of 986 Eric Red migrated from Iceland to Greenland with Heriulf Bardson, settling in Brattalid (in Ericsfiord)
})

DefineCharacter("heriulf-bardson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 161.
	Name = "Heriulf",
	ExtraName = "Bardson",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Date = 986 -- in the Spring of 986 migrated from Iceland to Greenland with Eric Red, settling in Heriulfsness
})

DefineCharacter("biorne", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 161.
	Name = "Biorne",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Father = "heriulf-bardson",
	Date = 986 -- was in Norway when his father Heriulf Bardson migrated from Iceland to Greenland in the Spring of 986
})

DefineCharacter("leif", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 162-163.
	Name = "Leif",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Father = "eric-red",
	Date = 1000 -- went forth from Greenland c. 1000 with a ship he bought from Biorne to find the lands Biorne had seen; Leif's crew had 35 men
	-- Leif named three countries he found: Hellaland (a plain of flat slaty stones), Markland (a wooded country with many cliffs of white sand) and Vinland (a country with vines and grapes)
})

DefineCharacter("thorwald", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 163.
	Name = "Thorwald",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	Father = "eric-red", -- presumably, since he was Leif's brother
	Date = 1002 -- went forth from Greenland in 1002 with Leif's ship to Vinland
	-- Thorwald named a headland Kialarness
	-- Thorwald died in an attack from the Skraelings (probably Indians), and was buried at a place named Crossness
})

DefineCharacter("arnold", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Arnold", -- Bishop of Greenland
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
	Deities = {"christian-god"},
	Date = 1121 -- ordained Bishop of Greenland by the Archbishop of Lund (in Scania)
})

DefineCharacter("sturla-thordarson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 188.
	Name = "Sturla",
	ExtraName = "Thordarson",
	Gender = "male",
	Type = "unit-teuton-priest", -- he was a Godar (a function which was originally both priest and judge, but eventually became more and more only the latter)
	Civilization = "norse"
	-- his son was from Iceland
})

DefineCharacter("snorri-sturlson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 12, 188, 192, 195-196, 198-199; Source: Snorri Sturlson, "The Prose Edda", 1916, p. XI.
	Name = "Snorri",
	ExtraName = "Sturlson",
	Gender = "male",
	Type = "unit-teuton-priest", -- since his father was a Godar and that was a hereditary position; was a learned man in a number of old legends and mythologies
	Civilization = "norse",
	Father = "sturla-thordarson",
	Trait = "upgrade-ambitious", -- described as greedy, selfish, ambitious, rapacious, bold, unprincipled and of intellectual powers far above that of his contemporaries
	Date = 1178, -- born in 1178 at Hvam, in western Iceland
	DeathDate = 1241, -- Snorri was murdered by his three sons-in-law, Gizurr Thórvaldsson, Kolbein and Arne, in Iceland in September 1241
	ViolentDeath = true
})

DefineCharacter("alf", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Alf", -- also known as Alfus; officiated in Greenland; presumably was Bishop of Greenland
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
	Deities = {"christian-god"},
	DeathDate = 1378 -- died in Greenland
})

DefineCharacter("henry-of-greenland", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Henry", -- appointed Bishop of Greenland, but never arrived there
	ExtraName = "of Greenland", -- to differentiate him
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
	Deities = {"christian-god"},
	Date = 1389 -- appointed Bishop of Greenland
})

DefineCharacter("askil", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Askil", -- appointed Bishop of Greenland to succeed Henry in case he was dead; never reached Greenland
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
	Deities = {"christian-god"},
	Date = 1406 -- appointed Bishop of Greenland to succeed Henry in case he was dead
})

DefineCharacter("andreas", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Andreas",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- presumably
	-- his son was Bishop of Greenland
})

DefineCharacter("endrede", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Endrede", -- Bishop of Greenland
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- presumably
	Deities = {"christian-god"},
	Date = 1409, -- executed a marriage settlement at Garda (the episcopal seat of Greenland) in 1409
	Father = "andreas"
})

DefineCharacter("magnus-eyolfson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 159.
	Name = "Magnus",
	ExtraName = "Eyolfson",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse", -- correct?
	Deities = {"christian-god"},
	Date = 1477 -- was bishop of Skalholt (in Iceland) in 1477
})

DefineCharacter("thormod-torfaeus", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 154-155.
	Name = "Thormod",
	FamilyName = "Torfaeus", -- "Torfæus"
	Gender = "male",
	Type = "unit-teuton-priest", -- put as a priest since there isn't any other unit type more appropriate for a writer
	Civilization = "norse",
	Date = 1707, -- his "Historiae Vinlandiae Antiquae" dates from 1707
	AuthoredWorks = {"upgrade-work-historiae-vinlandiae-antiquae"}
})

DefineCharacter("hans-egide", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 147.
	Name = "Hans", -- Norwegian minister who settled in Greenland
	FamilyName = "Egide",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "norse",
	Deities = {"christian-god"},
	Date = 1721 -- settled in Greenland amongst the eskimos as a missionary in 1721
})

Load("scripts/civilizations/norse/characters_danish.lua")
Load("scripts/civilizations/norse/characters_norwegian.lua")
Load("scripts/civilizations/norse/characters_swedish.lua")
Load("scripts/civilizations/norse/characters_yngling.lua")
