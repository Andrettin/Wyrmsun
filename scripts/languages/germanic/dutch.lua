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
--      (c) Copyright 2016-2019 by Andrettin
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

DefineLanguageWord("Bever", {
	Language = "dutch",
	Type = "noun",
	Meanings = {"Beaver"} -- Source: http://www.vandale.nl/opzoeken?pattern=Bever&lang=ne
})

DefineLanguageWord("Boord", { -- Source: http://www.cnrtl.fr/definition/bord
	Language = "dutch",
	Type = "noun",
	Meanings = {"Edge", "Ridge", "Edge of a Ship"}, -- source gives the French "bord, arête; bord de navire" as the meaning
	DerivesFrom = {"old-frankish", "noun", {"Edge of a Vessel"}, "Bord"}
})

DefineLanguageWord("Bos", {
	Language = "dutch",
	Type = "noun",
	Meanings = {"Wood", "Forest"}, -- Source: http://www.vandale.nl/opzoeken?pattern=bos&lang=ne
	DerivesFrom = {"middle-dutch", "noun", "Busch"} -- presumably
})

DefineLanguageWord("Bosch", {
	Language = "dutch",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"middle-dutch", "noun", "Busch"} -- presumably
})

DefineLanguageWord("Dam", {
	Language = "dutch",
	Type = "noun",
	Meanings = {"Dam"} -- Source: http://www.vandale.nl/opzoeken?pattern=Dam&lang=ne
})

DefineLanguageWord("Dorp", { -- Source: http://www.cnrtl.fr/definition/trop
	Language = "dutch",
	Type = "noun",
	Meanings = {"Village"}, -- source gives the French "village" as the meaning
	DerivesFrom = {"old-frankish", "noun", "Thorp"} -- presumably
})

DefineLanguageWord("Ede", { -- is this really a noun? Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
	Language = "dutch",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"old-frankish", "noun", "Ithi"} -- presumably
})

DefineLanguageWord("Grijs", { -- Source: http://www.cnrtl.fr/definition/gris
	Language = "dutch",
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the French "gris" as the meaning
	DerivesFrom = {"old-frankish", "adjective", "Grîs"} -- presumably
})

DefineLanguageWord("Heir", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 14.
	Language = "dutch",
	Type = "noun",
	Meanings = {"Army"},
	DerivesFrom = {"middle-dutch", "noun", "Here"}
})

DefineLanguageWord("Hertog", {
	Language = "dutch",
	Type = "noun",
	Meanings = {"Duke"}, -- Source: http://www.vandale.nl/opzoeken?pattern=Hertog&lang=ne
	NumberCaseInflections = {
		"singular", "genitive", "Hertogen"
	}
})

DefineLanguageWord("Horst", { -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
	Language = "dutch",
	Type = "noun",
	Meanings = {"Hyrst"}
})

DefineLanguageWord("Huis", { -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
	Language = "dutch",
	Type = "noun",
	Meanings = {"House"}
})

DefineLanguageWord("Klei", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 38.
	Language = "dutch",
	Type = "noun",
	Meanings = {"Clay"}, -- source gives the German "Lehm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Klajja"}
})

DefineLanguageWord("Krijg", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "dutch",
	Type = "noun",
	Meanings = {"War"}
})

DefineLanguageWord("Land", {
	Language = "dutch",
	Type = "noun",
	Meanings = {"Land", "Country"} -- Source: http://www.vandale.nl/opzoeken?pattern=Land&lang=ne
})

DefineLanguageWord("Leger", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 14.
	Language = "dutch",
	Type = "noun",
	Meanings = {"Resting Place", "Camp", "Army"}
})

DefineLanguageWord("Lied", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "dutch",
	Type = "noun",
	Meanings = {"Song"}, -- source gives the German "Lied" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Leuþa"},
	Gender = "neuter"
})

DefineLanguageWord("Lood", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "dutch",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Lauda"}
})

DefineLanguageWord("Molen", { -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
	Language = "dutch",
	Type = "noun",
	Meanings = {"Mill"}
})

DefineLanguageWord("Oever", { -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
	Language = "dutch",
	Type = "noun",
	Meanings = {"Bank of a River"}
})

DefineLanguageWord("Oorlog", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 8.
	Language = "dutch",
	Type = "noun",
	Meanings = {"War"}
})

DefineLanguageWord("Stap", { -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
	Language = "dutch",
	Type = "noun",
	Meanings = {"Step", "Footstep", "Pace", "Stride"} -- Source: http://www.vandale.nl/opzoeken?pattern=Stap&lang=ne
})

DefineLanguageWord("Tuin", { -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
	Language = "dutch",
	Type = "noun",
	Meanings = {"Garden", "Town"}
})

DefineLanguageWord("Waal", { -- is this really a noun? Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
	Language = "dutch",
	Type = "noun",
	Meanings = {"Walloon"} -- Source: http://www.vandale.nl/opzoeken?pattern=Waal&lang=ne
})

DefineLanguageWord("Wijk", { -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
	Language = "dutch",
	Type = "noun",
	Meanings = {"District", "Area"} -- Source: http://www.vandale.nl/opzoeken?pattern=Wijk&lang=ne
})

DefineLanguageWord("Worm", {
	Language = "dutch",
	Type = "noun",
	Meanings = {"Worm", "Pus"}, -- the TLFi gives the French "pus" as the meaning, is that actually the same word?
	DerivesFrom = {"old-frankish", "noun", "Worm"} --  Source: http://www.cnrtl.fr/definition/gourme
})
