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
--      (c) Copyright 2015-2019 by Andrettin
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

local GermanicEvents = {
	TrorInheritsHisWeapons = {
		Name = "Tror Inherits His Weapons",
		Description = "The young Tror, son of the fair lady Troan, came to these lands ten years ago in exile from the devastated realm of his family. Our chieftain Lorikus took him as a foster-child. Today, the fair-haired Tror - despite his youth - has claimed his father's weapons for himself.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and EventFaction.Name == "asa-tribe"
				and GetFactionMinister("germanic", "asa-tribe", "head-of-state") == "Lorikus"
--				and FactionHasHero("germanic", "asa-tribe", "Tror")
				and GrandStrategyHeroIsAlive("Tror")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -2990,
		Options = {"A ~!brave boy!"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	LorikusDemise = {
		Name = "Lorikus' Demise",
		Description = "The handsome young Tror has grown to his full measure of strength. Conscious of his might and discontent with his fate as a subject of Lorikus' family, the ambitious Tror has slain the chieftain, taking his place!",
		RequiredEvents = {
			TrorInheritsHisWeapons = true
		},
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and EventFaction.Name == "asa-tribe"
				and GetFactionMinister("germanic", "asa-tribe", "head-of-state") == "Lorikus"
--				and FactionHasHero("germanic", "asa-tribe", "Tror")
				and GrandStrategyHeroIsAlive("Tror")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -2988,
		Options = {"What will the ~!future hold?"},
		OptionEffects = {
			function(s)
				Event(
					"Tror",
					"My grandfather was a king beyond these lands... And though my family has been disgraced, we were born to rule!",
					"asa-tribe",
					{"~!OK"},
					{function(s)
						SetFactionMinister("germanic", "asa-tribe", "head-of-state", "Tror")
						KillGrandStrategyHero("Lorikus")
					end}
				)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 3)
			end
		},
		OptionTooltips = {"+3 Prestige\nChieftain Lorikus dies\nTror becomes our chieftain"}
	},
	DagChieftainOfTheGoths = { -- Dag is the first legendary king of Gotaland; Source: http://www.oe.eclipse.co.uk/nom/Sturlaug.htm
		Name = "Dag, Chieftain of the Goths",
		Description = "The notable Dag has been declared our chieftain.",
		Conditions = function(s)
			if (
				EventFaction.Name == "goth-tribe"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -325, -- Goths first attested
		MaxYear = -325 + 30, -- estimated
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	DivisionOfDomains = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Division of Domains",
		Description = "After erecting a large temple in Sigtun, where rituals were performed in accordance to the customs of our people, domains were distributed to the temple priests, with them receiving good estates.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and (EventFaction.Name == "asa-tribe" or EventFaction.Name == "yngling-tribe")
				and GetProvinceOwner("Sweden") == EventFaction.Name
				and GetProvinceSettlementBuilding(WorldMapProvinces.Sweden.Name, "unit-germanic-town-hall") -- Hall of Sigtun
				-- should require a temple having been built? when those are implemented in the game
				and SyncRand(100) < 25
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 3) -- promotion of the educated priest class
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", -300) -- cost of the land grant
			end
		},
		OptionTooltips = {"-300 Copper\n+3 Prestige"}
	},
	AsaLawgiving = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Asa Lawgiving",
		Description = "We have established the same law in this new land as that had been in force in Ansulanda. Thus it is determined that dead men of consequence shall be buried in a mound raised to their memory, and all other warriors who had been distinguished for their manhood a standing stone shall be erected. Over all the land a tax shall be paid to the tribe's high chieftain, who has to defend the country from enemy or disturbance, and to pay the expense for the feasts commemorating a good year.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and (EventFaction.Name == "asa-tribe" or EventFaction.Name == "yngling-tribe")
				and GetProvinceOwner("Sweden") == EventFaction.Name
				and GetProvinceSettlementBuilding(WorldMapProvinces.Sweden.Name, "unit-germanic-town-hall") -- a town hall is needed, since without basic political organization there can be no lawgiving
				and SyncRand(100) < 25
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 500) -- tax gains
			end
		},
		OptionTooltips = {"+500 Copper"}
	},
	SkeldusDomain = { -- Source: Snorri Sturlson, "The Prose Edda", 1916, p. 8.
		Name = "Skeldu's Domain",
		Description = "Our chieftain Voden has granted our newly-conquered lands to the south to his younger son, Skeldu.",
		Conditions = function(s)
			if (
				EventFaction.Name == "asa-tribe"
				and (GetProvinceOwner("Zealand") == EventFaction.Name or GetProvinceOwner("Jutland") == EventFaction.Name)
				and GetFactionMinister(EventFaction.Civilization, EventFaction.Name, "head-of-state") == "Voden"
				and GrandStrategyHeroIsAlive("Skeldu")
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK", "Play as ~!Skeldu"},
		OptionEffects = {
			function(s)
				if (GetProvinceOwner("Jutland") == EventFaction.Name) then
					AcquireProvince(WorldMapProvinces.Jutland, "skeldung-tribe")
					RemoveProvinceClaim("Jutland", EventFaction.Civilization, EventFaction.Name)
					AddProvinceClaim("Jutland", "germanic", "skeldung-tribe")
				end
				if (GetProvinceOwner("Zealand") == EventFaction.Name) then
					AcquireProvince(WorldMapProvinces.Zealand, "skeldung-tribe")
					RemoveProvinceClaim("Zealand", EventFaction.Civilization, EventFaction.Name)
					AddProvinceClaim("Zealand", "germanic", "skeldung-tribe")
				end
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "germanic", "skeldung-tribe")
				SetFactionMinister("germanic", "skeldung-tribe", "head-of-state", "Skeldu")
			end,
			function(s)
				if (GetProvinceOwner("Jutland") == EventFaction.Name) then
					AcquireProvince(WorldMapProvinces.Jutland, "skeldung-tribe")
					RemoveProvinceClaim("Jutland", EventFaction.Civilization, EventFaction.Name)
					AddProvinceClaim("Jutland", "germanic", "skeldung-tribe")
				end
				if (GetProvinceOwner("Zealand") == EventFaction.Name) then
					AcquireProvince(WorldMapProvinces.Zealand, "skeldung-tribe")
					RemoveProvinceClaim("Zealand", EventFaction.Civilization, EventFaction.Name)
					AddProvinceClaim("Zealand", "germanic", "skeldung-tribe")
				end
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, "germanic", "skeldung-tribe")
				SetFactionMinister("germanic", "skeldung-tribe", "head-of-state", "Skeldu")
				GrandStrategyFaction = Factions.skeldung_tribe
				SetPlayerFaction("germanic", "skeldung-tribe")
			end
		},
		OptionTooltips = {"Skeldung Tribe acquires our lands beyond the sea", "Skeldung Tribe acquires our lands beyond the sea, play as the Skeldung Tribe"}
	},
	YngveChieftainOfTheSwedes = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Yngve, Chieftain",
		Description = "Yngve has become our new chieftain, founding a new dynasty, the Ynglings. He managed to establish order in our lands, and was blessed with good seasons. Due to the good seasons and the reigning peace, our people have become prosperous as never before. Preferring Upsal to Sigtun, Yngve moved his capital there, where he built a great temple, and spent many resources in embellishing the town. Our chieftain's wife is Gerd, daughter of Gymis.",
		Conditions = function(s)
			if (
				EventFaction.Name == "asa-tribe"
				and GetProvinceOwner("Sweden") == EventFaction.Name
				and GetFactionMinister(EventFaction.Civilization, EventFaction.Name, "head-of-state") == "Yngve"
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 250)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
				FormFactionLua(EventFaction, Factions.yngling_tribe)
			end
		},
		OptionTooltips = {"Form the Yngling Tribe\n+250 Copper\n+1 Prestige"}
	},
	TheCurvedSwords = { -- Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-roerby-swords/
		Name = "The Curved Swords",
		Description = "One of our artisans has crafted two curved bronze swords, one of which he engraved with the image of a ship. Although they aren't very practical for combat, these swords serve to embellish ceremonies and bring prestige to their bearer.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Jutland") == EventFaction.Name
				and GetProvinceCivilization("Jutland") == "germanic"
				and GetProvinceSettlementBuilding(WorldMapProvinces.Jutland.Name, "unit-germanic-smithy") -- Jutland must have a smithy
				and SyncRand(100) < 1
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!Marvelous!"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	TheSunChariot = { -- Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-sun-chariot/
		Name = "The Sun Chariot",
		Description = "One of our artisans has made a delicate bronze figure of a sun chariot, representing the divine horse that carries the sun on its eternal journey across the sky.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Jutland") == EventFaction.Name
				and GetProvinceCivilization("Jutland") == "germanic"
				and GetProvinceSettlementBuilding(WorldMapProvinces.Jutland.Name, "unit-germanic-smithy") -- Jutland must have a smithy
				and SyncRand(100) < 1
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!Inspiring!"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	NoblemansBurial = { -- the man from Muldbjerg; Source: http://natmus.dk/en/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/men-and-woman-in-the-bronze-age/the-man-from-muldbjerg/
		Name = "Nobleman's Burial",
		Description = "In 1365 BC, a nobleman was buried in the northwestern parts of the Jutland peninsula. Dressed in wool, he was laid down with his bronze sword in an oak coffin, which was then placed in a mound.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Jutland") == EventFaction.Name
				and GetProvinceCivilization("Jutland") == "germanic"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -1365,
		MaxYear = -1365,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	TheSunShields = { -- Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-bronze-age-shields/
		Name = "The Sun Shields",
		Description = "Our artisans have learned the craft of making circular bronze shields from the Celtic peoples to our south. These shields are often made to symbolize the sun and the cycle of the seasons.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Jutland") == EventFaction.Name
				and GetProvinceCivilization("Jutland") == "germanic"
				and GetProvinceSettlementBuilding(WorldMapProvinces.Jutland.Name, "unit-germanic-smithy") -- Jutland must have a smithy
				and GetFactionTechnology(EventFaction.Civilization, EventFaction.Name, "upgrade-germanic-bronze-shield")
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!Marvelous!"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	--[[
	BeldegsLands = { -- Beldeg (Baldr), the first legendary ruler of Westphalia (in the sagas he became ruler of Westphalia even before the conquest of Scandinavia, but here we make him later, belonging to the time of the germanic expansion to Westphalia); Source: "The Prose Edda", Snorri Sturlson, 1916, pp. 7-8.
		Name = "Beldeg's Lands",
		Description = "The territory of Westphalia has been entrusted to the warrior known by the name of Beldeg.",
		Conditions = function(s)
			if (
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "teuton")
				and GetProvinceOwner("Westphalia") == EventFaction.Name
				and ProvinceHasBuildingClass(WorldMapProvinces.Westphalia.Name, "town-hall")
				and GetFactionMilitaryScore(EventFaction) > 250 -- basic infantry x 5
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK", "This means ~!war!", "Play as ~!Beldeg"},
		OptionEffects = {
			function(s)
				AcquireProvince(WorldMapProvinces.Westphalia, "saxon-tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.saxon_tribe.Civilization, "saxon-tribe")
				SetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior", 1) -- if Westphalia has been conquered, reduce the quantity of warriors in Brandenburg too, so that a tribe won't lose too many warriors when expanding to it
			end,
			function(s)
				AcquireProvince(WorldMapProvinces.Westphalia, "saxon-tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.saxon_tribe.Civilization, "saxon-tribe")
				SetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior", 1) -- if Westphalia has been conquered, reduce the quantity of warriors in Brandenburg too, so that a tribe won't lose too many warriors when expanding to it
				SetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, Factions.saxon_tribe.Civilization, "saxon-tribe", "war")
			end,
			function(s)
				AcquireProvince(WorldMapProvinces.Westphalia, "saxon-tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.saxon_tribe.Civilization, "saxon-tribe")
				GrandStrategyFaction = Factions.saxon_tribe
				SetPlayerFaction(Factions.saxon_tribe.Civilization, "saxon-tribe")
				SetProvinceUnitQuantity("Brandenburg", "unit-germanic-warrior", 1) -- if Westphalia has been conquered, reduce the quantity of warriors in Brandenburg too, so that a tribe won't lose too many warriors when expanding to it
			end
		}
	},
	SigisLands = { -- Sigi, the first legendary ruler of "Frankland" (in the sagas he became ruler of Frankland even before the conquest of Scandinavia, but here we make him later, belonging to the time of the germanic expansion to Frankland); Source: "The Prose Edda", Snorri Sturlson, 1916, p. 8.
		Name = "Sigi's Lands",
		Description = "The territory of Frankland has been entrusted to the warrior known as Sigi.",
		Conditions = function(s)
			if (
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "teuton")
				and GetProvinceOwner("Holland") == EventFaction.Name -- the Netherlands were the Franks' homelands
				and ProvinceHasBuildingClass(WorldMapProvinces.Holland.Name, "town-hall")
				and GetFactionMilitaryScore(EventFaction) > 250 -- basic infantry x 5 -- don't fire this event before the parts of the faction have enough means to defend themselves from invasion by the Danes
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK", "This means ~!war!", "Play as ~!Sigi"},
		OptionEffects = {
			function(s)
				AcquireProvince(WorldMapProvinces.Holland, "frank-tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.frank_tribe.Civilization, "frank-tribe")
			end,
			function(s)
				AcquireProvince(WorldMapProvinces.Holland, "frank-tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.frank_tribe.Civilization, "frank-tribe")
				SetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, Factions.frank_tribe.Civilization, "frank-tribe", "war")
			end,
			function(s)
				AcquireProvince(WorldMapProvinces.Holland, "frank-tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.frank_tribe.Civilization, "frank-tribe")
				GrandStrategyFaction = Factions.frank_tribe
				SetPlayerFaction(Factions.frank_tribe.Civilization, "frank-tribe")
			end
		}
	},
	VegdegsKingdom = { -- Vegdeg, the first legendary ruler of "East Saxland" (in the sagas he became ruler of East Saxland even before the conquest of Scandinavia, but here we make him later, belonging to the time of the germanic expansion to East Germany); Source: "The Prose Edda", Snorri Sturlson, 1916, p. 7.
		Name = "Vegdeg's Kingdom",
		Description = "The lands to the southeast of the Jutland peninsula have been entrusted to the mighty Vegdeg, who has established himself as king there.",
		Conditions = function(s)
			if (
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "teuton")
				and GetProvinceOwner("Brandenburg") == EventFaction.Name -- Brandenburg was the Suebi's homelands
				and ProvinceHasBuildingClass(WorldMapProvinces.Brandenburg.Name, "town-hall")
				and GetFactionMilitaryScore(EventFaction) > 250 -- basic infantry x 5 -- don't fire this event before the parts of the faction have enough means to defend themselves from invasion by the Danes
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK", "This means ~!war!", "Play as ~!Vegdeg"},
		OptionEffects = {
			function(s)
				AcquireProvince(WorldMapProvinces.Brandenburg, "suebi-tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.suebi_tribe.Civilization, "suebi-tribe")
			end,
			function(s)
				AcquireProvince(WorldMapProvinces.Brandenburg, "suebi-tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.suebi_tribe.Civilization, "suebi-tribe")
				SetFactionDiplomacyState(EventFaction.Civilization, EventFaction.Name, Factions.suebi_tribe.Civilization, "suebi-tribe", "war")
			end,
			function(s)
				AcquireProvince(WorldMapProvinces.Brandenburg, "suebi-tribe")
				AcquireFactionTechnologies(EventFaction.Civilization, EventFaction.Name, Factions.suebi_tribe.Civilization, "suebi-tribe")
				GrandStrategyFaction = Factions.suebi_tribe
				SetPlayerFaction(Factions.suebi_tribe.Civilization, "suebi-tribe")
			end
		}
	},
	--]]
	PytheasVoyageGoths = { -- Source: Carl Waldman and Catherine Mason, "Encyclopedia of European Peoples", 2006, p. 350; Source: Pliny the Elder, "The Natural History", 37.11.
		Name = "Pytheas' Voyage",
		Description = "A Greek scholar and explorer, Pytheas, arrived in our shores. He seemed interested in the island which is a day's sail away from us, due to the amber thrown upon its coast by waves in the spring. He also asked about our use of the material for fuel, and soon went back to the seas to continue his voyage.",
		Conditions = function(s)
			if (
				(EventFaction.Civilization == "germanic" or EventFaction.Civilization == "goth" or EventFaction.Civilization == "norse" or EventFaction.Civilization == "teuton")
				and GetProvinceOwner("Gotaland") == EventFaction.Name
				and SyncRand(100) < 50
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -325,
		MaxYear = -319,
		Options = {"A ~!wise man!"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Research\n+1 Prestige"}
	}
}
