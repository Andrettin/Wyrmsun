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

DefineDeity("frigg", { -- First among the goddesses; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 242; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 129; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 51.
	Name = "Frigg",
	Pantheon = "aesir",
	Civilizations = {"anglo-saxon", "frankish", "germanic", "norse", "suebi", "teuton"},
	Religions = {"paganism"},
	Gender = "female",
	CulturalNames = {
		"anglo-saxon", "Frig", -- "Frig" is the Anglo-Saxon name for the goddess according to Stenton, Larrington gives "Fricg" instead; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 98.
		"germanic", "Frijjo", -- "Frijjō"; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 129.
		"frankish", "Friia",
		"suebi", "Friia",
		"teuton", "Friia" -- as given in the second Merseburg charm (which is in Old High German); in the charm Volla is described as being her sister; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 129; Source: Susan D. Fuller, "Pagan Charms in Tenth-Century Saxony? The Function of the Merseburg Charms", 1909, p. 162.
	},
	Description = "Frigg is a goddess of fate, love and marriage. She is Odin's wife and the mother of Balder. Frigg's hall is Fensalir."
})

DefineDeity("seaxneat", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 98.
	Name = "Seaxneat",
	Pantheon = "aesir", -- Seaxneat was a Germanic (Anglo-Saxon) deity, but we don't know if he was actually considered one of the Aesir
	Civilizations = {"anglo-saxon"},
	Religions = {"paganism"},
	Gender = "male",
	Description = "Seaxneat was claimed by the royal house of Essex as their ancestor."
})

DefineDeity("sol", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 5-6, 250.
	Name = "Sol",
	Pantheon = "aesir",
	Civilizations = {"frankish", "germanic", "norse", "suebi", "teuton"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"sun"}, -- goddess of the sun
	CulturalNames = {
		"frankish", "Sunna",
		"germanic", "Sunon", -- "Sunōn"; a sun chariot artifact belonging to the Nordic Bronze Age was found in Trundholm Mose (in Zealand, Denmark), having an aspect similar to that ascribed to Sol in Norse mythology; Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-sun-chariot/
		-- Winfred P. Lehmann gives the word for sun in Proto-Germanic as "Sunōn", which seems very possible to be the word which gave origin to the Old High German name of the deity, "Sunna" (and Lehmann gives an Old High German "Sunno" as being a reflex of "Sunōn", too); Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.2. The Sun was worshipped as a major deity in the Bronze Age in Scandinavia; Source: Nils-Axel Mörner, Bob G. Lind and Göran Possnert, "Heimdall's Stones at Vitemölla in SE Sweden and the Chronology and Stratigraphy of the Surroundings", 2009, p. 205.
		"suebi", "Sunna",
		"teuton", "Sunna" -- The second Merseburg charm (written in Old High German) attests a deity named Sunna, which seems likely to be the Old High German name for Sol; in the charm her sister is Sinhtgunt; Source: Susan D. Fuller, "Pagan Charms in Tenth-Century Saxony? The Function of the Merseburg Charms", 1909, p. 162.
	},
	Description = "Sol is a sun goddess and the daughter of Mundilfari. Due to her association with the mighty star, she was believed to carry the sun in her chariot with the horses Arvak and Alsvid." --  in truth, however (within the game's universe), Sol is linked to the abstract concept of a sun, rather than to a particular one
})

DefineDeity("aegir", { -- Married to Ran; they have their hall under the sea by the island of Hlesey; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 239.
	Name = "Aegir",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"water"} -- god of the sea
})

DefineDeity("balder", { -- Due to Loki's mischief, he was killed by Hod; Balder returns after Ragnarok; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 240; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 40.
	Name = "Balder",
	Pantheon = "aesir",
	HomePlane = "asgard",
	Civilizations = {"anglo-saxon", "norse"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"light"},
	CulturalNames = {
		"anglo-saxon", "Baeldaeg", -- "Bældæg"; Anglo-Saxon name for the deity
	},
	Description = "The son of Odin and Frigg, Balder is known for his beauty, wisdom and gentleness. Light is said to evoke from him. As Baeldaeg, the royal houses of both Bernicia and Wessex ascribed their descent to him."
})

DefineDeity("bragi", { -- son of Odin and husband of Idun; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 240; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 50.
	Name = "Bragi",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"poetry"}, -- god of eloquence and poetry
	Description = "Bragi is a god of poetry and eloquence. He is married to Idun."
})

DefineDeity("delling", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 5; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 66.
	Name = "Delling",
	Pantheon = "aesir",
	Civilizations = {"dwarf", "norse"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"light"},
	Description = "The shining god Delling is the husband of Not, a goddess of the night. Their son is Dag, a god of the day."
})

DefineDeity("eir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 241.
	Name = "Eir",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"life"} -- god of healing
})

DefineDeity("eostre", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 97.
	Name = "Eostre",
	Pantheon = "aesir",
	HomePlane = "asgard",
	Civilizations = {"anglo-saxon"}, -- Anglo-Saxon goddess
	Religions = {"paganism"},
	Gender = "female"
})

DefineDeity("forseti", { -- Son of Balder and Nanna; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 242; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 49.
	Name = "Forseti",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"justice"}, -- god of justice and law
	Description = "Forseti is a god of justice and law, and his hall is Glitnir. He is the son of Balder."
})

DefineDeity("fulla", { -- Servant of Frigg; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 242.
	Name = "Fulla",
	Pantheon = "aesir",
	Civilizations = {"norse", "frankish", "suebi", "teuton"},
	Religions = {"paganism"},
	Gender = "female",
	CulturalNames = {
		"frankish", "Volla",
		"suebi", "Volla",
		"teuton", "Volla" -- Old High German; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 54.
	}
})

DefineDeity("gefion", { -- Name means "Giver"; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 242.
	Name = "Gefion",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"earth"} -- goddess of fertility
})

DefineDeity("hod", { -- Blind god, who through Loki's mischief killed his brother Balder; returns after Ragnarok; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 245.
	Name = "Hod",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "male"
})

DefineDeity("hoenir", { -- Long-legged god; indecisive; sent by the Aesir to the Vanir to seal their truce; survives Ragnarok; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 245; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 78-79, 83.
	Name = "Hoenir", -- "Hœnir"
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "male",
	Description = "The god Hoenir was sent by the Aesir as a ward to the Vanir, in order to seal their peace, but was later sent back by the Vanir. Honir is believed by the Norse to have given spirit to the first humans."
})

DefineDeity("hretha", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 97.
	Name = "Hretha",
	Pantheon = "aesir",
	HomePlane = "asgard",
	Civilizations = {"anglo-saxon"}, -- Anglo-Saxon goddess
	Religions = {"paganism"},
	Gender = "female"
})

DefineDeity("idun", { -- wife of Bragi; she takes care of the golden apples of youth; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 246; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, pp. 107-109.
	Name = "Idun",
	Pantheon = "aesir",
	HomePlane = "asgard",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"life"}
})

DefineDeity("jord", { -- Mother of Thor by Odin; name means "Earth"; also known as Fjorgyn; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 241-242.
	Name = "Jord",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"earth"}
})

DefineDeity("lofn", { -- Goddess who favored illicit unions; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 246.
	Name = "Lofn",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female",
	Domains = {"lust"}
})

DefineDeity("mimir", { -- Wise god sent by the Aesir to seal their truce with the Vanir, but was killed by the latter; his head was preserved by Odin and put by Mimir's Well; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 247.
	Name = "Mimir",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"wisdom"}
})

DefineDeity("nanna", { -- Balder's wife and daughter of Nep; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 248.
	Name = "Nanna",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female"
})

DefineDeity("ring", { -- Odin's mistress; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 249.
	Name = "Ring",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female"
})

DefineDeity("saga", { -- Drinks every day with Odin in her hall, Sokkvabekk; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 249.
	Name = "Saga",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female"
})

DefineDeity("sif", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. xxxi, 48-49, 198-199, 249.
	Name = "Sif",
	Pantheon = "aesir",
	HomePlane = "asgard",
	Civilizations = {"dwarf", "norse"}, -- available for dwarves due to her connection (though small) with them in the Norse myth
	Religions = {"paganism"},
	Gender = "female",
	Description = "Sif is a fertility goddess, and the wife of Thor. Her cherished golden hair was cut off by Loki while she slept. The sons of the dwarf Ivaldi crafted a replacement for it upon the gods' request."
})

DefineDeity("sjofn", { -- inspired human passion; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 249.
	Name = "Sjofn",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female"
})

DefineDeity("syn", { -- Aids defendants in trials; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 250.
	Name = "Syn",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female"
})

DefineDeity("ull", { -- name means "Glory" or "Brilliance"; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 251; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 494; Source: Anders Andrén, "Behind Heathendom: Archaeological Studies of Old Norse Religion", 2005, p. 116; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 50.
	Name = "Ull",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "male",
	Domains = {"archery"},
	Description = "Ull is a god archery and skiing. He is the son of Sif, and dwells in Ydalir." -- his dwelling-place name is "Ýdalir" in Old Norse; Ull's father is unknown
})

DefineDeity("var", { -- name means "Oath"; keeps marriage oaths and punishes those who don't fulfill them; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 252.
	Name = "Var",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female"
})

DefineDeity("vor", { -- nothing could be kept hidden from her; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 252.
	Name = "Vor",
	Pantheon = "aesir",
	Civilizations = {"norse"},
	Religions = {"paganism"},
	Gender = "female"
})
