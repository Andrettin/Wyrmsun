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

DefineLanguage("old-norse", {
	Name = "Old Norse",
	NameTranslations = {
		-- Gothic Personal Names
		"Airmanareiks", "Jormunrek", -- "Jǫrmunrekr" is the Old Norse equivalent of the Gothic name "Airmanareiks; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
		-- Proto-Germanic Personal Names
		"Aban", "Afi",
		"Ammon", "Amma",
		"Branda", "Brand",
		"Erala", "Jarl",
		"Fader", "Fathir",
		"Frithulaibo", "Fridleif", -- "Fridleifr"
		"Gudawulfa", "Gudolf",
		"Karla", "Karl",
		"Magan", "Magi",
		"Moder", "Mothir",
		"Skeldu", "Skjold", -- "Skjöldr"
		"Thrahila", "Thrall",
		-- "Runic" (Northwest Germanic?) Personal Names
		"Hlewagastiz", "Hliugast", -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.9.2b.
		-- Old English Personal Names
		"Scyld", "Skjold" -- "Skjöldr"
	}
})

DefineLanguage("old-high-german", {
	Name = "Old High German",
	NameTranslations = {
		-- Proto-Germanic
		"Karla", "Karal"
	}
})

DefineLanguage("middle-high-german", {
	Name = "Middle High German",
	NameTranslations = {
		"Airmanareiks", "Ermenrich" -- "Ermenrîch" is the Middle High German equivalent of the Gothic name "Airmanareiks"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
	}
})

DefineLanguage("high-german", { -- define High German early to prevent some type name generation weirdnesses
	Name = "High German",
	NameTranslations = {
		"Airmanareiks", "Ermenrich", -- "Ermenrich" is the German form of the Gothic name "Airmanareiks"
		"Theodoric", "Dietrich", -- "Dietrich" is the German form of the Gothic name Theodoric
		-- Proto-Germanic
		"Karla", "Karl",
		-- Old High German
		"Karal", "Karl",
		-- Frankish Personal Names
		"Chlodwig", "Ludwig" -- Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	}
})

DefineLanguage("old-english", {
	Name = "Old English",
	NameTranslations = {
		-- Gothic
		"Airmanareiks", "Eormenric", -- "Eormenrîc" is the Old English equivalent of the Gothic name "Airmanareiks"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 18
		-- Old Norse
		"Skjold", "Scyld" -- "Skjöldr"
	}
})

DefineLanguage("english", {
	Name = "English",
	NameTranslations = {
		-- Old English Settlement Names
		"Abbandun", "Abingdon", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Abbodesbyrig", "Abbotsbury", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Aegelesburg", "Aylesbury", -- Ægelesburg -> Aylesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Aegelesford", "Aylesford", -- Ægelesford -> Aylesford; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Alre", "Aller", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Andeferas", "Andover", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Apuldre", "Appledore", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Arwe", "Orwell", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Assandun", "Ashingdon", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Badecanwiellon", "Bakewell", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Baenesingtun", "Bensington", -- Bænesingtun -> Bensington; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bancornaburg", "Bangor", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bardanstapol", "Barnstaple", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Basengum", "Basing", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Beamfleot", "Benfleet", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		-- German Personal Names
		"Bernhard", "Bernard",
		"Franz", "Francis",
		"Friedrich", "Frederick",
		"Heinrich", "Henry",
		"Johann", "John",
		"Karl", "Charles",
		"Ludwig", "Lewis",
		"Peter", "Peter",
		"Wilhelm", "William",
		-- German Settlement Names
		"Württemberg", "Wurtemberg",
		-- Portuguese Personal Names
		"Bernardo", "Bernard",
		"Carlos", "Charles",
		"Francisco", "Francis",
		"Frederico", "Frederick",
		"Guilherme", "William",
		"Henrique", "Henry",
		"Joao", "John", -- João -> John
		"Luis", "Lewis", -- Luís -> Lewis
		"Pedro", "Peter"
	}
})
