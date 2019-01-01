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

DefineLanguageWord("Anghlod", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Verbal Invective"} -- source gives the German "verbale Schmähung" as the meaning
})

DefineLanguageWord("Arglwydd", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Lord", "Commander"} -- source gives the German "Herr, Gebieter" as the meaning
})

DefineLanguageWord("Aryant", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 217.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Silver"}
})

DefineLanguageWord("Brathu", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "welsh",
	Type = "verb",
	Meanings = {"Prick", "Bite"}
})

DefineLanguageWord("Bryd", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Mind"} -- source gives the German "Sinn" as the meaning
})

DefineLanguageWord("Byddin", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 10.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Band", "Troup", "Army"}
})

DefineLanguageWord("Cad", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 6.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Battle"}
})

DefineLanguageWord("Cadwar", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 16.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Soldier"} -- gloss of Latin "miles"
})

DefineLanguageWord("Cant", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Language = "welsh",
	Type = "numeral",
	Number = 100 -- source gives the German "hundert" as the meaning
})

DefineLanguageWord("Cerennydd", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Peace Treaty", "Peace"}, -- source gives the German "ein Friedensvertrag zwischen zwei Königreichen oder auch der dadurch (wieder-)hergestellte Friede" as the meaning
	DerivesFrom = {"proto-celtic", "noun", "Karantion"}
})

DefineLanguageWord("Coron", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Crown"} -- source gives the German "Krone" as the meaning
})

DefineLanguageWord("Dant", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "welsh",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Dont"}
})

DefineLanguageWord("Erw", { -- this is the genitive; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Field"},
	NumberCaseInflections = {
		"singular", "genitive", "Erw"
	}
})

DefineLanguageWord("Ewythr", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Uncle"} -- source gives the German "Oheim" as the meaning
})

DefineLanguageWord("Gwas", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 120.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Servant"} -- source gives the German "Diener" as the meaning
})

DefineLanguageWord("Gwas Ystafell", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 120.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Chamberlain"} -- source gives the German "Kammerdiener" as the meaning
})

DefineLanguageWord("Hâf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "welsh", -- source gives New Welsh
	Type = "noun",
	Meanings = {"Summer"} -- source gives the German "Sommer" as the meaning
})

DefineLanguageWord("Hud", { -- presumably a noun; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 121.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Magic"}
})

DefineLanguageWord("Hudo", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 121.
	Language = "welsh",
	Type = "verb",
	Meanings = {"Work Magic", "Work by Magic"}
})

DefineLanguageWord("Ieu", { -- this is the comparative; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "welsh",
	Type = "adjective",
	Meanings = {"Younger"},
	DerivesFrom = {"proto-indo-european", "adjective", "Yehw"},
	ComparisonDegreeCaseInflections = {
		"comparative", "Ieu"
	}
})

DefineLanguageWord("Llu", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 10.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Throng", "Host", "Army"}
})

DefineLanguageWord("March", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 120.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Horse"} -- source gives the German "Pferd" as the meaning
})

DefineLanguageWord("Meddwl", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Mind"} -- source gives the German "Sinn" as the meaning
})

DefineLanguageWord("Mwyalch", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 155.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Blackbird", "Merl", "Thrush"} -- source gives the German "Amsel, Drossel" as the meaning
})

DefineLanguageWord("Pryderi", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 33.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Worry"} -- source gives the German "die Sorge" as the meaning
})

DefineLanguageWord("Pwyll", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Wit"} -- source gives the German "Verstand" as the meaning
})

DefineLanguageWord("Rhŷd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 121.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Ford"} -- source gives the German "Furt" as the meaning
})

DefineLanguageWord("Rhyfel", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 9.
	Language = "welsh",
	Type = "noun",
	Meanings = {"War"}
})

DefineLanguageWord("Talaith", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Diadem"} -- source gives the German "Diadem" as the meaning
})

DefineLanguageWord("Taran", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 26.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Thunder"}
})

DefineLanguageWord("Tref", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Homestead"} -- source gives the German "Gehöft" as the meaning
})

DefineLanguageWord("Trin", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 6.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Labor", "Trouble", "Action", "Battle"}
})

DefineLanguageWord("Troed", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 118.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Foot"} -- source gives the German "Fuß" as the meaning
})

DefineLanguageWord("Unben", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "welsh",
	Type = "noun", -- correct?
	Meanings = {"My Lord"} -- source gives the German "mein Herr" as the meaning
})

DefineLanguageWord("Wyneb", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 119.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Honor"} -- source gives the German "Ehre" as the meaning
})

DefineLanguageWord("Ymddiddan", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 121.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Conversation"} -- source gives the German "Unterhaltung" as the meaning
})

DefineLanguageWord("Ystafell", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 120.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Bedchamber of the Head of the Household"} -- source gives the German "Schlafgemach des Hausherrn" as the meaning
})

-- Compounds

DefineLanguageWord("Cantref", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Medieval Administrative Unit"},
	CompoundElements = {
		"prefix", "welsh", "numeral", "Cant",
		"suffix", "welsh", "noun", "Tref"
	}
})

DefineLanguageWord("Teilu", { -- Source: Carl D. Buck, "Words for 'Battle,' 'War,' 'Army,' and 'Soldier'", 1919, p. 10.
	Language = "welsh",
	Type = "noun",
	Meanings = {"Family"},
	CompoundElements = {
--		"prefix", ?
		"suffix", "welsh", "noun", "Llu"
	}
})
