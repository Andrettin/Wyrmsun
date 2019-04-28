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
--      (c) Copyright 2014-2019 by Andrettin
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

function RunEncyclopediaMenu()
	Load("scripts/game_concepts.lua")

	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	menu:addLabel(_("~<Encyclopedia~>"), offx + 320, offy + 104 + 36*-2)

	menu:addFullButton(_("~!Civilizations"), "c", offx + 208 + (113 * -1), offy + 104 + 36*0,
		function() RunEncyclopediaCivilizationsMenu() end)

	menu:addFullButton(_("~!Deities"), "d", offx + 208 + (113 * -1), offy + 104 + 36*1,
		function() RunEncyclopediaUnitsMenu("deities") end)

	menu:addFullButton(_("~!Factions"), "f", offx + 208 + (113 * -1), offy + 104 + 36*2,
		function() RunEncyclopediaFactionsCivilizationMenu() end)

	menu:addFullButton(_("~!Game Concepts"), "g", offx + 208 + (113 * -1), offy + 104 + 36*3,
		function() RunEncyclopediaGameConceptsMenu() end)

	menu:addFullButton(_("Magic P~!refixes"), "r", offx + 208 + (113 * -1), offy + 104 + 36*6,
		function() RunEncyclopediaUnitsMenu("item_prefixes") end)

	menu:addFullButton(_("Magic ~!Suffixes"), "s", offx + 208 + (113 * -1), offy + 104 + 36*7,
		function() RunEncyclopediaUnitsMenu("item_suffixes") end)

	menu:addFullButton(_("Runic Suffix~!es"), "e", offx + 208 + (113 * 1), offy + 104 + 36*-1,
		function() RunEncyclopediaUnitsMenu("runic_suffixes") end)

	menu:addFullButton(_("~!Technologies"), "t", offx + 208 + (113 * 1), offy + 104 + 36*0,
		function() RunEncyclopediaUnitsCivilizationMenu("technologies") end)

	menu:addFullButton(_("U~!niques"), "n", offx + 208 + (113 * 1), offy + 104 + 36*2,
		function() RunEncyclopediaUnitsMenu("unique_items") end)

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function()
			menu:stop();
		end
	)

	menu:run()
end

function RunEncyclopediaUnitsCivilizationMenu(state)
	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local height_offset = 2
	if (Video.Height >= 600) then
		height_offset = 2 -- change this to 0 if the number of civilization entries becomes too large
	else
		height_offset = 2
	end

	local civilizations = {}
	
	local function compare_civilization(a, b)
		if (a ~= b and (a == "neutral" or b == "neutral")) then
			return a == "neutral"
		else
			return a < b
		end
	end
	
	if (state ~= "deities" and state ~= "item_prefixes" and state ~= "item_suffixes" and state ~= "runic_suffixes" and state ~= "unique_items") then
		local units_table = Units
		for i, unitName in ipairs(units_table) do
			if (state ~= "technologies" and string.find(unitName, "upgrade") == nil) then
				if (
					(
						GetUnitTypeData(unitName, "Description") ~= ""
						or GetUnitTypeData(unitName, "Background") ~= ""
						or (GetUnitTypeData(unitName, "Item") and GetUnitTypeData(unitName, "Class") ~= "")
					)
					and string.find(unitName, "template") == nil
					and GetUnitTypeData(unitName, "Building") == (state == "buildings")
					and GetUnitTypeData(unitName, "Item") == (state == "items")
				) then
					local element_civilization = GetUnitTypeData(unitName, "Civilization")
					if (element_civilization == "") then
						element_civilization = "neutral"
					end
					if (GetArrayIncludes(civilizations, element_civilization) == false) then
						table.insert(civilizations, element_civilization)
					end
				end
			elseif (state == "technologies" and string.find(unitName, "unit") == nil) then
				if (GetUpgradeData(unitName, "Description") ~= "" or GetUpgradeData(unitName, "Background") ~= "") then
					local element_civilization = GetUpgradeData(unitName, "Civilization")
					if (element_civilization == "") then
						element_civilization = "neutral"
					end
					if (GetArrayIncludes(civilizations, element_civilization) == false) then
						table.insert(civilizations, element_civilization)
					end
				end
			end
		end
	elseif (state == "deities") then
		local deities = GetDeities()
		for i = 1, table.getn(deities) do
			if (GetDeityData(deities[i], "Icon") ~= "" and (GetDeityData(deities[i], "Description") ~= "" or GetDeityData(deities[i], "Background") ~= "")) then
				local element_civilization = GetDeityData(deities[i], "Pantheon")
				if (element_civilization == "") then
					element_civilization = "neutral"
				end
				if (GetArrayIncludes(civilizations, element_civilization) == false) then
					table.insert(civilizations, element_civilization)
				end
			end
		end
	elseif (state == "unique_items") then
		local unique_items = GetUniqueItems()
		for i = 1, table.getn(unique_items) do
			if (GetUniqueItemData(unique_items[i], "Description") ~= "" or GetUniqueItemData(unique_items[i], "Background") ~= "" or GetUniqueItemData(unique_items[i], "Quote") ~= "") then
				local element_civilization = GetUnitTypeData(GetUniqueItemData(unique_items[i], "Type"), "Civilization")
				if (element_civilization == "") then
					element_civilization = "neutral"
				end
				if (GetArrayIncludes(civilizations, element_civilization) == false) then
					table.insert(civilizations, element_civilization)
				end
			end
		end
	end
	
	table.sort(civilizations, compare_civilization)
	
	local civilization_adjectives = {}
	for i = 1, table.getn(civilizations) do
		if (civilizations[i] == "neutral") then
			table.insert(civilization_adjectives, "General")
		else
			table.insert(civilization_adjectives, GetCivilizationData(civilizations[i], "Adjective"))
		end
	end

	local civilization_x = 0
	if (GetTableSize(civilizations) > 20) then
		civilization_x = -2
	elseif (GetTableSize(civilizations) > 10) then
		civilization_x = -1
	end
	local civilization_y = -3

	for i = 1, table.getn(civilizations) do
		menu:addFullButton(_(civilization_adjectives[i] .. " " .. CapitalizeString(state)), "", offx + 208 + (113 * civilization_x), offy + 104 + (36 * (civilization_y + height_offset)),
			function() RunEncyclopediaUnitsMenu(state, civilizations[i]); end)

		if (civilization_y > 5 or (civilization_y > 4 and Video.Height < 600)) then
			civilization_x = civilization_x + 2
			civilization_y = -3
		else
			civilization_y = civilization_y + 1
		end
	end
	
	AddTopEncyclopediaLabel(menu, offx, offy, state)

--	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() menu:stop(); end)

	menu:run()
end

function RunEncyclopediaUnitsMenu(state, civilization)
	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local icon_x = 0
	local icon_y = 0
	if (state ~= "deities" and state ~= "item_prefixes" and state ~= "item_suffixes" and state ~= "runic_suffixes" and state ~= "unique_items") then
		local units_table = Units
		for i, unitName in ipairs(units_table) do
			if (state ~= "technologies" and string.find(unitName, "upgrade") == nil) then
				if (
					(civilization == nil or civilization == GetUnitTypeData(unitName, "Civilization") or (civilization == "neutral" and GetUnitTypeData(unitName, "Civilization") == ""))
					and (
						GetUnitTypeData(unitName, "Description") ~= ""
						or GetUnitTypeData(unitName, "Background") ~= ""
						or (GetUnitTypeData(unitName, "Item") and GetUnitTypeData(unitName, "Class") ~= "")
					)
					and string.find(unitName, "template") == nil
					and GetUnitTypeData(unitName, "Building") == (state == "buildings")
					and GetUnitTypeData(unitName, "Item") == (state == "items")
				) then
					addEncyclopediaIcon(unitName, state, menu, offx + 23 + 4 + (54 * icon_x), offy + 10 + 4 + (46 * (icon_y + 1)))
					if (icon_x >= 10) then
						icon_x = 0
						icon_y = icon_y + 1
					else
						icon_x = icon_x + 1
					end
				end
			elseif (state == "technologies" and string.find(unitName, "unit") == nil and civilization == GetUpgradeData(unitName, "Civilization")) then
				if (GetUpgradeData(unitName, "Description") ~= "" or GetUpgradeData(unitName, "Background") ~= "") then
					addEncyclopediaIcon(unitName, state, menu, offx + 23 + 4 + (54 * icon_x), offy + 10 + 4 + (46 * (icon_y + 1)))
					if (icon_x >= 10) then
						icon_x = 0
						icon_y = icon_y + 1
					else
						icon_x = icon_x + 1
					end
				end
			end
		end
	elseif (state == "item_prefixes" or state == "item_suffixes" or state == "runic_suffixes") then
		local affixes = {}
		if (state == "item_prefixes") then
			affixes = GetItemPrefixes()
		elseif (state == "item_suffixes") then
			affixes = GetItemSuffixes()
		elseif (state == "runic_suffixes") then
			affixes = GetRunicSuffixes()
		end
		table.sort(affixes)
		if (GetTableSize(affixes) > 20) then
			icon_x = -2
		elseif (GetTableSize(affixes) > 10) then
			icon_x = -1
		end
		icon_y = -1
		for i, unitName in ipairs(affixes) do
			addEncyclopediaIcon(unitName, state, menu, offx + 208 + (113 * icon_x), offy + 104 + (36 * icon_y))
			if (icon_y > 7) then
				icon_x = icon_x + 2
				icon_y = -1
			else
				icon_y = icon_y + 1
			end
			if (i >= 30) then
				break
			end
		end
	elseif (state == "deities") then
		local deities = GetDeities()
		
		local function compare_deity(a,b)
			if (GetDeityData(a, "Pantheon") ~= GetDeityData(b, "Pantheon")) then
				return GetDeityData(a, "Pantheon") < GetDeityData(b, "Pantheon")
			elseif (GetDeityData(a, "Major") ~= GetDeityData(b, "Major")) then
				return GetDeityData(a, "Major")
			else
				return a < b
			end
		end
		
		table.sort(deities, compare_deity)
		
		for i = 1, table.getn(deities) do
			if (GetDeityData(deities[i], "Icon") ~= "" and (GetDeityData(deities[i], "Description") ~= "" or GetDeityData(deities[i], "Background") ~= "")) then
				addEncyclopediaIcon(deities[i], state, menu, offx + 23 + 4 + (54 * icon_x), offy + 10 + 4 + (46 * (icon_y + 1)))
				if (icon_x >= 10) then
					icon_x = 0
					icon_y = icon_y + 1
				else
					icon_x = icon_x + 1
				end
			end
		end
	elseif (state == "unique_items") then
		local unique_items = GetUniqueItems()
		for i = 1, table.getn(unique_items) do
			if (GetUniqueItemData(unique_items[i], "Description") ~= "" or GetUniqueItemData(unique_items[i], "Background") ~= "" or GetUniqueItemData(unique_items[i], "Quote") ~= "") then
				addEncyclopediaIcon(unique_items[i], state, menu, offx + 23 + 4 + (54 * icon_x), offy + 10 + 4 + (46 * (icon_y + 1)))
				if (icon_x >= 10) then
					icon_x = 0
					icon_y = icon_y + 1
				else
					icon_x = icon_x + 1
				end
			end
		end
	end

	AddTopEncyclopediaLabel(menu, offx, offy, state)

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() menu:stop(); end)

	menu:run()
end

function addEncyclopediaIcon(unit_name, state, menu, x, y)
	local encyclopedia_icon
	local encyclopedia_icon_pressed
	local encyclopedia_icon_disabled
	local encyclopedia_icon_frame = 0
	local civilization
	local faction
	local tooltip_string = ""
	local tooltip_name = ""
	local tooltip_civilization = ""
	if (string.find(unit_name, "unit") ~= nil) then
		encyclopedia_icon = CPlayerColorGraphic:Get(GetIconData(GetUnitTypeData(unit_name, "Icon"), "File"))
		encyclopedia_icon_frame = GetIconData(GetUnitTypeData(unit_name, "Icon"), "Frame")
		civilization = GetUnitTypeData(unit_name, "Civilization")
		faction = GetUnitTypeData(unit_name, "Faction")
		tooltip_name = _(GetUnitTypeData(unit_name, "Name"))
		if (civilization ~= "" and civilization ~= "neutral") then
			tooltip_civilization = "(" ..  _(GetCivilizationData(civilization, "Display"))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(GetFactionData(faction, "Name"))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	elseif (string.find(unit_name, "upgrade") ~= nil) then
		if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
			encyclopedia_icon = CPlayerColorGraphic:Get(GetIconData(GetUpgradeData(unit_name, "Icon"), "File"))
			encyclopedia_icon_frame = GetIconData(GetUpgradeData(unit_name, "Icon"), "Frame")
		else
			encyclopedia_icon = CGraphic:New("interface/default/button_large_normal.png")
			encyclopedia_icon_pressed = CGraphic:New("interface/default/button_large_pressed.png")
			encyclopedia_icon_grayed = CGraphic:New("interface/default/button_large_grayed.png")
		end
		civilization = GetUpgradeData(unit_name, "Civilization")
		faction = GetUpgradeData(unit_name, "Faction")
		tooltip_name = _(GetUpgradeData(unit_name, "Name"))
		if (civilization ~= "") then
			if (faction ~= "") then
				tooltip_civilization = "(" ..  _(GetFactionData(faction, "Name")) .. ")"
			end
		end
	elseif (state == "deities") then
		encyclopedia_icon = CPlayerColorGraphic:Get(GetIconData(GetDeityData(unit_name, "Icon"), "File"))
		encyclopedia_icon_frame = GetIconData(GetDeityData(unit_name, "Icon"), "Frame")
		civilization = ""
		faction = ""
		tooltip_name = GetDeityData(unit_name, "Name")
		if (GetDeityData(unit_name, "Pantheon") ~= "") then
			tooltip_civilization = "(" ..  _(GetDeityData(unit_name, "Pantheon")) .. ")"
		end
	elseif (state == "unique_items") then
		encyclopedia_icon = CPlayerColorGraphic:Get(GetIconData(GetUniqueItemData(unit_name, "Icon"), "File"))
		encyclopedia_icon_frame = GetIconData(GetUniqueItemData(unit_name, "Icon"), "Frame")
		civilization = ""
		faction = ""
		tooltip_name = GetUniqueItemData(unit_name, "Name")
		if (civilization ~= "" and civilization ~= "neutral") then
			tooltip_civilization = "(" ..  _(GetCivilizationData(civilization, "Display"))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(GetFactionData(faction, "Name"))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	end
	
	tooltip_string = tooltip_name
	if (tooltip_civilization ~= "") then
		tooltip_string = tooltip_string .. " " .. tooltip_civilization
	end
	
	encyclopedia_icon:Load()
	if not (encyclopedia_icon_pressed) then
		encyclopedia_icon_pressed = encyclopedia_icon
	else
		encyclopedia_icon_pressed:Load()
	end
	if not (encyclopedia_icon_disabled) then
		encyclopedia_icon_disabled = encyclopedia_icon
	else
		encyclopedia_icon_disabled:Load()
	end
	local encyclopedia_icon_x_origin = (encyclopedia_icon_frame * encyclopedia_icon:getWidth()) % encyclopedia_icon:getGraphicWidth()
	local encyclopedia_icon_y_origin = math.floor((encyclopedia_icon_frame * encyclopedia_icon:getWidth()) / encyclopedia_icon:getGraphicWidth()) * encyclopedia_icon:getHeight()
	local b
	local playercolor
	if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
		if (civilization ~= "" and faction ~= "") then
			playercolor = GetFactionData(faction, "PrimaryColor")
		elseif (civilization ~= "") then
			playercolor = GetCivilizationData(civilization, "DefaultPlayerColor")
		else
			playercolor = "gray"
		end
		b = PlayerColorImageButton("", playercolor)
	else
		b = ImageButton(tooltip_name)
	end
	b:setActionCallback(
		function()
			PlaySound("click")
			
			OpenEncyclopediaUnitEntry(unit_name, state)
		end
	)
	menu:add(b, x, y)
	b:setImageOrigin(encyclopedia_icon_x_origin, encyclopedia_icon_y_origin)
	b:setNormalImage(encyclopedia_icon)
	b:setPressedImage(encyclopedia_icon_pressed)
	b:setDisabledImage(encyclopedia_icon_disabled)
	b:setSize(encyclopedia_icon:getWidth(), encyclopedia_icon:getHeight())
	b:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
	if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
		b:setFrameImage(Preference.IconFrameG)
		b:setPressedFrameImage(Preference.PressedIconFrameG)
		b:setTooltip(tooltip_string)
	else
		b:setBaseColor(gcn.Color(0,0,0,0))
		b:setForegroundColor(gcn.Color(0,0,0,0))
		b:setBackgroundColor(gcn.Color(0,0,0,0))
	end
	return b
end

function OpenEncyclopediaUnitEntry(unit_name, state)
	if (state ~= "deities" and state ~= "item_prefixes" and state ~= "item_suffixes" and state ~= "runic_suffixes" and state ~= "unique_items") then
		if (state ~= "technologies" and string.find(unit_name, "upgrade") == nil) then
			if (
				(
					GetUnitTypeData(unit_name, "Description") == ""
					and GetUnitTypeData(unit_name, "Background") == ""
					and (GetUnitTypeData(unit_name, "Item") == false or GetUnitTypeData(unit_name, "Class") == "")
				)
			) then
				if (GetUnitTypeData(unit_name, "Parent") ~= "") then
					OpenEncyclopediaUnitEntry(GetUnitTypeData(unit_name, "Parent"), state)
				end
				
				return;
			end
		elseif (state == "technologies" and string.find(unit_name, "unit") == nil) then
			if (GetUpgradeData(unit_name, "Description") == "" and GetUpgradeData(unit_name, "Background") == "") then
				return;
			end
		end
	end

	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground(GetUnitBackground(unit_name, state)))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 600) / 2

	local encyclopedia_icon
	local encyclopedia_icon_frame = 0
	local civilization
	local faction
	local tooltip_name = ""
	local tooltip_civilization = ""
	if (string.find(unit_name, "unit") ~= nil) then
		encyclopedia_icon = CPlayerColorGraphic:Get(GetIconData(GetUnitTypeData(unit_name, "Icon"), "File"))
		encyclopedia_icon_frame = GetIconData(GetUnitTypeData(unit_name, "Icon"), "Frame")
		civilization = GetUnitTypeData(unit_name, "Civilization")
		faction = GetUnitTypeData(unit_name, "Faction")
		tooltip_name = _(GetUnitTypeData(unit_name, "Name"))
		if (civilization ~= "" and civilization ~= "neutral") then
			tooltip_civilization = "(" ..  _(GetCivilizationData(civilization, "Display"))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(GetFactionData(faction, "Name"))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	elseif (string.find(unit_name, "upgrade") ~= nil) then
		if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
			encyclopedia_icon = CPlayerColorGraphic:Get(GetIconData(GetUpgradeData(unit_name, "Icon"), "File"))
			encyclopedia_icon_frame = GetIconData(GetUpgradeData(unit_name, "Icon"), "Frame")
		else
			encyclopedia_icon = CGraphic:New("interface/default/button_large_normal.png")
			encyclopedia_icon_grayed = CGraphic:New("interface/default/button_large_grayed.png")
		end
		civilization = GetUpgradeData(unit_name, "Civilization")
		faction = GetUpgradeData(unit_name, "Faction")
		tooltip_name = _(GetUpgradeData(unit_name, "Name"))
		if (civilization ~= "" and civilization ~= "neutral") then
			tooltip_civilization = "(" ..  _(GetCivilizationData(civilization, "Display"))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(GetFactionData(faction, "Name"))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	elseif (state == "deities") then
		encyclopedia_icon = CPlayerColorGraphic:Get(GetIconData(GetDeityData(unit_name, "Icon"), "File"))
		encyclopedia_icon_frame = GetIconData(GetDeityData(unit_name, "Icon"), "Frame")
		civilization = ""
		faction = ""
		tooltip_name = GetDeityData(unit_name, "Name")
		if (GetDeityData(unit_name, "Pantheon") ~= "") then
			tooltip_civilization = "(" ..  _(GetDeityData(unit_name, "Pantheon")) .. ")"
		end
	elseif (state == "unique_items") then
		encyclopedia_icon = CPlayerColorGraphic:Get(GetIconData(GetUniqueItemData(unit_name, "Icon"), "File"))
		encyclopedia_icon_frame = GetIconData(GetUniqueItemData(unit_name, "Icon"), "Frame")
		civilization = ""
		faction = ""
		tooltip_name = GetUniqueItemData(unit_name, "Name")
		if (civilization ~= "" and civilization ~= "neutral") then
			tooltip_civilization = "(" ..  _(GetCivilizationData(civilization, "Display"))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(GetFactionData(faction, "Name"))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	end
	encyclopedia_icon:Load()
	local encyclopedia_icon_x_origin = (encyclopedia_icon_frame * encyclopedia_icon:getWidth()) % encyclopedia_icon:getGraphicWidth()
	local encyclopedia_icon_y_origin = math.floor((encyclopedia_icon_frame * encyclopedia_icon:getWidth()) / encyclopedia_icon:getGraphicWidth()) * encyclopedia_icon:getHeight()
	local playercolor
	if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
		if (civilization ~= "" and faction ~= "") then
			playercolor = GetFactionData(faction, "PrimaryColor")
		elseif (civilization ~= "") then
			playercolor = GetCivilizationData(civilization, "DefaultPlayerColor")
		else
			playercolor = "gray"
		end
	end

	if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
		local menu_image = PlayerColorImageButton("", playercolor)
		menu_image:setImageOrigin(encyclopedia_icon_x_origin, encyclopedia_icon_y_origin)
		menu:add(menu_image, (Video.Width / 2) - 23, offy + 104 + 36*-1)
		menu_image:setNormalImage(encyclopedia_icon)
		menu_image:setPressedImage(encyclopedia_icon_pressed)
		menu_image:setDisabledImage(encyclopedia_icon_disabled)
		menu_image:setSize(encyclopedia_icon:getWidth(), encyclopedia_icon:getHeight())
		menu_image:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
		menu_image:setFrameImage(Preference.IconFrameG)
		menu_image:setPressedFrameImage(Preference.PressedIconFrameG)
	end
	menu:addLabel("~<" .. tooltip_name .. "~>", offx + 320, offy + 104 + 36*-2, nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64, Video.Height / 2)
	l:setLineWidth(Video.Width - 64)
	menu:add(l, 32, offy + 104 + 36*0 + 18)
	local civilization = ""
	local faction = ""
	local unit_type_type = ""
	local unit_type_class = ""
	local description = ""
	local effects = ""
	local applies_to = ""
	local quote = ""
	local background = ""
	if (string.find(unit_name, "unit") ~= nil) then
		if (GetUnitTypeData(unit_name, "Civilization") ~= "" and GetUnitTypeData(unit_name, "Civilization") ~= "neutral") then
			civilization = _("Civilization:") .. " " .. _(GetCivilizationData(GetUnitTypeData(unit_name, "Civilization"), "Display")) .. "\n\n"
			if (GetUnitTypeData(unit_name, "Faction") ~= "") then
				faction = _("Faction:") .. " " .. _(GetFactionData(GetUnitTypeData(unit_name, "Faction"), "Name")) .. "\n\n"
			end
		end
		if (GetUnitTypeData(unit_name, "Class") ~= "") then
			unit_type_class = _("Class") .. ": " .. _(FullyCapitalizeString(string.gsub(GetUnitTypeData(unit_name, "Class"), "-", " "))) .. "\n\n"
		end
		if (GetUnitTypeData(unit_name, "Description") ~= "") then
			description = _("Description") .. ": " .. _(GetUnitTypeData(unit_name, "Description")) .. "\n\n"
		end
		if (GetUnitTypeData(unit_name, "Quote") ~= "") then
			quote = _("Quote") .. ": " .. _(GetUnitTypeData(unit_name, "Quote")) .. "\n\n"
		end
		if (GetUnitTypeData(unit_name, "Item") == false and GetUnitTypeStatsString(unit_name) ~= "") then
			local costs_string = ""
			local first_cost = true
			for i = 1, (MaxCosts - 1) do
				local resource_name = GetResourceNameById(i)
				if (GetUnitTypeData(unit_name, "Costs", resource_name) > 0) then
					if (first_cost) then
						first_cost = false
					else
						costs_string = costs_string .. ", "
					end
					costs_string = costs_string .. GetUnitTypeData(unit_name, "Costs", resource_name) .. " " .. CapitalizeString(resource_name)
				end
			end
			if (GetUnitTypeData(unit_name, "Demand") > 0) then
				if (first_cost) then
					first_cost = false
				else
					costs_string = costs_string .. ", "
				end
				costs_string = costs_string .. GetUnitTypeData(unit_name, "Demand") .. " Food"
			end
			if (costs_string ~= "") then
				effects = _("Costs") .. ": " .. costs_string .. ".\n\n"
			end
			effects = effects .. _("Stats") .. ": " .. GetUnitTypeStatsString(unit_name) .. ".\n\n"
		elseif (GetUnitTypeData(unit_name, "Item") and GetItemEffectsString(unit_name) ~= "") then
			effects = _("Effects:") .. " " .. GetItemEffectsString(unit_name) .. ".\n\n"
		end
		if (GetUnitTypeData(unit_name, "Background") ~= "") then
			background = _("Background") .. ": " .. _(GetUnitTypeData(unit_name, "Background")) .. "\n\n"
		end
	elseif (string.find(unit_name, "upgrade") ~= nil) then
		if (GetUpgradeData(unit_name, "Civilization") ~= "" and GetUpgradeData(unit_name, "Civilization") ~= "neutral") then
			civilization = _("Civilization") .. ": " .. _(GetCivilizationData(GetUpgradeData(unit_name, "Civilization"), "Display")) .. "\n\n"
			if (GetUpgradeData(unit_name, "Faction") ~= "") then
				faction = _("Faction") .. ": " .. _(GetFactionData(GetUpgradeData(unit_name, "Faction"), "Name")) .. "\n\n"
			end
		end
		if (GetUpgradeData(unit_name, "Class") ~= "") then
			unit_type_class = _("Class") .. ": " .. _(FullyCapitalizeString(string.gsub(GetUpgradeData(unit_name, "Class"), "-", " "))) .. "\n\n"
		end
		if (GetUpgradeData(unit_name, "Description") ~= "") then
			description = _("Description") .. ": " .. _(GetUpgradeData(unit_name, "Description")) .. "\n\n"
		end
		if (GetUpgradeData(unit_name, "Quote") ~= "") then
			quote = _("Quote") .. ": " .. _(GetUpgradeData(unit_name, "Quote")) .. "\n\n"
		end
		if (string.find(unit_name, "prefix") ~= nil or string.find(unit_name, "suffix") ~= nil) then
			effects = _("Effects") .. ": " .. GetUpgradeEffectsString(unit_name) .. ".\n\n"
			applies_to = _("Available For") .. ": "
			local applies_to_items = GetUpgradeData(unit_name, "AppliesTo")
			table.sort(applies_to_items)
			for i=1,table.getn(applies_to_items) do
				if (i > 1) then
					applies_to = applies_to .. ", "
				end
				if (string.find(applies_to_items[i], "unit") ~= nil) then
					applies_to = applies_to .. _(GetPluralForm(GetUnitTypeData(applies_to_items[i], "Name")))
					if (GetUnitTypeData(applies_to_items[i], "Civilization") ~= "" and GetUnitTypeData(applies_to_items[i], "Faction") ~= "") then
						applies_to = applies_to .. " (" .. _(GetCivilizationData(GetUnitTypeData(applies_to_items[i], "Civilization"), "Display")) .. ": " .. _(GetFactionData(GetUnitTypeData(applies_to_items[i], "Faction"), "Name")) .. ")"
					elseif (GetUnitTypeData(applies_to_items[i], "Civilization") ~= "" and GetUnitTypeData(applies_to_items[i], "Civilization") ~= "neutral") then
						applies_to = applies_to .. " (" .. _(GetCivilizationData(GetUnitTypeData(applies_to_items[i], "Civilization"), "Display")) .. ")"
					end
				else
					applies_to = applies_to .. _(GetPluralForm(FullyCapitalizeString(string.gsub(applies_to_items[i], "-", " "))))
				end
			end
			applies_to = applies_to .. ".\n\n"
		end
		if (GetUpgradeData(unit_name, "Background") ~= "") then
			background = _("Background") .. ": " .. _(GetUpgradeData(unit_name, "Background")) .. "\n\n"
		end
	elseif (state == "heroes") then
		trigger_hero = unit_name
	
--		if (GetCharacterData(unit_name, "BirthDate") ~= "") then
--			description = description .. _("Birth Date") .. ": " .. GetCharacterData(unit_name, "BirthDate") .. "\n\n"
--		end
	elseif (state == "deities") then
		if (GetDeityData(unit_name, "Pantheon") ~= "") then
			description = description .. _("Pantheon") .. ": " .. _(GetDeityData(unit_name, "Pantheon")) .. "\n\n"
		end
		if (GetDeityData(unit_name, "HomePlane") ~= "") then
			description = description .. _("Home Plane") .. ": " .. _(GetPlaneData(GetDeityData(unit_name, "HomePlane"), "Name")) .. "\n\n"
		end
		description = description .. _("Rank") .. ": "
		if (GetDeityData(unit_name, "Major")) then
			description = description .. _("Major") .. "\n\n"
		else
			description = description .. _("Minor") .. "\n\n"
		end
		
		local domains = GetDeityData(unit_name, "Domains")
		table.sort(domains)
		if (table.getn(domains) > 0) then
			description = description .. _("Portfolio") .. ": "
			for i=1,table.getn(domains) do
				description = description .. _(GetDeityDomainData(domains[i], "Name"))
				if (i < table.getn(domains)) then
					description = description .. ", "
				end
			end
			description = description .. "\n\n"
		end
		
		local civilizations = GetDeityData(unit_name, "Civilizations")
		table.sort(civilizations)
		if (table.getn(civilizations) > 0) then
			description = description .. _("Civilizations") .. ": "
			for i=1,table.getn(civilizations) do
				description = description .. _(GetCivilizationData(civilizations[i], "Display"))
				if (i < table.getn(civilizations)) then
					description = description .. ", "
				end
			end
			description = description .. "\n\n"
		end
		
		local alternate_names = {}
		for i=1,table.getn(civilizations) do
			if (GetDeityData(unit_name, "CulturalName", civilizations[i]) ~= "" and GetDeityData(unit_name, "CulturalName", civilizations[i]) ~= GetDeityData(unit_name, "Name")) then
				table.insert(alternate_names, GetDeityData(unit_name, "CulturalName", civilizations[i]) .. " (" .. GetCivilizationData(civilizations[i], "Display") .. ")")
			end
		end
		table.sort(alternate_names)
		if (table.getn(alternate_names) > 0) then
			description = description .. _("Alternate Names") .. ": "
			for i=1,table.getn(alternate_names) do
				description = description .. _(alternate_names[i])
				if (i < table.getn(alternate_names)) then
					description = description .. ", "
				end
			end
			description = description .. "\n\n"
		end
		
		local abilities = GetDeityData(unit_name, "Abilities")
		table.sort(abilities)
		if (table.getn(abilities) > 0) then
			description = description .. _("Spells") .. ": "
			for i=1,table.getn(abilities) do
				description = description .. _(GetUpgradeData(abilities[i], "Name"))
				if (i < table.getn(abilities)) then
					description = description .. ", "
				end
			end
			description = description .. "\n\n"
		end
		
		if (GetDeityData(unit_name, "Description") ~= "") then
			description = description .. _("Description") .. ": " .. _(GetDeityData(unit_name, "Description")) .. "\n\n"
		end
		if (GetDeityData(unit_name, "Quote") ~= "") then
			quote = _("Quote") .. ": " .. _(GetDeityData(unit_name, "Quote")) .. "\n\n"
		end
		if (GetDeityData(unit_name, "Background") ~= "") then
			background = _("Background") .. ": " .. _(GetDeityData(unit_name, "Background")) .. "\n\n"
		end
	elseif (state == "unique_items") then
		if (GetUniqueItemData(unit_name, "Type") ~= "") then
			unit_type_type = _("Type") .. ": " .. _(GetUnitTypeData(GetUniqueItemData(unit_name, "Type"), "Name")) .. "\n\n"
		end
		if (GetUniqueItemData(unit_name, "Set") ~= "") then
			unit_type_type = unit_type_type .. _("Set") .. ": " .. _(GetUpgradeData(GetUniqueItemData(unit_name, "Set"), "Name")) .. "\n\n"
		end
		if (GetUniqueItemData(unit_name, "Description") ~= "") then
			description = _("Description") .. ": " .. _(GetUniqueItemData(unit_name, "Description")) .. "\n\n"
			if (GetUniqueItemData(unit_name, "Set") ~= "" and GetUpgradeData(GetUniqueItemData(unit_name, "Set"), "Description") ~= "") then
				description = description .. _(GetUpgradeData(GetUniqueItemData(unit_name, "Set"), "Description")) .. "\n\n"
			end
		end
		if (GetUniqueItemData(unit_name, "MagicLevel") > 0) then
			effects = _("Magic Level") .. ": " .. GetUniqueItemData(unit_name, "MagicLevel") .. "\n\n"
		end
		if (GetUniqueItemEffectsString(unit_name) ~= "") then
			effects = effects .. _("Effects") .. ": " .. GetUniqueItemEffectsString(unit_name) .. ".\n\n"
		end
		if (GetUniqueItemData(unit_name, "Quote") ~= "") then
			quote = _("Quote") .. ": " .. _(GetUniqueItemData(unit_name, "Quote")) .. "\n\n"
		end
		if (GetUniqueItemData(unit_name, "Background") ~= "") then
			background = _("Background") .. ": " .. _(GetUniqueItemData(unit_name, "Background")) .. "\n\n"
			if (GetUniqueItemData(unit_name, "Set") ~= "" and GetUpgradeData(GetUniqueItemData(unit_name, "Set"), "Background") ~= "") then
				background = background .. _(GetUpgradeData(GetUniqueItemData(unit_name, "Set"), "Background")) .. "\n\n"
			end
		end
	end
	l:setCaption(civilization .. faction .. unit_type_type .. unit_type_class .. description .. quote .. effects .. applies_to .. background)

	local has_family_tree_button = false
	if (state == "heroes") then
		--[[
		menu:addFullButton(_("~!Family Tree"), "f", offx + 208, offy + 104 + (36 * 11),
			function()
				RunFamilyTreeMenu(unit_name);
			end
		)
		has_family_tree_button = true
		--]]
	end
	
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 12),
		function() menu:stop(); end)
	menu:run()
end

function RunEncyclopediaGameConceptsMenu()

	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end
	
	local game_concepts = GameConcepts

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local height_offset = 2
	if (Video.Height >= 600) then
		height_offset = 2 -- change this to 0 if the number of game concept entries becomes too large
	else
		height_offset = 2
	end
	
	AddTopEncyclopediaLabel(menu, offx, offy, "game_concepts", height_offset)

	local game_concept_x = 0
	if (GetTableSize(game_concepts) > 20) then
		game_concept_x = -2
	elseif (GetTableSize(game_concepts) > 10) then
		game_concept_x = -1
	end
	local game_concept_y = -3

	for game_concept_key, game_concept_value in pairsByKeys(game_concepts) do
		local game_concept_hotkey = ""		
		if (string.find(_(game_concepts[game_concept_key].Name), "~!") ~= nil) then
			game_concept_hotkey = string.sub(string.match(_(game_concepts[game_concept_key].Name), "~!%a"), 3)
			game_concept_hotkey = string.lower(game_concept_hotkey)
		end
		menu:addFullButton(_(game_concepts[game_concept_key].Name), game_concept_hotkey, offx + 208 + (113 * game_concept_x), offy + 104 + (36 * (game_concept_y + height_offset)),
			function() OpenEncyclopediaGameConceptEntry(game_concept_key); end)

		if (game_concept_y > 5) then
			game_concept_x = game_concept_x + 2
			game_concept_y = -3
		else
			game_concept_y = game_concept_y + 1
		end
	end

--	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() menu:stop(); end)

	menu:run()
end

function OpenEncyclopediaGameConceptEntry(game_concept_key)
	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local game_concepts = GameConcepts

	local encyclopedia_entry_menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	encyclopedia_entry_menu:addLabel("~<" .. game_concepts[game_concept_key].Name .. "~>", offx + 320, offy + 104 + 36*-2, nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64, Video.Height / 2)
	l:setLineWidth(Video.Width - 64)
	encyclopedia_entry_menu:add(l, 32, offy + 104 + 36*0)
	local description = ""
	if (game_concepts[game_concept_key].Description ~= nil) then
		description = _("Description") .. ": " .. game_concepts[game_concept_key].Description
	end
	l:setCaption(description)
			
	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() encyclopedia_entry_menu:stop(); end)
	encyclopedia_entry_menu:run()
end

function RunEncyclopediaCivilizationsMenu()

	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local height_offset = 2
	if (Video.Height >= 600) then
		height_offset = 2 -- change this to 0 if the number of civilization entries becomes too large
	else
		height_offset = 2
	end
	
	AddTopEncyclopediaLabel(menu, offx, offy, "civilizations", height_offset)

	local potential_civilizations = GetCivilizations()
	local civilizations = {}
	
	for i = 1, table.getn(potential_civilizations) do
		if (GetCivilizationData(potential_civilizations[i], "Description") ~= "") then
			table.insert(civilizations, potential_civilizations[i])
		end
	end
	table.sort(civilizations)

	local civilization_x = 0
	if (GetTableSize(civilizations) > 20) then
		civilization_x = -2
	elseif (GetTableSize(civilizations) > 10) then
		civilization_x = -1
	end
	local civilization_y = -3

	for i = 1, table.getn(civilizations) do
		menu:addFullButton(_(GetCivilizationData(civilizations[i], "Display")), "", offx + 208 + (113 * civilization_x), offy + 104 + (36 * (civilization_y + height_offset)),
			function() OpenEncyclopediaCivilizationEntry(civilizations[i]); end)

		if (civilization_y > 5 or (civilization_y > 4 and Video.Height < 600)) then
			civilization_x = civilization_x + 2
			civilization_y = -3
		else
			civilization_y = civilization_y + 1
		end
	end

--	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() menu:stop(); end)

	menu:run()
end

function OpenEncyclopediaCivilizationEntry(civilization)
	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local encyclopedia_entry_menu = WarMenu(nil, GetBackground(GetCivilizationBackground(civilization)))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	encyclopedia_entry_menu:addLabel("~<" .. GetCivilizationData(civilization, "Display") .. "~>", offx + 320, offy + 104 + 36*-2, nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64, Video.Height / 2)
	l:setLineWidth(Video.Width - 64)
	encyclopedia_entry_menu:add(l, 32, offy + 104 + 36*0)
	local description = ""
	local develops_from = GetCivilizationData(civilization, "DevelopsFrom")
	table.sort(develops_from)
	if (table.getn(develops_from) > 0) then
		description = description .. "Develops From: "
		for i=1,table.getn(develops_from) do
			description = description .. GetCivilizationData(develops_from[i], "Display")
			if (i < table.getn(develops_from)) then
				description = description .. ", "
			end
		end
		description = description .. "\n\n"
	end
	local develops_to = GetCivilizationData(civilization, "DevelopsTo")
	table.sort(develops_to)
	if (table.getn(develops_to) > 0) then
		description = description .. "Develops To: "
		for i=1,table.getn(develops_to) do
			description = description .. GetCivilizationData(develops_to[i], "Display")
			if (i < table.getn(develops_to)) then
				description = description .. ", "
			end
		end
		description = description .. "\n\n"
	end
	if (GetCivilizationData(civilization, "Description") ~= "") then
		description = description .. _("Description") .. ": " .. _(GetCivilizationData(civilization, "Description")) .. "\n\n"
	end
	if (GetCivilizationData(civilization, "Quote") ~= "") then
		description = description .. _("Quote") .. ": " .. _(GetCivilizationData(civilization, "Quote")) .. "\n\n"
	end
	if (GetCivilizationData(civilization, "Background") ~= "") then
		description = description .. _("Background") .. ": " .. _(GetCivilizationData(civilization, "Background")) .. "\n\n"
	end
	l:setCaption(description)
			
	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() encyclopedia_entry_menu:stop(); end)
	encyclopedia_entry_menu:run()
end

function RunEncyclopediaFactionsCivilizationMenu()
	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local height_offset = 2
	if (Video.Height >= 600) then
		height_offset = 2 -- change this to 0 if the number of civilization entries becomes too large
	else
		height_offset = 2
	end
	
	AddTopEncyclopediaLabel(menu, offx, offy, "factions", height_offset)

	local potential_civilizations = GetCivilizations()
	local civilizations = {}
	
	for i = 1, table.getn(potential_civilizations) do
		local potential_factions = GetCivilizationData(potential_civilizations[i], "Factions")
		local factions = {}
		for j = 1, table.getn(potential_factions) do
			if (GetFactionData(potential_factions[j], "Description") ~= "" or GetFactionData(potential_factions[j], "Background") ~= "" or GetFactionData(potential_factions[j], "Quote") ~= "") then
				table.insert(factions, potential_factions[j])
			end
		end
		if (table.getn(factions) > 0) then
			table.insert(civilizations, potential_civilizations[i])
		end
	end
	table.sort(civilizations)

	local civilization_x = 0
	if (GetTableSize(civilizations) > 20) then
		civilization_x = -2
	elseif (GetTableSize(civilizations) > 10) then
		civilization_x = -1
	end
	local civilization_y = -3

	for i = 1, table.getn(civilizations) do
		menu:addFullButton(_(GetCivilizationData(civilizations[i], "Adjective") .. " " .. _("Factions")), "", offx + 208 + (113 * civilization_x), offy + 104 + (36 * (civilization_y + height_offset)),
			function() RunEncyclopediaFactionsMenu(civilizations[i]); end)

		if (civilization_y > 5 or (civilization_y > 4 and Video.Height < 600)) then
			civilization_x = civilization_x + 2
			civilization_y = -3
		else
			civilization_y = civilization_y + 1
		end
	end

--	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() menu:stop(); end)

	menu:run()
end

function RunEncyclopediaFactionsMenu(civilization)

	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local height_offset = 2
	if (Video.Height >= 600) then
		height_offset = 2 -- change this to 0 if the number of faction entries becomes too large
	else
		height_offset = 2
	end
	
	AddTopEncyclopediaLabel(menu, offx, offy, "factions", height_offset)
	
	local potential_factions = GetCivilizationData(civilization, "Factions")
	local factions = {}
	
	for i = 1, table.getn(potential_factions) do
		if (GetFactionData(potential_factions[i], "Description") ~= "" or GetFactionData(potential_factions[i], "Background") ~= "" or GetFactionData(potential_factions[i], "Quote") ~= "") then
			table.insert(factions, potential_factions[i])
		end
	end
	table.sort(factions)

	local faction_x = 0
	if (GetTableSize(factions) > 20) then
		faction_x = -2
	elseif (GetTableSize(factions) > 10) then
		faction_x = -1
	end
	local faction_y = -3

	for i = 1, table.getn(factions) do
		menu:addFullButton(_(GetFactionData(factions[i], "Name")), "", offx + 208 + (113 * faction_x), offy + 104 + (36 * (faction_y + height_offset)),
			function() OpenEncyclopediaFactionEntry(civilization, factions[i]); end)

		if (faction_y > 5 or (faction_y > 4 and Video.Height < 600)) then
			faction_x = faction_x + 2
			faction_y = -3
		else
			faction_y = faction_y + 1
		end
	end

--	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() menu:stop(); end)

	menu:run()
end

function OpenEncyclopediaFactionEntry(civilization, faction)
	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local encyclopedia_entry_menu = WarMenu(nil, GetBackground(GetCivilizationBackground(civilization)))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	encyclopedia_entry_menu:addLabel("~<" .. GetFactionData(faction, "Name") .. "~>", offx + 320, offy + 104 + 36*-2, nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64, Video.Height / 2)
	l:setLineWidth(Video.Width - 64)
	encyclopedia_entry_menu:add(l, 32, offy + 104 + 36*0)
	local effects = ""
	if (GetFactionData(faction, "FactionUpgrade") ~= "") then
		effects = GetUpgradeData(GetFactionData(faction, "FactionUpgrade"), "EffectsString")
	end
	local description = ""
	description = "Color: " .. CapitalizeString(GetFactionData(faction, "PrimaryColor")) .. "\n\n"
	if (effects ~= "") then
		description = description .. "Effects: " .. effects .. ".\n\n"
	end
	if (GetFactionData(faction, "Description") ~= "") then
		description = description .. _("Description") .. ": " .. _(GetFactionData(faction, "Description")) .. "\n\n"
	end
	if (GetFactionData(faction, "Quote") ~= "") then
		description = description .. _("Quote") .. ": " .. _(GetFactionData(faction, "Quote")) .. "\n\n"
	end
	if (GetFactionData(faction, "Background") ~= "") then
		description = description .. _("Background") .. ": " .. _(GetFactionData(faction, "Background")) .. "\n\n"
	end
	l:setCaption(description)
			
	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() encyclopedia_entry_menu:stop(); end)
	encyclopedia_entry_menu:run()
end

function GetCivilizationBackground(civilization)
	if (civilization == "basque") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "castillian" or civilization == "french" or civilization == "italian" or civilization == "latin" or civilization == "portuguese" or civilization == "romanian") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "dwarf") then
		return "backgrounds/yale.png"
	elseif (civilization == "elf") then
		return "backgrounds/yale.png"
	elseif (civilization == "ettin") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "germanic") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "gnome") then
		return "backgrounds/yale.png"
	elseif (civilization == "goblin") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "greek") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "kobold") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "illyrian") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "minoan") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "orc") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "persian") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "phoenician") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "slav") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "anglo-saxon" or civilization == "english" or civilization == "frankish" or civilization == "goth" or civilization == "norse" or civilization == "suebi" or civilization == "teuton") then
		return "backgrounds/wyrm.png"
	end
	
	return "backgrounds/wyrm.png"
end

function GetUnitBackground(unit_name, state)
	if (string.find(unit_name, "unit") ~= nil) then
		if (GetUnitTypeData(unit_name, "Civilization") ~= "") then
			return GetCivilizationBackground(GetUnitTypeData(unit_name, "Civilization"))
		elseif (unit_name == "unit-gryphon") then
			return "backgrounds/gryphon.png"
		elseif (unit_name == "unit-wyrm") then
			return "backgrounds/wyrm.png"
		elseif (unit_name == "unit-yale") then
			return "backgrounds/yale.png"
		end
	elseif (string.find(unit_name, "upgrade") ~= nil) then
		return GetCivilizationBackground(GetUpgradeData(unit_name, "Civilization"))
	elseif (state == "heroes") then
		if (GetCharacterData(unit_name, "Civilization") ~= "") then
			return GetCivilizationBackground(GetCharacterData(unit_name, "Civilization"))
		end
	end
	
	return "backgrounds/wyrm.png"
end

function AddTopEncyclopediaLabel(menu, offx, offy, state, height_offset)
	if not (height_offset) then
		height_offset = 2
	end

	local top_label_string = "~<" .. _("Encyclopedia") .. ": "
	if (state == "civilizations") then
		top_label_string = top_label_string .. _("Civilizations")
	elseif (state == "deities") then
		top_label_string = top_label_string .. _("Deities")
	elseif (state == "factions") then
		top_label_string = top_label_string .. _("Factions")
	elseif (state == "game_concepts") then
		top_label_string = top_label_string .. _("Game Concepts")
	elseif (state == "item_prefixes") then
		top_label_string = top_label_string .. _("Magic Prefixes")
	elseif (state == "item_suffixes") then
		top_label_string = top_label_string .. _("Magic Suffixes")
	elseif (state == "runic_suffixes") then
		top_label_string = top_label_string .. _("Runic Suffixes")
	elseif (state == "technologies") then
		top_label_string = top_label_string .. _("Technologies")
	elseif (state == "unique_items") then
		top_label_string = top_label_string .. _("Uniques")
	end
	top_label_string = top_label_string .. "~>"
	menu:addLabel(top_label_string, offx + 320, offy + 104 + 36 * (-4 + height_offset), nil, true)
end
