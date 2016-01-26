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

 -- Dwarven; mix of Norse and German words used in dwarven contexts (ethnonyms, personal names or place names), as well as dwarven fantasy names

DefineLanguageNoun("Ai", {
	Language = "dwarven",
	Meaning = "Great-Grandfather", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 41.
	SingularNominative = "Ai",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 41.
	NameSingular = true,
	TypeName = {"person"} -- example: "Ai" (dwarf from Norse mythology who was a settler of Joruvellir)
})

DefineLanguageNoun("Aig", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Aig",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Aiglondur" (dwarven hero in The Hammer of Thursagan), "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aigduras", "Aigdurlos", "Aigdursol", "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus"
})

DefineLanguageNoun("Aiglondur", { -- "Aig-lon-dur"? seems to follow similar naming conventions as the three-element names of the dwarven name list
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Aiglondur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Aiglondur" (from Wesnoth, dwarven hero in The Hammer of Thursagan)
})

DefineLanguageNoun("Aith", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Aith",
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Anaithas", "Anaithil", "Anaithis", "Anaithing", "Anaithsil", "Anaithus", "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus"
})

DefineLanguageNoun("Alberich", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Alberich",
	NameSingular = true,
	TypeName = {"person"} -- example: "Alberich" (dwarf from German sagas)
})

DefineLanguageNoun("Alf", {
	Language = "dwarven",
	Meaning = "Elf",
	SingularNominative = "Alf",
	NameSingular = true,
	TypeName = {"person"}, -- example: "Alf" (dwarf from Norse mythology who was a settler of Joruvellir)
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Gandalf" (Norse mythology), "Vindalf" (Norse mythology)
	-- should be available as a name only if the dwarven civilization in question has met elves?
})

DefineLanguageNoun("Alfrigg", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Alfrigg",
	NameSingular = true,
	TypeName = {"person"} -- example: "Alfrigg" (dwarf from Norse mythology)
})

DefineLanguageNoun("An", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "An",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Anaithas", "Anaithil", "Anaithing", "Anaithis", "Anaithsil", "Anaithus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Anatas", "Anating", "Anatis", "Anatol", "Anatsol", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Andril", "Andris", "Andrlos", "Andrus", "Anduril", "Andurol", "Andursol", "Andurus", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus"
})

DefineLanguageNoun("Andvari", {
	Language = "dwarven",
	Meaning = "Fish of Prey, Gurnard", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.
	SingularNominative = "Andvari",
	SingularGenitive = "Andvara", -- as in "Andvaranaut"
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.
	NameSingular = true,
	TypeName = {"person"} -- example: "Andvari" (gurnard-shaped dwarf from Norse mythology whose hoard and golden ring were stolen by Loki)
})

DefineLanguageNoun("Angarthing", { -- "An-garth-ing"? seems to follow similar naming conventions as the three-element names of the dwarven name list
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Angarthing",
	NameSingular = true,
	TypeName = {"person"} -- example: "Angarthing" (from Wesnoth, The Hammer of Thursagan)
})

DefineLanguageNoun("As", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "As",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigaithas", "Aigalas", "Aigatas", "Aigcatas", "Aigduras", "Alaithas", "Alalas", "Alatas", "Aldras", "Alduras", "Althaas", "Anaithas", "Anatas", "Ancatas", "Anthaas", "Augaithas", "Augalas", "Augcatas", "Augdras", "Augduras", "Dulalas", "Dulduras", "Glamcatas", "Glamdras", "Glamduras", "Glamthaas", "Gomaithas", "Gomatas", "Gomdras", "Gomthaas", "Naralas", "Nardras", "Narduras", "Pelaithas", "Peldras", "Pelthaas", "Trithaithas", "Trithatas", "Triththaas"
})

DefineLanguageNoun("At", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "At",
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Anatas", "Anating", "Anatis", "Anatol", "Anatsol", "Augating", "Augatlos", "Augatol", "Augatsil", "Augatsol", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Glamatil", "Glamatus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Naratlos", "Naratol", "Naratsil", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol"
})

DefineLanguageNoun("Aug", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Aug",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Augalas", "Augaling", "Augalol", "Augating", "Augatlos", "Augatol", "Augatsil", "Augatsol", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Augdras", "Augdris", "Augdrsil", "Augdrus", "Augduras", "Augduril", "Augduring", "Augdurol", "Augdursol", "Augdurus", "Augthail", "Augthais", "Augthalos", "Augthaol"
})

DefineLanguageNoun("Aur", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 34.
	Language = "dwarven",
	Meaning = "Wet Clay, Loam",
	SingularNominative = "Aur", -- "Aurr" in Old Icelandic
	Gender = "Masculine",
	PrefixSingular = true,
	PrefixTypeName = {
		"person", -- example: "Aurvang" (dwarf from Norse mythology)
		"province", -- example: "Aurvang" (wetlands in Norse mythology, through which a group of dwarves passed to migrate to Joruvellir; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageNoun("Austri", {
	Language = "dwarven",
	Meaning = "Eastern", -- source gives meaning as "the Eastern"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
	SingularNominative = "Austri",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
	NameSingular = true,
	TypeName = {"person"} -- example: "Austri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
})

DefineLanguageNoun("Bafur", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Bafur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Bafur" (dwarf from Norse mythology)
})

DefineLanguageNoun("Baglur", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Baglur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Baglur" (from Wesnoth, The Scepter of Fire; veteran warrior and member of the party of dwarves who handled the crafting of the Sceptre of Fire)
})

DefineLanguageNoun("Bari", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Bari",
	NameSingular = true,
	TypeName = {"person"} -- example: "Bari" (dwarf from Norse mythology)
})

DefineLanguageNoun("Berling", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Berling",
	NameSingular = true,
	TypeName = {"person"} -- example: "Berling" (dwarf from Norse mythology)
})

DefineLanguageNoun("Bibung", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Bibung",
	NameSingular = true,
	TypeName = {"person"} -- example: "Bibung" (dwarf from Norse mythology)
})

DefineLanguageNoun("Bifur", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Bifur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Bifur" (dwarf from Norse mythology)
})

DefineLanguageNoun("Bodn", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Bodn",
	NameSingular = true,
	TypeName = {"item-potion"} -- example: "Bodn" (jar which contained some of the mead of poetry)
})

DefineLanguageNoun("Bombor", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Bombor",
	NameSingular = true,
	TypeName = {"person"} -- example: "Bombor" (dwarf from Norse mythology)
})

DefineLanguageNoun("Brising", {
	Language = "dwarven",
	Meaning = "Flame", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 772.
	SingularNominative = "Brising", -- also name of a group of four dwarves, the Brisings
	SingularGenitive = "Brisinga", -- as in "Brisingamen"
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 772.
	PrefixSingular = true,
	PrefixTypeName = {
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"item-amulet", -- example: "Brisingamen" (golden necklace made by four dwarves, the Brisings)
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageNoun("Brokk", {
	Language = "dwarven",
	Meaning = "Badger, Trotter of a Horse", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 81.
	SingularNominative = "Brokk",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 81.
	NameSingular = true,
	TypeName = {"person"} -- example: "Brokk" (dwarf from Norse mythology who was an expert smith and brother of Eitri)
})

DefineLanguageNoun("Burin", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Burin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Burin" (from Wesnoth, The Rise of Wesnoth)
})

DefineLanguageNoun("Cat", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Cat",
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Gomcatil", "Gomcatis", "Gomcatlos", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Trithcatlos", "Trithcatsol", "Trithcatus"
})

DefineLanguageNoun("Dain", {
	Language = "dwarven",
	Meaning = "Dead, Deceased", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.
	SingularNominative = "Dain",
	SingularGenitive = "Dains", -- as in "Dainsleif"
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.
	NameSingular = true,
	TypeName = {"person"}, -- example: "Dain" (dwarf from Norse mythology)
	PrefixSingular = true,
	PrefixTypeName = {"item-sword"} -- example: "Dainsleif"
})

DefineLanguageNoun("Delling", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Delling",
	NameSingular = true,
	TypeName = {"person"} -- example: "Delling" (dwarf from Norse mythology)
})

DefineLanguageNoun("Dolgthvari", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Dolgthvari",
	NameSingular = true,
	TypeName = {"person"} -- example: "Dolgthvari" (dwarf from Norse mythology)
})

DefineLanguageNoun("Dori", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Dori",
	NameSingular = true,
	TypeName = {"person"} -- example: "Dori" (dwarf from Norse mythology)
})

DefineLanguageNoun("Dr", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Dr",
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aldras", "Aldril", "Aldris", "Aldring", "Aldrlos", "Aldrol", "Aldrsol", "Andril", "Andris", "Andrlos", "Andrus", "Augdras", "Augdris", "Augdrsil", "Augdrus", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Trithdril", "Trithdring", "Trithdrlos", "Trithdris", "Trithdrol", "Trithdrsol", "Trithdrus"
})

DefineLanguageNoun("Draupnir", {
	Language = "dwarven",
	Meaning = "Dropper",
	SingularNominative = "Draupnir",
	Gender = "Masculine", -- presumably, since it's the name of a male dwarf?
	NameSingular = true,
	TypeName = {
		"person", -- example: "Draupnir" (dwarf from Norse mythology)
		"item-ring" -- example: "Draupnir" (solid gold arm-ring made by the dwarven brothers Brokk and Eitri; maybe should be a different item type than ring, as it is actually an arm-ring?)
	},
})

DefineLanguageNoun("Duf", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Duf",
	NameSingular = true,
	TypeName = {"person"} -- example: "Duf" (dwarf from Norse mythology)
})

DefineLanguageNoun("Dul", { -- prefix used by Wesnoth's dwarven names
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Dul",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus"
})

DefineLanguageNoun("Dulcatulos", { -- "Dul-catu-los", or "Dul-cat-ulos"? seems to follow similar naming conventions as the three-element names of the dwarven name list
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Dulcatulos",
	NameSingular = true,
	TypeName = {"person"} -- example: "Dulcatulos" (from Wesnoth, The Hammer of Thursagan)
})

DefineLanguageNoun("Dulsi", { -- not entirely clear if this is the name of a particular dwarf, or if it can also mean "dwarf"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 109.
	Language = "dwarven",
	Meaning = "Poet",
	SingularNominative = "Dulsi",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Dulsi" (dwarf from Norse mythology)
})

DefineLanguageNoun("Dur", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Dur",
	PrefixSingular = true,
	PrefixTypeName = {"person"}, -- example: "Dursil" (from Wesnoth, The Rise of Wesnoth)
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigduras", "Aigdurlos", "Aigdursol", "Alduras", "Aldurlos", "Aldurol", "Anduril", "Andurol", "Andursol", "Andurus", "Augduras", "Augduril", "Augduring", "Augdurol", "Augdursol", "Augdurus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Gomduris", "Gomdurlos", "Gomdursol", "Gomdursil", "Gomdurus", "Narduras", "Narduril", "Nardurol", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus"
})

DefineLanguageNoun("Durahn", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Durahn",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Durahn" (from Dyson Logos' The Tomb of Durâhn Oakenshield)
})

DefineLanguageNoun("Durin", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Durin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Durin" (dwarf from Norse mythology who was Modsognir's deputy)
})

DefineLanguageNoun("Durstorn", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Durstorn",
	NameSingular = true,
	TypeName = {"person"} -- example: "Durstorn" (from Wesnoth, The Scepter of Fire; chieftain of Rugnur's tribe)
})

DefineLanguageNoun("Dvalin", {
	Language = "dwarven",
	Meaning = "?", -- maybe "Delayer" or "Delayed"?; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 110.
	SingularNominative = "Dvalin",
	NameSingular = true,
	TypeName = {"person"}, -- example: "Dvalin" (dwarf from Norse mythology; gave the knowledge of runes to the dwarves; one of the four who crafted the Necklace of the Brisings)
	PrefixSingular = true,
	SuffixTypeName = {"person"} -- example: "Víg-dvalinn" (dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 715.)
})

DefineLanguageNoun("Dverg", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 110.
	Language = "dwarven",
	Meaning = "Dwarf",
	SingularNominative = "Dverg",
	Gender = "Masculine"
})

DefineLanguageNoun("Dyrgja", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 111.
	Language = "dwarven",
	Meaning = "Female Dwarf",
	SingularNominative = "Dyrgja",
	Gender = "Feminine"
})

DefineLanguageNoun("Eggerich", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Eggerich",
	NameSingular = true,
	TypeName = {"person"} -- example: "Eggerich" (dwarf from German sagas)
})

DefineLanguageNoun("Fal", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Fal",
	NameSingular = true,
	TypeName = {"person"} -- example: "Fal" (dwarf from Norse mythology)
})

DefineLanguageNoun("Fid", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Fid",
	NameSingular = true,
	TypeName = {"person"} -- example: "Fid" (dwarf from Norse mythology)
})

DefineLanguageNoun("Fili", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Fili",
	NameSingular = true,
	TypeName = {"person"} -- example: "Fili" (dwarf from Norse mythology)
})

DefineLanguageNoun("Fjalar", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Fjalar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Fjalar" (dwarf from Norse mythology who, with the help of his brother Galar, brew Kvasir's remains into the Mead of Poetry)
})

DefineLanguageNoun("Frag", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Frag",
	NameSingular = true,
	TypeName = {"person"} -- example: "Frag" (dwarf from Norse mythology)
})

DefineLanguageNoun("Frar", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Frar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Frar" (dwarf from Norse mythology)
})

DefineLanguageNoun("Frosti", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Frosti",
	NameSingular = true,
	TypeName = {"person"} -- example: "Frosti" (dwarf from Norse mythology)
})

DefineLanguageNoun("Fundin", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Fundin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Fundin" (dwarf from Norse mythology)
})

DefineLanguageNoun("Galar", {
	Language = "dwarven",
	Meaning = "Enchanter", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 187.
	SingularNominative = "Galar",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 187.
	NameSingular = true,
	TypeName = {"person"} -- example: "Galar" (dwarf from Norse mythology who - with the help of his brother Fjalar - brew Kvasir's remains into the Mead of Poetry)
})

DefineLanguageNoun("Ginnar", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Ginnar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Ginnar" (dwarf from Norse mythology)
})

DefineLanguageNoun("Glam", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Glam",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Glamatil", "Glamatus", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus"
})

DefineLanguageNoun("Gleipnir", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Gleipnir"
	-- example: "Gleipnir" (fetter made by dwarves to bind the wolf Fenrir)
})

DefineLanguageNoun("Glinar", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Glinar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Glinar" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageNoun("Gloin", {
	Language = "dwarven",
	Meaning = "Light-Colored Dog", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 205.
	SingularNominative = "Gloin", -- given by Cleasby and Vigfusson as "Glói", but elsewhere given as "Gloin"/"Glóin"
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 205.
	NameSingular = true,
	TypeName = {"person"} -- example: "Gloin" (dwarf from Norse mythology)
})

DefineLanguageNoun("Glomin", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Glomin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Glomin" (from Wesnoth; the only name in Wesnoth's dwarven name list to not obbey the three-part compound pattern)
})

DefineLanguageNoun("Glonoin", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Glonoin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Glonoin" (from Wesnoth, The Scepter of Fire; chieftain of the Shorbear clan)
})

DefineLanguageNoun("Gneissus", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Gneissus",
	Gender = "Feminine",
--	NameSingular = true,
--	TypeName = {"person"} -- example: "Gneissus" (from Dyson Logos' The Tomb of Durâhn Oakenshield)
})

DefineLanguageNoun("Goldemar", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Goldemar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Goldemar" (dwarf from German sagas)
})

DefineLanguageNoun("Gom", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Gom",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Gomalil", "Gomalis", "Gomalus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Gomcatil", "Gomcatis", "Gomcatlos", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Gomduris", "Gomdurlos", "Gomdursil", "Gomdursol", "Gomdurus", "Gomthaas", "Gomthalos", "Gomthasol"
})

DefineLanguageNoun("Gram", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Gram",
	NameSingular = true,
	TypeName = {"item-sword"} -- example: "Gram" (sword made by the dwarf Regin)
})

DefineLanguageNoun("Grerr", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Grerr",
	NameSingular = true,
	TypeName = {"person"} -- example: "Grerr" (dwarf from Norse mythology)
})

DefineLanguageNoun("Grimnir", { -- meaning is from Old Norse, while the occurrence of the name is from Wesnoth (but it seems clear that the Wesnoth name was based on the Old Norse one)
	Language = "dwarven",
	Meaning = "Hooded One", -- Source: Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 85.
	SingularNominative = "Grimnir",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Grimnir" (dwarven pathfinder from Wesnoth, Under the Burning Suns)
})

DefineLanguageNoun("Gungnir", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Gungnir",
	NameSingular = true,
	TypeName = {"item-javelin"} -- example: "Gungnir" (throwing spear made by the sons of Ivaldi)
})

DefineLanguageNoun("Hamel", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Hamel",
	NameSingular = true,
	TypeName = {"person"} -- example: "Hamel" (from Wesnoth, Northern Rebirth and The Hammer of Thursagan)
})

DefineLanguageNoun("Hannar", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 239.
	Language = "dwarven",
	Meaning = "Skillful, Artist", -- source gives meaning as "the Skillful, the Artist"
	SingularNominative = "Hannar", -- source gives name as "Hannarr"
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Hannar" (dwarf from Norse mythology; source indicates the dwarf being present in the Voluspo, but in other consulted translations of that text it was nowhere to be found)
})

DefineLanguageNoun("Har", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Har",
	NameSingular = true,
	TypeName = {"person"} -- example: "Har" (dwarf from Norse mythology)
})

DefineLanguageNoun("Haug", { -- from Norse mythology, "Svarinshaug" = "Svarin's Mound", "haug" = "mound"
	Language = "dwarven",
	Meaning = "Mound",
	SingularNominative = "Haug",
	SuffixSingular = true,
	SuffixTypeName = {
		"province", -- example: "Svarinshaug" ("Svarin's Mound"; from Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- example: "Svarinshaug" ("Svarin's Mound"; from Norse mythology)
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageNoun("Haur", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Haur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Haur" (dwarf from Norse mythology)
})

DefineLanguageNoun("Heptifili", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Heptifili",
	NameSingular = true,
	TypeName = {"person"} -- example: "Heptifili" (dwarf from Norse mythology)
})

DefineLanguageNoun("Hledj", {
	Language = "dwarven",
	Meaning = "Sound, Silence, Hearing, Listening", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 271-272.
	SingularNominative = "Hledj",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {
		"person", -- example: "Hledjolf" (dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 272.)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageNoun("Hornbori", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Hornbori",
	NameSingular = true,
	TypeName = {"person"} -- example: "Hornbori" (dwarf from Norse mythology)
})

DefineLanguageNoun("Hugstari", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Hugstari",
	NameSingular = true,
	TypeName = {"person"} -- example: "Hugstari" (dwarf from Norse mythology)
})

DefineLanguageNoun("Il", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Il",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigaithil", "Aigcatil", "Alalil", "Alatil", "Alcatil", "Aldril", "Althail", "Anaithil", "Analil", "Ancatil", "Andril", "Anduril", "Augcatil", "Augduril", "Augthail", "Dulaithil", "Dulatil", "Dulcatil", "Duldril", "Glamaithil", "Glamalil", "Glamatil", "Glamcatil", "Glamdril", "Glamduril", "Gomaithil", "Gomalil", "Gomatil", "Gomcatil", "Gomdril", "Naraithil", "Naralil", "Nardril", "Narduril", "Pelaithil", "Pelalil", "Pelatil", "Peldril", "Pelduril", "Pelthail", "Trithaithil", "Trithatil", "Trithdril", "Trithduril", "Triththail"
})

DefineLanguageNoun("Ing", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Ing",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigaithing", "Aigaling", "Aigcating", "Aigdring", "Aigthaing", "Alating", "Aldring", "Anaithing", "Anating", "Anthaing", "Augaithing", "Augaling", "Augating", "Augduring", "Dulaithing", "Dulaling", "Dulating", "Dulcating", "Dulduring", "Glamaling", "Glamcating", "Glamduring", "Gomating", "Gomdring", "Naraithing", "Narcating", "Nardring", "Pelaithing", "Pelaling", "Pelating", "Pelcating", "Pelduring", "Trithdring", "Trithduring", "Triththaing"
})

DefineLanguageNoun("Ingi", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Ingi",
	NameSingular = true,
	TypeName = {"person"} -- example: "Ingi" (dwarf from Norse mythology)
})

DefineLanguageNoun("Iri", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Iri",
	NameSingular = true,
	TypeName = {"person"} -- example: "Iri" (dwarf from Norse mythology)
})

DefineLanguageNoun("Is", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Is",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigalis", "Aigatis", "Aigcatis", "Aigdris", "Aigthais", "Alaithis", "Alcatis", "Aldris", "Anaithis", "Anatis", "Andris", "Anthais", "Augcatis", "Augdris", "Augthais", "Dulalis", "Duldris", "Glamaithis", "Glamalis", "Glamduris", "Gomalis", "Gomatis", "Gomcatis", "Gomdris", "Gomduris", "Narcatis", "Nardris", "Pelaithis", "Pelalis", "Pelatis", "Pelduris", "Trithaithis", "Trithalis", "Trithdris"
})

DefineLanguageNoun("Isuldan", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Isuldan",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Isuldan" (from Dyson Logos' The Tomb of Durâhn Oakenshield)
})

DefineLanguageNoun("Ivaldi", {
	Language = "dwarven",
	Meaning = "Mighty", -- source gives meaning as "the Mighty"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.
	SingularNominative = "Ivaldi",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 319.
	NameSingular = true,
	TypeName = {"person"} -- example: "Ivaldi" (dwarf from Norse mythology whose sons were mastersmiths)
})

DefineLanguageNoun("Jari", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Jari",
	NameSingular = true,
	TypeName = {"person"} -- example: "Jari" (dwarf from Norse mythology)
})

DefineLanguageNoun("Joru", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "Joru" = "Sand"
	Language = "dwarven",
	Meaning = "Sand",
	SingularNominative = "Joru",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {
		"province", -- example: "Joruvellir" (Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageNoun("Kal Kartha", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Kal Kartha", -- "Kal" maybe should become a (separated) prefix for settlement names?
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Kal Kartha" (from Wesnoth)
})

DefineLanguageNoun("Karrag", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Karrag",
	NameSingular = true,
	TypeName = {"person"} -- example: "Karrag" (from Wesnoth, The Hammer of Thursagan)
})

DefineLanguageNoun("Kili", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Kili",
	NameSingular = true,
	TypeName = {"person"} -- example: "Kili" (dwarf from Norse mythology)
})

DefineLanguageNoun("Kinan", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Kinan",
	NameSingular = true,
	TypeName = {"person"} -- example: "Kinan" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageNoun("Knalga", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Knalga",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Knalga" (from Wesnoth)
})

DefineLanguageNoun("Kuhnar", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Kuhnar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Kuhnar" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageNoun("Laurin", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Laurin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Laurin" (dwarf from German sagas)
})

DefineLanguageNoun("Leif", {
	Language = "dwarven",
	Meaning = "Patrimony", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 381.
	SingularNominative = "Leif",
	Gender = "Feminine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 381.
	SuffixSingular = true,
	SuffixTypeName = {"item-sword"} -- example: "Dainsleif"
})

DefineLanguageNoun("Lit", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Lit",
	NameSingular = true,
	TypeName = {"person"} -- example: "Lit" (dwarf from Norse mythology)
})

DefineLanguageNoun("Lofar", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 397.
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Lofar",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Lofar" (dwarf from Norse mythology who was a descendant of the settlers of Joruvellir)
})

DefineLanguageNoun("Loni", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Loni",
	NameSingular = true,
	TypeName = {"person"} -- example: "Loni" (dwarf from Norse mythology)
})

DefineLanguageNoun("Los", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Los",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigatlos", "Aigdrlos", "Aigdurlos", "Alaithlos", "Alatlos", "Alcatlos", "Aldrlos", "Anallos", "Andrlos", "Aldurlos", "Althalos", "Augatlos", "Augthalos", "Dulaithlos", "Dulcatlos", "Duldrlos", "Dulthalos", "Glamallos", "Glamdrlos", "Gomatlos", "Gomcatlos", "Gomdurlos", "Gomthalos", "Naratlos", "Narthalos", "Pelaithlos", "Pelcatlos", "Trithaithlos", "Trithatlos", "Trithcatlos", "Trithdrlos", "Trithdurlos"
})

DefineLanguageNoun("Men", {
	Language = "dwarven",
	Meaning = "Necklace", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 772.
	SingularNominative = "Men",
	Gender = "Neuter", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 772.
	SuffixSingular = true,
	SuffixTypeName = {"item-amulet"} -- example: "Brisingamen" (golden necklace made by four dwarves, the Brisings)
})

DefineLanguageNoun("Mjod", {
	Language = "dwarven",
	Meaning = "Mead",
	SingularNominative = "Mjod",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {
		"person", -- example: "Mjodvitnir" (Norse mythology)
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	},
--	PrefixTypeName = {"item-potion"} -- no examples, but seems sensible (commented out because there are no suffixes)
})

DefineLanguageNoun("Mjollnir", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Mjollnir",
	NameSingular = true,
	TypeName = {"item-mace"} -- example: "Mjollnir" (iron hammer made by the dwarven brothers Brokk and Eitri)
})

DefineLanguageNoun("Modsognir", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Modsognir",
	NameSingular = true,
	TypeName = {"person"} -- example: "Modsognir" (the first and mightiest of the dwarves in Norse mythology)
})

DefineLanguageNoun("Nabbi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 445.
	Language = "dwarven",
	Meaning = "Small Protuberance on the Skin, Small Protuberance on Greensward",
	SingularNominative = "Nabbi",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nabbi" (dwarf from Norse mythology)
})

DefineLanguageNoun("Naglering", { -- possibly "Nagle-ring"?
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Naglering",
	NameSingular = true,
	TypeName = {"item-sword"} -- example: "Naglering" (sword forged by the dwarf Alberich)
})

DefineLanguageNoun("Nar", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Nar",
	TypeName = {"person"}, -- example: "Nar" (dwarf from Norse mythology)
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Naralas", "Naralil", "Naralsil", "Naralus", "Naratlos", "Naratol", "Naratsil", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Narduras", "Narduril", "Nardurol", "Narthalos", "Narthaol"
})

DefineLanguageNoun("Naut", {
	Language = "dwarven",
	Meaning = "A Gift or Booty from a Person", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 447.
	SingularNominative = "Naut",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 447.
	SuffixSingular = true,
	SuffixTypeName = {"item-ring"} -- example: "Andvaranaut" (gold ring made by Andvari and stolen by Loki; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.)
})

DefineLanguageNoun("Nefi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 450.
	Language = "dwarven",
	Meaning = "Cognate Kinsman",
	SingularNominative = "Nefi",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nefi" (dwarf from Norse mythology)
})

DefineLanguageNoun("Neglur", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Neglur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Neglur" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageNoun("Nid", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454.
	Language = "dwarven",
	Meaning = "Wane of the Moon, No Moon",
	SingularNominative = "Nid",
	Gender = "Feminine",
	PrefixSingular = true,
	PrefixTypeName = {
		"person", -- example: "Nidjung" (Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454)
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageNoun("Nidi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454.
	Language = "dwarven",
	Meaning = "Wane of the Moon, No Moon", -- approximately, from "Nid"
	SingularNominative = "Nidi",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nidi" (dwarf from Norse mythology)
})

DefineLanguageNoun("Niping", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Niping",
	NameSingular = true,
	TypeName = {"person"} -- example: "Niping" (dwarf from Norse mythology)
})

DefineLanguageNoun("Noiraran", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Noiraran",
	NameSingular = true,
	TypeName = {"person"} -- example: "Noiraran" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageNoun("Nordri", {
	Language = "dwarven",
	Meaning = "Northern", -- source gives meaning as "the Northern"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 457.
	SingularNominative = "Nordri",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nordri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
})

DefineLanguageNoun("Nori", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Nori",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nori" (dwarf from Norse mythology)
})

DefineLanguageNoun("Nyi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 459.
	Language = "dwarven",
	Meaning = "Moon",
	SingularNominative = "Nyi",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nyi" (dwarf from Norse mythology)
})

DefineLanguageNoun("Nyrad", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Nyrad",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nyrad" (dwarf from Norse mythology)
})

DefineLanguageNoun("Odrorir", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Odrorir",
	NameSingular = true,
	TypeName = {"item-potion"} -- example: "Odrorir" (cauldron which contained some of the mead of poetry)
})

DefineLanguageNoun("Oin", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Oin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Oin" (dwarf from Norse mythology who was the father of Andvari)
})

DefineLanguageNoun("Ol", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Ol",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigaithol", "Aigalol", "Alaithol", "Alalol", "Aldrol", "Aldurol", "Althaol", "Analol", "Anatol", "Ancatol", "Andurol", "Anthaol", "Augalol", "Augatol", "Augcatol", "Augdurol", "Augthaol", "Dulatol", "Dulcatol", "Duldrol", "Glamaithol", "Glamthaol", "Gomaithol", "Gomatol", "Gomdrol", "Naraithol", "Naratol", "Narcatol", "Nardrol", "Nardurol", "Narthaol", "Pelaithol", "Pelatol", "Pelcatol", "Peldurol", "Trithaithol", "Trithalol", "Trithdrol", "Trithdurol"
})

DefineLanguageNoun("Olurf", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Olurf",
	NameSingular = true,
	TypeName = {"person"} -- example: "Olurf" (from Wesnoth, The Legend of Wesmere)
})

DefineLanguageNoun("Ori", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Ori",
	NameSingular = true,
	TypeName = {"person"} -- example: "Ori" (dwarf from Norse mythology)
})

DefineLanguageNoun("Pel", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Pel",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Pelthaas", "Pelthail", "Pelthasil"
})

DefineLanguageNoun("Regin", {
	Language = "dwarven",
	Meaning = "Counsel-Giver",
	NameSingular = true,
	TypeName = {"person"} -- example: "Regin" (dwarven smith from Norse mythology who was the brother of the dragon Fafnir)
})

DefineLanguageNoun("Rekk", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Rekk",
	NameSingular = true,
	TypeName = {"person"} -- example: "Rekk" (dwarf from Norse mythology)
})

DefineLanguageNoun("Relgorn", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Relgorn",
	NameSingular = true,
	TypeName = {"person"} -- example: "Relgorn" (from Wesnoth, Heir to the Throne and Delfador's Memoirs)
})

DefineLanguageNoun("Rorir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 739.
	Language = "dwarven",
	Meaning = "Rearer of Charms",
	SingularNominative = "Rorir", -- alternative spelling given by Cleasby and Vigfusson: "Reyrir"
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Thjodrorir"/"þjóð-reyrir" ("The Great Rearer of Charms"; dwarven sage from Norse mythology)
})

DefineLanguageNoun("Rugnur", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Rugnur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Rugnur" (from Wesnoth, The Scepter of Fire; leader of the party of dwarves who handled the crafting of the Sceptre of Fire)
})

DefineLanguageNoun("Rynan", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Rynan",
	NameSingular = true,
	TypeName = {"person"} -- example: "Rynan" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageNoun("Sil", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Sil",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Dursil" (Battle for Wesnoth, The Rise of Wesnoth), "Aigalsil", "Aigatsil", "Aigcatsil", "Aigdrsil", "Aigthasil", "Alatsil", "Alcatsil", "Althasil", "Anaithsil", "Analsil", "Anthasil", "Augaithsil", "Augatsil", "Augcatsil", "Augdrsil", "Dulaithsil", "Dulalsil", "Dulcatsil", "Duldrsil", "Duldursil", "Dulthasil", "Glamalsil", "Glamcatsil", "Glamthasil", "Gomdrsil", "Gomdursil", "Naraithsil", "Naralsil", "Naratsil", "Narcatsil", "Nardrsil", "Pelaithsil", "Pelalsil", "Pelatsil", "Pelcatsil", "Pelthasil", "Trithaithsil", "Trithdursil"
})

DefineLanguageNoun("Sindri", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 529.
	Language = "dwarven",
	Meaning = "Forger",
	SingularNominative = "Eitri", -- can also be spelled as "Sindri"
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Sindri"/"Eitri" (dwarf from Norse mythology; expert smith and brother of Brokk)
})

DefineLanguageNoun("Skavid", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Skavid",
	NameSingular = true,
	TypeName = {"person"} -- example: "Skavid" (dwarf from Norse mythology)
})

DefineLanguageNoun("Skid", {
	Language = "dwarven",
	Meaning = "Wood",
	SingularNominative = "Skid",
	Gender = "Neuter", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 550.
	PrefixSingular = true -- example: "Skidbladnir" (ship made by the sons of Ivaldi, name means "Wooden-Bladed")
	-- should add a category for ship names
})

DefineLanguageNoun("Skirvir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 550.
	Language = "dwarven",
	Meaning = "?", -- maybe related to Old Norse "Skirra"?
	SingularNominative = "Skirvir", -- alternatively spelled as "Skirfir"
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Skirvir" (dwarf from Norse mythology)
})

DefineLanguageNoun("Skjaldi", {
	Language = "dwarven",
	Meaning = "Shield",
	SingularNominative = "Skjaldi",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Eikinskjaldi" (Norse mythology)
})

DefineLanguageNoun("Sol", {
	Language = "dwarven",
	Meaning = "Sun",
	SingularNominative = "Sol",
	PrefixSingular = true,
	PrefixTypeName = {
		"person", -- example: "Solblindi" (Norse mythology)
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	},
	SuffixSingular = true, -- suffix used by Wesnoth's dwarven names
	SuffixTypeName = {"person"} -- examples: "Aigatsol", "Aigcatsol", "Aigdrsol", "Aigdursol", "Alaithsol", "Alalsol", "Aldrsol", "Althasol", "Anatsol", "Andursol", "Anthasol", "Augatsol", "Augdursol", "Dulaithsol", "Dulatsol", "Dulcatsol", "Dulthasol", "Glamaithsol", "Glamdrsol", "Glamdursol", "Glamthasol", "Gomaithsol", "Gomdursol", "Gomthasol", "Naraithsol", "Narcatsol", "Nardrsol", "Pelaithsol", "Pelalsol", "Peldrsol", "Peldursol", "Trithaithsol", "Trithatsol", "Trithcatsol", "Trithdrsol", "Triththasol"
})

DefineLanguageNoun("Son", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Son",
	NameSingular = true,
	TypeName = {"item-potion"} -- example: "Son" (jar which contained some of the mead of poetry)
})

DefineLanguageNoun("Sudri", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 457, 603.
	Language = "dwarven",
	Meaning = "Southern", -- "the Southern"
	SingularNominative = "Sudri",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Sudri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
})

DefineLanguageNoun("Svarin", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 606.
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Svarin",
	SingularGenitive = "Svarins", -- as in "Svarinshaug"
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Svarin" (dwarf from Norse mythology; maybe the one who gave his name to Svarinshaug?)
})

DefineLanguageNoun("Sviar", {
	Language = "dwarven",
	Meaning = "Forger, Smith", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 612.
	SingularNominative = "Sviar",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 612.
	NameSingular = true,
	TypeName = {"person"} -- example: "Sviar" (dwarf from Norse mythology)
})

DefineLanguageNoun("Sviur", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Sviur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Sviur" (dwarf from Norse mythology)
})

DefineLanguageNoun("Tha", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Tha",
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus", "Augthail", "Augthais", "Augthalos", "Augthaol", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus", "Gomthaas", "Gomthalos", "Gomthasol", "Narthalos", "Narthaol", "Pelthaas", "Pelthail", "Pelthasil", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus"
})

DefineLanguageNoun("Theganli", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Theganli",
	NameSingular = true,
	TypeName = {"person"} -- example: "Theganli" (from Wesnoth, The Scepter of Fire; jeweler of Durstorn's clan)
})

DefineLanguageNoun("Thekk", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Thekk",
	NameSingular = true,
	TypeName = {"person"} -- example: "Thekk" (dwarf from Norse mythology)
})

DefineLanguageNoun("Thjof", {
	Language = "dwarven",
	Meaning = "Thief",
	SingularNominative = "Thjof",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Althjof" (Norse mythology)
})

DefineLanguageNoun("Thorin", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Thorin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Thorin" (dwarf from Norse mythology)
})

DefineLanguageNoun("Thrain", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Thrain",
	NameSingular = true,
	TypeName = {"person"} -- example: "Thrain" (dwarf from Norse mythology)
})

DefineLanguageNoun("Thror", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Thror",
	NameSingular = true,
	TypeName = {"person"} -- example: "Thror" (dwarf from Norse mythology)
})

DefineLanguageNoun("Thrymgjol", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Thrymgjol"
	-- example: "Thrymgjol" (extraordinary gate crafted by the sons of the sun-blinded dwarf Solblindi)
})

DefineLanguageNoun("Thursagan", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Thursagan",
	NameSingular = true,
	TypeName = {"person"} -- example: "Thursagan" (Battle for Wesnoth, The Sceptre of Fire; master runesmith who crafted the Sceptre of Fire)
})

DefineLanguageNoun("Trith", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Trith",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus", "Trithalis", "Trithalol", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol", "Trithcatlos", "Trithcatsol", "Trithcatus", "Trithdril", "Trithdring", "Trithdris", "Trithdrlos", "Trithdrol", "Trithdrsol", "Trithdrus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus"
})

DefineLanguageNoun("Tuta", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 645.
	Language = "dwarven",
	Meaning = "Teat-Like Prominence",
	SingularNominative = "Tuta",
	Gender = "Feminine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Tuta"
})

DefineLanguageNoun("Olf", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 668.
	Language = "dwarven",
	Meaning = "Wolf",
	SingularNominative = "Olf", -- in Old Norse Ulf, but used in suffixes as "-olf"
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Hledjolf" (dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 272.)
})

DefineLanguageNoun("Ulrek", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Ulrek",
	NameSingular = true,
	TypeName = {"person"} -- example: "Ulrek" (from Wesnoth, Delfador's Memoirs)
})

DefineLanguageNoun("Uni", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Uni",
	NameSingular = true,
	TypeName = {"person"} -- example: "Uni" (dwarf from Norse mythology)
})

DefineLanguageNoun("Us", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Us",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigatus", "Aigcatus", "Aigthaus", "Alaithus", "Alalus", "Althaus", "Anaithus", "Analus", "Ancatus", "Andrus", "Andurus", "Anthaus", "Augaithus", "Augcatus", "Augdrus", "Augdurus", "Dulatus", "Duldrus", "Duldurus", "Dulthaus", "Glamalus", "Glamatus", "Glamcatus", "Glamthaus", "Gomalus", "Gomdurus", "Naraithus", "Naralus", "Nardrus", "Pelalus", "Pelatus", "Peldrus", "Peldurus", "Trithaithus", "Trithcatus", "Trithdrus", "Trithdurus", "Triththaus"
})

DefineLanguageNoun("Vang", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 678.
	Language = "dwarven",
	Meaning = "Garden, Green Home-Field",
	SingularNominative = "Vang", -- "Vangr" in Old Icelandic
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {
		"person", -- example: "Aurvang" (dwarf from Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province" -- example: "Aurvang" (wetlands in Norse mythology, through which a group of dwarves passed to migrate to Joruvellir; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.)
	}
})

DefineLanguageNoun("Vali", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Vali",
	NameSingular = true,
	TypeName = {"person"} -- example: "Vali" (dwarf from Norse mythology)
})

DefineLanguageNoun("Var", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Var",
	NameSingular = true,
	TypeName = {"person"} -- example: "Var" (dwarf from Norse mythology)
})

DefineLanguageNoun("Vegdrasil", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Vegdrasil",
	NameSingular = true,
	TypeName = {"person"} -- example: "Vegdrasil" (dwarf from Norse mythology)
})

DefineLanguageNoun("Vestri", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 457, 603.
	Language = "dwarven",
	Meaning = "Western", -- "the Western"
	SingularNominative = "Vestri",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Vestri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
})

DefineLanguageNoun("Vellir", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "vellir" = "fields"
	Language = "dwarven",
	Meaning = "Fields",
	-- what is the singular form?
	PluralNominative = "Vellir",
	SuffixPlural = true,
	SuffixTypeName = {"province"} -- example: "Joruvellir" (Norse mythology)
})

DefineLanguageNoun("Vig", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 715.
	Language = "dwarven",
	Meaning = "Fight, Battle",
	SingularNominative = "Vig",
	Gender = "Neuter",
	NameSingular = true,
	TypeName = {"person"}, -- example: "Vig" (dwarf from Norse mythology)
	PrefixSingular = true,
	PrefixTypeName = {
		"person", -- example: "Víg-dvalinn" (dwarf from Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageNoun("Vind", {
	Language = "dwarven",
	Meaning = "Wind",
	SingularNominative = "Vind",
	Uncountable = true,
	PrefixSingular = true,
	PrefixTypeName = {
		"person", -- example: "Vindalf" (Norse mythology)
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageNoun("Virfir", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Virfir",
	NameSingular = true,
	TypeName = {"person"} -- example: "Virfir" (dwarf from Norse mythology)
})

DefineLanguageNoun("Vit", {
	Language = "dwarven",
	Meaning = "?",
	SingularNominative = "Vit",
	NameSingular = true,
	TypeName = {"person"} -- example: "Vit" (dwarf from Norse mythology)
})

DefineLanguageNoun("Vitnir", {
	Language = "dwarven",
	Meaning = "Wolf",
	SingularNominative = "Vitnir",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Mjodvitnir" (Norse mythology)
})

DefineLanguageVerb("Blindi", { -- should be infinitive form
	Language = "dwarven",
	Meaning = "Blinded",
	-- infinitive form?
	ParticiplePast = "Blindi",
	SuffixTypeName = {"person"} -- example: "Solblindi" (Norse mythology)
})

DefineLanguageAdjective("Al", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
	Language = "dwarven",
	Meaning = "Mighty, All", -- meaning from Old Norse, but is also a prefix and infix used by Wesnoth's dwarven names
	PrefixTypeName = {
		"person", -- examples from Norse mythology: "Alvis" ("all-knowing"/"all-wise"), "Althjof" (mighty thief); examples from Wesnoth: "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Aldras", "Aldril", "Aldring", "Aldris", "Aldrlos", "Aldrol", "Aldrsol", "Alduras", "Aldurlos", "Aldurol", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus"
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	},
	InfixTypeName = {"person"} -- infix used by Wesnoth's dwarven names; examples: "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Augalas", "Augaling", "Augalol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Gomalil", "Gomalis", "Gomalus", "Naralas", "Naralil", "Naralsil", "Naralus", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Trithalis", "Trithalol"
})

DefineLanguageAdjective("Bladnir", {
	Language = "dwarven",
	Meaning = "Bladed",
	-- example: "Skidbladnir" (ship made by the sons of Ivaldi, name means "Wooden-Bladed")
	-- should add a category for ship name suffixes
--	PrefixTypeName = {
--		"province", -- no examples, but seems sensible in face of a general lack of examples
--		"settlement", -- no examples, but seems sensible in face of a general lack of examples
--		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
--		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
--	}
})

DefineLanguageAdjective("Eikin", {
	Language = "dwarven",
	Meaning = "Oaken",
	PrefixTypeName = {
		"person", -- example: "Eikinskjaldi" (Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageAdjective("Gand", {
	Language = "dwarven",
	Meaning = "Magic",
	PrefixTypeName = {
		"person", -- example: "Gandalf" (Norse mythology)
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageAdjective("Jung", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 327.
	Language = "dwarven",
	Meaning = "Young",
	SuffixTypeName = {"person"} -- example: "Nidjung" (Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454)
})

DefineLanguageAdjective("Lyr", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 247.
	Language = "dwarven",
	Meaning = "Heat-Holding",
	TypeName = {"settlement"} -- example: "Lyr" (hall built by dwarves in Norse mythology)
})

DefineLanguageAdjective("Nain", {
	Language = "dwarven",
	Meaning = "Near To, Closely Related, Near Kinsman Of", -- Old Norse "Náinn"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 448.
	TypeName = {"person"} -- example: "Nain" (dwarf from Norse mythology)
})

DefineLanguageAdjective("Nyr", {
	Language = "dwarven",
	Meaning = "New", -- spelled as "Nýr" in Old Icelandic; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 459.
	TypeName = {"person"}, -- example: "Nyr" (dwarf from Norse mythology)
	PrefixTypeName = {
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageAdjective("Rad", {
	Language = "dwarven",
	Meaning = "Counsel", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 485.
	PrefixTypeName = {
		"person", -- example: "Radsvid" (Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province" -- no examples, but seems sensible in face of a general lack of examples
	},
})

DefineLanguageAdjective("Rithil", {
	Language = "dwarven",
	Meaning = "Swift-Moving",
	TypeName = {"item-sword"} -- example: "Rithil" (the dwarf Regin's sword)
})

DefineLanguageAdjective("Svid", {
	Language = "dwarven",
	Meaning = "Swift, Wise", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 611.
	SuffixTypeName = {"person"} -- example: "Alsvid" ("All-Wise"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 611.), "Radsvid" (Norse mythology; "Swift in Counsel")
})

DefineLanguageAdjective("Thjod", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 739.
	Language = "dwarven",
	Meaning = "Great",
	PrefixTypeName = {
		"person", -- example: "Thjodrorir"/"þjóð-reyrir" ("The Great Rearer of Charms"; dwarven sage from Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageAdjective("Vis", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
	Language = "dwarven",
	Meaning = "Wise",
	SuffixTypeName = {"person"} -- example: "Alvis" ("all-knowing"/"all-wise"; from Norse mythology)
})
