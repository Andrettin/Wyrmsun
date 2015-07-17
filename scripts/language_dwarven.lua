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

DefineCivilizationLanguage("dwarf", -- Dwarven; mix of Norse and German words used in dwarven contexts (ethnonyms, personal names or place names), as well as dwarven fantasy names
	"nouns", {
		"Ai", {
			"meaning", "Great-Grandfather", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 41.
			"singular-nominative", "Ai",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 41.
			"name-singular", true,
			"personal-name", true -- example: "Ai" (dwarf from Norse mythology who was a settler of Joruvellir)
		},
		"Aig", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Aig",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Aiglondur" (dwarven hero in The Hammer of Thursagan), "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aigduras", "Aigdurlos", "Aigdursol", "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus"
		},
		"Aiglondur", { -- "Aig-lon-dur"? seems to follow similar naming conventions as the three-element names of the dwarven name list
			"meaning", "?",
			"singular-nominative", "Aiglondur",
			"name-singular", true,
			"personal-name", true -- example: "Aiglondur" (from Wesnoth, dwarven hero in The Hammer of Thursagan)
		},
		"Aith", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Aith",
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Anaithas", "Anaithil", "Anaithis", "Anaithing", "Anaithsil", "Anaithus", "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus"
		},
		"Alberich", {
			"meaning", "?",
			"singular-nominative", "Alberich",
			"name-singular", true,
			"personal-name", true -- example: "Alberich" (dwarf from German sagas)
		},
		"Alf", {
			"meaning", "Elf",
			"singular-nominative", "Alf",
			"name-singular", true,
			"personal-name", true, -- example: "Alf" (dwarf from Norse mythology who was a settler of Joruvellir)
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Gandalf" (Norse mythology), "Vindalf" (Norse mythology)
			-- should be available as a name only if the dwarven civilization in question has met elves?
		},
		"Alfrigg", {
			"meaning", "?",
			"singular-nominative", "Alfrigg",
			"name-singular", true,
			"personal-name", true -- example: "Alfrigg" (dwarf from Norse mythology)
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
			"name-singular", true,
			"personal-name", true -- example: "Andvari" (gurnard-shaped dwarf from Norse mythology whose hoard and golden ring were stolen by Loki)
		},
		"Angarthing", { -- "An-garth-ing"? seems to follow similar naming conventions as the three-element names of the dwarven name list
			"meaning", "?",
			"singular-nominative", "Angarthing",
			"name-singular", true,
			"personal-name", true -- example: "Angarthing" (from Wesnoth, The Hammer of Thursagan)
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
			"prefix-province-name", true, -- example: "Aurvang" (wetlands in Norse mythology, through which a group of dwarves passed to migrate to Joruvellir; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.)
			"prefix-settlement-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Austri", {
			"meaning", "Eastern", -- source gives meaning as "the Eastern"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
			"singular-nominative", "Austri",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
			"name-singular", true,
			"personal-name", true -- example: "Austri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Bafur", {
			"meaning", "?",
			"singular-nominative", "Bafur",
			"name-singular", true,
			"personal-name", true -- example: "Bafur" (dwarf from Norse mythology)
		},
		"Baglur", {
			"meaning", "?",
			"singular-nominative", "Baglur",
			"name-singular", true,
			"personal-name", true -- example: "Baglur" (from Wesnoth, The Scepter of Fire; veteran warrior and member of the party of dwarves who handled the crafting of the Sceptre of Fire)
		},
		"Bari", {
			"meaning", "?",
			"singular-nominative", "Bari",
			"name-singular", true,
			"personal-name", true -- example: "Bari" (dwarf from Norse mythology)
		},
		"Berling", {
			"meaning", "?",
			"singular-nominative", "Berling",
			"name-singular", true,
			"personal-name", true -- example: "Berling" (dwarf from Norse mythology)
		},
		"Bibung", {
			"meaning", "?",
			"singular-nominative", "Bibung",
			"name-singular", true,
			"personal-name", true -- example: "Bibung" (dwarf from Norse mythology)
		},
		"Bifur", {
			"meaning", "?",
			"singular-nominative", "Bifur",
			"name-singular", true,
			"personal-name", true -- example: "Bifur" (dwarf from Norse mythology)
		},
		"Bombor", {
			"meaning", "?",
			"singular-nominative", "Bombor",
			"name-singular", true,
			"personal-name", true -- example: "Bombor" (dwarf from Norse mythology)
		},
		"Brokk", {
			"meaning", "Badger, Trotter of a Horse", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 81.
			"singular-nominative", "Brokk",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 81.
			"name-singular", true,
			"personal-name", true -- example: "Brokk" (dwarf from Norse mythology who was an expert smith and brother of Eitri)
		},
		"Burin", {
			"meaning", "?",
			"singular-nominative", "Burin",
			"name-singular", true,
			"personal-name", true -- example: "Burin" (from Wesnoth, The Rise of Wesnoth)
		},
		"Cat", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Cat",
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Gomcatil", "Gomcatis", "Gomcatlos", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Trithcatlos", "Trithcatsol", "Trithcatus"
		},
		"Dain", {
			"meaning", "Dead, Deceased", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.
			"singular-nominative", "Dain",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.
			"name-singular", true,
			"personal-name", true -- example: "Dain" (dwarf from Norse mythology)
		},
		"Delling", {
			"meaning", "?",
			"singular-nominative", "Delling",
			"name-singular", true,
			"personal-name", true -- example: "Delling" (dwarf from Norse mythology)
		},
		"Dolgthvari", {
			"meaning", "?",
			"singular-nominative", "Dolgthvari",
			"name-singular", true,
			"personal-name", true -- example: "Dolgthvari" (dwarf from Norse mythology)
		},
		"Dori", {
			"meaning", "?",
			"singular-nominative", "Dori",
			"name-singular", true,
			"personal-name", true -- example: "Dori" (dwarf from Norse mythology)
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
			"name-singular", true,
			"personal-name", true -- example: "Draupnir" (dwarf from Norse mythology)
		},
		"Duf", {
			"meaning", "?",
			"singular-nominative", "Duf",
			"name-singular", true,
			"personal-name", true -- example: "Duf" (dwarf from Norse mythology)
		},
		"Dul", { -- prefix used by Wesnoth's dwarven names
			"meaning", "?",
			"singular-nominative", "Dul",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus"
		},
		"Dulcatulos", { -- "Dul-catu-los", or "Dul-cat-ulos"? seems to follow similar naming conventions as the three-element names of the dwarven name list
			"meaning", "?",
			"singular-nominative", "Dulcatulos",
			"name-singular", true,
			"personal-name", true -- example: "Dulcatulos" (from Wesnoth, The Hammer of Thursagan)
		},
		"Dulsi", { -- not entirely clear if this is the name of a particular dwarf, or if it can also mean "dwarf"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 109.
			"meaning", "Poet",
			"singular-nominative", "Dulsi",
			"gender", "Masculine",
			"name-singular", true,
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
		"Durahn", {
			"meaning", "?",
			"singular-nominative", "Durahn",
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Durahn" (from Dyson Logos' The Tomb of Durâhn Oakenshield)
		},
		"Durin", {
			"meaning", "?",
			"singular-nominative", "Durin",
			"name-singular", true,
			"personal-name", true -- example: "Durin" (dwarf from Norse mythology who was Modsognir's deputy)
		},
		"Durstorn", {
			"meaning", "?",
			"singular-nominative", "Durstorn",
			"name-singular", true,
			"personal-name", true -- example: "Durstorn" (from Wesnoth, The Scepter of Fire; chieftain of Rugnur's tribe)
		},
		"Dvalin", {
			"meaning", "?", -- maybe "Delayer" or "Delayed"?; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 110.
			"singular-nominative", "Dvalin",
			"name-singular", true,
			"personal-name", true, -- example: "Dvalin" (dwarf from Norse mythology; gave the knowledge of runes to the dwarves; one of the four who crafted the Necklace of the Brisings)
			"prefix-singular", true,
			"suffix-personal-name", true -- example: "Víg-dvalinn" (dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 715.)
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
		"Eggerich", {
			"meaning", "?",
			"singular-nominative", "Eggerich",
			"name-singular", true,
			"personal-name", true -- example: "Eggerich" (dwarf from German sagas)
		},
		"Fal", {
			"meaning", "?",
			"singular-nominative", "Fal",
			"name-singular", true,
			"personal-name", true -- example: "Fal" (dwarf from Norse mythology)
		},
		"Fid", {
			"meaning", "?",
			"singular-nominative", "Fid",
			"name-singular", true,
			"personal-name", true -- example: "Fid" (dwarf from Norse mythology)
		},
		"Fili", {
			"meaning", "?",
			"singular-nominative", "Fili",
			"name-singular", true,
			"personal-name", true -- example: "Fili" (dwarf from Norse mythology)
		},
		"Fjalar", {
			"meaning", "?",
			"singular-nominative", "Fjalar",
			"name-singular", true,
			"personal-name", true -- example: "Fjalar" (dwarf from Norse mythology who, with the help of his brother Galar, brew Kvasir's remains into the Mead of Poetry)
		},
		"Frag", {
			"meaning", "?",
			"singular-nominative", "Frag",
			"name-singular", true,
			"personal-name", true -- example: "Frag" (dwarf from Norse mythology)
		},
		"Frar", {
			"meaning", "?",
			"singular-nominative", "Frar",
			"name-singular", true,
			"personal-name", true -- example: "Frar" (dwarf from Norse mythology)
		},
		"Frosti", {
			"meaning", "?",
			"singular-nominative", "Frosti",
			"name-singular", true,
			"personal-name", true -- example: "Frosti" (dwarf from Norse mythology)
		},
		"Fundin", {
			"meaning", "?",
			"singular-nominative", "Fundin",
			"name-singular", true,
			"personal-name", true -- example: "Fundin" (dwarf from Norse mythology)
		},
		"Galar", {
			"meaning", "Enchanter", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 187.
			"singular-nominative", "Galar",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 187.
			"name-singular", true,
			"personal-name", true -- example: "Galar" (dwarf from Norse mythology who - with the help of his brother Fjalar - brew Kvasir's remains into the Mead of Poetry)
		},
		"Ginnar", {
			"meaning", "?",
			"singular-nominative", "Ginnar",
			"name-singular", true,
			"personal-name", true -- example: "Ginnar" (dwarf from Norse mythology)
		},
		"Glam", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Glam",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Glamatil", "Glamatus", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus"
		},
		"Glinar", {
			"meaning", "?",
			"singular-nominative", "Glinar",
			"name-singular", true,
			"personal-name", true -- example: "Glinar" (from Wesnoth, The Scepter of Fire)
		},
		"Gloin", {
			"meaning", "Light-Colored Dog", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 205.
			"singular-nominative", "Gloin", -- given by Cleasby and Vigfusson as "Glói", but elsewhere given as "Gloin"/"Glóin"
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 205.
			"name-singular", true,
			"personal-name", true -- example: "Gloin" (dwarf from Norse mythology)
		},
		"Glomin", {
			"meaning", "?",
			"singular-nominative", "Glomin",
			"name-singular", true,
			"personal-name", true -- example: "Glomin" (from Wesnoth; the only name in Wesnoth's dwarven name list to not obbey the three-part compound pattern)
		},
		"Glonoin", {
			"meaning", "?",
			"singular-nominative", "Glonoin",
			"name-singular", true,
			"personal-name", true -- example: "Glonoin" (from Wesnoth, The Scepter of Fire; chieftain of the Shorbear clan)
		},
		"Gneissus", {
			"meaning", "?",
			"singular-nominative", "Gneissus",
			"gender", "Feminine",
			"name-singular", true,
			"personal-name", true -- example: "Gneissus" (from Dyson Logos' The Tomb of Durâhn Oakenshield)
		},
		"Goldemar", {
			"meaning", "?",
			"singular-nominative", "Goldemar",
			"name-singular", true,
			"personal-name", true -- example: "Goldemar" (dwarf from German sagas)
		},
		"Gom", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Gom",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Gomalil", "Gomalis", "Gomalus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Gomcatil", "Gomcatis", "Gomcatlos", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Gomduris", "Gomdurlos", "Gomdursil", "Gomdursol", "Gomdurus", "Gomthaas", "Gomthalos", "Gomthasol"
		},
		"Grerr", {
			"meaning", "?",
			"singular-nominative", "Grerr",
			"name-singular", true,
			"personal-name", true -- example: "Grerr" (dwarf from Norse mythology)
		},
		"Grimnir", { -- meaning is from Old Norse, while the occurrence of the name is from Wesnoth
			"meaning", "Hooded One", -- Source: Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 85.
			"singular-nominative", "Grimnir",
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Grimnir" (dwarven pathfinder from Wesnoth, Under the Burning Suns)
		},
		"Hamel", {
			"meaning", "?",
			"singular-nominative", "Hamel",
			"name-singular", true,
			"personal-name", true -- example: "Hamel" (from Wesnoth, Northern Rebirth and The Hammer of Thursagan)
		},
		"Hannar", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 239.
			"meaning", "Skillful, Artist", -- source gives meaning as "the Skillful, the Artist"
			"singular-nominative", "Hannar", -- source gives name as "Hannarr"
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Hannar" (dwarf from Norse mythology; source indicates the dwarf being present in the Voluspo, but in other consulted translations of that text it was nowhere to be found)
		},
		"Har", {
			"meaning", "?",
			"singular-nominative", "Har",
			"name-singular", true,
			"personal-name", true -- example: "Har" (dwarf from Norse mythology)
		},
		"Haug", { -- from Norse mythology, "Svarinshaug" = "Svarin's Mound", "haug" = "mound"
			"meaning", "Mound",
			"singular-nominative", "Haug",
			"suffix-singular", true,
			"suffix-province-name", true, -- example: "Svarinshaug" ("Svarin's Mound"; from Norse mythology)
			"suffix-settlement-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"suffix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Haur", {
			"meaning", "?",
			"singular-nominative", "Haur",
			"name-singular", true,
			"personal-name", true -- example: "Haur" (dwarf from Norse mythology)
		},
		"Heptifili", {
			"meaning", "?",
			"singular-nominative", "Heptifili",
			"name-singular", true,
			"personal-name", true -- example: "Heptifili" (dwarf from Norse mythology)
		},
		"Hledj", {
			"meaning", "Sound, Silence, Hearing, Listening", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 271-272.
			"singular-nominative", "Hledj",
			"gender", "Neuter",
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Hledjolf" (dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 272.)
			"prefix-settlement-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-province-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Hornbori", {
			"meaning", "?",
			"singular-nominative", "Hornbori",
			"name-singular", true,
			"personal-name", true -- example: "Hornbori" (dwarf from Norse mythology)
		},
		"Hugstari", {
			"meaning", "?",
			"singular-nominative", "Hugstari",
			"name-singular", true,
			"personal-name", true -- example: "Hugstari" (dwarf from Norse mythology)
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
		"Ingi", {
			"meaning", "?",
			"singular-nominative", "Ingi",
			"name-singular", true,
			"personal-name", true -- example: "Ingi" (dwarf from Norse mythology)
		},
		"Iri", {
			"meaning", "?",
			"singular-nominative", "Iri",
			"name-singular", true,
			"personal-name", true -- example: "Iri" (dwarf from Norse mythology)
		},
		"Is", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Is",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigalis", "Aigatis", "Aigcatis", "Aigdris", "Aigthais", "Alaithis", "Alcatis", "Aldris", "Anaithis", "Anatis", "Andris", "Anthais", "Augcatis", "Augdris", "Augthais", "Dulalis", "Duldris", "Glamaithis", "Glamalis", "Glamduris", "Gomalis", "Gomatis", "Gomcatis", "Gomdris", "Gomduris", "Narcatis", "Nardris", "Pelaithis", "Pelalis", "Pelatis", "Pelduris", "Trithaithis", "Trithalis", "Trithdris"
		},
		"Isuldan", {
			"meaning", "?",
			"singular-nominative", "Isuldan",
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Isuldan" (from Dyson Logos' The Tomb of Durâhn Oakenshield)
		},
		"Ivaldi", {
			"meaning", "Mighty", -- source gives meaning as "the Mighty"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.
			"singular-nominative", "Ivaldi",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 319.
			"name-singular", true,
			"personal-name", true -- example: "Ivaldi" (dwarf from Norse mythology whose sons were mastersmiths)
		},
		"Jari", {
			"meaning", "?",
			"singular-nominative", "Jari",
			"name-singular", true,
			"personal-name", true -- example: "Jari" (dwarf from Norse mythology)
		},
		"Joru", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "Joru" = "Sand"
			"meaning", "Sand",
			"singular-nominative", "Joru",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-province-name", true, -- example: "Joruvellir" (Norse mythology)
			"prefix-terrain-name", "Hills", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-settlement-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Kal Kartha", {
			"meaning", "?",
			"singular-nominative", "Kal Kartha", -- "Kal" maybe should become a (separated) prefix for settlement names?
			"name-singular", true,
			"settlement-name", true -- example: "Kal Kartha" (from Wesnoth)
		},
		"Karrag", {
			"meaning", "?",
			"singular-nominative", "Karrag",
			"name-singular", true,
			"personal-name", true -- example: "Karrag" (from Wesnoth, The Hammer of Thursagan)
		},
		"Kili", {
			"meaning", "?",
			"singular-nominative", "Kili",
			"name-singular", true,
			"personal-name", true -- example: "Kili" (dwarf from Norse mythology)
		},
		"Kinan", {
			"meaning", "?",
			"singular-nominative", "Kinan",
			"name-singular", true,
			"personal-name", true -- example: "Kinan" (from Wesnoth, The Scepter of Fire)
		},
		"Knalga", {
			"meaning", "?",
			"singular-nominative", "Knalga",
			"name-singular", true,
			"settlement-name", true -- example: "Knalga" (from Wesnoth)
		},
		"Kuhnar", {
			"meaning", "?",
			"singular-nominative", "Kuhnar",
			"name-singular", true,
			"personal-name", true -- example: "Kuhnar" (from Wesnoth, The Scepter of Fire)
		},
		"Laurin", {
			"meaning", "?",
			"singular-nominative", "Laurin",
			"name-singular", true,
			"personal-name", true -- example: "Laurin" (dwarf from German sagas)
		},
		"Lit", {
			"meaning", "?",
			"singular-nominative", "Lit",
			"name-singular", true,
			"personal-name", true -- example: "Lit" (dwarf from Norse mythology)
		},
		"Lofar", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 397.
			"meaning", "?",
			"singular-nominative", "Lofar",
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Lofar" (dwarf from Norse mythology who was a descendant of the settlers of Joruvellir)
		},
		"Loni", {
			"meaning", "?",
			"singular-nominative", "Loni",
			"name-singular", true,
			"personal-name", true -- example: "Loni" (dwarf from Norse mythology)
		},
		"Los", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Los",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigatlos", "Aigdrlos", "Aigdurlos", "Alaithlos", "Alatlos", "Alcatlos", "Aldrlos", "Anallos", "Andrlos", "Aldurlos", "Althalos", "Augatlos", "Augthalos", "Dulaithlos", "Dulcatlos", "Duldrlos", "Dulthalos", "Glamallos", "Glamdrlos", "Gomatlos", "Gomcatlos", "Gomdurlos", "Gomthalos", "Naratlos", "Narthalos", "Pelaithlos", "Pelcatlos", "Trithaithlos", "Trithatlos", "Trithcatlos", "Trithdrlos", "Trithdurlos"
		},
		"Lyr", {
			"meaning", "?",
			"singular-nominative", "Lyr",
			"name-singular", true,
			"settlement-name", true -- example: "Lyr" (hall built by dwarves in Norse mythology)
		},
		"Mjod", {
			"meaning", "Mead",
			"singular-nominative", "Mjod",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Mjodvitnir" (Norse mythology)
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-settlement-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Modsognir", {
			"meaning", "?",
			"singular-nominative", "Modsognir",
			"name-singular", true,
			"personal-name", true -- example: "Modsognir" (the first and mightiest of the dwarves in Norse mythology)
		},
		"Nabbi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 445.
			"meaning", "Small Protuberance on the Skin, Small Protuberance on Greensward",
			"singular-nominative", "Nabbi",
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Nabbi" (dwarf from Norse mythology)
		},
		"Nar", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Nar",
			"personal-name", true, -- example: "Nar" (dwarf from Norse mythology)
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
			"name-singular", true,
			"personal-name", true -- example: "Nefi" (dwarf from Norse mythology)
		},
		"Neglur", {
			"meaning", "?",
			"singular-nominative", "Neglur",
			"name-singular", true,
			"personal-name", true -- example: "Neglur" (from Wesnoth, The Scepter of Fire)
		},
		"Nid", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454.
			"meaning", "Wane of the Moon, No Moon",
			"singular-nominative", "Nid",
			"gender", "Feminine",
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Nidjung" (Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454)
			"prefix-settlement-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-province-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Nidi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454.
			"meaning", "Wane of the Moon, No Moon", -- approximately, from "Nid"
			"singular-nominative", "Nidi",
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Nidi" (dwarf from Norse mythology)
		},
		"Niping", {
			"meaning", "?",
			"singular-nominative", "Niping",
			"name-singular", true,
			"personal-name", true -- example: "Niping" (dwarf from Norse mythology)
		},
		"Noiraran", {
			"meaning", "?",
			"singular-nominative", "Noiraran",
			"name-singular", true,
			"personal-name", true -- example: "Noiraran" (from Wesnoth, The Scepter of Fire)
		},
		"Nordri", {
			"meaning", "Northern", -- source gives meaning as "the Northern"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 457.
			"singular-nominative", "Nordri",
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Nordri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Nori", {
			"meaning", "?",
			"singular-nominative", "Nori",
			"name-singular", true,
			"personal-name", true -- example: "Nori" (dwarf from Norse mythology)
		},
		"Nyi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 459.
			"meaning", "Moon",
			"singular-nominative", "Nyi",
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Nyi" (dwarf from Norse mythology)
		},
		"Nyrad", {
			"meaning", "?",
			"singular-nominative", "Nyrad",
			"name-singular", true,
			"personal-name", true -- example: "Nyrad" (dwarf from Norse mythology)
		},
		"Oin", {
			"meaning", "?",
			"singular-nominative", "Oin",
			"name-singular", true,
			"personal-name", true -- example: "Oin" (dwarf from Norse mythology who was the father of Andvari)
		},
		"Ol", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Ol",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigaithol", "Aigalol", "Alaithol", "Alalol", "Aldrol", "Aldurol", "Althaol", "Analol", "Anatol", "Ancatol", "Andurol", "Anthaol", "Augalol", "Augatol", "Augcatol", "Augdurol", "Augthaol", "Dulatol", "Dulcatol", "Duldrol", "Glamaithol", "Glamthaol", "Gomaithol", "Gomatol", "Gomdrol", "Naraithol", "Naratol", "Narcatol", "Nardrol", "Nardurol", "Narthaol", "Pelaithol", "Pelatol", "Pelcatol", "Peldurol", "Trithaithol", "Trithalol", "Trithdrol", "Trithdurol"
		},
		"Olurf", {
			"meaning", "?",
			"singular-nominative", "Olurf",
			"name-singular", true,
			"personal-name", true -- example: "Olurf" (from Wesnoth, The Legend of Wesmere)
		},
		"Ori", {
			"meaning", "?",
			"singular-nominative", "Ori",
			"name-singular", true,
			"personal-name", true -- example: "Ori" (dwarf from Norse mythology)
		},
		"Pel", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Pel",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Pelthaas", "Pelthail", "Pelthasil"
		},
		"Regin", {
			"meaning", "Counsel-Giver",
			"name-singular", true,
			"personal-name", true -- example: "Regin" (dwarven smith from Norse mythology who was the brother of the dragon Fafnir)
		},
		"Rekk", {
			"meaning", "?",
			"singular-nominative", "Rekk",
			"name-singular", true,
			"personal-name", true -- example: "Rekk" (dwarf from Norse mythology)
		},
		"Relgorn", {
			"meaning", "?",
			"singular-nominative", "Relgorn",
			"name-singular", true,
			"personal-name", true -- example: "Relgorn" (from Wesnoth, Heir to the Throne and Delfador's Memoirs)
		},
		"Rorir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 739.
			"meaning", "Rearer of Charms",
			"singular-nominative", "Rorir", -- alternative spelling given by Cleasby and Vigfusson: "Reyrir"
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: "Thjodrorir"/"þjóð-reyrir" ("The Great Rearer of Charms"; dwarven sage from Norse mythology)
		},
		"Rugnur", {
			"meaning", "?",
			"singular-nominative", "Rugnur",
			"name-singular", true,
			"personal-name", true -- example: "Rugnur" (from Wesnoth, The Scepter of Fire; leader of the party of dwarves who handled the crafting of the Sceptre of Fire)
		},
		"Rynan", {
			"meaning", "?",
			"singular-nominative", "Rynan",
			"name-singular", true,
			"personal-name", true -- example: "Rynan" (from Wesnoth, The Scepter of Fire)
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
			"name-singular", true,
			"personal-name", true -- example: "Sindri"/"Eitri" (dwarf from Norse mythology; expert smith and brother of Brokk)
		},
		"Skavid", {
			"meaning", "?",
			"singular-nominative", "Skavid",
			"name-singular", true,
			"personal-name", true -- example: "Skavid" (dwarf from Norse mythology)
		},
		"Skirvir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 550.
			"meaning", "?", -- maybe related to Old Norse "Skirra"?
			"singular-nominative", "Skirvir", -- alternatively spelled as "Skirfir"
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Skirvir" (dwarf from Norse mythology)
		},
		"Skjaldi", {
			"meaning", "Shield",
			"singular-nominative", "Skjaldi",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: "Eikinskjaldi" (Norse mythology)
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
		"Sudri", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 457, 603.
			"meaning", "Southern", -- "the Southern"
			"singular-nominative", "Sudri",
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Sudri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Svarin", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 606.
			"meaning", "?",
			"singular-nominative", "Svarin",
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Svarin" (dwarf from Norse mythology; maybe the one who gave his name to Svarinshaug?)
		},
		"Sviar", {
			"meaning", "Forger, Smith", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 612.
			"singular-nominative", "Sviar",
			"gender", "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 612.
			"name-singular", true,
			"personal-name", true -- example: "Sviar" (dwarf from Norse mythology)
		},
		"Sviur", {
			"meaning", "?",
			"singular-nominative", "Sviur",
			"name-singular", true,
			"personal-name", true -- example: "Sviur" (dwarf from Norse mythology)
		},
		"Tha", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Tha",
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus", "Augthail", "Augthais", "Augthalos", "Augthaol", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus", "Gomthaas", "Gomthalos", "Gomthasol", "Narthalos", "Narthaol", "Pelthaas", "Pelthail", "Pelthasil", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus"
		},
		"Theganli", {
			"meaning", "?",
			"singular-nominative", "Theganli",
			"name-singular", true,
			"personal-name", true -- example: "Theganli" (from Wesnoth, The Scepter of Fire; jeweler of Durstorn's clan)
		},
		"Thekk", {
			"meaning", "?",
			"singular-nominative", "Thekk",
			"name-singular", true,
			"personal-name", true -- example: "Thekk" (dwarf from Norse mythology)
		},
		"Thjof", {
			"meaning", "Thief",
			"singular-nominative", "Thjof",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: "Althjof" (Norse mythology)
		},
		"Thorin", {
			"meaning", "?",
			"singular-nominative", "Thorin",
			"name-singular", true,
			"personal-name", true -- example: "Thorin" (dwarf from Norse mythology)
		},
		"Thrain", {
			"meaning", "?",
			"singular-nominative", "Thrain",
			"name-singular", true,
			"personal-name", true -- example: "Thrain" (dwarf from Norse mythology)
		},
		"Thror", {
			"meaning", "?",
			"singular-nominative", "Thror",
			"name-singular", true,
			"personal-name", true -- example: "Thror" (dwarf from Norse mythology)
		},
		"Thursagan", {
			"meaning", "?",
			"singular-nominative", "Thursagan",
			"name-singular", true,
			"personal-name", true -- example: "Thursagan" (Battle for Wesnoth, The Sceptre of Fire; master runesmith who crafted the Sceptre of Fire)
		},
		"Trith", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Trith",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus", "Trithalis", "Trithalol", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol", "Trithcatlos", "Trithcatsol", "Trithcatus", "Trithdril", "Trithdring", "Trithdris", "Trithdrlos", "Trithdrol", "Trithdrsol", "Trithdrus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus"
		},
		"Tuta", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 645.
			"meaning", "Teat-Like Prominence",
			"singular-nominative", "Tuta",
			"gender", "Feminine",
			"name-singular", true,
			"personal-name", true -- example: "Tuta"
		},
		"Olf", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 668.
			"meaning", "Wolf",
			"singular-nominative", "Olf", -- in Old Norse Ulf, but used in suffixes as "-olf"
			"gender", "Masculine",
			"suffix-singular", true,
			"suffix-personal-name", true -- example: "Hledjolf" (dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 272.)
		},
		"Ulrek", {
			"meaning", "?",
			"singular-nominative", "Ulrek",
			"name-singular", true,
			"personal-name", true -- example: "Ulrek" (from Wesnoth, Delfador's Memoirs)
		},
		"Uni", {
			"meaning", "?",
			"singular-nominative", "Uni",
			"name-singular", true,
			"personal-name", true -- example: "Uni" (dwarf from Norse mythology)
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
			"suffix-settlement-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"suffix-province-name", true -- example: "Aurvang" (wetlands in Norse mythology, through which a group of dwarves passed to migrate to Joruvellir; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.)
		},
		"Vali", {
			"meaning", "?",
			"singular-nominative", "Vali",
			"name-singular", true,
			"personal-name", true -- example: "Vali" (dwarf from Norse mythology)
		},
		"Var", {
			"meaning", "?",
			"singular-nominative", "Var",
			"name-singular", true,
			"personal-name", true -- example: "Var" (dwarf from Norse mythology)
		},
		"Vegdrasil", {
			"meaning", "?",
			"singular-nominative", "Vegdrasil",
			"name-singular", true,
			"personal-name", true -- example: "Vegdrasil" (dwarf from Norse mythology)
		},
		"Vestri", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 457, 603.
			"meaning", "Western", -- "the Western"
			"singular-nominative", "Vestri",
			"gender", "Masculine",
			"name-singular", true,
			"personal-name", true -- example: "Vestri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Vellir", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "vellir" = "fields"
			"meaning", "Fields",
			-- what is the singular form?
			"plural-nominative", "Vellir",
			"suffix-plural", true,
			"suffix-province-name", true -- example: "Joruvellir" (Norse mythology)
		},
		"Vig", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 715.
			"meaning", "Fight, Battle",
			"singular-nominative", "Vig",
			"gender", "Neuter",
			"name-singular", true,
			"personal-name", true, -- example: "Vig" (dwarf from Norse mythology)
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Víg-dvalinn" (dwarf from Norse mythology)
			"prefix-settlement-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-province-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Vind", {
			"meaning", "Wind",
			"singular-nominative", "Vind",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Vindalf" (Norse mythology)
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-settlement-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Virfir", {
			"meaning", "?",
			"singular-nominative", "Virfir",
			"name-singular", true,
			"personal-name", true -- example: "Virfir" (dwarf from Norse mythology)
		},
		"Vit", {
			"meaning", "?",
			"singular-nominative", "Vit",
			"name-singular", true,
			"personal-name", true -- example: "Vit" (dwarf from Norse mythology)
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
		}
	},
	"adjectives", {
		"Al", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
			"meaning", "Mighty, All", -- meaning from Old Norse, but is also a prefix and infix used by Wesnoth's dwarven names
			"prefix-personal-name", true, -- examples from Norse mythology: "Alvis" ("all-knowing"/"all-wise"), "Althjof" (mighty thief); examples from Wesnoth: "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Aldras", "Aldril", "Aldring", "Aldris", "Aldrlos", "Aldrol", "Aldrsol", "Alduras", "Aldurlos", "Aldurol", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus"
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-settlement-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-terrain-name", "Hills", true, -- no examples, but seems sensible in face of a general lack of examples
			"infix-personal-name", true -- infix used by Wesnoth's dwarven names; examples: "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Augalas", "Augaling", "Augalol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Gomalil", "Gomalis", "Gomalus", "Naralas", "Naralil", "Naralsil", "Naralus", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Trithalis", "Trithalol"
		},
		"Eikin", {
			"meaning", "Oaken",
			"prefix-personal-name", true, -- example: "Eikinskjaldi" (Norse mythology)
			"prefix-settlement-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-province-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Gand", {
			"meaning", "Magic",
			"prefix-personal-name", true, -- example: "Gandalf" (Norse mythology)
			"prefix-province-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-settlement-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Jung", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 327.
			"meaning", "Young",
			"suffix-personal-name", true -- example: "Nidjung" (Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454)
		},
		"Nain", {
			"meaning", "Near To, Closely Related, Near Kinsman Of", -- Old Norse "Náinn"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 448.
			"personal-name", true -- example: "Nain" (dwarf from Norse mythology)
		},
		"Nyr", {
			"meaning", "New", -- spelled as "Nýr" in Old Icelandic; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 459.
			"personal-name", true -- example: "Nyr" (dwarf from Norse mythology)
		},
		"Rad", {
			"meaning", "Counsel", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 485.
			"prefix-personal-name", true, -- example: "Radsvid" (Norse mythology)
			"prefix-settlement-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-province-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Svid", {
			"meaning", "Swift, Wise", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 611.
			"suffix-personal-name", true -- example: "Alsvid" ("All-Wise"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 611.), "Radsvid" (Norse mythology; "Swift in Counsel")
		},
		"Thjod", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 739.
			"meaning", "Great",
			"prefix-personal-name", true, -- example: "Thjodrorir"/"þjóð-reyrir" ("The Great Rearer of Charms"; dwarven sage from Norse mythology)
			"prefix-settlement-name", true, -- no examples, but seems sensible in face of a general lack of examples
			"prefix-province-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Vis", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
			"meaning", "Wise",
			"suffix-personal-name", true -- example: "Alvis" ("all-knowing"/"all-wise"; from Norse mythology)
		}
	}
)
