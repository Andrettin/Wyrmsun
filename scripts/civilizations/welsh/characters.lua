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
--      (c) Copyright 2016-2017 by Andrettin
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

DefineCharacter("pwyll", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 9.
	Name = "Pwyll",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Faction = "dyfed",
	HistoricalTitles = {
--		"head-of-state", 0, 0, "welsh", "dyfed" -- prince of Dyfed, lord of the seven Cantrefis of Dyfed
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "dyfed") then
			return true
		end
		return false
	end
	-- married to Rhiannon
})

DefineCharacter("hefeydd-the-old", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 20.
	Name = "Hefeydd",
	ExtraName = "the Old",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh"
})

DefineCharacter("rhiannon", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 20.
	Name = "Rhiannon",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "welsh",
	Father = "hefeydd-the-old"
	-- married to Pwyll
})

DefineCharacter("clud", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 21.
	Name = "Clud",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh"
})

DefineCharacter("gwawl", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 21.
	Name = "Gwawl",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Father = "clud"
})

DefineCharacter("teyrnon-twryf-liant", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 29.
	Name = "Teyrnon",
	ExtraName = "Twryf Liant",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	ProvinceOfOrigin = "Wales", -- Gwent Is Coed
	HistoricalTitles = {
		"head-of-state", 0, 0, "welsh", "gwent-is-coed" -- lord of Gwent Is Coed
	}
})

DefineCharacter("pendaran-dyfed", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 21.
	Name = "Pendaran",
	ExtraName = "Dyfed",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Faction = "dyfed",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "dyfed") then
			return true
		end
		return false
	end
})

DefineCharacter("pryderi", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 31, 33-35.
	Name = "Pryderi", -- also known as "Gwri"
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Faction = "dyfed",
	HairVariation = "blond-hair", -- had golden yellow hair
	Father = "pwyll",
	Mother = "rhiannon",
	HistoricalTitles = {
		"head-of-state", 0, 0, "welsh", "dyfed" -- prince of Dyfed
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "dyfed") then
			return true
		end
		return false
	end
	-- married to Cigfa
})

DefineCharacter("casnar-wledig", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 35.
	Name = "Casnar",
	ExtraName = "Wledig",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh"
})

DefineCharacter("gloyw-wallt-lydan", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 35.
	Name = "Gloyw",
	ExtraName = "Wallt Lydan",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Father = "casnar-wledig"
})

DefineCharacter("gwyn-gohoyw", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 35.
	Name = "Gwyn",
	ExtraName = "Gohoyw",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Father = "gloyw-wallt-lydan"
})

DefineCharacter("cigfa", { -- Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 35.
	Name = "Cigfa",
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "welsh",
	Father = "gwyn-gohoyw"
	-- wife of Pryderi
})

DefineCharacter("gildas", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 2.
	Name = "Gildas",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "welsh", -- British monk
	Date = 547, -- wrote "De Excidio et Conquestu Britanniae" a bit before 547
	Deities = {"christian-god"},
	AuthoredWorks = {"upgrade-work-de-excidio-et-conquestu-britanniae"}
})

DefineCharacter("maelgwn", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "Maelgwn", -- Maelgwn of Gwynedd
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Faction = "gwynedd",
	DeathDate = 547,
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "gwynedd") then
			return true
		end
		return false
	end
})

DefineCharacter("dutigern", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
	Name = "dutigern", -- a British king who fought against king Ida of Bernicia
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh"
	-- was a contemporary of Maelgwn
})

DefineCharacter("cynan", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
	Name = "Cynan",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Faction = "powys" -- presumably
})

DefineCharacter("solomon-of-powys", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 78.
	Name = "Solomon",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Faction = "powys",
	Father = "cynan",
	Date = 613, -- at some point between 613 and 616, he was defeated by the Bernicians at Chester
	HistoricalTitles = {
		"head-of-state", 613, 0, "welsh", "powys" -- king of Powys; at some point between 613 and 616, he was defeated by the Bernicians at Chester
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "powys") then
			return true
		end
		return false
	end
})

DefineCharacter("cadwallon", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 80-81.
	Name = "Cadwallon",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Faction = "gwynedd",
	Date = 632,
	DeathDate = 633, -- killed by Oswald of Bernicia in 633
	ViolentDeath = true,
	HistoricalTitles = {
		"head-of-state", 632, 0, "welsh", "gwynedd" -- king of Gwynedd; in 632 AD attacked Northumbria, and fought Edwin in Hatfield Chase, ending with the latter's death and that of Edwin's son Osfrith
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "gwynedd") then
			return true
		end
		return false
	end
})

DefineCharacter("cadafael", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 83-84.
	Name = "Cadafael", -- Cadafael of Gwynedd
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Faction = "gwynedd",
	Date = 654, -- went with Penda to attack Oswiu of Bernicia
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "gwynedd") then
			return true
		end
		return false
	end
})

DefineCharacter("certic", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
	Name = "Certic",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "welsh",
	Faction = "elmet",
	-- was a contemporary of Edwin of Deira, who conquered his kingdom
	HistoricalTitles = {
		"head-of-state", 0, 0, "welsh", "elmet" -- king of Elmet
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "elmet") then
			return true
		end
		return false
	end
})