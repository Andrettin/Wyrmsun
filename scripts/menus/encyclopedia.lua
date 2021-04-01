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
--      (c) Copyright 2014-2021 by Andrettin
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

function OpenEncyclopediaUnitEntry(unit_name, state)
	if (state == "civilizations") then
		OpenEncyclopediaCivilizationEntry(unit_name)
		return;
	end
	
	if (state ~= "heroes" and state ~= "deities" and state ~= "item_prefixes" and state ~= "item_suffixes" and state ~= "unique_items") then
		if (state ~= "technologies" and string.find(unit_name, "upgrade") == nil) then
			if (
				(
					GetUnitTypeData(unit_name, "Notes") == ""
					and GetUnitTypeData(unit_name, "Description") == ""
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
			if (GetUpgradeData(unit_name, "Description") == "" and CUpgrade:Get(unit_name).Background == "") then
				return;
			end
		end
	end

	local menu = WarMenu(nil, GetBackground(GetUnitBackground(unit_name, state)))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2

	local encyclopedia_icon
	local encyclopedia_icon_frame = 0
	local civilization
	local faction
	local tooltip_name = ""
	local tooltip_civilization = ""
	if (string.find(unit_name, "unit") ~= nil) then
		encyclopedia_icon = GetIconData(GetUnitTypeData(unit_name, "Icon"), "File")
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
			encyclopedia_icon = GetIconData(GetUpgradeData(unit_name, "Icon"), "File")
			encyclopedia_icon_frame = GetIconData(GetUpgradeData(unit_name, "Icon"), "Frame")
		else
			encyclopedia_icon = "interface/default/button_large_normal.png"
			encyclopedia_icon_grayed = "interface/default/button_large_grayed.png"
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
	elseif (state == "heroes") then
		encyclopedia_icon = GetIconData(GetCharacterData(unit_name, "Icon"), "File")
		encyclopedia_icon_frame = GetIconData(GetCharacterData(unit_name, "Icon"), "Frame")
		civilization = GetCharacterData(unit_name, "Civilization")
		faction = GetCharacterData(unit_name, "Faction")
		tooltip_name = GetCharacterData(unit_name, "FullName")
		if (civilization ~= "") then
			tooltip_civilization = "(" ..  _(GetCivilizationData(civilization, "Display"))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(GetFactionData(faction, "Name"))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	elseif (state == "deities") then
		encyclopedia_icon = GetIconData(GetDeityData(unit_name, "Icon"), "File")
		encyclopedia_icon_frame = GetIconData(GetDeityData(unit_name, "Icon"), "Frame")
		civilization = ""
		faction = ""
		tooltip_name = GetDeityData(unit_name, "Name")
		if (GetDeityData(unit_name, "Pantheon") ~= "") then
			tooltip_civilization = "(" ..  _(GetDeityData(unit_name, "Pantheon")) .. ")"
		end
	elseif (state == "unique_items") then
		encyclopedia_icon = GetIconData(GetUniqueItemData(unit_name, "Icon"), "File")
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
	local playercolor
	if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
		if (civilization ~= "" and faction ~= "") then
			playercolor = GetFactionData(faction, "Color")
		elseif (civilization ~= "") then
			playercolor = GetCivilizationData(civilization, "DefaultColor")
		else
			playercolor = "gray"
		end
	end
	
	if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
		local menu_image = PlayerColorImageButton("", playercolor)
		menu:add(menu_image, (Video.Width / 2) - 23 * get_scale_factor(), offy + (104 + 36*-1) * get_scale_factor())
		menu_image:setNormalImage(encyclopedia_icon)
		menu_image:setPressedImage(encyclopedia_icon)
		menu_image:setDisabledImage(encyclopedia_icon)
		menu_image:set_frame(encyclopedia_icon_frame)
		menu_image:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
		menu_image:setIconFrameImage()
	end
	menu:addLabel("~<" .. tooltip_name .. "~>", offx + 320 * get_scale_factor(), offy + (104 + 36*-2) * get_scale_factor(), nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64 * get_scale_factor(), Video.Height - 96 * get_scale_factor())
	l:setLineWidth(Video.Width - 64 * get_scale_factor())
	menu:add(l, 32 * get_scale_factor(), offy + (104 + 36*0 + 18) * get_scale_factor())
	local civilization = ""
	local faction = ""
	local unit_type_type = ""
	local unit_type_class = ""
	local notes = ""
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
			unit_type_class = _("Class") .. ": " .. _(FullyCapitalizeString(string.gsub(GetUnitTypeData(unit_name, "Class"), "_", " "))) .. "\n\n"
		end
		if (GetUnitTypeData(unit_name, "Description") ~= "") then
			description = _("Description") .. ": " .. _(GetUnitTypeData(unit_name, "Description")) .. "\n\n"
		end
		if (GetUnitTypeData(unit_name, "Quote") ~= "") then
			quote = _("Quote") .. ": " .. _(GetUnitTypeData(unit_name, "Quote")) .. "\n\n"
		end
		if (GetUnitTypeData(unit_name, "Notes") ~= "") then
			notes = _("Notes") .. ": " .. _(GetUnitTypeData(unit_name, "Notes")) .. "\n\n"
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
			unit_type_class = _("Class") .. ": " .. _(FullyCapitalizeString(string.gsub(GetUpgradeData(unit_name, "Class"), "_", " "))) .. "\n\n"
		end
		if (GetUpgradeData(unit_name, "Description") ~= "") then
			description = _("Description") .. ": " .. _(GetUpgradeData(unit_name, "Description")) .. "\n\n"
		end
		if (GetUpgradeData(unit_name, "Quote") ~= "") then
			quote = _("Quote") .. ": " .. _(GetUpgradeData(unit_name, "Quote")) .. "\n\n"
		end
		if (string.find(unit_name, "prefix") ~= nil or string.find(unit_name, "suffix") ~= nil) then
			effects = _("Effects") .. ": " .. GetUpgradeEffectsString(unit_name) .. ".\n\n"
			local applies_to_items = GetUpgradeData(unit_name, "AppliesTo")
			table.sort(applies_to_items)
			if (table.getn(applies_to_items) > 0) then
			applies_to = _("Available For") .. ": "
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
		end
		if (GetUpgradeData(unit_name, "Background") ~= "") then
			background = _("Background") .. ": " .. _(GetUpgradeData(unit_name, "Background")) .. "\n\n"
		end
	elseif (state == "heroes") then
		trigger_hero = unit_name
	
		if (GetCharacterData(unit_name, "Civilization") ~= "") then
			civilization = _("Civilization") .. ": " .. _(GetCivilizationData(GetCharacterData(unit_name, "Civilization"), "Display")) .. "\n\n"
			if (GetCharacterData(unit_name, "Faction") ~= "") then
				faction = _("Faction") .. ": " .. _(GetFactionData(GetCharacterData(unit_name, "Faction"), "Name")) .. "\n\n"
			end
		end
		if (GetCharacterData(unit_name, "Type") ~= "") then
			unit_type_type = _("Type") .. ": " .. _(GetUnitTypeData(GetCharacterData(unit_name, "Type"), "Name")) .. "\n\n"
		end
		
		if (GetCharacterData(unit_name, "Father") ~= "") then
			description = description .. _("Father") .. ": " .. _(GetCharacterData(GetCharacterData(unit_name, "Father"), "Name")) .. "\n\n"
		end
		if (GetCharacterData(unit_name, "Mother") ~= "") then
			description = description .. _("Mother") .. ": " .. _(GetCharacterData(GetCharacterData(unit_name, "Mother"), "Name")) .. "\n\n"
		end
		
		local children = GetCharacterData(unit_name, "Children")
		if (table.getn(children) > 0) then
			description = description .. _("Children") .. ": "
			for i=1,table.getn(children) do
				description = description .. _(GetCharacterData(children[i], "Name"))
				if (i < table.getn(children)) then
					description = description .. ", "
				end
			end
			description = description .. "\n\n"
		end
		
		local deities = GetCharacterData(unit_name, "Deities")
		if (table.getn(deities) > 0) then
			description = description .. _("Deities") .. ": "
			for i=1,table.getn(deities) do
				description = description .. _(GetDeityData(deities[i], "Name"))
				if (i < table.getn(deities)) then
					description = description .. ", "
				end
			end
			description = description .. "\n\n"
		end
		description = description .. "Level: " .. GetCharacterData(unit_name, "Level") .. "\n\n"
		local abilities = GetCharacterData(unit_name, "Abilities")
		if (table.getn(abilities) > 0) then
			local displayed_abilities = {}
			local displayed_ability_count = {}
			for i = 1, table.getn(abilities) do
				local ability_name = _(GetUpgradeData(abilities[i], "Name"))
				if (GetArrayIncludes(displayed_abilities, ability_name) == false) then
					table.insert(displayed_abilities, ability_name)
					table.insert(displayed_ability_count, 1)
				else
					displayed_ability_count[GetElementIndexFromArray(displayed_abilities, ability_name)] = displayed_ability_count[GetElementIndexFromArray(displayed_abilities, ability_name)] + 1
				end
			end
			table.sort(displayed_abilities)
			description = description .. _("Acquired Abilities") .. ": "
			for i = 1, table.getn(displayed_abilities) do
				description = description .. displayed_abilities[i]
				if (displayed_ability_count[i] > 1) then
					description = description .. " (x" .. tostring(displayed_ability_count[i]) .. ")"
				end
				if (i < table.getn(displayed_abilities)) then
					description = description .. ", "
				end
			end
			description = description .. "\n\n"
		end
--		if (GetCharacterData(unit_name, "BirthDate") ~= "") then
--			description = description .. _("Birth Date") .. ": " .. GetCharacterData(unit_name, "BirthDate") .. "\n\n"
--		end
		if (GetCharacterData(unit_name, "Description") ~= "") then
			description = description .. _("Description") .. ": " .. _(ProcessEventString(GetCharacterData(unit_name, "Description"))) .. "\n\n"
		end
		if (GetCharacterData(unit_name, "Quote") ~= "") then
			quote = _("Quote") .. ": " .. _(ProcessEventString(GetCharacterData(unit_name, "Quote"))) .. "\n\n"
		end
		if (GetCharacterData(unit_name, "Background") ~= "") then
			background = _("Background") .. ": " .. _(ProcessEventString(GetCharacterData(unit_name, "Background"))) .. "\n\n"
		end
	elseif (state == "deities") then
		local deity_character = GetDeityData(unit_name, "Character")
		
		if (GetDeityData(unit_name, "Pantheon") ~= "") then
			description = description .. _("Pantheon") .. ": " .. _(GetDeityData(unit_name, "Pantheon")) .. "\n\n"
		end
		if (GetDeityData(unit_name, "Homeworld") ~= "") then
			description = description .. _("Homeworld") .. ": " .. _(GetWorldData(GetDeityData(unit_name, "Homeworld"), "Name")) .. "\n\n"
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
			description = description .. _("Domains") .. ": "
			for i=1,table.getn(domains) do
				description = description .. _(GetMagicDomainData(domains[i], "Name"))
				if (i < table.getn(domains)) then
					description = description .. ", "
				end
			end
			description = description .. "\n\n"
		end
		
		if (deity_character ~= "") then
			if (GetCharacterData(deity_character, "Father") ~= "") then
				description = description .. _("Father") .. ": " .. _(GetCharacterData(GetCharacterData(deity_character, "Father"), "Name")) .. "\n\n"
			end
			if (GetCharacterData(deity_character, "Mother") ~= "") then
				description = description .. _("Mother") .. ": " .. _(GetCharacterData(GetCharacterData(deity_character, "Mother"), "Name")) .. "\n\n"
			end
			
			local children = GetCharacterData(deity_character, "Children")
			if (table.getn(children) > 0) then
				description = description .. _("Children") .. ": "
				for i=1,table.getn(children) do
					description = description .. _(GetCharacterData(children[i], "Name"))
					if (i < table.getn(children)) then
						description = description .. ", "
					end
				end
				description = description .. "\n\n"
			end
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
		
		local spells = GetDeityData(unit_name, "Spells")
		table.sort(spells)
		if (table.getn(spells) > 0) then
			description = description .. _("Spells") .. ": "
			for i=1,table.getn(spells) do
				description = description .. _(GetSpellData(spells[i], "Name"))
				if (i < table.getn(spells)) then
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
	l:setCaption(civilization .. faction .. unit_type_type .. unit_type_class .. description .. quote .. notes .. effects .. applies_to .. background)

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
	
	-- add buttons of texts related to the subject matter of the entry
	local chapter_references = 0
	local texts = GetLiteraryTexts()
	for i, text_name in ipairs(texts) do
		local chapters = GetLiteraryTextData(text_name, "Chapters")
		for j=1, table.getn(chapters) do
			if (string.find(l:getCaption(), "~<" .. chapters[j] .. "~>") ~= nil) then
				chapter_references = chapter_references + 1
			end
		end
	end

	local chapter_x
	local chapter_y = 8
	if (has_family_tree_button) then
		chapter_y = 7
	end
	if (chapter_references == 1) then
		chapter_x = 0
	elseif (chapter_references == 2) then
		chapter_x = -1
	else
		chapter_x = -2
	end
	for i, text_name in ipairs(texts) do
		local chapters = GetLiteraryTextData(text_name, "Chapters")
		for j=1, table.getn(chapters) do
			if (string.find(l:getCaption(), "~<" .. chapters[j] .. "~>") ~= nil) then
				if (table.getn(chapters) > 1) then
					menu:addFullButton(chapters[j], "", offx + (208 + (113 * chapter_x)) * get_scale_factor(), offy + (104 + (36 * chapter_y)) * get_scale_factor(),
						function() OpenEncyclopediaText(text_name, chapters[j]); end)
				else
					menu:addFullButton(chapters[j], "", offx + (208 + (113 * chapter_x)) * get_scale_factor(), offy + (104 + (36 * chapter_y)) * get_scale_factor(),
						function() OpenEncyclopediaText(text_name); end)
				end
				chapter_x = chapter_x + 2
			end
		end
	end

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() menu:stop(); end)
	menu:run()
end

function RunEncyclopediaTextsMenu()

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2
	
	AddTopEncyclopediaLabel(menu, offx, offy, "texts")

	local texts = GetLiteraryTexts()
	local text_y = -1
	for i, text_identifier in ipairs(texts) do
		local text_name = GetLiteraryTextData(text_identifier, "Name")
		local text_hotkey = ""		
		if (string.find(_(text_name), "~!") ~= nil) then
			text_hotkey = string.sub(string.match(_(text_name), "~!%a"), 3)
			text_hotkey = string.lower(text_hotkey)
		end
		menu:addFullButton(text_name, text_hotkey, offx + 208 * get_scale_factor(), offy + (104 + 36*text_y) * get_scale_factor(),
			function() OpenEncyclopediaText(text_identifier); end)
		text_y = text_y + 1
	end

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() menu:stop(); end)

	menu:run()
end

function OpenEncyclopediaText(text_identifier, chosen_chapter)
	local encyclopedia_entry_menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2

	local height_offset = 2
	if (Video.Height >= (600 * get_scale_factor())) then
		height_offset = 0
	else
		height_offset = 2
	end
	
	local text_name = GetLiteraryTextData(text_identifier, "Name")
	local title = encyclopedia_entry_menu:addLabel("~<" .. text_name .. "~>", Video.Width / 2, offy + (104 + 36*(-4 + height_offset)) * get_scale_factor(), nil, true)
	title:adjustSize()
	title:setAlignment(MultiLineLabel.CENTER)

	local l = MultiLineLabel()
	if (Video.Height >= (600 * get_scale_factor())) then
		l:setFont(Fonts["game"])
	else
		l:setFont(Fonts["small"])
	end
	l:setSize(Video.Width - 64 * get_scale_factor(), Video.Height - 96 * get_scale_factor())
	l:setLineWidth(Video.Width - 64 * get_scale_factor())
	encyclopedia_entry_menu:add(l, 32 * get_scale_factor(), offy + (104 + 36*(-3 + height_offset)) * get_scale_factor())
	
	local chapters = GetLiteraryTextData(text_identifier, "Chapters")
	
	local current_chapter
	local current_chapter_number
	local page_number_label = encyclopedia_entry_menu:addLabel("     ", Video.Width / 2, (Video.Height - 90 * get_scale_factor()) + (18*4) * get_scale_factor(), Fonts["game"], true)
	page_number_label:setAlignment(MultiLineLabel.CENTER)
	local page_number
	local current_page = 1
	
	local cover_text = ""
	if (GetLiteraryTextData(text_identifier, "Author") ~= "") then
		cover_text = cover_text .. "\n\n" .. GetLiteraryTextData(text_identifier, "Author")
	end
	if (GetLiteraryTextData(text_identifier, "Translator") ~= "") then
		cover_text = cover_text .. "\n\n" .. GetLiteraryTextData(text_identifier, "Translator") .. " (Translator)"
	end
	if (GetLiteraryTextData(text_identifier, "Publisher") ~= "") then
		cover_text = cover_text .. "\n\n" .. GetLiteraryTextData(text_identifier, "Publisher")
	end
	if (GetLiteraryTextData(text_identifier, "Year") ~= 0) then
		cover_text = cover_text .. "\n\n" .. GetLiteraryTextData(text_identifier, "Year")
	end
	if (GetLiteraryTextData(text_identifier, "CopyrightNotice") ~= "") then
		cover_text = cover_text .. "\n\n" .. GetLiteraryTextData(text_identifier, "CopyrightNotice")
	end
	if (GetLiteraryTextData(text_identifier, "Notes") ~= "") then
		cover_text = cover_text .. "\n\n[Note: " .. GetLiteraryTextData(text_identifier, "Notes") .. "]"
	end

	if (chosen_chapter == nil) then
		current_chapter = "Cover"
		current_chapter_number = 1
		page_number = GetLiteraryTextData(text_identifier, "InitialPage") - 1
		l:setCaption(cover_text)
		l:setAlignment(MultiLineLabel.CENTER)
	else
		current_chapter = chosen_chapter
		current_chapter_number = GetLiteraryTextData(text_identifier, "ChapterIndex", current_chapter) + 1
		current_page = 1
		l:setCaption(GetLiteraryTextData(text_identifier, "ChapterPage", current_chapter, current_page));
		l:setAlignment(MultiLineLabel.LEFT)
		title:setCaption("~<" .. current_chapter .. "~>")
		title:adjustSize()
		title:setX((Video.Width / 2) - (title:getWidth() / 2))
		if not (GetLiteraryTextData(text_identifier, "ChapterIntroduction", current_chapter)) then
			page_number = GetLiteraryTextData(text_identifier, "InitialPage")
			for i=1, table.getn(chapters) do
				if (chapters[i] == current_chapter) then
					break
				end
				if not (GetLiteraryTextData(text_identifier, "ChapterIntroduction", chapters[i])) then
					page_number = page_number + GetLiteraryTextData(text_identifier, "ChapterPageQuantity", chapters[i])
				end
			end
			page_number_label:setCaption(page_number);
			page_number_label:adjustSize()
			page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))
		end
	end

	local chapter_buttons = {}
	
	local function SetChapter(new_chapter_name, new_page)
		current_chapter = new_chapter_name
		if (new_page) then
			current_page = new_page
		end
		
		if (current_chapter == "Cover") then
			current_chapter_number = 1
			l:setCaption(cover_text)
			l:setAlignment(MultiLineLabel.CENTER)
			title:setCaption("~<" .. text_name .. "~>")
			title:adjustSize()
			title:setX((Video.Width / 2) - (title:getWidth() / 2))
			page_number = GetLiteraryTextData(text_identifier, "InitialPage") - 1
			page_number_label:setCaption("     ");
			page_number_label:adjustSize()
			page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))
		elseif (current_chapter == "Contents") then
			current_chapter_number = 1
			l:setCaption("     ")
			l:setAlignment(MultiLineLabel.CENTER)
			title:setCaption("~<Table of Contents~>")
			title:adjustSize()
			title:setX((Video.Width / 2) - (title:getWidth() / 2))
			page_number = GetLiteraryTextData(text_identifier, "InitialPage") - 1
			page_number_label:setCaption("     ");
			page_number_label:adjustSize()
			page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))

			if (GetLiteraryTextData(text_identifier, "ChapterQuantity") > 1) then
				local chapter_x = 0
				if (GetLiteraryTextData(text_identifier, "ChapterQuantity") > 26) then
					chapter_x = -2
				elseif (GetLiteraryTextData(text_identifier, "ChapterQuantity") > 13) then
					chapter_x = -1
				end
				local chapter_y = -3
				for i=1, table.getn(chapters) do
					chapter_buttons[table.getn(chapter_buttons) + 1] = encyclopedia_entry_menu:addFullButton(chapters[i], "", offx + (208 + (113 * chapter_x)) * get_scale_factor(), offy + (104 + (36 * (chapter_y + height_offset) - 16)) * get_scale_factor(),
						function()
							for i=1,table.getn(chapter_buttons) do
								encyclopedia_entry_menu:remove(chapter_buttons[i])
							end
							chapter_buttons = nil
							chapter_buttons = {}

							current_chapter = chapters[i]
							current_chapter_number = i
							current_page = 1
							l:setCaption(GetLiteraryTextData(text_identifier, "ChapterPage", current_chapter, current_page));
							l:setAlignment(MultiLineLabel.LEFT)
							title:setCaption("~<" .. current_chapter .. "~>")
							title:adjustSize()
							title:setX((Video.Width / 2) - (title:getWidth() / 2))
							page_number = GetLiteraryTextData(text_identifier, "InitialPage")
							for j=1, table.getn(chapters) do
								if (j == i) then
									break
								end
								if not (GetLiteraryTextData(text_identifier, "ChapterIntroduction", chapters[j])) then
									page_number = page_number + GetLiteraryTextData(text_identifier, "ChapterPageQuantity", chapters[j])
								end
							end
							if not (GetLiteraryTextData(text_identifier, "ChapterIntroduction", current_chapter)) then
								page_number_label:setCaption(page_number);
								page_number_label:adjustSize()
								page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))
							else
								page_number = page_number - 1
							end
						end
					)
					if (chapter_y > 9 or (chapter_y > 4 and Video.Height < (600 * get_scale_factor()))) then
						chapter_x = chapter_x + 2
						chapter_y = -3
					else
						chapter_y = chapter_y + 1
					end
				end
			end
		else
			l:setCaption(GetLiteraryTextData(text_identifier, "ChapterPage", current_chapter, current_page));
			l:setAlignment(MultiLineLabel.LEFT)
			title:setCaption("~<" .. current_chapter .. "~>")
			title:adjustSize()
			title:setX((Video.Width / 2) - (title:getWidth() / 2))
		end
	end
	
	encyclopedia_entry_menu:addFullButton("Pre~!vious Page", "v", offx + (208 - 224 - 2) * get_scale_factor(), offy + (104 + (36 * (10 - height_offset) + 18)) * get_scale_factor(),
		function()
			if (current_chapter == "Cover") then
			elseif (current_chapter == "Contents") then
				for i=1,table.getn(chapter_buttons) do
					encyclopedia_entry_menu:remove(chapter_buttons[i])
				end
				chapter_buttons = nil
				chapter_buttons = {}

				SetChapter("Cover")
			elseif (current_page > 1) then
				current_page = current_page - 1;
				l:setCaption(GetLiteraryTextData(text_identifier, "ChapterPage", current_chapter, current_page));
				if not (GetLiteraryTextData(text_identifier, "ChapterIntroduction", current_chapter)) then
					page_number = page_number - 1
					page_number_label:setCaption(page_number);
					page_number_label:adjustSize()
					page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))
				end
			elseif (current_chapter_number > 1) then
				if not (GetLiteraryTextData(text_identifier, "ChapterIntroduction", current_chapter)) then
					page_number = page_number - 1
				end
				current_chapter_number = current_chapter_number - 1;
				SetChapter(chapters[current_chapter_number], GetLiteraryTextData(text_identifier, "ChapterPageQuantity", chapters[current_chapter_number]))
				if not (GetLiteraryTextData(text_identifier, "ChapterIntroduction", current_chapter)) then
					page_number_label:setCaption(page_number);
					page_number_label:adjustSize()
					page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))
				else
					page_number_label:setCaption("     ");
					page_number_label:adjustSize()
					page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))
				end
			else
				if (GetLiteraryTextData(text_identifier, "ChapterQuantity") > 1) then
					SetChapter("Contents")
				else
					SetChapter("Cover")
				end
			end
		end
	)
	encyclopedia_entry_menu:addFullButton("~!Next Page", "n", offx + (208 + 224 + 2) * get_scale_factor(), offy + (104 + (36 * (10 - height_offset) + 18)) * get_scale_factor(),
		function()
			if (current_chapter == "Cover") then
				if (GetLiteraryTextData(text_identifier, "ChapterQuantity") > 1) then
					SetChapter("Contents")
				else
					SetChapter(chapters[current_chapter_number], 1)
					if not (GetLiteraryTextData(text_identifier, "ChapterIntroduction", current_chapter)) then
						page_number = page_number + 1
						page_number_label:setCaption(page_number);
						page_number_label:adjustSize()
						page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))
					else
						page_number_label:setCaption("     ");
						page_number_label:adjustSize()
						page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))
					end
				end
			elseif (current_chapter == "Contents") then
				for i=1,table.getn(chapter_buttons) do
					encyclopedia_entry_menu:remove(chapter_buttons[i])
				end
				chapter_buttons = nil
				chapter_buttons = {}
						
				SetChapter(chapters[current_chapter_number], 1)
			elseif (current_page < GetLiteraryTextData(text_identifier, "ChapterPageQuantity", current_chapter)) then
				current_page = current_page + 1;
				l:setCaption(GetLiteraryTextData(text_identifier, "ChapterPage", current_chapter, current_page));
				if not (GetLiteraryTextData(text_identifier, "ChapterIntroduction", current_chapter)) then
					page_number = page_number + 1
					page_number_label:setCaption(page_number);
					page_number_label:adjustSize()
					page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))
				end
			elseif (current_chapter_number < GetLiteraryTextData(text_identifier, "ChapterQuantity")) then
				current_chapter_number = current_chapter_number + 1
				SetChapter(chapters[current_chapter_number], 1)
				if not (GetLiteraryTextData(text_identifier, "ChapterIntroduction", current_chapter)) then
					page_number = page_number + 1
					page_number_label:setCaption(page_number);
					page_number_label:adjustSize()
					page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))
				else
					page_number_label:setCaption("     ");
					page_number_label:adjustSize()
					page_number_label:setX((Video.Width / 2) - (page_number_label:getWidth() / 2))
				end
			end
		end
	)

	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * (10 - height_offset) + 18)) * get_scale_factor(),
		function()
			if (GetLiteraryTextData(text_identifier, "ChapterQuantity") > 1 and current_chapter ~= "Cover" and current_chapter ~= "Contents" and chosen_chapter == nil) then
				SetChapter("Contents", 1)
			else
				encyclopedia_entry_menu:stop();
			end
		end
	)

	encyclopedia_entry_menu:run()
end

function RunEncyclopediaWorldsMenu()

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2
	
	local height_offset = 2
	if (Video.Height >= (600 * get_scale_factor())) then
		height_offset = 2 -- change this to 0 if the number of world entries becomes too large
	else
		height_offset = 2
	end
	
	AddTopEncyclopediaLabel(menu, offx, offy, "worlds", 2)

	local potential_worlds = GetWorlds()
	local worlds = {}
	
	for i = 1, table.getn(potential_worlds) do
		if (GetWorldData(potential_worlds[i], "Description") ~= "") then
			table.insert(worlds, potential_worlds[i])
		end
	end
	table.sort(worlds)

	local world_x = 0
	if (GetTableSize(worlds) > 20) then
		world_x = -2
	elseif (GetTableSize(worlds) > 10) then
		world_x = -1
	end
	local world_y = -3

	for i=1,table.getn(worlds) do
		menu:addFullButton(_(GetWorldData(worlds[i], "Name")), "", offx + (208 + (113 * world_x)) * get_scale_factor(), offy + (104 + (36 * (world_y + height_offset))) * get_scale_factor(),
			function() OpenEncyclopediaWorldEntry(worlds[i]); end)

		if (world_y > 5 or (world_y > 4 and Video.Height < (600 * get_scale_factor()))) then
			world_x = world_x + 2
			world_y = -3
		else
			world_y = world_y + 1
		end
	end

--	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() menu:stop(); end)

	menu:run()
end

function OpenEncyclopediaWorldEntry(world)
	local encyclopedia_entry_menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2

	encyclopedia_entry_menu:addLabel("~<" .. _(GetWorldData(world, "Name")) .. "~>", offx + 320 * get_scale_factor(), offy + (104 + 36*-2) * get_scale_factor(), nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64 * get_scale_factor(), Video.Height - 96 * get_scale_factor())
	l:setLineWidth(Video.Width - 64 * get_scale_factor())
	encyclopedia_entry_menu:add(l, 32 * get_scale_factor(), offy + (104 + 36*0) * get_scale_factor())
	local description = ""

	local sapient_species_names = GetWorldData(world, "NativeSapientSpeciesNames")
	local fauna_species_names = GetWorldData(world, "NativeFaunaSpeciesNames")

	if (table.getn(sapient_species_names) > 0) then
		description = description .. _("Native Sapients") .. ": "
		for i = 1, table.getn(sapient_species_names) do
			description = description .. _(GetPluralForm(sapient_species_names[i]))
			if (i < table.getn(sapient_species_names)) then
				description = description .. ", "
			end
		end
		description = description .. "\n\n"
	end
	if (table.getn(fauna_species_names) > 0) then
		description = description .. _("Native Fauna") .. ": "
		for i = 1, table.getn(fauna_species_names) do
			description = description .. _(GetPluralForm(fauna_species_names[i]))
			if (i < table.getn(fauna_species_names)) then
				description = description .. ", "
			end
		end
		description = description .. "\n\n"
	end
	if (GetWorldData(world, "Description") ~= "") then
		description = description .. _("Description") .. ": " .. _(GetWorldData(world, "Description"))
	end
	if (GetWorldData(world, "Background") ~= "") then
		description = description .. "\n\n" .. _("Background") .. ": " .. _(GetWorldData(world, "Background"))
	end
	l:setCaption(description)
			
	-- add buttons of texts related to the subject matter of the entry
	local chapter_references = 0
	local texts = GetLiteraryTexts()
	for i, text_name in ipairs(texts) do
		local chapters = GetLiteraryTextData(text_name, "Chapters")
		for j=1, table.getn(chapters) do
			if (string.find(l:getCaption(), "~<" .. chapters[j] .. "~>") ~= nil) then
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

	for i, text_name in ipairs(texts) do
		local chapters = GetLiteraryTextData(text_name, "Chapters")
		for j=1, table.getn(chapters) do
			if (string.find(l:getCaption(), "~<" .. chapters[j] .. "~>") ~= nil) then
				if (table.getn(chapters) > 1) then
					encyclopedia_entry_menu:addFullButton(chapters[j], "", offx + (208 + (113 * chapter_x)) * get_scale_factor(), offy + (104 + (36 * chapter_y)) * get_scale_factor(),
						function() OpenEncyclopediaText(text_name, chapters[j]); end)
				else
					encyclopedia_entry_menu:addFullButton(chapters[j], "", offx + (208 + (113 * chapter_x)) * get_scale_factor(), offy + (104 + (36 * chapter_y)) * get_scale_factor(),
						function() OpenEncyclopediaText(text_name); end)
				end
				chapter_x = chapter_x + 2
			end
		end
	end

	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() encyclopedia_entry_menu:stop(); end)
	encyclopedia_entry_menu:run()
end

function RunEncyclopediaGameConceptsMenu()	
	local game_concepts = GameConcepts

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2
	
	local height_offset = 2
	if (Video.Height >= (600 * get_scale_factor())) then
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
		menu:addFullButton(_(game_concepts[game_concept_key].Name), game_concept_hotkey, offx + (208 + (113 * game_concept_x)) * get_scale_factor(), offy + (104 + (36 * (game_concept_y + height_offset))) * get_scale_factor(),
			function() OpenEncyclopediaGameConceptEntry(game_concept_key); end)

		if (game_concept_y > 5) then
			game_concept_x = game_concept_x + 2
			game_concept_y = -3
		else
			game_concept_y = game_concept_y + 1
		end
	end

--	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() menu:stop(); end)

	menu:run()
end

function OpenEncyclopediaGameConceptEntry(game_concept_key)
	local game_concepts = GameConcepts

	local encyclopedia_entry_menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2

	encyclopedia_entry_menu:addLabel("~<" .. game_concepts[game_concept_key].Name .. "~>", offx + 320 * get_scale_factor(), offy + (104 + 36*-2) * get_scale_factor(), nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64 * get_scale_factor(), Video.Height - 96 * get_scale_factor())
	l:setLineWidth(Video.Width - 64 * get_scale_factor())
	encyclopedia_entry_menu:add(l, 32 * get_scale_factor(), offy + (104 + 36*0) * get_scale_factor())
	local description = ""
	if (game_concepts[game_concept_key].Description ~= nil) then
		description = _("Description") .. ": " .. game_concepts[game_concept_key].Description
	end
	l:setCaption(description)
			
	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() encyclopedia_entry_menu:stop(); end)
	encyclopedia_entry_menu:run()
end

function OpenEncyclopediaCivilizationEntry(civilization)
	local encyclopedia_entry_menu = WarMenu(nil, GetBackground(GetCivilizationBackground(civilization)))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2

	encyclopedia_entry_menu:addLabel("~<" .. GetCivilizationData(civilization, "Display") .. "~>", offx + 320 * get_scale_factor(), offy + (104 + 36*-2) * get_scale_factor(), nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64 * get_scale_factor(), Video.Height - 96 * get_scale_factor())
	l:setLineWidth(Video.Width - 64 * get_scale_factor())
	encyclopedia_entry_menu:add(l, 32 * get_scale_factor(), offy + (104 + 36*0) * get_scale_factor())
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
			
	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() encyclopedia_entry_menu:stop(); end)
	encyclopedia_entry_menu:run()
end

function RunEncyclopediaFactionsCivilizationMenu()
	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2
	
	local height_offset = 2
	if (Video.Height >= (600 * get_scale_factor())) then
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
		menu:addFullButton(_(GetCivilizationData(civilizations[i], "Adjective") .. " " .. _("Factions")), "", offx + (208 + (113 * civilization_x)) * get_scale_factor(), offy + (104 + (36 * (civilization_y + height_offset))) * get_scale_factor(),
			function() RunEncyclopediaFactionsMenu(civilizations[i]); end)

		if (civilization_y > 5 or (civilization_y > 4 and Video.Height < (600 * get_scale_factor()))) then
			civilization_x = civilization_x + 2
			civilization_y = -3
		else
			civilization_y = civilization_y + 1
		end
	end

--	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() menu:stop(); end)

	menu:run()
end

function RunEncyclopediaFactionsMenu(civilization)
	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2
	
	local height_offset = 2
	if (Video.Height >= (600 * get_scale_factor())) then
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
		menu:addFullButton(_(GetFactionData(factions[i], "Name")), "", offx + (208 + (113 * faction_x)) * get_scale_factor(), offy + (104 + (36 * (faction_y + height_offset))) * get_scale_factor(),
			function() OpenEncyclopediaFactionEntry(civilization, factions[i]); end)

		if (faction_y > 5 or (faction_y > 4 and Video.Height < (600 * get_scale_factor()))) then
			faction_x = faction_x + 2
			faction_y = -3
		else
			faction_y = faction_y + 1
		end
	end

--	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() menu:stop(); end)

	menu:run()
end

function OpenEncyclopediaFactionEntry(civilization, faction)
	local encyclopedia_entry_menu = WarMenu(nil, GetBackground(GetCivilizationBackground(civilization)))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2

	encyclopedia_entry_menu:addLabel("~<" .. GetFactionData(faction, "Name") .. "~>", offx + 320 * get_scale_factor(), offy + (104 + 36*-2) * get_scale_factor(), nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64 * get_scale_factor(), Video.Height - 96 * get_scale_factor())
	l:setLineWidth(Video.Width - 64 * get_scale_factor())
	encyclopedia_entry_menu:add(l, 32 * get_scale_factor(), offy + (104 + 36*0) * get_scale_factor())
	local effects = ""
	if (GetFactionData(faction, "FactionUpgrade") ~= "") then
		effects = GetUpgradeData(GetFactionData(faction, "FactionUpgrade"), "EffectsString")
	end
	local description = ""
	description = "Color: " .. CapitalizeString(GetFactionData(faction, "Color")) .. "\n\n"
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
			
	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
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
	elseif (civilization == "anglo_saxon" or civilization == "english" or civilization == "frankish" or civilization == "goth" or civilization == "norse" or civilization == "suebi" or civilization == "teuton") then
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
		elseif (unit_name == "unit_wyrm") then
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
	if (state == "factions") then
		top_label_string = top_label_string .. _("Factions")
	elseif (state == "game_concepts") then
		top_label_string = top_label_string .. _("Game Concepts")
	elseif (state == "texts") then
		top_label_string = top_label_string .. _("Texts")
	elseif (state == "worlds") then
		top_label_string = top_label_string .. _("Worlds")
	end
	top_label_string = top_label_string .. "~>"
	menu:addLabel(top_label_string, offx + 320 * get_scale_factor(), offy + (104 + 36 * (-4 + height_offset)) * get_scale_factor(), nil, true)
end
