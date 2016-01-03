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

function ChooseFaction(old_civilization, old_faction)
	if (GameRunning and not IsNetworkGame()) then
		SetGamePaused(true)
	elseif (GrandStrategy) then
		GrandStrategyGamePaused = true
	end
	
	local potential_factions
	local faction_list = {}
	local faction_dd
	local chosen_faction
	local current_civilization = GetPlayerData(GetThisPlayer(), "RaceName")
	
	if (old_faction ~= "" and table.getn(GetFactionDevelopsTo(old_civilization, old_faction, current_civilization)) > 0) then
		potential_factions = GetFactionDevelopsTo(old_civilization, old_faction, current_civilization)
	else
		potential_factions = GetCivilizationFactionNames(current_civilization)
	end
	
	for i=1,table.getn(potential_factions) do
		if (GetFactionData(current_civilization, potential_factions[i], "Playable")) then
			if ((GetFactionData(current_civilization, potential_factions[i], "Type") == "polity") == (GetCivilizationClassUnitType("writing", current_civilization) ~= nil and GetPlayerData(GetThisPlayer(), "Allow", GetCivilizationClassUnitType("writing", current_civilization)) == "R")) then -- if player has writing and faction is a polity, or if player doesn't have writing and faction is a tribe
				if (IsNetworkGame() or GetFactionExists(potential_factions[i]) == false) then -- in single-player only factions that aren't already being used can be chosen
					table.insert(faction_list, potential_factions[i])
				end
			end
		end
	end
	
	table.sort(faction_list)

	local menu
	
	if (GrandStrategy == false) then
		menu = WarGameMenu(panel(1))
	else
		menu = WarGrandStrategyGameMenu(panel(1))
		menu:setDrawMenusUnder(true)
	end

	menu:addLabel(_("Choose Your Faction"), 128, 11)
	
	faction_dd = menu:addDropDown(faction_list, (256 / 2 - (152 / 2)), 55 + 26*1,
	function(dd)
		chosen_faction = faction_list[faction_dd:getSelected() + 1]
	end)
	faction_dd:setSize(152, 20)
	
	-- faction effects
	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(228, 192)
	l:setLineWidth(228)
	menu:add(l, 14, 3 + (32 * 4))
	l:setCaption("Default Color: " .. CapitalizeString(GetFactionData(current_civilization, faction_list[faction_dd:getSelected() + 1], "Color")) .. "\n\nEffects: " .. GetFactionEffectsString(current_civilization, faction_list[faction_dd:getSelected() + 1]))
	local function listen()
		l:setCaption("Default Color: " .. CapitalizeString(GetFactionData(current_civilization, faction_list[faction_dd:getSelected() + 1], "Color")) .. "\n\nEffects: " .. GetFactionEffectsString(current_civilization, faction_list[faction_dd:getSelected() + 1]))
	end
	local listener = LuaActionListener(listen)
	menu:addLogicCallback(listener)

	local ok_button = menu:addFullButton("~!OK", "o", 16, 248 - (36 * 0),
		function()
			if (GameRunning and not IsNetworkGame()) then
				SetGamePaused(false)
			end
			NetworkSetFaction(GetThisPlayer(), faction_list[faction_dd:getSelected() + 1])
			menu:stop()
		end
	)
	
	menu:addButton("", "return", -1, -1,
		function()
			if (GameRunning and not IsNetworkGame()) then
				SetGamePaused(false)
			end
			NetworkSetFaction(GetThisPlayer(), faction_list[faction_dd:getSelected() + 1])
			menu:stop()
		end,
		{0, 0}
	)	
	
	if (GameRunning) then
		menu:run(false)
	else
		menu:run()
	end
end
