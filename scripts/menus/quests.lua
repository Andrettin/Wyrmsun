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
--      quests.lua - Define the menu for quests.
--
--      (c) Copyright 2014-2015 by Andrettin
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
CurrentQuest = ""
QuestWorlds = {"~!Earth", "~!Nidavellir"}

function RunQuestWorldMenu()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	wyrmsun.playlist = { "music/battle_theme_a.ogg" }

	if not (IsMusicPlaying()) then
		PlayMusic("music/battle_theme_a.ogg")
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
		function() menu:stop()
	end)
	return menu:run()
end

function RunQuestMenu(world)
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	wyrmsun.playlist = { "music/battle_theme_a.ogg" }

	if not (IsMusicPlaying()) then
		PlayMusic("music/battle_theme_a.ogg")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2
	
	RunningScenario = false
	
	menu:addLabel(_("~<Quests~>"), offx + 320, offy + 104 + 36*-2)

	local quests = GetQuests()
	for i=1, table.getn(quests) do
		if (GetQuestData(quests[i], "Hidden") == false and GetQuestData(quests[i], "World") == world) then
			if (GetQuestData(quests[i], "RequiredQuest") == "" or GetArrayIncludes(wyr.preferences.QuestsCompleted, GetQuestData(quests[i], "RequiredQuest")) or GetArrayIncludes(wyr.preferences.QuestsCompleted, quests[i])) then
				if (GetQuestData(quests[i], "RequiredTechnology") == "" or GetArrayIncludes(wyr.preferences.TechnologyAcquired, GetQuestData(quests[i], "RequiredTechnology"))) then
					addQuestIcon(quests[i], menu, offx + 23 + 4 + (54 * GetQuestData(quests[i], "X")), offy + 10 + 4 + (46 * (GetQuestData(quests[i], "Y") + 1))) -- increase Y by 1 because there are few enough quests that it makes sense to make the existing quests more centralized in the interface
				end
			end
		end
	end

	no_randomness = menu:addImageCheckBox(_("No Randomness"), offx + 640 - 224 - 16, offy + 10 + 300 + 3,
		function()
			wyr.preferences.NoRandomness = no_randomness:isMarked()
			SavePreferences()
		end
	)
	no_randomness:setMarked(wyr.preferences.NoRandomness)
	
	local difficulty_list = {_("Easy"), _("Normal"), _("Hard"),_("Brutal")}
	local difficulty = nil
	
	menu:addLabel(_("Difficulty:"), offx + 220, offy + (10 + 300) - 20, Fonts["game"], false)
	difficulty = menu:addDropDown(difficulty_list, offx + 220, offy + 10 + 300,
		function(dd)
			wyr.preferences.Difficulty = difficulty:getSelected() + 1
			SavePreferences()
		end
	)
	difficulty:setSize(152, 20)
	difficulty:setSelected(wyr.preferences.Difficulty - 1)

	if (world == "Nidavellir") then
		local hero_list = GetCustomHeroes()
		local hero_dd
		table.sort(hero_list)
		table.insert(hero_list, "") -- to allow players to choose having no custom hero selected
		menu:addLabel(_("Hero:"), offx + 40, offy + (10 + 300) - 20, Fonts["game"], false)
		hero_dd = menu:addDropDown(hero_list, offx + 40, offy + 10 + 300,
			function(dd)
				SetCurrentCustomHero(hero_list[hero_dd:getSelected() + 1])
			end
		)
		hero_dd:setSize(152, 20)
		hero_dd:setSelected(GetElementIndexFromArray(hero_list, GetCurrentCustomHero()) - 1)
				
		menu:addFullButton(_("Create Custom ~!Hero"), "h", offx + 208, offy + 212 + (36 * 4),
			function() CustomHeroCreationMenu("dwarf", menu);
			end
		)
		
		menu:addFullButton(_("~!Delete Custom Hero"), "h", offx + 208, offy + 212 + (36 * 5),
			function()
				if (GetCurrentCustomHero() ~= "") then
					local confirm = WarGameMenu(panel(4))

					confirm:resize(288,128)

					confirm:addLabel("Delete " .. GetCurrentCustomHero(), 288 / 2, 11)
					confirm:addLabel("Are you sure? This cannot be undone.", 288 / 2, 45, Fonts["game"])

					confirm:addHalfButton("~!Yes", "y", 1 * (288 / 3) - 90, 120 - 16 - 27,
						function()
							DeleteCustomHero(GetCurrentCustomHero())
							confirm:stop()
							menu:stop(); RunQuestMenu(world);
						end
					)

					confirm:addHalfButton("~!No", "n", 3 * (288 / 3) - 116, 120 - 16 - 27,
						function() confirm:stop() end
					)

					confirm:run()
				end
			end
		)
	end

	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 212 + (36 * 6),
		function()
			SetCurrentCustomHero("")
			menu:stop();
		end
	)

	menu:run()
end

function addQuestIcon(quest, menu, x, y)
	local quest_icon_file = string.sub(CIcon:Get(GetQuestData(quest, "Icon")).G:getFile(), 0, -5)
	local quest_icon_frame = CIcon:Get(GetQuestData(quest, "Icon")).Frame
	local questicon
	local b
	if (GetArrayIncludes(wyr.preferences.QuestsCompleted, quest)) then
		questicon = CGraphic:New(quest_icon_file .. "_grayed.png")
		questicon:Load()
		b = ImageButton("")
	else
		questicon = CPlayerColorGraphic:New(quest_icon_file .. ".png")
		questicon:Load()
		b = PlayerColorImageButton("", GetQuestData(quest, "PlayerColor"))
	end
	local quest_icon_x_origin = (quest_icon_frame * 46) % questicon:getGraphicWidth()
	local quest_icon_y_origin = math.floor((quest_icon_frame * 46) / questicon:getGraphicWidth()) * 38
	b:setActionCallback(
		function()
			PlaySound("click")
			
			local quest_menu = WarGameMenu(panel(5))
			quest_menu:setSize(352, 352)
    			quest_menu:setPosition((Video.Width - quest_menu:getWidth()) / 2, (Video.Height - quest_menu:getHeight()) / 2)
			quest_menu:addLabel(_(quest), 176, 11)
			local quest_menu_image
			if (GetArrayIncludes(wyr.preferences.QuestsCompleted, quest)) then
				quest_menu_image = ImageWidget(questicon)
			else
				quest_menu_image = PlayerColorImageWidget(questicon, GetQuestData(quest, "PlayerColor"))
			end
			quest_menu_image:setImageOrigin(quest_icon_x_origin, quest_icon_y_origin)	
			quest_menu:add(quest_menu_image, 153, 48)

			local l = MultiLineLabel()
			l:setFont(Fonts["game"])
			l:setSize(324, 208)
			l:setLineWidth(324)
			quest_menu:add(l, 14, 112)
			local quest_description = GetQuestData(quest, "Description") .. "\n\nRewards: " .. tostring(GetQuestData(quest, "TechnologyPoints")) .. " " .. CapitalizeString(GetQuestData(quest, "Civilization"))
			if (GetQuestData(quest, "TechnologyPoints") > 1) then
				quest_description = quest_description .. " Technology Points."
			else
				quest_description = quest_description .. " Technology Point."
			end
			l:setCaption(quest_description)
			
			if (GetQuestData(quest, "Map") ~= "") then
				quest_menu:addFullButton("~!Play Quest", "p", 176 - (224 / 2), 352 - 40 * 2,
					function()
						RunningScenario = true
						GetMapInfo(GetQuestData(quest, "Map"))
						for i=1,mapinfo.nplayers do
							if ((i - 1) ~= MapPersonPlayer and mapinfo.playertypes[i] == "person") then
								GameSettings.Presets[i-1].Type = PlayerComputer
							end
						end
						GameSettings.NoRandomness = wyr.preferences.NoRandomness
						GameSettings.Difficulty = wyr.preferences.Difficulty
						CurrentQuest = quest
						if (GetQuestData(quest, "Briefing") ~= "") then
							Briefing(quest)
						end
						mapname = GetQuestData(quest, "Map")
						RunMap(mapname)
						quest_menu:stop()
						menu:stop()
						if not (LoadGameFile) then
							RunQuestMenu(GetQuestData(quest, "World"))
						end
					end
				)
			end
			quest_menu:addFullButton("~!Close", "c", 176 - (224 / 2), 352 - 40 * 1,
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
	b:setTooltip(quest .. " (" .. CapitalizeString(GetQuestData(quest, "Civilization")) .. ")")
	return b
end

function Briefing(quest)
	if (GetQuestData(quest, "Civilization") ~= "") then
		SetPlayerData(GetThisPlayer(), "RaceName", GetQuestData(quest, "Civilization"))
	end

	local briefing_background = GetBackground("ui/backgrounds/wyrm.png")
	if (GetQuestData(quest, "BriefingBackground") ~= "") then
		briefing_background = GetBackground(GetQuestData(quest, "BriefingBackground"))
	end
	
	local menu = WarMenu(nil, briefing_background)
	
	wyrmsun.playlist = {}
	if (GetQuestData(quest, "BriefingMusic") ~= "") then
		PlayMusic(GetQuestData(quest, "BriefingMusic"))
	else
		StopMusic()
	end	

	menu:addLabel(quest, Video.Width / 2, 28 * Video.Height / 480, Fonts["large"], true)

	local t = GetQuestData(quest, "Briefing")
	t = "\n\n\n\n\n\n\n\n\n\n" .. t .. "\n\n\n\n\n\n\n\n\n\n\n\n\n"
	local sw = ScrollingWidget(320, 170 * Video.Height / 480)
	sw:setBackgroundColor(Color(0,0,0,0))
	sw:setSpeed(0.28)
	local l = MultiLineLabel(t)
	l:setFont(Fonts["large"])
	l:setAlignment(MultiLineLabel.LEFT)
	l:setVerticalAlignment(MultiLineLabel.TOP)
	l:setLineWidth(320)
	l:adjustSize()
	sw:add(l, 0, 0)
	menu:add(sw, Video.Width / 2 - (l:getWidth() / 2), 80 * Video.Height / 480)

	if (table.getn(GetQuestData(quest, "Objectives")) > 0) then
		menu:addLabel("Objectives:", 372 * Video.Width / 640, 306 * Video.Height / 480, Fonts["large"], false)

		local objectives = ""
		table.foreachi(GetQuestData(quest, "Objectives"), function(k,v) objectives = objectives .. v .. "\n" end)

		local l = MultiLineLabel(objectives)
		l:setFont(Fonts["large"])
		l:setAlignment(MultiLineLabel.LEFT)
		l:setLineWidth(250 * Video.Width / 640)
		l:adjustSize()
		menu:add(l, 372 * Video.Width / 640, (306 * Video.Height / 480) + 30)
	end
  
	local voice = 0
	local channel = -1

	menu:addFullButton(_("~!Continue"), "c", Video.Width / 2 - 112, 440 * Video.Height / 480,
		function()
			if (table.getn(GetQuestData(quest, "BriefingSounds")) > 0) then
				if (channel ~= -1) then
					voice = table.getn(GetQuestData(quest, "BriefingSounds"))
					StopChannel(channel)
				end
			end
			menu:stop()
			StopMusic()
		end
	)

	if (table.getn(GetQuestData(quest, "BriefingSounds")) > 0) then
		function PlayNextVoice()
			voice = voice + 1
			if (voice <= table.getn(GetQuestData(quest, "BriefingSounds"))) then
				channel = PlaySoundFile(GetQuestData(quest, "BriefingSounds")[voice], PlayNextVoice);
			else
				channel = -1
			end
		end
		PlayNextVoice()
	end

	menu:run()
end
