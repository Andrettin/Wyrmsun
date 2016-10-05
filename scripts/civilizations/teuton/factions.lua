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

Load("scripts/civilizations/teuton/factions_frank.lua")

DefineFaction("Suebi Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"black"},
	DefaultTier = "duchy",
	DevelopsTo = {"Galicia", "Bavaria", "Austria", "Carinthia"},
	SplitsTo = {"Buri Tribe", "Marcomanni Tribe", "Quadi Tribe", "Semnone Tribe"},
	FactionUpgrade = "upgrade-suebi-tribe-faction",
	Description = _("The Suebi were a powerful tribe in ancient Germania, battling the Romans a number of times. From the Suebi tribes such as the Marcomanni and the Quadi would originate. In the 5th century a group of Suebi settled and conquered Galicia, establishing a kingdom there."),
	PersonalNames = {
		"male", "Ariovistus", -- chieftain of the Suebi who fought against Caesar; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 222.
		"male", "Marbod", -- chieftain of the Marcomanni
		"male", "Tassilo" -- Bavarian ruler who revolted against Frankish dominion; Source: "Medieval Warfare V.2", 2013, p. 8.
	},
	HistoricalFactionDerivations = {-264, "germanic", "Istaevone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Saxon Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-saxon",
	Colors = {"pink"},
	DevelopsTo = {"Saxony", "Brandenburg", "Essex", "Wessex", "England", "Prussia"},
	FactionUpgrade = "upgrade-saxon-tribe-faction",
	HistoricalFactionDerivations = {-264, "germanic", "Ingaevone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	},
	PersonalNames = {
		"male", "Bernhard", -- duke of Saxony (apparently a contemporary of bishop Thietmar of Merseburg); Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 613.
		"male", "Gottschalk", -- 9th century Saxon monk; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 605.
		"male", "Thietmar", -- Saxon bishop of Merseburg; was alive in 1002; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 613.
		"male", "Widukind" -- Saxon leader who resisted Charlemagne's forces from 772 to 802; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 603.
	},
	SettlementNames = {
		"Hardego", -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
		"Hohsingo", -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
		"Suabengo" -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
	}
})

DefineFaction("Thuringian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"green"},
	FactionUpgrade = "upgrade-thuringian-tribe-faction",
	HistoricalFactionDerivations = {507, "teuton", "Suebi Tribe"} -- who did the Thuringians actually stem from?
})

DefineFaction("Alamanni Tribe", {
	Civilization = "teuton",
--	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"blue"},
	DevelopsTo = {"Baden", "Swabia", "Switzerland", "Wurtemberg"},
	FactionUpgrade = "upgrade-alamanni-tribe-faction",
	HistoricalFactionDerivations = {481, "teuton", "Suebi Tribe"}
})

DefineFaction("Ampsivarii Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?,
	Type = "tribe",
	Colors = {"cyan"},
	DevelopsTo = {"Drenthe", "Netherlands"}, -- same general area
	HistoricalFactionDerivations = {-27, "germanic", "Herminone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Angle Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-english",
	Colors = {"white"},
	DevelopsTo = {"England", "Bernicia", "Deira", "East Anglia", "Mercia", "Middle Anglia", "Northumbria", "Scotland"},
	SplitsTo = {"Bernice Tribe", "Dere Tribe"},
	FactionUpgrade = "upgrade-angle-tribe-faction",
	PersonalNames = { -- Old English names, not Angle ones per se
		"female", "Eanflaed", -- "Eanflæd"; daughter of Edwin of Deira who married Oswiu of Bernicia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
		"male", "Aelfwald", -- "Ælfwald"; grandson of Eadberht of Northumbria; king of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 90, 93.
		"male", "Aelle", -- "Ælle"; first recorded king of Deira; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 75.
		"male", "Aethelbald", -- "Æthelbald"; king of Mercia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
		"male", "Aethelberht", -- "Æthelberht"; king of Kent; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 79.
		"male", "Aethelfrith", -- "Æthelfrith"; king of Bernicia and Deira, and son of Æthelric; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75, 78.
		"male", "Aethelhere", -- "Æthelhere"; king of East Anglia; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 83-84.
		"male", "Aethelred", -- "Æthelred"; son of Penda of Mercia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 85.
		"male", "Aethelred", -- "Æthelred Moll"; son of Æthelwald Moll; king of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 93-94.
		"male", "Aethelric", -- "Æthelric"; king of Bernicia who acquired the kingdom of Deira after Ælle's death; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75-76.
		"male", "Aethelwald", -- "Æthelwald"; son of Oswald of Bernicia and chosen by the Deirans to become their king; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 83.
		"male", "Aethelwald", -- "Æthelwald Moll"; became king of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
		"male", "Alcuin", -- Northumbrian scholar who made the school of York famous; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 90.
		"male", "Aldfrith", -- son of Oswiu and successor to his brother Ecgfrith as king of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
		"male", "Aldhelm", -- abbot of Malmesbury who composed the "Helleborus" riddle; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 89; Source: Alaric Hall, "The Meanings of Elf and Elves in Medieval England", 2004, p. 98.
		"male", "Alhred", -- descendant of Ida of Bernicia and king of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 90, 92-93.
		"male", "Bede", -- wrote the "Historia Ecclesiastica Venerabilis Bedae" around 731 AD; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 34.
		"male", "Beornhaeth", -- "Beornhæth"; Northumbrian ealdorman who quelled a Pictish rebellion with Ecgfrith of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
		"male", "Beorhtfrith", -- Northumbrian ealdorman; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 88.
		"male", "Ceawlin", -- king of Wessex; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
		"male", "Cenwalh", -- king of Wessex; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		"male", "Cenwulf", -- king of Mercia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 94.
		"male", "Ceolwulf", -- king of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 91.
		"male", "Cynegils", -- king of Wessex; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
		"male", "Eadberht", -- succeeded Ceolwulf as king of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
		"male", "Eadfrith", -- son of Edwin of Deira; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
		"male", "Eanfrith", -- son of Æthelfrith and king of Bernicia after Edwin's death; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
		"male", "Eanred", -- son of Eardwulf and king of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 95.
		"male", "Eardwulf", -- king of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 94-95.
		"male", "Ecgfrith", -- son of Oswiu and king of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 85, 88.
		"male", "Edwin", -- heir to Deira who regained his kingdom from Æthelfrith, afterwards also ruling over Bernicia; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-81.
		"male", "Egbert", -- archbishop of York and brother of Eadberht of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
		"male", "Egbert", -- king of Wessex; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 95.
		"male", "Hereric", -- son of a nephew of Edwin of Deira's; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 80.
		"male", "Ida", -- first king of Bernicia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
		"male", "Lilla", -- thegn of Edwin of Deira; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 79.
		"male", "Offa", -- son of Aldfrith of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
		"male", "Offa", -- king of Mercia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 93.
		"male", "Osfrith", -- son of Edwin of Deira; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 80-81.
		"male", "Osred", -- son of Aldfrith and king of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 91.
		"male", "Osric", -- cousin of Edwin and his successor as king of Deira; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
		"male", "Oswald", -- brother of Eanfrith of Bernicia who succeeded him as king; took over Deira as well; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 81-82.
		"male", "Oswine", -- son of Osric of Deira; king of Deira; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 82-83.
		"male", "Oswiu", -- brother and successor of Oswald of Bernicia; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 81-85.
		"male", "Oswulf", -- son of Eadberht of Northumbria; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 92.
		"male", "Peada", -- king of the Middle Angles and son of Penda of Mercia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		"male", "Penda", -- king of Mercia; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 75, 80-81, 83-84.
		"male", "Raedwald", -- "Rædwald"; king of East Anglia; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 78-79.
		"male", "Sigeberht", -- king of Essex; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 84.
		"male", "Talorcan", -- son of Eanfrith of Bernicia who became king of the Picts; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 87.
		"male", "Theodric", -- son of Ida of Bernicia; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 76.
		"male", "Torhtmund", -- Minister of the Northumbrian king Æthelred Moll; Torhtmund killed the king's murderer; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 90.
		"male", "Wulfhere", -- king of Mercia and son of Penda; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 84-85.
		"male", "Wuscfrea", -- son of Edwin of Deira; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
		"male", "Yffi", -- grandson of Edwin of Deira; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 81.
	},
	SettlementNames = {
		"Searuburh" -- the modern Salisbury; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 115.
	},
	HistoricalFactionDerivations = {-264, "germanic", "Ingaevone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Avione Tribe", {
	Civilization = "teuton",
	ParentFaction = "Angle Tribe", -- accurate?,
	Type = "tribe",
	Colors = {"white"}
})

DefineFaction("Batavian Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?
	Type = "tribe",
	Colors = {"orange"},
	DevelopsTo = {"Holland", "Netherlands"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Herminone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Buri Tribe", {
	Civilization = "teuton", -- accurate?
	ParentFaction = "Suebi Tribe", -- accurate?
	Type = "tribe",
	Colors = {"violet"},
	DevelopsTo = {"Bavaria", "Galicia", "Austria", "Carinthia"}, -- accurate?
	HistoricalFactionDerivations = {161, "teuton", "Suebi Tribe"}
})

DefineFaction("Chamavi Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?
	Type = "tribe",
	Colors = {"pink"},
	DevelopsTo = {"Overijssel", "Netherlands"}, -- same general area
	HistoricalFactionDerivations = {-27, "germanic", "Herminone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Charude Tribe", {
	Civilization = "teuton", -- were the Charudes actually West Germanic?
	ParentFaction = "Angle Tribe", -- accurate?
	Type = "tribe",
	Colors = {"purple"},
	DevelopsTo = {"Jutland"}, -- same general area
	HistoricalFactionDerivations = {-27, "germanic", "Ingaevone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Chatti Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?
	Type = "tribe",
	Colors = {"yellow"},
	DevelopsTo = {"Hesse"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Herminone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Chauci Tribe", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe", -- accurate?
	Type = "tribe",
	Colors = {"black"},
	DevelopsTo = {"Bremen"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Ingaevone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Cherusci Tribe", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe", -- accurate?
	Type = "tribe",
	Colors = {"teal"},
	DevelopsTo = {"Brunswick", "Magdeburg"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Ingaevone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Frisian Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-frisian",
	Colors = {"violet", "purple"}, -- change to a better one?
	DevelopsTo = {"Friesland", "Netherlands"},
	FactionUpgrade = "upgrade-frisian-tribe-faction",
	HistoricalFactionDerivations = {-264, "germanic", "Ingaevone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Hermunduri Tribe", {
	Civilization = "teuton",
	ParentFaction = "Thuringian Tribe", -- accurate?
	Type = "tribe",
	Colors = {"blue"},
	DevelopsTo = {"Thuringia"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Istaevone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Jute Tribe", {
	Civilization = "teuton",
	ParentFaction = "Angle Tribe", -- accurate?
	Type = "tribe",
	Colors = {"red", "white"},
	DevelopsTo = {"Jutland", "Kent"}
})

DefineFaction("Lombard Tribe", {
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german", -- should be Lombardic
	Colors = {"green"},
	DevelopsTo = {"Lombardy"},
	FactionUpgrade = "upgrade-lombard-tribe-faction",
	PersonalNames = {
		"male", "Agilulf", -- king of the Lombards (from 591 to 616); Source: "Medieval Warfare IV.6", 2013, p. 18.
		"male", "Aistulf", -- king of the Lombards (from 749 to 756); Source: "Medieval Warfare IV.6", 2013, p. 9.
		"male", "Alboin", -- king of the Lombards (from 560 to 572); Source: "Medieval Warfare IV.6", 2013, p. 8.
		"male", "Arichis", -- Lombard duke of Benevento; Source: "Medieval Warfare IV.6", 2013, p. 18.
		"male", "Ariulf", -- Lombard duke of Spoleto; Source: "Medieval Warfare IV.6", 2013, p. 18.
		"male", "Authari", -- king of the Lombards (from 584 to 590); Source: "Medieval Warfare IV.6", 2013, p. 16.
		"male", "Desiderius", -- king of the Lombards; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Gisulf", -- Source: "Medieval Warfare IV.6", 2013, p. 8.
		"male", "Liutprand", -- king of the Lombards (from 712 to 744); Source: "Medieval Warfare IV.6", 2013, p. 9.
		"male", "Nordulf" -- Lombard mercenary; Source: "Medieval Warfare IV.6", 2013, p. 18.
	},
	HistoricalFactionDerivations = {-264, "germanic", "Istaevone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Marcomanni Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Colors = {"orange", "red"}, -- change to a better one?
	DevelopsTo = {"Bavarian Tribe", "Bavaria", "Galicia", "Austria", "Carinthia"},
	Description = _("The Marcomanni were a Suebic tribe. Eventually they migrated to the east, settling in Bohemia and expelling the local Boii tribe. In the 2nd century they fought the terrible Marcomannic Wars against the Romans. The name \"Marcomanni\" means \"march-men\", or \"frontier-men\"."),
	HistoricalFactionDerivations = {-9, "teuton", "Suebi Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	},
	HistoricalDiplomacyStates = {
		167, "latin", "Rome", "war", -- in 167 the Marcomanni and the Quadi (with the Marcomanni seemingly leading) attacked the Romans and won a battle against 20,000 of them near Carnuntum; Source: "Ancient Warfare VII.6", 2013, p. 7.
		171, "latin", "Rome", "peace", -- in 171 the Romans forced the Marcomanni and the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 7.
		177, "latin", "Rome", "war", -- the Marcomanni entered conflict with the Romans again in 177; Source: "Ancient Warfare VII.6", 2013, p. 8.
		177, "latin", "Rome", "peace" -- in (apparently) 177 the Romans again forced the Marcomanni to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
	}
})

DefineFaction("Bavarian Tribe", {
	Civilization = "teuton",
--	ParentFaction = "Marcomanni Tribe",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"cyan", "white"},
	DevelopsTo = {"Bavaria", "Austria", "Carinthia"},
	FactionUpgrade = "upgrade-bavarian-tribe-faction",
	Description = _("The Bavarians were a West Germanic people, tracing their origins to the Marcomanni. Their name means \"men of Bohemia\", an appelation they gained due to the Marcomanni having established themselves in Bohemia under Marbod. The Bavarians migrated south, giving their newly-settled land the name it has to this day, Bavaria."),
	HistoricalFactionDerivations = {526, "teuton", "Marcomanni Tribe"}
})

DefineFaction("Quadi Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Bavaria", "Galicia", "Austria", "Carinthia"}, -- the Quadi were a Suebic tribe
	HistoricalFactionDerivations = {-9, "teuton", "Suebi Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	},
	HistoricalDiplomacyStates = {
		167, "latin", "Rome", "war", -- in 167 the Marcomanni and the Quadi (with the Marcomanni seemingly leading) attacked the Romans and won a battle against 20,000 of them near Carnuntum; Source: "Ancient Warfare VII.6", 2013, p. 7.
		171, "latin", "Rome", "peace", -- in 171 the Romans forced the Marcomanni and the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 7.
		173, "latin", "Rome", "war", -- the Quadi entered conflict with the Romans again in (apparently) 173; Source: "Ancient Warfare VII.6", 2013, p. 8.
		174, "latin", "Rome", "peace", -- in 174 the Romans forced the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
		177, "latin", "Rome", "war", -- the Quadi entered conflict with the Romans again in 177; Source: "Ancient Warfare VII.6", 2013, p. 8.
		179, "latin", "Rome", "peace" -- in 179 the Romans again forced the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
	}
})

DefineFaction("Semnone Tribe", {
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Suebi Tribe", "Bavaria", "Austria", "Carinthia"},
	HistoricalFactionDerivations = {-264, "teuton", "Suebi Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Sugambri Tribe", {
	Civilization = "teuton",
	ParentFaction = "Frank Tribe", -- accurate?
	Type = "tribe",
	Colors = {"black"},
	DevelopsTo = {"Westphalia"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Herminone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Teuton Tribe", {
	Civilization = "teuton",
	ParentFaction = "Angle Tribe", -- accurate?
	Type = "tribe",
	Colors = {"orange"},
	DevelopsTo = {"Jutland"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Ingaevone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineFaction("Ubii Tribe", { -- Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, pp. 227-228.
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german", -- correct?
	FactionUpgrade = "upgrade-ubii-tribe-faction",
	Colors = {"purple"},
	DevelopsTo = {"Cologne", "Hesse"}, -- same general area
	Description = _("The Ubii were a West Germanic tribe which lived by the Rhine, north of the Main river. Due to their location in a central trading spot, they were more advanced than other Germanic tribes. Being allies of Rome, many of them eventually migrated west of the Rhine, dwelling around Colonia Agrippinenses (the modern Cologne). The ones who remained possibly became the Chatti."),
	HistoricalFactionDerivations = {-55, "teuton", "Suebi Tribe"}, -- they are first mentioned in Caesar's writings in 55 BC
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	},
	HistoricalDiplomacyStates = {
		-55, "teuton", "Suebi Tribe", "vassal" -- the Ubii were tributaries of the Suebi in 55 BC
	}
})

DefineFaction("Varini Tribe", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe", -- accurate?
	Type = "tribe",
	Colors = {"brown"},
	DevelopsTo = {"Mecklenburg"}, -- same general area
	HistoricalFactionDerivations = {-264, "germanic", "Ingaevone Tribe"},
	HistoricalTechnologies = {
		"upgrade-teuton-spatha", 180 -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

-- Teuton polities

DefineFaction("Bavaria", {
	Civilization = "teuton",
	ParentFaction = "Bavarian Tribe",
	Type = "polity",
	Language = "high-german",
	Colors = {"cyan", "white"},
	DefaultTier = "duchy", -- Bavaria was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	},
	DevelopsTo = {"Holy Rome"}, -- Bavaria was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	HistoricalDiplomacyStates = {
		784, "teuton", "Francia", "war", -- Bavaria revolted against Frankish rule under Tassilo in 784; Source: "Medieval Warfare V.2", 2013, p. 8.
		787, "teuton", "Francia", "peace" -- Bavarian revolt against Frankish rule quashed by Charles the Great three years after 784; Source: "Medieval Warfare V.2", 2013, p. 8.
	}
})

DefineFaction("Saxony", {
	Civilization = "teuton",
	ParentFaction = "Saxon Tribe",
	Type = "polity",
	Language = "high-german",
	Colors = {"pink"},
	DefaultTier = "duchy", -- Saxony was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	},
	DevelopsTo = {"Holy Rome"} -- Saxony was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
})

DefineFaction("Swabia", {
	Civilization = "teuton",
	ParentFaction = "Alamanni Tribe",
	Language = "high-german",
	Type = "polity",
	Colors = {"orange"},
	DefaultTier = "duchy", -- Swabia was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	DevelopsTo = {"Holy Rome"} -- Swabia was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
})

DefineFaction("Baden", {
	Civilization = "teuton",
	ParentFaction = "Swabia",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "grand-duchy"
})

DefineFaction("Netherlands", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
--	Language = "dutch",
	Colors = {"orange", "blue"},
	DefaultTier = "kingdom"
})

DefineFaction("Brabant", {
	Civilization = "teuton",
	ParentFaction = "Netherlands",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "duchy", -- Brabant was a duchy in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"Netherlands"}
})

DefineFaction("Brandenburg", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
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
	DevelopsTo = {"Prussia"} -- allow Prussia to be formed by a Brandenburg that expands to encompass it
})

DefineFaction("Bremen", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy"
})

DefineFaction("Brunswick", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "duchy"
})

DefineFaction("Cologne", {
	Civilization = "teuton",
	ParentFaction = "Francia", -- correct?
	Type = "polity",
	Language = "high-german",
	Colors = {"white"},
	DefaultTier = "duchy", -- Cologne was an archbishopric in 1378; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 78-79.
	Titles = {
		"theocracy", "duchy", "Archbishopric"
	}
})

DefineFaction("Drenthe", {
	Civilization = "teuton",
	ParentFaction = "Netherlands",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "county", -- Drenthe was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"Netherlands"}
})

DefineFaction("England", {
	Civilization = "teuton",
	ParentFaction = "Angle Tribe",
	Type = "polity",
	Language = "english",
	Colors = {"red", "white"},
	DefaultTier = "kingdom",
	PersonalNames = {
		"female", "Catherine",
		"female", "Charlotte",
		"female", "Elizabeth",
		"female", "Mary",
		"female", "Victoria",
		"male", "Adam",
		"male", "Alexander",
		"male", "Alf",
		"male", "Alfred",
		"male", "Arthur",
		"male", "Benjamin",
		"male", "Bernard",
		"male", "Charles",
		"male", "Christopher",
		"male", "David",
		"male", "Donald",
		"male", "Edgar",
		"male", "Edmund",
		"male", "Edward",
		"male", "Elias",
		"male", "Francis",
		"male", "Frederick",
		"male", "George",
		"male", "Godfrey",
		"male", "Harold",
		"male", "Harrison",
		"male", "Harry",
		"male", "Henry",
		"male", "Jack",
		"male", "James",
		"male", "John",
		"male", "Joseph",
		"male", "Kenneth",
		"male", "Lewis",
		"male", "Malcolm",
		"male", "Mark",
		"male", "Matthew",
		"male", "Michael",
		"male", "Nathan",
		"male", "Nicolas",
		"male", "Oliver",
		"male", "Peter",
		"male", "Philip",
		"male", "Richard",
		"male", "Robert",
		"male", "Sebastian",
		"male", "Stephen",
		"male", "Theodore",
		"male", "Thomas",
		"male", "William"
	}
})

DefineFaction("Friesland", {
	Civilization = "teuton",
	ParentFaction = "Frisian Tribe",
	Type = "polity",
--	Language = "dutch", -- maybe should be modern Frisian instead?
	Colors = {"black"},
	DefaultTier = "barony", -- Friesland was a lordship in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	Titles = {
		"monarchy", "barony", "Lordship"
	},
	DevelopsTo = {"Netherlands"}
})

DefineFaction("Galicia", { -- Suebi kingdom of Galicia
	Civilization = "teuton",
	ParentFaction = "Suebi Tribe",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "kingdom",
	HistoricalFactionDerivations = {486, "teuton", "Suebi Tribe"}
})

DefineFaction("Hesse", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
	Language = "high-german",
	Colors = {"black"},
	DefaultTier = "duchy", -- Hesse was a landgraviate in 1648; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 122-123.
	Titles = {
		"monarchy", "duchy", "Landgraviate"
	},
	HistoricalTiers = {
		1815, "grand-duchy" -- Hesse was a grand duchy in 1815-1866 (there were two German states called "Hesse" then, the Grand Duchy of Hesse and the Electorate of Hesse); Source: William R. Shepherd, "Historical Atlas", 1911, pp. 158-159.
	}
})

DefineFaction("Holland", {
	Civilization = "teuton",
	ParentFaction = "Netherlands",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "county", -- Holland was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"Netherlands"}
})

DefineFaction("Holy Rome", {
	Civilization = "teuton",
	ParentFaction = "Francia",
	Type = "polity",
	Language = "high-german",
	Colors = {"yellow"},
	DefaultTier = "empire",
	HistoricalFactionDerivations = {919, "teuton", "Francia"},
	HistoricalDiplomacyStates = {
		985, "slav", "Bohemia", "war", -- War between Otto II and Bohemia broke out in 985; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
		987, "slav", "Bohemia", "sovereign" -- Bohemia became again a vassal of the Holy Roman Empire in 987, under heavier subjection; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
	}
})

DefineFaction("Jutland", {
	Civilization = "teuton",
	ParentFaction = "Jute Tribe",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "duchy"
})

DefineFaction("Lombardy", {
	Civilization = "teuton",
	ParentFaction = "Lombard Tribe",
	Type = "polity",
	Colors = {"green"},
	DefaultTier = "kingdom"
})

DefineFaction("Magdeburg", {
	Civilization = "teuton",
	ParentFaction = "Brandenburg",
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

DefineFaction("Mecklenburg", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"brown"},
	DefaultTier = "grand-duchy",
	FactionUpgrade = "upgrade-mecklenburg-faction"
})

DefineFaction("Overijssel", {
	Civilization = "teuton",
	ParentFaction = "Netherlands",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "barony", -- Overijssel was a lordship in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"Netherlands"}
})

DefineFaction("Prussia", {
	Civilization = "teuton",
	ParentFaction = "Brandenburg",
	Type = "polity",
	Colors = {"black", "white"},
	DefaultTier = "duchy"
})

DefineFaction("Scotland", {
	Civilization = "teuton",
	ParentFaction = "England",
	Type = "polity",
	Language = "english",
	Colors = {"blue", "white"},
	DefaultTier = "kingdom"
})

DefineFaction("Switzerland", {
	Civilization = "teuton",
	ParentFaction = "Swabia",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "kingdom",
	Titles = {
		"republic", "kingdom", "Confederation"
	}
})

DefineFaction("Thuringia", {
	Civilization = "teuton",
	ParentFaction = "Thuringian Tribe",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "duchy", -- Thuringia was a landgraviate in 1378; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 78-79.
	Titles = {
		"monarchy", "duchy", "Landgraviate"
	}
})

DefineFaction("Westphalia", {
	Civilization = "teuton",
	ParentFaction = "Saxony",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "duchy"
})

DefineFaction("Wurtemberg", {
	Civilization = "teuton",
	ParentFaction = "Swabia",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom"
})

-- Non-Playable Polities

DefineFaction("Crimea", {
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

DefineFaction("Turkey", {
	Civilization = "teuton",
	Type = "polity",
	Colors = {"brown"},
	Playable = false,
	DefaultTier = "empire"
})

Load("scripts/civilizations/teuton/factions_austrian.lua")
Load("scripts/civilizations/teuton/factions_english.lua")
