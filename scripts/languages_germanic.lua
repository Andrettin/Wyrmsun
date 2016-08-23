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

DefineLanguage("proto-germanic", {
	Name = "Proto-Germanic",
	Family = "germanic"
})

DefineLanguage("northwest-germanic", {
	Name = "Northwest Germanic",
	Family = "germanic"
})

DefineLanguage("old-norse", {
	Name = "Old Norse",
	Family = "germanic",
	NameTranslations = {
		"Airmanareiks", "Jǫrmunrekr" -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
	}
})

DefineLanguage("old-danish", {
	Name = "Old Danish",
	Family = "germanic",
	DialectOf = "old-norse"
})

DefineLanguage("danish", {
	Name = "Danish",
	Family = "germanic"
})

DefineLanguage("old-swedish", {
	Name = "Old Swedish",
	Family = "germanic",
	DialectOf = "old-norse"
})

DefineLanguage("swedish", {
	Name = "Swedish",
	Family = "germanic"
})

DefineLanguage("norwegian", {
	Name = "Norwegian",
	Family = "germanic"
})

DefineLanguage("old-icelandic", {
	Name = "Old Icelandic",
	Family = "germanic",
	DialectOf = "old-norse"
})

DefineLanguage("west-germanic", {
	Name = "West Germanic",
	Family = "germanic"
})

DefineLanguage("old-high-german", {
	Name = "Old High German",
	Family = "germanic"
})

DefineLanguage("middle-high-german", {
	Name = "Middle High German",
	Family = "germanic",
	NameTranslations = {
		"Airmanareiks", "Ermenrîch" -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
	}
})

DefineLanguage("high-german", { -- define High German early to prevent some type name generation weirdnesses
	Name = "High German",
	Family = "germanic",
	AdjectiveEndings = {
		"no-article", "nominative", "singular", "masculine", "er",
		"no-article", "nominative", "singular", "feminine", "e",
		"no-article", "nominative", "singular", "neuter", "es",
		"no-article", "nominative", "plural", "no-gender", "e",
		"no-article", "accusative", "singular", "masculine", "en",
		"no-article", "accusative", "singular", "feminine", "e",
		"no-article", "accusative", "singular", "neuter", "es",
		"no-article", "accusative", "plural", "no-gender", "e",
		"no-article", "dative", "singular", "masculine", "em",
		"no-article", "dative", "singular", "feminine", "er",
		"no-article", "dative", "singular", "neuter", "em",
		"no-article", "dative", "plural", "no-gender", "en",
		"no-article", "genitive", "singular", "masculine", "en",
		"no-article", "genitive", "singular", "feminine", "er",
		"no-article", "genitive", "singular", "neuter", "en",
		"no-article", "genitive", "plural", "no-gender", "er",
		"definite", "nominative", "singular", "masculine", "e",
		"definite", "nominative", "singular", "feminine", "e",
		"definite", "nominative", "singular", "neuter", "e",
		"definite", "nominative", "plural", "no-gender", "en",
		"definite", "accusative", "singular", "masculine", "en",
		"definite", "accusative", "singular", "feminine", "e",
		"definite", "accusative", "singular", "neuter", "e",
		"definite", "accusative", "plural", "no-gender", "en",
		"definite", "dative", "no-number", "no-gender", "en",
		"definite", "genitive", "no-number", "no-gender", "en",
		"indefinite", "nominative", "singular", "masculine", "er",
		"indefinite", "nominative", "singular", "feminine", "e",
		"indefinite", "nominative", "singular", "neuter", "es",
		"indefinite", "nominative", "plural", "no-gender", "en",
		"indefinite", "accusative", "singular", "masculine", "en",
		"indefinite", "accusative", "singular", "feminine", "e",
		"indefinite", "accusative", "singular", "neuter", "es",
		"indefinite", "accusative", "plural", "no-gender", "en",
		"indefinite", "dative", "no-number", "no-gender", "en",
		"indefinite", "genitive", "no-number", "no-gender", "en"
	},
	NameTranslations = {
		"Bûra", "Bauer", -- from Proto-Germanic to German
		"Dverga", "Zwerg", -- from Proto-Germanic to German
		"Gastiz", "Gast", -- from Proto-Germanic to German
		"Lanum", "Land", -- example: "Mediolanum" -> "Mailand" (Milan)
		"Medio", "Mai", -- example: "Mediolanum" -> "Mailand" (Milan)
		"Smiþu", "Schmied", -- from Proto-Germanic to German
		"Vindobona", "Wien", -- "Wien" = "Vienna"; from the Latin name "Vindobona"
		"Walakuzjōn", "Walküre", -- from Proto-Germanic to German
		"Airmanareiks", "Ermenrich", -- "Ermenrich" is the German form of the Gothic name Airmanareiks
		"Theodoric", "Dietrich" -- "Dietrich" is the German form of the Gothic name Theodoric
	}
})

DefineLanguage("bavarian", {
	Name = "Bavarian",
	Family = "germanic"
})

DefineLanguage("tyrolean", {
	Name = "Tyrolean",
	Family = "germanic"
})

DefineLanguage("old-saxon", {
	Name = "Old Saxon",
	Family = "germanic"
})

DefineLanguage("middle-low-german", {
	Name = "Middle Low German",
	Family = "germanic"
})

DefineLanguage("old-frankish", {
	Name = "Old Frankish",
	Family = "germanic"
})

DefineLanguage("middle-dutch", {
	Name = "Middle Dutch",
	Family = "germanic"
})

DefineLanguage("dutch", {
	Name = "Dutch",
	Family = "germanic"
})

DefineLanguage("old-flemish", { -- should be a dialect instead?
	Name = "Old Flemish",
	Family = "germanic"
})

DefineLanguage("old-frisian", {
	Name = "Old Frisian",
	Family = "germanic"
})

DefineLanguage("old-english", {
	Name = "Old English",
	Family = "germanic",
	NameTranslations = {
		"Airmanareiks", "Eormenrîc" -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
	}
})

DefineLanguage("middle-english", {
	Name = "Middle English",
	Family = "germanic"
})

DefineLanguage("english", {
	Name = "English",
	Family = "germanic",
	NounEndings = {
		"singular", "genitive", "no-word-junction", "'s",
		"singular", "genitive", "compound", "s",
		"plural", "nominative", "s",
		"plural", "accusative", "s",
		"plural", "dative", "s",
		"plural", "genitive", "no-word-junction", "s'",
		"plural", "genitive", "compound", "s"
	},
	NameTranslations = {
		-- Old English to English
		"Abban", "Abing", -- Abbandun -> Abingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Abbandun", "Abingdon", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Abbodes", "Abbots", -- Abbodesbyrig -> Abbotsbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Abbodesbyrig", "Abbotsbury", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ægeles", "Ayles", -- Ægelesburg -> Aylesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ægeles", "Ayles", -- Ægelesford -> Aylesford; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ægelesburg", "Aylesbury", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ægelesford", "Aylesford", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Æthelingaig", "Athelney", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Alre", "Aller", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ambres", "Ames", -- Ambresbyrig -> Amesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ambresbyrig", "Amesbury", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Andeferas", "Andover", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Apuldre", "Appledore", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Arwe", "Orwell", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Assan", "Ashing", -- Assandun -> Ashingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Assandun", "Ashingdon", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Badecanwiellon", "Bakewell", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bænesing", "Bensing", -- Bænesingtun -> Bensington; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bænesingtun", "Bensington", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bancornaburg", "Bangor", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bardan", "Barn", -- Bardanstapol -> Barnstaple; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bardanstapol", "Barnstaple", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Basengum", "Basing", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bathum", "Bath", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Beam", "Ben", -- Beamfleot -> Benfleet; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Beamfleot", "Benfleet", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Burg", "Bury", -- Ægelesburg -> Aylesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Byrig", "Bury", -- Abbodesbyrig -> Abbotsbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Byrig", "Bury", -- Ambresbyrig -> Amesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Dun", "Don", -- Abbandun -> Abingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Dun", "Don", -- Assandun -> Ashingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Fleot", "Fleet", -- Beamfleot -> Benfleet; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Stapol", "Staple", -- Bardanstapol -> Barnstaple; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Tun", "Ton", -- Bænesingtun -> Bensington; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		-- German to English
		"Bernhard", "Bernard",
		"Franz", "Francis",
		"Friedrich", "Frederick",
		"Hannover", "Hanover",
		"Heinrich", "Henry",
		"Hessen", "Hesse",
		"Johann", "John",
		"Ludwig", "Lewis",
		"Peter", "Peter",
		"Thuringen", "Thuringia",
		"Westphalien", "Westphalia",
		"Wien", "Vienna",
		"Wilhelm", "William",
		"Württemberg", "Wurtemberg",
		-- Portuguese to English
		"Lisboa", "Lisbon"
	}
})

DefineLanguage("gothic", {
	Name = "Gothic",
	Family = "germanic"
})

DefineLanguage("crimean-gothic", {
	Name = "Crimean Gothic",
	Family = "germanic"
})

DefineLanguage("burgundian", {
	Name = "Burgundian",
	Family = "germanic"
})

