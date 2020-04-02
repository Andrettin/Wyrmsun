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

DefineCharacter("volsung", { -- Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 3; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 226.
	Name = "Volsung",
	Gender = "male",
	Type = "unit-frank-heroic-swordsman",
	Civilization = "frankish",
	Faction = "frank-tribe",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "frank-tribe") then
			return true
		end
		return false
	end
})

DefineCharacter("chlodio", { -- Source: "Medieval Warfare V.2", 2013, p. 6.
	Name = "Chlodio",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- chieftain/king
	Civilization = "frankish",
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
	Type = "unit-frank-knight-lord", -- chieftain/king
	Civilization = "frankish",
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
	Name = "Chlodwig", -- Frankish king; married Clothilda (daughter of the Burgundian king Chilperic); he converted to Christianity; also known as "Chlodovech", "Chlodoveus" or "Clovis"
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "francia",
	Description = "Chlodwig was the founder of the Frankish kingdom.",
	Father = "merovech",
	StartDate = 481, -- his reign began in 481
	DeathDate = 511, -- died in 511
	HistoricalFactions = {
		481, "frank-tribe",
		{486, 12, 30}, "francia"
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "frank-tribe" or GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("chlodomer", { -- son of Chlodwig who ruled in Orléans; died in 524; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Chlodomer",
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "francia",
	Father = "chlodwig",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("theuderich", { -- son of Chlodwig who ruled in Reims; died in 534; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Theuderich",
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "francia",
	Father = "chlodwig",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("childebert", { -- son of Chlodwig who ruled in Paris; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Childebert",
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "francia",
	Father = "chlodwig",
	DeathDate = 558,
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("chlothar", { -- ruled in Soissons; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Chlothar",
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "francia",
	Father = "chlodwig",
	DeathDate = 561,
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("charibert", { -- Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Charibert",
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "neustria",
	Father = "chlothar",
	DeathDate = 567,
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "neustria") then
			return true
		end
		return false
	end
})

DefineCharacter("chilperich", { -- Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Chilperich",
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "salia",
	Description = "Born to the late Frankish king Chlothar I, Chilperich harbors great ambitions to establish his supremacy over the entire realm, subsuming his brothers' share of their father's inheritance.",
	HairVariation = "brown-hair",
	Trait = "upgrade-reckless",
	Father = "chlothar",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia" or GetPlayerData(trigger_player, "Faction") == "salia" or GetPlayerData(trigger_player, "Faction") == "neustria") then
			return true
		end
		return false
	end
})

DefineCharacter("gunthram", { -- Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
	Name = "Gunthram",
--	FamilyName = "Merovingian",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "burgundia",
	Description = "As one of the sons of the Frankish king Chlothar I, Gunthram inherited the Burgundian part of the Frankish realm from his father.",
	HairVariation = "brown-hair",
	Trait = "upgrade-dextrous",
	Father = "chlothar",
	DeathDate = 592,
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
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "austrasia",
	Description = "The son of the Frankish king Chlothar I, Sigibert inherited vast lands upon the death of his father. A courageous hero, Sigibert faces both the enmity of his brother Chilperich and the threat of invasion from abroad.",
	Icon = "icon-sigibert",
	HairVariation = "brown-hair",
	Trait = "upgrade-strong",
	Father = "chlothar",
	DeathDate = 575,
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia" or GetPlayerData(trigger_player, "Faction") == "austrasia") then
			return true
		end
		return false
	end
	-- in the myths Siegfried/Sigurd was the son of Siegmund and Sieglind, and he was Gudrun's husband; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 94.
})

DefineCharacter("fredegunde", { -- concubine of Chilperich; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
	Name = "Fredegunde",
	Gender = "female",
	Type = "unit-teuton-worker",
	Civilization = "frankish",
	Faction = "salia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia" or GetPlayerData(trigger_player, "Faction") == "salia" or GetPlayerData(trigger_player, "Faction") == "neustria") then
			return true
		end
		return false
	end
})

DefineCharacter("bodegisel", { -- Frankish duke; died in 585; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 393.
	Name = "Bodegisel",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("leudegisel", { -- duke under Gunthram; fought the Visigoths in Septimania in 585; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 390.
	Name = "Leudegisel",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "burgundia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "burgundia") then
			return true
		end
		return false
	end
})

DefineCharacter("rathar", { -- vassal of a Frankish king Childebert; restored the king's authority in Marseilles in 585; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 390.
	Name = "Rathar",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- presumably a high-ranking vassal
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("bertha-of-paris", { -- Bertha of Paris, daughter of the Frankish king Charibert; married Æthelberht of Kent before 588; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 79, 105.
	Name = "Bertha",
	Gender = "female",
	Type = "unit-frank-veteran-swordsman",
	Civilization = "frankish",
	Faction = "francia",
	Father = "charibert", -- is this the correct Charibert who is her father?
	Children = {"eadbald"}, -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 112-113.
	Deities = {"christian-god"},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("wintrio-of-champagne", { -- Frankish duke of Champagne between 593 and 598; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, pp. 391, 397.
	Name = "Wintrio",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("dagobert-i-of-francia", { -- king of the Franks as Dagobert I; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81; Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Dagobert",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "francia",
	DeathDate = 639, -- died in 639
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("bobo-of-auvergne", { -- Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 397.
	Name = "Bobo",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	StartDate = 639, -- Frankish duke of Auvergne in 639
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("erchinoald-of-neustria", { -- Mayor of the Palace of Neustria; died in 657; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
	Name = "Erchinoald",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- mayor of the palace
	Civilization = "frankish",
	Faction = "neustria",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "neustria") then
			return true
		end
		return false
	end
})

DefineCharacter("agilbert", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 122-123.
	Name = "Agilbert",
	Gender = "male",
	Type = "unit-teuton-priest",
	Civilization = "frankish",
	Faction = "francia", -- correct? was bishop of Paris
	StartDate = 663, -- attended a synod in Streoneshalh, in Northumbria, in 663
	-- became bishop of Paris in 667 or 668
	DeathDate = 679, -- remained bishop of Paris for at least twelve years
	Deities = {"christian-god"}
})

DefineCharacter("ebroin-of-neustria", { -- Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
	Name = "Ebroin",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- mayor of the palace
	Civilization = "frankish",
	Faction = "neustria",
	DeathDate = 675, -- ceased to be mayor of the palace of Neustria
	HistoricalTitles = {
		"head-of-government", 0, 675, "neustria" -- Mayor of the Palace of Neustria until 675
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "neustria") then
			return true
		end
		return false
	end
})

DefineCharacter("pepin-of-herstal", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Pepin",
	ExtraName = "of Herstal",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- Mayor of the Palace of Austrasia
	Civilization = "frankish",
	Faction = "austrasia",
	StartDate = 675,
	-- won the battle of Tertry, in 687, and as a result enjoyed supremacy in all of Francia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 166.
	DeathDate = 714, -- died in 714; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 167.
	HistoricalTitles = {
		"head-of-government", 675, 714, "austrasia" -- became Mayor of the Palace of Austrasia in 675
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "austrasia") then
			return true
		end
		return false
	end
})

DefineCharacter("dagobert-ii-of-austrasia", { -- Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 136.
	Name = "Dagobert",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "austrasia",
	StartDate = 678, -- was king of Austrasia as of 678
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "austrasia") then
			return true
		end
		return false
	end
})

DefineCharacter("drogo-of-champagne", { -- son of Pepin II (of Heristal) and duke of Champagne; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
	Name = "Drogo",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "austrasia",
	Father = "pepin-of-herstal",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "austrasia") then
			return true
		end
		return false
	end
})

DefineCharacter("theoderic-iv-of-francia", { -- king of the Franks as Theoderic IV; died in 737; Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Theoderic",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("charles-martel", { -- Charles Martel; Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Karl", -- correct in Old Frankish?
	ExtraName = "Martel",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- Mayor of the Palace
	Civilization = "frankish",
	Faction = "francia",
	StartDate = 718,
	DeathDate = 741, -- died in 741; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 169.
	HistoricalTitles = {
		"head-of-government", 718, 741, "francia" -- became Mayor of the Palace of Francia in 718
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("childebrand", { -- Frankish duke; uncle of Pepin the Short; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 408.
	Name = "Childebrand",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("pepin-the-short", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Pepin",
	ExtraName = "the Short",
--	FamilyName = "Karling",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- king
	Civilization = "frankish",
	Faction = "francia",
	Father = "charles-martel", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 169-170.
	StartDate = 751,
	DeathDate = 768, -- died in 768
	HistoricalTitles = {
		"head-of-state", 751, 768, "francia" -- became king of the Franks in 751; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 170.
	},
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("grifo", { -- Source: "Medieval Warfare V.2", 2013, p. 7; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 408.
	Name = "Grifo",
--	FamilyName = "Karling",
	Gender = "male",
	Type = "unit-frank-horseman", -- noble
	Civilization = "frankish",
	Faction = "francia",
	Father = "charles-martel",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("carloman-karling", { -- Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Carloman",
	Gender = "male",
	Type = "unit-frank-horseman", -- noble
	Civilization = "frankish",
	Faction = "francia",
	Father = "charles-martel", -- Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 169-170.
	DeathDate = 747, -- retired from the world in 747; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 170.
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("charlemagne", { -- Charles the Great, or Charlemagne; succeeded his father together with Carloman in 768 as king of the Franks, and became sole ruler of the Franks in 771; died of illness on 28 January 814 at Aachen at 66 years old; Source: "Medieval Warfare V.2", 2013, pp. 7-9.
	Name = "Karl", -- correct in Old Frankish?
	ExtraName = "the Great",
--	FamilyName = "Karling",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- emperor/king
	Civilization = "frankish",
	Faction = "francia",
	Father = "pepin-the-short",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("carloman-karling-2", { -- son of Pepin the Short; died of illness in 771 at 20 years old; Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Carloman",
	Gender = "male",
	Type = "unit-frank-horseman", -- noble
	Civilization = "frankish",
	Faction = "francia",
	Father = "pepin-the-short",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("drogo-karling", { -- son of Carloman and grandson of Charles Martel; Source: "Medieval Warfare V.2", 2013, p. 7.
	Name = "Drogo",
	Gender = "male",
	Type = "unit-frank-horseman", -- noble
	Civilization = "frankish",
	Faction = "francia",
	Father = "carloman-karling",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("louis-the-pious", { -- Louis the Pious, son of Charlemagne; made co-emperor with his father in 813 (the Old Frankish form of "Louis" should be used instead); Source: "Medieval Warfare V.2", 2013, p. 9.
	Name = "Chlodwig", -- correct? both French "Louis" and German "Ludwig" sound too modern, given his time period
	ExtraName = "the Pious",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- emperor
	Civilization = "frankish",
	Faction = "francia",
	Father = "charlemagne",
	Trait = "upgrade-pious",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("adalgisel", { -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 398.
	Name = "Adalgisel",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("austrovald", { -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 392.
	Name = "Austrovald",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("beppelin", { -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 391.
	Name = "Beppelin",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("berulf", { -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 392.
	Name = "Berulf",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("bladast", { -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 392.
	Name = "Bladast",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("dragolen", { -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 391.
	Name = "Dragolen",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("ebracher", { -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 392.
	Name = "Ebracher",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("ragamfred", { -- Mayor of the Palace of Austrasia; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 406.
	Name = "Ragamfred",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- Mayor of the Palace
	Civilization = "frankish",
	Faction = "austrasia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "austrasia") then
			return true
		end
		return false
	end
})

DefineCharacter("sigulf", { -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 391.
	Name = "Sigulf",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("theodulf", { -- Frankish count; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 391.
	Name = "Theodulf",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- count
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("wulfoald", { -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
	Name = "Wulfoald",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- duke
	Civilization = "frankish",
	Faction = "francia",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "francia") then
			return true
		end
		return false
	end
})

DefineCharacter("waratto-of-neustria", { -- Mayor of the Palace of Neustria; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
	Name = "Waratto",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- mayor of the palace
	Civilization = "frankish",
	Faction = "neustria",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "neustria") then
			return true
		end
		return false
	end
})

DefineCharacter("ghislamar-of-neustria", { -- Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
	Name = "Ghislamar",
	Gender = "male",
	Type = "unit-frank-horseman", -- noble
	Civilization = "frankish",
	Faction = "neustria",
	Father = "waratto-of-neustria",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "neustria") then
			return true
		end
		return false
	end
})

DefineCharacter("bechar-of-neustria", { -- Mayor of the Palace of Neustria; Waratto's wife's son-in-law; Source: "Medieval Warfare V.2", 2013, p. 7; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
	Name = "Bechar",
	Gender = "male",
	Type = "unit-frank-knight-lord", -- mayor of the palace
	Civilization = "frankish",
	Faction = "neustria",
	Conditions = function(s)
		if (GetPlayerData(trigger_player, "Faction") == "neustria") then
			return true
		end
		return false
	end
})

