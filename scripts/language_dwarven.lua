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

DefineCivilizationLanguage("dwarf", -- Dwarven; mix of Norse, German and fantasy words used in dwarven contexts
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
		"As", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "As",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigaithas", "Aigalas", "Aigatas", "Aigcatas", "Aigduras", "Alaithas", "Alalas", "Aldras", "Althaas", "Anaithas", "Anthaas", "Augaithas", "Augalas", "Augdras", "Dulalas", "Glamdras", "Glamthaas", "Gomaithas", "Gomdras", "Gomthaas", "Naralas", "Nardras", "Pelaithas", "Peldras", "Pelthaas", "Trithaithas", "Triththaas"
		},
		"At", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "At",
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus"
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
		"Cat", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Cat",
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Alcatlos", "Ancatus", "Augcatus", "Dulcatlos", "Dulcatsol", "Glamcatus", "Gomcatlos", "Narcatsol", "Pelcatlos", "Trithcatlos", "Trithcatsol", "Trithcatus"
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
		"Dul", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Dul",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus"
		},
		"Dur", { -- infix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Dur",
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Dursil" (from Wesnoth, The Rise of Wesnoth)
			"infix-singular", true,
			"infix-personal-name", true -- examples: "Aigduras", "Aigdurlos", "Aigdursol", "Duldursil", "Gomdursil", "Trithdursil"
		},
		"Glam", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Glam",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Glamatil", "Glamatus", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus"
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
		"Haug", { -- from Norse mythology, "Svarinshaug" = "Svarin's Mound", "haug" = "mound"
			"meaning", "Mound",
			"singular-nominative", "Haug",
			"suffix-singular", true,
			"suffix-province-name", true, -- example: "Svarinshaug" ("Svarin's Mound"; from Norse mythology)
			"suffix-terrain-name", "Hills", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Il", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Il",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigaithil", "Aigcatil", "Alalil", "Aldril", "Althail", "Anaithil", "Andril", "Augthail", "Dulaithil", "Duldril", "Glamaithil", "Glamdril", "Gomaithil", "Gomdril", "Naraithil", "Nardril", "Pelaithil", "Peldril", "Pelthail", "Trithaithil", "Trithdril", "Triththail"
		},
		"Ing", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Ing",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigaithing", "Aigaling", "Aigcating", "Aigdring", "Aigthaing", "Aldring", "Anaithing", "Anthaing", "Augaithing", "Augaling", "Dulaithing", "Dulaling", "Glamaling", "Gomdring",  "Naraithing", "Nardring", "Pelaithing", "Pelaling", "Trithdring", "Triththaing"
		},
		"Is", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Is",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigalis", "Aigatis", "Aigcatis", "Aigdris", "Aigthais", "Alaithis", "Aldris", "Anaithis", "Andris", "Augdris", "Dulalis", "Duldris", "Glamaithis", "Glamalis", "Gomalis", "Gomdris", "Nardris", "Pelaithis", "Pelalis", "Trithaithis", "Trithalis", "Trithdris"
		},
		"Ivaldi", {
			"meaning", "Mighty", -- source gives meaning as "the Mighty"; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.
			"singular-nominative", "Ivaldi",
			"gender", "Masculine",
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
		"Los", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Los",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigatlos", "Aigdrlos", "Aigdurlos", "Alaithlos", "Alcatlos", "Aldrlos", "Andrlos", "Dulaithlos", "Dulcatlos", "Duldrlos", "Glamdrlos", "Gomcatlos", "Pelaithlos", "Pelcatlos", "Trithaithlos", "Trithcatlos", "Trithdrlos"
		},
		"Mjod", {
			"meaning", "Mead",
			"singular-nominative", "Mjod",
			"uncountable", true,
			"prefix-singular", true,
			"prefix-personal-name", true, -- example: "Mjodvitnir" (Norse mythology)
			"prefix-province-name", true -- no examples, but seems sensible in face of a general lack of examples
		},
		"Nar", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Nar",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Naralas", "Naralil", "Naralsil", "Naralus", "Naratlos", "Naratol", "Naratsil", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Narduras", "Narduril", "Nardurol", "Narthalos", "Narthaol"
		},
		"Nordri", {
			"meaning", "Northern", -- source gives meaning as "the Northern"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 457.
			"singular-nominative", "Austri",
			"gender", "Masculine",
			"personal-name", true -- example: "Nordri" (dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 101.)
		},
		"Ol", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Ol",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigaithol", "Aigalol", "Alaithol", "Alalol", "Aldrol", "Analol", "Augalol", "Duldrol", "Glamaithol", "Gomaithol", "Gomdrol", "Naraithol", "Nardrol", "Pelaithol", "Trithaithol", "Trithalol", "Trithdrol"
		},
		"Pel", { -- prefix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Pel",
			"prefix-singular", true,
			"prefix-personal-name", true -- examples: "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Pelthaas", "Pelthail", "Pelthasil"
		},
		"Sil", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Sil",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Dursil" (Battle for Wesnoth, The Rise of Wesnoth), "Aigalsil", "Aigatsil", "Aigcatsil", "Aigdrsil", "Aigthasil", "Anaithsil", "Augaithsil", "Augdrsil", "Dulaithsil", "Duldrsil", "Duldursil", "Gomdrsil", "Gomdursil", "Naraithsil", "Nardrsil", "Pelaithsil", "Trithaithsil", "Trithdursil"
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
			"suffix-personal-name", true -- examples: "Aigatsol", "Aigcatsol", "Aigdrsol", "Aigdursol", "Alaithsol", "Alalsol", "Aldrsol", "Dulaithsol", "Dulcatsol", "Glamaithsol", "Glamdrsol", "Gomaithsol", "Naraithsol", "Narcatsol", "Nardrsol", "Pelaithsol", "Peldrsol", "Trithaithsol", "Trithcatsol", "Trithdrsol"
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
			"infix-personal-name", true -- examples: "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus", "Althaas", "Althail", "Althaus", "Anthaas", "Anthaing", "Anthaus", "Augthail", "Dulthaus", "Glamthaas", "Glamthaus", "Gomthaas", "Pelthaas", "Pelthail", "Triththaas", "Triththail", "Triththaing", "Triththaus"
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
		"Us", { -- suffix used by Wesnoth's dwarven names; not necessarily a noun
			"meaning", "?",
			"singular-nominative", "Us",
			"suffix-singular", true,
			"suffix-personal-name", true -- examples: "Aigatus", "Aigcatus", "Aigthaus", "Alaithus", "Alalus", "Althaus", "Anaithus", "Ancatus", "Andrus", "Anthaus", "Augaithus", "Augcatus", "Augdrus", "Duldrus", "Dulthaus", "Glamcatus", "Glamthaus", "Naraithus", "Nardrus", "Peldrus", "Trithaithus", "Trithcatus", "Trithdrus", "Triththaus"
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
			"infix-personal-name", true -- infix used by Wesnoth's dwarven names; examples: "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Analol", "Augalas", "Augaling", "Augalol", "Dulalas", "Dulaling", "Dulalis", "Glamaling", "Glamalis", "Gomalis", "Naralas", "Pelaling", "Pelalis", "Trithalis", "Trithalol"
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
		"Rad", {
			"meaning", "Swift",
			"prefix-personal-name", true -- example: "Radsvid" (Norse mythology)
		}
	}
)
