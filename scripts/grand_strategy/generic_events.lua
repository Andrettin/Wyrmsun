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
--      (c) Copyright 2015-2020 by Andrettin
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

DefineGrandStrategyEvent("Build Observatory?", {
	Description = "A master builder has approached you with plans to build an observatory in PROVINCE_NAME.",
	Conditions = function(s)
		if (
			SyncRand(100) < math.min(5, math.floor(GetFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige") / 20)) -- 5% chance the event happens at all if prestige is at least 100, and then 1% chance that it happens to a particular province, for a total chance of 0.01% of happening if the player has one province (this event shouldn't be common)
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "copper") >= 500
			and FactionHasTechnologyType(EventFaction, "masonry")
		) then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (SyncRand(100) < 1 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber_mill")) then
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
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", -500)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "research", 5)
		end,
		function(s)
		end
	},
	OptionTooltips = {"-500 Copper\n+5 Research", ""}
})

DefineGrandStrategyEvent("Build Monument?", {
	Description = "A master builder has approached you with plans to build a monument in PROVINCE_NAME.",
	Conditions = function(s)
		if (
			SyncRand(100) < math.min(5, math.floor(GetFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige") / 20)) -- 5% chance the event happens at all if prestige is at least 100, and then 1% chance that it happens to a particular province, for a total chance of 0.01% of happening if the player has one province (this event shouldn't be common)
			and GetFactionResource(EventFaction.Civilization, EventFaction.Name, "copper") >= 500
			and FactionHasTechnologyType(EventFaction, "masonry")
		) then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (SyncRand(100) < 1 and ProvinceHasBuildingClass(WorldMapProvinces[province_key].Name, "lumber_mill")) then
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
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "copper", -500)
			ChangeFactionResource(EventFaction.Civilization, EventFaction.Name, "prestige", 5)
		end,
		function(s)
		end
	},
	OptionTooltips = {"-500 Copper\n+5 Prestige", ""}
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
