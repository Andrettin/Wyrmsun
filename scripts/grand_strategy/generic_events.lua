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

local GenericEvents = {
	BountifulHarvest = {
		Name = "Bountiful Harvest",
		Description = "The harvest this year has been exceptionally plentiful, rejoice!",
		Conditions = function(s)
			if (
				SyncRand(100) < 1
			) then
				return true
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"E~!xcellent!"},
		OptionEffects = {
			function(s)
				EventFaction.Gold = EventFaction.Gold + (100 * GetFactionProvinceCount(EventFaction))
			end
		},
		OptionTooltips = {"+100 Gold per province owned"}
	},
	SkilledCarpenters = {
		Name = "Skilled Carpenters",
		Description = "A group of skilled carpenters has come to our country, opening up a workshop in PROVINCE_NAME.",
		Conditions = function(s)
			if (
				SyncRand(100) < math.min(10, math.floor(EventFaction.Prestige / 10)) -- 10% chance the event happens at all if prestige is at least 100, and then 1% chance that it happens to a particular province, for a total chance of 0.01% of happening if the player has one province (this event shouldn't be common)
			) then
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (SyncRand(100) < 1 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill")) then
						EventProvince = WorldMapProvinces[province_key]
						return true
					end
				end
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Gold = EventFaction.Gold + 100
				EventFaction.Research = EventFaction.Research + 1
			end
		},
		OptionTooltips = {"+100 Gold, +1 Research"}
	},
	SkilledMasons = {
		Name = "Skilled Masons",
		Description = "A group of skilled masons has come to our country, opening up a workshop in PROVINCE_NAME.",
		Conditions = function(s)
			if (
				SyncRand(100) < math.min(10, math.floor(EventFaction.Prestige / 10)) -- 10% chance the event happens at all if prestige is at least 100, and then 1% chance that it happens to a particular province, for a total chance of 0.01% of happening if the player has one province (this event shouldn't be common)
				and FactionHasTechnologyType(EventFaction, "masonry")
			) then
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (SyncRand(100) < 1 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill")) then
						EventProvince = WorldMapProvinces[province_key]
						return true
					end
				end
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				EventFaction.Gold = EventFaction.Gold + 100
				EventFaction.Research = EventFaction.Research + 1
			end
		},
		OptionTooltips = {"+100 Gold, +1 Research"}
	},
	BuildObservatory = {
		Name = "Build Observatory?",
		Description = "A master builder has approached you with plans to build an observatory in PROVINCE_NAME.",
		Conditions = function(s)
			if (
				SyncRand(100) < math.min(10, math.floor(EventFaction.Prestige / 10)) -- 10% chance the event happens at all if prestige is at least 100, and then 1% chance that it happens to a particular province, for a total chance of 0.01% of happening if the player has one province (this event shouldn't be common)
				and EventFaction.Gold >= 500
				and FactionHasTechnologyType(EventFaction, "masonry")
			) then
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (SyncRand(100) < 1 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill")) then
						EventProvince = WorldMapProvinces[province_key]
						return true
					end
				end
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!Accept", "~!Decline"},
		OptionEffects = {
			function(s)
				EventFaction.Gold = EventFaction.Gold - 500
				EventFaction.Research = EventFaction.Research + 5
			end,
			function(s)
			end
		},
		OptionTooltips = {"-500 Gold, +5 Research", ""}
	},
	BuildLibrary = {
		Name = "Build Library?",
		Description = "A master builder has approached you with plans to build a library in PROVINCE_NAME.",
		Conditions = function(s)
			if (
				SyncRand(100) < math.min(10, math.floor(EventFaction.Prestige / 10)) -- 10% chance the event happens at all if prestige is at least 100, and then 1% chance that it happens to a particular province, for a total chance of 0.01% of happening if the player has one province (this event shouldn't be common)
				and EventFaction.Gold >= 400
				and FactionHasTechnologyType(EventFaction, "masonry")
			) then
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (SyncRand(100) < 1 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill")) then
						EventProvince = WorldMapProvinces[province_key]
						return true
					end
				end
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!Accept", "~!Decline"},
		OptionEffects = {
			function(s)
				EventFaction.Gold = EventFaction.Gold - 400
				EventFaction.Research = EventFaction.Research + 4
			end,
			function(s)
			end			
		},
		OptionTooltips = {"-400 Gold, +4 Research", ""}
	},
	BuildMonument = {
		Name = "Build Monument?",
		Description = "A master builder has approached you with plans to build a monument in PROVINCE_NAME.",
		Conditions = function(s)
			if (
				SyncRand(100) < math.min(10, math.floor(EventFaction.Prestige / 10)) -- 10% chance the event happens at all if prestige is at least 100, and then 1% chance that it happens to a particular province, for a total chance of 0.01% of happening if the player has one province (this event shouldn't be common)
				and EventFaction.Gold >= 500
				and FactionHasTechnologyType(EventFaction, "masonry")
			) then
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (SyncRand(100) < 1 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill")) then
						EventProvince = WorldMapProvinces[province_key]
						return true
					end
				end
			else
				return false
			end
		end,
		Persistent = true,
		Options = {"~!Accept", "~!Decline"},
		OptionEffects = {
			function(s)
				EventFaction.Gold = EventFaction.Gold - 500
				EventFaction.Prestige = EventFaction.Prestige + 5
			end,
			function(s)
			end
		},
		OptionTooltips = {"-500 Gold, +5 Prestige", ""}
	},
	ProvinceAssimilates = {
		Name = "PROVINCE_NAME Assimilates",
		Description = "The people of PROVINCE_NAME have assimilated into our CULTURE_NAME culture.",
		Conditions = function(s)
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (
					WorldMapProvinces[province_key].Civilization ~= EventFaction.Civilization
					and GetCivilizationSpecies(WorldMapProvinces[province_key].Civilization) == GetCivilizationSpecies(EventFaction.Civilization) -- assimilation can only happen between civilizations which belong to the same species
					and SyncRand(200) < 1
					and ProvinceBordersCulture(WorldMapProvinces[province_key], EventFaction.Civilization)
				) then
					EventProvince = WorldMapProvinces[province_key]
					return true
				end
			end
			return false
		end,
		Persistent = true,
		Options = {"~!OK"},
		OptionEffects = {
			function(s)
				ChangeProvinceCulture(EventProvince, EventFaction.Civilization)
			end
		}
	}
}
	
AddEventTable(GenericEvents)
