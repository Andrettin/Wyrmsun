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
--      civilizations.lua - Define Wyrmsun's civilizations
--
--      (c) Copyright 2015 by Andre Novellino Gouvêa
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

-- markov chain implementation
--[[
DwarvenNames = {"Ai", "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aigduras", "Aigdurlos", "Aigdursol", "Aiglondur", "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus", "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Alberich", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Aldras", "Aldril", "Aldring", "Aldris", "Aldrlos", "Aldrol", "Aldrsol", "Alduras", "Aldurlos", "Aldurol", "Alf", "Alfrigg", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus", "Althjof", "Alvis", "Anaithas", "Anaithil", "Anaithing", "Anaithis", "Anaithsil", "Anaithus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Anatas", "Anating", "Anatis", "Anatol", "Anatsol", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Andril", "Andris", "Andrlos", "Andrus", "Anduril", "Andurol", "Andursol", "Andurus", "Andvari", "Angarthing", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus", "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Augalas", "Augaling", "Augalol", "Augating", "Augatlos", "Augatol", "Augatsil", "Augatsol", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Augdras", "Augdris", "Augdrsil", "Augdrus", "Augduras", "Augduril", "Augduring", "Augdurol", "Augdursol", "Augdurus", "Augthail", "Augthais", "Augthalos", "Augthaol", "Aurvang", "Austri", "Bafur", "Baglur", "Bari", "Berling", "Bibung", "Bifur", "Bombor", "Brokk", "Burin", "Dain", "Delling", "Dolgthvari", "Dori", "Draupnir", "Duf", "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Dulcatulos", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus", "Durin", "Dursil", "Durstorn", "Dvalin", "Eggerich", "Eikinskjaldi", "Eitri", "Fal", "Fid", "Fili", "Fjalar", "Frag", "Frar", "Frosti", "Fundin", "Galar", "Gandalf", "Ginnar", "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Glamatil", "Glamatus", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus", "Glinar", "Gloin", "Glomin", "Glonoin", "Goldemar", "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Gomalil", "Gomalis", "Gomalus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Gomcatil", "Gomcatis", "Gomcatlos", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Gomduris", "Gomdurlos", "Gomdursil", "Gomdursol", "Gomdurus", "Gomthaas", "Gomthalos", "Gomthasol", "Grerr", "Grimnir", "Hamel", "Har", "Haur", "Heptifili", "Hledjolf", "Hornbori", "Hugstari", "Ingi", "Iri", "Ivaldi", "Jari", "Karrag", "Kili", "Kinan", "Kuhnar", "Laurin", "Lit", "Loni", "Mjodvitnir", "Modsognir", "Nabbi", "Nain", "Nar", "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Naralas", "Naralil", "Naralsil", "Naralus", "Naratlos", "Naratol", "Naratsil", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Narduras", "Narduril", "Nardurol", "Narthalos", "Narthaol", "Neglur", "Nidi", "Niping", "Noiraran", "Nordri", "Nori", "Nyi", "Nyr", "Nyrad", "Oin", "Olurf", "Ori", "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Pelthaas", "Pelthail", "Pelthasil", "Radsvid", "Regin", "Rekk", "Relgorn", "Rugnur", "Rynan", "Skavid", "Skirfir", "Solblindi", "Sudri", "Sviar", "Sviur", "Theganli", "Thekk", "Thjodrorir", "Thorin", "Thrain", "Thror", "Thursagan", "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus", "Trithalis", "Trithalol", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol", "Trithcatlos", "Trithcatsol", "Trithcatus", "Trithdril", "Trithdring", "Trithdris", "Trithdrlos", "Trithdrol", "Trithdrsol", "Trithdrus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus", "Ulrek", "Uni", "Vali", "Var", "Vegdrasil", "Vestri", "Vig", "Vindalf", "Virfir", "Vit"}

DwarvenLetterPairs = {}
StartingDwarvenLetterPairs = {}
for i=1,table.getn(DwarvenNames) do
	for j=1,(string.len(DwarvenNames[i]) - 1) do
		local letter_pair = string.lower(string.sub(DwarvenNames[i], j, j + 1))
		if (DwarvenLetterPairs[letter_pair] == nil) then
			DwarvenLetterPairs[letter_pair] = {}
		end
		if (j + 3 <= string.len(DwarvenNames[i])) then
			local next_letter_pair = string.sub(DwarvenNames[i], j + 2, j + 3)
			table.insert(DwarvenLetterPairs[letter_pair], next_letter_pair)
		else
			local next_letter_pair = string.sub(DwarvenNames[i], j + 2, j + 2)
			table.insert(DwarvenLetterPairs[letter_pair], next_letter_pair)
		end
	end
	table.insert(StartingDwarvenLetterPairs, string.lower(string.sub(DwarvenNames[i], 1, 2)))
end

local dwarven_personal_names = {}
for i=1,255 do -- create 5 dwarven names as a test
	local latest_letter_pair = StartingDwarvenLetterPairs[SyncRand(table.getn(StartingDwarvenLetterPairs)) + 1]
	local personal_name = latest_letter_pair
	local name_completed = false
	while (name_completed == false) do
		if (DwarvenLetterPairs[latest_letter_pair] ~= nil) then
			local chosen_letter_pair = DwarvenLetterPairs[latest_letter_pair][SyncRand(table.getn(DwarvenLetterPairs[latest_letter_pair])) + 1]
			latest_letter_pair = chosen_letter_pair
			personal_name = personal_name .. chosen_letter_pair
			if (string.len(chosen_letter_pair) == 1 or string.len(personal_name) >= 12) then
				name_completed = true
			end
		else
			name_completed = true
		end
	end
	table.insert(dwarven_personal_names, CapitalizeString(personal_name))
end
--]]

DefineRaceNames(
	"race", {
		"name", "celt",
		"display", "Celt",
		"visible",
		"species", "human",
		"parent-civilization", "germanic",
		"playable", false
	},
	"race", {
		"name", "dwarf",
		"display", "Dwarf",
		"visible",
		"species", "dwarf",
		"personal_names", {"Ai", "Aigaithas", "Aigaithil", "Aigaithing", "Aigaithol", "Aigalas", "Aigaling", "Aigalis", "Aigalol", "Aigalsil", "Aigatas", "Aigatis", "Aigatlos", "Aigatsil", "Aigatsol", "Aigatus", "Aigcatas", "Aigcatil", "Aigcating", "Aigcatis", "Aigcatsil", "Aigcatsol", "Aigcatus", "Aigdring", "Aigdris", "Aigdrlos", "Aigdrsil", "Aigdrsol", "Aigduras", "Aigdurlos", "Aigdursol", "Aiglondur", "Aigthaing", "Aigthais", "Aigthasil", "Aigthaus", "Alaithas", "Alaithis", "Alaithlos", "Alaithol", "Alaithsol", "Alaithus", "Alalas", "Alalil", "Alalol", "Alalsol", "Alalus", "Alatas", "Alatil", "Alating", "Alatlos", "Alatsil", "Alberich", "Alcatil", "Alcatis", "Alcatlos", "Alcatsil", "Aldras", "Aldril", "Aldring", "Aldris", "Aldrlos", "Aldrol", "Aldrsol", "Alduras", "Aldurlos", "Aldurol", "Alf", "Alfrigg", "Althaas", "Althail", "Althalos", "Althaol", "Althasil", "Althasol", "Althaus", "Anaithas", "Anaithil", "Anaithing", "Anaithis", "Anaithsil", "Anaithus", "Analil", "Anallos", "Analol", "Analsil", "Analus", "Anatas", "Anating", "Anatis", "Anatol", "Anatsol", "Ancatas", "Ancatil", "Ancatol", "Ancatus", "Andril", "Andris", "Andrlos", "Andrus", "Anduril", "Andurol", "Andursol", "Andurus", "Andvari", "Angarthing", "Anthaas", "Anthaing", "Anthais", "Anthaol", "Anthasil", "Anthasol", "Anthaus", "Augaithas", "Augaithing", "Augaithsil", "Augaithus", "Augalas", "Augaling", "Augalol", "Augating", "Augatlos", "Augatol", "Augatsil", "Augatsol", "Augcatas", "Augcatil", "Augcatis", "Augcatol", "Augcatsil", "Augcatus", "Augdras", "Augdris", "Augdrsil", "Augdrus", "Augduras", "Augduril", "Augduring", "Augdurol", "Augdursol", "Augdurus", "Augthail", "Augthais", "Augthalos", "Augthaol", "Aurvang", "Austri", "Bafur", "Baglur", "Bari", "Berling", "Bibung", "Bifur", "Bombor", "Brokk", "Burin", "Dain", "Delling", "Dolgthvari", "Dori", "Draupnir", "Duf", "Dulaithil", "Dulaithing", "Dulaithlos", "Dulaithsil", "Dulaithsol", "Dulalas", "Dulaling", "Dulalis", "Dulalsil", "Dulatil", "Dulating", "Dulatol", "Dulatsol", "Dulatus", "Dulcatil", "Dulcating", "Dulcatlos", "Dulcatol", "Dulcatsil", "Dulcatsol", "Dulcatulos", "Duldril", "Duldris", "Duldrlos", "Duldrol", "Duldrsil", "Duldrus", "Dulduras", "Dulduring", "Duldursil", "Duldurus", "Dulthalos", "Dulthasil", "Dulthasol", "Dulthaus", "Durin", "Dursil", "Durstorn", "Dvalin", "Eggerich", "Eitri", "Fal", "Fid", "Fili", "Fjalar", "Frag", "Frar", "Frosti", "Fundin", "Galar", "Ginnar", "Glamaithil", "Glamaithis", "Glamaithol", "Glamaithsol", "Glamalil", "Glamaling", "Glamalis", "Glamallos", "Glamalsil", "Glamalus", "Glamatil", "Glamatus", "Glamcatas", "Glamcatil", "Glamcating", "Glamcatsil", "Glamcatus", "Glamdras", "Glamdril", "Glamdrlos", "Glamdrsol", "Glamduras", "Glamduril", "Glamduring", "Glamduris", "Glamdursol", "Glamthaas", "Glamthaol", "Glamthasil", "Glamthasol", "Glamthaus", "Glinar", "Gloin", "Glomin", "Glonoin", "Goldemar", "Gomaithas", "Gomaithil", "Gomaithol", "Gomaithsol", "Gomalil", "Gomalis", "Gomalus", "Gomatas", "Gomatil", "Gomating", "Gomatis", "Gomatlos", "Gomatol", "Gomcatil", "Gomcatis", "Gomcatlos", "Gomdras", "Gomdril", "Gomdring", "Gomdris", "Gomdrol", "Gomdrsil", "Gomduris", "Gomdurlos", "Gomdursil", "Gomdursol", "Gomdurus", "Gomthaas", "Gomthalos", "Gomthasol", "Grerr", "Grimnir", "Hamel", "Har", "Haur", "Heptifili", "Hledjolf", "Hornbori", "Hugstari", "Ingi", "Iri", "Ivaldi", "Jari", "Karrag", "Kili", "Kinan", "Kuhnar", "Laurin", "Lit", "Loni", "Modsognir", "Nabbi", "Nain", "Nar", "Naraithil", "Naraithing", "Naraithol", "Naraithsil", "Naraithsol", "Naraithus", "Naralas", "Naralil", "Naralsil", "Naralus", "Naratlos", "Naratol", "Naratsil", "Narcating", "Narcatis", "Narcatol", "Narcatsil", "Narcatsol", "Nardras", "Nardril", "Nardring", "Nardris", "Nardrol", "Nardrsil", "Nardrsol", "Nardrus", "Narduras", "Narduril", "Nardurol", "Narthalos", "Narthaol", "Neglur", "Nidi", "Niping", "Noiraran", "Nordri", "Nori", "Nyi", "Nyr", "Nyrad", "Oin", "Olurf", "Ori", "Pelaithas", "Pelaithil", "Pelaithing", "Pelaithis", "Pelaithlos", "Pelaithol", "Pelaithsil", "Pelaithsol", "Pelalil", "Pelaling", "Pelalis", "Pelalsil", "Pelalsol", "Pelalus", "Pelatil", "Pelating", "Pelatis", "Pelatol", "Pelatsil", "Pelatus", "Pelcating", "Pelcatlos", "Pelcatol", "Pelcatsil", "Peldras", "Peldril", "Peldrsol", "Peldrus", "Pelduril", "Pelduring", "Pelduris", "Peldurol", "Peldursol", "Peldurus", "Pelthaas", "Pelthail", "Pelthasil", "Regin", "Rekk", "Relgorn", "Rugnur", "Rynan", "Skavid", "Skirfir", "Sudri", "Sviar", "Sviur", "Theganli", "Thekk", "Thjodrorir", "Thorin", "Thrain", "Thror", "Thursagan", "Trithaithas", "Trithaithil", "Trithaithis", "Trithaithlos", "Trithaithol", "Trithaithsil", "Trithaithsol", "Trithaithus", "Trithalis", "Trithalol", "Trithatas", "Trithatil", "Trithatlos", "Trithatsol", "Trithcatlos", "Trithcatsol", "Trithcatus", "Trithdril", "Trithdring", "Trithdris", "Trithdrlos", "Trithdrol", "Trithdrsol", "Trithdrus", "Trithduril", "Trithduring", "Trithdurlos", "Trithdurol", "Trithdursil", "Trithdurus", "Triththaas", "Triththail", "Triththaing", "Triththasol", "Triththaus", "Ulrek", "Uni", "Vali", "Var", "Vegdrasil", "Vestri", "Vig", "Virfir", "Vit"}, -- Austri = East, Draupnir = Dropper, Ivaldi = The Mighty, Nordri = North, Regin = Counsel-Giver, Sudri = South, Vestri = "West"
		"personal_name_prefixes", {"Al", "Eikin", "Gand", "Mjod", "Rad", "Sol", "Vind"}, -- Al = Mighty / All, Eikin = Oak, Gand = Magic, Mjod = Mead, Rad = Swift, Sol = Sun, Vind = Wind
		"personal_name_suffixes", {"alf", "blindi", "skjaldi", "svid", "thjof", "vis", "vitnir"} -- Alf = Elf, Blindi = Blinded, Skjaldi = Shield, Svid = in Counsel, Thjof = Thief, Vis = Knowing, Vitnir = wolf
	},
	--[[
	"race", {
		"name", "elf",
		"display", "Elf",
		"visible",
		"species", "elf",
		"personal_names", {"Aendan", "Amadrieriand", "Amáril", "Amelad", "Ameldor", "Amendel", "Ameng", "Amilmaldur", "Amilmalith", "Amilmandir", "Amind", "Amiol", "Amiorion", "Amithrarion", "Amóldor", "Amorfimir", "Amorfir", "Amowyn", "Amulas", "Amundil", "Anán", "Anebrin", "Anebrir", "Anémbor", "Anénduil", "Anerion", "Anilad", "Anil-Gawyn", "Anilmambor", "Anilmariand", "Anior", "Anithranduil", "Anol", "Anon", "Anorfing", "Anundil", "Asaeri", "Belán", "Belandil", "Belarandel", "Belel", "Belén", "Belil-Gandil", "Belilmand", "Belilmang", "Beliondil", "Beliril", "Belithraldor", "Belithrawyn", "Belólad", "Belómir", "Belondel", "Belyrion", "Cadriembor", "Cadrieriand", "Cálad", "Caladrielas", "Calándel", "Caldur", "Cáldur", "Calebrindel", "Calebrindir", "Calénduil", "Calil-Gandir", "Calil-Gawyn", "Calioriand", "Caliril", "Calónduil", "Caloril", "Cándir", "Canduil", "Caraldur", "Carang", "Célad", "Celadrieriand", "Celang", "Celaral", "Celarandil", "Celáriand", "Celebririon", "Celelas", "Celendel", "Celér", "Celilmalas", "Celiondir", "Celior", "Celiorion", "Celong", "Celór", "Celóril", "Celorion", "Celundir", "Celuwyn", "Celyndel", "Cénduil", "Cindil", "Ciong", "Cithralad", "Cithraldur", "Cithrand", "Cithrandel", "Cithraril", "Col", "Corfil", "Corfildur", "Cówyn", "Crintil", "Cun", "Cundir", "Cylas", "Dain", "Delán", "Delánd", "Delandel", "Delaraldur", "Deláril", "Delawyn", "Deléng", "Delilmaldor", "Deliol", "Delithrar", "Deliwyn", "Delóldor", "Delorfilad", "Delorfilith", "Delorion", "Delundil", "Ealin", "Eäradriendel", "Eäradrier", "Eäránduil", "Eäraralad", "Eärebrindel", "Eäréldor", "Eäreng", "Eärérion", "Eärithrandil", "Eäromir", "Eärorfiriand", "Eäryldur", "Eäryriand", "Egil", "Eladrieng", "Elálith", "Elánd", "Elándil", "Elebrildor", "Elebrindel", "Elebriril", "Elélas", "Elémbor", "Elemir", "Elen", "Elil-Garil", "Elilmaldur", "Eliomir", "Eliondil", "Elolas", "Elólas", "Elor", "Elorfilad", "Elradrien", "Elralith", "Elran", "Elreldur", "Elrilmand", "Elrioldor", "Elriolith", "Elrithralith", "Elrithranduil", "Elrorfir", "Elval", "Elvandir", "Elvaramir", "Elváwyn", "Elvebrind", "Elvebrindel", "Elvélith", "Elvémir", "Elverion", "Elvil-Garion", "Elvilmaldur", "Elvilmaril", "Elvioldur", "Elvombor", "Elvónduil", "Elvorfimir", "Elvorfiriand", "Elvorfiril", "Elvóriand", "Elvund", "Elyldor", "Elyrion", "Eowambor", "Eowanduil", "Eowar", "Eowaraldor", "Eowaran", "Eowarar", "Eowariand", "Eowarion", "Eowebrind", "Eowémir", "Eowil-Garion", "Eowimbor", "Eowiomir", "Eowithrawyn", "Eowóldur", "Eoworfildor", "Eowówyn", "Eowylas", "Erlornas", "Fadriendel", "Fandel", "Farandir", "Fáwyn", "Fendel", "Fer", "Filman", "Fioril", "Fithraril", "Forfilas", "Fyrion", "Gadriendil", "Gadrieng", "Gaelir", "Gaenlar", "Galadrieldor", "Galálad", "Galálas", "Galalith", "Galar", "Galelas", "Galeldur", "Galelith", "Galémbor", "Galithrariand", "Galoldur", "Galtrid", "Galuldur", "Galur", "Galurion", "Gambor", "Gán", "Ganduil", "Garaldor", "Gararil", "Gelad", "Géril", "Gil-Gandel", "Gil-Gang", "Giombor", "Githral", "Githralad", "Gladriendil", "Glal", "Glámbor", "Glandil", "Glarang", "Glararil", "Glildur", "Glilmal", "Glimir", "Glinan", "Glindur", "Glior", "Glólas", "Gloldor", "Glómir", "Glon", "Glul", "Golad", "Gor", "Gumbor", "Gyl", "Gymbor", "Gyn", "Harariand", "Háriand", "Hebril", "Hemir", "Hénduil", "Hilas", "Hil-Garion", "Hilmariand", "Hiong", "Hirion", "Hithrandel", "Horfilad", "Horfindel", "Hundel", "Hymir", "Hyrion", "Hywyn", "Isadrieng", "Isándir", "Isarandel", "Isarar", "Iselas", "Isér", "Isilmandel", "Isirion", "Isithral", "Isól", "Isóndel", "Isóng", "Isorfilad", "Isorfindir", "Isuwyn", "Isyndel", "Kalenz", "Kalnar", "Landar", "Legal", "Legaran", "Legémir", "Legéril", "Legilad", "Legil-Gal", "Legiondel", "Legithralith", "Legorfindil", "Legorfirion", "Legówyn", "Legyl", "Legyn", "Linduilas", "Lómadrieril", "Lómarand", "Lomarfel", "Lómariand", "Lómebrilad", "Lómebrind", "Lómémbor", "Lómilmaril", "Lómiriand", "Lómorfindil", "Lómowyn", "Losnin", "Lyndar", "Madrieril", "Maldur", "Mánduil", "Maraldur", "Mebrin", "Méng", "Mérion", "Miolith", "Miomir", "Mithrand", "Mondir", "Móndir", "Morfilas", "Morfin", "Morfiriand", "Mylith", "Nadrieldor", "Nalith", "Nán", "Nél", "Nil-Galas", "Nil-Galith", "Nil-Gar", "Nilmar", "Nóndel", "Norfildor", "Norfilith", "Norfindil", "Norfindir", "Numbor", "Nyldur", "Padrieriand", "Padrieril", "Pamir", "Paraldor", "Parariand", "Pilmalad", "Pindir", "Pór", "Porfildur", "Pumbor", "Pyldur", "Raesil", "Rebrir", "Réndir", "Rilmandil", "Rithrandil", "Ról", "Róldor", "Roldur", "Róldur", "Rorfilad", "Rorfindil", "Rówyn", "Ryn", "Sadrielas", "Salira", "Sebrin", "Sebriril", "Sénd", "Sil-Gal", "Slagfid", "Sólad", "Sorfind", "Sóriand", "Tadriendir", "Taral", "Taraldur", "Táriand", "Tendel", "Téwyn", "Thradrieriand", "Thrambor", "Thraral", "Threbring", "Thrélad", "Thréldur", "Thril-Gamir", "Thril-Gandir", "Thril-Gar", "Thrilmandel", "Thrimir", "Thrion", "Thrithran", "Throlas", "Thrón", "Thróng", "Thrund", "Thryriand", "Til-Gan", "Tilmalad", "Tilmalas", "Tinandir", "Tinarambor", "Tinarariand", "Tinén", "Tinil-Ganduil", "Tinilmand", "Tinilmawyn", "Tinimir", "Tinindil", "Tinithrar", "Tinoldor", "Tinond", "Tinorfind", "Tinorfiriand", "Tinóriand", "Tinowyn", "Tinun", "Tinyl", "Tion", "Tolas", "Torfildur", "Tówyn", "Tylad", "Unadrieldor", "Unadrier", "Unál", "Unalas", "Unálas", "Unaraldur", "Unaril", "Unárion", "Unebrin", "Unebrind", "Uneldor", "Unil", "Unil-Gan", "Uniolith", "Unioril", "Unólith", "Unombor", "Unóndel", "Unondir", "Unorfildor", "Unorfiril", "Unorfiwyn", "Unulad", "Uradredia", "Uradrielas", "Uradrierion", "Urálas", "Urálith", "Urambor", "Urér", "Uril-Gambor", "Urilmalith", "Uróldor", "Urorfildor", "Urul", "Urymir", "Válad", "Ván", "Vándel", "Vandir", "Varalas", "Vararion", "Vebril", "Vebrilas", "Vebrinduil", "Vel", "Velon", "Vilith", "Vol", "Vólas", "Vóldur", "Volund", "Vondel", "Vorfin", "Vorfindil", "Vulas", "Vuldur", "Vunduil", "Vylas", "Vyldor"},
		"playable", false
	},
	--]]
	"race", {
		"name", "germanic",
		"display", "Germanic",
		"visible",
		"species", "human",
		"personal_names", {"Godagaz", "Wagigaz", "Wiwaz"}, -- Godagaz = Goody / Good One, Hagustaldaz = Young Warrior / Owner of a Small Property, Hadulaikaz = Battle-Dancer, Hlewagastiz = Protected / Glory-Guest, Holtagastiz = Wood Guest, Wagigaz = One Who Moves Along Impetuously, Wiwaz = Darter; Godagaz, Hadulaikaz, Hagustaldaz, Hlewagastiz, Holtagastiz, Wagigaz, Wiwaz and Woduridaz are Proto-Norse (or late Proto-Germanic)
		"personal_name_prefixes", {"Hadu", "Hagu", "Hlewa", "Holta", "Theuda", "Wodu"}, -- Hadu = Battle, Hagu = Small Property, Hlewa = Glory, Holta = Wood, Theuda = People, Wodu = Fury
		"personal_name_suffixes", {"gastiz", "laikaz", "ridaz", "riks", "staldaz"} -- Gastiz = Guest, Laikaz = Dancer, Riks = Ruler, Ridaz = Rider, Staldaz = Owner
	},
	"race", {
		"name", "gnome",
		"display", "Gnome",
		"visible",
		"species", "gnome",
		"parent-civilization", "dwarf",
		"personal_names", {"Bimbam", "Clavo", "Cravatu", "Kalutho", "Pypo", "Rubezahl"},
		"playable", false
	},
	"race", {
		"name", "goblin",
		"display", "Goblin",
		"visible",
		"species", "goblin",
		"personal_names", {"Dran", "Erdog", "Fal Khag", "Gashnok", "Gatrakh", "Gorokh", "Greebo", "Grogor-Tuk", "Hrugt", "Kardur", "Kartrog", "Krung", "Odrun", "Orhtib", "Ozdul", "Panok", "Pruol", "Sbrak", "Sdrul", "Thurg", "T'shar Lggi", "Uhmit", "Urdum", "Utrub", "Vrag", "Vrunt", "Zhuk", "Zuzerd"},
		"personal_name_prefixes", {"Gom", "Grash", "Grut", "Gum", "Kar", "Kret", "Krom", "Stug"}, -- from Mike Anderson's Tyrant
		"personal_name_suffixes", {"bag", "dag", "lig", "lug", "nak", "nark", "rat", "tug"}, -- from Mike Anderson's Tyrant
		"playable", false
	},
	"race", {
		"name", "greek",
		"display", "Greek",
		"visible",
		"species", "human",
		"parent-civilization", "germanic",
		"playable", false
	},
	"race", {
		"name", "kobold",
		"display", "Kobold",
		"visible",
		"species", "kobold",
		"personal_name_prefixes", {"Hod", "Hoid", "Napf", "Pump"},
		"personal_name_suffixes", {"coat", "eke", "ike", "hut"}, -- Hut = Hat
		"parent-civilization", "goblin",
		"playable", false
		 -- Sources for Kobold names: Hodeke (Jacob Grimm, "Deutsche Mythologie", pp. 392, 1049, 1080), Hoidike (Jacob Grimm, "Deutsche Mythologie", p. 392), Napfhans (Jacob Grimm, "Deutsche Mythologie", p. 393), Pumphut (Jacob Grimm, "Deutsche Mythologie", p. 1049), Shellycoat (Jacob Grimm, "Deutsche Mythologie", p. 394)
	},
	"race", {
		"name", "latin",
		"display", "Latin",
		"visible",
		"species", "human",
		"parent-civilization", "germanic",
		"playable", false
	},
	"race", {
		"name", "neutral",
		"display", "Neutral"
	}
)

-- Cyclops names: Arges ("Vivid"), Brontes ("Thunderer"), Polyphemus (name means "many-voiced"), Steropes ("Lightner"), Tepegoz (an ogre with a single eye from Turkic mythology; apparently derived from the Greek Polyphemus myth; Tepe means "top, crown of the head" and Göz means "eye"), Depeghoz (Depêghöz, same as Tepegoz, given by Jacob Grimm in Teutonic Mythology, p. 424)

-- Goat names (for the Yale): Aegipan (figure from Greek mythology which is represented by the constellation Capricorn; name means "Goat-Pan" or "Goat-All"), Amaltheia (female goat from Greek mythology who fed child Zeus), Heidrun (female goat from Norse mythology)

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
		"name", "Menapii Tribe",
		"type", "tribe",
		"color", "orange",
		"secondary_color", "orange"
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
	}
)

DefineCivilizationFactions("dwarf",
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
--		"secondary_color", "blue"
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
		"secondary_color", "white"
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
		"secondary_color", "red"
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
		"secondary_color", "red"
	},
	"faction", {
		"name", "Rugian Tribe",
		"type", "tribe",
		"color", "red", -- change to a better one?
		"secondary_color", "orange"
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
		"secondary_color", "yellow"
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
		"secondary_color", "blue"
	},
	"faction", {
		"name", "Visigoth Tribe",
		"type", "tribe",
		"color", "pink",
		"secondary_color", "pink"
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
		"secondary_color", "brown"
	},
	"faction", {
		"name", "Denmark",
		"type", "polity",
		"color", "red",
		"secondary_color", "white"
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
		"secondary_color", "red"
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
		"secondary_color", "yellow"
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
	-- Non-Playable Tribes
	"faction", {
		"name", "Gylfing Tribe",
		"type", "tribe",
		"color", "green",
		"secondary_color", "teal",
		"playable", false
	},
	"faction", {
		"name", "Vana Tribe",
		"type", "tribe",
		"color", "blue",
		"secondary_color", "cyan",
		"playable", false
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
