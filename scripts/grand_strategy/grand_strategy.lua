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
--      (c) Copyright 2014-2022 by Andrettin
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

Attacker = ""
Defender = ""
GrandStrategyEventMap = false
EventFaction = nil
EventProvince = nil

function EndTurn()
	DoGrandStrategyTurn()

	-- if AI has responded to a peace offer of the human player, send a message telling the result
	if (GrandStrategyFaction ~= nil) then
		for key, value in pairs(Factions) do
			if (GetFactionDiplomacyStateProposal(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name) == "peace" and GetFactionDiplomacyState(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name) == "peace") then
				local menu = WarGrandStrategyGameMenu(panel(1))
				menu:setDrawMenusUnder(true)

				menu:addLabel("Peace Offer Accepted!", 128, 11)

				local l = MultiLineLabel()
				l:setFont(Fonts["game"])
				l:setSize(228, 128)
				l:setLineWidth(228)
				menu:add(l, 14, 35)
				l:setCaption("My lord, the " .. GetFactionFullName(Factions[key].Civilization, Factions[key].Name) .. " has accepted our peace offer.")

				menu:addFullButton("~!OK", "o", 16, 248,
					function()
						SetFactionDiplomacyStateProposal(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name, "")
						menu:stop()
					end)

				menu:run()
			elseif (GetFactionDiplomacyStateProposal(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name) == "peace" and GetFactionDiplomacyState(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name) == "war") then
				local menu = WarGrandStrategyGameMenu(panel(1))
				menu:setDrawMenusUnder(true)

				menu:addLabel("Peace Offer Rejected!", 128, 11)

				local l = MultiLineLabel()
				l:setFont(Fonts["game"])
				l:setSize(228, 128)
				l:setLineWidth(228)
				menu:add(l, 14, 35)
				l:setCaption("My lord, the " .. GetFactionFullName(Factions[key].Civilization, Factions[key].Name) .. " has rejected our peace offer!")

				menu:addFullButton("~!OK", "o", 16, 248,
					function()
						SetFactionDiplomacyStateProposal(GrandStrategyFaction.Civilization, GrandStrategyFaction.Name, Factions[key].Civilization, Factions[key].Name, "")
						menu:stop()
					end)

				menu:run()
			end
		end
	end
end

function GetFactionFromName(faction)
	if (faction ~= "") then
		return Factions[string.gsub(faction, "-", "_")]
	else
		return nil
	end
end

function GetFactionProvinceCount(faction)
	if (faction ~= nil) then
		return table.getn(faction.OwnedProvinces)
	else
		return 0
	end
end

function FactionHasTechnologyType(faction, technology_type)
	for i, unitName in ipairs(Units) do
		if (string.find(unitName, "upgrade") ~= nil) then
			if (GetUpgradeData(unitName, "Class") == technology_type and GetFactionTechnology(faction.Civilization, faction.Name, unitName)) then
				return true
			end
		end
	end
	return false
end

function FactionHasBorderWith(faction, faction_to)
	for province_i, key in ipairs(faction.OwnedProvinces) do
		if (ProvinceBordersFaction(WorldMapProvinces[key].Name, faction_to.Civilization, faction_to.Name)) then
			return true
		end
	end
	return false
end

function ProvinceHasBorderWith(province, province_to)
	return ProvinceBordersProvince(province.Name, province_to.Name)
end

function GetFactionMilitaryScore(faction)
	local military_score = 0
	for province_i, key in ipairs(faction.OwnedProvinces) do
		military_score = military_score + GetProvinceMilitaryScore(WorldMapProvinces[key].Name, false, true)
	end
	return military_score
end

function DeclareWar(faction_from, faction_to)
	if (faction_from ~= "" and faction_to ~= "") then
		SetFactionDiplomacyState(GetFactionFromName(faction_from).Civilization, GetFactionFromName(faction_from).Name, GetFactionFromName(faction_to).Civilization, GetFactionFromName(faction_to).Name, "war")
	end

	if (faction_to == GrandStrategyFaction.Name) then -- if the player was declared war on, notify him
		local menu = WarGrandStrategyGameMenu(panel(1))
		menu:setDrawMenusUnder(true)

		menu:addLabel("War Declared!", 128, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(228, 128)
		l:setLineWidth(228)
		menu:add(l, 14, 35)
		l:setCaption("My lord, the " .. GetFactionFullName(GetFactionFromName(faction_from).Civilization, faction_from) .. " has declared war upon us!")

		menu:addFullButton("~!OK", "o", 16, 248,
			function()
				menu:stop()
			end)

		menu:run()
	end
end

function OfferPeace(faction_from, faction_to)
	if (faction_from ~= "" and faction_to ~= "") then
		SetFactionDiplomacyStateProposal(GetFactionFromName(faction_from).Civilization, GetFactionFromName(faction_from).Name, GetFactionFromName(faction_to).Civilization, GetFactionFromName(faction_to).Name, "peace")
	end

	if (faction_to == GrandStrategyFaction.Name) then -- if the player was declared war on, notify him
		local menu = WarGrandStrategyGameMenu(panel(1))
		menu:setDrawMenusUnder(true)

		menu:addLabel("Peace Offered", 128, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(228, 128)
		l:setLineWidth(228)
		menu:add(l, 14, 35)
		l:setCaption("My lord, the " .. GetFactionFullName(GetFactionFromName(faction_from).Civilization, faction_from) .. " has offered us peace. Shall we accept?")

		menu:addFullButton("~!Accept", "a", 16, 248 - (36 * 1),
			function()
				RespondPeaceOffer(faction_from, faction_to, true)
				menu:stop()
			end)
		menu:addFullButton("~!Reject", "r", 16, 248 - (36 * 0),
			function()
				RespondPeaceOffer(faction_from, faction_to, false)
				menu:stop()
			end)

		menu:run()
	end
end

function RespondPeaceOffer(faction_from, faction_to, accept)
	if (accept) then
		SetFactionDiplomacyState(GetFactionFromName(faction_from).Civilization, faction_from, GetFactionFromName(faction_to).Civilization, faction_to, "peace")
	end
	
	if (faction_from ~= GrandStrategyFaction.Name) then
		SetFactionDiplomacyStateProposal(GetFactionFromName(faction_from).Civilization, faction_from, GetFactionFromName(faction_to).Civilization, faction_to, "")
	end
end

function WarGrandStrategyGameMenu(background)
	local menu = MenuScreen()

	if (background == nil) then
		menu:setOpaque(true)
		menu:setBaseColor(dark)
	else
		local bg = ImageWidget(background)
		menu:add(bg, 0, 0)
	end

	function menu:resize(w, h)
		menu:setSize(w, h)
		menu:setPosition((Video.Width - menu:getWidth()) / 2,
      (Video.Height - menu:getHeight()) / 2)
	end

	menu:resize(256, 288)

	AddMenuHelpers(menu)

	return menu
end

function GrandStrategyEvent(faction, event)
	EventFaction = faction
	if (faction == GrandStrategyFaction) then
		local menu = WarGrandStrategyGameMenu(panel(5))
		menu:resize(352, 352)
		menu:setDrawMenusUnder(true)

		local event_name
		if (type(event) == "string") then
			event_name = event
		else
			event_name = event.Name
		end
		if (EventProvince ~= nil) then
			if (string.find(event_name, "CULTURE_NAME") ~= nil) then
				event_name = string.gsub(event_name, "CULTURE_NAME", GetCivilizationData(EventFaction.Civilization, "Adjective"))
			end
		end
		menu:addLabel(event_name, 176, 11)

		local l = MultiLineLabel()
		l:setFont(Fonts["game"])
		l:setSize(324, 208)
		l:setLineWidth(324)
		if (event_icon == nil) then
			menu:add(l, 14, 76)
		else
			menu:add(l, 14, 112)
		end
		local event_description
		if (type(event) == "string") then
			event_description = GetGrandStrategyEventData(event, "Description")
		else
			event_description = event.Description
		end
		if (EventProvince ~= nil) then
			if (string.find(event_description, "CULTURE_NAME") ~= nil) then
				event_description = string.gsub(event_description, "CULTURE_NAME", GetCivilizationData(EventFaction.Civilization, "Adjective"))
			end
		end
		l:setCaption(event_description)

		local event_options
		local event_option_conditions = nil
		local event_option_tooltips
		if (type(event) == "string") then
			event_options = GetGrandStrategyEventData(event, "Options")
			event_option_tooltips = GetGrandStrategyEventData(event, "OptionTooltips")
		else
			event_options = event.Options
			event_option_conditions = event.OptionConditions
			event_option_tooltips = event.OptionTooltips
		end
		for i=1,table.getn(event_options) do
			local event_option_conditions_fulfilled
			if (type(event) == "string") then
				event_option_conditions_fulfilled = GetGrandStrategyEventData(event, "OptionCondition", i)
			else
				event_option_conditions_fulfilled = event_option_conditions == nil or table.getn(event_option_conditions) == 0 or event_option_conditions[i]()
			end
			
			if (event_option_conditions_fulfilled) then
				local option_hotkey = ""		
				if (string.find(event_options[i], "~!") ~= nil) then
					option_hotkey = string.sub(string.match(event_options[i], "~!%a"), 3)
					option_hotkey = string.lower(option_hotkey)
				end

				local b = menu:addFullButton(event_options[i], option_hotkey, 176 - (224 / 2), 352 - 40 * (table.getn(event_options) - (i - 1)),
					function(s)
						menu:stop()
						if (type(event) == "string") then
							GetGrandStrategyEventData(event, "OptionEffect", i)
						else
							event.OptionEffects[i]()
						end
						GameResult = GameNoResult -- this is because many events start scenarios
						CleanPlayers()
						SetPlayerData(GetThisPlayer(), "RaceName", GrandStrategyFaction.Civilization)
					end
				)
				if (event_option_tooltips ~= nil and event_option_tooltips[i] ~= nil) then
					local tooltip = event_option_tooltips[i]
					if (EventProvince ~= nil) then
						if (string.find(tooltip, "CULTURE_NAME") ~= nil) then
							tooltip = string.gsub(tooltip, "CULTURE_NAME", GetCivilizationData(EventFaction.Civilization, "Adjective"))
						end
					end
					b:setTooltip(tooltip)
				end
			end
		end
		
		if (table.getn(event_options) == 1) then -- for events with just one option, allow enter to be used as a way to close the event dialogue
			menu:addButton("", "return", -1, -1,
				function()
					menu:stop()
					if (type(event) == "string") then
						GetGrandStrategyEventData(event, "OptionEffect", 1)
					else
						event.OptionEffects[1]()
					end
					GameResult = GameNoResult -- this is because many events start scenarios
					CleanPlayers()
					SetPlayerData(GetThisPlayer(), "RaceName", GrandStrategyFaction.Civilization)
				end,
				{0, 0}
			)
		end

		menu:run()
	else
--		event.OptionEffects[SyncRand(table.getn(event.OptionEffects)) + 1]() -- AIs choose a random option
		if (type(event) == "string") then
			GetGrandStrategyEventData(event, "OptionEffect", 1)
		else
			event.OptionEffects[1]() -- AIs always choose the first option
		end
	end
	
	if (type(event) ~= "string") then
		if (event.Persistent == nil or event.Persistent == false) then
			for event_key, event_value in pairs(GrandStrategyEvents) do
				if (GrandStrategyEvents[event_key] == event) then
					GrandStrategyEvents[event_key] = nil
				end
			end
		end
	end
end
