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

DefineDeity("odin", { -- Known as Allfather, the Terrible One, One-eyed, Father of Battle; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 248; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, pp. 128, 132.
	Name = "Odin",
	Pantheon = "Aesir",
	HomePlane = "Asgard",
	Civilizations = {"dwarf", "germanic", "norse", "teuton"},
	Gender = "male",
	Major = true,
	Domains = {"magic", "war", "wisdom"},
	CulturalNames = {
		"dwarf", "Hroptatyr", -- in Norse mythology, one of the names of Odin, which was used in a verse concerning a charm by the dwarf Thjodrorir in the Hovamol, who sang wisdom for "Hroptatyr" wise; name means "Crier of the Gods", "the Crying God" or "the Prophet"
		"germanic", "Wōđanaz", -- Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 128.
		"teuton", "Woden" -- Anglo-Saxon name for the deity
	},
	Description = "Odin is the chief deity of the Aesir and the father of Thor and Balder. In archaic times, he revealed himself to the Germanics of Earth and the dwarves of Nidavellir, originating a priesthood on both worlds (having the appearance of a human on Earth and that of a dwarf on Nidavellir). Since deities are beings made of pure magic, they can only establish a tenuous link to the material plane. The result of this limitation is that Odin's main venue of communication with his human and dwarven followers is through their dreams. As Woden, the royal house of Deira claimed him as their ancestor."
})

DefineDeity("thor", { -- Son of Odin and Jord (Fjorgyn) and Sif's husband; known as the Thunder God and the Charioteer; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 251; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 129; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 98-99.
	Name = "Thor",
	Pantheon = "Aesir",
	HomePlane = "Asgard",
	Civilizations = {"dwarf", "germanic", "norse", "teuton"},
	Gender = "male",
	Major = true,
	Domains = {"air", "lightning", "order"},
	CulturalNames = {
		"dwarf", "Vingthor", -- name used by Thor when revealing himself to the dwarf Alvis; the meaning is "Thor the Hurler"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 185.
		"germanic", "Þunraz", -- the source gives "Þun(a)raz"; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 129.
		"teuton", "Thunor" -- Anglo-Saxon name for the deity; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 98-99.
	},
	Description = "Thor is the son of Odin and Jord, and is married to Sif. He is the foremost protector of the Aesir, using his massive throwing hammer to keep Asgard's enemies at bay. Given his power over the weather, Thor is also worshiped as a fertility god."
})

DefineDeity("frigg", { -- First among the goddesses; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 242; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 129.
	Name = "Frigg",
	Pantheon = "Aesir",
	Civilizations = {"germanic", "norse", "teuton"},
	Gender = "female",
	CulturalNames = {
		"germanic", "Frijjō", -- Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 129.
		"teuton", "Friia" -- as given in the second Merseburg charm (presumably in Old High German); Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 129.
	},
--	Description = "Frigg is Odin's wife and the mother of Balder."
})

DefineDeity("tyr", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 251; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, pp. 115, 133.
	Name = "Tyr",
	Pantheon = "Aesir",
	Civilizations = {"germanic", "norse", "teuton"},
	Gender = "male",
	Domains = {"war"},
	CulturalNames = {
		"germanic", "Tīwaz", -- Proto-Germanic name of the god; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 115.
		"norse", "Týr", -- Old Norse name of the god; Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 115.
		"teuton", "Ziu" -- Old High German name of the god (in Old English it was Tīw); Source: Peter Buchholz, "Perspectives for Historical Research in Germanic Religion", 1968, p. 115.
	},
--	Description = "Tyr is the son of Odin, and is known as the bravest of the Aesir. In an effort to bind the giant wolf Fenrir, he ended up losing his hand."
})

DefineDeity("aegir", { -- Married to Ran; they have their hall under the sea by the island of Hlesey; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 239.
	Name = "Aegir",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "male",
	Domains = {"sea"}
})

DefineDeity("balder", { -- Due to Loki's mischief, he was killed by Hod; Balder returns after Ragnarok; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 240; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Balder",
	Pantheon = "Aesir",
	HomePlane = "Asgard",
	Civilizations = {"norse", "teuton"},
	Gender = "male",
	CulturalNames = {
		"teuton", "Bældæg" -- Anglo-Saxon name for the deity
	},
--	Description = "The son of Odin and Frigg, Balder is known for his beauty, wisdom and gentleness. As Baeldaeg, the royal houses of both Bernicia and Wessex ascribed their descent to him."
})

DefineDeity("bragi", { -- Son of Odin and husband of Idun; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 240.
	Name = "Bragi",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "male",
	Domains = {"eloquence", "poetry"}
})

DefineDeity("eir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 241.
	Name = "Eir",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female",
	Domains = {"healing"}
})

DefineDeity("forseti", { -- Son of Balder and Nanna; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 242.
	Name = "Forseti",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "male",
	Domains = {"justice"}
})

DefineDeity("fulla", { -- Servant of Frigg; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 242.
	Name = "Fulla",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female"
})

DefineDeity("gefion", { -- Name means "Giver"; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 242.
	Name = "Gefion",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female",
	Domains = {"fertility"}
})

DefineDeity("heimdall", { -- Son of nine mothers; the horn Gjall belongs to him; is the watchman of the gods; identified with Rig (the progenitor of the three races of man); Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 244.
	Name = "Heimdall",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "male"
})

DefineDeity("hod", { -- Blind god, who through Loki's mischief killed his brother Balder; returns after Ragnarok; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 245.
	Name = "Hod",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "male"
})

DefineDeity("honir", { -- Long-legged god; indecisive; sent by the Aesir to the Vanir to seal their truce; survives Ragnarok; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 245.
	Name = "Honir",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "male"
})

DefineDeity("idun", { -- Wife of Bragi; she takes care of the golden apples of youth; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 246.
	Name = "Idun",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female"
})

DefineDeity("jord", { -- Mother of Thor by Odin; name means "Earth"; also known as Fjorgyn; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 241-242.
	Name = "Jord",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female",
	Domains = {"earth"}
})

DefineDeity("lofn", { -- Goddess who favored illicit unions; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 246.
	Name = "Lofn",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female"
})

DefineDeity("loki", { -- Son of two giants; attractive, mischief-making and ambivalent god; known as the Sly One, the Trickster, the Shape Changer or the Sky Traveller; as time wears on he becomes more evil, culminating in him causing the death of Balder, and Loki is then imprisoned until Ragnarok comes; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 247.
	Name = "Loki",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "male",
	Major = true
})

DefineDeity("mimir", { -- Wise god sent by the Aesir to seal their truce with the Vanir, but was killed by the latter; his head was preserved by Odin and put by Mimir's Well; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 247.
	Name = "Mimir",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "male",
	Domains = {"wisdom"}
})

DefineDeity("nanna", { -- Balder's wife and daughter of Nep; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 248.
	Name = "Nanna",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female"
})

DefineDeity("ring", { -- Odin's mistress; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 249.
	Name = "Ring",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female"
})

DefineDeity("saga", { -- Drinks every day with Odin in her hall, Sokkvabekk; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 249.
	Name = "Saga",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female"
})

DefineDeity("seaxneat", { -- also called Saxnoth; "The Conquest of Saxony", p. 9
	Name = "Seaxneat",
	Pantheon = "Aesir",
	Civilizations = {"teuton"},
	Gender = "male"
	-- Seaxneat was a Germanic deity, but was he actually considered one of the Aesir?
})

DefineDeity("sif", { -- Thor's wife; had golden hair, which were cut by Loki; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 249.
	Name = "Sif",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female"
})

DefineDeity("sjofn", { -- Inspired human passion; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 249.
	Name = "Sjofn",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female"
})

DefineDeity("syn", { -- Aids defendants in trials; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 250.
	Name = "Syn",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female"
})

DefineDeity("ull", { -- name means "Glory" or "Brilliance"; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 251; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 494.
	Name = "Ull",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "male",
	Domains = {"archery", "skiing"},
})

DefineDeity("var", { -- name means "Oath"; keeps marriage oaths and punishes those who don't fulfill them; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 252.
	Name = "Var",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female"
})

DefineDeity("vor", { -- nothing could be kept hidden from her; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 252.
	Name = "Vor",
	Pantheon = "Aesir",
	Civilizations = {"norse"},
	Gender = "female"
})
