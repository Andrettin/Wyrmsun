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

DefineCharacter("Eymund", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Eymund", -- king of Holmgarth (i.e. Russia); described as "the strongest of men"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- accurate?
	Trait = "upgrade-strong",
	ProvinceOfOrigin = "Russia",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Halfdan the Old Skjoldung", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 221-223.
	Name = "Halfdan", -- mythical king of Denmark; had an ice-cold sword; was strengthened by king Eymund of Holmgarth and slew Sigtrygg with the ice-cold sword; married Eymund's daughter Almveig
	NameElements = {
		"compound", "prefix", "old-norse", "adjective", "Halfr", -- presumably
--		"compound", "suffix", -- ?
	},
	ExtraName = "the Old",
	FamilyName = "Skjoldung", -- the text gives Halfdan the Old both as "the foremost of the Skjoldungs", and as a progenitor of the Skjoldungs (along with the Skilfings, Othlings and Ynglings) himself
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since he is a Danish king
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Almveig", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Almveig", -- wife of Halfdan the Old Skjoldung; also known as Alvig; bore Halfdan the Old eighteen sons (nine of them being in a single birth); the nine who were the result of a single birth were all slain, while the other nine are held to be the ancestors of the most famous heroes in Norse myths
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse", -- accurate?
	ProvinceOfOrigin = "Russia", -- since her father was king there
--	Year = ?,
--	DeathYear = ?,
	Father = "Eymund"
})

DefineCharacter("Authi", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 221-222.
	Name = "Authi", -- son of Halfdan the Old, from whom the Othlings spring
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since his father was king of Denmark
--	Year = ?,
--	DeathYear = ?,
	Father = "Halfdan the Old Skjoldung",
	Mother = "Almveig" -- presumably, since she was married to Halfdan the Old
})

DefineCharacter("Ali", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Ali",
	NameElements = {
		"word", "old-norse", "verb", "present", "Ali" -- presumably; also, not certain if that is the present participle of the verb, or another participle form
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since his father was king of Denmark
--	Year = ?,
--	DeathYear = ?,
	Father = "Halfdan the Old Skjoldung",
	Mother = "Almveig" -- presumably, since she was married to Halfdan the Old
})

DefineCharacter("Sigtrygg", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Sigtrygg", -- Halfdan the Old slew him with an ice-cold sword
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "Sigr", -- presumably
		"compound", "suffix", "old-norse", "adjective", "Tryggr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- possible, since Halfdan the Old was the king of Denmark
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Dag", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Dag", -- ancestor of the Döglings; married to Thora
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since his father was king of Denmark
--	Year = ?,
--	DeathYear = ?,
	Father = "Halfdan the Old Skjoldung",
	Mother = "Almveig" -- presumably, since she was married to Halfdan the Old
})

DefineCharacter("Thora", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Thora", -- married to Dag, and bore him "the bravest of fighters"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since her husband's father was king of Denmark
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Frathmar Dögling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Frathmar",
	FamilyName = "Dögling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
--	Year = ?,
--	DeathYear = ?,
	Father = "Dag",
	Mother = "Thora"
})

DefineCharacter("Gyrth Dögling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Gyrth",
	FamilyName = "Dögling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
--	Year = ?,
--	DeathYear = ?,
	Father = "Dag",
	Mother = "Thora"
})

DefineCharacter("Frekis Dögling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Frekis",
	FamilyName = "Dögling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
--	Year = ?,
--	DeathYear = ?,
	Father = "Dag",
	Mother = "Thora"
})

DefineCharacter("Frekis II Dögling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Frekis",
	ExtraName = "II", -- to differentiate him from his brother
	FamilyName = "Dögling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
--	Year = ?,
--	DeathYear = ?,
	Father = "Dag",
	Mother = "Thora"
})

DefineCharacter("Am Dögling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Am",
	FamilyName = "Dögling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
--	Year = ?,
--	DeathYear = ?,
	Father = "Dag",
	Mother = "Thora"
})

DefineCharacter("Jofurmar Dögling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Jofurmar",
	FamilyName = "Dögling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
--	Year = ?,
--	DeathYear = ?,
	Father = "Dag",
	Mother = "Thora"
})

DefineCharacter("Alf the Old Dögling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Alf", -- apparently isn't the same Alf the Old who is father of Instein, since they have different fathers themselves
	NameElements = {
		"word", "old-norse", "noun", "Alfr" -- presumably
	},
	ExtraName = "the Old",
	FamilyName = "Dögling",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Zealand", -- since his ancestor was king of Denmark
--	Year = ?,
--	DeathYear = ?,
	Father = "Dag",
	Mother = "Thora"
})

DefineCharacter("Svan the Red", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Svan",
	ExtraName = "the Red",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- one of his descendants was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Saefari", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Saefari",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- one of his descendants was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Svan the Red"
})

DefineCharacter("Ulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Ulf",
	NameElements = {
		"word", "old-norse", "noun", "Ulfr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- his grandson was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Saefari"
})

DefineCharacter("Alf the Old", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Alf",
	NameElements = {
		"word", "old-norse", "noun", "Alfr" -- presumably
	},
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- his son was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Ulf"
})

DefineCharacter("Instein", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 100-101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Instein", -- one of the warriors of King Half of Horthaland
	NameElements = {
--		"compound", "prefix" -- ?
		"compound", "suffix", "old-norse", "noun", "Steinn" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland",
--	Year = ?,
--	DeathYear = ?,
	Father = "Alf the Old"
})

DefineCharacter("Saekonung", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101.
	Name = "Saekonung",
	NameElements = {
--		"compound", "prefix", -- ?
		"compound", "suffix", "old-norse", "noun", "Konungr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Svava", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101.
	Name = "Svava",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Klypp", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Klypp",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Ketil Hortha-Kari", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Ketil", -- married to Hildigun; the semi-mythical Ketil Hortha-Kari, ancestor of many Icelandic families
	ExtraName = "Hortha-Kari",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Klypp"
})

DefineCharacter("Hildigun", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 223.
	Name = "Hildigun", -- married to Ketil; also known as Hildiguth
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Saekonung",
	Mother = "Svava"
})

DefineCharacter("Frodi", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Frodi",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?
})
-- "Frodi came before Kari" is said later; could this be the same Frodi as this one? The Kari here is perhaps Ketil Hortha-Kari, but he came before this Frodi, not after; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 223-224.

DefineCharacter("Friaut", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Friaut",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- a kinsman was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Ketil Hortha-Kari",
	Mother = "Hildigun"
})

DefineCharacter("Hledis", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Hledis", -- priestess; adorned with golden bracelets
	Gender = "female",
	Type = "unit-teuton-archer", -- should be priestess
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- her husband was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Frodi",
	Mother = "Friaut"
})

DefineCharacter("Ottar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 100-101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Ottar", -- in the Norse myths, human lover of the goddess Freya; made a bet with Argantyr for who had the better lineage
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- his father was a warrior of the king of Horthaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Instein",
	Mother = "Hledis"
})

DefineCharacter("Nokkvi", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Nokkvi",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Nanna", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Nanna", -- her son married Instein's sister
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Nokkvi"
})

DefineCharacter("Skekil", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Skekil", -- also known as Skekkil
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Olmod", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Olmod", -- married to Skurhold; also known as Olmoth
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Ketil Hortha-Kari"
})

DefineCharacter("Skurhold", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 101-102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Skurhold", -- married to Olmod; also known as Skurhild
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Skekil"
})

DefineCharacter("Isulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Isulf", -- also known as Isolf
	NameElements = {
--		"compound", "prefix", -- ?
		"compound", "suffix", "old-norse", "noun", "Ulfr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Olmod",
	Mother = "Skurhold" -- presumably, since she was the wife of his father
})

DefineCharacter("Osulf", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Osulf", -- also known as Osolf
	NameElements = {
--		"compound", "prefix", -- ?
		"compound", "suffix", "old-norse", "noun", "Ulfr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?,
	Father = "Olmod",
	Mother = "Skurhold" -- presumably, since she was the wife of his father
})

DefineCharacter("Hild", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 223-224.
	Name = "Hild",
	NameElements = {
		"word", "old-norse", "noun", "Hildr" -- presumably
	},
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Half", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 101; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 222.
	Name = "Half", -- also known as Hoalf; king of Horthaland (the Halfsrekkar); Instein was one of his warriors
	NameElements = {
		"word", "old-norse", "adjective", "Halfr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland",
--	Year = ?,
--	DeathYear = ?,
	Mother = "Hild"
})

DefineCharacter("Arngrim", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102.
	Name = "Arngrim", -- married to Eyfura
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- his sons were born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Eyfura", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102.
	Name = "Eyfura", -- married to Arngrim
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- her sons were born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Hervard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 225.
	Name = "Hervard", -- berserk; born in the island of Bolmsö long before Ottar's time; also known as Hervarth
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Hjorvard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", pp. 225, 227.
	Name = "Hjorvard", -- berserk; born in the island of Bolmsö long before Ottar's time; also known as Hjorvarth
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Hrani", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 225.
	Name = "Hrani", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Argantyr", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 225.
	Name = "Argantyr", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Bui", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 225.
	Name = "Bui", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Brami", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 225.
	Name = "Brami", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Barri", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 225.
	Name = "Barri", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Reifnir", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 225.
	Name = "Reifnir", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Tind", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 225.
	Name = "Tind", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Tyrfing", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 225.
	Name = "Tyrfing", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Hadding", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 225.
	Name = "Hadding", -- berserk; born in the island of Bolmsö long before Ottar's time
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Hadding II", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 225.
	Name = "Hadding", -- berserk; born in the island of Bolmsö long before Ottar's time
	ExtraName = "II", -- to differentiate from his brother of the same name
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- Bolmsö is an island off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Arngrim",
	Mother = "Eyfura"
})

DefineCharacter("Hvedna", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 227.
	Name = "Hvedna", -- wife of king Halfdan of Denmark (likely to not be Halfdan the Old, who had another wife)
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- her father (if indeed the same as the previously-mentioned berserk) was born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?,
	Father = "Hjorvard" -- her father was called Hjorvard; presumably the same berserk mentioned previously
})

DefineCharacter("Haki", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 227.
	Name = "Haki", -- the best of Hvedna's sons
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- his grandfather (if indeed the same as the previously-mentioned berserk) was born in the island of Bolmsö off Smaland
--	Year = ?,
--	DeathYear = ?,
	Mother = "Hvedna"
})

DefineCharacter("Hrorek the Ring Giver", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 227.
	Name = "Hrorek", -- also known as Hrörek; was killed by his father-in-law Ivar
	ExtraName = "the Ring Giver", -- or "Ring-Giver"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- his father-in-law was king of Sweden
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Ivar", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 227.
	Name = "Ivar", -- king of Sweden
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Aud the Profound", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 227.
	Name = "Aud", -- wife of Hrorek the Ring Giver; after her father Ivar killed her husband, she fled with her son Harald to Russia and married King Rathbard
	ExtraName = "the Profound",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- her father was king of Sweden
--	Year = ?,
--	DeathYear = ?,
	Father = "Ivar"
})

DefineCharacter("Harald War Tooth", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 227.
	Name = "Harald", -- had a warring career in Norway; died in Bravalla-field at the hands of his nephew, Sigurd Ring (son of Randver)
	ExtraName = "War Tooth", -- or "Battle-Tooth"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Sweden", -- his grandfather was king of Sweden
--	Year = ?,
--	DeathYear = ?,
	Father = "Hrorek the Ring Giver",
	Mother = "Aud the Profound"
})

DefineCharacter("Rathbard", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 227.
	Name = "Rathbard", -- king
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- correct?
	ProvinceOfOrigin = "Russia", -- from Russia
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Randver", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 227.
	Name = "Randver",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- correct?
	ProvinceOfOrigin = "Russia", -- his father was a king from Russia
--	Year = ?,
--	DeathYear = ?,
	Father = "Rathbard",
	Mother = "Aud the Profound"
})

DefineCharacter("Sigurd Ring", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 227.
	Name = "Sigurd",
	NameElements = {
		"compound", "prefix", "old-norse", "noun", "Sigr" -- presumably
--		"compound", "suffix" -- ?
	},
	ExtraName = "Ring",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- correct?
	ProvinceOfOrigin = "Russia", -- his grandfather was a king from Russia
--	Year = ?,
--	DeathYear = ?,
	Father = "Randver"
})

DefineCharacter("Skelfir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 221.
	Name = "Skelfir", -- a mythical king in "the East", from whom the Skilfings spring
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Helgi Hundingsbane Ylfing", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 221.
	Name = "Helgi",
	ExtraName = "Hundingsbane",
	FamilyName = "Ylfing",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Gautrek", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Gautrek",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- his son was king of Gautland
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Hrolf the Old", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Hrolf", -- King Hrolf Gautreksson of Gautland, also known as Hrolf the Old
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland",
--	Year = ?,
--	DeathYear = ?,
	Father = "Gautrek"
})

DefineCharacter("Gunnar the Bulwark", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Gunnar",
	ExtraName = "the Bulwark",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Thorkel", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Thorkel",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- his son was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Grim the Hardy", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Grim",
	ExtraName = "the Hardy",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?,
	Father = "Thorkel"
})

DefineCharacter("Thorir the Iron-Shield", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Thorir",
	ExtraName = "the Iron-Shield",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Ulf the Gaper", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Ulf",
	NameElements = {
		"word", "old-norse", "noun", "Ulfr" -- presumably
	},
	ExtraName = "the Gaper",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Brodd", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Brodd",
	NameElements = {
		"word", "old-norse", "noun", "Broddr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Hörvir", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", p. 224.
	Name = "Hörvir",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Gotaland", -- was in Hrolf the Old's household
--	Year = ?,
--	DeathYear = ?
})

DefineCharacter("Swerre", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 115.
	Name = "Swerre", -- king (presumably) of Norway
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- accurate? either way this is the only Norwegian province in the game, so it makes sense to set it as the province of origin
	Year = 1177, -- reign began
	DeathYear = 1203 -- reign ended
})

DefineCharacter("Magnus the Saint", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 125, 128.
	Name = "Magnus", -- Earl (presumably) of Orkney, his sister was married to Koll; in his youth carried the dishes to the royal table
	ExtraName = "the Saint",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Orkney", -- presumably
	Year = 1129 - 30, -- estimated
	DeathYear = 1129 -- presumably
})

DefineCharacter("Koll", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 125.
	Name = "Koll", -- husband of the sister of Earl Magnus the Saint
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Orkney", -- since his son was Earl of Orkney
	Year = 1129 - 30, -- estimated
	DeathYear = 1129 -- estimated
})

DefineCharacter("Kala", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 125.
	Name = "Kala", -- Earl of Orkney; was made earl under the name of Earl Rognvald
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Orkney", -- presumably
	Year = 1129, -- was made Earl of Orkney
	DeathYear = 1129 + 30, -- estimated
	Father = "Koll"
})

DefineCharacter("Arnold", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Arnold", -- Bishop of Greenland
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "norse", -- presumably
	ProvinceOfOrigin = "Scania", -- presumably, since he was ordained there
	Year = 1121, -- ordained Bishop of Greenland by the Archbishop of Lund (in Scania)
	DeathYear = 1121 + 30 -- estimated
})

DefineCharacter("Hakon", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Hakon", -- his son was King of Norway, so presumably he was too
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- only province implemented that is part of Norway; but Akershus/Oslo would be a better fit: since we only know he came from Norway, it makes sense to set the capital as his province of origin
	Year = 1261 - 30, -- estimated
	DeathYear = 1261 -- estimated
})

DefineCharacter("Hakon Hakonson", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Hakon", -- King of Norway
	ExtraName = "Hakonson", -- to differentiate his full name from his father's
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse",
	ProvinceOfOrigin = "Hordaland", -- only province implemented that is part of Norway; but Akershus/Oslo would be a better fit: since we only know he came from Norway, it makes sense to set the capital as his province of origin
	Year = 1261, -- annexed the Norse settlements in Greenland to Norway in 1261 AD
	DeathYear = 1261 + 30, -- estimated
	Father = "Hakon"
})

DefineCharacter("Alf", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Alf", -- also known as Alfus; officiated in Greenland; presumably was Bishop of Greenland
	NameElements = {
		"word", "old-norse", "noun", "Alfr" -- presumably
	},
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "norse", -- presumably
	ProvinceOfOrigin = "Greenland", -- possibly he was from elsewhere, but we have no information about that
	Year = 1378 - 30, -- estimated
	DeathYear = 1378 -- died in Greenland
})

DefineCharacter("Margaret", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 146-147.
	Name = "Margaret", -- Queen of Denmark, Sweden and Norway
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
--	ProvinceOfOrigin = "?",
	Year = 1387, -- the three northern crowns devolved to her in 1387 AD
	DeathYear = 1387 + 30 -- estimated
})

DefineCharacter("Henry", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Henry", -- appointed Bishop of Greenland, but never arrived there
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "norse", -- presumably
--	ProvinceOfOrigin = "?",
	Year = 1389, -- appointed Bishop of Greenland
	DeathYear = 1389 + 30 -- estimated
})

DefineCharacter("Askil", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Askil", -- appointed Bishop of Greenland to succeed Henry in case he was dead; never reached Greenland
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "norse", -- presumably
--	ProvinceOfOrigin = "?",
	Year = 1406, -- appointed Bishop of Greenland to succeed Henry in case he was dead
	DeathYear = 1406 + 30 -- estimated
})

DefineCharacter("Andreas", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Andreas",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "norse", -- presumably
	ProvinceOfOrigin = "Greenland", -- accurate? his son was Bishop of Greenland
	Year = 1409 - 30, -- estimated
	DeathYear = 1409 -- estimated
})

DefineCharacter("Endrede", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 142.
	Name = "Endrede", -- Bishop of Greenland
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "norse", -- presumably
	ProvinceOfOrigin = "Greenland", -- accurate?
	Year = 1409, -- executed a marriage settlement at Garda (the episcopal seat of Greenland) in 1409
	DeathYear = 1409 + 30, -- estimated
	Father = "Andreas"
})
