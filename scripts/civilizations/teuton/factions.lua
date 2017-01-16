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

Load("scripts/civilizations/teuton/factions_frank.lua")

DefineFaction("suebi-tribe", {
	Name = "Suebi Tribe",
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"black"},
	DefaultTier = "duchy",
	DevelopsTo = {"galicia", "bavaria", "austria", "carinthia"},
	FactionUpgrade = "upgrade-suebi-tribe-faction",
	Description = _("The Suebi were a powerful tribe in ancient Germania, battling the Romans a number of times. From the Suebi tribes such as the Marcomanni and the Quadi would originate. In the 5th century a group of Suebi settled and conquered Galicia, establishing a kingdom there."),
	PersonalNames = {
		"male", "Hermeric", -- Suebic chieftain who sacked central Galicia
		"male", "Rechilas" -- Suebic chieftain who defeated a Roman army led by Andevotus near the Singilis river in 438 AD
	},
	SettlementNames = {
		"Marobudum" -- alternate name of the Marcomannic capital; either located where modern Prague or Budweis are; Source: Frederick Kohlrausch, "A History of Germany", 1844, p. 57.
	},
	HistoricalFactionDerivations = {-264, "germanic", "istaevone-tribe"}
})

DefineFaction("saxon-tribe", {
	Name = "Saxon Tribe",
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-saxon",
	Colors = {"pink"},
	DevelopsTo = {"saxony", "brandenburg", "essex", "wessex", "england", "prussia"},
	FactionUpgrade = "upgrade-saxon-tribe-faction",
	HistoricalFactionDerivations = {-264, "germanic", "ingaevone-tribe"},
	PersonalNames = {
		"male", "Bernhard", -- duke of Saxony (apparently a contemporary of bishop Thietmar of Merseburg); Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 613.
		"male", "Gottschalk", -- 9th century Saxon monk; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 605.
		"male", "Thietmar" -- Saxon bishop of Merseburg; was alive in 1002; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 613.
	},
	SettlementNames = {
		"Hardego", -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
		"Hohsingo", -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
		"Suabengo" -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
	}
})

DefineFaction("thuringian-tribe", {
	Name = "Thuringian Tribe",
	Civilization = "teuton",
	ParentFaction = "suebi-tribe", -- correct?
	Type = "tribe",
--	Language = "old-high-german",
	Colors = {"green"},
--	FactionUpgrade = "upgrade-thuringian-tribe-faction",
	HistoricalFactionDerivations = {507, "teuton", "suebi-tribe"} -- who did the Thuringians actually stem from?
})

DefineFaction("alamanni-tribe", {
	Name = "Alamanni Tribe",
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"blue"},
	DevelopsTo = {"baden", "swabia", "switzerland", "wurtemberg"},
	FactionUpgrade = "upgrade-alamanni-tribe-faction",
	HistoricalFactionDerivations = {481, "teuton", "suebi-tribe"}
})

DefineFaction("ampsivarii-tribe", {
	Name = "Ampsivarii Tribe",
	Civilization = "teuton",
	ParentFaction = "frank-tribe", -- accurate?,
	Type = "tribe",
	Colors = {"cyan"},
	DevelopsTo = {"drenthe", "netherlands"}, -- same general area
	HistoricalFactionDerivations = {-27, "germanic", "herminone-tribe"}
})

DefineFaction("angle-tribe", {
	Name = "Angle Tribe",
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-english",
	Colors = {"white"},
	DevelopsTo = {"england", "bernicia", "deira", "east-anglia", "mercia", "middle-anglia", "northumbria", "scotland"},
	FactionUpgrade = "upgrade-angle-tribe-faction",
	SettlementNames = {
		"Abbandun",  -- Old English name of Abingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Abbodesbyrig", -- Old English name of Abbotsbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p.
		"Aegelesburg", -- "Ægelesburg"; Old English name of Aylesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Aegelesford", -- "Ægelesford"; Old English name of Aylesford; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Aethelingaig", -- "Æthelingaig"; Old English name of Athelney; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Alre", -- Old English name of Aller; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Ambresbyrig", -- Old English name of Amesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Andeferas", -- Old English name of Andover; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Apuldre", -- Old English name of Appledore; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Assandun", -- Old English name of Ashingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Badecanwiellon", -- Old English name of Bakewell; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Baddanbyrig", -- Old English name of the Badbury Rings; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Baenesingtun", -- "Bænesingtun"; Old English name of Bensington; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bancornaburg", -- Old English name of Bangor on Dee; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bardanstapol", -- Old English name of Barnstaple; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Basengum", -- Old English name of Basing; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bathum", -- Old English name of Bath; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Beamfleot", -- Old English name of Benfleet; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Gumeninga Hearh", -- Old English name of Harrow on the Hill; the name means "the holy place of the Gumeningas"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
		"Searuburh" -- the modern Salisbury; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 115.
	},
	HistoricalFactionDerivations = {-264, "germanic", "ingaevone-tribe"}
})

DefineFaction("avione-tribe", {
	Name = "Avione Tribe",
	Civilization = "teuton",
	ParentFaction = "angle-tribe", -- accurate?,
	Type = "tribe",
	Colors = {"white"}
})

DefineFaction("batavian-tribe", {
	Name = "Batavian Tribe",
	Civilization = "teuton",
	ParentFaction = "frank-tribe", -- accurate?
	Type = "tribe",
	Colors = {"orange"},
	DevelopsTo = {"holland", "netherlands"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "herminone-tribe"}
})

DefineFaction("buri-tribe", {
	Name = "Buri Tribe",
	Civilization = "teuton", -- accurate?
	ParentFaction = "suebi-tribe", -- accurate?
	Type = "tribe",
	Colors = {"violet"},
	DevelopsTo = {"bavaria", "galicia", "austria", "carinthia"}, -- accurate?
	HistoricalFactionDerivations = {161, "teuton", "suebi-tribe"}
})

DefineFaction("chamavi-tribe", {
	Name = "Chamavi Tribe",
	Civilization = "teuton",
	ParentFaction = "frank-tribe", -- accurate?
	Type = "tribe",
	Colors = {"pink"},
	DevelopsTo = {"overijssel", "netherlands"}, -- same general area
	HistoricalFactionDerivations = {-27, "germanic", "herminone-tribe"}
})

DefineFaction("charude-tribe", {
	Name = "Charude Tribe",
	Civilization = "teuton", -- were the Charudes actually West Germanic?
	ParentFaction = "angle-tribe", -- accurate?
	Type = "tribe",
	Colors = {"purple"},
	DevelopsTo = {"jutland"}, -- same general area
	HistoricalFactionDerivations = {-27, "germanic", "ingaevone-tribe"}
})

DefineFaction("chatti-tribe", {
	Name = "Chatti Tribe",
	Civilization = "teuton",
	ParentFaction = "frank-tribe", -- accurate?
	Type = "tribe",
	Colors = {"yellow"},
	DevelopsTo = {"hesse"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "herminone-tribe"}
})

DefineFaction("chauci-tribe", {
	Name = "Chauci Tribe",
	Civilization = "teuton",
	ParentFaction = "saxon-tribe", -- accurate?
	Type = "tribe",
	Colors = {"black"},
	DevelopsTo = {"bremen"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "ingaevone-tribe"}
})

DefineFaction("cherusci-tribe", {
	Name = "Cherusci Tribe",
	Civilization = "teuton",
	ParentFaction = "saxon-tribe", -- accurate?
	Type = "tribe",
	Colors = {"teal"},
	DevelopsTo = {"brunswick", "magdeburg"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "ingaevone-tribe"}
})

DefineFaction("frisian-tribe", {
	Name = "Frisian Tribe",
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-frisian",
	Colors = {"violet", "purple"}, -- change to a better one?
	DevelopsTo = {"friesland", "netherlands"},
	FactionUpgrade = "upgrade-frisian-tribe-faction",
	HistoricalFactionDerivations = {-264, "germanic", "ingaevone-tribe"},
	--[[
	PersonalNames = {
		"male", "Bubo", -- Frisian ruler defeated by Charles Martel in 736; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 403.
		"male", "Radbod" -- Frisian ruler defeated by Charles Martel in 718; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 403.
	}
	--]]
})

DefineFaction("hermunduri-tribe", {
	Name = "Hermunduri Tribe",
	Civilization = "teuton",
	ParentFaction = "suebi-tribe", -- accurate?
	Type = "tribe",
	Colors = {"blue"},
	DevelopsTo = {"thuringia"}, -- same general area
	HistoricalDiplomacyStates = {
		170, "rome", "war", -- in 170 a coalition led by the Marcomanni (which included the Hermunduri) crossed the Danube and attacked the Romans; Source: "Ancient Warfare VII.6", 2013, p. 29.
		171, "rome", "peace" -- in 171 the Romans forced most of the tribes of the Marcomannic coalition to a peace; Source: "Ancient Warfare VII.6", 2013, p. 32.
	},
	HistoricalFactionDerivations = {-264, "germanic", "istaevone-tribe"}
})

DefineFaction("jute-tribe", {
	Name = "Jute Tribe",
	Civilization = "teuton",
	ParentFaction = "angle-tribe", -- accurate?
	Type = "tribe",
	Colors = {"red", "white"},
	DevelopsTo = {"jutland", "kent"}
})

DefineFaction("lombard-tribe", {
	Name = "Lombard Tribe",
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german", -- should be Lombardic
	Colors = {"green"},
	DevelopsTo = {"lombardy"},
	FactionUpgrade = "upgrade-lombard-tribe-faction",
	PersonalNames = {
		"male", "Arichis", -- Lombard duke of Benevento; Source: "Medieval Warfare IV.6", 2013, p. 18.
		"male", "Ariulf", -- Lombard duke of Spoleto; Source: "Medieval Warfare IV.6", 2013, p. 18.
		"male", "Gisulf", -- Source: "Medieval Warfare IV.6", 2013, p. 8.
		"male", "Nordulf" -- Lombard mercenary; Source: "Medieval Warfare IV.6", 2013, p. 18.
	},
	HistoricalFactionDerivations = {-264, "germanic", "istaevone-tribe"}
})

DefineFaction("marcomanni-tribe", {
	Name = "Marcomanni Tribe",
	Civilization = "teuton",
	ParentFaction = "suebi-tribe",
	Type = "tribe",
	Colors = {"orange", "red"}, -- change to a better one?
	DevelopsTo = {"bavarian-tribe", "bavaria", "galicia", "austria", "carinthia"},
	Description = _("The Marcomanni were a Suebic tribe. Eventually they migrated to the east, settling in Bohemia and expelling the local Boii tribe. In the 2nd century they fought the terrible Marcomannic Wars against the Romans. The name \"Marcomanni\" means \"march-men\", or \"frontier-men\"."),
	HistoricalFactionDerivations = {-9, "teuton", "suebi-tribe"},
	HistoricalDiplomacyStates = {
		170, "rome", "war", -- in 170 a coalition led by the Marcomanni (which included the Quadi and the Hermunduri) crossed the Danube and attacked the Romans; Source: "Ancient Warfare VII.6", 2013, p. 29.
		170, "hermunduri-tribe", "alliance",
		172, "rome", "peace", -- in 172 the Romans forced the Marcomanni to a peace; Source: "Ancient Warfare VII.6", 2013, p. 32.
		177, "rome", "war", -- the Marcomanni entered conflict with the Romans again in 177; Source: "Ancient Warfare VII.6", 2013, p. 8.
		177, "rome", "peace" -- in (apparently) 177 the Romans again forced the Marcomanni to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
	}
})

DefineFaction("bavarian-tribe", {
	Name = "Bavarian Tribe",
	Civilization = "teuton",
--	ParentFaction = "marcomanni-tribe",
	Type = "tribe",
--	Language = "old-high-german",
	Colors = {"cyan", "white"},
	DevelopsTo = {"bavaria", "austria", "carinthia"},
	FactionUpgrade = "upgrade-bavarian-tribe-faction",
	Description = _("The Bavarians were a West Germanic people, tracing their origins to the Marcomanni. Their name means \"men of Bohemia\", an appelation they gained due to the Marcomanni having established themselves in Bohemia under Marbod. The Bavarians migrated south, giving their newly-settled land the name it has to this day, Bavaria."),
	HistoricalFactionDerivations = {526, "teuton", "marcomanni-tribe"}
})

DefineFaction("quadi-tribe", {
	Name = "Quadi Tribe",
	Civilization = "teuton",
	ParentFaction = "suebi-tribe",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"bavaria", "galicia", "austria", "carinthia"}, -- the Quadi were a Suebic tribe
	HistoricalFactionDerivations = {-9, "teuton", "suebi-tribe"},
	HistoricalDiplomacyStates = {
		170, "rome", "war", -- in 170 a coalition led by the Marcomanni (which included the Quadi) crossed the Danube and attacked the Romans; Source: "Ancient Warfare VII.6", 2013, p. 29.
		170, "marcomanni-tribe", "alliance",
		171, "rome", "peace", -- in 171 the Romans forced the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 32.
		173, "rome", "war", -- the Quadi entered conflict with the Romans again in (apparently) 173; Source: "Ancient Warfare VII.6", 2013, p. 8.
		174, "rome", "peace", -- in 174 the Romans forced the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
		177, "rome", "war", -- the Quadi entered conflict with the Romans again in 177; Source: "Ancient Warfare VII.6", 2013, p. 8.
		179, "rome", "peace" -- in 179 the Romans again forced the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
	}
})

DefineFaction("semnone-tribe", {
	Name = "Semnone Tribe",
	Civilization = "teuton",
	ParentFaction = "suebi-tribe",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"suebi-tribe", "bavaria", "austria", "carinthia"},
	HistoricalFactionDerivations = {-264, "teuton", "suebi-tribe"}
})

DefineFaction("sugambri-tribe", {
	Name = "Sugambri Tribe",
	Civilization = "teuton",
	ParentFaction = "frank-tribe", -- accurate?
	Type = "tribe",
	Colors = {"black"},
	DevelopsTo = {"westphalia"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "herminone-tribe"}
})

DefineFaction("teuton-tribe", {
	Name = "Teuton Tribe",
	Civilization = "teuton",
	ParentFaction = "angle-tribe", -- accurate?
	Type = "tribe",
	Colors = {"orange"},
	DevelopsTo = {"jutland"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "ingaevone-tribe"}
})

DefineFaction("ubii-tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 227-228.
	Name = "Ubii Tribe",
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german", -- correct?
	FactionUpgrade = "upgrade-ubii-tribe-faction",
	Colors = {"purple"},
	DevelopsTo = {"cologne", "hesse"}, -- same general area
	Description = _("The Ubii were a West Germanic tribe which lived by the Rhine, north of the Main river. Due to their location in a central trading spot, they were more advanced than other Germanic tribes. Being allies of Rome, many of them eventually migrated west of the Rhine, dwelling around Colonia Agrippinenses (the modern Cologne). The ones who remained possibly became the Chatti."),
	HistoricalFactionDerivations = {-55, "teuton", "suebi-tribe"}, -- they are first mentioned in Caesar's writings in 55 BC
	HistoricalDiplomacyStates = {
		-55, "suebi-tribe", "vassal" -- the Ubii were tributaries of the Suebi in 55 BC
	}
})

DefineFaction("varini-tribe", {
	Name = "Varini Tribe",
	Civilization = "teuton",
	ParentFaction = "saxon-tribe", -- accurate?
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"mecklenburg"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "ingaevone-tribe"}
})

-- Teuton polities

DefineFaction("bavaria", {
	Name = "Bavaria",
	Civilization = "teuton",
	ParentFaction = "bavarian-tribe",
	Type = "polity",
	Colors = {"cyan", "white"},
	DefaultTier = "duchy", -- Bavaria was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	},
	DevelopsTo = {"holy-rome"}, -- Bavaria was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	HistoricalDiplomacyStates = {
		784, "francia", "war", -- Bavaria revolted against Frankish rule under Tassilo in 784; Source: "Medieval Warfare V.2", 2013, p. 8.
		787, "francia", "peace" -- Bavarian revolt against Frankish rule quashed by Charles the Great three years after 784; Source: "Medieval Warfare V.2", 2013, p. 8.
	}
})

DefineFaction("saxony", {
	Name = "Saxony",
	Civilization = "teuton",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "duchy", -- Saxony was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	FactionUpgrade = "upgrade-saxon-tribe-faction",
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	},
	DevelopsTo = {"holy-rome"} -- Saxony was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
})

DefineFaction("brandenburg", {
	Name = "Brandenburg",
	Civilization = "teuton",
	ParentFaction = "saxony",
	Type = "polity",
	Colors = {"blue"},
	DefaultTier = "duchy",
	Titles = {
		"monarchy", "duchy", "Margravate"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "duchy", "Margrave",
		"head-of-state", "female", "monarchy", "duchy", "Margrave" -- correct?
	},
	DevelopsTo = {"prussia"} -- allow Prussia to be formed by a Brandenburg that expands to encompass it
})

DefineFaction("bremen", {
	Name = "Bremen",
	Civilization = "teuton",
	ParentFaction = "saxony",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy"
})

DefineFaction("brunswick", {
	Name = "Brunswick",
	Civilization = "teuton",
	ParentFaction = "saxony",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "duchy"
})

DefineFaction("cologne", {
	Name = "Cologne",
	Civilization = "teuton",
	Type = "polity",
	Colors = {"white"},
	DefaultTier = "duchy", -- Cologne was an archbishopric in 1378; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 78-79.
	FactionUpgrade = "upgrade-saxon-tribe-faction",
	Titles = {
		"theocracy", "duchy", "Archbishopric"
	}
})

DefineFaction("friesland", {
	Name = "Friesland",
	Civilization = "teuton",
	ParentFaction = "frisian-tribe",
	Type = "polity",
--	Language = "dutch", -- maybe should be modern Frisian instead?
	Colors = {"black"},
	DefaultTier = "barony", -- Friesland was a lordship in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	DevelopsTo = {"netherlands"}
})

DefineFaction("galicia", { -- Suebi kingdom of Galicia
	Name = "Galicia",
	Civilization = "teuton",
	ParentFaction = "suebi-tribe",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "kingdom",
	HistoricalFactionDerivations = {486, "teuton", "suebi-tribe"}
})

DefineFaction("hesse", {
	Name = "Hesse",
	Civilization = "teuton",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy", -- Hesse was a landgraviate in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	FactionUpgrade = "upgrade-saxon-tribe-faction",
	Titles = {
		"monarchy", "duchy", "Landgraviate"
	},
	HistoricalTiers = {
		1815, "grand-duchy" -- Hesse was a grand duchy in 1815-1866 (there were two German states called "Hesse" then, the Grand Duchy of Hesse and the Electorate of Hesse); Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	}
})

DefineFaction("holy-rome", {
	Name = "Holy Rome",
	Civilization = "teuton",
	Type = "polity",
	Colors = {"yellow"},
	DefaultTier = "empire",
	FactionUpgrade = "upgrade-saxon-tribe-faction",
	HistoricalFactionDerivations = {919, "teuton", "francia"},
	HistoricalDiplomacyStates = {
		985, "bohemia", "war", -- War between Otto II and Bohemia broke out in 985; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
		987, "bohemia", "sovereign" -- Bohemia became again a vassal of the Holy Roman Empire in 987, under heavier subjection; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
	}
})

DefineFaction("jutland", {
	Name = "Jutland",
	Civilization = "teuton",
	ParentFaction = "jute-tribe",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "duchy"
})

DefineFaction("lombardy", {
	Name = "Lombardy",
	Civilization = "teuton",
	ParentFaction = "lombard-tribe",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "kingdom"
})

DefineFaction("magdeburg", {
	Name = "Magdeburg",
	Civilization = "teuton",
	ParentFaction = "brandenburg",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy", -- Magdeburg was an archbishopric in 1547; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 114-115.
	Titles = {
		"theocracy", "duchy", "Archbishopric"
	},
	HistoricalGovernmentTypes = {
		1547, "theocracy" -- Political situation in Central Europe in 1547; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 114-115.
	}
})

DefineFaction("mecklenburg", {
	Name = "Mecklenburg",
	Civilization = "teuton",
	ParentFaction = "saxony",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "grand-duchy",
	FactionUpgrade = "upgrade-mecklenburg-faction"
})

DefineFaction("prussia", {
	Name = "Prussia",
	Civilization = "teuton",
	ParentFaction = "brandenburg",
	Type = "polity",
	Colors = {"black", "white"},
	DefaultTier = "duchy"
})

DefineFaction("thuringia", {
	Name = "Thuringia",
	Civilization = "teuton",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "duchy", -- Thuringia was a landgraviate in 1378; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 78-79.
	FactionUpgrade = "upgrade-thuringian-tribe-faction",
	Titles = {
		"monarchy", "duchy", "Landgraviate"
	}
})

DefineFaction("westphalia", {
	Name = "Westphalia",
	Civilization = "teuton",
	ParentFaction = "saxony",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy"
})

-- Non-Playable Polities

DefineFaction("crimea", {
	Name = "Crimea",
	Civilization = "teuton",
	Type = "polity",
	Colors = {"brown"},
	Playable = false,
	DefaultTier = "kingdom",
	Titles = {
		"monarchy", "kingdom", "Khanate"
	},
	MinisterTitles = {
		"head-of-state", "male", "monarchy", "kingdom", "Khan",
		"head-of-state", "female", "monarchy", "kingdom", "Khan" -- correct?
	}
})

DefineFaction("turkey", {
	Name = "Turkey",
	Civilization = "teuton",
	Type = "polity",
	Colors = {"brown"},
	Playable = false,
	DefaultTier = "empire"
})

Load("scripts/civilizations/teuton/factions_austrian.lua")
Load("scripts/civilizations/teuton/factions_dutch.lua")
Load("scripts/civilizations/teuton/factions_english.lua")
Load("scripts/civilizations/teuton/factions_swabian.lua")
