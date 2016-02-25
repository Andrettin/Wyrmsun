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
		"language", "dwarven",
		"default-color", "red"
	},
	"race", {
		"name", "elf",
		"display", "Elf",
		"visible",
		"species", "elf",
--		"language", "elven",
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
		"language", "english",
		"default-color", "red"
	},
	--]]
	"race", {
		"name", "germanic",
		"display", "Germanic",
		"visible",
		"species", "human",
		"language", "proto-germanic",
		"default-color", "orange"
	},
	"race", { -- has to be defined after the germanic civilization because it uses it as its parent civilization
		"name", "celt",
		"display", "Celt",
		"visible",
		"species", "human",
		"language", "proto-celtic",
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
		"language", "gnomish",
		"playable", false,
		"default-color", "blue"
	},
	"race", {
		"name", "goblin",
		"display", "Goblin",
		"visible",
		"species", "goblin",
		"language", "goblin",
		"playable", false,
		"default-color", "teal"
	},
	"race", {
		"name", "kobold",
		"display", "Kobold",
		"visible",
		"species", "kobold",
		"language", "kobold",
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
		"language", "high-german",
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
			"Ziller" -- example: "Zillertal"
		},
		"settlement-name-suffixes", {
			"grätz", -- examples: "Königgrätz", "Münchengrätz"
			"sohl", -- examples: "Altsohl", "Neusohl"
			"weissenburg" -- "weissenburg" = "white castle"; example: "Stuhlweissenburg"
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
		"language", "basque",
		"parent-civilization", "germanic",
		"playable", false
	},
	"race", {
		"name", "etruscan",
		"display", "Etruscan",
		"visible",
		"species", "human",
		"language", "etruscan",
		"parent-civilization", "teuton",
		"playable", false
	},
	"race", {
		"name", "goth",
		"display", "Goth",
		"visible",
		"species", "human",
		"language", "gothic",
		"parent-civilization", "teuton",
		"playable", false
	},
	"race", {
		"name", "greek",
		"display", "Greek",
		"visible",
		"species", "human",
		"language", "greek",
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
		"language", "illyrian",
		"parent-civilization", "teuton",
		"playable", false
	},
	"race", {
		"name", "latin",
		"display", "Latin",
		"visible",
		"species", "human",
		"language", "latin",
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
		}
	},
	"race", {
		"name", "minoan",
		"display", "Minoan",
		"visible",
		"species", "human",
		"language", "minoan",
		"parent-civilization", "teuton",
		"playable", false
	},
	"race", {
		"name", "norse",
		"display", "Norse",
		"visible",
		"species", "human",
		"language", "old-norse",
		"parent-civilization", "teuton",
		"playable", false
	},
	"race", {
		"name", "persian",
		"display", "Persian",
		"visible",
		"species", "human",
		"language", "avestan",
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
		"language", "phrygian",
		"parent-civilization", "teuton",
		"playable", false
	},
	"race", {
		"name", "slav",
		"display", "Slav",
		"visible",
		"species", "human",
		"language", "old-church-slavonic",
		"parent-civilization", "teuton",
		"playable", false,
		"default-color", "blue"
	},
	"race", {
		"name", "thracian",
		"display", "Thracian",
		"visible",
		"species", "human",
		"language", "thracian",
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
	return -1
end
