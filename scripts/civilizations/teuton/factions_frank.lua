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
--      (c) Copyright 2015-2016 by Andrettin
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

DefineFaction("frank-tribe", {
	Name = "Frank Tribe",
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-frankish",
	Colors = {"green", "orange"},
	DevelopsTo = {"francia", "franconia", "austrasia", "neustria", "salia", "east-francia", "netherlands"},
	FactionUpgrade = "upgrade-frank-tribe-faction",
	Description = "The Franks are one of the most powerful Germanic tribes to have existed. From their humble beginnings in their dwellings along the Rhine, they eventually managed to conquer the entirety of Gaul and much of Central Europe.",
	UIFillers = {
		"dlcs/frankish_faction_flair/graphics/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dlcs/frankish_faction_flair/graphics/ui/buttonpanel.png", -256, -200,
		"dlcs/frankish_faction_flair/graphics/ui/infopanel.png", 0, -200
	},
	PersonalNames = {
		"female", "Bertha", -- Bertha of Paris, Frankish noblewoman related to or a part of the Merovingians; married Æthelberht of Kent; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 79.
		"female", "Fredegunde", -- concubine of Chilperich; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 329.
		"male", "Adalgisel", -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 398.
		"male", "Answald", -- Old Frankish name; Source: http://www.cnrtl.fr/definition/lourdaud//1
		"male", "Austrovald", -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 392.
		"male", "Bechar", -- Mayor of the Palace of Neustria; Waratto's wife's son-in-law; Source: "Medieval Warfare V.2", 2013, p. 7; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
		"male", "Beppelin", -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 391.
		"male", "Berulf", -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 392.
		"male", "Bladast", -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 392.
		"male", "Bobo", -- Frankish duke of Auvergne in 639; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 397.
		"male", "Bodegisel", -- Frankish duke; died in 585; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 393.
		"male", "Carloman", -- son of Charles Martel; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Carloman", -- son of Pepin the Short; died of illness in 771 at 20 years old; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Charibert", -- son of Chlothar; died in 567; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
		"male", "Charles", -- Charles Martel; became Mayor of the Palace of Francia in 718; died in 741; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Charles", -- Charles the Great, or Charlemagne, son of Pepin the Short; succeeded his father together with Carloman in 768 as king of the Franks, and became sole ruler of the Franks in 771; died of illness on 28 January 814 at Aachen at 66 years old (the Old Frankish form of "Charles" should be used instead); Source: "Medieval Warfare V.2", 2013, pp. 7-9.
		"male", "Childebert", -- son of Chlodwig who ruled in Paris; died in 558; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
		"male", "Childebrand", -- Frankish duke; uncle of Pepin the Short; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 408.
		"male", "Chilperich", -- son of Chlothar; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
		"male", "Chlodio", -- Frankish king; Source: "Medieval Warfare V.2", 2013, p. 6.
		"male", "Chlodomer", -- son of Chlodwig who ruled in Orléans; died in 524; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
		"male", "Chlodwig", -- Frankish king, son of Merovech; founder of the Frankish kingdom; married Clothilda (daughter of the Burgundian king Chilperic); he converted to Christianity; his reign began in 481 and he died in 511; also known as "Chlodovech", "Chlodoveus" or "Clovis"; Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 97, 99; Source: "Medieval Warfare V.2", 2013, p. 6; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
		"male", "Chlothar", -- son of Chlodwig who ruled in Soissons; died in 561; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
		"male", "Dagobert", -- king of the Franks as Dagobert I; died in 639; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Dragolen", -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 391.
		"male", "Drogo", -- son of Carloman and grandson of Charles Martel; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Drogo", -- son of Pepin II (of Heristal) and duke of Champagne; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
		"male", "Ebracher", -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 392.
		"male", "Ebroin", -- Mayor of the Palace of Neustria until 675; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
		"male", "Erchinoald", -- Mayor of the Palace of Neustria; died in 657; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
		"male", "Ghislamar", -- son of Waratto, Mayor of the Palace of Neustria; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
		"male", "Grifo", -- son of Charles Martel and brother of Pepin the Short; Source: "Medieval Warfare V.2", 2013, p. 7; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 408.
		"male", "Grimwald", -- Old Frankish name; Source: http://www.cnrtl.fr/definition/lourdaud//1
		"male", "Gunthram", -- son of Chlothar; died in 592; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
		"male", "Merovech", -- Frankish king, son of Chlodio and founder of the Merovingian dynasty; Source: "Medieval Warfare V.2", 2013, p. 6.
		"male", "Leudegisel", -- duke under Gunthram; fought the Visigoths in Septimania in 585; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 390.
		"male", "Louis", -- Louis the Pious, son of Charlemagne; made co-emperor with his father in 813 (the Old Frankish form of "Louis" should be used instead); Source: "Medieval Warfare V.2", 2013, p. 9.
		"male", "Pepin", -- Pepin of Herstal; became Mayor of the Palace of Austrasia in 675; died in 714; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Pepin", -- Pepin the Short, son of Charles Martel; became king of the Franks in 751; died in 768; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Ragamfred", -- Mayor of the Palace of Austrasia; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 406.
		"male", "Rathar", -- vassal of a Frankish king Childebert; restored the king's authority in Marseilles in 585; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 390.
		"male", "Sigibert", -- Sigibert I (535-575), Frankish king; son of Chlothar; became Siegfried/Sigurd in the myths; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, pp. 327-328.
		"male", "Sigulf", -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 391.
		"male", "Theoderic", -- king of the Franks as Theoderic IV; died in 737; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Theuderich", -- son of Chlodwig who ruled in Reims; died in 534; Source: Edward G. Fichtner, "Sigfrid's Merovingian Origins", 2004, p. 328.
		"male", "Theodulf", -- Frankish count; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 391.
		"male", "Waratto", -- Mayor of the Palace of Neustria; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
		"male", "Wintrio", -- Frankish duke of Champagne between 593 and 598; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, pp. 391, 397.
		"male", "Wulfoald" -- Frankish duke; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 405.
	},
	HistoricalFactionDerivations = {150, "germanic", "herminone-tribe"},
	HistoricalTechnologies = {
		"upgrade-frank-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("francia", {
	Name = "Francia",
	Civilization = "teuton",
	ParentFaction = "frank-tribe",
	Type = "polity",
	Colors = {"green", "orange"},
	DefaultTier = "kingdom",
	MinisterTitles = {
		"head-of-government", "no-gender", "monarchy", "no-faction-tier", "Mayor of the Palace" -- Source: "Medieval Warfare V.2", 2013, p. 7.
	},
	HistoricalFactionDerivations = {481, "teuton", "frank-tribe"}, -- In 481 AD the Franks had already established their kingdom; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
	HistoricalTechnologies = {
		"upgrade-teuton-writing", 0, -- polities must have writing
		"upgrade-teuton-masonry", 0,
		"upgrade-teuton-coinage", 565 -- Merovingian Francia began to issue gold solidi at some point between 565 and 578 AD; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 176.
	},
	HistoricalCapitals = {
		768, "Lower Rhine" -- Aachen was Francia's capital during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	}
})

DefineFaction("austrasia", {
	Name = "Austrasia",
	Civilization = "teuton",
	ParentFaction = "francia",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "kingdom", -- correct?
	DevelopsTo = {"francia", "holy-rome"},
	DefaultStartPos = {3930, 926}, -- Reims
	MinisterTitles = {
		"head-of-government", "no-gender", "monarchy", "no-faction-tier", "Mayor of the Palace" -- Source: "Medieval Warfare V.2", 2013, p. 7.
	}
})

DefineFaction("east-francia", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
	Name = "East Francia",
	Civilization = "teuton",
	ParentFaction = "francia",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "kingdom",
	DevelopsTo = {"holy-rome", "francia"},
	HistoricalFactionDerivations = {869, "teuton", "francia"}, -- East Francia existed in 869, when it conquered Moravia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
	HistoricalDiplomacyStates = {
		871, "moravia", "war", -- Moravia rose against East Frankish rule in 871; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		874, "moravia", "sovereign", -- Moravia submitted as a vassal (paying an annual tribute) to the East Franks in 874; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		895, "bohemia", "sovereign" -- The sons of Bořivoj, Spytihněv and Vratislav, recognized German overlordship over Bohemia in 895; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
	}
})

DefineFaction("franconia", {
	Name = "Franconia",
	Civilization = "teuton",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "duchy", -- Franconia was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	FactionUpgrade = "upgrade-saxon-tribe-faction",
	DevelopsTo = {"holy-rome", "francia"} -- Franconia was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
})

DefineFaction("neustria", {
	Name = "Neustria",
	Civilization = "teuton",
	ParentFaction = "francia",
	Type = "polity",
	Colors = {"orange"},
	DefaultTier = "kingdom", -- correct?
	DevelopsTo = {"francia", "holy-rome"},
	DefaultStartPos = {3891, 937}, -- Paris
	MinisterTitles = {
		"head-of-government", "no-gender", "monarchy", "no-faction-tier", "Mayor of the Palace" -- Source: "Medieval Warfare V.2", 2013, p. 7.
	}
})

DefineFaction("salia", {
	Name = "Salia",
	Civilization = "teuton",
	ParentFaction = "francia",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "kingdom",
	DevelopsTo = {"austrasia", "francia", "holy-rome"},
	DefaultStartPos = {3915, 923} -- Soissons
})

DefineFaction("burgundia", { -- Frankish kingdom of Burgundy (not to be confused with the original Kingdom of the Burgundians - an East Germanic people - or the French region)
	Name = "Burgundia",
	Civilization = "teuton",
	ParentFaction = "francia",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "kingdom",
	DevelopsTo = {"francia", "holy-rome"},
	DefaultStartPos = {3884, 961} -- Orléans
})
