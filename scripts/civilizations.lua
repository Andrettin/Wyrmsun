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
	"race", {
		"name", "neutral",
		"display", "Neutral",
		"playable", false
	},
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
		"species", "dwarf",
		"default-color", "red"
	},
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
		"playable", false,
		"default-color", "teal"
	},
	--[[
	"race", { -- information for later use
		"name", "english",
		"display", "English",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"name-translations", {
			"Lisboa", "Lisbon",
			"Wien", "Vienna"
		},
		"default-color", "red"
	},
	--]]
	"race", {
		"name", "germanic",
		"display", "Germanic",
		"visible",
		"species", "human",
		"default-color", "orange"
	},
	"race", { -- has to be defined after the germanic civilization because it uses it as its parent civilization
		"name", "celt",
		"display", "Celt",
		"visible",
		"species", "human",
		"parent-civilization", "germanic",
		"playable", false,
		"default-color", "green"
	},
	"race", {
		"name", "gnome",
		"display", "Gnome",
		"visible",
		"species", "gnome",
		"parent-civilization", "dwarf",
		"playable", false,
		"default-color", "blue"
	},
	"race", {
		"name", "goblin",
		"display", "Goblin",
		"visible",
		"species", "goblin",
		"playable", false,
		"default-color", "teal"
	},
	"race", {
		"name", "kobold",
		"display", "Kobold",
		"visible",
		"species", "kobold",
		"parent-civilization", "goblin",
		"playable", false,
		"default-color", "violet"
	},
	"race", {
		"name", "orc",
		"display", "Orc",
		"visible",
		"species", "orc",
		"playable", false,
		"default-color", "red"
	},
	"race", {
		"name", "teuton",
		"display", "Teuton",
		"visible",
		"species", "human",
		"parent-civilization", "germanic",
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
			"Steier" -- example: "Steiermark" (Styria)
--			"Vorarl" -- example: "Vorarlberg"
		},
		"province-name-suffixes", {
			"phalien" -- example: "Westphalien" (Westphalia)
		},
		"settlement-names", {
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
		"settlement-name-prefixes", {
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
			"Spiel", -- "Spiel" = "Game"/"Play"; example: "Spielberg"
			"Stuhl", -- "Stuhl" = "Chair"; example: "Stuhlweissenburg"
			"Ziller" -- example: "Zillertal"
		},
		"settlement-name-suffixes", {
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
			"Vindobona", "Wien", -- "Wien" = "Vienna"; from the Latin name "Vindobona"
			"Waida", "Waid", -- from Proto-Germanic to German
			"Walakuzjōn", "Walküre", -- from Proto-Germanic to German
			"Ermanaric", "Ermenrich", -- "Ermenrich" is the German form of the Gothic name Ermanaric
			"Theodoric", "Dietrich" -- "Dietrich" is the German form of the Gothic name Theodoric
		},
		"default-color", "yellow"
	},
	"race", {
		"name", "troll",
		"display", "Troll",
		"visible",
		"species", "troll",
		"parent-civilization", "goblin",
		"playable", false,
		"default-color", "green"
	},
	"race", {
		"name", "basque", -- represents not only the speakers of Vasconic languages, but also various pre-Indo-European cultures
		"display", "Basque",
		"visible",
		"species", "human",
		"parent-civilization", "germanic",
		"playable", false
	},
	"race", {
		"name", "etruscan",
		"display", "Etruscan",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false
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
	},
	"race", {
		"name", "illyrian",
		"display", "Illyrian",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false
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
			"bona", -- example: "Vindobona" (Vienna)
			"lanum" -- example: "Mediolanum" (Milan)
		},
		"name-translations", {
			"Nea", "Nea", -- example: "Neapolis" -> "Neapolis" (Naples); name remained with no change
			"Polis", "Polis" -- example: "Neapolis" -> "Neapolis" (Naples); name remained with no change
		},
	},
	"race", {
		"name", "minoan",
		"display", "Minoan",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false
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
		"name", "persian",
		"display", "Persian",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false
	},
	"race", {
		"name", "phoenician",
		"display", "Phoenician",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false,
		"default-color", "black"
	},
	"race", {
		"name", "phrygian",
		"display", "Phrygian",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false
	},
	"race", {
		"name", "slav",
		"display", "Slav",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false,
		"default-color", "blue"
	},
	"race", {
		"name", "thracian",
		"display", "Thracian",
		"visible",
		"species", "human",
		"parent-civilization", "teuton",
		"playable", false
	}
)

-- Cyclops names: Arges ("Vivid"), Brontes ("Thunderer"), Polyphemus (name means "many-voiced"), Steropes ("Lightner"), Tepegoz (an ogre with a single eye from Turkic mythology; apparently derived from the Greek Polyphemus myth; Tepe means "top, crown of the head" and Göz means "eye"), Depeghoz (Depêghöz, same as Tepegoz, given by Jacob Grimm in Teutonic Mythology, p. 424)

Load("scripts/factions.lua")

function GetCivilizationID(civilization)
	local civilizations = GetCivilizations()
	for i=1,table.getn(civilizations) do
		if (civilizations[i] == civilization) then
			return i - 1
		end
	end
	return nil
end
