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

Load("scripts/grand_strategy/christianity_events.lua")
--Load("scripts/grand_strategy/brazilian_events.lua") -- not active since the map doesn't encompass that region yet (these events will become active when the map is expanded - in a few years? - to accomodate more of the world, when we have expanded to more advanced technological periods

function LoadEvents(world)
	GrandStrategyEvents = nil
	GrandStrategyEvents = {}

	function AddEventTable(event_table)
		for key, value in pairs(event_table) do
			if (world ~= "Save" or GetArrayIncludes(SavedGrandStrategyEvents, key)) then
				GrandStrategyEvents[key] = {}
				GrandStrategyEvents[key]["Name"] = event_table[key].Name
				GrandStrategyEvents[key]["Description"] = event_table[key].Description
				if (event_table[key].Civilization ~= nil) then
					GrandStrategyEvents[key]["Civilization"] = event_table[key].Civilization
				end
				if (event_table[key].Faction ~= nil) then
					GrandStrategyEvents[key]["Faction"] = event_table[key].Faction
				end
				if (event_table[key].FactionType ~= nil) then
					GrandStrategyEvents[key]["FactionType"] = event_table[key].FactionType
				end
				if (event_table[key].TriggeredOnly ~= nil) then
					GrandStrategyEvents[key]["TriggeredOnly"] = event_table[key].TriggeredOnly
				end
				if (event_table[key].Conditions ~= nil) then
					GrandStrategyEvents[key]["Conditions"] = event_table[key].Conditions
				end
				if (event_table[key].MinYear ~= nil) then
					GrandStrategyEvents[key]["MinYear"] = event_table[key].MinYear
				end
				if (event_table[key].MaxYear ~= nil) then
					GrandStrategyEvents[key]["MaxYear"] = event_table[key].MaxYear
				end
				if (event_table[key].RandomChance ~= nil) then
					GrandStrategyEvents[key]["RandomChance"] = event_table[key].RandomChance
				end
				if (event_table[key].RequiredEvents ~= nil) then
					GrandStrategyEvents[key]["RequiredEvents"] = {}
					for second_key, second_value in pairs(event_table[key].RequiredEvents) do
						GrandStrategyEvents[key].RequiredEvents[second_key] = event_table[key].RequiredEvents[second_key]
					end
				end
				if (event_table[key].RequiredEventsOr ~= nil) then
					GrandStrategyEvents[key]["RequiredEventsOr"] = {}
					for second_key, second_value in pairs(event_table[key].RequiredEventsOr) do
						GrandStrategyEvents[key].RequiredEventsOr[second_key] = event_table[key].RequiredEventsOr[second_key]
					end
				end
				if (event_table[key].Commodities ~= nil) then
					GrandStrategyEvents[key]["Commodities"] = {}
					for second_key, second_value in pairs(event_table[key].Commodities) do
						GrandStrategyEvents[key].Commodities[second_key] = event_table[key].Commodities[second_key]
					end
				end
				if (event_table[key].Provinces ~= nil) then
					GrandStrategyEvents[key]["Provinces"] = {}
					for second_key, second_value in pairs(event_table[key].Provinces) do
						GrandStrategyEvents[key].Provinces[second_key] = event_table[key].Provinces[second_key]
					end
				end
				if (event_table[key].SettlementBuildings ~= nil) then
					GrandStrategyEvents[key]["SettlementBuildings"] = {}
					for second_key, second_value in pairs(event_table[key].SettlementBuildings) do
						GrandStrategyEvents[key].SettlementBuildings[second_key] = event_table[key].SettlementBuildings[second_key]
					end
				end
				if (event_table[key].Units ~= nil) then
					GrandStrategyEvents[key]["Units"] = {}
					for second_key, second_value in pairs(event_table[key].Units) do
						GrandStrategyEvents[key].Units[second_key] = event_table[key].Units[second_key]
					end
				end
				if (event_table[key].Heroes ~= nil) then
					GrandStrategyEvents[key]["Heroes"] = {}
					for second_key, second_value in pairs(event_table[key].Heroes) do
						GrandStrategyEvents[key].Heroes[second_key] = event_table[key].Heroes[second_key]
					end
				end
				if (event_table[key].SecondFaction ~= nil) then
					GrandStrategyEvents[key]["SecondFaction"] = event_table[key].SecondFaction
				end
				if (event_table[key].SecondProvinces ~= nil) then
					GrandStrategyEvents[key]["SecondProvinces"] = {}
					for second_key, second_value in pairs(event_table[key].SecondProvinces) do
						GrandStrategyEvents[key].SecondProvinces[second_key] = event_table[key].SecondProvinces[second_key]
					end
				end
				if (event_table[key].Persistent ~= nil) then
					GrandStrategyEvents[key]["Persistent"] = event_table[key].Persistent
				end
				if (event_table[key].Options ~= nil) then
					GrandStrategyEvents[key]["Options"] = {}
					for i=1,table.getn(event_table[key].Options) do
						table.insert(GrandStrategyEvents[key].Options, event_table[key].Options[i])
					end
				end
				if (event_table[key].OptionConditions ~= nil) then
					GrandStrategyEvents[key]["OptionConditions"] = {}
					for i=1,table.getn(event_table[key].OptionConditions) do
						table.insert(GrandStrategyEvents[key].OptionConditions, event_table[key].OptionConditions[i])
					end
				end
				if (event_table[key].OptionEffects ~= nil) then
					GrandStrategyEvents[key]["OptionEffects"] = {}
					for i=1,table.getn(event_table[key].OptionEffects) do
						table.insert(GrandStrategyEvents[key].OptionEffects, event_table[key].OptionEffects[i])
					end
				end
				if (event_table[key].OptionTooltips ~= nil) then
					GrandStrategyEvents[key]["OptionTooltips"] = {}
					for i=1,table.getn(event_table[key].OptionTooltips) do
						table.insert(GrandStrategyEvents[key].OptionTooltips, event_table[key].OptionTooltips[i])
					end
				end
			end
		end
	end
	
	Load("scripts/grand_strategy/generic_events.lua")
	if (world == "Earth" or world == "Random" or world == "Save") then
		Load("scripts/grand_strategy/christianity_events_old.lua")
		Load("scripts/grand_strategy/earth_events.lua")
		Load("scripts/grand_strategy/germanic_events.lua")
		Load("scripts/grand_strategy/latin_events.lua")
		Load("scripts/grand_strategy/norse_events.lua")
		Load("scripts/grand_strategy/teuton_events.lua")
	end
	if (world == "Nidavellir" or world == "Random" or world == "Save") then
		Load("scripts/grand_strategy/nidavellir_events.lua")
	end
end
