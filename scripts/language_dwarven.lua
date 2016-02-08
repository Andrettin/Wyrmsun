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

DefineLanguageWord("Ai", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Great-Grandfather"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 41.
	SingularNominative = "Ai",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 41.
	NameSingular = true,
	TypeName = {"person"} -- example: "Ai" (dwarf from Norse mythology who was a settler of Joruvellir)
})

DefineLanguageWord("Aig", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Aig",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Aiglondur" (dwarven hero in The Hammer of Thursagan), "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aigduras", "Aigdurlos", "Aigdursol", "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus"
})

DefineLanguageWord("Aiglondur", { -- "Aig-lon-dur"? seems to follow similar naming conventions as the three-element names of the dwarven name list
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Aiglondur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Aiglondur" (from Wesnoth, dwarven hero in The Hammer of Thursagan)
})

DefineLanguageWord("Aith", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Aith",
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Anaithas", "Anaithil", "Anaithis", "Anaithing", "Anaithsil", "Anaithus", "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus"
})

DefineLanguageWord("Alberich", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Alberich",
	NameSingular = true,
	TypeName = {"person"} -- example: "Alberich" (dwarf from German sagas)
})

DefineLanguageWord("Alf", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Elf"},
	SingularNominative = "Alf",
	NameSingular = true,
	TypeName = {"person"}, -- example: "Alf" (dwarf from Norse mythology who was a settler of Joruvellir)
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Gandalf" (Norse mythology), "Vindalf" (Norse mythology)
	-- should be available as a name only if the dwarven civilization in question has met elves?
})

DefineLanguageWord("Alfrigg", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Alfrigg",
	NameSingular = true,
	TypeName = {"person"} -- example: "Alfrigg" (dwarf from Norse mythology)
})

DefineLanguageWord("An", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "An",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Anaithas", "Anaithil", "Anaithing", "Anaithis", "Anaithsil", "Anaithus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Anatas", "Anating", "Anatis", "Anatol", "Anatsol", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Andril", "Andris", "Andrlos", "Andrus", "Anduril", "Andurol", "Andursol", "Andurus", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus"
})

DefineLanguageWord("Andvari", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Fish of Prey", "Gurnard"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.
	SingularNominative = "Andvari",
	SingularGenitive = "Andvara", -- as in "Andvaranaut"
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.
	NameSingular = true,
	TypeName = {"person"} -- example: "Andvari" (gurnard-shaped dwarf from Norse mythology whose hoard and golden ring were stolen by Loki)
})

DefineLanguageWord("Angarthing", { -- "An-garth-ing"? seems to follow similar naming conventions as the three-element names of the dwarven name list
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Angarthing",
	NameSingular = true,
	TypeName = {"person"} -- example: "Angarthing" (from Wesnoth, The Hammer of Thursagan)
})

DefineLanguageWord("As", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "As",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigaithas", "Aigalas", "Aigatas", "Aigcatas", "Aigduras", "Alaithas", "Alalas", "Alatas", "Aldras", "Alduras", "Althaas", "Anaithas", "Anatas", "Ancatas", "Anthaas", "Augaithas", "Augalas", "Augcatas", "Augdras", "Augduras", "Dulalas", "Dulduras", "Glamcatas", "Glamdras", "Glamduras", "Glamthaas", "Gomaithas", "Gomatas", "Gomdras", "Gomthaas", "Naralas", "Nardras", "Narduras", "Pelaithas", "Peldras", "Pelthaas", "Trithaithas", "Trithatas", "Triththaas"
})

DefineLanguageWord("At", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "At",
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Anatas", "Anating", "Anatis", "Anatol", "Anatsol", "Augating", "Augatlos", "Augatol", "Augatsil", "Augatsol", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Glamatil", "Glamatus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Naratlos", "Naratol", "Naratsil", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol"
})

DefineLanguageWord("Aug", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Aug",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Augalas", "Augaling", "Augalol", "Augating", "Augatlos", "Augatol", "Augatsil", "Augatsol", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Augdras", "Augdris", "Augdrsil", "Augdrus", "Augduras", "Augduril", "Augduring", "Augdurol", "Augdursol", "Augdurus", "Augthail", "Augthais", "Augthalos", "Augthaol"
})

DefineLanguageWord("Aur", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 34.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Wet Clay", "Loam"},
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

DefineLanguageWord("Austri", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Eastern"}, -- source gives meaning as "the Eastern"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
	SingularNominative = "Austri",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
	NameSingular = true,
	TypeName = {"person"} -- example: "Austri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
})

DefineLanguageWord("Bafur", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Bafur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Bafur" (dwarf from Norse mythology)
})

DefineLanguageWord("Baglur", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Baglur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Baglur" (from Wesnoth, The Scepter of Fire; veteran warrior and member of the party of dwarves who handled the crafting of the Sceptre of Fire)
})

DefineLanguageWord("Bari", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Bari",
	NameSingular = true,
	TypeName = {"person"} -- example: "Bari" (dwarf from Norse mythology)
})

DefineLanguageWord("Berling", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Berling",
	NameSingular = true,
	TypeName = {"person"} -- example: "Berling" (dwarf from Norse mythology)
})

DefineLanguageWord("Bibung", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Bibung",
	NameSingular = true,
	TypeName = {"person"} -- example: "Bibung" (dwarf from Norse mythology)
})

DefineLanguageWord("Bifur", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Bifur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Bifur" (dwarf from Norse mythology)
})

DefineLanguageWord("Bodn", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Bodn",
	NameSingular = true,
	TypeName = {"item-potion"} -- example: "Bodn" (jar which contained some of the mead of poetry)
})

DefineLanguageWord("Bombor", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Bombor",
	NameSingular = true,
	TypeName = {"person"} -- example: "Bombor" (dwarf from Norse mythology)
})

DefineLanguageWord("Brising", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Flame"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 772.
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

DefineLanguageWord("Brokk", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Badger", "Trotter of a Horse"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 81.
	SingularNominative = "Brokk",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 81.
	NameSingular = true,
	TypeName = {"person"} -- example: "Brokk" (dwarf from Norse mythology who was an expert smith and brother of Eitri)
})

DefineLanguageWord("Burin", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Burin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Burin" (from Wesnoth, The Rise of Wesnoth)
})

DefineLanguageWord("Cat", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Cat",
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Gomcatil", "Gomcatis", "Gomcatlos", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Trithcatlos", "Trithcatsol", "Trithcatus"
})

DefineLanguageWord("Dain", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Dead", "Deceased"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.
	SingularNominative = "Dain",
	SingularGenitive = "Dains", -- as in "Dainsleif"
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 97.
	NameSingular = true,
	TypeName = {"person"}, -- example: "Dain" (dwarf from Norse mythology)
	PrefixSingular = true,
	PrefixTypeName = {"item-sword"} -- example: "Dainsleif"
})

DefineLanguageWord("Delling", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Delling",
	NameSingular = true,
	TypeName = {"person"} -- example: "Delling" (dwarf from Norse mythology)
})

DefineLanguageWord("Dolgthvari", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Dolgthvari",
	NameSingular = true,
	TypeName = {"person"} -- example: "Dolgthvari" (dwarf from Norse mythology)
})

DefineLanguageWord("Dori", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Dori",
	NameSingular = true,
	TypeName = {"person"} -- example: "Dori" (dwarf from Norse mythology)
})

DefineLanguageWord("Dr", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Dr",
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aldras", "Aldril", "Aldris", "Aldring", "Aldrlos", "Aldrol", "Aldrsol", "Andril", "Andris", "Andrlos", "Andrus", "Augdras", "Augdris", "Augdrsil", "Augdrus", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Trithdril", "Trithdring", "Trithdrlos", "Trithdris", "Trithdrol", "Trithdrsol", "Trithdrus"
})

DefineLanguageWord("Draupnir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Dropper"},
	SingularNominative = "Draupnir",
	Gender = "Masculine", -- presumably, since it's the name of a male dwarf?
	NameSingular = true,
	TypeName = {
		"person", -- example: "Draupnir" (dwarf from Norse mythology)
		"item-ring" -- example: "Draupnir" (solid gold arm-ring made by the dwarven brothers Brokk and Eitri; maybe should be a different item type than ring, as it is actually an arm-ring?)
	},
})

DefineLanguageWord("Duf", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Duf",
	NameSingular = true,
	TypeName = {"person"} -- example: "Duf" (dwarf from Norse mythology)
})

DefineLanguageWord("Dul", { -- prefix used by Wesnoth's dwarven names
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Dul",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus"
})

DefineLanguageWord("Dulcatulos", { -- "Dul-catu-los", or "Dul-cat-ulos"? seems to follow similar naming conventions as the three-element names of the dwarven name list
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Dulcatulos",
	NameSingular = true,
	TypeName = {"person"} -- example: "Dulcatulos" (from Wesnoth, The Hammer of Thursagan)
})

DefineLanguageWord("Dulsi", { -- not entirely clear if this is the name of a particular dwarf, or if it can also mean "dwarf"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 109.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Poet"},
	SingularNominative = "Dulsi",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Dulsi" (dwarf from Norse mythology)
})

DefineLanguageWord("Dur", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Dur",
	PrefixSingular = true,
	PrefixTypeName = {"person"}, -- example: "Dursil" (from Wesnoth, The Rise of Wesnoth)
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigduras", "Aigdurlos", "Aigdursol", "Alduras", "Aldurlos", "Aldurol", "Anduril", "Andurol", "Andursol", "Andurus", "Augduras", "Augduril", "Augduring", "Augdurol", "Augdursol", "Augdurus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Gomduris", "Gomdurlos", "Gomdursol", "Gomdursil", "Gomdurus", "Narduras", "Narduril", "Nardurol", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus"
})

DefineLanguageWord("Durahn", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Durahn",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Durahn" (from Dyson Logos' The Tomb of Durâhn Oakenshield)
})

DefineLanguageWord("Durin", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Durin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Durin" (dwarf from Norse mythology who was Modsognir's deputy)
})

DefineLanguageWord("Durstorn", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Durstorn",
	NameSingular = true,
	TypeName = {"person"} -- example: "Durstorn" (from Wesnoth, The Scepter of Fire; chieftain of Rugnur's tribe)
})

DefineLanguageWord("Dvalin", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {}, -- maybe "Delayer" or "Delayed"?; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 110.
	SingularNominative = "Dvalin",
	NameSingular = true,
	TypeName = {"person"}, -- example: "Dvalin" (dwarf from Norse mythology; gave the knowledge of runes to the dwarves; one of the four who crafted the Necklace of the Brisings)
	PrefixSingular = true,
	SuffixTypeName = {"person"} -- example: "Víg-dvalinn" (dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 715.)
})

DefineLanguageWord("Dverg", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 110.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Dwarf"},
	SingularNominative = "Dverg",
	Gender = "Masculine"
})

DefineLanguageWord("Dyrgja", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 111.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Female Dwarf"},
	SingularNominative = "Dyrgja",
	Gender = "Feminine"
})

DefineLanguageWord("Eggerich", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Eggerich",
	NameSingular = true,
	TypeName = {"person"} -- example: "Eggerich" (dwarf from German sagas)
})

DefineLanguageWord("Fal", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Fal",
	NameSingular = true,
	TypeName = {"person"} -- example: "Fal" (dwarf from Norse mythology)
})

DefineLanguageWord("Fid", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Fid",
	NameSingular = true,
	TypeName = {"person"} -- example: "Fid" (dwarf from Norse mythology)
})

DefineLanguageWord("Fili", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Fili",
	NameSingular = true,
	TypeName = {"person"} -- example: "Fili" (dwarf from Norse mythology)
})

DefineLanguageWord("Fjalar", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Fjalar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Fjalar" (dwarf from Norse mythology who, with the help of his brother Galar, brew Kvasir's remains into the Mead of Poetry)
})

DefineLanguageWord("Frag", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Frag",
	NameSingular = true,
	TypeName = {"person"} -- example: "Frag" (dwarf from Norse mythology)
})

DefineLanguageWord("Frar", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Frar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Frar" (dwarf from Norse mythology)
})

DefineLanguageWord("Frosti", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Frosti",
	NameSingular = true,
	TypeName = {"person"} -- example: "Frosti" (dwarf from Norse mythology)
})

DefineLanguageWord("Fundin", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Fundin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Fundin" (dwarf from Norse mythology)
})

DefineLanguageWord("Galar", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Enchanter"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 187.
	SingularNominative = "Galar",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 187.
	NameSingular = true,
	TypeName = {"person"} -- example: "Galar" (dwarf from Norse mythology who - with the help of his brother Fjalar - brew Kvasir's remains into the Mead of Poetry)
})

DefineLanguageWord("Ginnar", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Ginnar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Ginnar" (dwarf from Norse mythology)
})

DefineLanguageWord("Glam", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Glam",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Glamatil", "Glamatus", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus"
})

DefineLanguageWord("Gleipnir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Gleipnir"
	-- example: "Gleipnir" (fetter made by dwarves to bind the wolf Fenrir)
})

DefineLanguageWord("Glinar", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Glinar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Glinar" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageWord("Gloin", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Light-Colored Dog"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 205.
	SingularNominative = "Gloin", -- given by Cleasby and Vigfusson as "Glói", but elsewhere given as "Gloin"/"Glóin"
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 205.
	NameSingular = true,
	TypeName = {"person"} -- example: "Gloin" (dwarf from Norse mythology)
})

DefineLanguageWord("Glomin", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Glomin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Glomin" (from Wesnoth; the only name in Wesnoth's dwarven name list to not obbey the three-part compound pattern)
})

DefineLanguageWord("Glonoin", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Glonoin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Glonoin" (from Wesnoth, The Scepter of Fire; chieftain of the Shorbear clan)
})

DefineLanguageWord("Gneissus", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Gneissus",
	Gender = "Feminine",
--	NameSingular = true,
--	TypeName = {"person"} -- example: "Gneissus" (from Dyson Logos' The Tomb of Durâhn Oakenshield)
})

DefineLanguageWord("Goldemar", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Goldemar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Goldemar" (dwarf from German sagas)
})

DefineLanguageWord("Gom", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Gom",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Gomalil", "Gomalis", "Gomalus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Gomcatil", "Gomcatis", "Gomcatlos", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Gomduris", "Gomdurlos", "Gomdursil", "Gomdursol", "Gomdurus", "Gomthaas", "Gomthalos", "Gomthasol"
})

DefineLanguageWord("Gram", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Gram",
	NameSingular = true,
	TypeName = {"item-sword"} -- example: "Gram" (sword made by the dwarf Regin)
})

DefineLanguageWord("Grerr", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Grerr",
	NameSingular = true,
	TypeName = {"person"} -- example: "Grerr" (dwarf from Norse mythology)
})

DefineLanguageWord("Grimnir", { -- meaning is from Old Norse, while the occurrence of the name is from Wesnoth (but it seems clear that the Wesnoth name was based on the Old Norse one)
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Hooded One"}, -- Source: Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 85.
	SingularNominative = "Grimnir",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Grimnir" (dwarven pathfinder from Wesnoth, Under the Burning Suns)
})

DefineLanguageWord("Gungnir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Gungnir",
	NameSingular = true,
	TypeName = {"item-javelin"} -- example: "Gungnir" (throwing spear made by the sons of Ivaldi)
})

DefineLanguageWord("Hamel", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Hamel",
	NameSingular = true,
	TypeName = {"person"} -- example: "Hamel" (from Wesnoth, Northern Rebirth and The Hammer of Thursagan)
})

DefineLanguageWord("Hannar", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 239.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Skillful", "Artist"}, -- source gives meaning as "the Skillful, the Artist"
	SingularNominative = "Hannar", -- source gives name as "Hannarr"
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Hannar" (dwarf from Norse mythology; source indicates the dwarf being present in the Voluspo, but in other consulted translations of that text it was nowhere to be found)
})

DefineLanguageWord("Har", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Har",
	NameSingular = true,
	TypeName = {"person"} -- example: "Har" (dwarf from Norse mythology)
})

DefineLanguageWord("Haug", { -- from Norse mythology, "Svarinshaug" = "Svarin's Mound", "haug" = "mound"
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Mound"},
	SingularNominative = "Haug",
	SuffixSingular = true,
	SuffixTypeName = {
		"province", -- example: "Svarinshaug" ("Svarin's Mound"; from Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- example: "Svarinshaug" ("Svarin's Mound"; from Norse mythology)
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Haur", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Haur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Haur" (dwarf from Norse mythology)
})

DefineLanguageWord("Heptifili", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Heptifili",
	NameSingular = true,
	TypeName = {"person"} -- example: "Heptifili" (dwarf from Norse mythology)
})

DefineLanguageWord("Hledj", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Sound", "Silence", "Hearing", "Listening"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 271-272.
	SingularNominative = "Hledj",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {
		"person", -- example: "Hledjolf" (dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 272.)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Hornbori", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Hornbori",
	NameSingular = true,
	TypeName = {"person"} -- example: "Hornbori" (dwarf from Norse mythology)
})

DefineLanguageWord("Hugstari", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Hugstari",
	NameSingular = true,
	TypeName = {"person"} -- example: "Hugstari" (dwarf from Norse mythology)
})

DefineLanguageWord("Il", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Il",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigaithil", "Aigcatil", "Alalil", "Alatil", "Alcatil", "Aldril", "Althail", "Anaithil", "Analil", "Ancatil", "Andril", "Anduril", "Augcatil", "Augduril", "Augthail", "Dulaithil", "Dulatil", "Dulcatil", "Duldril", "Glamaithil", "Glamalil", "Glamatil", "Glamcatil", "Glamdril", "Glamduril", "Gomaithil", "Gomalil", "Gomatil", "Gomcatil", "Gomdril", "Naraithil", "Naralil", "Nardril", "Narduril", "Pelaithil", "Pelalil", "Pelatil", "Peldril", "Pelduril", "Pelthail", "Trithaithil", "Trithatil", "Trithdril", "Trithduril", "Triththail"
})

DefineLanguageWord("Ing", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Ing",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigaithing", "Aigaling", "Aigcating", "Aigdring", "Aigthaing", "Alating", "Aldring", "Anaithing", "Anating", "Anthaing", "Augaithing", "Augaling", "Augating", "Augduring", "Dulaithing", "Dulaling", "Dulating", "Dulcating", "Dulduring", "Glamaling", "Glamcating", "Glamduring", "Gomating", "Gomdring", "Naraithing", "Narcating", "Nardring", "Pelaithing", "Pelaling", "Pelating", "Pelcating", "Pelduring", "Trithdring", "Trithduring", "Triththaing"
})

DefineLanguageWord("Ingi", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Ingi",
	NameSingular = true,
	TypeName = {"person"} -- example: "Ingi" (dwarf from Norse mythology)
})

DefineLanguageWord("Iri", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Iri",
	NameSingular = true,
	TypeName = {"person"} -- example: "Iri" (dwarf from Norse mythology)
})

DefineLanguageWord("Is", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Is",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigalis", "Aigatis", "Aigcatis", "Aigdris", "Aigthais", "Alaithis", "Alcatis", "Aldris", "Anaithis", "Anatis", "Andris", "Anthais", "Augcatis", "Augdris", "Augthais", "Dulalis", "Duldris", "Glamaithis", "Glamalis", "Glamduris", "Gomalis", "Gomatis", "Gomcatis", "Gomdris", "Gomduris", "Narcatis", "Nardris", "Pelaithis", "Pelalis", "Pelatis", "Pelduris", "Trithaithis", "Trithalis", "Trithdris"
})

DefineLanguageWord("Isuldan", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Isuldan",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Isuldan" (from Dyson Logos' The Tomb of Durâhn Oakenshield)
})

DefineLanguageWord("Ivaldi", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Mighty"}, -- source gives meaning as "the Mighty"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.
	SingularNominative = "Ivaldi",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 319.
	NameSingular = true,
	TypeName = {"person"} -- example: "Ivaldi" (dwarf from Norse mythology whose sons were mastersmiths)
})

DefineLanguageWord("Jari", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Jari",
	NameSingular = true,
	TypeName = {"person"} -- example: "Jari" (dwarf from Norse mythology)
})

DefineLanguageWord("Joru", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "Joru" = "Sand"
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Sand"},
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

DefineLanguageWord("Kal Kartha", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Kal Kartha", -- "Kal" maybe should become a (separated) prefix for settlement names?
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Kal Kartha" (from Wesnoth)
})

DefineLanguageWord("Karrag", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Karrag",
	NameSingular = true,
	TypeName = {"person"} -- example: "Karrag" (from Wesnoth, The Hammer of Thursagan)
})

DefineLanguageWord("Kili", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Kili",
	NameSingular = true,
	TypeName = {"person"} -- example: "Kili" (dwarf from Norse mythology)
})

DefineLanguageWord("Kinan", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Kinan",
	NameSingular = true,
	TypeName = {"person"} -- example: "Kinan" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageWord("Knalga", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Knalga",
	NameSingular = true,
	TypeName = {"settlement"} -- example: "Knalga" (from Wesnoth)
})

DefineLanguageWord("Kuhnar", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Kuhnar",
	NameSingular = true,
	TypeName = {"person"} -- example: "Kuhnar" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageWord("Laurin", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Laurin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Laurin" (dwarf from German sagas)
})

DefineLanguageWord("Leif", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Patrimony"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 381.
	SingularNominative = "Leif",
	Gender = "Feminine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 381.
	SuffixSingular = true,
	SuffixTypeName = {"item-sword"} -- example: "Dainsleif"
})

DefineLanguageWord("Lit", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Lit",
	NameSingular = true,
	TypeName = {"person"} -- example: "Lit" (dwarf from Norse mythology)
})

DefineLanguageWord("Lofar", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 397.
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Lofar",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Lofar" (dwarf from Norse mythology who was a descendant of the settlers of Joruvellir)
})

DefineLanguageWord("Loni", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Loni",
	NameSingular = true,
	TypeName = {"person"} -- example: "Loni" (dwarf from Norse mythology)
})

DefineLanguageWord("Los", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Los",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigatlos", "Aigdrlos", "Aigdurlos", "Alaithlos", "Alatlos", "Alcatlos", "Aldrlos", "Anallos", "Andrlos", "Aldurlos", "Althalos", "Augatlos", "Augthalos", "Dulaithlos", "Dulcatlos", "Duldrlos", "Dulthalos", "Glamallos", "Glamdrlos", "Gomatlos", "Gomcatlos", "Gomdurlos", "Gomthalos", "Naratlos", "Narthalos", "Pelaithlos", "Pelcatlos", "Trithaithlos", "Trithatlos", "Trithcatlos", "Trithdrlos", "Trithdurlos"
})

DefineLanguageWord("Men", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Necklace"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 772.
	SingularNominative = "Men",
	Gender = "Neuter", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 772.
	SuffixSingular = true,
	SuffixTypeName = {"item-amulet"} -- example: "Brisingamen" (golden necklace made by four dwarves, the Brisings)
})

DefineLanguageWord("Mjod", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Mead"},
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

DefineLanguageWord("Mjollnir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Mjollnir",
	NameSingular = true,
	TypeName = {"item-mace"} -- example: "Mjollnir" (iron hammer made by the dwarven brothers Brokk and Eitri)
})

DefineLanguageWord("Modsognir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Modsognir",
	NameSingular = true,
	TypeName = {"person"} -- example: "Modsognir" (the first and mightiest of the dwarves in Norse mythology)
})

DefineLanguageWord("Nabbi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 445.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Small Protuberance on the Skin", "Small Protuberance on Greensward"},
	SingularNominative = "Nabbi",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nabbi" (dwarf from Norse mythology)
})

DefineLanguageWord("Naglering", { -- possibly "Nagle-ring"?
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Naglering",
	NameSingular = true,
	TypeName = {"item-sword"} -- example: "Naglering" (sword forged by the dwarf Alberich)
})

DefineLanguageWord("Nar", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Nar",
	TypeName = {"person"}, -- example: "Nar" (dwarf from Norse mythology)
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Naralas", "Naralil", "Naralsil", "Naralus", "Naratlos", "Naratol", "Naratsil", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Narduras", "Narduril", "Nardurol", "Narthalos", "Narthaol"
})

DefineLanguageWord("Naut", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"A Gift or Booty from a Person"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 447.
	SingularNominative = "Naut",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 447.
	SuffixSingular = true,
	SuffixTypeName = {"item-ring"} -- example: "Andvaranaut" (gold ring made by Andvari and stolen by Loki; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 21.)
})

DefineLanguageWord("Nefi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 450.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Cognate Kinsman"},
	SingularNominative = "Nefi",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nefi" (dwarf from Norse mythology)
})

DefineLanguageWord("Neglur", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Neglur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Neglur" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageWord("Nid", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Wane of the Moon, No Moon"},
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

DefineLanguageWord("Nidi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Wane of the Moon, No Moon"}, -- approximately, from "Nid"
	SingularNominative = "Nidi",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nidi" (dwarf from Norse mythology)
})

DefineLanguageWord("Niping", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Niping",
	NameSingular = true,
	TypeName = {"person"} -- example: "Niping" (dwarf from Norse mythology)
})

DefineLanguageWord("Noiraran", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Noiraran",
	NameSingular = true,
	TypeName = {"person"} -- example: "Noiraran" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageWord("Nordri", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Northern"}, -- source gives meaning as "the Northern"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 457.
	SingularNominative = "Nordri",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nordri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
})

DefineLanguageWord("Nori", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Nori",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nori" (dwarf from Norse mythology)
})

DefineLanguageWord("Nyi", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 459.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Moon"},
	SingularNominative = "Nyi",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nyi" (dwarf from Norse mythology)
})

DefineLanguageWord("Nyrad", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Nyrad",
	NameSingular = true,
	TypeName = {"person"} -- example: "Nyrad" (dwarf from Norse mythology)
})

DefineLanguageWord("Odrorir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Odrorir",
	NameSingular = true,
	TypeName = {"item-potion"} -- example: "Odrorir" (cauldron which contained some of the mead of poetry)
})

DefineLanguageWord("Oin", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Oin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Oin" (dwarf from Norse mythology who was the father of Andvari)
})

DefineLanguageWord("Ol", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Ol",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigaithol", "Aigalol", "Alaithol", "Alalol", "Aldrol", "Aldurol", "Althaol", "Analol", "Anatol", "Ancatol", "Andurol", "Anthaol", "Augalol", "Augatol", "Augcatol", "Augdurol", "Augthaol", "Dulatol", "Dulcatol", "Duldrol", "Glamaithol", "Glamthaol", "Gomaithol", "Gomatol", "Gomdrol", "Naraithol", "Naratol", "Narcatol", "Nardrol", "Nardurol", "Narthaol", "Pelaithol", "Pelatol", "Pelcatol", "Peldurol", "Trithaithol", "Trithalol", "Trithdrol", "Trithdurol"
})

DefineLanguageWord("Olurf", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Olurf",
	NameSingular = true,
	TypeName = {"person"} -- example: "Olurf" (from Wesnoth, The Legend of Wesmere)
})

DefineLanguageWord("Ori", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Ori",
	NameSingular = true,
	TypeName = {"person"} -- example: "Ori" (dwarf from Norse mythology)
})

DefineLanguageWord("Pel", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Pel",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Pelthaas", "Pelthail", "Pelthasil"
})

DefineLanguageWord("Regin", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Counsel-Giver"},
	NameSingular = true,
	TypeName = {"person"} -- example: "Regin" (dwarven smith from Norse mythology who was the brother of the dragon Fafnir)
})

DefineLanguageWord("Rekk", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Rekk",
	NameSingular = true,
	TypeName = {"person"} -- example: "Rekk" (dwarf from Norse mythology)
})

DefineLanguageWord("Relgorn", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Relgorn",
	NameSingular = true,
	TypeName = {"person"} -- example: "Relgorn" (from Wesnoth, Heir to the Throne and Delfador's Memoirs)
})

DefineLanguageWord("Rorir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 739.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Rearer of Charms"},
	SingularNominative = "Rorir", -- alternative spelling given by Cleasby and Vigfusson: "Reyrir"
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Thjodrorir"/"þjóð-reyrir" ("The Great Rearer of Charms"; dwarven sage from Norse mythology)
})

DefineLanguageWord("Rugnur", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Rugnur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Rugnur" (from Wesnoth, The Scepter of Fire; leader of the party of dwarves who handled the crafting of the Sceptre of Fire)
})

DefineLanguageWord("Rynan", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Rynan",
	NameSingular = true,
	TypeName = {"person"} -- example: "Rynan" (from Wesnoth, The Scepter of Fire)
})

DefineLanguageWord("Sil", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Sil",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Dursil" (Battle for Wesnoth, The Rise of Wesnoth), "Aigalsil", "Aigatsil", "Aigcatsil", "Aigdrsil", "Aigthasil", "Alatsil", "Alcatsil", "Althasil", "Anaithsil", "Analsil", "Anthasil", "Augaithsil", "Augatsil", "Augcatsil", "Augdrsil", "Dulaithsil", "Dulalsil", "Dulcatsil", "Duldrsil", "Duldursil", "Dulthasil", "Glamalsil", "Glamcatsil", "Glamthasil", "Gomdrsil", "Gomdursil", "Naraithsil", "Naralsil", "Naratsil", "Narcatsil", "Nardrsil", "Pelaithsil", "Pelalsil", "Pelatsil", "Pelcatsil", "Pelthasil", "Trithaithsil", "Trithdursil"
})

DefineLanguageWord("Sindri", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 529.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Forger"},
	SingularNominative = "Eitri", -- can also be spelled as "Sindri"
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Sindri"/"Eitri" (dwarf from Norse mythology; expert smith and brother of Brokk)
})

DefineLanguageWord("Skavid", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Skavid",
	NameSingular = true,
	TypeName = {"person"} -- example: "Skavid" (dwarf from Norse mythology)
})

DefineLanguageWord("Skid", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Wood"},
	SingularNominative = "Skid",
	Gender = "Neuter", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 550.
	PrefixSingular = true -- example: "Skidbladnir" (ship made by the sons of Ivaldi, name means "Wooden-Bladed")
	-- should add a category for ship names
})

DefineLanguageWord("Skirvir", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 550.
	Language = "dwarven",
	Type = "noun",
	Meanings = {}, -- maybe related to Old Norse "Skirra"?
	SingularNominative = "Skirvir", -- alternatively spelled as "Skirfir"
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Skirvir" (dwarf from Norse mythology)
})

DefineLanguageWord("Skjaldi", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Shield"},
	SingularNominative = "Skjaldi",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Eikinskjaldi" (Norse mythology)
})

DefineLanguageWord("Sol", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Sun"},
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

DefineLanguageWord("Son", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Son",
	NameSingular = true,
	TypeName = {"item-potion"} -- example: "Son" (jar which contained some of the mead of poetry)
})

DefineLanguageWord("Sudri", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 457, 603.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Southern"}, -- "the Southern"
	SingularNominative = "Sudri",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Sudri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
})

DefineLanguageWord("Svarin", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 606.
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Svarin",
	SingularGenitive = "Svarins", -- as in "Svarinshaug"
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Svarin" (dwarf from Norse mythology; maybe the one who gave his name to Svarinshaug?)
})

DefineLanguageWord("Sviar", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Forger", "Smith"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 612.
	SingularNominative = "Sviar",
	Gender = "Masculine", -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 612.
	NameSingular = true,
	TypeName = {"person"} -- example: "Sviar" (dwarf from Norse mythology)
})

DefineLanguageWord("Sviur", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Sviur",
	NameSingular = true,
	TypeName = {"person"} -- example: "Sviur" (dwarf from Norse mythology)
})

DefineLanguageWord("Tha", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Tha",
	InfixSingular = true,
	InfixTypeName = {"person"} -- examples: "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus", "Augthail", "Augthais", "Augthalos", "Augthaol", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus", "Gomthaas", "Gomthalos", "Gomthasol", "Narthalos", "Narthaol", "Pelthaas", "Pelthail", "Pelthasil", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus"
})

DefineLanguageWord("Theganli", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Theganli",
	NameSingular = true,
	TypeName = {"person"} -- example: "Theganli" (from Wesnoth, The Scepter of Fire; jeweler of Durstorn's clan)
})

DefineLanguageWord("Thekk", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Thekk",
	NameSingular = true,
	TypeName = {"person"} -- example: "Thekk" (dwarf from Norse mythology)
})

DefineLanguageWord("Thjof", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Thief"},
	SingularNominative = "Thjof",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Althjof" (Norse mythology)
})

DefineLanguageWord("Thorin", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Thorin",
	NameSingular = true,
	TypeName = {"person"} -- example: "Thorin" (dwarf from Norse mythology)
})

DefineLanguageWord("Thrain", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Thrain",
	NameSingular = true,
	TypeName = {"person"} -- example: "Thrain" (dwarf from Norse mythology)
})

DefineLanguageWord("Thror", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Thror",
	NameSingular = true,
	TypeName = {"person"} -- example: "Thror" (dwarf from Norse mythology)
})

DefineLanguageWord("Thrymgjol", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Thrymgjol"
	-- example: "Thrymgjol" (extraordinary gate crafted by the sons of the sun-blinded dwarf Solblindi)
})

DefineLanguageWord("Thursagan", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Thursagan",
	NameSingular = true,
	TypeName = {"person"} -- example: "Thursagan" (Battle for Wesnoth, The Sceptre of Fire; master runesmith who crafted the Sceptre of Fire)
})

DefineLanguageWord("Trith", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Trith",
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- examples: "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus", "Trithalis", "Trithalol", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol", "Trithcatlos", "Trithcatsol", "Trithcatus", "Trithdril", "Trithdring", "Trithdris", "Trithdrlos", "Trithdrol", "Trithdrsol", "Trithdrus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus"
})

DefineLanguageWord("Tuta", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 645.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Teat-Like Prominence"},
	SingularNominative = "Tuta",
	Gender = "Feminine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Tuta"
})

DefineLanguageWord("Olf", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 668.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Wolf"},
	SingularNominative = "Olf", -- in Old Norse Ulf, but used in suffixes as "-olf"
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Hledjolf" (dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 272.)
})

DefineLanguageWord("Ulrek", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Ulrek",
	NameSingular = true,
	TypeName = {"person"} -- example: "Ulrek" (from Wesnoth, Delfador's Memoirs)
})

DefineLanguageWord("Uni", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Uni",
	NameSingular = true,
	TypeName = {"person"} -- example: "Uni" (dwarf from Norse mythology)
})

DefineLanguageWord("Us", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Us",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- examples: "Aigatus", "Aigcatus", "Aigthaus", "Alaithus", "Alalus", "Althaus", "Anaithus", "Analus", "Ancatus", "Andrus", "Andurus", "Anthaus", "Augaithus", "Augcatus", "Augdrus", "Augdurus", "Dulatus", "Duldrus", "Duldurus", "Dulthaus", "Glamalus", "Glamatus", "Glamcatus", "Glamthaus", "Gomalus", "Gomdurus", "Naraithus", "Naralus", "Nardrus", "Pelalus", "Pelatus", "Peldrus", "Peldurus", "Trithaithus", "Trithcatus", "Trithdrus", "Trithdurus", "Triththaus"
})

DefineLanguageWord("Vang", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 678.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Garden", "Green Home-Field"},
	SingularNominative = "Vang", -- "Vangr" in Old Icelandic
	Gender = "Masculine",
	SuffixSingular = true,
	SuffixTypeName = {
		"person", -- example: "Aurvang" (dwarf from Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province" -- example: "Aurvang" (wetlands in Norse mythology, through which a group of dwarves passed to migrate to Joruvellir; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.)
	}
})

DefineLanguageWord("Vali", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Vali",
	NameSingular = true,
	TypeName = {"person"} -- example: "Vali" (dwarf from Norse mythology)
})

DefineLanguageWord("Var", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Var",
	NameSingular = true,
	TypeName = {"person"} -- example: "Var" (dwarf from Norse mythology)
})

DefineLanguageWord("Vegdrasil", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Vegdrasil",
	NameSingular = true,
	TypeName = {"person"} -- example: "Vegdrasil" (dwarf from Norse mythology)
})

DefineLanguageWord("Vestri", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, pp. 457, 603.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Western"}, -- "the Western"
	SingularNominative = "Vestri",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"} -- example: "Vestri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
})

DefineLanguageWord("Vellir", { -- from Norse mythology, "Joruvellir" = "Fields of Sand", "vellir" = "fields"
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Fields"},
	-- what is the singular form?
	PluralNominative = "Vellir",
	SuffixPlural = true,
	SuffixTypeName = {"province"} -- example: "Joruvellir" (Norse mythology)
})

DefineLanguageWord("Vig", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 715.
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Fight", "Battle"},
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

DefineLanguageWord("Vind", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Wind"},
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

DefineLanguageWord("Virfir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Virfir",
	NameSingular = true,
	TypeName = {"person"} -- example: "Virfir" (dwarf from Norse mythology)
})

DefineLanguageWord("Vit", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {},
	SingularNominative = "Vit",
	NameSingular = true,
	TypeName = {"person"} -- example: "Vit" (dwarf from Norse mythology)
})

DefineLanguageWord("Vitnir", {
	Language = "dwarven",
	Type = "noun",
	Meanings = {"Wolf"},
	SingularNominative = "Vitnir",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Mjodvitnir" (Norse mythology)
})

DefineLanguageWord("Blindi", { -- should be infinitive form
	Language = "dwarven",
	Type = "verb",
	Meanings = {"Blinded"},
	-- infinitive form?
	ParticiplePast = "Blindi",
	SuffixTypeName = {"person"} -- example: "Solblindi" (Norse mythology)
})

DefineLanguageWord("Al", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Mighty", "All"}, -- meaning from Old Norse, but is also a prefix and infix used by Wesnoth's dwarven names
	Positive = "Al",
	PrefixTypeName = {
		"person", -- examples from Norse mythology: "Alvis" ("all-knowing"/"all-wise"), "Althjof" (mighty thief); examples from Wesnoth: "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Aldras", "Aldril", "Aldring", "Aldris", "Aldrlos", "Aldrol", "Aldrsol", "Alduras", "Aldurlos", "Aldurol", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus"
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	},
	InfixTypeName = {"person"} -- infix used by Wesnoth's dwarven names; examples: "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Augalas", "Augaling", "Augalol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Gomalil", "Gomalis", "Gomalus", "Naralas", "Naralil", "Naralsil", "Naralus", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Trithalis", "Trithalol"
})

DefineLanguageWord("Bladnir", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Bladed"},
	Positive = "Bladnir",
	-- example: "Skidbladnir" (ship made by the sons of Ivaldi, name means "Wooden-Bladed")
	-- should add a category for ship name suffixes
--	PrefixTypeName = {
--		"province", -- no examples, but seems sensible in face of a general lack of examples
--		"settlement", -- no examples, but seems sensible in face of a general lack of examples
--		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
--		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
--	}
})

DefineLanguageWord("Eikin", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Oaken"},
	Positive = "Eikin",
	PrefixTypeName = {
		"person", -- example: "Eikinskjaldi" (Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Gand", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Magic"},
	Positive = "Gand",
	PrefixTypeName = {
		"person", -- example: "Gandalf" (Norse mythology)
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Jung", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 327.
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Young"},
	Positive = "Jung",
	SuffixTypeName = {"person"} -- example: "Nidjung" (Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454)
})

DefineLanguageWord("Lyr", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 247.
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Heat-Holding"},
	Positive = "Lyr",
	TypeName = {"settlement"} -- example: "Lyr" (hall built by dwarves in Norse mythology)
})

DefineLanguageWord("Nain", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Near To", "Closely Related", "Near Kinsman Of"}, -- Old Norse "Náinn"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 448.
	Positive = "Nain",
	TypeName = {"person"} -- example: "Nain" (dwarf from Norse mythology)
})

DefineLanguageWord("Nyr", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"New"}, -- spelled as "Nýr" in Old Icelandic; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 459.
	Positive = "Nyr",
	TypeName = {"person"}, -- example: "Nyr" (dwarf from Norse mythology)
	PrefixTypeName = {
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Rad", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Counsel"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 485.
	Positive = "Rad",
	PrefixTypeName = {
		"person", -- example: "Radsvid" (Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province" -- no examples, but seems sensible in face of a general lack of examples
	},
})

DefineLanguageWord("Rithil", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Swift-Moving"},
	Positive = "Rithil",
	TypeName = {"item-sword"} -- example: "Rithil" (the dwarf Regin's sword)
})

DefineLanguageWord("Svid", {
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Swift", "Wise"}, -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 611.
	Positive = "Svid",
	SuffixTypeName = {"person"} -- example: "Alsvid" ("All-Wise"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 611.), "Radsvid" (Norse mythology; "Swift in Counsel")
})

DefineLanguageWord("Thjod", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 739.
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Great"},
	Positive = "Thjod",
	PrefixTypeName = {
		"person", -- example: "Thjodrorir"/"þjóð-reyrir" ("The Great Rearer of Charms"; dwarven sage from Norse mythology)
		"settlement", -- no examples, but seems sensible in face of a general lack of examples
		"province", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-hills", -- no examples, but seems sensible in face of a general lack of examples
		"terrain-mountains" -- no examples, but seems sensible in face of a general lack of examples
	}
})

DefineLanguageWord("Vis", { -- Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
	Language = "dwarven",
	Type = "adjective",
	Meanings = {"Wise"},
	Positive = "Vis",
	SuffixTypeName = {"person"} -- example: "Alvis" ("all-knowing"/"all-wise"; from Norse mythology)
})
