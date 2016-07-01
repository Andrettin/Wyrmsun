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

DefineLanguageWord("Aes", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 11.
	Language = "latin",
	Type = "noun",
	Meanings = {"Ore"}, -- source gives the German "Erz" as the meaning
	Gender = "neuter",
	NumberCaseInflections = {
		"singular", "genitive", "Aeris"
	}
})

DefineLanguageWord("Alucinare", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Type = "verb",
	Meanings = {"To Wander in Mind", "Speak while in such a State"}
})

DefineLanguageWord("Alucitae", { -- this is the plural; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Type = "noun",
	Meanings = {"Gnats", "Mosquitos"},
	NumberCaseInflections = {
		"plural", "nominative", "Alucitae"
	}
})

DefineLanguageWord("Amphora", { -- Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, pp. xxxiii-xxxiv.
	Language = "latin",
	Type = "noun",
	Meanings = {"Wine-Container"}
})

DefineLanguageWord("Âra", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 20.
	Language = "latin",
	Type = "noun",
	Meanings = {"Altar"} -- source gives the German "Altar" as the meaning
})

DefineLanguageWord("Auster", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "latin",
	Type = "noun",
	Meanings = {"South Wind"} -- source gives the German "Südwind" as the meaning
})

DefineLanguageWord("Basilica", { -- Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, p. xxxv.
	Language = "latin",
	Type = "noun",
	Meanings = {"Church"},
	DerivesFrom = {"greek", "noun", "Basilikē"}
})

DefineLanguageWord("Caesaries", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 7.
	Language = "latin",
	Type = "noun",
	Meanings = {"Head Hair"}
})

DefineLanguageWord("Caper", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "latin",
	Type = "noun",
	Meanings = {"Male Goat"}
})

DefineLanguageWord("Captus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "latin",
	Type = "adjective",
	Meanings = {"Captured"}
})

DefineLanguageWord("Caulis", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 236.
	Language = "latin",
	Type = "noun",
	Meanings = {} -- words derived from it mean (in German) "Kohl"
})

DefineLanguageWord("Collum", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "latin",
	Type = "noun",
	Meanings = {"Neck", "Throat"}, -- source gives the German "Hals" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Kel"}
})

DefineLanguageWord("Cōnīveō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "latin",
	Type = "verb",
	Meanings = {"Shut the Eyes"},
	DerivesFrom = {"proto-indo-european", "verb", "Kneygʷh"}
})

DefineLanguageWord("Conopes", { -- this is the plural; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Type = "noun",
	Meanings = {"Gnats"},
	NumberCaseInflections = {
		"plural", "nominative", "Conopes"
	}
})

DefineLanguageWord("Conopeum", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 102.
	Language = "latin",
	Type = "noun",
	Meanings = {"Mosquito Net"}
})

DefineLanguageWord("Crātis", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Wicker-Work"}
})

DefineLanguageWord("Custos", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "latin",
	Type = "noun",
	Meanings = {"Guard"} -- source gives meaning as "a Guard"
})

DefineLanguageWord("Dēfrūtum", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "latin",
	Type = "noun",
	Meanings = {"Cider"},
	DerivesFrom = {"proto-indo-european", "noun", "Bhru"}
})

DefineLanguageWord("Dens", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "latin",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Dont"}
})

DefineLanguageWord("Deus", { -- source also gives the alternative form "dīuus"; Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 39.
	Language = "latin",
	Type = "noun",
	Meanings = {"God"}
})

DefineLanguageWord("Diēs", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 39.
	Language = "latin",
	Type = "noun",
	Meanings = {"Day"},
	DerivesFrom = {"proto-indo-european", "noun", "Deiṷos"}
})

DefineLanguageWord("Dolus", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "latin",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Del"}
})

DefineLanguageWord("Dūcō", { -- this is the singular first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 3-4.
	Language = "latin",
	Type = "verb",
	Meanings = {"Lead"},
	DerivesFrom = {"old-latin", "verb", "Doucō"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Dūcō"
	}
})

DefineLanguageWord("Ecclesia", { -- Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, p. xxxv.
	Language = "latin",
	Type = "noun",
	Meanings = {"Church"},
	DerivesFrom = {"greek", "noun", "Ekklēsía"}
})

DefineLanguageWord("Egō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 1.
	Language = "latin",
	Type = "pronoun",
	Meanings = {"I"}, -- is a cognate of Proto-Germanic "eka"/"ek", so possibly has the same meaning
	Nominative = "Egō"
})

DefineLanguageWord("Fāgus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Beech"}
})

DefineLanguageWord("Far", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "latin",
	Type = "noun",
	Meanings = {"Wheat", "Spelt"} -- the word means one of these, not both
})

DefineLanguageWord("Fĕmur", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "latin",
	Type = "noun",
	Meanings = {}
})

DefineLanguageWord("Ferō", { -- this is the singular first person present; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "latin",
	Type = "verb",
	Meanings = {"Bear"},
	NumberPersonTenseMoodInflections = {
		"singular", "first-person", "present", "indicative", "Ferō"
	}
})

DefineLanguageWord("Ferveo", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "latin",
	Type = "verb", -- correct?
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "verb", "Bhrenvō"}
})

DefineLanguageWord("Flâvus", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 147.
	Language = "latin",
	Type = "adjective",
	Meanings = {"Blond"} -- source gives the German "blond" as the meaning
})

DefineLanguageWord("Forfex", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 135-136.
	Language = "latin",
	Type = "noun",
	Meanings = {"Scissors"}, -- source gives the German "Scheere" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhrdho"} -- the TLFi gives the cognates of this word as deriving from the Indo-European word "bhrdho-" (Source: http://www.cnrtl.fr/definition/bord); Fick gives the Indo-European root of this word as "bher(e)dh" instead
})

DefineLanguageWord("Foris", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Door"}
})

DefineLanguageWord("Frāter", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Brother"}
})

DefineLanguageWord("Gallus", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 101.
	Language = "latin",
	Type = "noun",
	Meanings = {"Eunuch"},
	NumberCaseInflections = {
		"plural", "nominative", "Galli"
	}
})

DefineLanguageWord("Grānum", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Grain"}
})

DefineLanguageWord("Haedus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 9.
	Language = "latin",
	Type = "noun",
	Meanings = {"Goat"}
})

DefineLanguageWord("Hasta", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "latin",
	Type = "noun",
	Meanings = {"Rod", "Shaft", "Spear"}
})

DefineLanguageWord("Hortus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Garden"}
})

DefineLanguageWord("Laus", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "latin",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Lēut"}
})

DefineLanguageWord("Linquō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
	Language = "latin",
	Type = "verb",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "verb", "Leykʷ"}
})

DefineLanguageWord("Longus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "adjective",
	Meanings = {"Long"} -- presumably, but it is not entirely clear from the source
})

DefineLanguageWord("Lupus", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "latin",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Vl̥qo"}
})

DefineLanguageWord("Manus", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 167.
	Language = "latin",
	Type = "noun",
	Meanings = {"Hand"} -- source gives the German "Hand" as the meaning
})

DefineLanguageWord("Margo", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "latin",
	Type = "noun",
	Meanings = {"Edge"}, -- source gives the German "Rand"
	DerivesFrom = {"proto-indo-european", "verb", "Mareĝ"} -- source indicates this as a possibility
})

DefineLanguageWord("Merula", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 155.
	Language = "latin",
	Type = "noun",
	Meanings = {"Blackbird", "Merl"} -- source gives the German "Amsel" as the meaning
})

DefineLanguageWord("Molere", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "verb",
	Meanings = {"Grind"}, -- presumably, but it is not entirely clear from the source
	DerivesFrom = {"proto-indo-european", "verb", "Mel"}
	-- also given as "Molō" (if it is indeed the same word); Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 6.
})

DefineLanguageWord("Nux", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 58.
	Language = "latin",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Knud"}
})

DefineLanguageWord("Octō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "numeral",
	Number = 8
})

DefineLanguageWord("Ōvum", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.1.
	Language = "latin",
	Type = "noun",
	Meanings = {"Egg"},
	DerivesFrom = {"proto-indo-european", "noun", "Oh"}
})

DefineLanguageWord("Pater", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Father"}
})

DefineLanguageWord("Pecu", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "latin",
	Type = "noun",
	Meanings = {"Herd"}
})

DefineLanguageWord("Quercus", { -- Source: H. Munro Chadwick, "The Oak and the Thunder-God", 1900, p. 35.
	Language = "latin",
	Type = "noun",
	Meanings = {"Oak"},
	DerivesFrom = {"proto-indo-european", "noun", "Perkṷus"}
})

DefineLanguageWord("Quod", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "pronoun",
	Meanings = {"What"},
	Nominative = "Quod"
})

DefineLanguageWord("Râvus", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "latin",
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the German "grau" as the meaning
	DerivesFrom = {"proto-indo-european", "verb", "Ĝherē"}
})

DefineLanguageWord("Rectus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "adjective",
	Meanings = {"Straight"} -- presumably, but it is not entirely clear from the source
})

DefineLanguageWord("Rêx", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "latin",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-indo-european", "noun", "Reĝ"}
})

DefineLanguageWord("Scrībere", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 2.
	Language = "latin",
	Type = "verb",
	Meanings = {} -- cognates have "write" as the meaning
})

DefineLanguageWord("Sequor", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 5.
	Language = "latin",
	Type = "verb",
	Meanings = {"Follow"},
	DerivesFrom = {"proto-indo-european", "verb", "Sekʷ"}
})

DefineLanguageWord("Sēmen", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "noun",
	Meanings = {"Seed"}
})

DefineLanguageWord("Sōl", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.3, 2.6.2.
	Language = "latin",
	Type = "noun",
	Meanings = {"Sun"}
})

DefineLanguageWord("Spuō", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 4.
	Language = "latin",
	Type = "verb",
	Meanings = {"Spit"}
})

DefineLanguageWord("Suīnus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "adjective",
	Meanings = {"of Pig"}
})

DefineLanguageWord("Super", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "adposition",
	Meanings = {"Over"}
})

DefineLanguageWord("Sūs", { -- Source: Richard M. Runge, "The Phonetic Realization of Proto-Germanic /r/", 1973, p. 242.
	Language = "latin",
	Type = "noun",
	Meanings = {"Sow"}
})

DefineLanguageWord("Torrus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Section 3.
	Language = "latin",
	Type = "adjective",
	Meanings = {"Dry"}
})

DefineLanguageWord("Turba", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "latin",
	Type = "noun",
	Meanings = {"Flock", "Crowd"} -- source gives the German "Schar" as the meaning
})

DefineLanguageWord("Turbâre", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "latin",
	Type = "verb",
	Meanings = {"Confuse"} -- source gives the German "Verwirren" as the meaning
})

DefineLanguageWord("Veniō", { -- alternatively written as "Venio" by the source; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 2, Sections 3, 5.
	Language = "latin",
	Type = "verb",
	Meanings = {"Come"},
	DerivesFrom = {"proto-indo-european", "verb", "Gʷem"}
})

DefineLanguageWord("Verus", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 99.
	Language = "latin",
	Type = "adjective",
	Meanings = {"True", "Real"}
})

DefineLanguageWord("Vesper", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "latin",
	Type = "noun",
	Meanings = {"Evening"}, -- source gives the German "Abend" as the meaning
	DerivesFrom = {"proto-indo-european", "adverb", "Ve"}
})

DefineLanguageWord("Vinum", { -- Source: D. H. Green, "From Germania to Europe: the Evidence of Language and History", 1997, p. xxxii.
	Language = "latin",
	Type = "noun",
	Meanings = {"Wine"} -- apparently
})

DefineLanguageWord("Vir", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6, 2.7.1.
	Language = "latin",
	Type = "noun",
	Meanings = {"Man"},
	DerivesFrom = {"proto-indo-european", "noun", "Wiros"}
})

DefineLanguageWord("Vīvus", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.6.2.
	Language = "latin",
	Type = "adjective",
	Meanings = {"Alive"},
	DerivesFrom = {"proto-indo-european", "adjective", "Gʷyxwos"}
})

DefineLanguageWord("Volpes", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "latin",
	Type = "noun",
	Meanings = {"Fox"}, -- source gives the German "Fuchs"
	DerivesFrom = {"proto-indo-european", "noun", "Vl̥po"}
})

DefineLanguageWord("Vōs", { -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, Chapter 1, Section 5, Subsection 1.
	Language = "latin",
	Type = "pronoun",
	Meanings = {"You"}, -- second person plural
	Nominative = "Vōs"
})
