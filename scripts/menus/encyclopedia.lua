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
--      encyclopedia.lua - Defines the encyclopedia for tech trees.
--
--      (c) Copyright 2014 by Andrettin
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

	Load("scripts/game_concepts.lua")
	Load("scripts/texts.lua")
	Load("scripts/worlds.lua")
	Load("scripts/menus/encyclopedia_civilizations.lua")

	if (RunningScenario == false) then
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }
		
		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
		end
	end

	local menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	menu:addLabel(_("~<Encyclopedia~>"), offx + 320, offy + 104 + 36*-2)

	menu:addFullButton(_("~!Civilizations"), "c", offx + 208, offy + 104 + 36*-1,
		function() RunEncyclopediaCivilizationsMenu() end)

	menu:addFullButton(_("~!Factions"), "f", offx + 208, offy + 104 + 36*0,
		function() RunEncyclopediaFactionsMenu() end)

	menu:addFullButton(_("~!Units"), "u", offx + 208, offy + 104 + 36*1,
		function() RunEncyclopediaUnitsMenu("units") end)

	menu:addFullButton(_("~!Buildings"), "b", offx + 208, offy + 104 + 36*2,
		function() RunEncyclopediaUnitsMenu("buildings") end)

	menu:addFullButton(_("~!Technologies"), "t", offx + 208, offy + 104 + 36*3,
		function() RunEncyclopediaUnitsMenu("technologies") end)

	menu:addFullButton(_("~!Heroes"), "h", offx + 208, offy + 104 + 36*4,
		function() RunEncyclopediaUnitsMenu("heroes") end)

	menu:addFullButton(_("~!Mercenaries"), "m", offx + 208, offy + 104 + 36*5,
		function() RunEncyclopediaUnitsMenu("mercenaries") end)

	menu:addFullButton(_("~!Worlds"), "w", offx + 208, offy + 104 + 36*6,
		function() RunEncyclopediaWorldsMenu() end)

	menu:addFullButton(_("~!Game Concepts"), "g", offx + 208, offy + 104 + 36*7,
		function() RunEncyclopediaGameConceptsMenu() end)

	menu:addFullButton(_("Te~!xts"), "x", offx + 208, offy + 104 + 36*8,
		function() RunEncyclopediaTextsMenu() end)

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() Texts = nil; Worlds = nil; CivilizationsEncyclopedia = nil; FactionsEncyclopedia = nil; menu:stop(); end)

	menu:run()
end

function RunEncyclopediaUnitsMenu(state)

	if (RunningScenario == false) then
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }

		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
		end
	end

	local menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	local icon_x = 0
	local icon_y = 0
	for i, unitName in ipairs(Units) do
		if (state ~= "technologies" and string.find(unitName, "upgrade-") == nil) then
			if ((GetUnitTypeData(unitName, "Description") ~= "" or GetUnitTypeData(unitName, "Background") ~= "") and GetUnitTypeData(unitName, "Building") == (state == "buildings") and IsHero(unitName) == (state == "heroes") and (GetUnitTypeData(unitName, "Mercenary") and GetUnitTypeData(unitName, "Building") == false) == (state == "mercenaries")) then
				addEncyclopediaIcon(unitName, menu, offx + 23 + 4 + (54 * icon_x), offy + 10 + 4 + (46 * (icon_y + 1)))
				if (icon_x >= 10) then
					icon_x = 0
					icon_y = icon_y + 1
				else
					icon_x = icon_x + 1
				end
			end
		elseif (state == "technologies" and string.find(unitName, "unit-") == nil) then
			if (CUpgrade:Get(unitName).Description ~= "" or CUpgrade:Get(unitName).Background ~= "") then
				addEncyclopediaIcon(unitName, menu, offx + 23 + 4 + (54 * icon_x), offy + 10 + 4 + (46 * (icon_y + 1)))
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
	elseif (state == "heroes") then
		menu:addLabel("~<Encyclopedia: Heroes~>", offx + 320, offy + 104 + 36*-2)
	elseif (state == "mercenaries") then
		menu:addLabel("~<Encyclopedia: Mercenaries~>", offx + 320, offy + 104 + 36*-2)
	end

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * 9),
		function() menu:stop(); end)

	menu:run()
end

function addEncyclopediaIcon(unit_name, menu, x, y)
	local encyclopedia_icon
	local civilization
	local tooltip_name = ""
	local tooltip_civilization = ""
	if (string.find(unit_name, "upgrade-") == nil) then
		encyclopedia_icon = CIcon:Get(GetUnitTypeData(unit_name, "Icon")).G
		civilization = GetUnitTypeData(unit_name, "Civilization")
		if (GetUnitTypeData(unit_name, "Hero") == false) then
			tooltip_name = GetUnitTypeData(unit_name, "Name")
		else
			tooltip_name = GetUnitTypeData(unit_name, "DefaultName")
		end
		if (GetUnitTypeData(unit_name, "Civilization") ~= "") then
			tooltip_civilization = "(" ..  _(CapitalizeString(GetUnitTypeData(unit_name, "Civilization"))) .. ")"
		end
	else
		encyclopedia_icon = CUpgrade:Get(unit_name).Icon.G
		civilization = CUpgrade:Get(unit_name).Civilization
		tooltip_name = CUpgrade:Get(unit_name).Name
		if (CUpgrade:Get(unit_name).Civilization ~= "") then
			tooltip_civilization = "(" ..  _(CapitalizeString(CUpgrade:Get(unit_name).Civilization)) .. ")"
		end
	end
	encyclopedia_icon:Load()
	local playercolor
	if (civilization == "celt") then
		playercolor = "green"
	elseif (civilization == "dwarf") then
		playercolor = "red"
	elseif (civilization == "germanic") then
		playercolor = "orange"
	elseif (civilization == "gnome") then
		playercolor = "blue"
	elseif (civilization == "goblin") then
		playercolor = "teal"
	elseif (civilization == "kobold") then
		playercolor = "violet"
	elseif (civilization == "elf") then
		playercolor = "teal"
	elseif (civilization == "orc") then
		playercolor = "red"
	elseif (civilization == "teuton") then
		playercolor = "orange"
	else
		playercolor = "gray"
	end
	local b = PlayerColorImageButton("", playercolor)
	b:setActionCallback(
		function()
			PlaySound("click")
			
			if (RunningScenario == false) then
				wyrmsun.playlist = { "music/battle_theme_a.ogg" }

				if not (IsMusicPlaying()) then
					PlayMusic("music/battle_theme_a.ogg")
				end
			end

			local encyclopedia_entry_menu = WarMenu(nil, GetBackground(GetUnitBackground(unit_name)))
			local offx = (Video.Width - 640) / 2
			local offy = (Video.Height - 480) / 2

			local encyclopedia_entry_menu_image = ImageWidget(encyclopedia_icon)
			encyclopedia_entry_menu:add(encyclopedia_entry_menu_image, (Video.Width / 2) - 23, offy + 104 + 36*-1)
			encyclopedia_entry_menu:addLabel("~<" .. tooltip_name .. "~>", offx + 320, offy + 104 + 36*-2, nil, true)

			local l = MultiLineLabel()
			l:setFont(Fonts["game"])
			l:setSize(Video.Width - 64, Video.Height / 2)
			l:setLineWidth(Video.Width - 64)
			encyclopedia_entry_menu:add(l, 32, offy + 104 + 36*0 + 18)
			local civilization = ""
			local unit_type_class = ""
			local description = ""
			local quote = ""
			local background = ""
			if (string.find(unit_name, "upgrade-") == nil) then
				if (GetUnitTypeData(unit_name, "Civilization") ~= "") then
					civilization = "Civilization: " .. _(CapitalizeString(GetUnitTypeData(unit_name, "Civilization"))) .. "\n\n"
				end
				if (GetUnitTypeData(unit_name, "Class") ~= "") then
					unit_type_class = "Class: " .. _(FullyCapitalizeString(string.gsub(GetUnitTypeData(unit_name, "Class"), "-", " "))) .. "\n\n"
				end
				if (GetUnitTypeData(unit_name, "Description") ~= "") then
					description = "Description: " .. GetUnitTypeData(unit_name, "Description")
				end
				if (GetUnitTypeData(unit_name, "Quote") ~= "") then
					quote = "\n\nQuote: " .. GetUnitTypeData(unit_name, "Quote")
				end
				if (GetUnitTypeData(unit_name, "Background") ~= "") then
					background = "\n\nBackground: " .. GetUnitTypeData(unit_name, "Background")
				end
			else
				if (CUpgrade:Get(unit_name).Civilization ~= "") then
					civilization = "Civilization: " .. CapitalizeString(CUpgrade:Get(unit_name).Civilization) .. "\n\n"
				end
				if (CUpgrade:Get(unit_name).Class ~= "") then
					unit_type_class = "Class: " .. _(FullyCapitalizeString(string.gsub(CUpgrade:Get(unit_name).Class, "-", " "))) .. "\n\n"
				end
				if (CUpgrade:Get(unit_name).Description ~= "") then
					description = "Description: " .. CUpgrade:Get(unit_name).Description
				end
				if (CUpgrade:Get(unit_name).Quote ~= "") then
					quote = "\n\nQuote: " .. CUpgrade:Get(unit_name).Quote
				end
				if (CUpgrade:Get(unit_name).Background ~= "") then
					background = "\n\nBackground: " .. CUpgrade:Get(unit_name).Background
				end
			end
			l:setCaption(civilization .. unit_type_class .. description .. quote .. background)
--			l:setCaption(civilization .. description .. quote .. background)
			
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
	)
	menu:add(b, x, y)
	b:setNormalImage(encyclopedia_icon)
	b:setPressedImage(encyclopedia_icon)
	b:setDisabledImage(encyclopedia_icon)
	b:setSize(46, 38)
	b:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
	b:setFrameImage(Preference.IconFrameG)
	b:setPressedFrameImage(Preference.PressedIconFrameG)
	b:setTooltip(tooltip_name .. " " .. tooltip_civilization)
	return b
end

function RunEncyclopediaTextsMenu()

	if (RunningScenario == false) then
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }

		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
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
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }

		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
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
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }

		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
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

	local world_x = 0
	if (GetTableSize(Worlds) > 20) then
		world_x = -2
	elseif (GetTableSize(Worlds) > 10) then
		world_x = -1
	end
	local world_y = -3

	for world_key, world_value in pairsByKeys(Worlds) do
		local world_hotkey = ""		
		if (string.find(_(Worlds[world_key].Name), "~!") ~= nil) then
			world_hotkey = string.sub(string.match(_(Worlds[world_key].Name), "~!%a"), 3)
			world_hotkey = string.lower(world_hotkey)
		end
		menu:addFullButton(_(Worlds[world_key].Name), world_hotkey, offx + 208 + (113 * world_x), offy + 104 + (36 * (world_y + height_offset)),
			function() OpenEncyclopediaWorldEntry(world_key); end)

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

function OpenEncyclopediaWorldEntry(world_key)
	if (RunningScenario == false) then
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }

		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
		end
	end

	local encyclopedia_entry_menu = WarMenu(nil, GetBackground("ui/backgrounds/wyrm.png"))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	encyclopedia_entry_menu:addLabel("~<" .. Worlds[world_key].Name .. "~>", offx + 320, offy + 104 + 36*-2, nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64, Video.Height / 2)
	l:setLineWidth(Video.Width - 64)
	encyclopedia_entry_menu:add(l, 32, offy + 104 + 36*0)
	local description = ""
	local background = ""
	if (Worlds[world_key].Description ~= "") then
		description = "Description: " .. Worlds[world_key].Description
	end
	if (Worlds[world_key].Background ~= "") then
		background = "\n\nBackground: " .. Worlds[world_key].Background
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
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }

		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
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
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }

		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
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
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }

		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
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
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }

		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
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
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }

		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
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

	local faction_x = 0
	if (GetTableSize(FactionsEncyclopedia) > 20) then
		faction_x = -2
	elseif (GetTableSize(FactionsEncyclopedia) > 10) then
		faction_x = -1
	end
	local faction_y = -3

	for faction_key, faction_value in pairsByKeys(FactionsEncyclopedia) do
		local faction_hotkey = ""		
		if (string.find(_(FactionsEncyclopedia[faction_key].Name), "~!") ~= nil) then
			faction_hotkey = string.sub(string.match(_(FactionsEncyclopedia[faction_key].Name), "~!%a"), 3)
			faction_hotkey = string.lower(faction_hotkey)
		end
		menu:addFullButton(_(FactionsEncyclopedia[faction_key].Name), faction_hotkey, offx + 208 + (113 * faction_x), offy + 104 + (36 * (faction_y + height_offset)),
			function() OpenEncyclopediaFactionEntry(faction_key); end)

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

function OpenEncyclopediaFactionEntry(faction_key)
	if (RunningScenario == false) then
		wyrmsun.playlist = { "music/battle_theme_a.ogg" }

		if not (IsMusicPlaying()) then
			PlayMusic("music/battle_theme_a.ogg")
		end
	end

	local encyclopedia_entry_menu = WarMenu(nil, GetBackground(GetCivilizationBackground(FactionsEncyclopedia[faction_key].Civilization)))
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	encyclopedia_entry_menu:addLabel("~<" .. FactionsEncyclopedia[faction_key].Name .. "~>", offx + 320, offy + 104 + 36*-2, nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64, Video.Height / 2)
	l:setLineWidth(Video.Width - 64)
	encyclopedia_entry_menu:add(l, 32, offy + 104 + 36*0)
	local description = ""
	if (FactionsEncyclopedia[faction_key].Description ~= nil) then
		description = "Description: " .. FactionsEncyclopedia[faction_key].Description
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
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "elf") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "germanic") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "gnome") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "goblin") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "goth") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "greek") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "kobold") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "latin") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "minoan") then
		return "ui/backgrounds/gryphon.png"
	elseif (civilization == "norse") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "orc") then
		return "ui/backgrounds/wyrm.png"
	elseif (civilization == "teuton") then
		return "ui/backgrounds/wyrm.png"
	end
	
	return "ui/backgrounds/wyrm.png"
end

function GetUnitBackground(unit_name)
	if (string.find(unit_name, "upgrade-") == nil) then
		if (GetUnitTypeData(unit_name, "Civilization") ~= "") then
			return GetCivilizationBackground(GetUnitTypeData(unit_name, "Civilization"))
		elseif (unit_name == "unit-gryphon") then
			return "ui/backgrounds/gryphon.png"
		end
	else
		return GetCivilizationBackground(CUpgrade:Get(unit_name).Civilization)
	end
	
	return "ui/backgrounds/wyrm.png"
end
