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
--      (c) Copyright 2015-2019 by Andrettin
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

DefineDeity("freyja", { -- Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 135; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 46-47.
	Name = "Freyja",
	Pantheon = "vanir",
	HomePlane = "vanaheim",
	Civilizations = {"elf", "germanic", "norse"}, -- Alaric Hall proposes that the Vanir are more or less identical with the elves, so it makes sense to make Freyja an elven deity as well; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 135.
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"earth"}, -- fertility goddess, and a goddess of love
	CulturalNames = {
		"germanic", "Fraujon" -- "Fraujōn"; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 135.
	},
	Description = "With the conclusion of the war between the Aesir and the Vanir, the two pantheons agreed to a peace, and that a few of each group should live among the other. Freyja was one of the Vanir who went to dwell in Asgard with the Aesir, accompanied by her father Njord and her brother Frey. At first, the Vanir were worshiped only by elves. As the Aesir were connected to Germanic peoples through their priests, when Freyja went to live in Asgard she began to be worshiped by the Germanics as well.",
	Feasts = {
		"Disa Blot" -- great sacrifice held in mid-winter; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 245.
	}
})

DefineDeity("gullveig", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 7; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 81-82.
	Name = "Gullveig",
	Pantheon = "vanir",
	HomePlane = "vanaheim",
	Civilizations = {"elf", "norse"}, -- Alaric Hall proposes that the Vanir are more or less identical with the elves, so it makes sense to make Gullveig an elven deity as well; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 135.
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"greed"},
	Description = "A gold-loving goddess, Gullveig was burned alive during a visit to the Aesir for her greed. Three times she was burned, and three times she was reborn. The Asgardian treatment of the goddess caused the Aesir-Vanir War. Gullveig is feared for her work of dark magic."
})

DefineDeity("kvasir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 8.
	Name = "Kvasir",
	Pantheon = "vanir",
	HomePlane = "vanaheim",
	Civilizations = {"elf", "norse"}, -- Alaric Hall proposes that the Vanir are more or less identical with the elves, so it makes sense to make Kvasir an elven deity as well; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 135.
	Religions = {"paganism"},
	Gender = "male",
	Icon = "icon-kvasir",
	Domains = {"wisdom"},
	CharacterUpgrade = "upgrade-kvasir-character",
--	Description = "The wisest of the Vanir, Kvasir was sent to live with the Aesir in Asgard as a result of the peace treaty which concluded the Aesir-Vanir War."
})

DefineDeity("nerthus", { -- same etymological root as Njord, likely originally the same deity; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 44, 47.
	Name = "Nerthus",
	Pantheon = "vanir", -- since Njord is a part of the Vanir
	HomePlane = "vanaheim",
	Civilizations = {"elf", "suebi", "teuton"}, -- worshipped by the Langobards
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"earth"}, -- earth goddess
	Description = "Nerthus is an earth goddess."
})

DefineDeity("njord", { -- Husband of Skadi; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 248; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 135; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 54.
	Name = "Njord",
	Pantheon = "vanir",
	HomePlane = "vanaheim",
	Civilizations = {"elf", "germanic", "norse"}, -- Alaric Hall proposes that the Vanir are more or less identical with the elves, so it makes sense to make Njord an elven deity as well; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 135.
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"water"}, -- god of the sea and wind
	CulturalNames = {
		"germanic", "Nerthiwiz" -- "Nerþiwiz"; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 135.
	},
	Description = "With the conclusion of the war between the Aesir and the Vanir, the two pantheons agreed to a peace, and that a few of each group should live among the other. Njord was one of the Vanir who went to dwell in Asgard with the Aesir, accompanied by his two children, Frey and Freyja. At first, the Vanir were worshiped only by elves. As the Aesir were connected to Germanic peoples through their priests, when Njord went to live in Asgard he began to be worshiped by the Germanics as well."
})

DefineDeity("eloh", { -- from Under the Burning Suns (Battle for Wesnoth)
	Name = "Eloh",
	Pantheon = "vanir", -- since she is an elven deity
	HomePlane = "vanaheim",
	Civilizations = {"elf"},
	Religions = {"paganism"},
	Gender = "female",
	Major = true
})
