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
--      (c) Copyright 2014-2020 by Andrettin
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

RunningScenario = false
QuestWorlds = {"~!Earth", "~!Nidavellir"}

function RunQuestWorldMenu()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusicName("MenuTheme")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	menu:addLabel(_("~<Quests~>"), offx + 320, offy + 212 - 25 - (36 * 1))

	local quest_world_y = 2
	for i=1, table.getn(QuestWorlds) do
		local quest_world_hotkey = ""		
		if (string.find(QuestWorlds[i], "~!") ~= nil) then
			quest_world_hotkey = string.sub(string.match(_(QuestWorlds[i]), "~!%a"), 3)
			quest_world_hotkey = string.lower(quest_world_hotkey)
		end
		local quest_world_name = string.gsub(QuestWorlds[i], "~!", "")
		quest_world_name = string.lower(quest_world_name)
		
		menu:addFullButton(_(QuestWorlds[i]), quest_world_hotkey, offx + 208, offy + 104 + 36*quest_world_y,
		function()
			RunQuestMenu(quest_world_name);
			if (RunningScenario) then
				menu:stop()
			end
		end)
		
		quest_world_y = quest_world_y + 1
	end

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + 36*quest_world_y,
		function() menu:stop() end
	)
	return menu:run()
end

function RunQuestMenu(world)
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")

	if not (IsMusicPlaying()) then
		PlayMusicName("MenuTheme")
	end

	local no_randomness
	local no_time_of_day
	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	RunningScenario = false
	
	menu:addLabel(_("~<Quests~>"), offx + 320, offy + 104 + 36*-2)

	local completed_quest_quantity = 0
	local total_quest_quantity = 0
	local item_x = 1
	local item_y = 1
	local quests = GetQuests()
	for i=1, table.getn(quests) do
		if (GetQuestData(quests[i], "Hidden") == false and GetQuestData(quests[i], "World") == world and GetQuestData(quests[i], "Map") ~= "") then
			total_quest_quantity = total_quest_quantity + 1
			if (GetQuestData(quests[i], "RequiredQuest") == "" or GetQuestData(GetQuestData(quests[i], "RequiredQuest"), "Completed") or GetQuestData(quests[i], "Completed")) then
				addQuestIcon(quests[i], menu, offx + 23 + 4 + (54 * item_x), offy + 10 + 4 + (46 * (item_y + 1))) -- increase Y by 1 because there are few enough quests that it makes sense to make the existing quests more centralized in the interface
			
				item_x = item_x + 1
				if (item_x > 9) then
					item_x = 1
					item_y = item_y + 1
				end
				if (GetQuestData(quests[i], "Completed")) then
					completed_quest_quantity = completed_quest_quantity + 1
				end
			end
		end
	end
	
	--[[
	local quest_completion_percent = completed_quest_quantity * 100 / total_quest_quantity
	local badge_icon
	if (quest_completion_percent == 100) then
		badge_icon = CGraphic:New("ui/icons/badge_foil.png")
	elseif (quest_completion_percent >= 80) then
		badge_icon = CGraphic:New("ui/icons/badge_gold.png")
	elseif (quest_completion_percent >= 60) then
		badge_icon = CGraphic:New("ui/icons/badge_silver.png")
	elseif (quest_completion_percent >= 40) then
		badge_icon = CGraphic:New("ui/icons/badge_bronze.png")
	elseif (quest_completion_percent >= 20) then
		badge_icon = CGraphic:New("ui/icons/badge_glow.png")
	else
		badge_icon = CGraphic:New("ui/icons/badge_cracked.png")
	end
	badge_icon:Load()
	local b = ImageWidget(badge_icon)
	menu:add(b, (Video.Width / 2) - (badge_icon:getWidth() / 2), (Video.Height / 2) - (badge_icon:getHeight() / 2))
	b:setTooltip(completed_quest_quantity .. "/" .. total_quest_quantity .. " Quests Completed")
	--]]
	menu:addLabel(completed_quest_quantity .. "/" .. total_quest_quantity .. _(" Quests Completed"), Video.Width / 2, Video.Height / 2, Fonts["game"], true)

	no_randomness = menu:addImageCheckBox(_("No Randomness"), offx + 480, offy + 10 + 270 + 3,
		function()
			wyr.preferences.NoRandomness = no_randomness:isMarked()
			SavePreferences()
		end
	)
	no_randomness:setMarked(wyr.preferences.NoRandomness)
	
	no_time_of_day = menu:addImageCheckBox(_("No Day/Night Cycle"), offx + 480, offy + 10 + 300 + 3,
		function()
			wyr.preferences.NoTimeOfDay = no_time_of_day:isMarked()
			SavePreferences()
		end
	)
	no_time_of_day:setMarked(wyr.preferences.NoTimeOfDay)
	
	local difficulty_list = {_("Easy"), _("Normal"), _("Hard"),_("Brutal")}
	local difficulty = nil
	
	menu:addLabel(_("Difficulty:"), offx + 244, offy + (10 + 300) - 20, Fonts["game"], false)
	difficulty = menu:addDropDown(difficulty_list, offx + 244, offy + 10 + 300,
		function(dd)
			wyr.preferences.Difficulty = difficulty:getSelected() + 1
			SavePreferences()
		end
	)
	difficulty:setSize(152, 20)
	difficulty:setSelected(wyr.preferences.Difficulty - 1)

	local custom_heroes = GetCustomHeroes()
	local hero_list = {}
	local hero_name_list = {}
	for i=1,table.getn(custom_heroes) do
		if (
			(world == "earth" and (GetCustomHeroData(custom_heroes[i], "Civilization") == "germanic" or GetCustomHeroData(custom_heroes[i], "Civilization") == "anglo-saxon" or GetCustomHeroData(custom_heroes[i], "Civilization") == "english" or GetCustomHeroData(custom_heroes[i], "Civilization") == "frankish" or GetCustomHeroData(custom_heroes[i], "Civilization") == "goth" or GetCustomHeroData(custom_heroes[i], "Civilization") == "suebi" or GetCustomHeroData(custom_heroes[i], "Civilization") == "teuton" or GetCustomHeroData(custom_heroes[i], "Civilization") == "norse" or GetCustomHeroData(custom_heroes[i], "Civilization") == "latin"))
			or (world == "nidavellir" and GetCustomHeroData(custom_heroes[i], "Civilization") == "dwarf")
			or (world == "nidavellir" and GetCustomHeroData(custom_heroes[i], "Civilization") == "gnome")
			or (world == "nidavellir" and GetCustomHeroData(custom_heroes[i], "Civilization") == "goblin")
		) then
			table.insert(hero_list, custom_heroes[i])
		end
	end
	local hero_dd
	table.sort(hero_list)
	for i=1,table.getn(hero_list) do
		table.insert(hero_name_list, GetCustomHeroData(hero_list[i], "FullName"))
	end
	table.insert(hero_list, "") -- to allow players to choose having no custom hero selected
	table.insert(hero_name_list, "")
	menu:addLabel(_("Custom Hero:"), offx + 30, offy + (10 + 300) - 20, Fonts["game"], false)
	hero_dd = menu:addDropDown(hero_name_list, offx + 30, offy + 10 + 300,
		function(dd)
			SetCurrentCustomHero(hero_list[hero_dd:getSelected() + 1])
			menu:stop()
			RunQuestMenu(world)
		end
	)
	hero_dd:setSize(152, 20)
	hero_dd:setSelected(GetElementIndexFromArray(hero_list, GetCurrentCustomHero()) - 1)
				
	menu:addFullButton(_("Create Custom ~!Hero"), "h", offx + 208, offy + 212 + (36 * 4),
		function() CustomHeroCreationMenu(world, menu);
		end
	)
	
	menu:addFullButton(_("~!Delete Custom Hero"), "d", offx + 208 + 226, offy + 212 + (36 * 4),
		function()
			if (GetCurrentCustomHero() ~= "") then
				local confirm = WarGameMenu(panel(4))

				confirm:resize(288,128)

				confirm:addLabel(_("Delete ") .. GetCurrentCustomHero(), 288 / 2, 11)
				confirm:addLabel(_("Are you sure?") .. " This cannot be undone.", 288 / 2, 45, Fonts["game"])

				confirm:addHalfButton(_("~!Yes"), "y", 1 * (288 / 3) - 90, 120 - 16 - 27,
					function()
						DeleteCustomHero(GetCurrentCustomHero())
						confirm:stop()
						menu:stop(); RunQuestMenu(world);
					end
				)

				confirm:addHalfButton(_("~!No"), "n", 3 * (288 / 3) - 116, 120 - 16 - 27,
					function() confirm:stop() end
				)

				confirm:run()
			end
		end
	)

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 212 + (36 * 5),
		function()
			SetCurrentCustomHero("")
			menu:stop();
		end
	)

	menu:run()
end

function addQuestIcon(quest, menu, x, y)
	local quest_icon_frame = GetIconData(GetQuestData(quest, "Icon"), "Frame")
	local questicon
	local b
	if (GetQuestData(quest, "Completed")) then
		questicon = CIcon:Get(GetQuestData(quest, "Icon")).GScale
	else
		questicon = CPlayerColorGraphic:Get(GetIconData(GetQuestData(quest, "Icon"), "File"))
	end
	b = PlayerColorImageButton("", GetQuestData(quest, "PlayerColor"))
	local quest_icon_x_origin = (quest_icon_frame * 46) % questicon:getGraphicWidth()
	local quest_icon_y_origin = math.floor((quest_icon_frame * 46) / questicon:getGraphicWidth()) * 38
	b:setActionCallback(
		function()
			PlaySound("click")
			
			local quest_menu = WarGameMenu(panel(5))
			quest_menu:setSize(352, 352)
    		quest_menu:setPosition((Video.Width - quest_menu:getWidth()) / 2, (Video.Height - quest_menu:getHeight()) / 2)
			quest_menu:addLabel(_(GetQuestData(quest, "Name")), 176, 11)
			local quest_menu_image = PlayerColorImageWidget(questicon, GetQuestData(quest, "PlayerColor"))
			quest_menu_image:setImageOrigin(quest_icon_x_origin, quest_icon_y_origin)	
			quest_menu:add(quest_menu_image, 153, 48)

			local l = MultiLineLabel()
			l:setFont(Fonts["game"])
			l:setSize(324, 208)
			l:setLineWidth(324)
			quest_menu:add(l, 14, 112)
			local quest_description = _(GetQuestData(quest, "Description"))
			l:setCaption(quest_description)
			
			if (GetQuestData(quest, "Map") ~= "") then
				quest_menu:addFullButton(_("~!Play Quest"), "p", 176 - (224 / 2), 352 - 40 * 2,
					function()
						RunningScenario = true
						SetCurrentQuest(quest)
						GetMapInfo(GetQuestData(quest, "Map"))
						for i=1,mapinfo.nplayers do
							if ((i - 1) ~= MapPersonPlayer and mapinfo.playertypes[i] == "person") then
								GameSettings.Presets[i-1].Type = PlayerComputer
							end
						end
						GameSettings.NoRandomness = wyr.preferences.NoRandomness
						GameSettings.NoTimeOfDay = wyr.preferences.NoTimeOfDay
						GameSettings.Difficulty = wyr.preferences.Difficulty
						mapname = GetQuestData(quest, "Map")
						quest_menu:stop()
						RunMap(mapname)
						menu:stop()
						if not (LoadGameFile) then
							RunQuestMenu(GetQuestData(quest, "World"))
						end
					end
				)
			end
			quest_menu:addFullButton(_("~!Close"), "c", 176 - (224 / 2), 352 - 40 * 1,
				function()
					quest_menu:stop()
				end
			)
			quest_menu:run()
		end
	)
	menu:add(b, x, y)
	b:setImageOrigin(quest_icon_x_origin, quest_icon_y_origin)	
	b:setNormalImage(questicon)
	b:setPressedImage(questicon)
	b:setDisabledImage(questicon)
	b:setSize(46, 38)
	b:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
	b:setFrameImage(Preference.IconFrameG)
	b:setPressedFrameImage(Preference.PressedIconFrameG)
	local tooltip = _(GetQuestData(quest, "Name")) .. " (" .. GetCivilizationData(GetQuestData(quest, "Civilization"), "Display") .. ")"
	if (GetQuestData(quest, "HighestCompletedDifficulty") >= DifficultyEasy) then
		tooltip = tooltip .. "\nHighest Completed Difficulty: "
		if (GetQuestData(quest, "HighestCompletedDifficulty") == DifficultyEasy) then
			tooltip = tooltip .. _("Easy")
		elseif (GetQuestData(quest, "HighestCompletedDifficulty") == DifficultyNormal) then
			tooltip = tooltip .. _("Normal")
		elseif (GetQuestData(quest, "HighestCompletedDifficulty") == DifficultyHard) then
			tooltip = tooltip .. _("Hard")
		elseif (GetQuestData(quest, "HighestCompletedDifficulty") == DifficultyBrutal) then
			tooltip = tooltip .. _("Brutal")
		end
	end
	b:setTooltip(tooltip)
	return b
end
