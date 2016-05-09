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

DefineCivilization("neutral", {
	Display = "Neutral",
	Playable = false,
	Adjective = "Neutral",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-dwarven-shield-1",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-dwarven-patrol-land",
		"stand-ground", "icon-dwarven-stand-ground"
	},
	UIFillers = {
		"dwarf/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dwarf/ui/buttonpanel.png", -256, -200,
		"dwarf/ui/infopanel.png", 0, -200
	}
})

--[[
DefineCivilization("dutch", { -- information for later use
	Display = "Dutch",
	Playable = false,
	Visible = true,
	Species = "human",
	ParentCivilization = "teuton",
	Language = "dutch",
	Adjective = "Dutch",
	ProvinceNames = {
		"Gelderland", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
		"Overijssel" -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
	},
	SettlementNames = {
		"Amsterdam",
		"Rotterdam"
	},
	RiverNames = {
		"Ijssel" -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
	}
})
--]]

DefineCivilization("dwarf", {
	Display = "Dwarf",
	Visible = true,
	Species = "dwarf",
	Language = "dwarven",
	Adjective = "Dwarven",
	DefaultColor = "red",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-dwarven-shield-1",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-dwarven-patrol-land",
		"stand-ground", "icon-dwarven-stand-ground"
	},
	UIFillers = {
		"dwarf/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dwarf/ui/buttonpanel.png", -256, -200,
		"dwarf/ui/infopanel.png", 0, -200
	}
})

DefineCivilization("elf", {
	Display = "Elf",
	Visible = true,
	Species = "elf",
--	Language = "elven",
	Adjective = "Elven",
	--[[
	PersonalNames = {
		"Aendan", "Amadrieriand", "Amáril", "Amelad", "Ameldor", "Amendel", "Ameng", "Amilmaldur", "Amilmalith", "Amilmandir", "Amind", "Amiol", "Amiorion", "Amithrarion", "Amóldor", "Amorfimir", "Amorfir", "Amowyn", "Amulas", "Amundil", "Anán", "Anebrin", "Anebrir", "Anémbor", "Anénduil", "Anerion", "Anilad", "Anil-Gawyn", "Anilmambor", "Anilmariand", "Anior", "Anithranduil", "Anol", "Anon", "Anorfing", "Anundil", "Asaeri", "Belán", "Belandil", "Belarandel", "Belel", "Belén", "Belil-Gandil", "Belilmand", "Belilmang", "Beliondil", "Beliril", "Belithraldor", "Belithrawyn", "Belólad", "Belómir", "Belondel", "Belyrion", "Cadriembor", "Cadrieriand", "Cálad", "Caladrielas", "Calándel", "Caldur", "Cáldur", "Calebrindel", "Calebrindir", "Calénduil", "Calil-Gandir", "Calil-Gawyn", "Calioriand", "Caliril", "Calónduil", "Caloril", "Cándir", "Canduil", "Caraldur", "Carang", "Célad", "Celadrieriand", "Celang", "Celaral", "Celarandil", "Celáriand", "Celebririon", "Celelas", "Celendel", "Celér", "Celilmalas", "Celiondir", "Celior", "Celiorion", "Celong", "Celór", "Celóril", "Celorion", "Celundir", "Celuwyn", "Celyndel", "Cénduil", "Cindil", "Ciong", "Cithralad", "Cithraldur", "Cithrand", "Cithrandel", "Cithraril", "Col", "Corfil", "Corfildur", "Cówyn", "Crintil", "Cun", "Cundir", "Cylas", "Dain", "Delán", "Delánd", "Delandel", "Delaraldur", "Deláril", "Delawyn", "Deléng", "Delilmaldor", "Deliol", "Delithrar", "Deliwyn", "Delóldor", "Delorfilad", "Delorfilith", "Delorion", "Delundil", "Ealin", "Eäradriendel", "Eäradrier", "Eäránduil", "Eäraralad", "Eärebrindel", "Eäréldor", "Eäreng", "Eärérion", "Eärithrandil", "Eäromir", "Eärorfiriand", "Eäryldur", "Eäryriand", "Eladrieng", "Elálith", "Elánd", "Elándil", "Elebrildor", "Elebrindel", "Elebriril", "Elélas", "Elémbor", "Elemir", "Elen", "Elil-Garil", "Elilmaldur", "Eliomir", "Eliondil", "Elolas", "Elólas", "Elor", "Elorfilad", "Elradrien", "Elralith", "Elran", "Elreldur", "Elrilmand", "Elrioldor", "Elriolith", "Elrithralith", "Elrithranduil", "Elrorfir", "Elval", "Elvandir", "Elvaramir", "Elváwyn", "Elvebrind", "Elvebrindel", "Elvélith", "Elvémir", "Elverion", "Elvil-Garion", "Elvilmaldur", "Elvilmaril", "Elvioldur", "Elvombor", "Elvónduil", "Elvorfimir", "Elvorfiriand", "Elvorfiril", "Elvóriand", "Elvund", "Elyldor", "Elyrion", "Eowambor", "Eowanduil", "Eowar", "Eowaraldor", "Eowaran", "Eowarar", "Eowariand", "Eowarion", "Eowebrind", "Eowémir", "Eowil-Garion", "Eowimbor", "Eowiomir", "Eowithrawyn", "Eowóldur", "Eoworfildor", "Eowówyn", "Eowylas", "Erlornas", "Fadriendel", "Fandel", "Farandir", "Fáwyn", "Fendel", "Fer", "Filman", "Fioril", "Fithraril", "Forfilas", "Fyrion", "Gadriendil", "Gadrieng", "Gaelir", "Gaenlar", "Galadrieldor", "Galálad", "Galálas", "Galalith", "Galar", "Galelas", "Galeldur", "Galelith", "Galémbor", "Galithrariand", "Galoldur", "Galtrid", "Galuldur", "Galur", "Galurion", "Gambor", "Gán", "Ganduil", "Garaldor", "Gararil", "Gelad", "Géril", "Gil-Gandel", "Gil-Gang", "Giombor", "Githral", "Githralad", "Gladriendil", "Glal", "Glámbor", "Glandil", "Glarang", "Glararil", "Glildur", "Glilmal", "Glimir", "Glinan", "Glindur", "Glior", "Glólas", "Gloldor", "Glómir", "Glon", "Glul", "Golad", "Gor", "Gumbor", "Gyl", "Gymbor", "Gyn", "Harariand", "Háriand", "Hebril", "Hemir", "Hénduil", "Hilas", "Hil-Garion", "Hilmariand", "Hiong", "Hirion", "Hithrandel", "Horfilad", "Horfindel", "Hundel", "Hymir", "Hyrion", "Hywyn", "Isadrieng", "Isándir", "Isarandel", "Isarar", "Iselas", "Isér", "Isilmandel", "Isirion", "Isithral", "Isól", "Isóndel", "Isóng", "Isorfilad", "Isorfindir", "Isuwyn", "Isyndel", "Kalenz", "Kalnar", "Landar", "Legal", "Legaran", "Legémir", "Legéril", "Legilad", "Legil-Gal", "Legiondel", "Legithralith", "Legorfindil", "Legorfirion", "Legówyn", "Legyl", "Legyn", "Linduilas", "Lómadrieril", "Lómarand", "Lomarfel", "Lómariand", "Lómebrilad", "Lómebrind", "Lómémbor", "Lómilmaril", "Lómiriand", "Lómorfindil", "Lómowyn", "Losnin", "Lyndar", "Madrieril", "Maldur", "Mánduil", "Maraldur", "Mebrin", "Méng", "Mérion", "Miolith", "Miomir", "Mithrand", "Mondir", "Móndir", "Morfilas", "Morfin", "Morfiriand", "Mylith", "Nadrieldor", "Nalith", "Nán", "Nél", "Nil-Galas", "Nil-Galith", "Nil-Gar", "Nilmar", "Nóndel", "Norfildor", "Norfilith", "Norfindil", "Norfindir", "Numbor", "Nyldur", "Padrieriand", "Padrieril", "Pamir", "Paraldor", "Parariand", "Pilmalad", "Pindir", "Pór", "Porfildur", "Pumbor", "Pyldur", "Raesil", "Rebrir", "Réndir", "Rilmandil", "Rithrandil", "Ról", "Róldor", "Roldur", "Róldur", "Rorfilad", "Rorfindil", "Rówyn", "Ryn", "Sadrielas", "Salira", "Sebrin", "Sebriril", "Sénd", "Sil-Gal",  "Sólad", "Sorfind", "Sóriand", "Tadriendir", "Taral", "Taraldur", "Táriand", "Tendel", "Téwyn", "Thradrieriand", "Thrambor", "Thraral", "Threbring", "Thrélad", "Thréldur", "Thril-Gamir", "Thril-Gandir", "Thril-Gar", "Thrilmandel", "Thrimir", "Thrion", "Thrithran", "Throlas", "Thrón", "Thróng", "Thrund", "Thryriand", "Til-Gan", "Tilmalad", "Tilmalas", "Tinandir", "Tinarambor", "Tinarariand", "Tinén", "Tinil-Ganduil", "Tinilmand", "Tinilmawyn", "Tinimir", "Tinindil", "Tinithrar", "Tinoldor", "Tinond", "Tinorfind", "Tinorfiriand", "Tinóriand", "Tinowyn", "Tinun", "Tinyl", "Tion", "Tolas", "Torfildur", "Tówyn", "Tylad", "Unadrieldor", "Unadrier", "Unál", "Unalas", "Unálas", "Unaraldur", "Unaril", "Unárion", "Unebrin", "Unebrind", "Uneldor", "Unil", "Unil-Gan", "Uniolith", "Unioril", "Unólith", "Unombor", "Unóndel", "Unondir", "Unorfildor", "Unorfiril", "Unorfiwyn", "Unulad", "Uradredia", "Uradrielas", "Uradrierion", "Urálas", "Urálith", "Urambor", "Urér", "Uril-Gambor", "Urilmalith", "Uróldor", "Urorfildor", "Urul", "Urymir", "Válad", "Ván", "Vándel", "Vandir", "Varalas", "Vararion", "Vebril", "Vebrilas", "Vebrinduil", "Vel", "Velon", "Vilith", "Vol", "Vólas", "Vóldur", "Vondel", "Vorfin", "Vorfindil", "Vulas", "Vuldur", "Vunduil", "Vylas", "Vyldor",
		"Egil", -- elven archer from Norse mythology, brother of Slagfid and Volund
		"Slagfid", -- from Norse mythology, brother of Egil and Volund
		"Volund" -- elven smith from Norse mythology, brother of Slagfid and Egil
	},
	--]]
	Playable = false,
	DefaultColor = "teal",
	ButtonIcons = {
		"move", "icon-gnomish-boots",
		"stop", "icon-germanic-wooden-oblong-shield",
		"attack", "icon-germanic-short-sword",
		"patrol", "icon-germanic-patrol-land",
		"stand-ground", "icon-germanic-stand-ground"
	},
	UIFillers = {
		"germanic/ui/filler_bottom.png", 380, -181,
		"germanic/ui/resource.png", 0, 0,
		"germanic/ui/buttonpanel.png", -256, -200,
		"germanic/ui/infopanel.png", 0, -200
	}
})

--[[
DefineCivilization("english", { -- information for later use
	Display = "English",
	Visible = true,
	Species = "human",
	ParentCivilization = "teuton",
	Language = "english",
	Adjective = "English",
	DefaultColor = "red"
})
--]]

DefineCivilization("germanic", {
	Display = "Germanic",
	Visible = true,
	Species = "human",
	Language = "proto-germanic",
	Adjective = "Germanic",
	DefaultColor = "orange",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-germanic-wooden-oblong-shield",
		"attack", "icon-germanic-short-sword",
		"patrol", "icon-germanic-patrol-land",
		"stand-ground", "icon-germanic-stand-ground"
	},
	UIFillers = {
		"germanic/ui/filler_bottom.png", 380, -181,
		"germanic/ui/resource.png", 0, 0,
		"germanic/ui/buttonpanel.png", -256, -200,
		"germanic/ui/infopanel.png", 0, -200
	}
})

DefineCivilization("celt", { -- has to be defined after the germanic civilization because it uses it as its parent civilization
	Display = "Celt",
	Visible = true,
	Species = "human",
	Language = "proto-celtic",
	ParentCivilization = "germanic",
	Adjective = "Celtic",
	Playable = false,
	DefaultColor = "green",
	CivilizationUpgrade = "upgrade-celt-civilization"
})

DefineCivilization("gnome", {
	Display = "Gnome",
	Visible = true,
	Species = "gnome",
	ParentCivilization = "dwarf",
	Language = "gnomish",
	Adjective = "Gnomish",
	Playable = false,
	DefaultColor = "blue",
	ButtonIcons = {
		"move", "icon-gnomish-boots",
		"attack", "icon-gnomish-thrusting-sword-1",
		"patrol", "icon-gnomish-patrol-land",
		"stand-ground", "icon-germanic-stand-ground"
	}
})

DefineCivilization("goblin", {
	Display = "Goblin",
	Visible = true,
	Species = "goblin",
	Language = "goblin",
	Adjective = "Goblin",
	Playable = false,
	DefaultColor = "teal",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-dwarven-shield-1",
		"attack", "icon-spear",
		"patrol", "icon-gnomish-patrol-land",
		"stand-ground", "icon-dwarven-stand-ground"
	},
	UIFillers = {
		"dwarf/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dwarf/ui/buttonpanel.png", -256, -200,
		"dwarf/ui/infopanel.png", 0, -200
	}
})

DefineCivilization("kobold", {
	Display = "Kobold",
	Visible = true,
	Species = "kobold",
	Language = "kobold",
	ParentCivilization = "goblin",
	Adjective = "Kobold",
	Playable = false,
	DefaultColor = "violet",
	ButtonIcons = {
		"attack", "icon-gnomish-thrusting-sword-1",
		"stand-ground", "icon-germanic-stand-ground"
	}
})

DefineCivilization("orc", {
	Display = "Orc",
	Visible = true,
	Species = "orc",
	Adjective = "Orc",
	Playable = false,
	DefaultColor = "red",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-dwarven-shield-1",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-dwarven-patrol-land",
		"stand-ground", "icon-dwarven-stand-ground"
	},
	UIFillers = {
		"dwarf/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dwarf/ui/buttonpanel.png", -256, -200,
		"dwarf/ui/infopanel.png", 0, -200
	}
})

DefineCivilization("teuton", {
	Display = "Teuton",
	Visible = true,
	Species = "human",
	Language = "high-german",
	ParentCivilization = "germanic",
	Adjective = "Teutonic",
	DefaultColor = "yellow",
	CivilizationUpgrade = "upgrade-teuton-civilization"
	--[[
	ProvinceNames = {
		"Baden",
		"Bayern", -- "Bayern" = "Bavaria"
		"Holstein",
		"Kärnten", -- "Kärnten" = "Carinthia"
		"Preussen",
		"Sachsen", -- "Sachsen" = "Saxony"
		"Schlesien",
		"Schleswig",
		"Tirol" -- "Tirol" = "Tyrol"
	},
	ProvinceNamePrefixes = {
		"Mecklen", -- example: "Mecklenburg"
		"Steier" -- example: "Steiermark" (Styria)
--			"Vorarl" -- example: "Vorarlberg"
	},
	ProvinceNameSuffixes = {
		"falen" -- example: "Westfalen" (Westphalia)
	},
	SettlementNames = {
		"Botzen",
		"Bregenz",
		"Brünn",
		"Budweis",
		"Chlum",
		"Cilli",
		"Eger",
		"Franzensfeste",
		"Gabel",
		"Gastein",
		"Glurns",
		"Görz",
		"Graz", -- from the same Slavic root as "Grad"
		"Ischl",
		"Krems",
		"Kremsier",
		"Kufstein",
		"Linz",
		"München",
		"Olmütz",
		"Passau",
		"Pilsen",
		"Prag",
		"Sadowa",
		"Schweinschädel",
		"Steinamanger",
		"Teplitz",
		"Teschen",
		"Tobitschau",
		"Trent",
		"Troppau",
		"Villach",
		"Wels",
		"Werschitz"
	},
	SettlementNamePrefixes = {
		"Frohs", -- example: "Frohsdorf"
		"Gänsern", -- "Gänse = "Geese" ("Gänsern" is presumably a variation thereof); example: "Gänserndorf"
		"Ham", -- example: "Hamburg"
		"Inns", -- "Inns" = "Inn's" (related to the Inn river); example: "Innsbruck"
--			"Josef", -- example: "Josefstadt"
		"Karls", -- "Karls" = "Charles'"; example: "Karlsbad"
		"Kron", -- example: "Kronstadt"
		"Lem", -- example: "Lemberg"
--			"Leopold", -- example: "Leopoldstadt"
		"Mar", -- example: "Marburg"
		"München", -- example: "Münchengrätz"
--			"Nikols", -- "Nikols" = "Nicholas'"; example: "Nikolsburg"
		"Öden", -- example: "Ödenburg"
		"Pres", -- example: "Presburg"
		"Regens", -- example: "Regensburg"
		"Schäss", -- example: "Schässburg"
		"Ziller" -- example: "Zillertal"
	},
	SettlementNameSuffixes = {
		"grätz", -- examples: "Königgrätz", "Münchengrätz"
		"sohl", -- examples: "Altsohl", "Neusohl"
		"weissenburg" -- "weissenburg" = "white castle"; example: "Stuhlweissenburg"
	},
	--]]
})

DefineCivilization("troll", {
	Display = "Troll",
	Visible = true,
	Species = "troll",
	ParentCivilization = "goblin",
	Adjective = "Troll",
	Playable = false,
	DefaultColor = "green"
})

DefineCivilization("basque", { -- represents not only the speakers of Vasconic languages, but also various pre-Indo-European cultures
	Display = "Basque",
	Visible = true,
	Species = "human",
	Language = "basque",
	ParentCivilization = "germanic",
	Adjective = "Basque",
	Playable = false
})

DefineCivilization("etruscan", {
	Display = "Etruscan",
	Visible = true,
	Species = "human",
	Language = "etruscan",
	ParentCivilization = "teuton",
	Adjective = "Etruscan",
	Playable = false
})

DefineCivilization("goth", {
	Display = "Goth",
	Visible = true,
	Species = "human",
	Language = "gothic",
	ParentCivilization = "teuton",
	Adjective = "Gothic",
	Playable = false
})

DefineCivilization("greek", {
	Display = "Greek",
	Visible = true,
	Species = "human",
	Language = "greek",
	ParentCivilization = "teuton",
	Adjective = "Greek",
	Playable = false,
	--[[
	SettlementNames = {
		"Apollonia",
		"Argos",
		"Barca",
		"Byzantium",
		"Calchedon", -- Chalcedon
		"Callatis",
		"Camarina",
		"Catana",
		"Caulonia",
		"Chalcis",
		"Cius",
		"Cotyora",
		"Cume", -- Cumae
		"Cydonia",
		"Cyrene",
		"Dioscurias",
		"Elea",
		"Elis",
		"Emporiae", -- Emporium
		"Ephesus",
		"Epidamnus", -- Dyrrhachium
		"Gela",
		"Halicarnassus",
		"Hemeroscopium",
		"Heraclea",
		"Heraclea Chersonesus",
		"Hesperis",
		"Himera",
		"Ialysus",
		"Ilios",
		"Istrus",
		"Itanus",
		"Knossos",
		"Larissa",
		"Lissus",
		"Locri",
		"Massilia", -- Marseilles
		"Medama",
		"Megara",
		"Megara Hyblaca",
		"Mesambria",
		"Metapontium",
		"Methone",
		"Miletus",
		"Mycenae",
		"Motye",
		"Naucratis",
		"Naupactus",
		"Naxos",
		"Nicopolis",
		"Odessus",
		"Olbia",
		"Parthenope", -- Neapolis/Naples
		"Perinthus",
		"Phaselis",
		"Phasis",
		"Pityus",
		"Posidonia", -- Paestum
		"Rhegium",
		"Rhodae",
		"Salamis",
		"Selimis",
		"Selinus",
		"Selymbria",
		"Sinope",
		"Smyrna",
		"Soli",
		"Sparta",
		"Sybaris",
		"Syracusae",
		"Tanais",
		"Taras", -- Tarentum
		"Tarsus",
		"Theodosia",
		"Thurii",
		"Tomi",
		"Trapezus",
		"Zacynthus", -- Saguntum
		"Zancle" -- Messana
	}
	--]]
})

DefineCivilization("hittite", {
	Display = "Hittite",
	Visible = true,
	Species = "human",
--	Language = "hittite",
	ParentCivilization = "greek",
	Adjective = "Hittite",
	Playable = false
})

DefineCivilization("illyrian", {
	Display = "Illyrian",
	Visible = true,
	Species = "human",
	Language = "illyrian",
	ParentCivilization = "greek",
	Adjective = "Illyrian",
	Playable = false
})

DefineCivilization("latin", {
	Display = "Latin",
	Visible = true,
	Species = "human",
	Language = "latin",
	ParentCivilization = "teuton",
	Adjective = "Latin",
	Playable = false,
	DefaultColor = "red",
	CivilizationUpgrade = "upgrade-latin-civilization",
	--[[
	SettlementNames = {
		"Agrigentum",
		"Alba",
		"Aleria",
		"Antium",
		"Aquileia",
		"Ardea",
		"Ariminum",
		"Arretium",
		"Beneventum",
		"Bononia",
		"Bracara Augusta", -- Braga
		"Brundisium",
		"Buxentum",
		"Capua",
		"Caralis",
		"Circeii",
		"Clusium",
		"Corfinium",
		"Cora",
		"Corduba",
		"Cosa",
		"Cremona",
		"Croton",
		"Cumae",
		"Emporium",
		"Firmum",
		"Fregellae",
		"Fregena",
		"Fyrgi",
		"Genua", -- Genoa
		"Hatria",
		"Heraclea",
		"Locri",
		"Luceria",
		"Lucus Augusti",
		"Mariana",
		"Minturnae",
		"Mutina",
		"Narnia",
		"Nora",
		"Norba",
		"Novum Castrum",
		"Olbia",
		"Olisipo",
		"Opitergium", -- Oderzo
		"Ostia",
		"Paestum",
		"Placentia",
		"Puteoli",
		"Regina Castra", -- Ratisbon/Regensburg
		"Rhegium",
		"Roma", -- Rome
		"Saguntum",
		"Salernum",
		"Salicula",
		"Satricum",
		"Sena Gallica",
		"Setia",
		"Signia",
		"Sinuessa",
		"Sora",
		"Spoletium",
		"Sulci",
		"Sutrium",
		"Sybaris",
		"Syracusae",
		"Tarentum",
		"Tarracina",
		"Thurii",
		"Toletum",
		"Turnis Libisonis",
		"Usellis",
		"Velitrae",
		"Venusia",
		"Vibo Valentia",
		"Vulturnus"
	},
	SettlementNamePrefixes = {
		"Caesar", -- example: "Caesaraugusta"
		"Medio", -- example: "Mediolanum" (Milan)
		"Vindo" -- example: "Vindobona" (Vienna)
	},
	SettlementNameSuffixes = {
		"augusta", -- example: Caesaraugusta
		"bona", -- example: "Vindobona" (Vienna)
		"lanum" -- example: "Mediolanum" (Milan)
	}
	--]]
})

DefineCivilization("minoan", {
	Display = "Minoan",
	Visible = true,
	Species = "human",
	Language = "minoan",
	ParentCivilization = "teuton",
	Adjective = "Minoan",
	Playable = false
})

DefineCivilization("norse", {
	Display = "Norse",
	Visible = true,
	Species = "human",
	Language = "old-norse",
	ParentCivilization = "teuton",
	Adjective = "Norse",
	Playable = false
})

DefineCivilization("finnish", {
	Display = "Finnish",
	Visible = true,
	Species = "human",
	Language = "finnish",
	ParentCivilization = "norse",
	Adjective = "Finnish",
	Playable = false
})

DefineCivilization("magyar", {
	Display = "Magyar",
	Visible = true,
	Species = "human",
--	Language = "hungarian",
	ParentCivilization = "teuton",
	Adjective = "Magyar",
	Playable = false
})

DefineCivilization("persian", {
	Display = "Persian",
	Visible = true,
	Species = "human",
	Language = "avestan",
	ParentCivilization = "teuton",
	Adjective = "Persian",
	Playable = false
})

DefineCivilization("phoenician", {
	Display = "Phoenician",
	Visible = true,
	Species = "human",
	ParentCivilization = "teuton",
	Adjective = "Phoenician",
	Playable = false,
	DefaultColor = "black"
})

DefineCivilization("phrygian", {
	Display = "Phrygian",
	Visible = true,
	Species = "human",
	Language = "phrygian",
	ParentCivilization = "greek",
	Adjective = "Phrygian",
	Playable = false
})

DefineCivilization("slav", {
	Display = "Slav",
	Visible = true,
	Species = "human",
	Language = "proto-slavic",
	ParentCivilization = "teuton",
	Adjective = "Slavic",
	Playable = false,
	DefaultColor = "blue"
})

DefineCivilization("thracian", {
	Display = "Thracian",
	Visible = true,
	Species = "human",
	Language = "thracian",
	ParentCivilization = "greek",
	Adjective = "Thracian",
	Playable = false
})

-- Cyclops names: Arges ("Vivid"), Brontes ("Thunderer"), Polyphemus (name means "many-voiced"), Steropes ("Lightner"), Tepegoz (an ogre with a single eye from Turkic mythology; apparently derived from the Greek Polyphemus myth; Tepe means "top, crown of the head" and Göz means "eye"), Depeghoz (Depêghöz, same as Tepegoz, given by Jacob Grimm in Teutonic Mythology, p. 424)

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
