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
--				and FactionHasTechnologyType(EventFaction, "wood-plow")
				and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Dane Tribe" or EventFaction.Name == "Swede Tribe")
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
				if (EventFaction.Name == "Asa Tribe") then
					FormFaction(EventFaction, Factions.SwedeTribe)
					EventFaction = Factions.SwedeTribe
				end
				ChangeFactionCulture(EventFaction, "norse")
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						WorldMapProvinces[province_key].Civilization == "germanic"
					) then
						ChangeProvinceCulture(WorldMapProvinces[province_key], "norse") -- change the culture of only one province, and let cultural spread do the rest
						break
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
						WorldMapProvinces[province_key].Civilization == "germanic"
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
				ChangeProvinceCulture(EventProvince, "norse")
			end
		}
	},
	YngveChieftainOfTheSwedes = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Yngve, Chieftain of the Swedes",
		Description = "Yngve has become our new chieftain, founding a new dynasty, the Ynglings. He managed to establish order in our lands, and was blessed with good seasons. Due to the good seasons and the reigning peace, our people have become prosperous as never before. Preferring Upsal to Sigtun, Yngve moved his capital there, where he built a great temple, and spent many resources in embellishing the town. Our chieftain's wife is Gerd, daughter of Gymis, and their son Fjolne stands in line to become our next chieftain.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Swede Tribe" or EventFaction.Name == "Sweden")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -27 - 30,
		MaxYear = -27,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Gold = EventFaction.Gold + 250
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+250 Gold, +1 Prestige"}
	},
	YngvesSickness = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Yngve's Sickness",
		Description = "Our chieftain Yngve fell ill. As the disease advanced, not many would be allowed to see him, and meanwhile a great mound began to be built... where he would be finally buried when his time came.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Swede Tribe" or EventFaction.Name == "Sweden")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -27,
		MaxYear = -27,
		RequiredEvents = {
			YngveChieftainOfTheSwedes = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	FjolneChieftainOfTheSwedes = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Fjolne, Chieftain of the Swedes",
		Description = "With the death of his father, Fjolne has become our new chieftain. Besides being a powerful warrior, Fjolne is also well-capable of maintaining the peace in his realm which his father had established.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Swede Tribe" or EventFaction.Name == "Sweden")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -27, -- according to the Grottasongr, King Fjolnir of the Swedes lived around the same time as Augustus came to reign, establishing the Pax Romana
		MaxYear = -27 + 30, -- the year of his death is unknown, so +30 after the start
		RequiredEventsOr = {
			YngveChieftainOfTheSwedes = false,
			YngvesSickness = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	FredfrodeChieftainOfTheDanes = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Fredfrode, Chieftain of the Danes",
		Description = "Fredfrode has become our new ruler in Leidre. He holds a great friendship for the chieftain of the Swedes, and both visit each other often.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Dane Tribe" or EventFaction.Name == "Denmark")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -27, -- according to the Grottasongr, King Fjolnir of the Swedes lived around the same time as Augustus came to reign, establishing the Pax Romana, and Fredfrode is his contemporary
		MaxYear = -27 + 30,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	FredfrodesFeast = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Fredfrode's Feast",
		Description = "The chieftain of the Danes, Fredfrode, prepared a great feast for our chieftain Fjolne in his capital of Leidre. Within Fredfrode's dwelling, there were many tall vessels filled with mead. Our chieftain, while walking through a gallery during the evening, sleepy and exceedingly drunk, slipped his foot and fell into one such vessel, drowning in mead.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Swede Tribe" or EventFaction.Name == "Sweden")
				and (GetFactionProvinceCount(Factions.DaneTribe) > 0 or GetFactionProvinceCount(Factions.Denmark) > 0)
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -27 + 30,
		MaxYear = -27 + 30,
		RequiredEvents = {
			FjolneChieftainOfTheSwedes = true,
--			FredfrodeChieftainOfTheDanes = true -- not required yet, because the Danes aren't on the map when this happens
		},
		Options = {"~!Oh no!"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige - 1 -- not a particularly prestigious way of dying
			end
		},
		OptionTooltips = {"-1 Prestige"}
	},
	SwegdeChieftainOfTheSwedes = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Swegde, Chieftain of the Swedes",
		Description = "The faithful Swegde has become our chieftain.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Swede Tribe" or EventFaction.Name == "Sweden")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -27 + (30 * 1),
		MaxYear = -27 + (30 * 2),
		RequiredEventsOr = {
			FjolneChieftainOfTheSwedes = false,
			FredfrodesFeast = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	SwegdesJourney = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Swegde's Journey",
		Description = "Our chieftain Swegde has gone on a journey to find Wodan and his dwelling. Travelling with twelve men, he went as far as Asia Minor and the Black Sea.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Swede Tribe" or EventFaction.Name == "Sweden")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -27 + (30 * 1) + 25,
		MaxYear = -27 + (30 * 1) + 25,
		RequiredEvents = {
			SwegdeChieftainOfTheSwedes = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	SwegdesReturn = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Swegde's Return",
		Description = "After five years, Swegde returned from his journey, bringing with him a wife, Vana, and their son Vanlande. He did not manage to find Wodan, but soon afterwards he went away again to do so. He arrived in a place called Stein, where stood a stone as big as a house. During the evening, after having drunk much, Swegde and his men saw someone near the stone... There was a man standing behind a door in it, and he invited Swegde inside, claiming Wodan to be inside. Our chieftain agreed... and once inside he was murdered and was never seen again.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Swede Tribe" or EventFaction.Name == "Sweden")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -27 + (30 * 2),
		MaxYear = -27 + (30 * 2),
		RequiredEvents = {
			SwegdesJourney = true
		},
		Options = {"Oh ~!no!"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige - 1
			end
		},
		OptionTooltips = {"-1 Prestige"}
	},
	VanlandeChieftainOfTheSwedes = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Vanlande, Chieftain of the Swedes",
		Description = "The mighty Vanlande has become our chieftain. He is a great warrior, and has a passion for traveling.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Swede Tribe" or EventFaction.Name == "Sweden")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -27 + (30 * 2),
		MaxYear = -27 + (30 * 3),
		RequiredEventsOr = {
			SwegdeChieftainOfTheSwedes = false,
			SwegdesReturn = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	TheWinterAbode = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "The Winter Abode",
		Description = "Our chieftain Vanlande has taken up his winter abode in Finland with Snae the Old, marrying his daughter Driva. When spring came, Vanlande set out to Sweden, promising to Driva that he would return within three years.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Swede Tribe" or EventFaction.Name == "Sweden")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -27 + (30 * 2) + 20,
		MaxYear = -27 + (30 * 2) + 20,
		RequiredEvents = {
			VanlandeChieftainOfTheSwedes = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	HuldsCurse = { -- Source: Snorri Sturlson, "Heimskringla", 1844.
		Name = "Huld's Curse",
		Description = "Vanlande did not keep his promise. Even after ten years had passed, he hadn't returned to Driva's embrace... She sent the son she had with Vanlande, Visbur, to Sweden, and then bribed the witch Huld to charm Vanlande into returning to Finland, or to kill him. Vanlande felt a sudden urge to visit Finland, but his councilors and friends advised him against it. He then became quite drowsy, and went to sleep... cries were heard from his chamber, and his men rushed there, only to find him dead. His body was burnt at the river Skytaa, and a standing stone was raised for him.",
		Conditions = function(s)
			if (
				(EventFaction.Name == "Swede Tribe" or EventFaction.Name == "Sweden")
			) then
				return true
			else
				return false
			end
		end,
		MinYear = -27 + (30 * 3),
		MaxYear = -27 + (30 * 3),
		RequiredEvents = {
			TheWinterAbode = true
		},
		Options = {"Oh ~!no!"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	TempleAtUpsalConverted = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 88.
		Name = "Temple at Upsal Converted",
		Description = "The temple at Upsal, formerly the major center of Norse pagan religion, has been converted by our king into a Christian church, and its first bishop has been ordained.", -- historically the king was Olaf the Swede, and the bishop was the Englishman Severin
		Conditions = function(s)
			if (
				WorldMapProvinces.Sweden.Owner == EventFaction.Name
				and WorldMapProvinces.Sweden.Civilization == "norse"
				-- should require Sweden to be Christian, and there to be a church in Sweden
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
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	SaemundPriestOfTheParishOfOdda = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, pp. 26, 31, 70.
		Name = "Saemund, Priest of the Parish of Odda",
		Description = "Saemund has been ordained priest of the parish of Odda. He had studied in universities in France and Germany, and has deep knowledge of Norse traditions.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Iceland.Owner == EventFaction.Name
				and WorldMapProvinces.Iceland.Civilization == "norse"
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
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	AnnalesOddenses = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 31.
		Name = "Annales Oddenses",
		Description = "The priest Saemund has initiated the writing of Annals, which shall be continued by his successors to the parish of Odda.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Iceland.Owner == EventFaction.Name
				and WorldMapProvinces.Iceland.Civilization == "norse"
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
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	SaemundsEdda = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 31.
		Name = "Saemund's Edda",
		Description = "The priest Saemund has written an Edda, a compendium of Norse mythologies, traditions and legends.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Iceland.Owner == EventFaction.Name
				and WorldMapProvinces.Iceland.Civilization == "norse"
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
				EventFaction.Prestige = EventFaction.Prestige + 5
			end
		},
		OptionTooltips = {"+5 Prestige"}
	},
	BrandBishopOfTheDioceseOfHolen = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 31.
		Name = "Brand, Bishop of the Diocese of Holen",
		Description = "The priest Brand has been ordained bishop of the diocese of Holen in Iceland. The bishop often occupies his time with the transcription of sagas from memory into manuscripts.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Iceland.Owner == EventFaction.Name
				and WorldMapProvinces.Iceland.Civilization == "norse"
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
				EventFaction.Prestige = EventFaction.Prestige + 1 -- Karl wrote about the life of King Swerrer, who reigned from 1177 to 1202
--				EventFaction.Faith = EventFaction.Faith + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	KarlAbbotOfTheMonasteryOfThingIsle = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 32.
		Name = "Karl, Abbot of the Monastery of Thing Isle",
		Description = "The priest Karl has been ordained abbot of the monastery of Thing Isle, which lies to the north of Iceland.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Iceland.Owner == EventFaction.Name
				and WorldMapProvinces.Iceland.Civilization == "norse"
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
				EventFaction.Prestige = EventFaction.Prestige + 1 -- Karl wrote about the life of King Swerrer, who reigned from 1177 to 1202
--				EventFaction.Faith = EventFaction.Faith + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	SnorriSturlsonSage = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 12.
		Name = "Snorri Sturlson, Sage",
		Description = "The Icelander Snorri Sturlson has shown himself to be a learned man in a number of old legends and mythologies.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Iceland.Owner == EventFaction.Name -- for historical personages to appear, they require three things: the year of their historical rise to prominence, ownership of the province in which they were born or raised, and that that province be of the correct culture for them, if they belonged to the cultural majority
				and WorldMapProvinces.Iceland.Civilization == "norse"
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1178 + 30, -- Snorri was born in 1178 (+30 years as an estimation of rise to prominence)
		MaxYear = 1241, -- Snorri was murdered in Iceland in 1241
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 1
			end
		},
		OptionTooltips = {"+1 Prestige"}
	},
	Heimskringla = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 12.
		Name = "Heimskringla",
		Description = "The Heimskringla, or Chronicle of the Kings of Norway, was written by the Icelandic sage Snorri Sturlson, detailing the legendary origins of the Norwegian monarchy, and then going on to write the stories of a long series of kings of Norway.",
		Conditions = function(s)
			if (
				WorldMapProvinces.Iceland.Owner == EventFaction.Name
				and WorldMapProvinces.Iceland.Civilization == "norse"
				and SyncRand(100) < 10
			) then
				return true
			else
				return false
			end
		end,
		MaxYear = 1241, -- Snorri was murdered in Iceland in 1241
		RequiredEvents = {
			SnorriSturlsonSage = true
		},
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige + 5
			end
		},
		OptionTooltips = {"+5 Prestige"}
	},
	SnorrisMurder = { -- Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 12.
		Name = "Snorri's Murder",
		Description = "The sage Snorri Sturlson has been murdered in his home country of Iceland!",
		Conditions = function(s)
			if (
				WorldMapProvinces.Iceland.Owner == EventFaction.Name
			) then
				return true
			else
				return false
			end
		end,
		MinYear = 1241, -- Snorri was murdered in Iceland in 1241
		MaxYear = 1241,
		RequiredEvents = {
			SnorriSturlsonSage = true
		},
		Options = {"Oh ~!no!"},
		OptionEffects = {
			function(s)
				EventFaction.Prestige = EventFaction.Prestige - 1
			end
		},
		OptionTooltips = {"-1 Prestige"}
	},
	Vornedskabet = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
		Name = "Vornedskabet",
		Description = "Movement restrictions, or vornedskabet, have been introduced on the serfs of the island of Zealand.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Denmark"
				and WorldMapProvinces.Jutland.Owner == EventFaction.Name
				and WorldMapProvinces.Jutland.Civilization == "norse" -- because the name "Vornedskabet" is specific to the Danish language
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
				EventFaction.Gold = EventFaction.Gold + 500
				EventFaction.Research = EventFaction.Research - 5
			end
		},
		OptionTooltips = {"+500 Gold, -5 Research"}
	},
	NoblesAcquireLegalJurisdictionPrivilege = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
		Name = "Nobles Acquire Legal Jurisdiction Privilege",
		Description = "The Danish nobility has managed to acquire the right of legal jurisdiction over their villagers.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Denmark"
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
				EventFaction.Gold = EventFaction.Gold + 500
				EventFaction.Research = EventFaction.Research - 5
			end
		},
		OptionTooltips = {"+500 Gold, -5 Research", ""}
	},
	TheLiftingOfTheVornedskabet = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
		Name = "The Lifting of the Vornedskabet",
		Description = "The vornedskabet has been abolished in Zealand.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Denmark"
				and WorldMapProvinces.Jutland.Owner == EventFaction.Name
				and WorldMapProvinces.Jutland.Civilization == "norse"
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
				EventFaction.Research = EventFaction.Research + 5
			end
		},
		OptionTooltips = {"+5 Research"}
	},
	Stavnsbandet = { -- Source: Markus Cerman, "Villagers and Lords in Eastern Europe, 1300-1800", 2012, p. 20.
		Name = "Stavnsbandet",
		Description = "The stavnsbandet, which consists of movement restrictions for the male population, has been introduced for military reasons. It will hurt our economy, however.",
		Conditions = function(s)
			if (
				EventFaction.Name == "Denmark"
				and WorldMapProvinces.Jutland.Owner == EventFaction.Name
				and WorldMapProvinces.Jutland.Civilization == "norse" -- because the name "Vornedskabet" is specific to the Danish language
				and GetProvinceSettlementBuilding(WorldMapProvinces.Jutland.Name, "unit-teuton-barracks")
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
				EventFaction.Gold = EventFaction.Gold - 300
				EventFaction.Research = EventFaction.Research - 2
			end
		},
		OptionTooltips = {"-300 Gold, -2 Research"}
	}
}
	
AddEventTable(NorseEvents)
