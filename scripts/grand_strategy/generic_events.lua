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

DefineGrandStrategyEvent("Bountiful Harvest", {
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
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				ChangeProvinceFood(WorldMapProvinces[province_key].Name, 100)
			end
		end
	},
	OptionTooltips = {"+100 Food in every province"}
})

DefineGrandStrategyEvent("Skilled Carpenters", {
	Description = "A group of skilled carpenters has come to our country, opening up a workshop in PROVINCE_NAME.",
	Conditions = function(s)
		if (
			SyncRand(100) < math.min(5, math.floor(GetFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige") / 20)) -- 5% chance the event happens at all if prestige is at least 100, and then 1% chance that it happens to a particular province, for a total chance of 0.01% of happening if the player has one province (this event shouldn't be common)
		) then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (SyncRand(100) < 1 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill")) then
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
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "metal", 100)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
		end
	},
	OptionTooltips = {"+100 Metal\n+1 Research"}
})

DefineGrandStrategyEvent("Skilled Masons", {
	Description = "A group of skilled masons has come to our country, opening up a workshop in PROVINCE_NAME.",
	Conditions = function(s)
		if (
			SyncRand(100) < math.min(5, math.floor(GetFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige") / 20)) -- 5% chance the event happens at all if prestige is at least 100, and then 1% chance that it happens to a particular province, for a total chance of 0.01% of happening if the player has one province (this event shouldn't be common)
			and FactionHasTechnologyType(EventFaction, "masonry")
		) then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (SyncRand(100) < 1 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill")) then
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
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "metal", 100)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 1)
		end
	},
	OptionTooltips = {"+100 Metal\n+1 Research"}
})

DefineGrandStrategyEvent("Build Observatory?", {
	Description = "A master builder has approached you with plans to build an observatory in PROVINCE_NAME.",
	Conditions = function(s)
		if (
			SyncRand(100) < math.min(5, math.floor(GetFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige") / 20)) -- 5% chance the event happens at all if prestige is at least 100, and then 1% chance that it happens to a particular province, for a total chance of 0.01% of happening if the player has one province (this event shouldn't be common)
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "metal") >= 500
			and FactionHasTechnologyType(EventFaction, "masonry")
		) then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (SyncRand(100) < 1 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill")) then
					EventProvince = WorldMapProvinces[province_key]
					return true
				end
			end
		end
		return false
	end,
	Persistent = true,
	Options = {"~!Accept", "~!Decline"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "metal", -500)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 5)
		end,
		function(s)
		end
	},
	OptionTooltips = {"-500 Metal\n+5 Research", ""}
})

DefineGrandStrategyEvent("Build Library?", {
	Description = "A master builder has approached you with plans to build a library in PROVINCE_NAME.",
	Conditions = function(s)
		if (
			SyncRand(100) < math.min(5, math.floor(GetFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige") / 20)) -- 5% chance the event happens at all if prestige is at least 100, and then 10% chance that it happens to a particular province, for a total chance of 0.1% of happening if the player has one province
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "metal") >= 800
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "lumber") >= 1350
			and FactionHasTechnologyType(EventFaction, "masonry")
			and FactionHasTechnologyType(EventFaction, "writing")
		) then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (SyncRand(10) == 0 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill") and GetGrandStrategyProvinceData(WorldMapProvinces[province_key].Name, "Modifier", "upgrade-library") == false) then
					EventProvince = WorldMapProvinces[province_key]
					return true
				end
			end
		end
		return false
	end,
	Persistent = true,
	Options = {"~!Accept", "~!Decline"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "metal", -800)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "lumber", -1350)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-library", true)
		end,
		function(s)
		end			
	},
	OptionTooltips = {"-800 Metal\n-1350 Lumber\nA Library is built in PROVINCE_NAME", ""}
})

DefineGrandStrategyEvent("Build Courthouse?", {
	Description = "A master builder has approached you with plans to build a courthouse in PROVINCE_NAME.",
	Conditions = function(s)
		if (
			SyncRand(100) < math.min(5, math.floor(GetFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige") / 20)) -- 5% chance the event happens at all if prestige is at least 100, and then 10% chance that it happens to a particular province, for a total chance of 0.1% of happening if the player has one province
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "metal") >= 800
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "lumber") >= 1350
			and FactionHasTechnologyType(EventFaction, "masonry")
			and FactionHasTechnologyType(EventFaction, "writing")
		) then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (SyncRand(10) == 0 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill") and GetGrandStrategyProvinceData(WorldMapProvinces[province_key].Name, "Modifier", "upgrade-courthouse") == false) then
					EventProvince = WorldMapProvinces[province_key]
					return true
				end
			end
		end
		return false
	end,
	Persistent = true,
	Options = {"~!Accept", "~!Decline"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "metal", -800)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "lumber", -1350)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-courthouse", true)
		end,
		function(s)
		end			
	},
	OptionTooltips = {"-800 Metal\n-1350 Lumber\nA Courthouse is built in PROVINCE_NAME", ""}
})

DefineGrandStrategyEvent("Build College?", {
	Description = "A master builder has approached you with plans to build a college in PROVINCE_NAME.",
	Conditions = function(s)
		if (
			SyncRand(100) < math.min(5, math.floor(GetFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige") / 20)) -- 5% chance the event happens at all if prestige is at least 100, and then 10% chance that it happens to a particular province, for a total chance of 0.1% of happening if the player has one province
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "metal") >= 900
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "lumber") >= 1500
			and FactionHasTechnologyType(EventFaction, "masonry")
			and FactionHasTechnologyType(EventFaction, "writing")
		) then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (SyncRand(10) == 0 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill") and GetGrandStrategyProvinceData(WorldMapProvinces[province_key].Name, "Modifier", "upgrade-college") == false and GetGrandStrategyProvinceData(WorldMapProvinces[province_key].Name, "Modifier", "upgrade-university") == false) then
					EventProvince = WorldMapProvinces[province_key]
					return true
				end
			end
		end
		return false
	end,
	Persistent = true,
	Options = {"~!Accept", "~!Decline"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "metal", -900)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "lumber", -1500)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-college", true)
		end,
		function(s)
		end			
	},
	OptionTooltips = {"-900 Metal\n-1500 Lumber\nA College is built in PROVINCE_NAME", ""}
})

DefineGrandStrategyEvent("Build University?", {
	Description = "A master builder has approached you with plans to build a university in PROVINCE_NAME.",
	Conditions = function(s)
		if (
			SyncRand(100) < math.min(5, math.floor(GetFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige") / 20)) -- 5% chance the event happens at all if prestige is at least 100, and then 10% chance that it happens to a particular province, for a total chance of 0.1% of happening if the player has one province
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "metal") >= 1500
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "lumber") >= 2250
			and FactionHasTechnologyType(EventFaction, "masonry")
			and FactionHasTechnologyType(EventFaction, "writing")
		) then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (SyncRand(10) == 0 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill") and GetGrandStrategyProvinceData(WorldMapProvinces[province_key].Name, "Modifier", "upgrade-college") and GetGrandStrategyProvinceData(WorldMapProvinces[province_key].Name, "Modifier", "upgrade-university") == false) then
					EventProvince = WorldMapProvinces[province_key]
					return true
				end
			end
		end
		return false
	end,
	Persistent = true,
	Options = {"~!Accept", "~!Decline"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "metal", -1500)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "lumber", -2250)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-college", false)
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-university", true)
		end,
		function(s)
		end			
	},
	OptionTooltips = {"-1500 Metal\n-2250 Lumber\nA University is built in PROVINCE_NAME", ""}
})

DefineGrandStrategyEvent("Build Monument?", {
	Description = "A master builder has approached you with plans to build a monument in PROVINCE_NAME.",
	Conditions = function(s)
		if (
			SyncRand(100) < math.min(5, math.floor(GetFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige") / 20)) -- 5% chance the event happens at all if prestige is at least 100, and then 1% chance that it happens to a particular province, for a total chance of 0.01% of happening if the player has one province (this event shouldn't be common)
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "metal") >= 500
			and FactionHasTechnologyType(EventFaction, "masonry")
		) then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (SyncRand(100) < 1 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber-mill")) then
					EventProvince = WorldMapProvinces[province_key]
					return true
				end
			end
		end
		return false
	end,
	Persistent = true,
	Options = {"~!Accept", "~!Decline"},
	OptionEffects = {
		function(s)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "metal", -500)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 5)
		end,
		function(s)
		end
	},
	OptionTooltips = {"-500 Metal\n+5 Prestige", ""}
})

DefineGrandStrategyEvent("PROVINCE_NAME Assimilates", {
	Description = "The people of PROVINCE_NAME have assimilated into our CULTURE_NAME culture.",
	Conditions = function(s)
		for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
			if (
				GetProvinceCivilization(WorldMapProvinces[province_key].Name) ~= EventFaction.Civilization
				and GetCivilizationData(GetProvinceCivilization(WorldMapProvinces[province_key].Name), "Species") == GetCivilizationData(EventFaction.Civilization, "Species") -- assimilation can only happen between civilizations which belong to the same species
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
			SetProvinceCivilization(EventProvince.Name, EventFaction.Civilization)
		end
	},
	OptionTooltips = {"The culture of PROVINCE_NAME changes to CULTURE_NAME"}
})

DefineGrandStrategyEvent("Smallpox Outbreak in PROVINCE_NAME", {
	Description = "There has been a smallpox outbreak in PROVINCE_NAME! Many are succumbing to the disease.",
	Conditions = function(s)
		for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
			if (
				GetGrandStrategyProvinceData(WorldMapProvinces[province_key].Name, "Modifier", "upgrade-smallpox") == false
				and GetGrandStrategyProvinceData(WorldMapProvinces[province_key].Name, "BordersModifier", "upgrade-smallpox")
				and SyncRand(100) == 0 -- 1% chance of a smallpox outbreak if bordering a smallpox-afflicted province
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
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-smallpox", true)
		end
	},
	OptionTooltips = {"PROVINCE_NAME is afflicted by Smallpox"}
})

DefineGrandStrategyEvent("Smallpox Ceases in PROVINCE_NAME", {
	Description = "The smallpox outbreak in PROVINCE_NAME has finally abated. The toll has been terrifying, but the worst is gone.",
	Conditions = function(s)
		for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
			if (
				GetGrandStrategyProvinceData(WorldMapProvinces[province_key].Name, "Modifier", "upgrade-smallpox")
				and SyncRand(10) == 0 -- 10% chance of the smallpox outbreak ceasing (higher chance than the outbreak erupting so that outbreaks will tend to end completely with time
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
			SetGrandStrategyProvinceData(EventProvince.Name, "Modifier", "upgrade-smallpox", false)
		end
	},
	OptionTooltips = {"PROVINCE_NAME is no longer afflicted by Smallpox"}
})
