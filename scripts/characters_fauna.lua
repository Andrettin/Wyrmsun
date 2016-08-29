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
--      (c) Copyright 2016 by Andrettin
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

-- Horses

DefineCharacter("Hrímfaxi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 145; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 19.
	Name = "Hrímfaxi", -- Horse from Norse mythology (from the Edda), which was the mount of Night
	NameElements = {
--		"compound", "prefix", "old-icelandic", -- ?
		"compound", "suffix", "old-icelandic", "noun", "Faxi"
	},
	Type = "unit-horse"
})

DefineCharacter("Léttfeti", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 96-97; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 153, 386.
	Name = "Léttfeti", -- Horse from Norse mythology (name means "light-pacer" according to Cleasby and "light-feet" according to Bellows)
	NameElements = {
		"compound", "prefix", "old-icelandic", "adjective", "no-case", "Léttr",
		"compound", "suffix", "old-icelandic", "noun", "Feti"
	},
	Type = "unit-horse"
})

DefineCharacter("Melnir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 306; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 423.
	Name = "Melnir", -- Horse from Norse mythology (name means "Bit-Bearer" according to Bellows)
	NameElements = {"word", "old-icelandic", "noun", "Melnir"},
	Type = "unit-horse"
})

DefineCharacter("Mylnir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 306.
	Name = "Mylnir", -- Horse from Norse mythology (name means "The Biter")
	NameElements = {"word", "old-icelandic", "noun", "Mylnir"},
	Type = "unit-horse"
})

DefineCharacter("Silfrintoppr", { -- Horse from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 528, 636.
	Name = "Silfrintoppr", -- as given by Cleasby (meaning "silver-tuft"); Bellows gives Silfrintopp instead (meaning "Silver-Topped")
	NameElements = {
		"compound", "prefix", "old-icelandic", "noun", "Silfrin",
		"compound", "suffix", "old-icelandic", "noun", "Toppr"
	},
	Type = "unit-horse"
})

DefineCharacter("Skeiðbrímir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 543.
	Name = "Skeiðbrímir", -- Horse from Norse mythology (Bellows gives the name as meaning "Swift-Going"); Bellows gives the anglicized "Skeithbrimir" instead
	NameElements = {
		"compound", "prefix", "old-icelandic", "noun", "Skeið", -- presumably
		"compound", "suffix", "old-icelandic", "noun", "Brímir" -- presumably
	},
	Type = "unit-horse"
})

DefineCharacter("Skinfaxi", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 71; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 145, 547; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 19.
	Name = "Skinfaxi", -- Sun-horse from Norse mythology (according to Bellows the name means "Shining-Mane"; Cleasby gives the meaning as "Sheen-mane" instead), which was the mount of Day
	NameElements = {
		"compound", "prefix", "old-icelandic", "adjective", "Skin",
		"compound", "suffix", "old-icelandic", "noun", "Faxi"
	},
	Type = "unit-horse"
})

DefineCharacter("Šemík", { -- Horymír's horse in the Praguer legend; Source: Alena Ježková, "77 Prague Legends", 2006, p. 154.
	Name = "Šemík",
	Type = "unit-horse",
	NameElements = {"word", "czech", "noun", "Šemík"}
})

DefineCharacter("Sinir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 96.
	Name = "Sinir", -- Horse from Norse mythology (name means "Sinewy" according to Bellows)
	NameElements = {"word", "old-icelandic", "noun", "Sinir"},
	Type = "unit-horse"
})

DefineCharacter("Sleipnir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 102, 159, 196; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 567.
	Name = "Sleipnir", -- Odin's eight-legged horse in Norse mythology
	NameElements = {"word", "old-icelandic", "noun", "Sleipnir"},
	Type = "unit-horse"
})

DefineCharacter("Slöngvir", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 245.
	Name = "Slöngvir", -- horse of Adils (Yngling) of Sweden
	NameElements = {"word", "old-icelandic", "noun", "Slöngvir"}, -- presumably
	Type = "unit-horse",
	ProvinceOfOrigin = "Sweden" -- presumably
})

DefineCharacter("Sporvitnir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 306.
	Name = "Sporvitnir", -- Horse from Norse mythology (name means "Spur-Wolf")
	NameElements = {
		"compound", "prefix", "old-icelandic", "noun", "Spor", -- presumably
		"compound", "suffix", "old-icelandic", "noun", "Vitnir" -- presumably
	},
	Type = "unit-horse"
})

DefineCharacter("Svathilfari", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 159, 196.
	Name = "Svathilfari", -- A giant's horse in Norse mythology
	NameElements = {"word", "old-icelandic", "noun", "Svathilfari"},
	Type = "unit-horse"
})

DefineCharacter("Sveggjuth", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 304.
	Name = "Sveggjuth", -- Horse from Norse mythology (name means "Lithe")
	NameElements = {"word", "old-icelandic", "adjective", "Sveggjuth"},
	Type = "unit-horse"
})

DefineCharacter("Sviputh", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 304.
	Name = "Sviputh", -- Horse from Norse mythology (name means "Swift")
	NameElements = {
		"compound", "prefix", "old-icelandic", "noun", "no-case", "Svipr", -- presumably
		"compound", "suffix", "old-icelandic", "noun", "Úð" -- possibly
	},
	Type = "unit-horse"
})

DefineCharacter("Vígblær", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 325; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 715.
	Name = "Vígblær", -- Helgi's horse in Norse mythology (according to Cleasby its name means "War-breeze"; according to Bellows "Battle-Breather")
	NameElements = {
		"compound", "prefix", "old-icelandic", "noun", "Víg",
		"compound", "suffix", "old-icelandic", "noun", "Blær" -- presumably
	},
	Type = "unit-horse"
})

DefineCharacter("Vingskornir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 384.
	Name = "Vingskornir", -- Brynhild's horse in Norse mythology
	NameElements = {"word", "old-icelandic", "noun", "Vingskornir"},
	Type = "unit-horse"
})

-- Goats

DefineCharacter("Aegipan", {
	Name = "Aegipan", -- figure from Greek mythology which is represented by the constellation Capricorn; name means "Goat-Pan" or "Goat-All"
	NameElements = {
		"compound", "prefix", "greek", "noun", "Aegi",
		"compound", "suffix", "greek", "adjective", "Pan"
	},
	Type = "unit-goat",
	Gender = "male" -- presumably
})

DefineCharacter("Amaltheia", {
	Name = "Amaltheia", -- female goat from Greek mythology who fed child Zeus
	NameElements = {"word", "greek", "noun", "Amaltheia"},
	Type = "unit-goat",
	Gender = "female"
})

DefineCharacter("Heidrun", {
	Name = "Heidrun", -- female goat from Norse mythology
	NameElements = {"word", "old-icelandic", "noun", "Heidrun"},
	Type = "unit-goat",
	Gender = "female"
})

DefineCharacter("Tanngnjóstr", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 207.
	Name = "Tanngnjóstr", -- one of Thor's male goats; the name means "Teeth-gnasher"
	NameElements = {
		"compound", "prefix", "old-icelandic", "noun", "Tann",
		"compound", "suffix", "old-icelandic", "noun", "Gnjóstr"
	},
	Type = "unit-goat",
	Gender = "male"
})

DefineCharacter("Tanngrisnir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 625.
	Name = "Tanngrisnir", -- according to another source (which wasn't noted down) "Gat-Tooth", one of the goats who pulls Thor's chariot
	NameElements = {
		"compound", "prefix", "old-icelandic", "noun", "Tann",
		"compound", "suffix", "old-icelandic", "noun", "Grisnir"
	},
	Type = "unit-goat",
	Gender = "male" -- presumably
})
