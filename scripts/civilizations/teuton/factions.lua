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
		"male", "Ariovistus", -- chieftain of the Suebi who fought against Caesar; Source: Dáithí Ó hÓgáin, "The Celts: A History", 2002, p. 138; Source: Heiko Steuer, "Warrior bands, war lords and the birth of tribes and states in the first millenium AD in Middle Europe", 2006, p. 230; Source: H. H. Howorth, "The Ethnology of Germany, Part II: The Germans of Caesar", 1878, p. 222.
		"male", "Ballomar", -- Marcomannic king; Source: "Ancient Warfare VII.6", 2013, p. 23.
		"male", "Catualda", -- Marcomannic noble who was exiled by Marbod, and later returned with an army behind him and deposed Marbod
		"male", "Hermeric", -- Suebic cheiftain who sacked central Galicia
		"male", "Marbod", -- chieftain of the Marcomanni
		"male", "Rechilas", -- Suebic cheiftain who defeated a Roman army led by Andevotus near the Singilis river in 438 AD
		"male", "Tassilo" -- Bavarian ruler who revolted against Frankish dominion; Source: "Medieval Warfare V.2", 2013, p. 8.
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
	--[[
	PersonalNames = {
		"male", "Bernhard", -- duke of Saxony (apparently a contemporary of bishop Thietmar of Merseburg); Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 613.
		"male", "Gottschalk", -- 9th century Saxon monk; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 605.
		"male", "Thietmar", -- Saxon bishop of Merseburg; was alive in 1002; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 613.
		"male", "Widukind" -- Saxon leader who resisted Charlemagne's forces from 772 to 802; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 603.
	},
	--]]
	SettlementNames = {
		"Hardego", -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
		"Hohsingo", -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
		"Suabengo" -- one of the pagi in Eastphalia in 852; Source: James Westfall Thompson, "The Early History of the Saxons as a Field for the Study of German Social Origins", 1926, p. 610.
	}
})

DefineFaction("thuringian-tribe", {
	Name = "Thuringian Tribe",
	Civilization = "teuton",
	Type = "tribe",
	Language = "old-high-german",
	Colors = {"green"},
	FactionUpgrade = "upgrade-thuringian-tribe-faction",
	HistoricalFactionDerivations = {507, "teuton", "suebi-tribe"} -- who did the Thuringians actually stem from?
})

DefineFaction("alamanni-tribe", {
	Name = "Alamanni Tribe",
	Civilization = "teuton",
--	ParentFaction = "suebi-tribe",
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
	ParentFaction = "thuringian-tribe", -- accurate?
	Type = "tribe",
	Colors = {"blue"},
	DevelopsTo = {"thuringia"}, -- same general area
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
		"male", "Agilulf", -- king of the Lombards (from 591 to 616); Source: "Medieval Warfare IV.6", 2013, p. 18.
		"male", "Aistulf", -- king of the Lombards (from 749 to 756); Source: "Medieval Warfare IV.6", 2013, p. 9.
		"male", "Alboin", -- king of the Lombards (from 560 to 572); Source: "Medieval Warfare IV.6", 2013, p. 8.
		"male", "Arichis", -- Lombard duke of Benevento; Source: "Medieval Warfare IV.6", 2013, p. 18.
		"male", "Ariulf", -- Lombard duke of Spoleto; Source: "Medieval Warfare IV.6", 2013, p. 18.
		"male", "Authari", -- king of the Lombards (from 584 to 590); Source: "Medieval Warfare IV.6", 2013, p. 16.
		"male", "Desiderius", -- king of the Lombards; Source: "Medieval Warfare V.2", 2013, p. 7.
		"male", "Gisulf", -- Source: "Medieval Warfare IV.6", 2013, p. 8.
		"male", "Liudprand", -- given by Medieval Warfare as "Liutprand", and by Archibald Lewis as "Liudprand"; king of the Lombards (from 712 to 744); Source: "Medieval Warfare IV.6", 2013, p. 9; Source: Archibald R. Lewis, "The Dukes in the Regnum Francorum, A.D. 550-751", 1976, p. 400.
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
		167, "latin", "rome", "war", -- in 167 the Marcomanni and the Quadi (with the Marcomanni seemingly leading) attacked the Romans and won a battle against 20,000 of them near Carnuntum; Source: "Ancient Warfare VII.6", 2013, p. 7.
		171, "latin", "rome", "peace", -- in 171 the Romans forced the Marcomanni and the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 7.
		177, "latin", "rome", "war", -- the Marcomanni entered conflict with the Romans again in 177; Source: "Ancient Warfare VII.6", 2013, p. 8.
		177, "latin", "rome", "peace" -- in (apparently) 177 the Romans again forced the Marcomanni to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
	}
})

DefineFaction("bavarian-tribe", {
	Name = "Bavarian Tribe",
	Civilization = "teuton",
--	ParentFaction = "marcomanni-tribe",
	Type = "tribe",
	Language = "old-high-german",
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
		167, "latin", "rome", "war", -- in 167 the Marcomanni and the Quadi (with the Marcomanni seemingly leading) attacked the Romans and won a battle against 20,000 of them near Carnuntum; Source: "Ancient Warfare VII.6", 2013, p. 7.
		167, "teuton", "marcomanni-tribe", "alliance",
		171, "latin", "rome", "peace", -- in 171 the Romans forced the Marcomanni and the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 7.
		173, "latin", "rome", "war", -- the Quadi entered conflict with the Romans again in (apparently) 173; Source: "Ancient Warfare VII.6", 2013, p. 8.
		174, "latin", "rome", "peace", -- in 174 the Romans forced the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
		177, "latin", "rome", "war", -- the Quadi entered conflict with the Romans again in 177; Source: "Ancient Warfare VII.6", 2013, p. 8.
		179, "latin", "rome", "peace" -- in 179 the Romans again forced the Quadi to a peace; Source: "Ancient Warfare VII.6", 2013, p. 8.
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
		-55, "teuton", "suebi-tribe", "vassal" -- the Ubii were tributaries of the Suebi in 55 BC
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
	Language = "high-german",
	Colors = {"cyan", "white"},
	DefaultTier = "duchy", -- Bavaria was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	},
	DevelopsTo = {"holy-rome"}, -- Bavaria was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	HistoricalDiplomacyStates = {
		784, "teuton", "francia", "war", -- Bavaria revolted against Frankish rule under Tassilo in 784; Source: "Medieval Warfare V.2", 2013, p. 8.
		787, "teuton", "francia", "peace" -- Bavarian revolt against Frankish rule quashed by Charles the Great three years after 784; Source: "Medieval Warfare V.2", 2013, p. 8.
	}
})

DefineFaction("saxony", {
	Name = "Saxony",
	Civilization = "teuton",
	ParentFaction = "saxon-tribe",
	Type = "polity",
	Language = "high-german",
	Colors = {"pink"},
	DefaultTier = "duchy", -- Saxony was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	Titles = {
		"monarchy", "duchy", "Duchy",
		"monarchy", "kingdom", "Kingdom"
	},
	DevelopsTo = {"holy-rome"} -- Saxony was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
})

DefineFaction("swabia", {
	Name = "Swabia",
	Civilization = "teuton",
	ParentFaction = "alamanni-tribe",
	Language = "high-german",
	Type = "polity",
	Colors = {"orange"},
	DefaultTier = "duchy", -- Swabia was a duchy in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
	DevelopsTo = {"holy-rome"} -- Swabia was a part of the Holy Roman Empire in 919-1125; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
})

DefineFaction("baden", {
	Name = "Baden",
	Civilization = "teuton",
	ParentFaction = "swabia",
	Type = "polity",
	Colors = {"black"},
	DefaultTier = "grand-duchy"
})

DefineFaction("netherlands", {
	Name = "Netherlands",
	Civilization = "teuton",
	ParentFaction = "francia",
	Type = "polity",
--	Language = "dutch",
	Colors = {"orange", "blue"},
	DefaultTier = "kingdom",
	SettlementNames = {
		"'s-Hertogenbosch",
		"Beverwijk",
		"Rotterdam",
		"Staphorst", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
		"Waalwijk"
	},
	ProvinceNames = {
		"Flevoland",
		"Friesland",
		"Gelderland"
	}
})

DefineFaction("brabant", {
	Name = "Brabant",
	Civilization = "teuton",
	ParentFaction = "netherlands",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "duchy", -- Brabant was a duchy in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"netherlands"}
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
	ParentFaction = "francia", -- correct?
	Type = "polity",
	Language = "high-german",
	Colors = {"white"},
	DefaultTier = "duchy", -- Cologne was an archbishopric in 1378; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 78-79.
	Titles = {
		"theocracy", "duchy", "Archbishopric"
	}
})

DefineFaction("drenthe", {
	Name = "Drenthe",
	Civilization = "teuton",
	ParentFaction = "netherlands",
	Type = "polity",
	Colors = {"cyan"},
	DefaultTier = "county", -- Drenthe was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"netherlands"}
})

DefineFaction("england", {
	Name = "England",
	Civilization = "teuton",
	ParentFaction = "angle-tribe",
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
	},
	SettlementNames = {
		"Ashford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Bamburgh", -- Shepherd gives it as "Bamborough" instead; Source: William R. Shepherd, "Historical Atlas", 1911, p. 60; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 74.
		"Bedford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackburn", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackpool", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackwall",
		"Chatham",
		"Chester",
		"Chesterfield",
		"Dartford",
		"Dartmouth",
		"Dorchester",
		"Durham", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"Edinburgh", -- in Scotland
		"Falmouth",
		"Fishguard", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Gateshead", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Greenwich",
		"Guildford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Harrow on the Hill",
		"Hempstead", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Holyhead",
		"Hull", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"Huntingdon",
		"Kingston",
		"Kirkwall", -- in Scotland
		"Liverpool", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Longford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Maidstone", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Mansfield",
		"Marshfield",
		"Newbury", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Newcastle", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"Newhaven", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"Newport", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Newquay", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Northfleet",
		"Norwich",
		"Oldham",
		"Oxford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Plymouth",
		"Portsmouth",
		"Reading",
		"Redditch", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Salisbury", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Scarborough",
		"Shrewsbury", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Stockport", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Stonehaven", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Swanscombe",
		"Swansea", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Torbay", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Waterford",
		"Wells",
		"Westbury",
		"Westport",
		"Whitehaven", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Wimbledon",
		"Woodbridge",
		"Woolwich",
		"Wormshill",
		"Yarmouth" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	},
	ProvinceNames = {
		"Berkshire",
		"Cheshire",
		"Cornwall",
		"Dorset",
		"East Anglia",
		"Essex",
		"Hampshire",
		"Lancashire",
		"Middlesex",
		"Norfolk",
		"Northumberland",
		"Portland", -- duchy
		"Shropshire",
		"Somerset",
		"Suffolk",
		"Sussex",
		"Wessex",
		"Wiltshire"
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
	ParentFaction = "francia",
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

DefineFaction("holland", {
	Name = "Holland",
	Civilization = "teuton",
	ParentFaction = "netherlands",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "county", -- Holland was a county in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"netherlands"}
})

DefineFaction("holy-rome", {
	Name = "Holy Rome",
	Civilization = "teuton",
	ParentFaction = "francia",
	Type = "polity",
	Language = "high-german",
	Colors = {"yellow"},
	DefaultTier = "empire",
	HistoricalFactionDerivations = {919, "teuton", "francia"},
	HistoricalDiplomacyStates = {
		985, "slav", "bohemia", "war", -- War between Otto II and Bohemia broke out in 985; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
		987, "slav", "bohemia", "sovereign" -- Bohemia became again a vassal of the Holy Roman Empire in 987, under heavier subjection; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
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

DefineFaction("overijssel", {
	Name = "Overijssel",
	Civilization = "teuton",
	ParentFaction = "netherlands",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "barony", -- Overijssel was a lordship in 1559-1600; Source: William R. Shepherd, "Historical Atlas", 1911, p. 117.
	DevelopsTo = {"netherlands"}
})

DefineFaction("prussia", {
	Name = "Prussia",
	Civilization = "teuton",
	ParentFaction = "brandenburg",
	Type = "polity",
	Colors = {"black", "white"},
	DefaultTier = "duchy"
})

DefineFaction("scotland", {
	Name = "Scotland",
	Civilization = "teuton",
	ParentFaction = "england",
	Type = "polity",
	Language = "english",
	Colors = {"blue", "white"},
	DefaultTier = "kingdom"
})

DefineFaction("switzerland", {
	Name = "Switzerland",
	Civilization = "teuton",
	ParentFaction = "swabia",
	Type = "polity",
	Colors = {"red", "white"},
	DefaultTier = "kingdom",
	Titles = {
		"republic", "kingdom", "Confederation"
	}
})

DefineFaction("thuringia", {
	Name = "Thuringia",
	Civilization = "teuton",
	ParentFaction = "thuringian-tribe",
	Type = "polity",
	Colors = {"pink"},
	DefaultTier = "duchy", -- Thuringia was a landgraviate in 1378; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 78-79.
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

DefineFaction("wurtemberg", {
	Name = "Wurtemberg",
	Civilization = "teuton",
	ParentFaction = "swabia",
	Type = "polity",
	Colors = {"red"},
	DefaultTier = "kingdom"
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
Load("scripts/civilizations/teuton/factions_english.lua")
