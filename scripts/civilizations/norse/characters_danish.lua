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
--      (c) Copyright 2015-2017 by Andrettin
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

DefineCharacter("fridfrode-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 226-227.
	Name = "Fridfrode",
	FamilyName = "Skjoldung", -- presumably
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	-- ruled in Leidre
	-- he was a friend of Fiölner's
	-- described as brave
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe"
	}
})

DefineCharacter("beow-skjoldung", { -- Source: Stephen Mitchell, "Beowulf", 2017, pp. 3, 5.
	Name = "Beow", -- name in Old English
	FamilyName = "Skjoldung", -- Scylding
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe",
	-- Beow is Scyld's son and successor, and father of Healfdene in Beowulf; since Healfdene/Halfdan has different ancestry in the Heimskringla, here we put Beow as the father of Rig (the earliest person in Halfdan's genealogy in the Heimskringla) and as a descendant of Skjöldr/Scyld
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe"
	}
})

DefineCharacter("rig-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Rig",
	FamilyName = "Skjoldung",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe",
	Father = "beow-skjoldung", -- Beow is Scyld's son and successor, and father of Healfdene in Beowulf; since Healfdene/Halfdan has different ancestry in the Heimskringla, here we put Beow as the father of Rig (the earliest person in Halfdan's genealogy in the Heimskringla) and as a descendant of Skjöldr/Scyld
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe"
	}
})

DefineCharacter("daup-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Daup",
	FamilyName = "Skjoldung",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe",
	Father = "rig-skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe"
	}
})

DefineCharacter("dan-mikillati-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Dan",
	ExtraName = "Mikillati",
	FamilyName = "Skjoldung",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "daup-skjoldung", -- presumably, since Dan Mikillati was Drott's brother, and she was a daughter of Daup
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe"
	}
})

DefineCharacter("drott-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 231.
	Name = "Drott",
	FamilyName = "Skjoldung",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "dane-tribe", -- apparently from Denmark
	Father = "daup-skjoldung", 
})

DefineCharacter("halfdan-the-old-skjoldung", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 221-223.
	Name = "Halfdan", -- mythical king of Denmark; had an ice-cold sword; was strengthened by king Eymund of Holmgarth and slew Sigtrygg with the ice-cold sword; married Eymund's daughter Almveig
	ExtraName = "the Old",
	FamilyName = "Skjoldung", -- the text gives Halfdan the Old both as "the foremost of the Skjoldungs", and as a progenitor of the Skjoldungs (along with the Skilfings, Othlings and Ynglings) himself
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe",
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe" -- Danish king
	}
})

DefineCharacter("authi", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 221-222.
	Name = "Authi", -- son of Halfdan the Old, from whom the Othlings spring
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe", -- his father was king of Denmark
	Father = "halfdan-the-old-skjoldung",
	Mother = "almveig" -- presumably, since she was married to Halfdan the Old
})

DefineCharacter("ali", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 222.
	Name = "Ali",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe",
	-- his father was king of Denmark
	Father = "halfdan-the-old-skjoldung",
	Mother = "almveig" -- presumably, since she was married to Halfdan the Old
})

DefineCharacter("dag-the-great", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 235.
	Name = "Dag", -- ancestor of the Daglings; married to Thora
	ExtraName = "the Great",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe", -- his father was king of Denmark
	Father = "halfdan-the-old-skjoldung",
	Mother = "almveig", -- presumably, since she was married to Halfdan the Old
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe" -- said to be a king in the Ynglinga Saga, and his ancestor was king of Denmark
	}
})

DefineCharacter("thora", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Thora", -- married to Dag, and bore him "the bravest of fighters"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "dane-tribe" -- her husband's father was king of Denmark
})

DefineCharacter("frathmar-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Frathmar",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe", -- his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("gyrth-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Gyrth",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe", -- his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("frekis-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Frekis",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe", -- his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("frekis-ii-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Frekis",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe", -- his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("am-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Am",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe", -- his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("jofurmar-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Jofurmar",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe", -- his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("alf-the-old-dagling", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 223.
	Name = "Alf", -- apparently isn't the same Alf the Old who is father of Instein, since they have different fathers themselves
	ExtraName = "the Old",
	FamilyName = "Dagling",
	Gender = "male",
	Type = "unit-norse-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe", -- his ancestor was king of Denmark
	Father = "dag-the-great",
	Mother = "thora"
})

DefineCharacter("dagrid-dagling", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 235.
	Name = "Dagrid",
	FamilyName = "Dagling",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "dane-tribe", -- presumably, since her father's father was a Danish king
	Father = "dag-the-great",
	Mother = "thora" -- presumably, since Dag was her father and Thora was the mother of his other children
})

DefineCharacter("frode-mikillati-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Frode",
	ExtraName = "Mikillati",
	FamilyName = "Skjoldung",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "dan-mikillati-skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe"
	}
	-- described as peace-loving
})

DefineCharacter("halfdan-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Halfdan",
	-- called Healfdene in Beowulf; Source: Stephen Mitchell, "Beowulf", 2017, p. 5.
	FamilyName = "Skjoldung",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "frode-mikillati-skjoldung", -- as given by the Heimskringla
	-- in Beowulf, he was the son and successor of the Danish king Beow; Source: Stephen Mitchell, "Beowulf", 2017, p. 5.
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe" -- ruled jointly with his brother Fridleif
	}
	-- described as a great warrior
})

DefineCharacter("fridleif-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Fridleif",
	FamilyName = "Skjoldung",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "frode-mikillati-skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe" -- ruled jointly with his brother Halfdan
	}
	-- described as a great warrior
})

DefineCharacter("ole-the-bold-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 239.
	Name = "Ole",
	ExtraName = "the Bold",
	FamilyName = "Skjoldung",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Father = "fridleif-skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "swede-tribe" -- ruled over the Swedes at Upsal for 25 years
	}
	-- was killed by Starkad the Old (probably the same as the Starkod the Old previously mentioned)
})

DefineCharacter("frode-the-bold-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 241-243.
	Name = "Frode",
	ExtraName = "the Bold",
	FamilyName = "Skjoldung",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	-- helped Egil Yngling to defeat Tunne's forces
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe"
	}
})

DefineCharacter("vatte", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 243.
	Name = "Vätte",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe"
	-- Vätte was an earl appointed by Frode the Bold to defend Denmark while he invaded Sweden
})

DefineCharacter("faste", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 243.
	Name = "Faste",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe"
	-- Faste was an earl appointed by Frode the Bold to defend Denmark while he invaded Sweden
})

DefineCharacter("heorogar-skjoldung", { -- Source: Stephen Mitchell, "Beowulf", 2017, p. 5.
	Name = "Heorogar", -- name in Old English
	FamilyName = "Skjoldung", -- Scylding
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe",
	Father = "halfdan-skjoldung", -- eldest son of the Danish king Healfdene
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe"
	}
})

DefineCharacter("hrothgar-skjoldung", { -- Source: Stephen Mitchell, "Beowulf", 2017, p. 5.
	Name = "Hrothgar", -- name in Old English
	FamilyName = "Skjoldung", -- Scylding
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe",
	Father = "halfdan-skjoldung", -- second son of the Danish king Healfdene
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe"
	}
})

DefineCharacter("helge-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 244-245.
	Name = "Helge",
	-- called "Halga the Good" in Beowulf; Source: Stephen Mitchell, "Beowulf", 2017, p. 5.
	ExtraName = "the Good",
	FamilyName = "Skjoldung",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe",
	Father = "halfdan-skjoldung", -- king Halfdan of Denmark was his father in the Heimskringla
	-- in Beowulf, he is the third son of the Danish king Healfdene; Source: Stephen Mitchell, "Beowulf", 2017, p. 5.
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe"
	}
})

DefineCharacter("rolf-krake-skjoldung", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 244-245.
	Name = "Rolf",
	ExtraName = "Krake",
	FamilyName = "Skjoldung",
	Gender = "male",
	Type = "unit-norse-heroic-swordsman",
	Civilization = "norse",
	Faction = "dane-tribe",
	Father = "helge-skjoldung",
	HistoricalTitles = {
		"head-of-state", 0, 0, "dane-tribe"
	}
})

DefineCharacter("margaret", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 146-147.
	Name = "Margaret", -- Queen of Denmark, Sweden and Norway
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "norse",
	Faction = "denmark",
	Date = 1387, -- the three northern crowns devolved to her in 1387 AD
	HistoricalTitles = {
		"head-of-state", 1387, 0, "denmark", -- the three northern crowns devolved to her in 1387 AD
		"head-of-state", 1387, 0, "sweden",
		"head-of-state", 1387, 0, "norway"
	}
})
