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

DefineCivilizationLanguage("dwarf", -- Dwarven; mix of Norse and German used in dwarven contexts, Scottish Gaelic, as well as dwarven fantasy names
	"nouns", {
		"Ai", {
			"meaning", "Great-Grandfather", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 41.
			"singular-nominative", "Ai",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 41.
			"personal-name", true -- example: "Ai" (dwarf from Norse mythology who was a settler of Joruvellir)
		},
		"Aig", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Aig",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Aiglondur" (dwarven hero in The Hammer of Thursagan), "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aigduras", "Aigdurlos", "Aigdursol", "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus"
		},
		"Aith", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Aith",
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Anaithas", "Anaithil", "Anaithis", "Anaithing", "Anaithsil", "Anaithus", "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus"
		},
		"Alf", {
			"meaning", "Elf",
			"singular-nominative", "Alf",
			"personal-name", true, -- example: "Alf" (dwarf from Norse mythology who was a settler of Joruvellir)
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Gandalf" (Norse mythology), "Vindalf" (Norse mythology)
			-- should be available as a name only if the dwarven civilization in question has met elves?
		},
		"An", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "An",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Anaithas", "Anaithil", "Anaithing", "Anaithis", "Anaithsil", "Anaithus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Anatas", "Anating", "Anatis", "Anatol", "Anatsol", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Andril", "Andris", "Andrlos", "Andrus", "Anduril", "Andurol", "Andursol", "Andurus", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus"
		},
		"Andvari", {
			"meaning", "Fish of Prey, Gurnard", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.
			"singular-nominative", "Andvari",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.
			"personal-name", true -- example: "Andvari" (gurnard-shaped dwarf from Norse mythology whose hoard and golden ring were stolen by Loki)
		},
		"As", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "As",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigaithas", "Aigalas", "Aigatas", "Aigcatas", "Aigduras", "Alaithas", "Alalas", "Alatas", "Aldras", "Alduras", "Althaas", "Anaithas", "Anatas", "Ancatas", "Anthaas", "Augaithas", "Augalas", "Augcatas", "Augdras", "Augduras", "Dulalas", "Dulduras", "Glamcatas", "Glamdras", "Glamduras", "Glamthaas", "Gomaithas", "Gomatas", "Gomdras", "Gomthaas", "Naralas", "Nardras", "Narduras", "Pelaithas", "Peldras", "Pelthaas", "Trithaithas", "Trithatas", "Triththaas"
		},
		"At", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "At",
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Anatas", "Anating", "Anatis", "Anatol", "Anatsol", "Augating", "Augatlos", "Augatol", "Augatsil", "Augatsol", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Glamatil", "Glamatus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Naratlos", "Naratol", "Naratsil", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol"
		},
		"Aug", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Aug",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Augalas", "Augaling", "Augalol", "Augating", "Augatlos", "Augatol", "Augatsil", "Augatsol", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Augdras", "Augdris", "Augdrsil", "Augdrus", "Augduras", "Augduril", "Augduring", "Augdurol", "Augdursol", "Augdurus", "Augthail", "Augthais", "Augthalos", "Augthaol"
		},
		"Aur", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 34.
			"meaning", "Wet Clay, Loam",
			"singular-nominative", "Aur", -- "Aurr" in Old Icelandic
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Aurvang" (dwarf from Norse mythology)
			"prefix-province-name", true -- example: "Aurvang" (wetlands in Norse mythology, through which a group of dwarves passed to migrate to Joruvellir; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.)
		},
		"Austri", {
			"meaning", "Eastern", -- source gives meaning as "the Eastern"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
			"singular-nominative", "Austri",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
			"personal-name", true -- example: "Austri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Brokk", {
			"meaning", "Badger, Trotter of a Horse", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 81.
			"singular-nominative", "Brokk",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 81.
			"personal-name", true -- example: "Brokk" (dwarf from Norse mythology who was an expert smith and brother of Eitri)
		},
		"Cat", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Cat",
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Gomcatil", "Gomcatis", "Gomcatlos", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Trithcatlos", "Trithcatsol", "Trithcatus"
		},
		"Dag", { -- part of the dwarven epithet "Dagskjar"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 94.
			"meaning", "Day",
			"singular-nominative", "Dag",
			"gender", "Masculine"
		},
		"Dain", {
			"meaning", "Dead, Deceased", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.
			"singular-nominative", "Dain",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.
			"personal-name", true -- example: "Dain" (dwarf from Norse mythology)
		},
		"Daudi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.
			"meaning", "Death",
			"singular-nominative", "Daudi",
			"singular-genitive", "Dauda",
			"gender", "Masculine",
			"prefix-singular", true,
			"prefix-item-name", "Potion", true -- example: "Dvalins dauda-drykk" ("the death-drink of the dwarf"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.)
		},
		"Dr", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Dr",
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aldras", "Aldril", "Aldris", "Aldring", "Aldrlos", "Aldrol", "Aldrsol", "Andril", "Andris", "Andrlos", "Andrus", "Augdras", "Augdris", "Augdrsil", "Augdrus", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Trithdril", "Trithdring", "Trithdrlos", "Trithdris", "Trithdrol", "Trithdrsol", "Trithdrus"
		},
		"Draupnir", {
			"meaning", "Dropper",
			"singular-nominative", "Draupnir",
			"gender", "Masculine", -- presumably, since it's the name of a male dwarf?
			"personal-name", true -- example: "Draupnir" (dwarf from Norse mythology)
		},
		"Drott", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 107.
			"meaning", "People", -- "dverga drott" = "dwarf-people"
			"singular-nominative", "Drott",
			"gender", "Feminine"
		},
		"Drykk", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 108.
			"meaning", "Drink, Beverage",
			"singular-nominative", "Drykk",
			"suffix-singular", true,
			"suffix-item-name", "Potion", true -- example: "Dvalins dauda-drykk" ("the death-drink of the dwarf"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.)
		},
		"Dul", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Dul",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus"
		},
		"Dulsi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 109.
			"meaning", "Poet",
			"singular-nominative", "Dulsi",
			"gender", "Masculine",
			"personal-name", true -- example: "Dulsi" (dwarf from Norse mythology)
		},
		"Dur", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Dur",
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Dursil" (from Wesnoth, The Rise of Wesnoth)
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigduras", "Aigdurlos", "Aigdursol", "Alduras", "Aldurlos", "Aldurol", "Anduril", "Andurol", "Andursol", "Andurus", "Augduras", "Augduril", "Augduring", "Augdurol", "Augdursol", "Augdurus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Gomduris", "Gomdurlos", "Gomdursol", "Gomdursil", "Gomdurus", "Narduras", "Narduril", "Nardurol", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus"
		},
		"Dverg", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 110.
			"meaning", "Dwarf",
			"singular-nominative", "Dverg",
			"gender", "Masculine"
		},
		"Dyrgja", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 111.
			"meaning", "Female Dwarf",
			"singular-nominative", "Dyrgja",
			"gender", "Feminine"
		},
		"Full", { -- appears in Old Norse "Dvalins-full" or "Billings-full" ("the toast of the dwarfs", meaning "poetry"); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 177.
			"meaning", "Poetry",
			"singular-nominative", "Full",
			"gender", "Neuter"
		},
		"Galar", {
			"meaning", "Enchanter", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 187.
			"singular-nominative", "Galar",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 187.
			"personal-name", true -- example: "Galar" (dwarf from Norse mythology who - with the help of his brother Fjalar - brew Kvasir's remains into the Mead of Poetry)
		},
		"Gammi", { -- used in Old Norse for Finnish dwellings, but also for dwarven ones (as Finns were often confused with dwarves or elves in Norse mythology); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 188.
			"meaning", "Dwelling",
			"singular-nominative", "Gammi",
			"gender", "Masculine"
		},
		"Glam", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Glam",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Glamatil", "Glamatus", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus"
		},
		"Gloin", {
			"meaning", "Light-Colored Dog", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 205.
			"singular-nominative", "Gloin", -- given by Cleasby and Vigfusson as "Glói", but elsewhere given as "Gloin"/"Glóin"
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 205.
			"personal-name", true -- example: "Gloin" (dwarf from Norse mythology)
		},
		"Gom", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Gom",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Gomalil", "Gomalis", "Gomalus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Gomcatil", "Gomcatis", "Gomcatlos", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Gomduris", "Gomdurlos", "Gomdursil", "Gomdursol", "Gomdurus", "Gomthaas", "Gomthalos", "Gomthasol"
		},
		"Grimnir", { -- meaning is from Old Norse, while the occurrence of the name is from Wesnoth
			"meaning", "Hooded One", -- Source: Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 85.
			"singular-nominative", "Grimnir",
			"gender", "Masculine",
			"personal-name", true -- example: "Grimnir" (dwarven pathfinder from Wesnoth, Under the Burning Suns)
		},
		"Hanar", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 239.
			"meaning", "Skillful, Artist", -- source gives meaning as "the Skillful, the Artist"
			"singular-nominative", "Hanar",
			"gender", "Masculine",
			"personal-name", true -- example: "Hanar" (dwarf from Norse mythology; source indicates the dwarf being present in the Voluspo, but in other consulted translations of that text it was nowhere to be found)
		},
		"Haug", { -- from Norse mythology, "Svarinshaug" = "Svarin's Mound", "haug" = "mound"
			"meaning", "Mound",
			"singular-nominative", "Haug",
			"suffix-singular", true,
			"suffix-province-name", true, -- example: "Svarinshaug" ("Svarin's Mound"; from Norse mythology)
			"suffix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Hljod", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 271-272.
			"meaning", "Sound, Silence, Hearing, Listening",
			"singular-nominative", "Hljod",
			"gender", "Neuter",
			"prefix-singular", true,
			"prefix-personal-name", true -- example: "Hljodolf" (dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 272.)
		},
		"Hund", { -- appears in Old Norse "dverga-hundr" ("dog without a tail"); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 110.
			"meaning", "Dog without a Tail",
			"singular-nominative", "Hund",
			"gender", "Masculine"
		},
		"Il", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Il",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigaithil", "Aigcatil", "Alalil", "Alatil", "Alcatil", "Aldril", "Althail", "Anaithil", "Analil", "Ancatil", "Andril", "Anduril", "Augcatil", "Augduril", "Augthail", "Dulaithil", "Dulatil", "Dulcatil", "Duldril", "Glamaithil", "Glamalil", "Glamatil", "Glamcatil", "Glamdril", "Glamduril", "Gomaithil", "Gomalil", "Gomatil", "Gomcatil", "Gomdril", "Naraithil", "Naralil", "Nardril", "Narduril", "Pelaithil", "Pelalil", "Pelatil", "Peldril", "Pelduril", "Pelthail", "Trithaithil", "Trithatil", "Trithdril", "Trithduril", "Triththail"
		},
		"Ing", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Ing",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigaithing", "Aigaling", "Aigcating", "Aigdring", "Aigthaing", "Alating", "Aldring", "Anaithing", "Anating", "Anthaing", "Augaithing", "Augaling", "Augating", "Augduring", "Dulaithing", "Dulaling", "Dulating", "Dulcating", "Dulduring", "Glamaling", "Glamcating", "Glamduring", "Gomating", "Gomdring", "Naraithing", "Narcating", "Nardring", "Pelaithing", "Pelaling", "Pelating", "Pelcating", "Pelduring", "Trithdring", "Trithduring", "Triththaing"
		},
		"Is", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Is",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigalis", "Aigatis", "Aigcatis", "Aigdris", "Aigthais", "Alaithis", "Alcatis", "Aldris", "Anaithis", "Anatis", "Andris", "Anthais", "Augcatis", "Augdris", "Augthais", "Dulalis", "Duldris", "Glamaithis", "Glamalis", "Glamduris", "Gomalis", "Gomatis", "Gomcatis", "Gomdris", "Gomduris", "Narcatis", "Nardris", "Pelaithis", "Pelalis", "Pelatis", "Pelduris", "Trithaithis", "Trithalis", "Trithdris"
		},
		"Ivaldi", {
			"meaning", "Mighty", -- source gives meaning as "the Mighty"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.
			"singular-nominative", "Ivaldi",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 319.
			"personal-name", true -- example: "Ivaldi" (dwarf from Norse mythology whose sons were mastersmiths)
		},
		"Joru", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "Joru" = "Sand"
			"meaning", "Sand",
			"singular-nominative", "Joru",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-province-name", true, -- example: "Joruvellir" (Norse mythology)
			"prefix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Land", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 571.
			"meaning", "Land, Country",
			"singular-nominative", "Land",
			"gender", "Neuter",
			"suffix-singular", true,
			"suffix-province-name", true -- example: "Smameyjaland" (the land of the dwarven maidens)
		},
		"Lid", { -- used in Old Norse "Dvalins lið" to mean "the dwarf people"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 387.
			"meaning", "People",
			"singular-nominative", "Lid",
			"gender", "Neuter"
		},
		"Lofar", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 397.
			"meaning", "?",
			"singular-nominative", "Lofar",
			"gender", "Masculine",
			"personal-name", true -- example: "Lofar" (dwarf from Norse mythology who was a descendant of the settlers of Joruvellir)
		},
		"Los", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Los",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigatlos", "Aigdrlos", "Aigdurlos", "Alaithlos", "Alatlos", "Alcatlos", "Aldrlos", "Anallos", "Andrlos", "Aldurlos", "Althalos", "Augatlos", "Augthalos", "Dulaithlos", "Dulcatlos", "Duldrlos", "Dulthalos", "Glamallos", "Glamdrlos", "Gomatlos", "Gomcatlos", "Gomdurlos", "Gomthalos", "Naratlos", "Narthalos", "Pelaithlos", "Pelcatlos", "Trithaithlos", "Trithatlos", "Trithcatlos", "Trithdrlos", "Trithdurlos"
		},
		"Mal", { -- appears in Old Norse "Dverg-mál" ("echo", literally "Dwarf-speech"); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 110, 415.
			"meaning", "Speech, Echo", -- if in Old Norse "Dwarf-speech" means "echo", then why not consider that in the dwarven tongue the word for "echo" would be the same as that for "speech"?
			"singular-nominative", "Mal",
			"gender", "Neuter"
		},
		"Mjod", {
			"meaning", "Mead",
			"singular-nominative", "Mjod",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Mjodvitnir" (Norse mythology)
			"prefix-province-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Nabbi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 445.
			"meaning", "Small Protuberance on the Skin, Small Protuberance on Greensward",
			"singular-nominative", "Nabbi",
			"gender", "Masculine",
			"personal-name", true -- example: "Nabbi" (dwarf from Norse mythology)
		},
		"Nar", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Nar",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Naralas", "Naralil", "Naralsil", "Naralus", "Naratlos", "Naratol", "Naratsil", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Narduras", "Narduril", "Nardurol", "Narthalos", "Narthaol"
		},
		"Naut", {
			"meaning", "A Gift or Booty from a Person", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 447.
			"singular-nominative", "Naut",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 447.
			"suffix-singular", true,
			"suffix-item-name", "Ring", true -- example: "Andvaranaut" (gold ring made by Andvari and stolen by Loki; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.)
		},
		"Nefi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 450.
			"meaning", "Cognate Kinsman",
			"singular-nominative", "Nefi",
			"gender", "Masculine",
			"personal-name", true -- example: "Nefi" (dwarf from Norse mythology)
		},
		"Nid", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454.
			"meaning", "Wane of the Moon, No Moon",
			"singular-nominative", "Nid",
			"plural-nominative", "Nidar",
			"gender", "Feminine",
			"prefix-singular", true,
			"prefix-personal-name", true -- example: "Nidjung" (Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454)
		},
		"Nidi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454.
			"meaning", "Wane of the Moon, No Moon", -- approximately, from "Nid"
			"singular-nominative", "Nidi",
			"gender", "Masculine",
			"personal-name", true -- example: "Nidi" (dwarf from Norse mythology)
		},
		"Nordri", {
			"meaning", "Northern", -- source gives meaning as "the Northern"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 457.
			"singular-nominative", "Nordri",
			"gender", "Masculine",
			"personal-name", true -- example: "Nordri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Ny", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 459.
			"meaning", "Moon, Waxing Moon, Full Moon",
			"singular-nominative", "Ny",
			"gender", "Neuter"
		},
		"Nyi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 459.
			"meaning", "Moon", -- approximately, from "Ny"
			"singular-nominative", "Nyi",
			"gender", "Masculine",
			"personal-name", true -- example: "Nyi" (dwarf from Norse mythology)
		},
		"Ol", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Ol",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigaithol", "Aigalol", "Alaithol", "Alalol", "Aldrol", "Aldurol", "Althaol", "Analol", "Anatol", "Ancatol", "Andurol", "Anthaol", "Augalol", "Augatol", "Augcatol", "Augdurol", "Augthaol", "Dulatol", "Dulcatol", "Duldrol", "Glamaithol", "Glamthaol", "Gomaithol", "Gomatol", "Gomdrol", "Naraithol", "Naratol", "Narcatol", "Nardrol", "Nardurol", "Narthaol", "Pelaithol", "Pelatol", "Pelcatol", "Peldurol", "Trithaithol", "Trithalol", "Trithdrol", "Trithdurol"
		},
		"Pel", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Pel",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Pelthaas", "Pelthail", "Pelthasil"
		},
		"Ran", { -- used in Old Norse "dverg-rann" (literally "dwarf-house", meaning "the rocks"); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 483.
			"meaning", "House, the Rocks",
			"singular-nominative", "Ran",
			"plural-nominative", "Ron",
			"gender", "Neuter"
		},
		"Sil", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Sil",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Dursil" (Battle for Wesnoth, The Rise of Wesnoth), "Aigalsil", "Aigatsil", "Aigcatsil", "Aigdrsil", "Aigthasil", "Alatsil", "Alcatsil", "Althasil", "Anaithsil", "Analsil", "Anthasil", "Augaithsil", "Augatsil", "Augcatsil", "Augdrsil", "Dulaithsil", "Dulalsil", "Dulcatsil", "Duldrsil", "Duldursil", "Dulthasil", "Glamalsil", "Glamcatsil", "Glamthasil", "Gomdrsil", "Gomdursil", "Naraithsil", "Naralsil", "Naratsil", "Narcatsil", "Nardrsil", "Pelaithsil", "Pelalsil", "Pelatsil", "Pelcatsil", "Pelthasil", "Trithaithsil", "Trithdursil"
		},
		"Sindri", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 529.
			"meaning", "Forger",
			"singular-nominative", "Eitri", -- can also be spelled as "Sindri"
			"gender", "Masculine",
			"personal-name", true -- example: "Sindri"/"Eitri" (dwarf from Norse mythology; expert smith and brother of Brokk)
		},
		"Skirvir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 550.
			"meaning", "?", -- maybe related to Old Norse "Skirra"?
			"singular-nominative", "Skirvir", -- alternatively spelled as "Skirfir"
			"gender", "Masculine",
			"personal-name", true -- example: "Skirvir" (dwarf from Norse mythology)
		},
		"Skjaldi", {
			"meaning", "Shield",
			"singular-nominative", "Skjaldi",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: "Eikinskjaldi" (Norse mythology)
		},
		"Smameyja", { -- from Old Norse "Smár" (small) and "Meyja" (maiden); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 426, 571.
			"meaning", "Dwarf Maiden",
			"singular-nominative", "Smameyja",
			"gender", "Feminine",
			"prefix-singular", true,
			"prefix-province-name", true -- example: "Smameyjaland" (the land of the dwarven maidens)
		},
		"Smidi", { -- appears in Old Norse "dverga-smíði" ("work of rare art" or "crystal stone" or "prismatic stone", literally "dwarf's work"); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 110, 572.
			"meaning", "Smith's Work, Work of Smithcraft, Work of Rare Art, Crystal Stone, Prismatic Stone",
			"singular-nominative", "Smidi",
			"gender", "Neuter"
		},
		"Sol", {
			"meaning", "Sun",
			"singular-nominative", "Sol",
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Solblindi" (Norse mythology)
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-terrain-name", "Hills", true, -- no examples, but seems sensible in face of a general lack of examples
			"suffix-singular", true, -- suffix used by Wesnoth's dwarven names
			"suffix-personal-name", true -- examples: "Aigatsol", "Aigcatsol", "Aigdrsol", "Aigdursol", "Alaithsol", "Alalsol", "Aldrsol", "Althasol", "Anatsol", "Andursol", "Anthasol", "Augatsol", "Augdursol", "Dulaithsol", "Dulatsol", "Dulcatsol", "Dulthasol", "Glamaithsol", "Glamdrsol", "Glamdursol", "Glamthasol", "Gomaithsol", "Gomdursol", "Gomthasol", "Naraithsol", "Narcatsol", "Nardrsol", "Pelaithsol", "Pelalsol", "Peldrsol", "Peldursol", "Trithaithsol", "Trithatsol", "Trithcatsol", "Trithdrsol", "Triththasol"
		},
		"Soleyg", { -- appears in Old Norse "dverga-sóleyg" ("Ranunculus glacialis"); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 110.
			"meaning", "Ranunculus glacialis",
			"singular-nominative", "Soleyg",
			"gender", "Feminine"
		},
		"Stein", { -- appears in Old Norse "dverga-steinn" ("crystal stone" or "prismatic stone", literally "dwarfy stone"); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 110, 591.
			"meaning", "Stone, Crystal Stone, Prismatic Stone",
			"singular-nominative", "Stein",
			"gender", "Masculine"
		},
		"Sudri", {
			"meaning", "Southern", -- "the Southern"
			"singular-nominative", "Sudri",
			"gender", "Masculine",
			"personal-name", true -- example: "Sudri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Tha", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Tha",
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus", "Augthail", "Augthais", "Augthalos", "Augthaol", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus", "Gomthaas", "Gomthalos", "Gomthasol", "Narthalos", "Narthaol", "Pelthaas", "Pelthail", "Pelthasil", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus"
		},
		"Thjof", {
			"meaning", "Thief",
			"singular-nominative", "Thjof",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: "Althjof" (Norse mythology)
		},
		"Thurs", {
			"meaning", "Giant", -- meaning from Old Icelandic; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 750.
			"singular-nominative", "Thurs",
			"prefix-singular", true,
			"prefix-personal-name", true -- example: "Thursagan" (Battle for Wesnoth, The Sceptre of Fire; master runesmith who crafted the Sceptre of Fire)
		},
		"Trith", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Trith",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus", "Trithalis", "Trithalol", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol", "Trithcatlos", "Trithcatsol", "Trithcatus", "Trithdril", "Trithdring", "Trithdris", "Trithdrlos", "Trithdrol", "Trithdrsol", "Trithdrus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus"
		},
		"Ulf", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 668.
			"meaning", "Wolf",
			"singular-nominative", "Olf", -- actually Ulf, but has to be "Olf" here to be correctly spelled for suffixes
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: "Hljodolf" (dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 272.)
		},
		"Us", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Us",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigatus", "Aigcatus", "Aigthaus", "Alaithus", "Alalus", "Althaus", "Anaithus", "Analus", "Ancatus", "Andrus", "Andurus", "Anthaus", "Augaithus", "Augcatus", "Augdrus", "Augdurus", "Dulatus", "Duldrus", "Duldurus", "Dulthaus", "Glamalus", "Glamatus", "Glamcatus", "Glamthaus", "Gomalus", "Gomdurus", "Naraithus", "Naralus", "Nardrus", "Pelalus", "Pelatus", "Peldrus", "Peldurus", "Trithaithus", "Trithcatus", "Trithdrus", "Trithdurus", "Triththaus"
		},
		"Vang", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 678.
			"meaning", "Garden, Green Home-Field",
			"singular-nominative", "Vang", -- "Vangr" in Old Icelandic
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-personal-name", true, -- example: "Aurvang" (dwarf from Norse mythology)
			"suffix-province-name", true -- example: "Aurvang" (wetlands in Norse mythology, through which a group of dwarves passed to migrate to Joruvellir; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.)
		},
		"Vestri", {
			"meaning", "Western", -- "the Western"
			"singular-nominative", "Vestri",
			"gender", "Masculine",
			"personal-name", true -- example: "Vestri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Vellir", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "vellir" = "fields"
			"meaning", "Fields",
			-- what is the singular form?
			"plural-nominative", "Vellir",
			"suffix-plural", true,
			"suffix-province-name", true -- example: "Joruvellir" (Norse mythology)
		},
		"Vind", {
			"meaning", "Wind",
			"singular-nominative", "Vind",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Vindalf" (Norse mythology)
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Vitnir", {
			"meaning", "Wolf",
			"singular-nominative", "Vitnir",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: "Mjodvitnir" (Norse mythology)
		}
	},
	"verbs", {
		"Blindi", { -- should be infinitive form
			"meaning", "Blinded",
			-- infinitive form?
			"participle-past", "Blindi",
			"suffix-personal-name", true -- example: "Solblindi" (Norse mythology)
		},
		"Mala", { -- appears in Old Norse "Dverg-mála" (to "echo"); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 110.
			"meaning", "Echo",
			"infinitive", "Mala"
		},
		"Vis", { -- should be infinitive form
			"meaning", "Knowing",
			-- infinitive form?
			"participle-present", "Vis",
			"suffix-personal-name", true -- example: "Alvis" (all-knowing) (Norse mythology)
		}
	},
	"adjectives", {
		"Al", {
			"meaning", "Mighty", -- can also mean "All-"; meaning from Old Norse, but is also a prefix used by Wesnoth's dwarven names
			"prefix-personal-name", true, -- examples from Norse mythology: "Alvis" (all-knowing), "Althjof" (mighty thief); examples from Wesnoth: "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Aldras", "Aldril", "Aldring", "Aldris", "Aldrlos", "Aldrol", "Aldrsol", "Alduras", "Aldurlos", "Aldurol", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus"
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-terrain-name", "Hills", true, -- no examples, but seems sensible in face of a general lack of examples
			"infix-personal-name", true -- infix used by Wesnoth's dwarven names; examples: "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Augalas", "Augaling", "Augalol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Gomalil", "Gomalis", "Gomalus", "Naralas", "Naralil", "Naralsil", "Naralus", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Trithalis", "Trithalol"
		},
		"Dagskjar", { -- epithet of a dwarf; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 95.
			"meaning", "Day-Scared"
		},
		"Eikin", {
			"meaning", "Oaken",
			"prefix-personal-name", true -- example: "Eikinskjaldi" (Norse mythology)
		},
		"Gand", {
			"meaning", "Magic",
			"prefix-personal-name", true, -- example: "Gandalf" (Norse mythology)
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Hag", { -- appears in Old Norse "Dverg-hagr" ("skilled as a dwarf"); Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 110, 232.
			"meaning", "Skilled, Skilled in Metalworking" -- if in Old Norse "Dwarf-skilled" means a particularly skillful person (specially relating to metalwork), then in the dwarven tongue it makes sense that the same word for "skilled" is that for "skilled in metalwork"
		},
		"Jung", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 327.
			"meaning", "Young",
			"suffix-personal-name", true -- example: "Nidjung" (Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454)
		},
		"Rad", {
			"meaning", "Swift",
			"prefix-personal-name", true -- example: "Radsvid" (Norse mythology)
		},
		"Skjar", { -- part of the dwarven epithet "Dagskjar"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 551.
			"meaning", "Shy, Timid"
		}
	}
)
