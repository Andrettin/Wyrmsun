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

DefineCharacter("Ælle", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Ælle",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "York",
	DeathYear = 588, -- died
	HistoricalRulerships = {
		0, 588, "teuton", "Deira" -- first recorded king of Deira
	}
})

DefineCharacter("Æthelric", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Æthelric",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Northumberland",
	Year = 588, -- according to tradition, Æthelric acquired the kingdom of Deira upon Ælle's death in 588 AD
	HistoricalRulerships = {
		588, 0, "teuton", "Bernicia" -- king of Bernicia
	}
})

DefineCharacter("Æthelfrith", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
	Name = "Æthelfrith",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "Northumberland",
	Year = 593, -- beginning of reign
	DeathYear = 616, -- end of reign
	Father = "Æthelric",
	HistoricalRulerships = {
		593, 616, "teuton", "Bernicia" -- king of Bernicia
	}
	-- married the daughter of the Deiran king Ælle
})

DefineCharacter("Ethelred", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 127.
	Name = "Ethelred", -- did the massacre of the Danes in 1002 AD
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton", -- should be English?
	ProvinceOfOrigin = "England", -- presumably
	Year = 1002 -- massacred the Danes
})

DefineCharacter("Aldhelm", { -- Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 98.
	Name = "Aldhelm", -- composed the "Helleborus" riddle
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be something more appropriate for the composer of a riddle?
	Civilization = "teuton", -- Anglo-Saxon
	ProvinceOfOrigin = "England", -- presumably
	DeathYear = 709 -- died in 709/710
})

DefineCharacter("Bede", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 34.
	Name = "Bede",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "teuton",
	ProvinceOfOrigin = "England",
	Year = 731, -- wrote "Historia Ecclesiastica Venerabilis Bedae" around 731 AD
	AuthoredWorks = {"upgrade-work-historia-ecclesiastica-venerabilis-bedae"}
})

DefineCharacter("Nicolas Breakspear", { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 126.
	Name = "Nicolas", -- son of a peasant employed in the Benedictine monastery of Saint Albans in Hertfordshire; was educated by the monks there; later became a cardinal and was sent on a mission to Norway to settle the Church there; was elected Pope in 1154 AD under the title of Hadrian IV
	ExtraName = "Breakspear", -- I assume this isn't his family name, but a nickname or something of the sort?
	Gender = "male",
	Type = "unit-teuton-swordsman", -- should be priest
	Civilization = "teuton", -- should be English
	ProvinceOfOrigin = "England", -- Hertfordshire (since his father worked there, he's probably from there)
	Year = 1154 -- elected Pope
})
