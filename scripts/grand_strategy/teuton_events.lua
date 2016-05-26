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

DefineGrandStrategyEvent("Teuton Culture Develops", {
	Description = "With the passage of time, our customs and language have diverged significantly from the general Germanic ones. The West Germanic tongue has become predominant amongst us, and with it the Teuton culture.",
	World = "Earth",
	Conditions = function(s)
		if (
			EventFaction.Civilization == "germanic"
			and FactionHasTechnologyType(EventFaction, "melee-weapon-1") -- must have reached the iron age
			and FactionHasTechnologyType(EventFaction, "bronze-shield")
			and FactionHasTechnologyType(EventFaction, "ranged-projectile-1")
			and FactionHasTechnologyType(EventFaction, "wood-plow")
			and (EventFaction.Name == "Asa Tribe" or EventFaction.Name == "Skeldung Tribe" or EventFaction.Name == "Yngling Tribe") -- the Ynglings shouldn't be able to become Teutons, but let's allow it for now since the other two germanic civilizations are not available for human players
			and (SyncRand(50) < 1 or FactionHasCulture(EventFaction, "teuton"))
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
					GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "germanic"
				) then
					for key, value in pairs(Factions) do
						if (Factions[key].Civilization == "teuton" and GetFactionData(Factions[key].Civilization, Factions[key].Name, "Type") == GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") and ProvinceHasClaim(WorldMapProvinces[province_key].Name, Factions[key].Civilization, Factions[key].Name) and GetFactionProvinceCount(Factions[key]) == 0) then
							FormFactionLua(EventFaction, Factions[key])
							EventFaction = Factions[key]
							found_faction = true
							SetProvinceCivilization(WorldMapProvinces[province_key].Name, "teuton") -- change the culture of only one province, and let cultural spread do the rest
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
					if (Factions[key].Civilization == "teuton" and GetFactionData(Factions[key].Civilization, Factions[key].Name, "Type") == GetFactionData(EventFaction.Civilization, EventFaction.Name, "Type") and GetFactionProvinceCount(Factions[key]) == 0) then
						FormFactionLua(EventFaction, Factions[key])
						EventFaction = Factions[key]
						break
					end
				end
				for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
					if (
						GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "germanic"
					) then
						SetProvinceCivilization(WorldMapProvinces[province_key].Name, "teuton") -- change the culture of only one province, and let cultural spread do the rest
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
})

DefineGrandStrategyEvent("Teuton Culture Spreads", {
	Description = "The people of PROVINCE_NAME have adopted Teutonic culture.",
	World = "Earth",
	Conditions = function(s)
		if (EventFaction.Civilization ~= "goth" and EventFaction.Civilization ~= "norse") then
			for province_i, province_key in ipairs(EventFaction.OwnedProvinces) do
				if (
					GetProvinceCivilization(WorldMapProvinces[province_key].Name) == "germanic"
					and SyncRand(50) < 1
					and ProvinceBordersCulture(WorldMapProvinces[province_key], "teuton")
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
			SetProvinceCivilization(EventProvince.Name, "teuton")
		end
	},
	OptionTooltips = {"The culture of PROVINCE_NAME changes to Teutonic"}
})
