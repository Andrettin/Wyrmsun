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
--      (c) Copyright 2014-2016 by Andrettin
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

function text_compare( a, b )
	if (Texts[a] and Texts[b]) then
		return Texts[a].Year < Texts[b].Year
	end
end

function chapter_compare( a, b )
	for text_key, text_value in pairsByKeys(Texts, text_compare) do
		if (Texts[text_key].Chapters[a] and Texts[text_key].Chapters[b]) then
			return Texts[text_key].Chapters[a].Index < Texts[text_key].Chapters[b].Index
		end
	end
end

function RunEncyclopediaMenu()
	if (GrandStrategy) then
		GrandStrategyGamePaused = true
	end
	
	Load("scripts/game_concepts.lua")
	Load("scripts/texts.lua")
	Load("scripts/menus/encyclopedia_civilizations.lua")

	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	menu:addLabel(_("~<Encyclopedia~>"), offx + 320, offy + 104 + 36*-2)

	menu:addFullButton(_("~!Buildings"), "b", offx + 208 + (113 * -1), offy + 104 + 36*-1,
		function() RunEncyclopediaUnitsMenu("buildings") end)

	menu:addFullButton(_("~!Civilizations"), "c", offx + 208 + (113 * -1), offy + 104 + 36*0,
		function() RunEncyclopediaCivilizationsMenu() end)

	menu:addFullButton(_("~!Factions"), "f", offx + 208 + (113 * -1), offy + 104 + 36*1,
		function() RunEncyclopediaFactionsMenu() end)

	menu:addFullButton(_("~!Game Concepts"), "g", offx + 208 + (113 * -1), offy + 104 + 36*2,
		function() RunEncyclopediaGameConceptsMenu() end)

	menu:addFullButton(_("~!Heroes"), "h", offx + 208 + (113 * -1), offy + 104 + 36*3,
		function() RunEncyclopediaUnitsMenu("heroes") end)

	menu:addFullButton(_("~!Items"), "i", offx + 208 + (113 * -1), offy + 104 + 36*4,
		function() RunEncyclopediaUnitsMenu("items") end)

	menu:addFullButton(_("Magic P~!refixes"), "r", offx + 208 + (113 * -1), offy + 104 + 36*5,
		function() RunEncyclopediaUnitsMenu("item_prefixes") end)

	menu:addFullButton(_("Magic ~!Suffixes"), "s", offx + 208 + (113 * -1), offy + 104 + 36*6,
		function() RunEncyclopediaUnitsMenu("item_suffixes") end)

	menu:addFullButton(_("~!Mercenaries"), "m", offx + 208 + (113 * -1), offy + 104 + 36*7,
		function() RunEncyclopediaUnitsMenu("mercenaries") end)

	menu:addFullButton(_("Runic ~!Suffixes"), "s", offx + 208 + (113 * -1), offy + 104 + 36*8,
		function() RunEncyclopediaUnitsMenu("runic_suffixes") end)

	menu:addFullButton(_("~!Technologies"), "t", offx + 208 + (113 * 1), offy + 104 + 36*-1,
		function() RunEncyclopediaUnitsMenu("technologies") end)

	menu:addFullButton(_("Te~!xts"), "x", offx + 208 + (113 * 1), offy + 104 + 36*0,
		function() RunEncyclopediaTextsMenu() end)

	menu:addFullButton(_("U~!niques"), "n", offx + 208 + (113 * 1), offy + 104 + 36*1,
		function() RunEncyclopediaUnitsMenu("unique_items") end)

	menu:addFullButton(_("~!Units"), "u", offx + 208 + (113 * 1), offy + 104 + 36*2,
		function() RunEncyclopediaUnitsMenu("units") end)

	menu:addFullButton(_("~!Worlds"), "w", offx + 208 + (113 * 1), offy + 104 + 36*3,
		function() RunEncyclopediaWorldsMenu() end)

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function()
			Texts = nil;
			Worlds = nil;
			CivilizationsEncyclopedia = nil;
			menu:stop();
			if (GrandStrategy) then
				GrandStrategyGamePaused = false
			end
		end
	)

	menu:run()
end

function RunEncyclopediaUnitsMenu(state)

	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local icon_x = 0
	local icon_y = 0
	if (state ~= "heroes" and state ~= "item_prefixes" and state ~= "item_suffixes" and state ~= "runic_suffixes" and state ~= "unique_items") then
		local units_table = {}
		if not (state == "items") then
			units_table = Units
		else
			units_table = GetItems()
		end
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
					and (GetUnitTypeData(unitName, "Mercenary") and GetUnitTypeData(unitName, "Building") == false) == (state == "mercenaries")
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
			elseif (state == "technologies" and string.find(unitName, "unit") == nil) then
				if (CUpgrade:Get(unitName).Description ~= "" or CUpgrade:Get(unitName).Background ~= "") then
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
		end
	elseif (state == "heroes") then
		local heroes = GetCharacters()
		for i = 1, table.getn(heroes) do
			if (GetCharacterData(heroes[i], "Persistent") and (GetCharacterData(heroes[i], "Description") ~= "" or GetCharacterData(heroes[i], "Background") ~= "")) then
				addEncyclopediaIcon(heroes[i], state, menu, offx + 23 + 4 + (54 * icon_x), offy + 10 + 4 + (46 * (icon_y + 1)))
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

	if (state == "units") then
		menu:addLabel("~<Encyclopedia: Units~>", offx + 320, offy + 104 + 36*-2)
	elseif (state == "buildings") then
		menu:addLabel("~<Encyclopedia: Buildings~>", offx + 320, offy + 104 + 36*-2)
	elseif (state == "technologies") then
		menu:addLabel("~<Encyclopedia: Technologies~>", offx + 320, offy + 104 + 36*-2)
	elseif (state == "items") then
		menu:addLabel("~<Encyclopedia: Items~>", offx + 320, offy + 104 + 36*-2)
	elseif (state == "item_prefixes") then
		menu:addLabel("~<Encyclopedia: Magic Prefixes~>", offx + 320, offy + 104 + 36*-2)
	elseif (state == "item_suffixes") then
		menu:addLabel("~<Encyclopedia: Magic Suffixes~>", offx + 320, offy + 104 + 36*-2)
	elseif (state == "runic_suffixes") then
		menu:addLabel("~<Encyclopedia: Runic Suffixes~>", offx + 320, offy + 104 + 36*-2)
	elseif (state == "heroes") then
		menu:addLabel("~<Encyclopedia: Heroes~>", offx + 320, offy + 104 + 36*-2)
	elseif (state == "mercenaries") then
		menu:addLabel("~<Encyclopedia: Mercenaries~>", offx + 320, offy + 104 + 36*-2)
	elseif (state == "unique_items") then
		menu:addLabel("~<Encyclopedia: Uniques~>", offx + 320, offy + 104 + 36*-2)
	end

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
	local tooltip_name = ""
	local tooltip_civilization = ""
	if (string.find(unit_name, "unit") ~= nil) then
		encyclopedia_icon = CIcon:Get(GetUnitTypeData(unit_name, "Icon")).G
		encyclopedia_icon_frame = CIcon:Get(GetUnitTypeData(unit_name, "Icon")).Frame
		civilization = GetUnitTypeData(unit_name, "Civilization")
		faction = GetUnitTypeData(unit_name, "Faction")
		tooltip_name = GetUnitTypeData(unit_name, "Name")
		if (civilization ~= "") then
			tooltip_civilization = "(" ..  _(CapitalizeString(civilization))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(FullyCapitalizeString(string.gsub(faction, "-", " ")))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	elseif (string.find(unit_name, "upgrade") ~= nil) then
		if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
			encyclopedia_icon = CUpgrade:Get(unit_name).Icon.G
			encyclopedia_icon_frame = CUpgrade:Get(unit_name).Icon.Frame
		else
			encyclopedia_icon = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-large-normal.png")
			encyclopedia_icon_pressed = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-large-pressed.png")
			encyclopedia_icon_grayed = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-large-grayed.png")
		end
		civilization = CUpgrade:Get(unit_name).Civilization
		faction = CUpgrade:Get(unit_name).Faction
		tooltip_name = CUpgrade:Get(unit_name).Name
		if (civilization ~= "") then
			tooltip_civilization = "(" ..  _(CapitalizeString(civilization))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(FullyCapitalizeString(string.gsub(faction, "-", " ")))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	elseif (state == "heroes") then
		encyclopedia_icon = CIcon:Get(GetCharacterData(unit_name, "Icon")).G
		encyclopedia_icon_frame = CIcon:Get(GetCharacterData(unit_name, "Icon")).Frame
		civilization = GetCharacterData(unit_name, "Civilization")
		faction = GetCharacterData(unit_name, "Faction")
		tooltip_name = GetCharacterData(unit_name, "FullName")
		if (civilization ~= "") then
			tooltip_civilization = "(" ..  _(CapitalizeString(civilization))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(FullyCapitalizeString(string.gsub(faction, "-", " ")))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	elseif (state == "unique_items") then
		encyclopedia_icon = CIcon:Get(GetUnitTypeData(GetUniqueItemData(unit_name, "Type"), "Icon")).G
		encyclopedia_icon_frame = CIcon:Get(GetUnitTypeData(GetUniqueItemData(unit_name, "Type"), "Icon")).Frame
		civilization = ""
		faction = ""
		tooltip_name = unit_name
		if (civilization ~= "") then
			tooltip_civilization = "(" ..  _(CapitalizeString(civilization))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(FullyCapitalizeString(string.gsub(faction, "-", " ")))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
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
			playercolor = GetFactionData(civilization, faction, "Color")
		elseif (civilization ~= "") then
			playercolor = GetCivilizationData(civilization, "DefaultColor")
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
		b:setTooltip(tooltip_name .. " " .. tooltip_civilization)
	else
		b:setBaseColor(Color(0,0,0,0))
		b:setForegroundColor(Color(0,0,0,0))
		b:setBackgroundColor(Color(0,0,0,0))
	end
	return b
end

function OpenEncyclopediaUnitEntry(unit_name, state)
	if (Texts == nil) then
		Load("scripts/texts.lua")
	end

	if (state ~= "heroes" and state ~= "item_prefixes" and state ~= "item_suffixes" and state ~= "runic_suffixes" and state ~= "unique_items") then
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
			if (CUpgrade:Get(unit_name).Description == "" and CUpgrade:Get(unit_name).Background == "") then
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
	local offy = (Video.Height - 480) / 2

	local encyclopedia_icon
	local encyclopedia_icon_frame = 0
	local civilization
	local faction
	local tooltip_name = ""
	local tooltip_civilization = ""
	if (string.find(unit_name, "unit") ~= nil) then
		encyclopedia_icon = CIcon:Get(GetUnitTypeData(unit_name, "Icon")).G
		encyclopedia_icon_frame = CIcon:Get(GetUnitTypeData(unit_name, "Icon")).Frame
		civilization = GetUnitTypeData(unit_name, "Civilization")
		faction = GetUnitTypeData(unit_name, "Faction")
		tooltip_name = GetUnitTypeData(unit_name, "Name")
		if (civilization ~= "") then
			tooltip_civilization = "(" ..  _(CapitalizeString(civilization))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(FullyCapitalizeString(string.gsub(faction, "-", " ")))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	elseif (string.find(unit_name, "upgrade") ~= nil) then
		if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
			encyclopedia_icon = CUpgrade:Get(unit_name).Icon.G
			encyclopedia_icon_frame = CUpgrade:Get(unit_name).Icon.Frame
		else
			encyclopedia_icon = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-large-normal.png")
			encyclopedia_icon_grayed = CGraphic:New(GetPlayerData(GetThisPlayer(), "RaceName") .. "/ui/widgets/button-large-grayed.png")
		end
		civilization = CUpgrade:Get(unit_name).Civilization
		faction = CUpgrade:Get(unit_name).Faction
		tooltip_name = CUpgrade:Get(unit_name).Name
		if (civilization ~= "") then
			tooltip_civilization = "(" ..  _(CapitalizeString(civilization))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(FullyCapitalizeString(string.gsub(faction, "-", " ")))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	elseif (state == "heroes") then
		encyclopedia_icon = CIcon:Get(GetCharacterData(unit_name, "Icon")).G
		encyclopedia_icon_frame = CIcon:Get(GetCharacterData(unit_name, "Icon")).Frame
		civilization = GetCharacterData(unit_name, "Civilization")
		faction = GetCharacterData(unit_name, "Faction")
		tooltip_name = GetCharacterData(unit_name, "FullName")
		if (civilization ~= "") then
			tooltip_civilization = "(" ..  _(CapitalizeString(civilization))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(FullyCapitalizeString(string.gsub(faction, "-", " ")))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	elseif (state == "unique_items") then
		encyclopedia_icon = CIcon:Get(GetUnitTypeData(GetUniqueItemData(unit_name, "Type"), "Icon")).G
		encyclopedia_icon_frame = CIcon:Get(GetUnitTypeData(GetUniqueItemData(unit_name, "Type"), "Icon")).Frame
		civilization = ""
		faction = ""
		tooltip_name = unit_name
		if (civilization ~= "") then
			tooltip_civilization = "(" ..  _(CapitalizeString(civilization))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(FullyCapitalizeString(string.gsub(faction, "-", " ")))
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
			playercolor = GetFactionData(civilization, faction, "Color")
		elseif (civilization ~= "") then
			playercolor = GetCivilizationData(civilization, "DefaultColor")
		else
			playercolor = "gray"
		end
	end

	if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
		local menu_image = PlayerColorImageWidget(encyclopedia_icon, playercolor)
		menu_image:setImageOrigin(encyclopedia_icon_x_origin, encyclopedia_icon_y_origin)
		menu:add(menu_image, (Video.Width / 2) - 23, offy + 104 + 36*-1)
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
	local droppers_string = ""
	local quote = ""
	local background = ""
	if (string.find(unit_name, "unit") ~= nil) then
		if (GetUnitTypeData(unit_name, "Civilization") ~= "") then
			civilization = "Civilization: " .. _(CapitalizeString(GetUnitTypeData(unit_name, "Civilization"))) .. "\n\n"
		end
		if (GetUnitTypeData(unit_name, "Faction") ~= "") then
			faction = "Faction: " .. _(CapitalizeString(GetUnitTypeData(unit_name, "Faction"))) .. "\n\n"
		end
		if (GetUnitTypeData(unit_name, "Class") ~= "") then
			unit_type_class = "Class: " .. _(FullyCapitalizeString(string.gsub(GetUnitTypeData(unit_name, "Class"), "-", " "))) .. "\n\n"
		end
		if (GetUnitTypeData(unit_name, "Description") ~= "") then
			description = "Description: " .. GetUnitTypeData(unit_name, "Description") .. "\n\n"
		end
		if (GetUnitTypeData(unit_name, "Quote") ~= "") then
			quote = "Quote: " .. GetUnitTypeData(unit_name, "Quote") .. "\n\n"
		end
		if (GetUnitTypeData(unit_name, "Item") and GetItemEffectsString(unit_name) ~= "") then
			effects = "Effects: " .. GetItemEffectsString(unit_name) .. ".\n\n"
		end
		if (GetUnitTypeData(unit_name, "Item") and table.getn(GetUnitTypeData(unit_name, "Droppers")) > 0) then
			droppers_string = "Dropped By: "
			local droppers = GetUnitTypeData(unit_name, "Droppers")
			local first_dropper = true
			for i=1,table.getn(droppers) do
				if (string.find(droppers[i], "template") == nil and GetUnitTypeData(droppers[i], "Mercenary") == false and GetUnitTypeData(droppers[i], "Civilization") ~= "elf" and GetUnitTypeData(droppers[i], "Civilization") ~= "orc") then
					if not (first_dropper) then
						droppers_string = droppers_string .. ", "
					else
						first_dropper = false
					end
					droppers_string = droppers_string .. GetUnitTypeData(droppers[i], "Name")
					if (GetUnitTypeData(droppers[i], "Civilization") ~= "" and GetUnitTypeData(droppers[i], "Faction") ~= "") then
						droppers_string = droppers_string .. " (" .. CapitalizeString(GetUnitTypeData(droppers[i], "Civilization")) .. ": " .. GetUnitTypeData(droppers[i], "Faction") .. ")"
					elseif (GetUnitTypeData(droppers[i], "Civilization") ~= "") then
						droppers_string = droppers_string .. " (" .. CapitalizeString(GetUnitTypeData(droppers[i], "Civilization")) .. ")"
					end
				end
			end
			droppers_string = droppers_string .. "."
		end
		if (GetUnitTypeData(unit_name, "Background") ~= "") then
			background = "Background: " .. GetUnitTypeData(unit_name, "Background") .. "\n\n"
		end
	elseif (string.find(unit_name, "upgrade") ~= nil) then
		if (CUpgrade:Get(unit_name).Civilization ~= "") then
			civilization = "Civilization: " .. CapitalizeString(CUpgrade:Get(unit_name).Civilization) .. "\n\n"
		end
		if (CUpgrade:Get(unit_name).Faction ~= "") then
			faction = "Faction: " .. CUpgrade:Get(unit_name).Faction .. "\n\n"
		end
		if (CUpgrade:Get(unit_name).Class ~= "") then
			unit_type_class = "Class: " .. _(FullyCapitalizeString(string.gsub(CUpgrade:Get(unit_name).Class, "-", " "))) .. "\n\n"
		end
		if (CUpgrade:Get(unit_name).Description ~= "") then
			description = "Description: " .. CUpgrade:Get(unit_name).Description .. "\n\n"
		end
		if (CUpgrade:Get(unit_name).Quote ~= "") then
			quote = "Quote: " .. CUpgrade:Get(unit_name).Quote .. "\n\n"
		end
		if (string.find(unit_name, "prefix") ~= nil or string.find(unit_name, "suffix") ~= nil) then
			effects = "Effects: " .. GetUpgradeEffectsString(unit_name) .. ".\n\n"
			applies_to = "Available For: "
			local applies_to_items = GetUpgradeData(unit_name, "AppliesTo")
			table.sort(applies_to_items)
			for i=1,table.getn(applies_to_items) do
				if (i > 1) then
					applies_to = applies_to .. ", "
				end
				if (string.find(applies_to_items[i], "unit") ~= nil) then
					applies_to = applies_to .. _(GetUnitTypeData(applies_to_items[i], "Name"))
				else
					applies_to = applies_to .. _(FullyCapitalizeString(string.gsub(applies_to_items[i], "-", " ")))
				end
				if (string.sub(applies_to_items[i], -1) ~= "s") then
					applies_to = applies_to .. "s"
				end
			end
			applies_to = applies_to .. ".\n\n"
		end
		if (string.find(unit_name, "prefix") ~= nil or string.find(unit_name, "suffix") ~= nil) then
			local droppers = GetUpgradeData(unit_name, "Droppers")
			if (table.getn(droppers) > 0) then
				droppers_string = "Dropped By: "
				local first_dropper = true
				for i=1,table.getn(droppers) do
					if (string.find(droppers[i], "template") == nil and GetUnitTypeData(droppers[i], "Mercenary") == false and GetUnitTypeData(droppers[i], "Civilization") ~= "elf" and GetUnitTypeData(droppers[i], "Civilization") ~= "orc") then
						if not (first_dropper) then
							droppers_string = droppers_string .. ", "
						else
							first_dropper = false
						end
						droppers_string = droppers_string .. GetUnitTypeData(droppers[i], "Name")
						if (GetUnitTypeData(droppers[i], "Civilization") ~= "" and GetUnitTypeData(droppers[i], "Faction") ~= "") then
							droppers_string = droppers_string .. " (" .. CapitalizeString(GetUnitTypeData(droppers[i], "Civilization")) .. ": " .. GetUnitTypeData(droppers[i], "Faction") .. ")"
						elseif (GetUnitTypeData(droppers[i], "Civilization") ~= "") then
							droppers_string = droppers_string .. " (" .. CapitalizeString(GetUnitTypeData(droppers[i], "Civilization")) .. ")"
						end
					end
				end
				droppers_string = droppers_string .. ".\n\n"
			end
		end
		if (CUpgrade:Get(unit_name).Background ~= "") then
			background = "Background: " .. CUpgrade:Get(unit_name).Background .. "\n\n"
		end
	elseif (state == "heroes") then
		if (GetCharacterData(unit_name, "Civilization") ~= "") then
			civilization = "Civilization: " .. _(CapitalizeString(GetCharacterData(unit_name, "Civilization"))) .. "\n\n"
		end
		if (GetCharacterData(unit_name, "Faction") ~= "") then
			faction = "Faction: " .. _(CapitalizeString(GetCharacterData(unit_name, "Faction"))) .. "\n\n"
		end
		if (GetCharacterData(unit_name, "Type") ~= "") then
			unit_type_type = "Type: " .. _(GetUnitTypeData(GetCharacterData(unit_name, "Type"), "Name")) .. "\n\n"
		end
		if (GetUnitTypeData(GetCharacterData(unit_name, "Type"), "Class") ~= "") then
			unit_type_class = "Class: " .. _(FullyCapitalizeString(string.gsub(GetUnitTypeData(GetCharacterData(unit_name, "Type"), "Class"), "-", " "))) .. "\n\n"
		end
		if (GetCharacterData(unit_name, "Description") ~= "") then
			description = "Description: " .. GetCharacterData(unit_name, "Description") .. "\n\n"
		end
		if (GetCharacterData(unit_name, "Quote") ~= "") then
			quote = "Quote: " .. GetCharacterData(unit_name, "Quote") .. "\n\n"
		end
		if (GetCharacterData(unit_name, "Background") ~= "") then
			background = "Background: " .. GetCharacterData(unit_name, "Background") .. "\n\n"
		end
	elseif (state == "unique_items") then
		if (GetUniqueItemData(unit_name, "Type") ~= "") then
			unit_type_type = "Type: " .. _(GetUnitTypeData(GetUniqueItemData(unit_name, "Type"), "Name")) .. "\n\n"
		end
		if (GetUnitTypeData(GetUniqueItemData(unit_name, "Type"), "Class") ~= "") then
			unit_type_class = "Class: " .. _(FullyCapitalizeString(string.gsub(GetUnitTypeData(GetUniqueItemData(unit_name, "Type"), "Class"), "-", " "))) .. "\n\n"
		end
		if (GetUniqueItemData(unit_name, "Description") ~= "") then
			description = "Description: " .. GetUniqueItemData(unit_name, "Description") .. "\n\n"
		end
		if (GetUniqueItemEffectsString(unit_name) ~= "") then
			effects = "Effects: " .. GetUniqueItemEffectsString(unit_name) .. ".\n\n"
		end
		if (GetUniqueItemData(unit_name, "Quote") ~= "") then
			quote = "Quote: " .. GetUniqueItemData(unit_name, "Quote") .. "\n\n"
		end
		if (table.getn(GetUniqueItemData(unit_name, "Droppers")) > 0) then
			droppers_string = "Dropped By: "
			local droppers = GetUniqueItemData(unit_name, "Droppers")
			local first_dropper = true
			for i=1,table.getn(droppers) do
				if (string.find(droppers[i], "template") == nil and GetUnitTypeData(droppers[i], "Mercenary") == false and GetUnitTypeData(droppers[i], "Civilization") ~= "elf" and GetUnitTypeData(droppers[i], "Civilization") ~= "orc") then
					if not (first_dropper) then
						droppers_string = droppers_string .. ", "
					else
						first_dropper = false
					end
					droppers_string = droppers_string .. GetUnitTypeData(droppers[i], "Name")
					if (GetUnitTypeData(droppers[i], "Civilization") ~= "" and GetUnitTypeData(droppers[i], "Faction") ~= "") then
						droppers_string = droppers_string .. " (" .. CapitalizeString(GetUnitTypeData(droppers[i], "Civilization")) .. ": " .. GetUnitTypeData(droppers[i], "Faction") .. ")"
					elseif (GetUnitTypeData(droppers[i], "Civilization") ~= "") then
						droppers_string = droppers_string .. " (" .. CapitalizeString(GetUnitTypeData(droppers[i], "Civilization")) .. ")"
					end
				end
			end
			droppers_string = droppers_string .. ".\n\n"
		end
		if (GetUniqueItemData(unit_name, "Background") ~= "") then
			background = "Background: " .. GetUniqueItemData(unit_name, "Background") .. "\n\n"
		end
	end
	l:setCaption(civilization .. faction .. unit_type_type .. unit_type_class .. description .. quote .. effects .. applies_to .. droppers_string .. background)
	
	-- add buttons of texts related to the subject matter of the entry
	local chapter_references = 0
	for text_key, text_value in pairsByKeys(Texts, text_compare) do
		for chapter_key, chapter_value in pairsByKeys(Texts[text_key].Chapters, chapter_compare) do
			if (string.find(l:getCaption(), "~<" .. Texts[text_key].Chapters[chapter_key].Title .. "~>") ~= nil) then
				chapter_references = chapter_references + 1
			end
		end
	end

	local chapter_x
	local chapter_y = 8
	if (chapter_references == 1) then
		chapter_x = 0
	elseif (chapter_references == 2) then
		chapter_x = -1
	else
		chapter_x = -2
	end
	for text_key, text_value in pairsByKeys(Texts, text_compare) do
		for chapter_key, chapter_value in pairsByKeys(Texts[text_key].Chapters, chapter_compare) do
			if (string.find(l:getCaption(), "~<" .. Texts[text_key].Chapters[chapter_key].Title .. "~>") ~= nil) then
				if (GetTableSize(Texts[text_key].Chapters) > 1) then
					menu:addFullButton(Texts[text_key].Chapters[chapter_key].Title, "", offx + 208 + (113 * chapter_x), offy + 104 + (36 * chapter_y),
						function() OpenEncyclopediaText(text_key, chapter_key); end)
				else
					menu:addFullButton(Texts[text_key].Chapters[chapter_key].Title, "", offx + 208 + (113 * chapter_x), offy + 104 + (36 * chapter_y),
						function() OpenEncyclopediaText(text_key); end)
				end
				chapter_x = chapter_x + 2
			end
		end
	end

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() menu:stop(); end)
	menu:run()
end

function RunEncyclopediaTextsMenu()

	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	menu:addLabel("~<Encyclopedia: Texts~>", offx + 320, offy + 104 + 36*-2)

	local text_y = -1
	for text_key, text_value in pairsByKeys(Texts, text_compare) do
		local text_hotkey = ""		
		if (string.find(_(Texts[text_key].Title), "~!") ~= nil) then
			text_hotkey = string.sub(string.match(_(Texts[text_key].Title), "~!%a"), 3)
			text_hotkey = string.lower(text_hotkey)
		end
		menu:addFullButton(Texts[text_key].Title, text_hotkey, offx + 208, offy + 104 + 36*text_y,
			function() OpenEncyclopediaText(text_key); end)
		text_y = text_y + 1
	end

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() menu:stop(); end)

	menu:run()
end

function OpenEncyclopediaText(text_key, chosen_chapter)
	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local encyclopedia_entry_menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	local height_offset = 2
	if (Video.Height >= 600) then
		height_offset = 0
	else
		height_offset = 2
	end
	local title = encyclopedia_entry_menu:addLabel("~<" .. Texts[text_key].Title .. "~>", offx + 320, offy + 104 + 36*(-4 + height_offset), nil, true)
	title:setAlignment(MultiLineLabel.CENTER)

	local l = MultiLineLabel()
	if (Video.Height >= 600) then
		l:setFont(Fonts["game"])
	else
		l:setFont(Fonts["small"])
	end
	l:setSize(Video.Width - 64, Video.Height - 96)
	l:setLineWidth(Video.Width - 64)
	encyclopedia_entry_menu:add(l, 32, offy + 104 + 36*(-3 + height_offset))
	
	local current_chapter
	local current_chapter_number
	local page_number_label = encyclopedia_entry_menu:addLabel("     ", offx + 320, (Video.Height - 90) + 18*4, Fonts["game"], true)
	local page_number
	local current_page = 1
	
	local cover_text = "\n\n" .. Texts[text_key].Author .. "\n\n" .. Texts[text_key].Year
	if (Texts[text_key].Publisher) then
		cover_text = cover_text .. "\n\n" .. Texts[text_key].Publisher
	end
	cover_text = cover_text .. "\n\n" .. Texts[text_key].CopyrightNotice
	if (Texts[text_key].Notes) then
		cover_text = cover_text .. "\n\n[Note: " .. Texts[text_key].Notes .. "]"
	end

	if (chosen_chapter == nil) then
		current_chapter = "Cover"
		current_chapter_number = 1
		page_number = Texts[text_key].InitialPage - 1
		l:setCaption(cover_text)
		l:setAlignment(MultiLineLabel.CENTER)
	else
		current_chapter = chosen_chapter
		current_chapter_number = GetTableKeyIndex(Texts[text_key].Chapters, current_chapter, chapter_compare)
		current_page = 1
		l:setCaption(Texts[text_key].Chapters[current_chapter].Text[current_page]);
		l:setAlignment(MultiLineLabel.LEFT)
		title:setCaption("~<" .. Texts[text_key].Chapters[current_chapter].Title .. "~>")
		title:setAlignment(MultiLineLabel.CENTER)
		title:adjustSize()
		if not (Texts[text_key].Chapters[current_chapter].Introduction) then
			page_number = Texts[text_key].InitialPage
			for second_chapter_key, second_chapter_value in pairsByKeys(Texts[text_key].Chapters, chapter_compare) do
				if (second_chapter_key == current_chapter) then
					break
				end
				if not (Texts[text_key].Chapters[second_chapter_key].Introduction) then
					page_number = page_number + table.getn(Texts[text_key].Chapters[second_chapter_key].Text)
				end
			end
			page_number_label:setCaption(page_number);
			page_number_label:setAlignment(MultiLineLabel.CENTER)
		end
	end

	local chapter_buttons = {}
	
	encyclopedia_entry_menu:addFullButton("Pre~!vious Page", "v", offx + 208 - 224 - 2, offy + 104 + (36 * (10 - height_offset) + 18),
		function()
			if (current_chapter == "Cover") then
			elseif (current_chapter == "Contents") then
				for i=1,table.getn(chapter_buttons) do
					encyclopedia_entry_menu:remove(chapter_buttons[i])
				end
				chapter_buttons = nil
				chapter_buttons = {}

				current_chapter = "Cover"
				l:setCaption(cover_text)
				l:setAlignment(MultiLineLabel.CENTER)
				title:setCaption("~<" .. Texts[text_key].Title .. "~>")
				title:setAlignment(MultiLineLabel.CENTER)
				title:adjustSize()
			elseif (current_page > 1) then
				current_page = current_page - 1;
				l:setCaption(Texts[text_key].Chapters[current_chapter].Text[current_page]);
				if not (Texts[text_key].Chapters[current_chapter].Introduction) then
					page_number = page_number - 1
					page_number_label:setCaption(page_number);
				end
			elseif (current_chapter_number > 1 and not Texts[text_key].Chapters[current_chapter].Introduction) then
				current_chapter_number = current_chapter_number - 1;
				current_chapter = GetTableIndexKey(Texts[text_key].Chapters, current_chapter_number, chapter_compare)
				current_page = table.getn(Texts[text_key].Chapters[current_chapter].Text)
				l:setCaption(Texts[text_key].Chapters[current_chapter].Text[current_page]);
				title:setCaption("~<" .. Texts[text_key].Chapters[current_chapter].Title .. "~>")
				title:setAlignment(MultiLineLabel.CENTER)
				title:adjustSize()
				if not (Texts[text_key].Chapters[current_chapter].Introduction) then
					page_number = page_number - 1
					page_number_label:setCaption(page_number);
				else
					page_number = page_number - 1
					page_number_label:setCaption("     ");
				end
			elseif (current_chapter_number > 1 and Texts[text_key].Chapters[current_chapter].Introduction) then
				current_chapter_number = current_chapter_number - 1;
				current_chapter = GetTableIndexKey(Texts[text_key].Chapters, current_chapter_number, chapter_compare)
				current_page = table.getn(Texts[text_key].Chapters[current_chapter].Text)
				l:setCaption(Texts[text_key].Chapters[current_chapter].Text[current_page]);
				title:setCaption("~<" .. Texts[text_key].Chapters[current_chapter].Title .. "~>")
				title:setAlignment(MultiLineLabel.CENTER)
				title:adjustSize()
				if not (Texts[text_key].Chapters[current_chapter].Introduction) then
					page_number_label:setCaption(page_number);
				else
					page_number_label:setCaption("     ");
				end
			else
				current_chapter = "Contents"
				l:setCaption("     ")
				l:setAlignment(MultiLineLabel.CENTER)
				title:setCaption("~<Table of Contents~>")
				title:setAlignment(MultiLineLabel.CENTER)
				title:adjustSize()
				page_number = Texts[text_key].InitialPage - 1
				page_number_label:setCaption("     ");

				if (GetTableSize(Texts[text_key].Chapters) > 1) then
					local chapter_x = 0
					if (GetTableSize(Texts[text_key].Chapters) > 26) then
						chapter_x = -2
					elseif (GetTableSize(Texts[text_key].Chapters) > 13) then
						chapter_x = -1
					end
					local chapter_y = -3
					for chapter_key, chapter_value in pairsByKeys(Texts[text_key].Chapters, chapter_compare) do
						if (Texts[text_key].Chapters[chapter_key].Index > 0) then
							chapter_buttons[table.getn(chapter_buttons) + 1] = encyclopedia_entry_menu:addFullButton(Texts[text_key].Chapters[chapter_key].Title, "", offx + 208 + (113 * chapter_x), offy + 104 + (36 * (chapter_y + height_offset) - 16),
								function()
									for i=1,table.getn(chapter_buttons) do
										encyclopedia_entry_menu:remove(chapter_buttons[i])
									end
									chapter_buttons = nil
									chapter_buttons = {}

									current_chapter = chapter_key
									current_chapter_number = GetTableKeyIndex(Texts[text_key].Chapters, current_chapter, chapter_compare)
									current_page = 1
									l:setCaption(Texts[text_key].Chapters[current_chapter].Text[current_page]);
									l:setAlignment(MultiLineLabel.LEFT)
									title:setCaption("~<" .. Texts[text_key].Chapters[current_chapter].Title .. "~>")
									title:setAlignment(MultiLineLabel.CENTER)
									title:adjustSize()
									page_number = Texts[text_key].InitialPage
									for second_chapter_key, second_chapter_value in pairsByKeys(Texts[text_key].Chapters, chapter_compare) do
										if (second_chapter_key == chapter_key) then
											break
										end
										if not (Texts[text_key].Chapters[second_chapter_key].Introduction) then
											page_number = page_number + table.getn(Texts[text_key].Chapters[second_chapter_key].Text)
										end
									end
									if not (Texts[text_key].Chapters[current_chapter].Introduction) then
										page_number_label:setCaption(page_number);
										page_number_label:setAlignment(MultiLineLabel.CENTER)
									else
										page_number = page_number - 1
									end
								end
							)
							if (chapter_y > 9 or (chapter_y > 4 and Video.Height < 600)) then
								chapter_x = chapter_x + 2
								chapter_y = -3
							else
								chapter_y = chapter_y + 1
							end
						end
					end
				else
					current_chapter = "Cover"
					l:setCaption(cover_text)
					l:setAlignment(MultiLineLabel.CENTER)
					title:setCaption("~<" .. Texts[text_key].Title .. "~>")
					title:setAlignment(MultiLineLabel.CENTER)
					title:adjustSize()
				end
			end
		end
	)
	encyclopedia_entry_menu:addFullButton("~!Next Page", "n", offx + 208 + 224 + 2, offy + 104 + (36 * (10 - height_offset) + 18),
		function()
			if (current_chapter == "Cover") then
				current_chapter = "Contents"
				l:setCaption("     ")
				l:setAlignment(MultiLineLabel.CENTER)
				title:setCaption("~<Table of Contents~>")
				title:setAlignment(MultiLineLabel.CENTER)
				title:adjustSize()
				
				if (GetTableSize(Texts[text_key].Chapters) > 1) then
					local chapter_x = 0
					if (GetTableSize(Texts[text_key].Chapters) > 26 or (GetTableSize(Texts[text_key].Chapters) > 18 and Video.Height < 600)) then
						chapter_x = -2
					elseif (GetTableSize(Texts[text_key].Chapters) > 13 or (GetTableSize(Texts[text_key].Chapters) > 9 and Video.Height < 600)) then
						chapter_x = -1
					end
					local chapter_y = -3
					for chapter_key, chapter_value in pairsByKeys(Texts[text_key].Chapters, chapter_compare) do
						if (Texts[text_key].Chapters[chapter_key].Index > 0) then
							chapter_buttons[table.getn(chapter_buttons) + 1] = encyclopedia_entry_menu:addFullButton(Texts[text_key].Chapters[chapter_key].Title, "", offx + 208 + (113 * chapter_x), offy + 104 + (36 * (chapter_y + height_offset) - 16),
								function()
									for i=1,table.getn(chapter_buttons) do
										encyclopedia_entry_menu:remove(chapter_buttons[i])
									end
									chapter_buttons = nil
									chapter_buttons = {}

									current_chapter = chapter_key
									current_chapter_number = GetTableKeyIndex(Texts[text_key].Chapters, current_chapter, chapter_compare)
									current_page = 1
									l:setCaption(Texts[text_key].Chapters[current_chapter].Text[current_page]);
									l:setAlignment(MultiLineLabel.LEFT)
									title:setCaption("~<" .. Texts[text_key].Chapters[current_chapter].Title .. "~>")
									title:setAlignment(MultiLineLabel.CENTER)
									title:adjustSize()
									page_number = Texts[text_key].InitialPage
									for second_chapter_key, second_chapter_value in pairsByKeys(Texts[text_key].Chapters, chapter_compare) do
										if (second_chapter_key == chapter_key) then
											break
										end
										if not (Texts[text_key].Chapters[second_chapter_key].Introduction) then
											page_number = page_number + table.getn(Texts[text_key].Chapters[second_chapter_key].Text)
										end
									end
									if not (Texts[text_key].Chapters[current_chapter].Introduction) then
										page_number_label:setCaption(page_number);
										page_number_label:setAlignment(MultiLineLabel.CENTER)
									else
										page_number = page_number - 1
									end
								end
							)
							if (chapter_y > 9 or (chapter_y > 4 and Video.Height < 600)) then
								chapter_x = chapter_x + 2
								chapter_y = -3
							else
								chapter_y = chapter_y + 1
							end
						end
					end
				else
					current_chapter = GetTableIndexKey(Texts[text_key].Chapters, current_chapter_number, chapter_compare)
					current_page = 1
					l:setCaption(Texts[text_key].Chapters[current_chapter].Text[current_page]);
					l:setAlignment(MultiLineLabel.LEFT)
					title:setCaption("~<" .. Texts[text_key].Chapters[current_chapter].Title .. "~>")
					title:setAlignment(MultiLineLabel.CENTER)
					title:adjustSize()
					if not (Texts[text_key].Chapters[current_chapter].Introduction) then
						page_number = page_number + 1
						page_number_label:setCaption(page_number);
						page_number_label:setAlignment(MultiLineLabel.CENTER)
					end
				end
			elseif (current_chapter == "Contents") then
				for i=1,table.getn(chapter_buttons) do
					encyclopedia_entry_menu:remove(chapter_buttons[i])
				end
				chapter_buttons = nil
				chapter_buttons = {}
						
				current_chapter = GetTableIndexKey(Texts[text_key].Chapters, current_chapter_number, chapter_compare)
				current_page = 1
				l:setCaption(Texts[text_key].Chapters[current_chapter].Text[current_page]);
				l:setAlignment(MultiLineLabel.LEFT)
				title:setCaption("~<" .. Texts[text_key].Chapters[current_chapter].Title .. "~>")
				title:setAlignment(MultiLineLabel.CENTER)
				title:adjustSize()
				if not (Texts[text_key].Chapters[current_chapter].Introduction) then
					page_number = page_number + 1
					page_number_label:setCaption(page_number);
					page_number_label:setAlignment(MultiLineLabel.CENTER)
				end
			elseif (current_page < table.getn(Texts[text_key].Chapters[current_chapter].Text)) then
				current_page = current_page + 1;
				l:setCaption(Texts[text_key].Chapters[current_chapter].Text[current_page]);
				if not (Texts[text_key].Chapters[current_chapter].Introduction) then
					page_number = page_number + 1
					page_number_label:setCaption(page_number);
				end
			elseif (current_chapter_number < GetTableSize(Texts[text_key].Chapters)) then
				current_chapter_number = current_chapter_number + 1
				current_chapter = GetTableIndexKey(Texts[text_key].Chapters, current_chapter_number, chapter_compare)
				current_page = 1
				l:setCaption(Texts[text_key].Chapters[current_chapter].Text[current_page]);
				title:setCaption("~<" .. Texts[text_key].Chapters[current_chapter].Title .. "~>")
				title:setAlignment(MultiLineLabel.CENTER)
				title:adjustSize()
				if not (Texts[text_key].Chapters[current_chapter].Introduction) then
					page_number = page_number + 1
					page_number_label:setCaption(page_number);
				else
					page_number_label:setCaption("     ");
				end
			end
		end
	)

	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
		function() encyclopedia_entry_menu:stop(); end)

	encyclopedia_entry_menu:run()
end

function RunEncyclopediaWorldsMenu()

	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local height_offset = 2
	if (Video.Height >= 600) then
		height_offset = 2 -- change this to 0 if the number of world entries becomes too large
	else
		height_offset = 2
	end
	menu:addLabel("~<Encyclopedia: Worlds~>", offx + 320, offy + 104 + 36*(-4 + height_offset), nil, true)

	local worlds = GetWorlds()

	local world_x = 0
	if (GetTableSize(worlds) > 20) then
		world_x = -2
	elseif (GetTableSize(worlds) > 10) then
		world_x = -1
	end
	local world_y = -3

	for i=1,table.getn(worlds) do
		local world_hotkey = ""		
		if (string.find(_(GetWorldData(worlds[i], "Name")), "~!") ~= nil) then
			world_hotkey = string.sub(string.match(_(GetWorldData(worlds[i], "Name")), "~!%a"), 3)
			world_hotkey = string.lower(world_hotkey)
		end
		menu:addFullButton(_(GetWorldData(worlds[i], "Name")), world_hotkey, offx + 208 + (113 * world_x), offy + 104 + (36 * (world_y + height_offset)),
			function() OpenEncyclopediaWorldEntry(worlds[i]); end)

		if (world_y > 5 or (world_y > 4 and Video.Height < 600)) then
			world_x = world_x + 2
			world_y = -3
		else
			world_y = world_y + 1
		end
	end

--	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() menu:stop(); end)

	menu:run()
end

function OpenEncyclopediaWorldEntry(world)
	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local encyclopedia_entry_menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	encyclopedia_entry_menu:addLabel("~<" .. world .. "~>", offx + 320, offy + 104 + 36*-2, nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64, Video.Height / 2)
	l:setLineWidth(Video.Width - 64)
	encyclopedia_entry_menu:add(l, 32, offy + 104 + 36*0)
	local description = ""
	local background = ""
	if (GetWorldData(world, "Description") ~= "") then
		description = "Description: " .. GetWorldData(world, "Description")
	end
	if (GetWorldData(world, "Background") ~= "") then
		background = "\n\nBackground: " .. GetWorldData(world, "Background")
	end
	l:setCaption(description .. background)
			
	-- add buttons of texts related to the subject matter of the entry
	local chapter_references = 0
	for text_key, text_value in pairsByKeys(Texts, text_compare) do
		for chapter_key, chapter_value in pairsByKeys(Texts[text_key].Chapters, chapter_compare) do
			if (string.find(l:getCaption(), "~<" .. Texts[text_key].Chapters[chapter_key].Title .. "~>") ~= nil) then
				chapter_references = chapter_references + 1
			end
		end
	end
	
	local chapter_x
	local chapter_y = 8
	if (chapter_references == 1) then
		chapter_x = 0
	elseif (chapter_references == 2) then
		chapter_x = -1
	else
		chapter_x = -2
	end

	for text_key, text_value in pairsByKeys(Texts, text_compare) do
		for chapter_key, chapter_value in pairsByKeys(Texts[text_key].Chapters, chapter_compare) do
			if (string.find(l:getCaption(), "~<" .. Texts[text_key].Chapters[chapter_key].Title .. "~>") ~= nil) then
				if (GetTableSize(Texts[text_key].Chapters) > 1) then
					encyclopedia_entry_menu:addFullButton(Texts[text_key].Chapters[chapter_key].Title, "", offx + 208 + (113 * chapter_x), offy + 104 + (36 * chapter_y),
						function() OpenEncyclopediaText(text_key, chapter_key); end)
				else
					encyclopedia_entry_menu:addFullButton(Texts[text_key].Chapters[chapter_key].Title, "", offx + 208 + (113 * chapter_x), offy + 104 + (36 * chapter_y),
						function() OpenEncyclopediaText(text_key); end)
				end
				chapter_x = chapter_x + 2
			end
		end
	end

	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() encyclopedia_entry_menu:stop(); end)
	encyclopedia_entry_menu:run()
end

function RunEncyclopediaGameConceptsMenu()

	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local height_offset = 2
	if (Video.Height >= 600) then
		height_offset = 2 -- change this to 0 if the number of game concept entries becomes too large
	else
		height_offset = 2
	end
	menu:addLabel("~<Encyclopedia: Game Concepts~>", offx + 320, offy + 104 + 36*(-4 + height_offset), nil, true)

	local game_concept_x = 0
	if (GetTableSize(GameConcepts) > 20) then
		game_concept_x = -2
	elseif (GetTableSize(GameConcepts) > 10) then
		game_concept_x = -1
	end
	local game_concept_y = -3

	for game_concept_key, game_concept_value in pairsByKeys(GameConcepts) do
		local game_concept_hotkey = ""		
		if (string.find(_(GameConcepts[game_concept_key].Name), "~!") ~= nil) then
			game_concept_hotkey = string.sub(string.match(_(GameConcepts[game_concept_key].Name), "~!%a"), 3)
			game_concept_hotkey = string.lower(game_concept_hotkey)
		end
		menu:addFullButton(_(GameConcepts[game_concept_key].Name), game_concept_hotkey, offx + 208 + (113 * game_concept_x), offy + 104 + (36 * (game_concept_y + height_offset)),
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

	local encyclopedia_entry_menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	encyclopedia_entry_menu:addLabel("~<" .. GameConcepts[game_concept_key].Name .. "~>", offx + 320, offy + 104 + 36*-2, nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64, Video.Height / 2)
	l:setLineWidth(Video.Width - 64)
	encyclopedia_entry_menu:add(l, 32, offy + 104 + 36*0)
	local description = ""
	if (GameConcepts[game_concept_key].Description ~= nil) then
		description = "Description: " .. GameConcepts[game_concept_key].Description
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

	local menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local height_offset = 2
	if (Video.Height >= 600) then
		height_offset = 2 -- change this to 0 if the number of civilization entries becomes too large
	else
		height_offset = 2
	end
	menu:addLabel("~<Encyclopedia: Civilizations~>", offx + 320, offy + 104 + 36*(-4 + height_offset), nil, true)

	local civilization_x = 0
	if (GetTableSize(CivilizationsEncyclopedia) > 20) then
		civilization_x = -2
	elseif (GetTableSize(CivilizationsEncyclopedia) > 10) then
		civilization_x = -1
	end
	local civilization_y = -3

	for civilization_key, civilization_value in pairsByKeys(CivilizationsEncyclopedia) do
		local civilization_hotkey = ""		
		if (string.find(_(CivilizationsEncyclopedia[civilization_key].Name), "~!") ~= nil) then
			civilization_hotkey = string.sub(string.match(_(CivilizationsEncyclopedia[civilization_key].Name), "~!%a"), 3)
			civilization_hotkey = string.lower(civilization_hotkey)
		end
		menu:addFullButton(_(CivilizationsEncyclopedia[civilization_key].Name), civilization_hotkey, offx + 208 + (113 * civilization_x), offy + 104 + (36 * (civilization_y + height_offset)),
			function() OpenEncyclopediaCivilizationEntry(civilization_key); end)

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

function OpenEncyclopediaCivilizationEntry(civilization_key)
	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local encyclopedia_entry_menu = WarMenu(nil, GetBackground(GetCivilizationBackground(string.lower(string.gsub(civilization_key, "Human", "")))))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	encyclopedia_entry_menu:addLabel("~<" .. CivilizationsEncyclopedia[civilization_key].Name .. "~>", offx + 320, offy + 104 + 36*-2, nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64, Video.Height / 2)
	l:setLineWidth(Video.Width - 64)
	encyclopedia_entry_menu:add(l, 32, offy + 104 + 36*0)
	local description = ""
	if (CivilizationsEncyclopedia[civilization_key].DevelopsFrom ~= nil) then
		description = description .. "Develops From: "
		for i=1,table.getn(CivilizationsEncyclopedia[civilization_key].DevelopsFrom) do
			description = description .. CivilizationsEncyclopedia[civilization_key].DevelopsFrom[i]
			if (i < table.getn(CivilizationsEncyclopedia[civilization_key].DevelopsFrom)) then
				description = description .. ", "
			end
		end
		description = description .. "\n\n"
	end
	if (CivilizationsEncyclopedia[civilization_key].DevelopsTo ~= nil) then
		description = description .. "Develops To: "
		for i=1,table.getn(CivilizationsEncyclopedia[civilization_key].DevelopsTo) do
			description = description .. CivilizationsEncyclopedia[civilization_key].DevelopsTo[i]
			if (i < table.getn(CivilizationsEncyclopedia[civilization_key].DevelopsTo)) then
				description = description .. ", "
			end
		end
		description = description .. "\n\n"
	end
	if (CivilizationsEncyclopedia[civilization_key].Description ~= nil) then
		description = description .. "Description: " .. CivilizationsEncyclopedia[civilization_key].Description
	end
	l:setCaption(description)
			
	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() encyclopedia_entry_menu:stop(); end)
	encyclopedia_entry_menu:run()
end

function RunEncyclopediaFactionsMenu()

	if (RunningScenario == false) then
		if not (IsMusicPlaying()) then
			PlayMusicName("MenuTheme")
		end
	end

	local menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local height_offset = 2
	if (Video.Height >= 600) then
		height_offset = 2 -- change this to 0 if the number of faction entries becomes too large
	else
		height_offset = 2
	end
	menu:addLabel("~<Encyclopedia: Factions~>", offx + 320, offy + 104 + 36*(-4 + height_offset), nil, true)
	
	local civilizations = GetCivilizations()
	table.sort(civilizations)
	local potential_factions = {}
	local factions = {}
	local all_factions = {}
	
	for i = 1, table.getn(civilizations) do
		potential_factions[i] = GetCivilizationData(civilizations[i], "Factions")
		factions[i] = {}
		for j = 1, table.getn(potential_factions[i]) do
			if (GetFactionData(civilizations[i], potential_factions[i][j], "Description") ~= "") then
				table.insert(factions[i], potential_factions[i][j])
				table.insert(all_factions, potential_factions[i][j])
			end
		end
		table.sort(factions[i])
	end

	local faction_x = 0
	if (GetTableSize(all_factions) > 20) then
		faction_x = -2
	elseif (GetTableSize(all_factions) > 10) then
		faction_x = -1
	end
	local faction_y = -3

	for i = 1, table.getn(civilizations) do
		for j = 1, table.getn(factions[i]) do
			menu:addFullButton(_(factions[i][j]) .. " (" .. GetCivilizationData(civilizations[i], "Display") .. ")", "", offx + 208 + (113 * faction_x), offy + 104 + (36 * (faction_y + height_offset)),
				function() OpenEncyclopediaFactionEntry(civilizations[i], factions[i][j]); end)

			if (faction_y > 5 or (faction_y > 4 and Video.Height < 600)) then
				faction_x = faction_x + 2
				faction_y = -3
			else
				faction_y = faction_y + 1
			end
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

	encyclopedia_entry_menu:addLabel("~<" .. faction .. "~>", offx + 320, offy + 104 + 36*-2, nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64, Video.Height / 2)
	l:setLineWidth(Video.Width - 64)
	encyclopedia_entry_menu:add(l, 32, offy + 104 + 36*0)
	local description = ""
	if (GetFactionData(civilization, faction, "Description") ~= "") then
		description = "Description: " .. GetFactionData(civilization, faction, "Description")
	end
	l:setCaption(description)
			
	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() encyclopedia_entry_menu:stop(); end)
	encyclopedia_entry_menu:run()
end

function GetCivilizationBackground(civilization)
	if (civilization == "basque") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "dwarf") then
		return "ui/backgrounds/yale.png"
	elseif (civilization == "elf") then
		return "ui/backgrounds/yale.png"
	elseif (civilization == "germanic") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "gnome") then
		return "ui/backgrounds/yale.png"
	elseif (civilization == "goblin") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "goth") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "greek") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "kobold") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "illyrian") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "latin") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "minoan") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "norse") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "orc") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "persian") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "phoenician") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "slav") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "teuton") then
		return "ui/backgrounds/wyrm.png"
	end
	
	return "ui/backgrounds/wyrm.png"
end

function GetUnitBackground(unit_name, state)
	if (string.find(unit_name, "unit") ~= nil) then
		if (GetUnitTypeData(unit_name, "Civilization") ~= "") then
			return GetCivilizationBackground(GetUnitTypeData(unit_name, "Civilization"))
		elseif (unit_name == "unit-gryphon") then
			return "ui/backgrounds/gryphon.png"
		elseif (unit_name == "unit-wyrm") then
			return "ui/backgrounds/wyrm.png"
		elseif (unit_name == "unit-yale") then
			return "ui/backgrounds/yale.png"
		end
	elseif (string.find(unit_name, "upgrade") ~= nil) then
		return GetCivilizationBackground(CUpgrade:Get(unit_name).Civilization)
	elseif (state == "heroes") then
		if (GetCharacterData(unit_name, "Civilization") ~= "") then
			return GetCivilizationBackground(GetCharacterData(unit_name, "Civilization"))
		end
	end
	
	return "ui/backgrounds/wyrm.png"
end
