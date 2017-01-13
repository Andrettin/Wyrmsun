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
--      (c) Copyright 2016 by Andrettin
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

DefineGrandStrategyEvent("Finnish Culture Develops", {
	Description = "With the passage of time, our customs and language have diverged significantly from the general Uralic ones. The Finnish tongue has become predominant amongst us, and with it the Finnish culture.",
	World = "Earth",
	Conditions = function(s)
		if (
			EventFaction.Civilization == "uralic"
			and FactionHasTechnologyType(EventFaction, "melee-weapon-1") -- must have reached the iron age
			and FactionHasTechnologyType(EventFaction, "bronze-shield")
			and FactionHasTechnologyType(EventFaction, "ranged-projectile-1")
			and FactionHasTechnologyType(EventFaction, "wood-plow")
			and EventFaction.Name == "uralic-tribe"
			and (SyncRand(50) < 1 or FactionHasCulture(EventFaction, "finnish"))
		) then
			return true
		else
			return false
		end
	end,
	Persistent = true,
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			local found_faction = false
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (
					GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "uralic"
				) then
					for key, value in pairs(Factions) do
						if (Factions[key].Civilization == "finnish" and GetFactionData(Factions[key].Name, "Type") == GetFactionData(EventFaction.Name, "Type") and ProvinceHasClaim(WorldMapProvinces[province_key].Name, Factions[key].Civilization, Factions[key].Name) and GetFactionProvinceCount(Factions[key]) == 0) then
							FormFactionLua(EventFaction, Factions[key])
							EventFaction = Factions[key]
							found_faction = true
							SetProvinceCivilization(WorldMapProvinces[province_key].Name, "finnish") -- change the culture of only one province, and let cultural spread do the rest
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
					if (Factions[key].Civilization == "finnish" and GetFactionData(Factions[key].Name, "Type") == GetFactionData(EventFaction.Name, "Type") and GetFactionProvinceCount(Factions[key]) == 0) then
						FormFactionLua(EventFaction, Factions[key])
						EventFaction = Factions[key]
						break
					end
				end
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "uralic"
					) then
						SetProvinceCivilization(WorldMapProvinces[province_key].Name, "finnish") -- change the culture of only one province, and let cultural spread do the rest
						break
					end
				end
			end
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do -- remove claims from all provinces that are still Uralic, to make it more likely that they will split off
				if (
					GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "uralic"
				) then
					RemoveProvinceClaim(WorldMapProvinces[province_key].Name, EventFaction.Civilization, EventFaction.Name)
				end
			end
		end
	}
})

DefineGrandStrategyEvent("Finnish Culture Spreads", {
	Description = "The people of PROVINCE_NAME have adopted Finnish culture.",
	World = "Earth",
	Conditions = function(s)
		if (EventFaction.Civilization ~= "magyar") then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (
					GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "uralic"
					and SyncRand(50) < 1
					and ProvinceBordersCulture(WorldMapProvinces[province_key], "finnish")
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
			SetProvinceCivilization(EventProvince.Name, "finnish")
		end
	},
	OptionTooltips = {"The culture of PROVINCE_NAME changes to Finnish"}
})

DefineGrandStrategyEvent("Magyar Culture Develops", {
	Description = "With the passage of time, our customs and language have diverged significantly from the general Uralic ones. The Magyar tongue has become predominant amongst us, and with it the Magyar culture.",
	World = "Earth",
	Conditions = function(s)
		if (
			EventFaction.Civilization == "uralic"
			and FactionHasTechnologyType(EventFaction, "melee-weapon-1") -- must have reached the iron age
			and FactionHasTechnologyType(EventFaction, "bronze-shield")
			and FactionHasTechnologyType(EventFaction, "ranged-projectile-1")
			and FactionHasTechnologyType(EventFaction, "wood-plow")
			and EventFaction.Name == "uralic-tribe"
			and (SyncRand(50) < 1 or FactionHasCulture(EventFaction, "magyar"))
		) then
			return true
		else
			return false
		end
	end,
	Persistent = true,
	Options = {"~!OK"},
	OptionEffects = {
		function(s)
			local found_faction = false
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (
					GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "uralic"
				) then
					for key, value in pairs(Factions) do
						if (Factions[key].Civilization == "magyar" and GetFactionData(Factions[key].Name, "Type") == GetFactionData(EventFaction.Name, "Type") and ProvinceHasClaim(WorldMapProvinces[province_key].Name, Factions[key].Civilization, Factions[key].Name) and GetFactionProvinceCount(Factions[key]) == 0) then
							FormFactionLua(EventFaction, Factions[key])
							EventFaction = Factions[key]
							found_faction = true
							SetProvinceCivilization(WorldMapProvinces[province_key].Name, "magyar") -- change the culture of only one province, and let cultural spread do the rest
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
					if (Factions[key].Civilization == "magyar" and GetFactionData(Factions[key].Name, "Type") == GetFactionData(EventFaction.Name, "Type") and GetFactionProvinceCount(Factions[key]) == 0) then
						FormFactionLua(EventFaction, Factions[key])
						EventFaction = Factions[key]
						break
					end
				end
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "uralic"
					) then
						SetProvinceCivilization(WorldMapProvinces[province_key].Name, "magyar") -- change the culture of only one province, and let cultural spread do the rest
						break
					end
				end
			end
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do -- remove claims from all provinces that are still Uralic, to make it more likely that they will split off
				if (
					GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "uralic"
				) then
					RemoveProvinceClaim(WorldMapProvinces[province_key].Name, EventFaction.Civilization, EventFaction.Name)
				end
			end
		end
	}
})

DefineGrandStrategyEvent("Magyar Culture Spreads", {
	Description = "The people of PROVINCE_NAME have adopted Magyar culture.",
	World = "Earth",
	Conditions = function(s)
		if (EventFaction.Civilization ~= "finnish") then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (
					GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "uralic"
					and SyncRand(50) < 1
					and ProvinceBordersCulture(WorldMapProvinces[province_key], "magyar")
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
			SetProvinceCivilization(EventProvince.Name, "magyar")
		end
	},
	OptionTooltips = {"The culture of PROVINCE_NAME changes to Magyar"}
})
