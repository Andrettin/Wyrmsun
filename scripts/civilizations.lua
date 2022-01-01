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
--      (c) Copyright 2015-2021 by Andrettin
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

--[[
DefineCivilization("dutch", { -- information for later use
	Display = "Dutch",
	Playable = false,
	Visible = true,
	Group = "continental_west_germanic",
	ParentCivilization = "teuton",
	Language = "dutch",
	Adjective = "Dutch",
	DevelopsFrom = {"teuton"},
	ProvinceNames = {
		"Gelderland", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
		"Overijssel" -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
	},
	RiverNames = {
		"Ijssel" -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
	}
})
--]]

DefineCivilization("germanic", {
	Display = "Germanic",
	Visible = true,
	ParentCivilization = "neutral",
	Language = "proto-germanic",
	Interface = "germanic",
	Adjective = "Germanic",
	Calendar = "anglo_saxon_calendar",
	CivilizationUpgrade = "upgrade-germanic-civilization",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-germanic-wooden-oblong-shield",
		"attack", "icon-germanic-short-sword",
		"patrol", "icon-germanic-patrol-land",
		"stand-ground", "icon-germanic-stand-ground",
		"return-goods", "icon-germanic-return-goods"
	},
	UIFillers = {
		"interface/germanic/filler_bottom.png", 380, -181,
		"interface/germanic/buttonpanel.png", -256, -200,
		"interface/germanic/infopanel.png", 0, -200
	},
	Description = "During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. Those who migrated to Scandinavia spoke their own dialect of Indo-European, which eventually would develop into Germanic. Contact with the Celtic peoples to their south was beneficial to the Germanics, as they were able to incorporate more advanced techniques from Central Europe in areas such as metalworking.",
	PersonalNames = {
		"female", "Ammon", -- Proto-Germanic rendering of "Amma", Karl's mother in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21.
		"female", "Moder", -- Proto-Germanic rendering of "Mothir", Jarl's mother in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 22.
		"male", "Aban", -- Proto-Germanic rendering of "Afi", Karl's (presumed) father in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21; Source: Guus Kroonen, "Etymological Dictionary of Proto-Germanic", 2013, p. 1.
		"male", "Fader", -- Proto-Germanic rendering of "Fathir", Jarl's (presumed) father in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 22.
		"male", "Godagaz", -- correct?
		"male", "Hadulaikaz", -- correct?
		"male", "Hagustaldaz", -- correct?
		"male", "Hlewagastiz", -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 1.2.
		"male", "Holtagastiz", -- correct?
		"male", "Theudariks", -- correct?
		"male", "Wagigaz", -- correct?
		"male", "Wiwaz", -- correct?
		"male", "Woduridaz" -- correct?
	},
	ProvinceNames = {
		"Ansulanda", -- rendering of "Asaland" in Proto-Germanic, as in the Ynglinga saga's story Asaland is the region in "Asia" in which Odin's people (here understood as the Indo-Europeans who went on to settle Scandinavia and become speakers of Proto-Germanic) used to live until they migrated to Scandinavia; alternatively called "Asaheim"; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
	}
})

DefineCivilization("celt", { -- has to be defined after the germanic civilization because it uses it as its parent civilization
	Display = "Celt",
	Visible = true,
	Language = "proto-celtic",
	ParentCivilization = "germanic",
	Adjective = "Celtic",
	Playable = false,
	CivilizationUpgrade = "upgrade-celtic-civilization",
	Description = "During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. One group of Indo-Europeans spoke a dialect which would later develop into the Celtic and Italic languages. Celtic peoples occupied large swathes of Europe, from France to the Middle Danube. They had trade contacts with Greeks and Romans, and warred a number of times with the latter. Eventually, most Celts would be conquered and assimilated by other peoples, leaving only small areas where Celtic languages were still spoken.",
	PersonalNames = {
		"female", "Rigantona", -- "Rīgantonā"; Proto-Celtic version of the Welsh name "Rhiannon"; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 124.
		"male", "Cassivellaunus", -- ancient Celt; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 137.
		"male", "Tigernonos", -- Proto-Celtic version of the Welsh name "Teyrnon"; means "great lord"; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 126.
		
		-- some Briton/Gaul names, so that the Celtic name list is bigger
		"male", "Ambiorix",
		"male", "Cativolcus",
		"male", "Indutiomarus"
	}
})

DefineCivilization("teuton", {
	--[[
	SettlementNames = {
		"Altsohl",
		"Blumenau",
		"Botzen",
		"Braunau",
		"Bregenz",
		"Chlum",
		"Darmstadt",
		"Eger",
		"Eisenerz",
		"Eisenstadt",
		"Erfurt",
		"Franzensfeste",
		"Freistadt",
		"Friedeburg",
		"Frohsdorf",
		"Fünfkirchen",
		"Fürstenfeld",
		"Gabel",
		"Ganserndorf", -- "Gänserndorf"
		"Glurns",
		"Hals",
		"Halsbrücke",
		"Halsdorf",
		"Hartberg",
		"Heiligenstadt",
		"Horn",
		"Hühnerwasser",
		"Ischl",
		"Josefstadt",
		"Kaiserslautern",
		"Karlsbad",
		"Klausenburg",
		"Klosterneuburg",
		"Kolberg",
		"Königgrätz",
		"Königinhof",
		"Krems",
		"Kremsier",
		"Kreuztal",
		"Kronstadt",
		"Kufstein",
		"Lemberg",
		"Leopoldstadt",
		"Luxemburg",
		"Mannheim",
		"Marburg",
		"Meisenheim",
		"Mühlenbach",
		"München",
		"Münchengrätz",
		"Neue Sorge",
		"Neunkirchen",
		"Neusatz", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 168.
		"Neusohl",
		"Neusorge",
		"Neustadt",
		"Nikolsburg",
		"Ödenburg",
		"Pilsen",
		"Rosenheim",
		"Sadowa",
		"Schässburg",
		"Schweinschädel",
		"Sorge",
		"Spielberg",
		"Steinamanger",
		"Stuhlweissenburg",
		"Stuttgart",
		"Teplitz",
		"Teschen",
		"Tobitschau",
		"Torfhaus",
		"Trent",
		"Troppau",
		"Weisskirchen",
		"Wels",
		"Werschitz",
		"Wolfsberg",
		"Wolfsburg",
		"Würzburg",
		"Zillertal",
		"Zweibrücken"
	},
	--]]
	ProvinceNames = {
		"Altmark", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 134-135.
		"Burgenland",
		"Holstein",
		"Mittelmark", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 134-135.
		"Neumark", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 134-135.
		"Nordgau",
		"Ostmark",
		"Pomerania",
		"Schlesien",
		"Schleswig",
		"Siebenbürgen",
		"Styria", -- "Steiermark"
		"Tyrol", -- "Tirol"
		"Vorarlberg" 
	}
})

DefineCivilization("anglo-saxon", {
	Calendar = "anglo_saxon_calendar",
	Currency = "scilling",
	--[[
	SettlementNames = {
		"Abbandun",  -- Old English name of Abingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Abbodesbyrig", -- Old English name of Abbotsbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p.
		"Aegelesburg", -- "Ægelesburg"; Old English name of Aylesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Aegelesford", -- "Ægelesford"; Old English name of Aylesford; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Alre", -- Old English name of Aller; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Andeferas", -- Old English name of Andover; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Apuldre", -- Old English name of Appledore; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Assandun", -- Old English name of Ashingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Badecanwiellon", -- Old English name of Bakewell; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Baddanbyrig", -- Old English name of the Badbury Rings; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Baenesingtun", -- "Bænesingtun"; Old English name of Bensington; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bancornaburg", -- Old English name of Bangor on Dee; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bardanstapol", -- Old English name of Barnstaple; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Basengum", -- Old English name of Basing; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Beamfleot", -- Old English name of Benfleet; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Gumeninga Hearh" -- Old English name of Harrow on the Hill; the name means "the holy place of the Gumeningas"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	}
	--]]
})

DefineCivilization("english", {
	--[[
	SettlementNames = {
		"Ashford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Bedford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackburn", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackpool", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackwall",
		"Chatham",
		"Chesterfield",
		"Dartford",
		"Dartmouth",
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
		"Redditch", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Scarborough",
		"Shrewsbury", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Stockport", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Stonehaven", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Swanscombe",
		"Swansea", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Torbay", -- Source: "Philip's International School Atlas", 2006, p. 64.
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
	--]]
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
		"Wiltshire"
	}
})

DefineCivilization("frankish", {
	Display = "Frankish",
	Visible = true,
	Group = "continental_west_germanic",
	Language = "old-frankish",
	ParentCivilization = "teuton",
	Adjective = "Frankish",
	CivilizationUpgrade = "upgrade-frankish-civilization",
	DevelopsFrom = {"germanic"},
	Description = "The Franks are one of the most powerful Germanic tribes to have existed. From their humble beginnings in their dwellings along the Rhine, they eventually managed to conquer the entirety of Gaul and much of Central Europe.",
	PersonalNames = {
		"male", "Answald", -- Old Frankish name; Source: http://www.cnrtl.fr/definition/lourdaud//1
		"male", "Grimwald" -- Old Frankish name; Source: http://www.cnrtl.fr/definition/lourdaud//1
	},
	--[[
	SettlementNames = {
		"Haim" -- the French settlement names "Le Hamel", "Hamelet", "Hamelin" and "Hem" come from or have the same origin as the Old French "ham", which in turn comes from Old Frankish "haim"; Source: http://www.cnrtl.fr/definition/hameau
	},
	--]]
	UIFillers = {
		"dlcs/frankish_faction_flair/graphics/ui/filler_bottom.png", 380, -181,
		"dlcs/frankish_faction_flair/graphics/ui/buttonpanel.png", -256, -200,
		"dlcs/frankish_faction_flair/graphics/ui/infopanel.png", 0, -200
	}
})

DefineCivilization("suebi", {
	Display = "Suebi",
	Visible = true,
	Group = "continental_west_germanic",
	Language = "old-high-german",
	ParentCivilization = "teuton",
	Adjective = "Suebi",
	CivilizationUpgrade = "upgrade-suebi-civilization",
	DevelopsFrom = {"germanic"},
	Description = "The Suebi were a powerful tribe in ancient Germania, battling the Romans a number of times. From the Suebi tribes such as the Marcomanni and the Quadi would originate. In the 5th century a group of Suebi settled and conquered Galicia, establishing a kingdom there."
})

DefineCivilization("gaul", {
	Display = "Gaul",
	Visible = false,
	Language = "gaulish",
	ParentCivilization = "teuton", -- so that it can use Teuton buildings/units
	Adjective = "Gaul",
	Playable = false
})

DefineCivilization("briton", {
	Display = "Briton",
	Visible = false,
	Language = "british",
	ParentCivilization = "teuton", -- so that it can use Teuton buildings/units
	Adjective = "Briton",
	Playable = false,
	PersonalNames = {
		"male", "Cassivellaunus", -- ancient Celt; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 137.
	},
	--[[
	SettlementNames = {
		"Moridunum" -- the modern Carmarthen; main settlement of the Demetae (ancient Briton people); Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	},
	--]]
	ProvinceNames = {
		"Demetia", -- land of the Demetae, an ancient Briton people; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	}
})

DefineCivilization("welsh", {
	Display = "Welsh",
	Visible = false,
	Group = "brythonic",
	Language = "welsh",
	ParentCivilization = "briton",
	Adjective = "Welsh",
	Playable = false,
	PersonalNames = {
		"female", "Aranrhod", -- daughter of Dôn; Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 143.
		"female", "Branwen", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 130.
		"female", "Penarddun", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 132.
		"male", "Beli", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 132.
		"male", "Bendigeidfran", -- Welsh name; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 130.
		"male", "Caradawg", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"male", "Caswallawn", -- Welsh; son of Beli; equated in the Middle Ages with the Cassivellaunus of antiquity; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 137.
		"male", "Cawrdaf", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"male", "Euroswydd", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Gofannon", -- Welsh; the name derives from that of an ancient Celtic deity, Gobannonos; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 143-144.
		"male", "Gwydion", -- Welsh; son of Dôn; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 142.
		"male", "Llyr", -- "Llŷr"; Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Llywelyn", -- Llywelyn ap Gruffudd, Welsh prince; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Madog", -- Madog ap Maredudd, last ruler of Powys; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 142.
		"male", "Manawydan", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Mynogan", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 132.
		"male", "Teyrnon" -- Welsh name; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 126.
	},
	--[[
	SettlementNames = {
		"Aber Menei", -- port near Caernarfon; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 134.
		"Aberffraw", -- most important residence of the prince of Gwynedd, located in the southwest of the island of Anglesey; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 133.
		"Arberth", -- settlement in Dyfed (Wales), perhaps the modern Narberth; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Caer Dathyl", -- possibly the iron age hill fort Tre'r Ceiri; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 72, 142.
		"Caer Seint", -- the modern Caernarfon and the Roman Segontium; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"Harddlech", -- settlement in the Welsh region of Ardudwy; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"Pen Llwyn Diarwya" -- settlement in Dyfed (Wales); Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 118.
	},
	--]]
	ProvinceNames = {
		"Ardudwy", -- Welsh region; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"Arfon",  -- cantref (administrative division) of Gwynedd; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 142.
		"Bychan",  -- cantref (administrative division) of Ystrad Tywi; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 128-129.
		"Cemais", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Deugledyff", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Eginog",  -- cantref (administrative division) of Ystrad Tywi; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 128-129.
		"Emlyn", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Gwarthaf", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Mawr",  -- cantref (administrative division) of Ystrad Tywi; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 128-129.
		"Pebidiog", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Penfro", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Rhos" -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	}
})

DefineCivilization("gael", {
	Display = "Gael",
	Visible = false,
	Group = "gaelic",
	Language = "irish",
	ParentCivilization = "teuton", -- so that it can use Teuton buildings/units
	Adjective = "Gael",
	Playable = false
})

DefineCivilization("latin", {
	Display = "Latin",
	Visible = true,
	Group = "latin",
	Language = "latin",
	ParentCivilization = "teuton",
	Adjective = "Latin",
	Playable = false,
	CivilizationUpgrade = "upgrade-latin-civilization",
	Description = "During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. One group of Indo-Europeans spoke a dialect which would later develop into the Celtic and Italic languages. Latins were an Italic people who inhabited Central Italy and who founded many cities, one of them being Rome. With the expansion of consolidation of Roman power, most of Italy would be latinized, and eventually large areas of the Roman empire would speak Latin as their mother tongue.",
	PersonalNames = {
		"female", "Faustina", -- daughter of Emperor Antoninus Pius who married Marcus Aurelius; Source: "Ancient Warfare VII.6", 2013, pp. 6, 8.
		"male", "Antoninus", -- Antoninus Pius, Roman emperor; Source: "Ancient Warfare VII.6", 2013, p. 6.
		"male", "Attidius", -- Attidius Cornelianus, Roman governor of Syria; Source: "Ancient Warfare VII.6", 2013, p. 7.
		"male", "Avitus", -- Archbishop Avitus of Vienne; corresponded with the Burgundian king Sigismund c. 494-523, and was his chief advisor; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 99.
		"male", "Commodus", -- son of Marcus Aurelius and Faustina, succeeded his father as Roman emperor; Source: "Ancient Warfare VII.6", 2013, p. 6.
		"male", "Leo", -- Eastern Roman emperor who renounced the treaty with the Ostrogoths; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
		"male", "Marcianus", -- source gives "Marcian"; Eastern Roman emperor who concluded a treaty with the Ostrogothic king Walamer after he had become independent in 453 AD, with the Ostrogoths providing protection of the frontier while the Romans gave them a subsidy; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
		"male", "Seneca", -- philosopher, of the school of Roman Stoicism; Source: "Ancient Warfare VII.6", 2013, p. 9.
		"male", "Severianus", -- governor of Armenia; Source: "Ancient Warfare VII.6", 2013, p. 7.
		"male", "Sidonius", -- Sidonius Apollinaris, Gallo-Roman writer; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 96.
		"male", "Zeno" -- Eastern Roman Emperor; was emperor by 480; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 7.
	},
	--[[
	SettlementNames = {
		"Agrigentum",
		"Alba",
		"Antium",
		"Ardea",
		"Arretium",
		"Beneventum",
		"Bracara Augusta", -- Braga
		"Buxentum",
		"Caesaraugusta",
		"Capua",
		"Circeii",
		"Clusium",
		"Corfinium",
		"Cora",
		"Croton",
		"Cumae",
		"Emporium",
		"Fregellae",
		"Fregena",
		"Fyrgi",
		"Genua", -- Genoa
		"Heraclea",
		"Locri",
		"Luceria",
		"Lucus Augusti",
		"Mariana",
		"Minturnae",
		"Narnia",
		"Nora",
		"Norba",
		"Olbia",
		"Ostia",
		"Puteoli",
		"Rhegium",
		"Salernum",
		"Salicula",
		"Satricum",
		"Segontium", -- Roman fortress, located where the modern Caernarfon is; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"Setia",
		"Signia",
		"Sinuessa",
		"Sora",
		"Sulci",
		"Sutrium",
		"Sybaris",
		"Tarentum",
		"Tarracina",
		"Thurii",
		"Turnis Libisonis",
		"Usellis",
		"Velitrae",
		"Venusia",
		"Vibo Valentia",
		"Vulturnus"
	}
	--]]
})

DefineCivilization("castillian", {
	Display = "Castillian",
	Visible = false,
	Group = "latin",
	ParentCivilization = "latin",
	Adjective = "Castillian",
	Playable = false
})

DefineCivilization("portuguese", {
	Display = "Portuguese",
	Visible = false,
	Group = "latin",
	ParentCivilization = "latin",
	Adjective = "Portuguese",
	Playable = false,
	--UnitClassNames = {
	--	"farm", "Macacos" -- farm in Rio de Janeiro; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 13.
	--}
})

DefineCivilization("romanian", {
	Display = "Romanian",
	Visible = false,
	Group = "latin",
	ParentCivilization = "latin",
	Adjective = "Romanian",
	Playable = false
})

DefineCivilization("basque", { -- represents not only the speakers of Vasconic languages, but also various pre-Indo-European cultures
	Display = "Basque",
	Visible = false,
	Group = "old_european",
	Language = "basque",
	ParentCivilization = "germanic",
	Adjective = "Basque",
	Playable = false
})

DefineCivilization("goth", {
	Display = "Goth",
	Visible = true,
	Group = "east_germanic",
	Language = "gothic",
	ParentCivilization = "teuton",
	Adjective = "Gothic",
	CivilizationUpgrade = "upgrade-gothic-civilization",
	DevelopsFrom = {"germanic"},
	Currency = "tremissis",
	Description = "During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). The Goths and the Vandals played an important role in the wars and migrations of late antiquity, and apportioned a part of the Roman empire for themselves. The Visigoths (the Western Goths) settled in Spain and southern France, the Ostrogoths (the Eastern Goths) in Italy, and the Vandals in North Africa. Being a small minority relative to the populations they had conquered, eventually Goths and Vandals would assimilate into the local cultures.",
	PersonalNames = {
		-- Burgundian names
		"male", "Hanhualdus", -- presumably a male name; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.3.
	}
})

DefineCivilization("assyrian", {
	Display = "Assyrian",
	Visible = false,
	ParentCivilization = "greek",
	Adjective = "Assyrian",
	Playable = false
})

DefineCivilization("babylonian", {
	Display = "Babylonian",
	Visible = false,
	ParentCivilization = "greek",
	Adjective = "Babylonian",
	Playable = false
})

DefineCivilization("egyptian", {
	Display = "Egyptian",
	Visible = false,
	Group = "egyptian",
	ParentCivilization = "greek",
	Adjective = "Egyptian",
	Playable = false,
	CivilizationUpgrade = "upgrade-egyptian-civilization",
	PersonalNames = {
		"male", "Amenofis", -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 112.
		"male", "Isi", -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 81.
		"male", "Seti" -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 90.
	}
})

DefineCivilization("hebrew", {
	Display = "Hebrew",
	Visible = false,
	ParentCivilization = "greek",
	Adjective = "Hebrew",
	Playable = false
})

DefineCivilization("hittite", {
	Display = "Hittite",
	Visible = false,
	Group = "anatolian",
	Language = "hittite",
	ParentCivilization = "greek",
	Adjective = "Hittite",
	Playable = false
})

DefineCivilization("illyrian", {
	Display = "Illyrian",
	Visible = false,
	Group = "hellenic",
	Language = "illyrian",
	ParentCivilization = "greek",
	Adjective = "Illyrian",
	Playable = false
})

DefineCivilization("minoan", {
	Display = "Minoan",
	Visible = false,
	Group = "old_european",
	Language = "minoan",
	ParentCivilization = "greek",
	Adjective = "Minoan",
	Playable = false
})

DefineCivilization("norse", {
	Display = "Norse",
	Visible = true,
	Group = "scandinavian",
	Language = "old-norse",
	ParentCivilization = "teuton",
	Adjective = "Norse",
	DevelopsFrom = {"germanic"},
	CivilizationUpgrade = "upgrade_norse_civilization",
	Calendar = "norse_calendar",
	Description = "During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). While late antiquity saw intense migration of Germanic peoples, the Danes and Swedes remained largely in Scandinavia, well beyond the developments of the Mediterranean.",
	PersonalNames = {
		"male", "Biari", -- Old Swedish name; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
		"male", "Hathuwulf", -- Hathuwulf is a chieftain whose name appeared in a runestone at Stentoften in Blekinge; Source: Anders Andrén, "Behind Heathendom: Archaeological Studies of Old Norse Religion", 2005, p. 118.
		"male", "Lytir" -- male name which means "lot-reader" or "speaker of truth"; Source: Anders Andrén, "Behind Heathendom: Archaeological Studies of Old Norse Religion", 2005, p. 119.
	},
	--[[
	SettlementNames = {
		"Hals", -- Danish
		"Sorgenfri" -- Danish
	},
	--]]
	ProvinceNames = {
		"Gardarike"
	}
})

DefineCivilization("baltic", {
	Display = "Baltic",
	Visible = false,
	Group = "baltic",
	Language = "lithuanian",
	ParentCivilization = "norse",
	Adjective = "Baltic",
	Playable = false
})

DefineCivilization("uralic", {
	Display = "Uralic",
	Visible = false,
	Group = "uralic",
	Language = "proto-uralic",
	ParentCivilization = "germanic",
	Adjective = "Uralic",
	Playable = false
})

DefineCivilization("finnish", {
	Display = "Finnish",
	Visible = false,
	Group = "uralic",
	Language = "finnish",
	ParentCivilization = "norse",
	Adjective = "Finnish",
	Playable = false,
	DevelopsFrom = {"uralic"}
})

DefineCivilization("iberian", { -- the Iberian-speaking cultures of antiquity, such as the Oretanians
	Display = "Iberian",
	Visible = false,
	Group = "old_european",
	ParentCivilization = "germanic",
	Adjective = "Iberian",
	Playable = false
})

DefineCivilization("magyar", {
	Display = "Magyar",
	Visible = false,
	Group = "uralic",
	Language = "hungarian",
	ParentCivilization = "teuton",
	Adjective = "Magyar",
	Playable = false,
	DevelopsFrom = {"uralic"}
})

DefineCivilization("phrygian", {
	Display = "Phrygian",
	Visible = false,
	Group = "hellenic",
	Language = "phrygian",
	ParentCivilization = "greek",
	Adjective = "Phrygian",
	Playable = false
})

DefineCivilization("sumerian", {
	Display = "Sumerian",
	Visible = false,
	ParentCivilization = "greek",
	Adjective = "Sumerian",
	Playable = false
})

DefineCivilization("thracian", {
	Display = "Thracian",
	Visible = false,
	Group = "hellenic",
	Language = "thracian",
	ParentCivilization = "greek",
	Adjective = "Thracian",
	Playable = false
})

DefineCivilization("treant", {
	Display = "Treant",
	Visible = false,
	Species = "treant",
	ParentCivilization = "neutral",
	Adjective = "Treant",
	Playable = false,
	PersonalNames = {
		"male", "Bludebalmen", -- from Battle for Wesnoth
		"male", "Boladrumbadrum", -- from Battle for Wesnoth
		"male", "Bolwuldelman", -- from Battle for Wesnoth
		"male", "Bombempomgontor", -- from Battle for Wesnoth
		"male", "Bomtanbomkenton", -- from Battle for Wesnoth
		"male", "Bomtanbomtonum", -- from Battle for Wesnoth
		"male", "Bregalad", -- from Battle for Wesnoth
		"male", "Bremdebubde", -- from Battle for Wesnoth
		"male", "Brenbasnudnem", -- from Battle for Wesnoth
		"male", "Brendumadoak", -- from Battle for Wesnoth
		"male", "Brommantendronnor", -- from Battle for Wesnoth
		"male", "Brumbendublun", -- from Battle for Wesnoth
		"male", "Brumennarunom", -- from Battle for Wesnoth
		"male", "Brummdlebroak", -- from Battle for Wesnoth
		"male", "Bumbadadabum", -- from Battle for Wesnoth
		"male", "Buomdumdenlol", -- from Battle for Wesnoth
		"male", "Carnimirië", -- from Battle for Wesnoth
		"male", "Dabumdabumtam", -- from Battle for Wesnoth
		"male", "Dammantongonnur", -- from Battle for Wesnoth
		"male", "Danmonlulbam", -- from Battle for Wesnoth
		"male", "Debundbemun", -- from Battle for Wesnoth
		"male", "Delmduelmdelom", -- from Battle for Wesnoth
		"male", "Diblembumnde", -- from Battle for Wesnoth
		"male", "Dolmannumbil", -- from Battle for Wesnoth
		"male", "Drongnoblemdu", -- from Battle for Wesnoth
		"male", "Dulmandarook", -- from Battle for Wesnoth
		"male", "Dulwulmendom", -- from Battle for Wesnoth
		"male", "Dumdumdumatum", -- from Battle for Wesnoth
		"male", "Elmaroomadrum", -- from Battle for Wesnoth
		"male", "Grelmadrumbumadum", -- from Battle for Wesnoth
		"male", "Gulladroamadoak", -- from Battle for Wesnoth
		"male", "Gumabeladrelm", -- from Battle for Wesnoth
		"male", "Laffalialomdium", -- from Battle for Wesnoth
		"male", "Landunwonbam", -- from Battle for Wesnoth
		"male", "Lassemista", -- from Battle for Wesnoth
		"male", "Lefnublemdde", -- from Battle for Wesnoth
		"male", "Libleddnumm", -- from Battle for Wesnoth
		"male", "Lolmandindel", -- from Battle for Wesnoth
		"male", "Monlamwimdan", -- from Battle for Wesnoth
		"male", "Muldondindal", -- from Battle for Wesnoth
		"male", "Mundionalafla", -- from Battle for Wesnoth
		"male", "Mundumblemdum", -- from Battle for Wesnoth
		"male", "Munnamdulbon", -- from Battle for Wesnoth
		"male", "Nanmildaldum", -- from Battle for Wesnoth
		"male", "Nunmaldildun", -- from Battle for Wesnoth
		"male", "Orofarnië", -- from Battle for Wesnoth
		"male", "Pambedrumne", -- from Battle for Wesnoth
		"male", "Pomtamkomtrobum", -- from Battle for Wesnoth
		"male", "Rithramcamhan", -- from Battle for Wesnoth
		"male", "Tantondernintan", -- from Battle for Wesnoth
		"male", "Temtundembenn", -- from Battle for Wesnoth
		"male", "Temtunnongetem", -- from Battle for Wesnoth
		"male", "Tondenkontenkon", -- from Battle for Wesnoth
		"male", "Troombadoom", -- from Battle for Wesnoth
		"male", "Tumtentantarun", -- from Battle for Wesnoth
		"male", "Tumtonnongatum", -- from Battle for Wesnoth
		"male", "Tumtumgamtomtom", -- from Battle for Wesnoth
		"male", "Wonrunmaldin", -- from Battle for Wesnoth
		"male", "Wudadoonopl" -- from Battle for Wesnoth
	}
})

DefineCivilization("turkish", {
	Display = "Turkish",
	Visible = false,
	Group = "turkic",
	ParentCivilization = "greek", -- so that it can use Greek/Latin units and buildings
	Adjective = "Turkish",
	Playable = false
})

DefineCivilization("aztec", {
	Display = "Aztec",
	Visible = false,
	Group = "mesoamerican",
	ParentCivilization = "greek",
	Adjective = "Aztec",
	Playable = false
})

Load("scripts/factions.lua")

function GetCivilizationID(civilization)
	local civilizations = GetCivilizations()
	for i=1,table.getn(civilizations) do
		if (civilizations[i] == civilization) then
			return i - 1
		end
	end
	return -1
end
