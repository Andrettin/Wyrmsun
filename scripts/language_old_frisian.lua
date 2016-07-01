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
--      (c) Copyright 2016 by Andrettin
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

DefineLanguageWord("Âster", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 12.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adverb", "Austa"}
})

DefineLanguageWord("Bâm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 134.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Tree", "Beam"}, -- source gives the German "Baum, Balken" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Bagma"},
	Gender = "masculine"
})

DefineLanguageWord("Bên", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Leg"}, -- source gives the German "Bein" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baina"},
	Gender = "neuter"
})

DefineLanguageWord("Berch", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Mountain", "Hill", "Grave Mound"}, -- source gives "Berg, Hügel, Grabhügel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Berga"},
	Gender = "masculine"
})

DefineLanguageWord("Berd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Beard"}, -- source gives the German "Bart" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Barda"},
	Gender = "masculine"
})

DefineLanguageWord("Berna", { -- strong verb; source also gives the alternative form "barna"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-frisian",
	Type = "verb",
	Meanings = {"Burn"}, -- presumably from the source
	DerivesFrom = {"proto-germanic", "verb", "Brennan"}
})

DefineLanguageWord("Beth", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Bath", "Baths"}, -- source gives the German "Bad" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Baþa"},
	Gender = "neuter"
})

DefineLanguageWord("Blâw", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 147.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"Blue"}, -- source (apparently) gives the German "blau" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Blêva"}
})

DefineLanguageWord("Bord", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, pp. 135-136; Source: http://www.cnrtl.fr/definition/B%F6rde
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Board", "Table"}, -- the TLFi gives the French "planche, table" as the meaning; Fick gives the German "Tisch"
	DerivesFrom = {"proto-germanic", "noun", "Burda"}, -- as given by Fick; the TLFi gives it as deriving from the Indo-European word "bhrdho-" (Source: http://www.cnrtl.fr/definition/bord)
	Gender = "neuter" -- as given by the TLFi and Fick
})

DefineLanguageWord("Brond", { -- source also gives the alternative form "Brand"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Fire", "Burning"}, -- source gives the German "Brand, Brennen"
	DerivesFrom = {"proto-germanic", "noun", "Branda"}, -- apparently
	Gender = "masculine"
})

DefineLanguageWord("Bregge", { -- source also gives the alternative form "Brigge"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 145.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Bridge"}, -- source gives the German "Brücke" as the meaning
	Gender = "feminine",
	DerivesFrom = {"proto-germanic", "noun", "Brugjô"}
})

DefineLanguageWord("Bunka", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 133.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Bone", "Hip Bone"}, -- source gives the German "Knochen, Hüftknochen" as the meaning
	DerivesFrom = {"proto-indo-european", "noun", "Bhənā"} -- source indicates this as a possibility
})

DefineLanguageWord("Burch", { -- source gives "Bur(i)ch"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 137.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Fortified Place", "City", "Town"}, -- source gives "befestigter Ort, Stadt" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Burg"},
	Gender = "feminine"
})

DefineLanguageWord("Dach", { -- source also gives the alternative form "Dei"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 106.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Day"}, -- source apparently gives the German "Tag" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Dag"}
})

DefineLanguageWord("Drochten", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 113.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "noun", "Druhtîna"}
})

DefineLanguageWord("Fretho", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 128.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Peace", "Protection", "Security"}, -- source gives the German "Friede, Schutz, Sicherheit" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Friþu"}
})

DefineLanguageWord("God", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 76.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"God"}, -- source gives the German "Gott" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Guda"}
})

DefineLanguageWord("Gold", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 73.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Gold"}, -- source gives the German "Gold" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Gulþa"}
})

DefineLanguageWord("Grê", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"Gray"}, -- source gives the German "grau" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grêva"}
})

DefineLanguageWord("Grêne", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 80.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"Green"}, -- source gives the German "grün" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grônia"}
})

DefineLanguageWord("Grîs", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 79.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"Gray", "Old"}, -- source gives the German "grau, greis" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Grîsa"}
})

DefineLanguageWord("Hach", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 54.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"High"}, -- source gives the German "hoch" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hauha"}
})

DefineLanguageWord("Half", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"Half"}, -- source gives the German "halb" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"}
})

DefineLanguageWord("Halfte", { -- source also gives the alternative form "helfte"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-frisian",
	Type = "noun", -- apparently
	Meanings = {"Half"}, -- source (apparently) gives the German "Hälfte" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halbiþô"}
})

DefineLanguageWord("Hals", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 50.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Neck", "Throat", "Front Part of a Ship"}, -- source gives the German "Hals, Vorderteil des Schiffes" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Halsa"},
	Gender = "masculine"
})

DefineLanguageWord("Halve", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 51.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Half", "Side"}, -- source gives the German "Hälfte, Seite" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Halba"},
	Gender = "feminine"
})

DefineLanguageWord("Hâm", { -- source also gives the alternative form "Hêm"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 52.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Home", "House", "Dwelling"}, -- source gives the German "Heimat, Haus, Wohnung" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Haima"},
	Gender = "masculine"
})

DefineLanguageWord("Hēde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Flax Fiber"},
	DerivesFrom = {"proto-germanic", "noun", "Hezdōn"},
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageWord("Hêlich", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 42.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"Holy"}, -- source gives the German "heilig"
	DerivesFrom = {"proto-germanic", "adjective", "Hailaga"}
})

DefineLanguageWord("Helm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 49.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Helm", "Helmet", "Treetop"}, -- source gives the German "Helm, Wipfel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Helma"},
	Gender = "masculine"
})

DefineLanguageWord("Herde", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 48.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adjective", "Hardu"}
})

DefineLanguageWord("Herne", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Corner", "Angle"}, -- source gives the German "Ecke, Winkel" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hurnia"},
	Gender = "feminine"
})

DefineLanguageWord("Herth", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Fireplace", "Fire"}, -- source gives "Feuerstätte, Feuer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Herþa"},
	Gender = "masculine"
})

DefineLanguageWord("Homer", { -- source also gives the alternative form "hamer"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 46.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Hammer"}, -- source gives the German "Hammer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hamara"},
	Gender = "masculine"
})

DefineLanguageWord("Horn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 47.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Horn", "Preeminent Peak"}, -- source (apparently) gives the German "Horn, hervorragende Spitze"
	DerivesFrom = {"northwest-germanic", "noun", "Horna"} -- presumably
})

DefineLanguageWord("Hunger", { -- source also gives the alternative form "Honger"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 44.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Hunger"}, -- source gives the German "Hunger" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Hunhru"},
	Gender = "masculine"
})

DefineLanguageWord("Hwit", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 67.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"White"}, -- source gives the German "weiß" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Hvîta"}
})

DefineLanguageWord("Knecht", { -- source also gives the alternative form "kniucht"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 27.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Boy", "Bachelor", "Servant"}, -- source apparently gives the German "Knabe, Junggesell, Diener" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Knehta"}
})

DefineLanguageWord("Lâd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 181.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Lot"}, -- source gives the German "Loth" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Lauda"}
})

DefineLanguageWord("Lond", { -- source also gives the alternative form "Land"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 184.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Land", "Country"}, -- source gives the German "Land"
	DerivesFrom = {"proto-germanic", "noun", "Landa"},
	Gender = "neuter"
})

DefineLanguageWord("Lēra", { -- causative verb; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-frisian",
	Type = "verb",
	Meanings = {"Teach"}
})

DefineLanguageWord("Lernēn", { -- source also gives "Lirnēn" as an alternative form; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "verb",
	Meanings = {"Learn"}
})

DefineLanguageWord("Maga", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 156.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Stomach"}, -- source (apparently) gives the German "Magen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Magan"},
	Gender = "masculine"
})

DefineLanguageWord("Māra", { -- this is the comparative, what is the normal version of the word? Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 6.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"More"},
	ComparisonDegreeCaseInflections = {
		"comparative", "Māra",
		"superlative", "Māst"
	}
})

DefineLanguageWord("Marg", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Marrow"},
	DerivesFrom = {"proto-germanic", "noun", "Mazgaz"}
})

DefineLanguageWord("Mēde", { -- source also gives as alternatives the forms "Mīde", "Meide" and "Hēde"; Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, pp. 1, 7.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Reward", "Rental", "Payment", "Gift"},
	DerivesFrom = {"proto-germanic", "noun", "Mizdō"},
	Gender = "feminine"
})

DefineLanguageWord("Mēr", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {"More"},
	Nominative = "Mēr"
})

DefineLanguageWord("Merk", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Half Silver Pound"}, -- source gives the German "halbes Pfund Silbers"
	DerivesFrom = {"proto-germanic", "noun", {"Mark", "Half Pound", "Half Silver Pound"}, "Markô"}
})

DefineLanguageWord("Merke", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 160.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Border"}, -- source gives the German "Grenze"
	DerivesFrom = {"proto-germanic", "noun", "Mark"}
})

DefineLanguageWord("Mund", { -- source also gives the alternative form "mond"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 167.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Protection", "Tutelage"}, -- source gives the German "Schutz, Bevormundung" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Mundô"},
	Gender = "masculine"
})

DefineLanguageWord("Nera", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-frisian",
	Type = "verb",
	Meanings = {"Nurture"}
})

DefineLanguageWord("Nîe", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 153.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"New"}, -- source gives the German "neu" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Neuja"}
})

DefineLanguageWord("North", { -- source also gives the alternative form "Nord"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"North"}, -- source gives the German "Norden" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Nurþa"}
})

DefineLanguageWord("North", { -- source also gives the alternative form "Nord"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {"Northward"}, -- source gives the German "nordwärts" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Nurþa"}
})

DefineLanguageWord("Norther", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 152.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {},
	DerivesFrom = {"proto-germanic", "adverb", "Nurþa"}
})

DefineLanguageWord("Ord", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 1.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Point", "Place"}, -- source gives the meaning as "(spear)point, place"
	DerivesFrom = {"proto-germanic", "noun", "Uzdaz"}
})

DefineLanguageWord("Ransa", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 9.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"House"}
})

DefineLanguageWord("Rêd", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 172.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Counsel", "Council"}, -- source gives the German "Rat"
	DerivesFrom = {"proto-germanic", "noun", "Rêda"},
	Gender = "masculine"
})

DefineLanguageWord("Rîk", { -- source gives "rîk(e)"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Power", "Kingdom"}, -- source gives the German "Macht, Königreich" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Rîkia"},
	Gender = "neuter"
})

DefineLanguageWord("Rîk", { -- source gives "rîk(e)"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 174.
	Language = "old-frisian",
	Type = "adjective",
	Meanings = {"Rich"}, -- source gives the German "reich" as the meaning
	DerivesFrom = {"proto-germanic", "adjective", "Rîka"}
})

DefineLanguageWord("Sê", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Lake"}, -- source (apparently) gives the German "See" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Saivi"},
	Gender = "masculine"
})

DefineLanguageWord("Selover", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 221.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Silver"}, -- source gives the German "Silber" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Silubra"},
	Gender = "neuter"
})

DefineLanguageWord("Sî", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 214.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Victory"}, -- source (apparently) gives the German "Sieg" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Segiz"},
	Gender = "masculine"
})

DefineLanguageWord("Skeld", { -- source also gives the alternative form "schild"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 229.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Shield", "Protection"}, -- source gives the German "Schild, Schutz" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Skeldu"},
	Gender = "masculine"
})

DefineLanguageWord("Smeth", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 263.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Smith"}, -- source gives the German "Schmied"
	DerivesFrom = {"proto-germanic", "noun", "Smiþu"}
})

DefineLanguageWord("Smithe", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 264.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Smithy"}, -- source gives the German "Schmiede" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Smiþjôn"}
})

DefineLanguageWord("Stapul", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 241.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Executioner's Block", "Dental Crown"}, -- source gives the German "Richtblock, die Krone eines Zahnes" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Stapula"}
})

DefineLanguageWord("Stên", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 245.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Stone"}, -- source (apparently) gives the German "Stein" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Staina"},
	Gender = "masculine"
})

DefineLanguageWord("Sumur", { -- Fick also gives the alternative forms "Summer" and "Somer"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223; Source: http://www.cnrtl.fr/definition/sombre//3
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Summer"}, -- Fick gives the German "Sommer" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Sumara"}, -- as given by Fick
	Gender = "masculine" -- apparently, as given by Fick
})

DefineLanguageWord("Sûth", { -- source also gives the alternative form "Sûther"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 223.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {"Southward", "In the South"}, -- source gives the German "südwärts, im Süden" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Sunþa"}
})

DefineLanguageWord("Tale", { -- source also gives the alternative form "tele"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Number", "Narrative", "Speech"}, -- source gives the German "Zahl, Erzählung, Rede" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Talô"},
	Gender = "feminine" -- apparently
})

DefineLanguageWord("Therm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 97.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Intestine"}, -- source gives the German "Darm" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þarma"}
})

DefineLanguageWord("Thiade", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 99.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"People"}, -- source gives the German "Volk, Leute" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þeudô"},
	Gender = "feminine"
})

DefineLanguageWord("Thorp", { -- source also gives the alternative form "Therp"; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 100.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Village"}, -- source gives the German "Dorf" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Þurpa"}
})

DefineLanguageWord("Tôth", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Tooth"}, -- source (apparently) gives the German "Zahn" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tanþ"},
	Gender = "masculine"
})

DefineLanguageWord("Tûn", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 89.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Fence"}, -- source gives the German "Zaun" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tûna"},
	Gender = "masculine"
})

DefineLanguageWord("Turf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 86.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Lawn", "Turf"}, -- source gives the German "Rasen" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Turba"},
	Gender = "masculine"
})

DefineLanguageWord("Tusk", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 84.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Tusk"}, -- source gives the German "Fangzahn" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Tunþska"}
})

DefineLanguageWord("Wald", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 203.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Forest"}, -- source gives the German "Wald" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Valþu"},
	Gender = "masculine"
})

DefineLanguageWord("Wêd", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 4.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Woad"}
})

DefineLanguageWord("West", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"West"}, -- source gives the German "West" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Vesta"}
})

DefineLanguageWord("Wester", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 204.
	Language = "old-frisian",
	Type = "adverb",
	Meanings = {"West"}, -- source gives the German "West" as the meaning
	DerivesFrom = {"proto-germanic", "adverb", "Vesta"}
})

DefineLanguageWord("Wi", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 5.
	Language = "old-frisian",
	Type = "pronoun",
	Meanings = {"We"},
	Nominative = "Wi"
})

DefineLanguageWord("Wolf", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Wolf"}, -- source gives the German "Wolf"
	DerivesFrom = {"proto-germanic", "noun", "Vulfa"}
})

DefineLanguageWord("Worm", { -- Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 209.
	Language = "old-frisian",
	Type = "noun",
	Meanings = {"Worm", "Maggot", "Adder", "Viper", "Serpent"}, -- source (apparently) gives the German "Wurm, Made, Natter, Schlange" as the meaning
	DerivesFrom = {"proto-germanic", "noun", "Vurma"},
	Gender = "masculine"
})
