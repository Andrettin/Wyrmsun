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

DefineCharacter("Hraudung", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 59.
	Name = "Hraudung", -- king of the Goths in the Lay of Grimnir
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Agnar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 59-60.
	Name = "Agnar", -- Hraudung's eldest son in the Lay of Grimnir, who was sent away in a boat by his brother Geirrod, but eventually found his way to a cave where he mated with a giantess
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Hraudung"
})

DefineCharacter("Geirrod", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 59-60, 64.
	Name = "Geirrod", -- Hraudung's younger son in the Lay of Grimnir, who sent his brother Agnar away and then became king (Hraudung had died while they were away); died by falling on his own sword
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Trait = "upgrade-cruel", -- was a cruel, tyrannical ruler; had sudden fits of anger; nevertheless, was generous and welcoming of guests
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Hraudung"
})

DefineCharacter("Agnar II", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 60-61, 64.
	Name = "Agnar", -- Geirrod's son, named after Geirrod's brother; ruled for a long time after succeeding Geirrod
	ExtraName = "II", -- to differentiate him from his uncle
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Trait = "upgrade-compassionate", -- when Grimnir (Odin in disguise) suffered, Agnar suffered with him; gave Grimnir a horn with drink
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Geirrod"
})

DefineCharacter("Ermanaric", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 225-226, 536, 552; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 22.
	Name = "Ermanaric", -- king of the East Goths; also known as Ermanarich; known as Ermenrich in High German; known as Jormunrek in the Norse myths; in Norse tradition, slew his own sons; in the Norse myths married with Sigurd's daughter Svanhild and slew her (it would, however, have been impossible for Sigurd to be a contemporary of Gundahar/Gunnar and his daughter and Ermanaric have married); in the Dietrich saga, was the uncle of Dietrich who expelled him from his possessions (he could not have been a contemporary of Dietrich/Theodoric, however)
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Ukraine", -- accurate?
	Year = 376 - (30 * 1), -- estimated
	DeathYear = 376 -- died
})

DefineCharacter("Walamer Amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
	Name = "Walamer", -- king of the Ostrogoths; invaded Illyria in 462 AD
	Dynasty = "Amelung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Pannonia",
	Year = 453, -- ruled over the Ostrogoths when Attila died and his Hunnic empire collapsed in 453 AD
	DeathYear = 472 -- died
})

DefineCharacter("Theodemer Amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 6-7.
	Name = "Theodemer", -- brother of Walamer
	Dynasty = "Amelung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Pannonia",
	Year = 453, -- same generation as Walamer
	DeathYear = 474 -- died
})

DefineCharacter("Widemer Amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
	Name = "Widemer", -- brother of Walamer
	Dynasty = "Amelung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Pannonia",
	Year = 453, -- same generation as Walamer
	DeathYear = 453 + (30 * 1) -- estimated
})

DefineCharacter("Theoderic Amelung", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 6-7, 9.
	Name = "Theoderic", -- king of the Ostrogoths; Dietrich von Bern in the German sagas; was given as a hostage by Walamer to the Romans, and thus stayed for 10 years (until 472 AD) in the Byzantine court; his religion was Arian Christianity
	Dynasty = "Amelung",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Pannonia",
	Year = 454, -- born (was 8 years old in 462 AD)
	DeathYear = 526, -- died; he was put in a magnificent marble tomb in Ravenna
	Father = "Theodemer Amelung"
})

DefineCharacter("Odoacer", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, pp. 7-9.
	Name = "Odoacer",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
--	ProvinceOfOrigin = "?",
	Year = 480, -- Odoacer deposed Romulus Augustus in 480 AD, going then on to rule Italy as an independent king
	DeathYear = 493 -- was put to death by Theoderic in 493 AD
})

DefineCharacter("Tufa", { -- Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 8-9.
	Name = "Tufa", -- follower of Odoacer who deserted to Theoderic in or just after 489 AD, only to return his allegiance to Odoacer afterwards, betraying Theoderic
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
--	ProvinceOfOrigin = "?",
	Year = 489,
	DeathYear = 493 -- was probably put to death by Theoderic in 493 AD when the defenders of Ravenna (including Odoacer) were
})

DefineCharacter("Gibica", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 91; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 226.
	Name = "Gibica", -- known as Gjuki in the Norse myths; married to Grimhild
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia", -- place where the Burgundians dwelled before moving to the area of the Palatinate
	Year = 411 - (30 * 1), -- estimated
	DeathYear = 411
})

DefineCharacter("Grimhild", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 226, 519.
	Name = "Grimhild", -- married to Gibica/Gjuki; also known as Kriemhild
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia", -- place where the Burgundians dwelled before moving to the area of the Palatinate
	Year = 411 - (30 * 1), -- estimated
	DeathYear = 411
})

DefineCharacter("Gundahar", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 91-94; Source: Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 226.
	Name = "Gundahar", -- also known as Gunnar in Norse myths, as Günter in the Nibelungenlied, and as Gunthere in the Anglo-Saxon poem Widsith
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia", -- place where the Burgundians dwelled before moving to the area of the Palatinate
	Trait = "upgrade-generous", -- in the Anglo-Saxon poem "Widsith", Gundahar (Gunthere) gave the poet "a shining treasure" for his songs
	Year = 406, -- Gundahar and his father Gibica brought the Burgundians over the Rhine in 406/407 AD
	DeathYear = 437, -- invasion of Gundahar's kingdom in 437 AD by Attila's Huns
	Father = "Gibica",
	Mother = "Grimhild"
})

DefineCharacter("Glaumvor", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 502.
	Name = "Glaumvor", -- name means "The Merry"; the wife of Gundahar/Gunnar in the Norse myths; "knew well to care for the needs of the guests"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia", -- place where the Burgundians dwelled before moving to the area of the Palatinate
	Year = 437 - (30 * 1),
	DeathYear = 437 -- comes from the same generation as Gunnar/Gundahar, who died in 437 AD
})

DefineCharacter("Gudrun", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94; Source: Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 226.
	Name = "Gudrun", -- Gundahar's sister in the Norse myths, in which she would first marry Siegfried (Sigurd), and then Attila (Atli); also known as Kriemhild in the Nibelungenlied
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia", -- place where the Burgundians dwelled before moving to the area of the Palatinate
	Year = 437 - (30 * 1),
	DeathYear = 437, -- comes from the same generation as Gunnar/Gundahar, who died in 437 AD
	Father = "Gibica",
	Mother = "Grimhild"
})

DefineCharacter("Hogni", { -- Source: Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 226.
	Name = "Hogni", -- brother of Gundahar/Gunnar in the Norse myths
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia",
	Year = 437 - (30 * 1),
	DeathYear = 437, -- comes from the same generation as Gunnar/Gundahar, who died in 437 AD
	Father = "Gibica",
	Mother = "Grimhild"
})

DefineCharacter("Kostbera", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 502-503.
	Name = "Kostbera", -- wife of Hogni; name means "The Giver of Food"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "goth",
	Trait = "upgrade-wise", -- kind; wise and cunning in rune-craft
	ProvinceOfOrigin = "Franconia",
	Year = 437 - (30 * 1),
	DeathYear = 437 -- comes from the same generation as Gunnar/Gundahar, who died in 437 AD
})

DefineCharacter("Orkning", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 509-510.
	Name = "Orkning", -- Kostbera's brother
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia",
	Year = 437 - (30 * 1),
	DeathYear = 437 -- comes from the same generation as Gunnar/Gundahar, who died in 437 AD
})

DefineCharacter("Snaevar", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 509, 517.
	Name = "Snaevar",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia",
	Year = 437, -- he belonged to one generation after Gundahar/Gunnar, who died in 437 AD
	DeathYear = 437 + (30 * 1),
	Father = "Hogni",
	Mother = "Kostbera"
})

DefineCharacter("Solar", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 509, 517.
	Name = "Solar",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia",
	Year = 437, -- he belonged to one generation after Gundahar/Gunnar, who died in 437 AD
	DeathYear = 437 + (30 * 1),
	Father = "Hogni",
	Mother = "Kostbera"
})

DefineCharacter("Gotthorm", { -- Source: Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 226, 533.
	Name = "Gotthorm", -- half-brother of Gundahar/Gunnar, Hogni and Gudrun in the Norse myths; his father was not Gibica/Gjuki (who was thus his step-father); killed Sigurd at Brynhild's request
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Franconia",
	Year = 437 - (30 * 1),
	DeathYear = 437, -- comes from the same generation as Gunnar/Gundahar, who died in 437 AD
	Mother = "Grimhild"
})

DefineCharacter("Brynhild", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 226.
	Name = "Brynhild", -- requested Gotthorm to kill Sigurd
	Gender = "female",
	Type = "unit-teuton-swordsman",
	Civilization = "goth", -- put her as a Burgundian until we have better information
	ProvinceOfOrigin = "Franconia",
	Year = 437 - (30 * 1),
	DeathYear = 437 -- comes from the same generation as Gunnar/Gundahar, who died in 437 AD
})

DefineCharacter("Gundioc", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 94-96.
	Name = "Gundioc", -- Burgundian king after Gundahar; also known as Gunderic
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Palatinate",
	Year = 437, -- beginning of reign
	DeathYear = 474, -- end of reign
	Father = "Gundahar", -- from Gibica's line (so presumably a child of Gundahar's)
	Mother = "Glaumvor" -- if he was a child of Gundahar's, then his mother would likely be Glaumvor
})

DefineCharacter("Chilperic", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 96.
	Name = "Chilperic", -- Burgundian king after Gundioc
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Switzerland", -- the Burgundian kingdom was centered in Genava (Geneva); Source: Norman Davies, "Vanished Kingdoms", 2012, p. 95.
	Year = 474, -- beginning of reign
	DeathYear = 480, -- end of reign
	Father = "Gundioc" -- from Gibica's line (so presumably a child of Gundioc's)
})

DefineCharacter("Clothilda", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 97.
	Name = "Clothilda", -- Daughter of Chilperic's who was married to the Clovis, king of the Franks; later became a saint due to her having convinced her husband to convert to Catholic Christianity; was buried in the church of St Geneviève in Paris
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "goth",
	Trait = "upgrade-pious",
	ProvinceOfOrigin = "Switzerland",
	Year = 474, -- born
	DeathYear = 545, -- died
	Father = "Chilperic"
})

DefineCharacter("Gundobad", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 96-97.
	Name = "Gundobad", -- Burgundian king after Chilperic; name means "bold in battle"; had the title of Roman patrician; wrote two law codes, the "Lex Romana Burgundionum" and the "Lex Gundobada"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Trait = "upgrade-wise",
	ProvinceOfOrigin = "Switzerland",
	Year = 480, -- beginning of reign
	DeathYear = 516, -- end of reign
	Father = "Gundioc" -- was Chilperic's brother, so presumably a child of Gundioc's
})

DefineCharacter("Sigismund", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 96, 98.
	Name = "Sigismund", -- Burgundian king after Gundobad; converted to Catholic Christianity and later became a saint
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Switzerland",
	Trait = "upgrade-pious",
	Year = 516, -- beginning of reign
	DeathYear = 523, -- end of reign
	Father = "Gundobad" -- son of Gundobad
})

DefineCharacter("Gundimar", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 96, 99.
	Name = "Gundimar", -- Burgundian king after Sigismund; also known as Godomar; name means "celebrated in battle"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	ProvinceOfOrigin = "Switzerland",
	Year = 523, -- beginning of reign
	DeathYear = 534, -- end of reign (was proscribed, pursued and executed by the Franks, and his realm was annexed by them)
	Father = "Sigismund" -- from Gibica's line (so presumably a child of Sigismund's)
})
