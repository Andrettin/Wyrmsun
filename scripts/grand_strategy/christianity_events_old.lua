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

local ChristianityEvents = {
	PalladiusFailure = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §14.
		Name = "Palladius' Failure",
		Description = "The bishop of Ireland Palladius, faced with great difficulties, has desisted from his mission of promoting Christianity there. He left with his assistants for the northern parts of Great Britain, where his days ended.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Leinster") == EventFaction.Name
				and SyncRand(100) < 80
				and GetGrandStrategyEventTriggered("Palladius, Bishop of Ireland")
			) then
				EventProvince = WorldMapProvinces.Leinster
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", -1)
				GrandStrategyEvents.PalladiusTheApostleOfIreland = nil
			end
		},
		OptionTooltips = {"-1 Prestige"}
	},
	PalladiusTheApostleOfIreland = { -- ahistorical success of Palladius in converting the Irish
		Name = "Palladius, the Apostle of Ireland",
		Description = "Palladius has succeeded in converting the people of Ireland to the Christian faith!",
		Conditions = function(s)
			if (
				GetProvinceOwner("Leinster") == EventFaction.Name
				and SyncRand(100) < 20
				and GetGrandStrategyEventTriggered("Palladius, Bishop of Ireland")
			) then
				EventProvince = WorldMapProvinces.Leinster
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
				GrandStrategyEvents.PalladiusFailure = nil
				GrandStrategyEvents.PatrickTheApostleOfIreland = nil
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	PatrickTheApostleOfIreland = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §14.
		Name = "Patrick, the Apostle of Ireland",
		Description = "Patrick, the son of a deacon and grandson of a priest, was brought to Ireland as a slave when young, where he worked for six years as a shepherd. Having ran away from Ireland, he later had a dream instigating him to come back to the island and help propagate the Christian faith there. After his return to Ireland, Patrick personally baptized many thousands, successfully gaining the island for Christianity. \"The Irish\", he said, \"who never had the knowledge of God and worshiped only idols and unclean things, have lately become the people of the Lord\".",
		Conditions = function(s)
			if (
				GetProvinceOwner("Leinster") == EventFaction.Name
				and GetProvinceCivilization("Leinster") == "celt"
			) then
				EventProvince = WorldMapProvinces.Leinster
				return true
			else
				return false
			end
		end,
		MinYear = 440,
		MaxYear = 493,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 10) -- major development for Ireland, founding a monastic tradition that would have impact in much of Europe
			end
		},
		OptionTooltips = {"+10 Prestige"}
	},
	SPatriciiCanticumScotticum = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §15.
		Name = "S. Patricii Canticum Scotticum",
		Description = "Patrick wrote a hymn called S. Patricii Canticum Scotticum just before he converted the main chieftain of Ireland. The hymn contained a prayer invoking help for such an important task, and contained the major Christian doctrines, along with a warning against spells done by old women and smiths who abided by the pagan traditions.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Leinster") == EventFaction.Name
				and SyncRand(100) < 10 -- should take a bit until Patrick writes this hymn, as his mission began in 440 and ended only in 493
			) then
				EventProvince = WorldMapProvinces.Leinster
				return true
			else
				return false
			end
		end,
		RequiredEvents = {
			PatrickTheApostleOfIreland = true
		},
		MaxYear = 493,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	ColumbaMissionaryToScotland = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §15.
		Name = "Columba, Missionary to Scotland",
		Description = "The Irish missionary Columba has arrived with twelve companions in the settlement of Hy in Scotland to spread the Christian faith.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Lothian") == EventFaction.Name -- I couldn't find where Hy is, so is this correct?
				and GetProvinceCivilization("Leinster") == "celt"
			) then
				EventProvince = WorldMapProvinces.Lothian
				return true
			else
				return false
			end
		end,
		MinYear = 563,
		MaxYear = 563,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	MohonnaMissionaryToThePicts = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §15.
		Name = "Mohonna, Missionary to the Picts",
		Description = "The missionary Mohonna has been sent by Columba to christianize the Picts.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Highland Scotland") == EventFaction.Name
				and GetProvinceCivilization("Highland Scotland") == "celt" -- there must be Picts in Highland Scotland for this event to fire
				and GetProvinceCivilization("Leinster") == "celt"
			) then
				EventProvince = WorldMapProvinces.HighlandScotland
				return true
			else
				return false
			end
		end,
		RequiredEvents = {
			ColumbaMissionaryToScotland = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	TheMissionOfAugustine = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §10.
		Name = "The Mission of Augustine",
		Description = "The Pope has sent the Benedictine abbot Augustine on a mission to propagate Christianity in England. He has arrived with thirty other monks, along with a priest called Laurentius and some translators. Augustine carried, besides papal instructions, letters of recommendation and a few books.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Essex") == EventFaction.Name
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 596,
		MaxYear = 604, -- when Augustine died
		Options = {"~!Welcome him warmly", "Pay him no ~!heed"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
				GrandStrategyEvent(EventFaction, GrandStrategyEvents.AugustineArchbishopOfEngland)
			end,
			function(s)
--				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige", ""}
	},
	AugustineArchbishopOfEngland = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §10.
		Name = "Augustine, Archbishop of England",
		Description = "With our friendship, Augustine was able to perform his work with much efficaciousness. As a result of his successes, he has been ordained archbishop of England.",
		TriggeredOnly = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	TheChurchAtCanterbury = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §10.
		Name = "The Church at Canterbury",
		Description = "Archbishop Augustine has built a church at Canterbury, which shall be the center of the Christian faith in England.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Kent") == EventFaction.Name
				and ProvinceHasBuildingClass("Kent", "temple")
			) then
				return true
			else
				return false
			end
		end,
		RequiredEvents = {
			AugustineArchbishopOfEngland = true
		},
		MaxYear = 604, -- when Augustine died
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	TheConferenceAtAugustinesOak = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §11.
		Name = "The Conference at Augustine's Oak",
		Description = "Augustine, the archbishop of Canterbury, has arranged with our king's aid a conference with the Briton bishops. The meeting took place in PROVINCE_NAME, near the banks of the Severn under an oak. Augustine sought to make them give up their local religious traditions and accept the customs practiced in Rome, which they resisted. The Briton bishops said they needed the approval of their people to give up the old traditions, and asked for a second, larger conference to be held later.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Sussex") == EventFaction.Name
			) then
				EventProvince = WorldMapProvinces.Sussex
				return true
			else
				return false
			end
		end,
		RequiredEvents = {
			AugustineArchbishopOfEngland = true,
			TheChurchAtCanterbury = true -- to make this event happen a bit later
		},
		MaxYear = 604, -- when Augustine died
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", -1)
			end
		},
		OptionTooltips = {"-1 Prestige"}
	},
	AugustinesSecondConference = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §11.
		Name = "Augustine's Second Conference",
		Description = "The Briton bishops have met archbishop Augustine in a second conference, having brought with them several scholars from the Convent of Bangor. The bishops had been advised by a venerated hermit to accept Augustine's propositions only if he stood up to talk to them, instead of speaking to them with arrogance from his seat. Augustine remained seated. He demanded that they accept Roman customs and help him in the conversion of England. The bishops refused Augustine, who then predicted that they would suffer divine punishment through the Anglo-Saxons.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Sussex") == EventFaction.Name
			) then
				return true
			else
				return false
			end
		end,
		RequiredEvents = {
			TheConferenceAtAugustinesOak = true
		},
		MaxYear = 604, -- when Augustine died
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", -1)
			end
		},
		OptionTooltips = {"-1 Prestige"}
	},
	MellitusConsecratedBishopOfLondon = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §10.
		Name = "Mellitus Ordained Bishop of PROVINCE_SETTLEMENT_NAME",
		Description = "Mellitus, a priest sent by the Pope to England, has been consecrated bishop of PROVINCE_SETTLEMENT_NAME.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Essex") == EventFaction.Name
			) then
				EventProvince = WorldMapProvinces.Essex
				return true
			else
				return false
			end
		end,
		MinYear = 604,
		MaxYear = 604,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	JustusConsecratedBishopOfRochester = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §10.
		Name = "Justus Ordained Bishop of Rochester",
		Description = "Justus, a priest sent by the Pope to PROVINCE_NAME, has been consecrated bishop of Rochester.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Kent") == EventFaction.Name
			) then
				EventProvince = WorldMapProvinces.Kent
				return true
			else
				return false
			end
		end,
		MinYear = 604,
		MaxYear = 604,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	ColumbanusMissionaryToFrance = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §15.
		Name = "Columbanus, Missionary to France",
		Description = "The Irish missionary Columbanus has arrived with twelve companions in France to spread the Christian faith.",
		Conditions = function(s)
			if (
				GetProvinceOwner("France") == EventFaction.Name
				and GetProvinceCivilization("Leinster") == "celt"
			) then
				EventProvince = WorldMapProvinces.France
				return true
			else
				return false
			end
		end,
		MinYear = 612,
		MaxYear = 612,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	PaulinusAppointedArchbishopOfYork = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §10.
		Name = "Paulinus Appointed Archbishop of PROVINCE_NAME",
		Description = "Paulinus, who had been sent by the Pope to England to aid in the promotion of Christianity there, has been appointed the archbishop of PROVINCE_NAME.",
		Conditions = function(s)
			if (
				GetProvinceOwner("York") == EventFaction.Name
			) then
				EventProvince = WorldMapProvinces.York
				return true
			else
				return false
			end
		end,
		MinYear = 625,
		MaxYear = 625,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	KilianMissionaryToFranconia = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §15.
		Name = "Kilian, Missionary to PROVINCE_NAME",
		Description = "The Irish missionary Kilian has arrived with twelve companions in PROVINCE_NAME to spread the Christian faith.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Franconia") == EventFaction.Name
				and (GetProvinceCivilization("Franconia") == "germanic" or GetProvinceCivilization("Franconia") == "frankish") -- Franconia wouldn't have that name if it isn't germanic-culture (since it receives its name from the Franks, a germanic tribe)
				and GetProvinceCivilization("Leinster") == "celt"
			) then
				EventProvince = WorldMapProvinces.Franconia
				return true
			else
				return false
			end
		end,
		MinYear = 680,
		MaxYear = 680,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	EloquiusMissionaryToBelgium = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §15.
		Name = "Eloquius, Missionary to PROVINCE_NAME",
		Description = "The Irish missionary Eloquius has arrived with twelve companions in PROVINCE_NAME to spread the Christian faith.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Belgium") == EventFaction.Name
				and GetProvinceCivilization("Leinster") == "celt"
			) then
				EventProvince = WorldMapProvinces.Belgium
				return true
			else
				return false
			end
		end,
		MinYear = 680,
		MaxYear = 680,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	WillibrordMissionaryToFriesland = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §15.
		Name = "Willibrord, Missionary to PROVINCE_NAME",
		Description = "The missionary Willibrord, who studied for twelve years in Ireland, has arrived with twelve companions in PROVINCE_NAME to spread the Christian faith.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Friesland") == EventFaction.Name
			) then
				EventProvince = WorldMapProvinces.Friesland
				return true
			else
				return false
			end
		end,
		MinYear = 692,
		MaxYear = 692,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	RupertMissionaryToBavaria = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §15.
		Name = "Rupert, Missionary to PROVINCE_NAME",
		Description = "The Irish missionary Rupert has arrived with twelve companions in PROVINCE_NAME to spread the Christian faith.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Bavaria") == EventFaction.Name
				and GetProvinceCivilization("Leinster") == "celt"
			) then
				EventProvince = WorldMapProvinces.Bavaria
				return true
			else
				return false
			end
		end,
		MinYear = 700,
		MaxYear = 700,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	LiafwinFoundsOratory = { -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 320.
		Name = "Liafwin Founds Oratory",
		Description = "After journeying from Utrecht to the Ijssel river, the Anglo-Saxon missionary Liafwin has founded an oratory on its left bank.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Overijssel") == EventFaction.Name
				and GetProvinceCivilization("Essex") == "anglo-saxon" -- Liafwin's province of origin has to be the same culture as he historically was; Essex set because he was from England and this is the province where London lays
			) then
				EventProvince = WorldMapProvinces.Overijssel
				return true
			else
				return false
			end
		end,
		MinYear = 765,
		MaxYear = 765,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	FerdomnachLearnedMonkOfArmagh = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §15.
		Name = "Ferdomnach, Learned Monk of Armagh",
		Description = "Ferdomnach was a learned monk belonging to the monastery of Armagh, who worked as a scribe and compiled many of the religious works extant at the time.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Leinster") == EventFaction.Name -- correct?
				and GetProvinceCivilization("Leinster") == "celt"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 807,
		MaxYear = 807,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	TheBookOfArmagh = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §15.
		Name = "The Book of Armagh",
		Description = "The Book of Armargh was a compilation of a number of religious texts, written by the learned monk Ferdomnach. The book included the memoirs of St. Patrick, the Confession of St. Patrick, the Preface of Jerome to the New Testament, and many other texts.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Leinster") == EventFaction.Name
			) then
				return true
			else
				return false
			end
		end,
		RequiredEvents = {
			FerdomnachLearnedMonkOfArmagh = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	ChurchOfUtrechtGrantCharter = { -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 321.
		Name = "Church of Utrecht Grant Charter", -- this happened in 834 AD
		Description = "A charter has been enacted granting the church of Utrecht estates in the Arnhem region.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Holland") == EventFaction.Name
				and GetProvinceCivilization("Holland") == "teuton"
				and ProvinceHasBuildingClass(WorldMapProvinces.Holland.Name, "temple")
				and SyncRand(100) < 5
				-- should add some check for Christianity being present
			) then
				EventProvince = WorldMapProvinces.Holland
				return true
			else
				return false
			end
		end,
		FactionType = "polity",
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", -100)
			end
		},
		OptionTooltips = {"+1 Prestige\n-100 Copper"}
	},
	VitaSanctiLebuiniAntiqua = { -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 320.
		Name = "Vita sancti Lebuini antiqua",
		Description = "The work \"Vita sancti Lebuini antiqua\" described the life of Liafwin (Lebuin), an Anglo-Saxon missionary who made extensive efforts to convert the Saxons, penetrating deep into their country, even undertaking as risky an act as appearing in the annual assembly of the pagan Saxons to spread his faith.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Hanover") == EventFaction.Name
				and GetProvinceCivilization("Hanover") == "teuton"
			) then
				EventProvince = WorldMapProvinces.Hanover
				return true
			else
				return false
			end
		end,
		RequiredEvents = {
			LiafwinFoundsOratory = true -- proxy for Liafwin having existed
		},
		MinYear = 849,
		MaxYear = 849,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	ForannanMissionaryToTheFrontierOfBelgium = { -- Source: Philip Schaff, "History of the Christian Church", 1997, §15.
		Name = "Forannan, Missionary to the Frontier of PROVINCE_NAME",
		Description = "The Irish missionary Forannan has arrived with twelve companions in the frontier of PROVINCE_NAME to spread the Christian faith.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Belgium") == EventFaction.Name
				and GetProvinceCivilization("Leinster") == "celt"
			) then
				EventProvince = WorldMapProvinces.Belgium
				return true
			else
				return false
			end
		end,
		MinYear = 970,
		MaxYear = 970,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	}
}
	
AddEventTable(ChristianityEvents)
