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

DefineLanguageWord("Boomgaert", { -- uses the word "Gaert" as a compound element; Source: http://www.cnrtl.fr/definition/jardin
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {"Garden", "Orchard"} -- source gives the French "jardin, verger" as the meaning
})

DefineLanguageWord("Brant", { -- Source: http://www.cnrtl.fr/definition/brand
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {"Fire", "Pyre", "Sparkling Weapon", "Sword"}, -- source gives the French "feu, bûcher" and "arme étincelante, épée"
	DerivesFrom = {"old-frankish", "noun", "Brand"} -- presumably
})

DefineLanguageWord("Busch", { -- source also gives the alternative form "Bosch"; Source: http://www.cnrtl.fr/definition/bois
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"old-frankish", "noun", "Bŏsk"} -- presumably
})

DefineLanguageWord("Gaert", { -- Source: http://www.cnrtl.fr/definition/jardin
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"old-frankish", "noun", "Gart"} -- presumably
})

DefineLanguageWord("Halsberch", { -- Source: http://www.cnrtl.fr/definition/haubert
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {"Neck Cover"}, -- source gives the French "ce qui protège le cou" as the meaning
	DerivesFrom = {"old-frankish", "noun", "Halsberg"} -- presumably
})

DefineLanguageWord("Ham", { -- Source: http://www.cnrtl.fr/definition/Amad%E9
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {"Enclosure"}, -- source gives the French "enclos" as the meaning
	DerivesFrom = {"old-frankish", "noun", "Haim"} -- presumably
})

DefineLanguageWord("Hameide", { -- source also gives the alternative forms "hameede", "ameide" and "hameye"; Source: http://www.cnrtl.fr/definition/Amad%E9
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {"Bar", "Closing Bar", "Ram", "Yard", "Farm"}, -- source gives the French "barre, barre de fermeture, barreau, bélier" and "cour, ferme" as the meaning
	DerivesFrom = {"old-frankish", "noun", "Haimithi"} -- apparently
})

DefineLanguageWord("Herde", { -- Source: Sean Crist, "An Analysis of *z loss in West Germanic", 2002, p. 8.
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {"Flax Fiber"},
	DerivesFrom = {"proto-germanic", "noun", "Hazdaz"},
	Uncountable = true -- as a material, it is likely to be uncountable
})

DefineLanguageWord("Mersch", { -- source also gives the alternative form "Maersch"; Source: http://www.cnrtl.fr/definition/marais
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {"Meadow", "Marshland"}, -- source gives the French "pré; terrain marécageux"
	DerivesFrom = {"old-frankish", "noun", "Marisk"} -- presumably
})

DefineLanguageWord("Mese", { -- Source: http://www.cnrtl.fr/definition/m%C3%A9sange
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"old-frankish", "noun", "Meisinga"} -- presumably
})

DefineLanguageWord("Weerwolf", { -- source also gives the alternative form "Werwolf"; Source: http://www.cnrtl.fr/definition/garou
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {},
	DerivesFrom = {"old-frankish", "noun", "Werwolf"}
})

DefineLanguageWord("Wijngaert", { -- uses the word "Gaert" as a compound element; Source: http://www.cnrtl.fr/definition/jardin
	Language = "middle-dutch",
	Type = "noun",
	Meanings = {"Vineyard"} -- source gives the French "vignoble" as the meaning
})
