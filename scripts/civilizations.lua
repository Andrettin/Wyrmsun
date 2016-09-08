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
		"stand-ground", "icon-dwarven-stand-ground",
		"return-goods", "icon-dwarven-return-goods"
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
	DevelopsFrom = {"teuton"},
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
	NegativeYearLabel = "BU", -- Before Untersberg
	YearLabel = "YU", -- Years Untersberg
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-dwarven-shield-1",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-dwarven-patrol-land",
		"stand-ground", "icon-dwarven-stand-ground",
		"return-goods", "icon-dwarven-return-goods"
	},
	UIFillers = {
		"dwarf/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dwarf/ui/buttonpanel.png", -256, -200,
		"dwarf/ui/infopanel.png", 0, -200
	},
	Description = _("Dwarves live in the world of Nidavellir, where gnomes, goblins and kobolds also dwell. They usually prefer living in mountainous terrain or underground, and build their dwellings mostly out of stone. Dwarves are particularly talented at smithing, and ownership of precious metals is a passion for many of them."),
	SettlementNames = {
		"Kal Kartha", -- from Battle for Wesnoth: The Hammer of Thursagan
		"Knalga", -- from Battle for Wesnoth
		"Lyr"
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
		"stand-ground", "icon-germanic-stand-ground",
		"return-goods", "icon-germanic-return-goods"
	},
	UIFillers = {
		"germanic/ui/filler_bottom.png", 380, -181,
		"germanic/ui/resource.png", 0, 0,
		"germanic/ui/buttonpanel.png", -256, -200,
		"germanic/ui/infopanel.png", 0, -200
	},
	Description = "The lush world of Alfheim contains a myriad forests, many of which are inhabited by elves. Being a subtle folk, elves hold magical skills in great steem, and they are more prone to intrigue than open warfare.",
	Background = "The elves of Wyrmsun incorporate elements both of the elves of Norse mythology and the Celtic fairies. This follows the amalgamation of the two types of beings in English folklore."
})

--[[
DefineCivilization("english", { -- information for later use
	Display = "English",
	Visible = true,
	Species = "human",
	ParentCivilization = "teuton",
	Language = "english",
	Adjective = "English",
	DefaultColor = "red",
	DevelopsFrom = {"teuton"}
})
--]]

DefineCivilization("ettin", {
	Display = "Ettin",
	Visible = true,
	Species = "ettin",
--	Language = "ettin",
	Adjective = "Ettin",
	Playable = false,
	DefaultColor = "black",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-goblin-wooden-shield",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-goblin-patrol-land",
		"stand-ground", "icon-goblin-stand-ground",
		"return-goods", "icon-goblin-return-goods"
	},
	UIFillers = {
		"dwarf/ui/filler_bottom.png", 380, -181,
		"dwarf/ui/resource.png", 0, 0,
		"dwarf/ui/buttonpanel.png", -256, -200,
		"dwarf/ui/infopanel.png", 0, -200
	},
--	Description = "The ettins of Jotunheim are one of the most ancient sentient peoples to have existed. They possess deep knowledge of mystic forces, passed on by their sages from generation to generation. One of their mystics once discovered another plane of existence - Asgard - during a trance. They sought more and more knowledge about those strange lands, until they were able to construct a massive portal leading to the new realm. There they found a group of powerful beings, and soon hostilities erupted between them and the invaders. Though few in number, with their sword and sorcery each of the Asgardians slew scores of ettins. The invasion ended in disaster. Those remaining of the gigantic creatures squirreled towards the portal, as the Asgardians used their powers to destroy it.\n\nDespite the failure of their campaign, the ettins had made a phenomenal advance in their mystic knowledge. Their portal had been destroyed, but the ability to create a new one was now theirs - forever. And as their magic wisdom and their martial prowess grew, they would eventually bring forth heroes capable of taking on the Asgardians."
})

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
		"stand-ground", "icon-germanic-stand-ground",
		"return-goods", "icon-germanic-return-goods"
	},
	UIFillers = {
		"germanic/ui/filler_bottom.png", 380, -181,
		"germanic/ui/resource.png", 0, 0,
		"germanic/ui/buttonpanel.png", -256, -200,
		"germanic/ui/infopanel.png", 0, -200
	},
	Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. Those who migrated to Scandinavia spoke their own dialect of Indo-European, which eventually would develop into Germanic. Contact with the Celtic peoples to their south was beneficial to the Germanics, as they were able to incorporate more advanced techniques from Central Europe in areas such as metalworking."),
	PersonalNames = {
		"female", "Ammon", -- Proto-Germanic rendering of "Amma", Karl's mother in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21.
		"female", "Moder", -- Proto-Germanic rendering of "Mothir", Jarl's mother in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 22.
		"male", "Avan", -- Proto-Germanic rendering of "Afi", Karl's (presumed) father in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21.
		"male", "Branda", -- Proto-Germanic rendering of "Brandr" (son of Beldeg), descendant of Vóden, who settled Scandinavia in the Prose Edda; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
		"male", "Erala", -- Proto-Germanic rendering of "Jarl", the ancestor of the class of warriors in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 22-24.
		"male", "Fader", -- Proto-Germanic rendering of "Fathir", Jarl's (presumed) father in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 22.
		"male", "Godagaz", -- correct?
		"male", "Gudavulfa", -- Proto-Germanic rendering of "Gudólfr" (son of Ját), ancestor of Vóden, who settled Scandinavia in the Prose Edda; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
		"male", "Hadulaikaz", -- correct?
		"male", "Hagustaldaz", -- correct?
		"male", "Hlewagastiz", -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 1.2.
		"male", "Holtagastiz", -- correct?
		"male", "Karla", -- Proto-Germanic rendering of "Karl", the ancestor of the class of peasants in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21.
		"male", "Magan", -- Proto-Germanic rendering of "Magi" (son of Móda), ancestor of Vóden, who settled Scandinavia in the Prose Edda; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 7.
		"male", "Skeldu", -- Proto-Germanic rendering of "Skjöldr", son of Vóden and ancestor of the Danish kings; Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 221.
		"male", "Theudariks", -- correct?
		"male", "Thrahila", -- Proto-Germanic rendering of "Thrall", the ancestor of the class of thralls in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 19-20.
		"male", "Wagigaz", -- correct?
		"male", "Wiwaz", -- correct?
		"male", "Woduridaz" -- correct?
	},
	SettlementNames = {
		"Ansugardiz", -- "Ansugárdiz" is a rendering of rendering of "Asgard" in Proto-Germanic, as in the Ynglinga saga's story Asgard is the settlement in "Asia" in which Odin's people (here understood as the Indo-Europeans who went on to settle Scandinavia and become speakers of Proto-Germanic) used to live until they migrated to Scandinavia; shouldn't be in the location of Astrakhan, but instead where modern Assor is (where?), or alternatively Chasgar (again, where?); Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
		"Segiztuna" -- "Segiztûna" is a rendering of "Sigtun" in Proto-Germanic, since the Ynglinga saga the city was founded when the cultural ancestors of the Germanic peoples (= Odin's people) first settled Scandinavia
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
	CivilizationUpgrade = "upgrade-celt-civilization",
	Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. One group of Indo-Europeans spoke a dialect which would later develop into the Celtic and Italic languages. Celtic peoples occupied large swathes of Europe, from France to the Middle Danube. They had trade contacts with Greeks and Romans, and warred a number of times with the latter. Eventually, most Celts would be conquered and assimilated by other peoples, leaving only small areas where Celtic languages were still spoken.")
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
	NegativeYearLabel = "BU", -- Before Untersberg
	YearLabel = "YU", -- Years Untersberg
	ButtonIcons = {
		"move", "icon-gnomish-boots",
		"attack", "icon-gnomish-thrusting-sword-1",
		"patrol", "icon-gnomish-patrol-land",
		"stand-ground", "icon-germanic-stand-ground",
		"return-goods", "icon-dwarven-return-goods"
	},
	Description = _("Gnomes usually live in the hills and forests of Nidavellir, and often seek contact with nature. Although they have a different outlook on life than the dwarves, not rarely both two peoples live side by side, with gnomish minorities permeating dwarven settlements and vice-versa. These contacts have brought much benefit to both of them, both through trade and via the spread of gnomish technologies northwards."),
	PersonalNames = {
		"female", "Adalga", -- Source: Franz Hartmann, "Among the Gnomes", 1895, p. 79.
		"male", "Bimbam", -- Source: Franz Hartmann, "Among the Gnomes", 1895, p. 79.
		"male", "Clavo", -- name of a (male) gnome general; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 106.
		"male", "Cravatu", -- Source: Franz Hartmann, "Among the Gnomes", 1895, p. 97.
		"male", "Kalutho", -- name of an (apparently male) gnome; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 13.
		"male", "Pypo", -- king of Untersberg; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 13.
		"male", "Rubezahl"
	},
	SettlementNames = {
		"Gnana" -- name of the capital of Untersberg; Source: Franz Hartmann, "Among the Gnomes", 1895, p. 179.
	}
})

DefineCivilization("goblin", {
	Display = "Goblin",
	Visible = true,
	Species = "goblin",
	Language = "goblin",
	Adjective = "Goblin",
	DefaultColor = "teal",
	NegativeYearLabel = "BU", -- Before Untersberg
	YearLabel = "YU", -- Years Untersberg
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-goblin-wooden-shield",
		"attack", "icon-goblin-short-sword",
		"patrol", "icon-goblin-patrol-land",
		"stand-ground", "icon-goblin-stand-ground",
		"return-goods", "icon-goblin-return-goods"
	},
	UIFillers = {
		"goblin/ui/filler_bottom.png", 380, -181,
		"goblin/ui/resource.png", 0, 0,
		"goblin/ui/buttonpanel.png", -256, -200,
		"goblin/ui/infopanel.png", 0, -200
	},
	Description = _("Goblins dwell in the caves and highlands of Nidavellir. The frequency of goblin raids into dwarven and gnomish territory has fostered a history of hatred with those races. The emergence of the goblin merchant syndicates has changed this relationship, however. The goblin merchants have become an indispensable part of Nidavellir's trade network, though the dwarves and gnomes do hold grudges against their practices, specially their suspected support of piracy...")
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
	NegativeYearLabel = "BU", -- Before Untersberg
	YearLabel = "YU", -- Years Untersberg
	ButtonIcons = {
		"attack", "icon-gnomish-thrusting-sword-1",
		"stand-ground", "icon-goblin-stand-ground"
	},
	Description = _("Kobolds live in the deep caves of Nidavellir, and worship wyrms as sacred ancestors. They share the dwarven passion for mining and metals, but not their technological advancement. Although kobolds can be inventive, their isolation from other communities has made the spread of progress to their lands more difficult. Being the sole intelligent reptilian race in Nidavellir, they feel threatened by the presence of dwarves, gnomes and goblins - all of which they call \"breastlings\".")
})

DefineCivilization("minotaur", {
	Display = "Minotaur",
	Visible = true,
	Species = "minotaur",
	Adjective = "Minotaur",
	Playable = false,
	DefaultColor = "red"
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
		"stop", "icon-goblin-wooden-shield",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-goblin-patrol-land",
		"stand-ground", "icon-dwarven-stand-ground",
		"return-goods", "icon-goblin-return-goods"
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
	CivilizationUpgrade = "upgrade-teuton-civilization",
	DevelopsFrom = {"germanic"},
	--[[
	ProvinceNames = {
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
--		"Vorarl" -- example: "Vorarlberg"
	},
	ProvinceNameSuffixes = {
		"falen" -- example: "Westfalen" (Westphalia)
	},
	--]]
	SettlementNames = {
		"Altsohl",
		"Botzen",
		"Bregenz",
		"Brünn",
		"Budweis",
		"Chlum",
		"Cilli",
		"Eger",
		"Franzensfeste",
		"Frohsdorf",
		"Gabel",
		"Gastein",
		"Gänserndorf",
		"Glurns",
		"Görz",
		"Graz", -- from the same Slavic root as "Grad"
		"Hamburg",
		"Innsbruck",
		"Ischl",
		"Josefstadt",
		"Karlsbad",
		"Krems",
		"Kremsier",
		"Kronstadt",
		"Kufstein",
		"Lemberg",
		"Leopoldstadt",
		"Linz",
		"Marburg",
		"München",
		"Münchengrätz",
		"Neusohl",
		"Nikolsburg",
		"Ödenburg",
		"Olmütz",
		"Passau",
		"Pilsen",
		"Prag",
		"Presburg",
		"Regensburg",
		"Sadowa",
		"Schässburg",
		"Schweinschädel",
		"Steinamanger",
		"Stuhlweissenburg",
		"Teplitz",
		"Teschen",
		"Tobitschau",
		"Trent",
		"Troppau",
		"Villach",
		"Wels",
		"Werschitz",
		"Zillertal"
	},
	Description = _("During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). Eventually, West Germanic peoples would come to identify themselves with the demonym \"deutsch\", a term often latinized as \"teutonicus\"."),
	Months = { -- Anglo-Saxon months; Source: Frank Stenton, "Anglo-Saxon England", 1971, pp. 97-98.
		"january", "Giuli", -- first month of the Anglo-Saxon year; the modern Yule, the name was used for both the last and first month of the year; the year began on the 25th of December, during the night of which the "Modra nect" ("the night of the mothers") was celebrated
		"february", "Solmonath", -- second month of the Anglo-Saxon year; known as the month of cakes, in which those were offered to the gods
		"march", "Hrethmonath", -- third month of the Anglo-Saxon year, named after the goddess Hretha
		"april", "Eosturmonath", -- fourth month of the Anglo-Saxon year, named after the goddess Eostre
		"may", "Thrimilci", -- fifth month of the Anglo-Saxon year, so named because cows were supposedly milked three times a day during this month
		"june", "Litha", -- sixth and seventh month of the Anglo-Saxon year, the word supposedly means "moon"
		"july", "Litha", -- sixth and seventh month of the Anglo-Saxon year, the word supposedly means "moon"
		"august", "Weodmonath", -- eight month of the Anglo-Saxon year, the name means "the month of weeds"
		"september", "Halegmonath", -- ninth month of the Anglo-Saxon year, the name means "the month of offerings", due to a festival made at the end of the harvest
		"october", "Wintirfyllith", -- tenth month of the Anglo-Saxon year, begins with the first winter full moon
		"november", "Blotmonath", -- eleventh month of the Anglo-Saxon year, "the month of sacrifice", in which animals were sacrificed to the gods
		"december", "Giuli" -- last month of the Anglo-Saxon year; the modern Yule, the name was used for both the last and first month of the year
	}
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
		"Caesaraugusta",
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
		"Mediolanum", -- Milan
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
		"Vindobona", -- Vienna
		"Vulturnus"
	},
	Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. One group of Indo-Europeans spoke a dialect which would later develop into the Celtic and Italic languages. Latins were an Italic people who inhabited Central Italy and who founded many cities, one of them being Rome. With the expansion of consolidation of Roman power, most of Italy would be latinized, and eventually large areas of the Roman empire would speak Latin as their mother tongue.")
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
	ParentCivilization = "latin",
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
	Playable = false,
	DevelopsFrom = {"germanic"},
	Description = _("During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). The Goths and the Vandals played an important role in the wars and migrations of late antiquity, and apportioned a part of the Roman empire for themselves. The Visigoths (the Western Goths) settled in Spain and southern France, the Ostrogoths (the Eastern Goths) in Italy, and the Vandals in North Africa. Being a small minority relative to the populations they had conquered, eventually Goths and Vandals would assimilate into the local cultures.")
})

DefineCivilization("greek", {
	Display = "Greek",
	Visible = true,
	Species = "human",
	Language = "greek",
	ParentCivilization = "latin",
	Adjective = "Greek",
	Playable = false,
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
	},
	Description = _("During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. Those who migrated to Greece spoke their own dialect of Indo-European, which eventually would develop into Ancient Greek. Initially a backwater in comparison to the Near East, Greece would eventually become one of the main centers of civilization in antiquity, being widely renowned for the achievements of its people. The rise of the Macedonian empire spread the influence of Greek culture through much of the eastern Mediterranean, Persia, and beyond, and even after the Roman conquest Greek remained widely spoken (both as a mother tongue and as a lingua franca) in the eastern half of the Mediterranean.")
})

DefineCivilization("egyptian", {
	Display = "Egyptian",
	Visible = true,
	Species = "human",
	ParentCivilization = "greek",
	Adjective = "Egyptian",
	Playable = false,
	DefaultColor = "yellow",
	PersonalNames = {
		"male", "Amenofis", -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 112.
		"male", "Isi", -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 81.
		"male", "Seti" -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 90.
	}
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

DefineCivilization("minoan", {
	Display = "Minoan",
	Visible = true,
	Species = "human",
	Language = "minoan",
	ParentCivilization = "greek",
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
	Playable = false,
	DevelopsFrom = {"germanic"},
	Description = _("During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). While late antiquity saw intense migration of Germanic peoples, the Danes and Swedes remained largely in Scandinavia, well beyond the developments of the Mediterranean.")
})

DefineCivilization("baltic", {
	Display = "Baltic",
	Visible = true,
	Species = "human",
--	Language = "lithuanian",
	ParentCivilization = "norse",
	Adjective = "Baltic",
	Playable = false
})

DefineCivilization("uralic", {
	Display = "Uralic",
	Visible = true,
	Species = "human",
	Language = "proto-uralic",
	ParentCivilization = "germanic",
	Adjective = "Uralic",
	Playable = false
})

DefineCivilization("finnish", {
	Display = "Finnish",
	Visible = true,
	Species = "human",
	Language = "finnish",
	ParentCivilization = "norse",
	Adjective = "Finnish",
	Playable = false,
	DevelopsFrom = {"uralic"}
})

DefineCivilization("magyar", {
	Display = "Magyar",
	Visible = true,
	Species = "human",
--	Language = "hungarian",
	ParentCivilization = "teuton",
	Adjective = "Magyar",
	Playable = false,
	DevelopsFrom = {"uralic"}
})

DefineCivilization("persian", {
	Display = "Persian",
	Visible = true,
	Species = "human",
	Language = "avestan",
	ParentCivilization = "greek",
	Adjective = "Persian",
	Playable = false
})

DefineCivilization("phoenician", {
	Display = "Phoenician",
	Visible = true,
	Species = "human",
	ParentCivilization = "persian",
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

DefineCivilization("wose", {
	Display = "Wose",
	Visible = true,
	Species = "wose",
	Adjective = "Wose",
	Playable = false,
	DefaultColor = "green"
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
