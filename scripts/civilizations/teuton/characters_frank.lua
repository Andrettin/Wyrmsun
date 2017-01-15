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

DefineCharacter("volsung", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 226.
	Name = "Volsung",
	Gender = "male",
	Type = "unit-frank-swordsman",
	Civilization = "teuton",
	Faction = "frank-tribe"
})

DefineCharacter("chlodio", { -- Source: "Medieval Warfare V.2", 2013, p. 6.
	Name = "Chlodio",
	Gender = "male",
	Type = "unit-frank-horseman",
	Civilization = "teuton",
	Faction = "frank-tribe",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "frank-tribe") then
			return true
		end
		return false
	end
	-- Frankish king
})

DefineCharacter("merovech", { -- Source: "Medieval Warfare V.2", 2013, p. 6.
	Name = "Merovech",
	Gender = "male",
	Type = "unit-frank-horseman",
	Civilization = "teuton",
	Faction = "frank-tribe",
	Description = "Merovech was a Frankish chieftain renowned for being the ancestor of the Merovingian dynasty.", -- king of the Franks, but what he ruled was more of a tribal territory than an established polity
	Father = "chlodio",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "frank-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("chlodwig", { -- Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 97, 99; Source: "Medieval Warfare V.2", 2013, p. 6; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Chlodwig", -- Frankish king; married Clothilda (daughter of the Burgundian king Chilperic); he converted to Christianity; his reign began in 481 and he died in 511; also known as "Chlodovech", "Chlodoveus" or "Clovis"
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-horseman",
	Civilization = "teuton",
	Faction = "francia",
	Description = "Chlodwig was the founder of the Frankish kingdom.",
	Father = "merovech",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "frank-tribe" or GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("chlothar", { -- ruled in Soissons; died in 561; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Chlothar",
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-horseman",
	Civilization = "teuton",
	Faction = "francia",
	Father = "chlodwig",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("chilperich", { -- Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Chilperich",
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-horseman",
	Civilization = "teuton",
	Faction = "francia",
	Description = "Born to the late Frankish king Chlothar I, Chilperich harbors great ambitions to establish his supremacy over the entire realm, subsuming his brothers' share of their father's inheritance.",
	HairVariation = "brown-hair",
	Trait = "upgrade-reckless",
	Father = "chlothar",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("gunthram", { -- died in 592; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Gunthram",
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-horseman",
	Civilization = "teuton",
	Faction = "burgundia",
	Description = "As one of the sons of the Frankish king Chlothar I, Gunthram inherited the Burgundian part of the Frankish realm from his father.",
	HairVariation = "brown-hair",
	Trait = "upgrade-dextrous",
	Father = "chlothar",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia" or GetPlayerData(trigger_player, "Faction") == "burgundia") then
			return true
		end
		return false
	end
})

DefineCharacter("sigibert", { -- Sigibert I (535-575), Frankish king; son of Chlothar; identified with the Siegfried/Sigurd of the myths; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, pp. 327-328.
	Name = "Sigibert",
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-horseman",
	Civilization = "teuton",
	Faction = "austrasia",
	Description = "The son of the Frankish king Chlothar I, Sigibert inherited vast lands upon the death of his father. A courageous hero, Sigibert faces both the enmity of his brother Chilperich and the threat of invasion from abroad.",
	Icon = "icon-sigibert",
	HairVariation = "brown-hair",
	Trait = "upgrade-strong",
	Father = "chlothar",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia" or GetPlayerData(trigger_player, "Faction") == "austrasia") then
			return true
		end
		return false
	end
	-- in the myths Siegfried/Sigurd was the son of Siegmund and Sieglind, and he was Gudrun's husband; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94.
})
