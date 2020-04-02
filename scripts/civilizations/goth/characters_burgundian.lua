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
--      (c) Copyright 2016-2020 by Andrettin
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

DefineCharacter("gibica", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 91; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 226.
	Name = "Gibica", -- known as Gjuki in the Norse myths; married to Grimhild
	Gender = "male",
	Type = "unit-gothic-horse-lord",
	Civilization = "goth",
	Faction = "burgundian-tribe",
	DeathDate = 411,
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 0, 411, "burgundian-tribe"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundian-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("grimhild", { -- Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 226, 519.
	Name = "Grimhild", -- married to Gibica/Gjuki; also known as Kriemhild
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "goth",
	Faction = "burgundian-tribe",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundian-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("gundahar", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 91-94; Source: Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 226; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
	Name = "Gundahar", -- also known as Gunnar in Norse myths, as Günter in the Nibelungenlied, and as Gunthere in the Anglo-Saxon poem Widsith
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "burgundy",
	Trait = "upgrade-generous", -- in the Anglo-Saxon poem "Widsith", Gundahar (Gunthere) gave the poet "a shining treasure" for his songs
	StartDate = 406, -- Gundahar and his father Gibica brought the Burgundians over the Rhine in 406/407 AD
	DeathDate = 437, -- invasion of Gundahar's kingdom in 437 AD by Attila's Huns
	-- Fichtner gives him as dying in 436, however
	ViolentDeath = true, -- presumably
	Father = "gibica",
	Mother = "grimhild",
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 411, 437, "burgundy" -- Kingdom of the Burgundians established by Gundahar (a Burgundian tribal chief) in 411 AD, with its center in Borbetomagus (Worms); Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 91-93.
	},
	-- became Gunnar/Gunther in the myths; as given by Fichtner
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundian-tribe" or GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("glaumvor", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 502.
	Name = "Glaumvor", -- name means "The Merry"; the wife of Gundahar/Gunnar in the Norse myths; "knew well to care for the needs of the guests"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "goth",
	Faction = "burgundy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundian-tribe" or GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("gudrun", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94; Source: Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 226.
	Name = "Gudrun", -- Gundahar's sister in the Norse myths, in which she would first marry Siegfried (Sigurd), and then Attila (Atli); also known as Kriemhild in the Nibelungenlied
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "goth",
	Faction = "burgundy",
	Father = "gibica",
	Mother = "grimhild",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundian-tribe" or GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("sarwa", { -- the Sörli of Norse mythology; Sörli is a reflex of Gothic "sarwa"; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 118.
	Name = "Sarwa",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "burgundy",
	Mother = "gudrun", -- son of Gudrun
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundian-tribe" or GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("hogni", { -- Source: Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 226.
	Name = "Hogni", -- brother of Gundahar/Gunnar in the Norse myths
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "burgundy",
	Father = "gibica",
	Mother = "grimhild",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundian-tribe" or GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("kostbera", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 502-503.
	Name = "Kostbera", -- wife of Hogni; name means "The Giver of Food"
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "goth",
	Faction = "burgundy",
	Trait = "upgrade-wise", -- kind; wise and cunning in rune-craft
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundian-tribe" or GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("orkning", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 509-510.
	Name = "Orkning", -- Kostbera's brother
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "burgundy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundian-tribe" or GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("snaevar", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 509, 517.
	Name = "Snaevar",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "burgundy",
	Father = "hogni",
	Mother = "kostbera",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("solar", { -- Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 509, 517.
	Name = "Solar",
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "burgundy",
	Father = "hogni",
	Mother = "kostbera",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("gotthorm", { -- Source: Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 102; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 226, 533.
	Name = "Gotthorm", -- half-brother of Gundahar/Gunnar, Hogni and Gudrun in the Norse myths; his father was not Gibica/Gjuki (who was thus his step-father); killed Sigurd at Brynhild's request
	Gender = "male",
	Type = "unit-teuton-swordsman",
	Civilization = "goth",
	Faction = "burgundy",
	Mother = "grimhild",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundian-tribe" or GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("gundioc", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 94-96; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
	Name = "Gundioc", -- Burgundian king after Gundahar; also known as Gunderic; as given by Davies
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "burgundy",
	StartDate = 437, -- Gundioc became king of the Burgundians in 437 AD; as given by both Davies and Fichtner
	DeathDate = 474, -- end of reign; as given by both Davies and Fichtner
	Father = "gundahar", -- from Gibica's line (so presumably a child of Gundahar's); as given by Davies
	Mother = "glaumvor", -- if he was a child of Gundahar's, then his mother would likely be Glaumvor
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 437, 474, "burgundy"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("chilperic", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 96.
	Name = "Chilperic", -- Burgundian king after Gundioc
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "burgundy",
	StartDate = 474, -- beginning of Chilperic's reign over the Burgundians in 474 AD; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 96.
	DeathDate = 480, -- end of reign
	Father = "gundioc", -- from Gibica's line (so presumably a child of Gundioc's)
	Deities = {"christian-god"},
	-- brother of Gundobad according to Fichtner (though that author gives his name as "Chilperich" instead); Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
	HistoricalTitles = {
		"head-of-state", 474, 480, "burgundy"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("clothilda", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, p. 97.
	Name = "Clothilda", -- Daughter of Chilperic's who was married to Clovis, king of the Franks; later became a saint due to her having convinced her husband to convert to Catholic Christianity; was buried in the church of St Geneviève in Paris
	Gender = "female",
	Type = "unit-teuton-archer",
	Civilization = "goth",
	Faction = "burgundy",
	Trait = "upgrade-pious",
	StartDate = 474, -- born
	DeathDate = 545, -- died
	Father = "chilperic",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("chrona", { --  Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 331.
	Name = "Chrona",
	Gender = "female",
	Type = "unit-teuton-priest", -- became a nun
	Civilization = "goth",
	Faction = "burgundy",
	Father = "chilperic", -- daughter of Chilperich
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("gundobad", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 96-97.
	Name = "Gundobad", -- Burgundian king after Chilperic; name means "bold in battle"; had the title of Roman patrician; wrote two law codes, the "Lex Romana Burgundionum" and the "Lex Gundobada"
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "burgundy",
	Trait = "upgrade-wise",
	StartDate = 480, -- beginning of Gundobad's reign over the Burgundians in 480 AD; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 96.
	-- Fichtner gives his reign as beginning 474, however; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
	DeathDate = 516, -- end of reign
	Father = "gundioc", -- was Chilperic's brother, so presumably a child of Gundioc's
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 480, 516, "burgundy"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("godegisel", { -- Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
	Name = "Godegisel",
	Gender = "male",
	Type = "unit-gothic-horse-rider",
	Civilization = "goth",
	Faction = "burgundy",
	Father = "gundioc", -- brother of Gundobad
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("aridius", { -- chief advisor to Gundobad (was he actually a Burgundian?); Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 331.
	Name = "Aridius",
	Gender = "male",
	Type = "unit-gothic-horse-rider",
	Civilization = "goth",
	Faction = "burgundy",
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("sigismund", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 94, 96, 98; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3.
	Name = "Sigismund", -- Burgundian king after Gundobad; converted to Catholic Christianity and later became a saint
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "burgundy",
	Trait = "upgrade-pious",
	StartDate = 516, -- beginning of Sigismund's reign over the Burgundians in 516 AD; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 96.
	DeathDate = 523, -- died in 523; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
	Father = "gundobad", -- son of Gundobad; Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 96, 98; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 516, 523, "burgundy" -- reigned from 516 to 523
	},
	-- became Sigmund (father of Sigurd) in the myths; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})

DefineCharacter("gundimar", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 96, 99.
	Name = "Gundimar", -- Burgundian king after Sigismund; also known as Godomar; name means "celebrated in battle"
	Gender = "male",
	Type = "unit-gothic-horse-lord", -- king
	Civilization = "goth",
	Faction = "burgundy",
	StartDate = 523, -- beginning of Gundimar's reign over the Burgundians in 523 AD; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 96.
	-- Fichtner also gives him (as Godomar) as being the Burgundian king from 523 on; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
	DeathDate = 534, -- end of reign (was proscribed, pursued and executed by the Franks, and his realm was annexed by them)
	ViolentDeath = true,
	Father = "sigismund", -- from Gibica's line (so presumably a child of Sigismund's)
	Deities = {"christian-god"},
	HistoricalTitles = {
		"head-of-state", 523, 534, "burgundy"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundy") then
			return true
		end
		return false
	end
})
