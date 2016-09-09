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

DefineFaction("Frank Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-frankish",
	Colors = {"green", "orange"},
	DevelopsTo = {"Francia", "Franconia", "Austrasia", "Neustria", "East Francia", "Netherlands"},
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
		"male", "Answald", -- Old Frankish name; Source: http://www.cnrtl.fr/definition/lourdaud//1
		"male", "Berchar", -- Mayor of the Palace of Neustria; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Carloman", -- son of Charles Martel; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Carloman", -- son of Pepin the Short; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Charles", -- Charles Martel, Mayor of the Palace of Francia (the Old Frankish form of "Charles" should be used instead); Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Charles", -- Charles the Great, or Charlemagne, son of Pepin the Short and King of the Franks (the Old Frankish form of "Charles" should be used instead); Source: "Medieval Warfare V.2", 2013, pp. 7-9.
		"male", "Chlodio", -- Frankish king; Source: "Medieval Warfare V.2", 2013, p. 6.
		"male", "Clovis", -- Frankish king, son of Merovech; married Clothilda (daughter of the Burgundian king Chilperic); he converted to Christianity; Source: Norman Davies, "Vanished Kingdoms", 2012, pp. 97, 99; Source: "Medieval Warfare V.2", 2013, p. 6.
		"male", "Dagobert", -- King of the Franks as Dagobert I; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Drogo", -- son of Carloman and grandson of Charles Martel; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Grifo", -- son of Charles Martel; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Grimwald", -- Old Frankish name; Source: http://www.cnrtl.fr/definition/lourdaud//1
		"male", "Merovech", -- Frankish king, son of Chlodio and founder of the Merovingian dynasty; Source: "Medieval Warfare V.2", 2013, p. 6.
		"male", "Louis", -- Louis the Pious, son of Charlemagne (the Old Frankish form of "Louis" should be used instead); Source: "Medieval Warfare V.2", 2013, p. 9.
		"male", "Pepin", -- Pepin of Herstal, Mayor of the Palace of Austrasia; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Pepin", -- Pepin the Short, son of Charles Martel who later became king of the Franks; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Theoderic", -- King of the Franks as Theoderic IV; Source: "Medieval Warfare V.2", 2013, p. 7.
	},
	HistoricalFactionDerivations = {150, "germanic", "Herminone Tribe"},
	HistoricalTechnologies = {
		"upgrade-frank-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Francia", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe",
	Type = "polity",
	Colors = {"green", "orange"},
	DefaultTier = "kingdom",
	MinisterTitles = {
		"head-of-government", "no-gender", "monarchy", "no-faction-tier", "Mayor of the Palace" -- Source: "Medieval Warfare V.2", 2013, p. 7.
	},
	HistoricalFactionDerivations = {481, "teuton", "Frank Tribe"}, -- In 481 AD the Franks had already established their kingdom; Source: William R. Shepherd, "Historical Atlas", 1911, p. 53.
	HistoricalTechnologies = {
		"upgrade-teuton-coinage", 565 -- Merovingian Francia began to issue gold solidi at some point between 565 and 578 AD; Source: F. Seebohm, "On the early currencies of the German Tribes", 1903, p. 176.
	},
	HistoricalCapitals = {
		768, "Lower Rhine" -- Aachen was Francia's capital during 768-814 AD; Source: "Medieval Warfare V.2", 2013, pp. 8-9.
	}
})

DefineFaction("Austrasia", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "kingdom", -- correct?
	DevelopsTo = {"Francia", "Holy Rome"},
	MinisterTitles = {
		"head-of-government", "no-gender", "monarchy", "no-faction-tier", "Mayor of the Palace" -- Source: "Medieval Warfare V.2", 2013, p. 7.
	}
})

DefineFaction("East Francia", { -- Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "kingdom",
	DevelopsTo = {"Holy Rome", "Francia"},
	HistoricalFactionDerivations = {869, "teuton", "Francia"}, -- East Francia existed in 869, when it conquered Moravia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
	HistoricalDiplomacyStates = {
		871, "slav", "Moravia", "war", -- Moravia rose against East Frankish rule in 871; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		874, "slav", "Moravia", "sovereign", -- Moravia submitted as a vassal (paying an annual tribute) to the East Franks in 874; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		895, "slav", "Bohemia", "sovereign" -- The sons of Bořivoj, Spytihněv and Vratislav, recognized German overlordship over Bohemia in 895; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
	}
})

DefineFaction("Franconia", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
	Language = "high-german",
	Colors = {"blue"},
	DefaultTier = "duchy", -- Franconia was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	DevelopsTo = {"Holy Rome", "Francia"} -- Franconia was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
})

DefineFaction("Neustria", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
	Colors = {"orange"},
	DefaultTier = "kingdom", -- correct?
	DevelopsTo = {"Francia", "Holy Rome"},
	MinisterTitles = {
		"head-of-government", "no-gender", "monarchy", "no-faction-tier", "Mayor of the Palace" -- Source: "Medieval Warfare V.2", 2013, p. 7.
	}
})
