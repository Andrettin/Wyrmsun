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
--      civilizations.lua - Defines Wyrmsun's civilizations
--
--      (c) Copyright 2015 by Andrettin
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

DefineRaceNames(
	--[[
	"race", { -- information for later use
		"name", "dutch",
		"display", "Dutch",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"province-names", {
			"Gelderland", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"Overijssel" -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
		},
		"settlement-names", {
			"Amsterdam",
			"Rotterdam"
		},
		"settlement-name-prefixes", {
			"Stap", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
		},
		"settlement-name-suffixes", {
			"aha", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"apa", -- Characteristic of the influence of the Carolingian realm; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"braak", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"breede", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"berg", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"borg", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"ede", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"geer", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"goor", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"haar", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"heim", -- Characteristic of the influence of the Carolingian realm; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"heuvel", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"ho", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"hoop", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"horst", -- "horst" means "hyrst". Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"huis", -- "huis" means "house". Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
--			"ing", -- Used for farms. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, pp. 331, 335.
--			"ingakker", -- Used for farms. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
--			"inggoed", -- Used for farms. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
--			"ingheim", -- Used for farms. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
--			"inghuis", -- Used for farms. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
--			"ingen", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"kote", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"laar", -- Characteristic of the influence of the Carolingian realm; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"lo", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"molen", -- "molen" means "mill". Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"oever", -- "oever" means the bank of a river. Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"roden", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"sol", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"stege", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"tere", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, pp. 331, 335.
			"tuin", -- Appears in the eastern Netherlands. "tuin" can mean "town", but usually means "garden". Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"tye", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"veld", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"voorde", -- Characteristic of the influence of the Carolingian realm; Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
			"wede", -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"wijk" -- Appears in the eastern Netherlands. Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
		},
		"river-names", {
			"Ijssel" -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
		}
	},
	--]]
	"race", {
		"name", "dwarf",
		"display", "Dwarf",
		"visible",
		"species", "dwarf"
	},
	--[[
	"race", {
		"name", "elf",
		"display", "Elf",
		"visible",
		"species", "elf",
		"personal-names", {
			"Aendan", "Amadrieriand", "Amáril", "Amelad", "Ameldor", "Amendel", "Ameng", "Amilmaldur", "Amilmalith", "Amilmandir", "Amind", "Amiol", "Amiorion", "Amithrarion", "Amóldor", "Amorfimir", "Amorfir", "Amowyn", "Amulas", "Amundil", "Anán", "Anebrin", "Anebrir", "Anémbor", "Anénduil", "Anerion", "Anilad", "Anil-Gawyn", "Anilmambor", "Anilmariand", "Anior", "Anithranduil", "Anol", "Anon", "Anorfing", "Anundil", "Asaeri", "Belán", "Belandil", "Belarandel", "Belel", "Belén", "Belil-Gandil", "Belilmand", "Belilmang", "Beliondil", "Beliril", "Belithraldor", "Belithrawyn", "Belólad", "Belómir", "Belondel", "Belyrion", "Cadriembor", "Cadrieriand", "Cálad", "Caladrielas", "Calándel", "Caldur", "Cáldur", "Calebrindel", "Calebrindir", "Calénduil", "Calil-Gandir", "Calil-Gawyn", "Calioriand", "Caliril", "Calónduil", "Caloril", "Cándir", "Canduil", "Caraldur", "Carang", "Célad", "Celadrieriand", "Celang", "Celaral", "Celarandil", "Celáriand", "Celebririon", "Celelas", "Celendel", "Celér", "Celilmalas", "Celiondir", "Celior", "Celiorion", "Celong", "Celór", "Celóril", "Celorion", "Celundir", "Celuwyn", "Celyndel", "Cénduil", "Cindil", "Ciong", "Cithralad", "Cithraldur", "Cithrand", "Cithrandel", "Cithraril", "Col", "Corfil", "Corfildur", "Cówyn", "Crintil", "Cun", "Cundir", "Cylas", "Dain", "Delán", "Delánd", "Delandel", "Delaraldur", "Deláril", "Delawyn", "Deléng", "Delilmaldor", "Deliol", "Delithrar", "Deliwyn", "Delóldor", "Delorfilad", "Delorfilith", "Delorion", "Delundil", "Ealin", "Eäradriendel", "Eäradrier", "Eäránduil", "Eäraralad", "Eärebrindel", "Eäréldor", "Eäreng", "Eärérion", "Eärithrandil", "Eäromir", "Eärorfiriand", "Eäryldur", "Eäryriand", "Eladrieng", "Elálith", "Elánd", "Elándil", "Elebrildor", "Elebrindel", "Elebriril", "Elélas", "Elémbor", "Elemir", "Elen", "Elil-Garil", "Elilmaldur", "Eliomir", "Eliondil", "Elolas", "Elólas", "Elor", "Elorfilad", "Elradrien", "Elralith", "Elran", "Elreldur", "Elrilmand", "Elrioldor", "Elriolith", "Elrithralith", "Elrithranduil", "Elrorfir", "Elval", "Elvandir", "Elvaramir", "Elváwyn", "Elvebrind", "Elvebrindel", "Elvélith", "Elvémir", "Elverion", "Elvil-Garion", "Elvilmaldur", "Elvilmaril", "Elvioldur", "Elvombor", "Elvónduil", "Elvorfimir", "Elvorfiriand", "Elvorfiril", "Elvóriand", "Elvund", "Elyldor", "Elyrion", "Eowambor", "Eowanduil", "Eowar", "Eowaraldor", "Eowaran", "Eowarar", "Eowariand", "Eowarion", "Eowebrind", "Eowémir", "Eowil-Garion", "Eowimbor", "Eowiomir", "Eowithrawyn", "Eowóldur", "Eoworfildor", "Eowówyn", "Eowylas", "Erlornas", "Fadriendel", "Fandel", "Farandir", "Fáwyn", "Fendel", "Fer", "Filman", "Fioril", "Fithraril", "Forfilas", "Fyrion", "Gadriendil", "Gadrieng", "Gaelir", "Gaenlar", "Galadrieldor", "Galálad", "Galálas", "Galalith", "Galar", "Galelas", "Galeldur", "Galelith", "Galémbor", "Galithrariand", "Galoldur", "Galtrid", "Galuldur", "Galur", "Galurion", "Gambor", "Gán", "Ganduil", "Garaldor", "Gararil", "Gelad", "Géril", "Gil-Gandel", "Gil-Gang", "Giombor", "Githral", "Githralad", "Gladriendil", "Glal", "Glámbor", "Glandil", "Glarang", "Glararil", "Glildur", "Glilmal", "Glimir", "Glinan", "Glindur", "Glior", "Glólas", "Gloldor", "Glómir", "Glon", "Glul", "Golad", "Gor", "Gumbor", "Gyl", "Gymbor", "Gyn", "Harariand", "Háriand", "Hebril", "Hemir", "Hénduil", "Hilas", "Hil-Garion", "Hilmariand", "Hiong", "Hirion", "Hithrandel", "Horfilad", "Horfindel", "Hundel", "Hymir", "Hyrion", "Hywyn", "Isadrieng", "Isándir", "Isarandel", "Isarar", "Iselas", "Isér", "Isilmandel", "Isirion", "Isithral", "Isól", "Isóndel", "Isóng", "Isorfilad", "Isorfindir", "Isuwyn", "Isyndel", "Kalenz", "Kalnar", "Landar", "Legal", "Legaran", "Legémir", "Legéril", "Legilad", "Legil-Gal", "Legiondel", "Legithralith", "Legorfindil", "Legorfirion", "Legówyn", "Legyl", "Legyn", "Linduilas", "Lómadrieril", "Lómarand", "Lomarfel", "Lómariand", "Lómebrilad", "Lómebrind", "Lómémbor", "Lómilmaril", "Lómiriand", "Lómorfindil", "Lómowyn", "Losnin", "Lyndar", "Madrieril", "Maldur", "Mánduil", "Maraldur", "Mebrin", "Méng", "Mérion", "Miolith", "Miomir", "Mithrand", "Mondir", "Móndir", "Morfilas", "Morfin", "Morfiriand", "Mylith", "Nadrieldor", "Nalith", "Nán", "Nél", "Nil-Galas", "Nil-Galith", "Nil-Gar", "Nilmar", "Nóndel", "Norfildor", "Norfilith", "Norfindil", "Norfindir", "Numbor", "Nyldur", "Padrieriand", "Padrieril", "Pamir", "Paraldor", "Parariand", "Pilmalad", "Pindir", "Pór", "Porfildur", "Pumbor", "Pyldur", "Raesil", "Rebrir", "Réndir", "Rilmandil", "Rithrandil", "Ról", "Róldor", "Roldur", "Róldur", "Rorfilad", "Rorfindil", "Rówyn", "Ryn", "Sadrielas", "Salira", "Sebrin", "Sebriril", "Sénd", "Sil-Gal",  "Sólad", "Sorfind", "Sóriand", "Tadriendir", "Taral", "Taraldur", "Táriand", "Tendel", "Téwyn", "Thradrieriand", "Thrambor", "Thraral", "Threbring", "Thrélad", "Thréldur", "Thril-Gamir", "Thril-Gandir", "Thril-Gar", "Thrilmandel", "Thrimir", "Thrion", "Thrithran", "Throlas", "Thrón", "Thróng", "Thrund", "Thryriand", "Til-Gan", "Tilmalad", "Tilmalas", "Tinandir", "Tinarambor", "Tinarariand", "Tinén", "Tinil-Ganduil", "Tinilmand", "Tinilmawyn", "Tinimir", "Tinindil", "Tinithrar", "Tinoldor", "Tinond", "Tinorfind", "Tinorfiriand", "Tinóriand", "Tinowyn", "Tinun", "Tinyl", "Tion", "Tolas", "Torfildur", "Tówyn", "Tylad", "Unadrieldor", "Unadrier", "Unál", "Unalas", "Unálas", "Unaraldur", "Unaril", "Unárion", "Unebrin", "Unebrind", "Uneldor", "Unil", "Unil-Gan", "Uniolith", "Unioril", "Unólith", "Unombor", "Unóndel", "Unondir", "Unorfildor", "Unorfiril", "Unorfiwyn", "Unulad", "Uradredia", "Uradrielas", "Uradrierion", "Urálas", "Urálith", "Urambor", "Urér", "Uril-Gambor", "Urilmalith", "Uróldor", "Urorfildor", "Urul", "Urymir", "Válad", "Ván", "Vándel", "Vandir", "Varalas", "Vararion", "Vebril", "Vebrilas", "Vebrinduil", "Vel", "Velon", "Vilith", "Vol", "Vólas", "Vóldur", "Vondel", "Vorfin", "Vorfindil", "Vulas", "Vuldur", "Vunduil", "Vylas", "Vyldor",
			"Egil", -- elven archer from Norse mythology, brother of Slagfid and Volund
			"Slagfid", -- from Norse mythology, brother of Egil and Volund
			"Volund" -- elven smith from Norse mythology, brother of Slagfid and Egil
		},
		"playable", false
	},
	--]]
	--[[
	"race", { -- information for later use
		"name", "english",
		"display", "English",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"personal-names", {"Charles", "Francis", "Henry", "John", "Lewis", "William"},
		"settlement-name-prefixes", {
			"Ply", -- Example: "Plymouth"
		},
		"settlement-name-suffixes", {
			"house", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
			"hyrst", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
			"ing", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 336.
			"mouth", -- Example: "Plymouth"
			"town", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"tree", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
			"wich" -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 331.
		},
		"name-translations", {
			"Lisboa", "Lisbon",
			"Wien", "Vienna"
		}
	},
	--]]
	"race", {
		"name", "germanic",
		"display", "Germanic",
		"visible",
		"species", "human",
		"personal-names", {
			"Godagaz", -- Godagaz = Goody / Good One
			"Wagigaz", -- Wagigaz = One Who Moves Along Impetuously
			"Wiwaz" -- Wiwaz = Darter
		}, -- Hagustaldaz = Young Warrior / Owner of a Small Property, Hadulaikaz = Battle-Dancer, Hlewagastiz = Protected / Glory-Guest, Holtagastiz = Wood Guest
		"personal-name-prefixes", {
			"Hadu", -- Hadu = Battle
			"Hagu", -- Hagu = Small Property
			"Hlewa", -- Hlewa = Glory
			"Holta", -- Holta = Wood
			"Theuda", -- Theuda = People
			"Wodu" -- Wodu = Fury
		},
		"personal-name-suffixes", {
			"laikaz", -- Laikaz = Dancer
			"ridaz", -- Ridaz = Rider
			"riks", -- Riks = Ruler
			"staldaz" -- Staldaz = Owner
		}
	},
	"race", { -- has to be defined after the germanic civilization because it uses it as its parent civilization
		"name", "celt",
		"display", "Celt",
		"visible",
		"species", "human",
		"parent-civilization", "germanic",
		"playable", false
	},
	"race", {
		"name", "gnome",
		"display", "Gnome",
		"visible",
		"species", "gnome",
		"parent-civilization", "dwarf",
		"personal-names", {"Bimbam", "Clavo", "Cravatu", "Kalutho", "Pypo", "Rubezahl"},
		"playable", false
	},
	"race", {
		"name", "goblin",
		"display", "Goblin",
		"visible",
		"species", "goblin",
		"personal-names", {"Dran", "Erdog", "Fal Khag", "Gashnok", "Gatrakh", "Gorokh", "Greebo", "Grogor-Tuk", "Hrugt", "Kardur", "Kartrog", "Krung", "Odrun", "Orhtib", "Ozdul", "Panok", "Pruol", "Sbrak", "Sdrul", "Thurg", "T'shar Lggi", "Uhmit", "Urdum", "Utrub", "Vrag", "Vrunt", "Zhuk", "Zuzerd"},
		"personal-name-prefixes", {"Gom", "Grash", "Grut", "Gum", "Kar", "Kret", "Krom", "Stug"}, -- from Mike Anderson's Tyrant
		"personal-name-suffixes", {"bag", "dag", "lig", "lug", "nak", "nark", "rat", "tug"}, -- from Mike Anderson's Tyrant
		"playable", false
	},
	"race", {
		"name", "kobold",
		"display", "Kobold",
		"visible",
		"species", "kobold",
		"personal-name-prefixes", {"Hod", "Hoid", "Napf", "Pump"},
		"personal-name-suffixes", {"coat", "eke", "ike", "hut"}, -- Hut = Hat
		"parent-civilization", "goblin",
		"playable", false
		 -- Sources for Kobold names: Hodeke (Jacob Grimm, "Deutsche Mythologie", pp. 392, 1049, 1080), Hoidike (Jacob Grimm, "Deutsche Mythologie", p. 392), Napfhans (Jacob Grimm, "Deutsche Mythologie", p. 393), Pumphut (Jacob Grimm, "Deutsche Mythologie", p. 1049), Shellycoat (Jacob Grimm, "Deutsche Mythologie", p. 394)
	},
	"race", {
		"name", "teuton",
		"display", "Teuton",
		"visible",
		"species", "human",
		"parent-civilization", "germanic",
		"personal-names", {"Arnulf", "Bernhard", "Franz", "Friedrich", "Gerhard", "Gunther", "Gustav", "Heinrich", "Hermann", "Johann", "Hans", "Karl", "Klaus", "Kurt", "Lothar", "Ludwig", "Manfred", "Otto", "Pippin", "Walter", "Werner", "Wilhelm"},
		"personal-name-prefixes", {"Hel", "Karl"},
		"personal-name-suffixes", {"fried", "gang"},
		"province-names", {
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
		"province-name-prefixes", {
			"Branden", -- example: "Brandenburg"
			"Mecklen", -- example: "Mecklenburg"
			"Steier", -- example: "Steiermark" (Styria)
			"Vorarl" -- example: "Vorarlberg"
		},
		"province-name-suffixes", {
			"phalien" -- example: "Westphalien" (Westphalia)
		},
		"settlement-names", {
			"Blumenau",
			"Botzen",
			"Bregenz",
			"Bruck",
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
			"Laibach",
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
			"Werschitz",
			"Wien" -- "Wien" = "Vienna"; from the Latin name "Vindobona"
		},
		"settlement-name-prefixes", {
			"Frohs", -- example: "Frohsdorf"
			"Gänsern", -- "Gänse = "Geese" ("Gänsern" is presumably a variation thereof); example: "Gänserndorf"
			"Ham", -- example: "Hamburg"
			"Inns", -- "Inns" = "Inn's" (related to the Inn river); example: "Innsbruck"
--			"Josef", -- example: "Josefstadt"
			"Karls", -- "Karls" = "Charles'"; example: "Karlsbad"
			"Klagen", -- example: "Klagenfurt"
			"Klausen", -- example: "Klausenburg"
			"Kron", -- example: "Kronstadt"
			"Lem", -- example: "Lemberg"
--			"Leopold", -- example: "Leopoldstadt"
			"Mar", -- example: "Marburg"
			"Mühlen", -- example: "Mühlenbach"
			"München", -- example: "Münchengrätz"
--			"Nikols", -- "Nikols" = "Nicholas'"; example: "Nikolsburg"
			"Öden", -- example: "Ödenburg"
			"Pres", -- example: "Presburg"
			"Regens", -- example: "Regensburg"
			"Schäss", -- example: "Schässburg"
			"Spiel", -- "Spiel" = "Game"/"Play"; example: "Spielberg"
			"Stuhl", -- "Stuhl" = "Chair"; example: "Stuhlweissenburg"
			"Ziller" -- example: "Zillertal"
		},
		"settlement-name-suffixes", {
			"bach", -- example: "Mühlenbach"
			"bad", -- example: "Karlsbad"
			"furt", -- example: "Klagenfurt"
			"grätz", -- examples: "Königgrätz", "Münchengrätz"
			"sohl", -- examples: "Altsohl", "Neusohl"
			"weissenburg" -- "weissenburg" = "white castle"; example: "Stuhlweissenburg"
		},
		"name-translations", {
			"Aiza", "Erz", -- from Proto-Germanic to German
			"Austa", "Ost", -- from Proto-Germanic to German
			"Berga", "Berg", -- from Proto-Germanic to German
			"Burg", "Burg", -- from Proto-Germanic to German
			"Bûra", "Bauer", -- from Proto-Germanic to German
			"Dverga", "Zwerg", -- from Proto-Germanic to German
			"Gastiz", "Gast", -- from Proto-Germanic to German
			"Haima", "Heim", -- from Proto-Germanic to German
			"Landa", "Land", -- from Proto-Germanic to German
			"Lanum", "Land", -- example: "Mediolanum" -> "Mailand" (Milan)
			"Mark", "Mark", -- from Proto-Germanic to German
			"Medio", "Mai", -- example: "Mediolanum" -> "Mailand" (Milan)
			"Rikia", "Reich", -- from Proto-Germanic to German
			"Snaigva", "Schnee", -- from Proto-Germanic to German
			"Þurpa", "Dorf", -- from Proto-Germanic to German
			"Uzdaz", "Ort", -- from Proto-Germanic to German
			"Vindobona", "Wien",
			"Waida", "Waid", -- from Proto-Germanic to German
			"Walakuzjōn", "Walküre" -- from Proto-Germanic to German
		},
	},
	"race", {
		"name", "goth",
		"display", "Goth",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false
	},
	"race", {
		"name", "greek",
		"display", "Greek",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false,
		"settlement-names", {
			"Abdera",
			"Abydus",
			"Acragas", -- Agrigentum
			"Agathe",
			"Ainos",
			"Alalia", -- Aleria
			"Alonae",
			"Amisus",
			"Apollonia",
			"Argos",
			"Barca",
			"Byzantium",
			"Calchedon", -- Chalcedon
			"Callatis",
			"Callipolis",
			"Camarina",
			"Catana",
			"Caulonia",
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
			"Ilios",
			"Istrus",
			"Itanus",
			"Knossos",
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
			"Motye",
			"Naucratis",
			"Naxos",
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
		},
		"settlement-name-prefixes", {
			"Amphi", -- example: "Amphipolis"
			"Nea" -- "Nea" = "New"; example: "Neapolis" (Naples)
		},
		"settlement-name-suffixes", {
			"polis" -- "polis" = "city"; examples: "Amphipolis", "Neapolis" (Naples)
		}
	},
	"race", {
		"name", "latin",
		"display", "Latin",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false,
		"settlement-names", {
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
		"settlement-name-prefixes", {
			"Caesar", -- example: "Caesaraugusta"
			"Medio", -- example: "Mediolanum" (Milan)
			"Vindo" -- example: "Vindobona" (Vienna)
		},
		"settlement-name-suffixes", {
			"augusta", -- example: Caesaraugusta
			"bona", -- example: "Vindobona" (Vienna
			"lanum" -- example: "Mediolanum" (Milan)
		},
		"name-translations", {
			"Nea", "Nea", -- example: "Neapolis" -> "Neapolis" (Naples); name remained with no change
			"Polis", "Polis" -- example: "Neapolis" -> "Neapolis" (Naples); name remained with no change
		},
	},
	"race", {
		"name", "norse",
		"display", "Norse",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false
	},
	"race", {
		"name", "neutral",
		"display", "Neutral"
	}
)

-- Cyclops names: Arges ("Vivid"), Brontes ("Thunderer"), Polyphemus (name means "many-voiced"), Steropes ("Lightner"), Tepegoz (an ogre with a single eye from Turkic mythology; apparently derived from the Greek Polyphemus myth; Tepe means "top, crown of the head" and Göz means "eye"), Depeghoz (Depêghöz, same as Tepegoz, given by Jacob Grimm in Teutonic Mythology, p. 424)

DefineCivilizationFactions("celt",
	"faction", {
		"name", "Aedui Tribe",
		"type", "tribe",
		"color", "green",
		"secondary_color", "green"
	},
	"faction", {
		"name", "Arverni Tribe",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "blue"
	},
	"faction", {
		"name", "Boii Tribe",
		"type", "tribe",
		"color", "brown",
		"secondary_color", "brown"
	},
	"faction", {
		"name", "Helvetii Tribe",
		"type", "tribe",
		"color", "violet", -- another color, perhaps?
		"secondary_color", "violet"
	},
	"faction", {
		"name", "Menapii Tribe",
		"type", "tribe",
		"color", "orange",
		"secondary_color", "orange"
	},
	"faction", {
		"name", "Norici Tribe",
		"type", "tribe",
		"color", "white", -- another color, perhaps?
		"secondary_color", "white"
	},
	"faction", {
		"name", "Pict Tribe",
		"type", "tribe",
		"color", "cyan",
		"secondary_color", "cyan"
	},
	"faction", {
		"name", "Scot Tribe",
		"type", "tribe",
		"color", "brown",
		"secondary_color", "brown"
	},
	"faction", {
		"name", "Sequani Tribe",
		"type", "tribe",
		"color", "pink",
		"secondary_color", "red"
	},
	-- Non-Playable Tribes
	"faction", {
		"name", "Vana Tribe",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "cyan",
		"playable", false
	}
)

DefineCivilizationFactions("dwarf",
	"faction", {
		"name", "Eikinskjaldi Clan", -- originally Oakenshield, translated into Norse to make it seem more dwarvish
		"type", "tribe",
		"color", "brown",
		"secondary_color", "brown"
	},
	"faction", {
		"name", "Modsogning Clan", -- clan of Modsognir
		"type", "tribe",
		"color", "white",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Norlund Clan",
		"type", "tribe",
		"color", "red",
		"secondary_color", "orange"
	},
	"faction", {
		"name", "Shinsplitter Clan",
		"type", "tribe",
		"color", "green",
		"secondary_color", "teal"
	},
	"faction", {
		"name", "Shorbear Clan",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "cyan"
	},
	"faction", {
		"name", "Kal Kartha",
		"type", "polity",
		"color", "black",
		"secondary_color", "black"
	},
	"faction", {
		"name", "Knalga",
		"type", "polity",
		"color", "red",
		"secondary_color", "orange"
	},
	"faction", {
		"name", "Lyr",
		"type", "polity",
		"color", "green",
		"secondary_color", "teal"
	}
)

DefineCivilizationFactions("germanic",
--	"faction", {
--		"name", "Alamanni Tribe",
--		"type", "tribe",
--		"color", "blue",
--		"secondary_color", "blue",
--		"playable", false
--	},
	"faction", {
		"name", "Asa Tribe",
		"type", "tribe",
		"color", "orange",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Bavarian Tribe",
		"type", "tribe",
		"color", "cyan",
		"secondary_color", "white",
		"playable", false
	},
	"faction", {
		"name", "Burgundian Tribe",
		"type", "tribe",
		"color", "brown",
		"secondary_color", "brown"
	},
	"faction", {
		"name", "Dane Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Frank Tribe",
		"type", "tribe",
		"color", "green",
		"secondary_color", "orange",
		"playable", false
	},
	"faction", {
		"name", "Frisian Tribe",
		"type", "tribe",
		"color", "violet", -- change to a better one?
		"secondary_color", "purple",
		"playable", false
	},
	"faction", {
		"name", "Goth Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Jute Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Marcomanni Tribe",
		"type", "tribe",
		"color", "orange", -- change to a better one?
		"secondary_color", "red",
		"playable", false
	},
	"faction", {
		"name", "Ostrogoth Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "red",
		"playable", false
	},
	"faction", {
		"name", "Rugian Tribe",
		"type", "tribe",
		"color", "red", -- change to a better one?
		"secondary_color", "orange",
		"playable", false
	},
	"faction", {
		"name", "Saxon Tribe",
		"type", "tribe",
		"color", "pink",
		"secondary_color", "pink",
		"playable", false
	},
	"faction", {
		"name", "Suebi Tribe",
		"type", "tribe",
		"color", "black",
		"secondary_color", "black",
		"playable", false
	},
	"faction", {
		"name", "Swede Tribe",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "yellow"
	},
--	"faction", {
--		"name", "Thuringian Tribe",
--		"type", "tribe",
--		"color", "yellow",
--		"secondary_color", "yellow",
--		"playable", false
--	},
	"faction", {
		"name", "Vandal Tribe",
		"type", "tribe",
		"color", "cyan",
		"secondary_color", "blue",
		"playable", false
	},
	"faction", {
		"name", "Visigoth Tribe",
		"type", "tribe",
		"color", "pink",
		"secondary_color", "pink",
		"playable", false
	},
	-- Non-Playable Tribes
	"faction", {
		"name", "Gylfing Tribe",
		"type", "tribe",
		"color", "green",
		"secondary_color", "teal",
		"playable", false
	}
)

DefineCivilizationFactions("gnome",
	"faction", {
		"name", "Untersberg",
		"type", "tribe", -- should be polity
		"color", "blue",
		"secondary_color", "purple"
	}
)

DefineCivilizationFactions("goblin",
	"faction", {
		"name", "Khag Tribe",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "cyan"
	},
	"faction", {
		"name", "Lggi Tribe",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "cyan"
	}
)

DefineCivilizationFactions("goth",
	"faction", {
		"name", "Burgundian Tribe",
		"type", "tribe",
		"color", "brown",
		"secondary_color", "brown"
	},
	"faction", {
		"name", "Goth Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Ostrogoth Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Rugian Tribe",
		"type", "tribe",
		"color", "red", -- change to a better one?
		"secondary_color", "orange"
	},
	"faction", {
		"name", "Vandal Tribe",
		"type", "tribe",
		"color", "cyan",
		"secondary_color", "blue"
	},
	"faction", {
		"name", "Visigoth Tribe",
		"type", "tribe",
		"color", "pink",
		"secondary_color", "pink"
	},
	-- polities
	"faction", {
		"name", "Burgundy",
		"type", "polity",
		"color", "brown",
		"secondary_color", "brown"
	}
)

DefineCivilizationFactions("greek",
	"faction", {
		"name", "Athens",
		"type", "polity",
		"color", "red",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Macedon",
		"type", "polity",
		"color", "brown",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Sparta",
		"type", "polity",
		"color", "brown",
		"secondary_color", "brown"
	},
	-- Non-Playable Tribes
	"faction", {
		"name", "Minoan Tribe",
		"type", "tribe",
		"color", "yellow",
		"secondary_color", "yellow"
	},
	-- Non-Playable Polities
	"faction", {
		"name", "Crete", -- Minoans
		"type", "polity",
		"color", "yellow",
		"secondary_color", "yellow",
		"playable", false
	},
	"faction", {
		"name", "Persia",
		"type", "polity",
		"color", "yellow",
		"secondary_color", "green",
		"playable", false
	}
)

DefineCivilizationFactions("kobold",
	"faction", {
		"name", "Kobolds",
		"type", "tribe",
		"color", "violet",
		"secondary_color", "purple"
	}
)

DefineCivilizationFactions("latin",
	"faction", {
		"name", "France",
		"type", "polity",
		"color", "blue",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Moldavia",
		"type", "polity",
		"color", "brown",
		"secondary_color", "brown"
	},
	"faction", {
		"name", "Portugal",
		"type", "polity",
		"color", "green",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Rome",
		"type", "polity",
		"color", "red",
		"secondary_color", "yellow"
	},
	"faction", {
		"name", "Spain",
		"type", "polity",
		"color", "yellow",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Transylvania",
		"type", "polity",
		"color", "cyan",
		"secondary_color", "cyan"
	},
	"faction", {
		"name", "Wallachia",
		"type", "polity",
		"color", "brown",
		"secondary_color", "brown"
	}
)

DefineCivilizationFactions("norse",
	"faction", {
		"name", "Dane Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Swede Tribe",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "yellow"
	},
	-- polities
	"faction", {
		"name", "Denmark",
		"type", "polity",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Norway",
		"type", "polity",
		"color", "blue",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Sweden",
		"type", "polity",
		"color", "blue",
		"secondary_color", "yellow"
	}
)

DefineCivilizationFactions("teuton",
--	"faction", {
--		"name", "Alamanni Tribe",
--		"type", "tribe",
--		"color", "blue",
--		"secondary_color", "blue"
--	},
	"faction", {
		"name", "Bavarian Tribe",
		"type", "tribe",
		"color", "cyan",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Burgundian Tribe",
		"type", "tribe",
		"color", "brown",
		"secondary_color", "brown",
		"playable", false
	},
	"faction", {
		"name", "Dane Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "white",
		"playable", false
	},
	"faction", {
		"name", "Frank Tribe",
		"type", "tribe",
		"color", "green",
		"secondary_color", "orange"
	},
	"faction", {
		"name", "Frisian Tribe",
		"type", "tribe",
		"color", "violet", -- change to a better one?
		"secondary_color", "purple"
	},
	"faction", {
		"name", "Goth Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "red",
		"playable", false
	},
	"faction", {
		"name", "Jute Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Marcomanni Tribe",
		"type", "tribe",
		"color", "orange", -- change to a better one?
		"secondary_color", "red"
	},
	"faction", {
		"name", "Ostrogoth Tribe",
		"type", "tribe",
		"color", "red",
		"secondary_color", "red",
		"playable", false
	},
	"faction", {
		"name", "Rugian Tribe",
		"type", "tribe",
		"color", "red", -- change to a better one?
		"secondary_color", "orange",
		"playable", false
	},
	"faction", {
		"name", "Saxon Tribe",
		"type", "tribe",
		"color", "pink",
		"secondary_color", "pink"
	},
	"faction", {
		"name", "Suebi Tribe",
		"type", "tribe",
		"color", "black",
		"secondary_color", "black"
	},
	"faction", {
		"name", "Swede Tribe",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "yellow",
		"playable", false
	},
--	"faction", {
--		"name", "Thuringian Tribe",
--		"type", "tribe",
--		"color", "yellow",
--		"secondary_color", "yellow"
--	},
	"faction", {
		"name", "Vandal Tribe",
		"type", "tribe",
		"color", "cyan",
		"secondary_color", "blue",
		"playable", false
	},
	"faction", {
		"name", "Visigoth Tribe",
		"type", "tribe",
		"color", "pink",
		"secondary_color", "pink",
		"playable", false
	},
	-- Germanic polities
	"faction", {
		"name", "Austria",
		"type", "polity",
		"color", "white",
		"secondary_color", "red"
	},
	"faction", {
		"name", "Bavaria",
		"type", "polity",
		"color", "cyan",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Brandenburg",
		"type", "polity",
		"color", "blue",
		"secondary_color", "blue"
	},
	"faction", {
		"name", "Burgundy",
		"type", "polity",
		"color", "brown",
		"secondary_color", "brown",
		"playable", false
	},
	"faction", {
		"name", "Denmark",
		"type", "polity",
		"color", "red",
		"secondary_color", "white",
		"playable", false
	},
	"faction", {
		"name", "England",
		"type", "polity",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Francia",
		"type", "polity",
		"color", "green",
		"secondary_color", "orange"
	},
	"faction", {
		"name", "Galicia", -- Suebi kingdom of Galicia
		"type", "polity",
		"color", "black",
		"secondary_color", "black"
	},
	"faction", {
		"name", "Netherlands",
		"type", "polity",
		"color", "orange",
		"secondary_color", "blue"
	},
	"faction", {
		"name", "Norway",
		"type", "polity",
		"color", "blue",
		"secondary_color", "red",
		"playable", false
	},
	"faction", {
		"name", "Prussia",
		"type", "polity",
		"color", "black",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Saxony",
		"type", "polity",
		"color", "pink",
		"secondary_color", "pink"
	},
	"faction", {
		"name", "Scotland",
		"type", "polity",
		"color", "blue",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Sweden",
		"type", "polity",
		"color", "blue",
		"secondary_color", "yellow",
		"playable", false
	},
	"faction", {
		"name", "Switzerland",
		"type", "polity",
		"color", "red",
		"secondary_color", "white"
	},
	"faction", {
		"name", "Westphalia",
		"type", "polity",
		"color", "black",
		"secondary_color", "black"
	},
	-- Non-Playable Polities
	"faction", {
		"name", "Crimea",
		"type", "polity",
		"color", "brown",
		"secondary_color", "brown",
		"playable", false
	},
	"faction", {
		"name", "Croatia",
		"type", "polity",
		"color", "blue",
		"secondary_color", "red",
		"playable", false
	},
	"faction", {
		"name", "Hungary",
		"type", "polity",
		"color", "green",
		"secondary_color", "green",
		"playable", false
	},
	"faction", {
		"name", "Muscovy",
		"type", "polity",
		"color", "red",
		"secondary_color", "red",
		"playable", false
	},
	"faction", {
		"name", "Poland",
		"type", "polity",
		"color", "red",
		"secondary_color", "white",
		"playable", false
	},
	"faction", {
		"name", "Russia",
		"type", "polity",
		"color", "blue",
		"secondary_color", "red",
		"playable", false
	},
	"faction", {
		"name", "Turkey",
		"type", "polity",
		"color", "brown",
		"secondary_color", "brown",
		"playable", false
	}
)
