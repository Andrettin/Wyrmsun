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
--      grand_strategy_events.lua - Defines the grand strategy events.
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

local NorseEvents = {
	NorseCultureDevelops = {
		Name = "Norse Culture Develops",
		Description = "With the passage of time, our customs and language have diverged significantly from the general Germanic ones. The North Germanic tongue has become predominant amongst us, and with it the Norse culture.",
		Conditions = function(s)
			if (
				EventFaction.Civilization == "germanic"
				and FactionHasTechnologyType(EventFaction, "melee-weapon-1") -- must have reached the iron age
				and FactionHasTechnologyType(EventFaction, "bronze-shield")
				and FactionHasTechnologyType(EventFaction, "ranged-projectile-1")
				and FactionHasTechnologyType(EventFaction, "wood-plow")
				and (EventFaction.Name == "asa-tribe" or EventFaction.Name == "skeldung-tribe" or EventFaction.Name == "yngling-tribe")
				and EventFaction.Name ~= GrandStrategyFaction.Name -- only available for NPC factions, since the norse civilization is not playable
				and (SyncRand(50) < 1 or FactionHasCulture(EventFaction, "norse"))
			) then
				return true
			end
			return false
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				local found_faction = false
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "germanic"
					) then
						for key, value in pairs(Factions) do
							if (Factions[key].Civilization == "norse" and GetFactionData(Factions[key].Name, "Type") == GetFactionData(EventFaction.Name, "Type") and ProvinceHasClaim(WorldMapProvinces[province_key].Name, Factions[key].Civilization, Factions[key].Name) and GetFactionProvinceCount(Factions[key]) == 0) then
								FormFactionLua(EventFaction, Factions[key])
								EventFaction = Factions[key]
								found_faction = true
								SetProvinceCivilization(WorldMapProvinces[province_key].Name, "norse") -- change the culture of only one province, and let cultural spread do the rest
								break
							end
						end
						if (found_faction) then
							break
						end
					end
				end
				if not (found_faction) then
					for key, value in pairs(Factions) do
						if (Factions[key].Civilization == "norse" and GetFactionData(Factions[key].Name, "Type") == GetFactionData(EventFaction.Name, "Type") and GetFactionProvinceCount(Factions[key]) == 0) then
							FormFactionLua(EventFaction, Factions[key])
							EventFaction = Factions[key]
							break
						end
					end
					for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
						if (
							GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "germanic"
						) then
							SetProvinceCivilization(WorldMapProvinces[province_key].Name, "norse") -- change the culture of only one province, and let cultural spread do the rest
							break
						end
					end
				end
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do -- remove claims from all provinces that are still Germanic, to make it more likely that they will split off
					if (
						GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "germanic"
					) then
						RemoveProvinceClaim(WorldMapProvinces[province_key].Name, EventFaction.Civilization, EventFaction.Name)
					end
				end
			end
		}
	},
	NorseCultureSpreads = {
		Name = "Norse Culture Spreads",
		Description = "The people of PROVINCE_NAME have adopted the Norse culture.",
		Conditions = function(s)
			if (EventFaction.Civilization ~= "teuton" and EventFaction.Civilization ~= "goth") then
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "germanic"
						and SyncRand(50) < 1
						and ProvinceBordersCulture(WorldMapProvinces[province_key], "norse")
					) then
						EventProvince = WorldMapProvinces[province_key]
						return true
					end
				end
			end
			return false
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				SetProvinceCivilization(EventProvince.Name, "norse")
			end
		}
	},
	FredfrodesFeast = { -- Source: Snorri Sturlson, "Heimskringla", 1844, pp. 226-227.
		Name = "Fredfrode's Feast",
		Description = "The chieftain of the Danes, Fredfrode, prepared a great feast for our chieftain Fiolner in his capital of Leidre. Within Fredfrode's dwelling, there were many tall vessels filled with mead. Our chieftain, while walking through a gallery during the evening, sleepy and exceedingly drunk, slipped his foot and fell into one such vessel, drowning in mead.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "swede-tribe" or EventFaction.Name == "sweden")
				and (GetFactionProvinceCount(Factions.dane_tribe) > 0 or GetFactionProvinceCount(Factions.denmark) > 0)
				and GetFactionMinister("norse", EventFaction.Name, "head-of-state") == "Fiolner Yngling"
				and GetFactionMinister("norse", "dane-tribe", "head-of-state") == "Fridfrode Skjoldung"
				and SyncRand(100) < 10
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!Oh no!"},
		OptionEffects = {
			function(s)
				SetFactionMinister("norse", EventFaction.Name, "head-of-state", "Swegder Yngling")
				KillGrandStrategyHero("Fiolner Yngling")
			end
		},
		OptionTooltips = {"Fiolner Yngling dies"}
	},
	SwegdesJourney = { -- Source: Snorri Sturlson, "Heimskringla", 1844, p. 227.
		Name = "Swegde's Journey",
		Description = "Our chieftain Swegde has gone on a journey to find Odin and his dwelling. Travelling with twelve men, he went as far as Asia Minor and the Black Sea.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "swede-tribe" or EventFaction.Name == "sweden")
				and GetFactionMinister("norse", EventFaction.Name, "head-of-state") == "Swegder Yngling"
				and SyncRand(100) < 10
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	SwegdesReturn = { -- Source: Snorri Sturlson, "Heimskringla", 1844, pp. 227-228.
		Name = "Swegde's Return",
		Description = "After several years, Swegde returned from his journey, bringing with him a wife, Vana, and their son Vanland. He did not manage to find Odin, but soon afterwards he went away again to do so. He arrived in a place called Stein, where stood a stone as big as a house. During the evening, after having drunk much, Swegde and his men saw someone near the stone... There was a man standing behind a door in it, and he invited Swegde inside, claiming Odin to be inside. Our chieftain agreed... and once inside he was murdered and was never seen again.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "swede-tribe" or EventFaction.Name == "sweden")
				and GetFactionMinister("norse", EventFaction.Name, "head-of-state") == "Swegder Yngling"
				and SyncRand(100) < 50
			) then
				return true
			else
				return false
			end
		end,
		RequiredEvents = {
			SwegdesJourney = true
		},
		Options = {"Oh ~!no!"},
		OptionEffects = {
			function(s)
				SetProvinceHero("Sweden", "Vana", 4)
				SetFactionMinister("norse", EventFaction.Name, "head-of-state", "Vanland Yngling")
				KillGrandStrategyHero("Swegder Yngling")
			end
		},
		OptionTooltips = {"Swegder Yngling dies"}
	},
	TheWinterAbode = { -- Source: Snorri Sturlson, "Heimskringla", 1844, p. 228.
		Name = "The Winter Abode",
		Description = "Our chieftain Vanland has taken up his winter abode in Finland with Snio the Old, marrying his daughter Drisa. When spring came, Vanland set out to Sweden, promising to Drisa that he would return within three years.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "swede-tribe" or EventFaction.Name == "sweden")
				and GetFactionMinister("norse", EventFaction.Name, "head-of-state") == "Vanland Yngling"
				and SyncRand(100) < 10
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	HuldasCurse = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Hulda's Curse",
		Description = "Vanland did not keep his promise. Even after many years had passed, he hadn't returned to Drisa's embrace... She sent the son she had with Vanland, Visbur, to Sweden, and then bribed the witch Hulda to charm Vanland into returning to Finland, or to kill him. Vanland felt a sudden urge to visit Finland, but his councilors and friends advised him against it. He then became quite drowsy, and went to sleep... cries were heard from his chamber, and his men rushed there, only to find him dead. His body was burnt at the river Skytaa, and a standing stone was raised for him.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "swede-tribe" or EventFaction.Name == "sweden")
				and GetFactionMinister("norse", EventFaction.Name, "head-of-state") == "Vanland Yngling"
				and SyncRand(100) < 10
			) then
				return true
			else
				return false
			end
		end,
		RequiredEvents = {
			TheWinterAbode = true
		},
		Options = {"Oh ~!no!"},
		OptionEffects = {
			function(s)
				SetFactionMinister("norse", EventFaction.Name, "head-of-state", "Visbur Yngling")
				KillGrandStrategyHero("Vanland Yngling")
			end
		},
		OptionTooltips = {"Vanland Yngling dies"}
	},
	TempleAtUpsalConverted = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 88.
		Name = "Temple at Upsal Converted",
		Description = "The temple at Upsal, formerly the major center of Norse pagan religion, has been converted by our king into a Christian church, and its first bishop has been ordained.", -- historically the king was Olaf the Swede, and the bishop was the Englishman Severin
		Conditions = function(s)
			if (
				GetProvinceOwner("Sweden") == EventFaction.Name
				and GetProvinceCivilization("Sweden") == "norse"
				and ProvinceHasBuildingClass("Sweden", "temple")
				-- should require Sweden to be Christian
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1026, -- should be removed, with better triggers being added, to make the event more dynamic (there is no reason for this event to be fixed to a particular date, since it doesn't refer to a specific person)
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	SaemundPriestOfTheParishOfOdda = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 26, 31, 70.
		Name = "Saemund, Priest of the Parish of Odda",
		Description = "Saemund has been ordained priest of the parish of Odda. He had studied in universities in France and Germany, and has deep knowledge of Norse traditions.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Iceland") == EventFaction.Name
				and GetProvinceCivilization("Iceland") == "norse"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1083, -- Year about which Saemund flourished (he was born in 1056/1057)
		MaxYear = 1133, -- Saemund died in 1133
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	AnnalesOddenses = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 31.
		Name = "Annales Oddenses",
		Description = "The priest Saemund has initiated the writing of Annals, which shall be continued by his successors to the parish of Odda.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Iceland") == EventFaction.Name
				and GetProvinceCivilization("Iceland") == "norse"
				and SyncRand(100) < 10
			) then
				return true
			else
				return false
			end
		end,
		MaxYear = 1133, -- Saemund died in 1133
		RequiredEvents = {
			SaemundPriestOfTheParishOfOdda = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	SaemundsEdda = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 31.
		Name = "Saemund's Edda",
		Description = "The priest Saemund has written an Edda, a compendium of Norse mythologies, traditions and legends.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Iceland") == EventFaction.Name
				and GetProvinceCivilization("Iceland") == "norse"
				and SyncRand(100) < 10
			) then
				return true
			else
				return false
			end
		end,
		MaxYear = 1133, -- Saemund died in 1133
		RequiredEvents = {
			SaemundPriestOfTheParishOfOdda = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 5)
			end
		},
		OptionTooltips = {"+5 Prestige"}
	},
	BrandBishopOfTheDioceseOfHolen = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 31.
		Name = "Brand, Bishop of the Diocese of Holen",
		Description = "The priest Brand has been ordained bishop of the diocese of Holen in Iceland. The bishop often occupies his time with the transcription of sagas from memory into manuscripts.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Iceland") == EventFaction.Name
				and GetProvinceCivilization("Iceland") == "norse"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1164, -- Brand was ordained in 1164
		MaxYear = 1201, -- Brand died in 1201
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1) -- Karl wrote about the life of King Swerrer, who reigned from 1177 to 1202
--				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "faith", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	KarlAbbotOfTheMonasteryOfThingIsle = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 32.
		Name = "Karl, Abbot of the Monastery of Thing Isle",
		Description = "The priest Karl has been ordained abbot of the monastery of Thing Isle, which lies to the north of Iceland.",
		Conditions = function(s)
			if (
				GetProvinceOwner("Iceland") == EventFaction.Name
				and GetProvinceCivilization("Iceland") == "norse"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1169, -- Karl was ordained in 1169
		MaxYear = 1213, -- Karl died in 1213
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 1) -- Karl wrote about the life of King Swerrer, who reigned from 1177 to 1202
--				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "faith", 1)
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	Vornedskabet = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
		Name = "Vornedskabet",
		Description = "Movement restrictions, or vornedskabet, have been introduced on the serfs of the island of Zealand.",
		Conditions = function(s)
			if (
				EventFaction.Name == "denmark"
				and GetProvinceOwner("Zealand") == EventFaction.Name
				and GetProvinceCivilization("Zealand") == "norse" -- because the name "Vornedskabet" is specific to the Danish language
				-- should only trigger after a technology for the appropriate time period has been researched
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 500)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", -5)
			end
		},
		OptionTooltips = {"+500 Copper\n-5 Research"}
	},
	NoblesAcquireLegalJurisdictionPrivilege = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
		Name = "Nobles Acquire Legal Jurisdiction Privilege",
		Description = "The Danish nobility has managed to acquire the right of legal jurisdiction over their villagers.",
		Conditions = function(s)
			if (
				EventFaction.Name == "denmark"
				-- should only trigger after a technology for the appropriate time period has been researched
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", 500)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", -5)
			end
		},
		OptionTooltips = {"+500 Copper\n-5 Research", ""}
	},
	TheLiftingOfTheVornedskabet = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
		Name = "The Lifting of the Vornedskabet",
		Description = "The vornedskabet has been abolished in Zealand.",
		Conditions = function(s)
			if (
				EventFaction.Name == "denmark"
				and GetProvinceOwner("Zealand") == EventFaction.Name
				and GetProvinceCivilization("Zealand") == "norse"
				-- should only trigger after a technology for the appropriate time period has been researched
			) then
				return true
			else
				return false
			end
		end,
		RequiredEvents = {
			Vornedskabet = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 5)
			end
		},
		OptionTooltips = {"+5 Research"}
	},
	Stavnsbandet = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
		Name = "Stavnsbandet",
		Description = "The stavnsbandet, which consists of movement restrictions for the male population, has been introduced for military reasons. It will hurt our economy, however.",
		Conditions = function(s)
			if (
				EventFaction.Name == "denmark"
				and GetProvinceOwner("Zealand") == EventFaction.Name
				and GetProvinceCivilization("Zealand") == "norse" -- because the name "Vornedskabet" is specific to the Danish language
				and GetProvinceSettlementBuilding("Zealand", "unit-teuton-barracks")
				-- should only trigger after a technology for the appropriate time period has been researched
			) then
				return true
			else
				return false
			end
		end,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", -300)
				ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", -2)
			end
		},
		OptionTooltips = {"-300 Copper\n-2 Research"}
	}
}
	
AddEventTable(NorseEvents)
