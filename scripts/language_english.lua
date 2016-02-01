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

DefineLanguageNoun("Alf", { -- archaic
	Language = "english",
	Meanings = {"Elf"},
	SingularNominative = "Alf",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"},
	PrefixSingular = true,
	PrefixTypeName = {"person"} -- example: "Alfred"
})

DefineLanguageNoun("Anvil", {
	Language = "english",
	Meanings = {"Anvil"},
	SingularNominative = "Anvil",
	PluralNominative = "Anvils",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Brass", {
	Language = "english",
	Meanings = {"Brass"},
	SingularNominative = "Brass",
	Gender = "Neuter",
	Uncountable = true,
	PrefixSingular = true,
	SeparatePrefixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Charles", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Charles",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Forge", {
	Language = "english",
	Meanings = {"Forge"},
	SingularNominative = "Forge",
	PluralNominative = "Forges",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Francis", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Francis",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Hammer", {
	Language = "english",
	Meanings = {"Hammer"},
	SingularNominative = "Hammer",
	PluralNominative = "Hammers",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("Henry", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Henry",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("James", {
	Language = "english",
	Meanings = {},
	SingularNominative = "James",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("John", {
	Language = "english",
	Meanings = {},
	SingularNominative = "John",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Lewis", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Lewis",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Peter", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Peter",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("Smithy", {
	Language = "english",
	Meanings = {"Smithy"},
	SingularNominative = "Smithy",
	PluralNominative = "Smithies",
	Gender = "Neuter",
	SuffixSingular = true,
	SeparateSuffixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageNoun("William", {
	Language = "english",
	Meanings = {},
	SingularNominative = "William",
	Gender = "Masculine",
	NameSingular = true,
	TypeName = {"person"}
})

DefineLanguageNoun("House", {
	Language = "english",
	Meanings = {"House"},
	SingularNominative = "House",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageNoun("Hyrst", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Hyrst",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageNoun("Ing", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Ing",
--	Gender = "?",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageNoun("Mouth", {
	Language = "english",
	Meanings = {"Mouth"},
	SingularNominative = "Mouth",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- examples: "Plymouth", "Portsmouth"
})

DefineLanguageNoun("Ply", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Ply",
--	Gender = "?",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Plymouth"
})

DefineLanguageNoun("Port", {
	Language = "english",
	Meanings = {"Port"},
	SingularNominative = "Port",
	SingularGenitive = "Ports",
	Gender = "Neuter",
	PrefixSingular = true,
	PrefixTypeName = {"settlement"} -- example: "Portsmouth"
})

DefineLanguageNoun("Red", { -- archaic
	Language = "english",
	Meanings = {"Counsel", "Advice", "Account", "Story"},
	SingularNominative = "Red",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"person"} -- example: "Alfred"
})

DefineLanguageNoun("Town", {
	Language = "english",
	Meanings = {"Town"},
	SingularNominative = "Town",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageNoun("Tree", {
	Language = "english",
	Meanings = {"Tree"},
	SingularNominative = "Tree",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageNoun("Wich", {
	Language = "english",
	Meanings = {},
	SingularNominative = "Wich",
	Gender = "Neuter",
	SuffixSingular = true,
	SuffixTypeName = {"settlement"} -- example: "Norwich"; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
})

DefineLanguageAdjective("Black", {
	Language = "english",
	Meanings = {"Black"},
	Positive = "Black",
	SeparatePrefixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageAdjective("Fiery", {
	Language = "english",
	Meanings = {"Fiery"},
	Positive = "Fiery",
	SeparatePrefixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageAdjective("Smoldering", {
	Language = "english",
	Meanings = {"Smoldering"},
	Positive = "Smoldering",
	SeparatePrefixTypeName = {"unit-teuton-smithy"} -- seems sensible
})

DefineLanguageArticle("The", {
	Language = "english",
	Meanings = {"The"},
	Nominative = "The",
	Accusative = "The",
	Dative = "The",
	Genitive = "The",
	Definite = true
})
