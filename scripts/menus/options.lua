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
--      options.lua - Define the menu for options.
--
--      (c) Copyright 2006-2015 by Jimmy Salmon, Pali Rohár and Andrettin
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

function RunGameVideoOptionsMenu()
	local menu = WarGameMenu(panel(1))
	local resolution_width_list = {"640", "720", "800", "1024", "1280", "1360", "1366", "1400", "1440", "1600", "1680", "1920"}
	local resolution_width_dd
	local resolution_height_list = {"480", "600", "720", "768", "800", "864", "900", "960", "1024", "1050", "1080"}
	local resolution_height_dd
	local resolution_width = Video.Width
	local resolution_height = Video.Height
	local offx = 0
	local offy = 0
	local fullscreen = Video.FullScreen
	local fullscreen_dd

	menu:addLabel(_("Video Options"), 128, 11)

	menu:addLabel(_("Resolution Width:"), offx + (256 / 2 - (152 / 2)), offy + 34, Fonts["game"], false)
	resolution_width_dd = menu:addDropDown(resolution_width_list, offx + (256 / 2 - (152 / 2)), offy + 55 + 26*0,
	function(dd)
			resolution_width = tonumber(resolution_width_list[resolution_width_dd:getSelected() + 1])
	end)
	resolution_width_dd:setSize(152, 20)
	for i = 1,table.getn(resolution_width_list) do
		if (tonumber(resolution_width_list[i]) == Video.Width) then
			resolution_width_dd:setSelected(i - 1)
		end
	end

	menu:addLabel(_("Resolution Height:"), offx + (256 / 2 - (152 / 2)), offy + 34 + 26*2, Fonts["game"], false)
	resolution_height_dd = menu:addDropDown(resolution_height_list, offx + (256 / 2 - (152 / 2)), offy + 55 + 26*2,
	function(dd)
			resolution_height = tonumber(resolution_height_list[resolution_height_dd:getSelected() + 1])
	end)
	resolution_height_dd:setSize(152, 20)
	for i = 1,table.getn(resolution_height_list) do
		if (tonumber(resolution_height_list[i]) == Video.Height) then
			resolution_height_dd:setSelected(i - 1)
		end
	end

	full_screen_dd = menu:addImageCheckBox(_("Full Screen"), offx + (256 / 2 - (152 / 2)), offy + 90 + 26*2,
	function()
		fullscreen = full_screen_dd:isMarked()
	end)
	full_screen_dd:setMarked(fullscreen)

	menu:addFullButton("~!OK", "o", 128 - (224 / 2), 288 - 40,
	function()
		if (resolution_width ~= Video.Width or resolution_height ~= Video.Height) then
			LoadCivilizationUI(GetPlayerData(GetThisPlayer(), "RaceName"))
			SetVideoSize(resolution_width, resolution_height)
			SavePreferences()
		end

		if (fullscreen ~= Video.FullScreen) then
			ToggleFullScreen()
			wyr.preferences.VideoFullScreen = Video.FullScreen
			SavePreferences()
		end
		menu:stop()
	end)

	menu:run()
end

function AddSoundOptions(menu, offx, offy, centerx, bottom)
  local b

  b = menu:addLabel(_("Sound Options"), 176, 11)

  b = Label(_("Sound Effects Volume"))
  b:setFont(CFont:Get("game"))
  b:adjustSize();
  menu:add(b, offx + 16, offy + 36 * 1)

  -- FIXME: disable if effects turned off
  local soundslider = {}
  -- slider button to decrease slider value
  soundslider = menu:addImageLeftSliderButton("", nil, 21, offy + 36 * 1.5, function() soundslider:setValue(soundslider:getValue() - 25.5); SetEffectsVolume(soundslider:getValue()) end)
		
  -- slider button to increase slider value
  soundslider = menu:addImageRightSliderButton("", nil, 213, offy + 36 * 1.5, function() soundslider:setValue(soundslider:getValue() + 25.5); SetEffectsVolume(soundslider:getValue()) end)
		
  -- slider itself
  soundslider = menu:addImageSlider(0, 255, 172, 18, offx + 41, offy + 36 * 1.5, function() SetEffectsVolume(soundslider:getValue()) end)

  soundslider:setValue(GetEffectsVolume())

  b = Label("min")
  b:setFont(CFont:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 32, offy + 36 * 2 + 6)

  b = Label("max")
  b:setFont(CFont:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 224, offy + 36 * 2 + 6)

  local effectscheckbox = {}
  effectscheckbox = menu:addImageCheckBox("Enabled", offx + 240, offy + 36 * 1.5,
    function() SetEffectsEnabled(effectscheckbox:isMarked()) end)
  effectscheckbox:setMarked(IsEffectsEnabled())
  effectscheckbox:adjustSize()

  b = Label("Music Volume")
  b:setFont(CFont:Get("game"))
  b:adjustSize();
  menu:add(b, offx + 16, offy + 36 * 3)

  -- FIXME: disable if music turned off
  local musicslider = {}
  -- slider button to decrease slider value
  musicslider = menu:addImageLeftSliderButton("", nil, 21, offy + 36 * 3.5, function() musicslider:setValue(musicslider:getValue() - 25.5); SetMusicVolume(musicslider:getValue()) end)
		
  -- slider button to decrease slider value
  musicslider = menu:addImageRightSliderButton("", nil, 213, offy + 36 * 3.5, function() musicslider:setValue(musicslider:getValue() + 25.5); SetMusicVolume(musicslider:getValue()) end)
		
  -- slider itself
  musicslider = menu:addImageSlider(0, 255, 172, 18, offx + 41, offy + 36 * 3.5, function() SetMusicVolume(musicslider:getValue()) end)
		
  -- set the value so the game saves it
  musicslider:setValue(GetMusicVolume())

  b = Label("min")
  b:setFont(CFont:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 32, offy + 36 * 4 + 6)

  b = Label("max")
  b:setFont(CFont:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 224, offy + 36 * 4 + 6)

  local musiccheckbox = {}
  musiccheckbox = menu:addImageCheckBox("Enabled", offx + 240, offy + 36 * 3.5,
    function() SetMusicEnabled(musiccheckbox:isMarked()); MusicStopped() end)
  musiccheckbox:setMarked(IsMusicEnabled())
  musiccheckbox:adjustSize();

  b = menu:addFullButton("~!OK", "o", centerx, bottom - 11 - 27,
    function()
      wyr.preferences.EffectsVolume = GetEffectsVolume()
      wyr.preferences.EffectsEnabled = IsEffectsEnabled()
      wyr.preferences.MusicVolume = GetMusicVolume()
      wyr.preferences.MusicEnabled = IsMusicEnabled()
      SavePreferences()
      menu:stop()
    end)
end

function RunGameSoundOptionsMenu()
  local menu = WarGameMenu(panel(5))
  menu:resize(352, 352)

  AddSoundOptions(menu, 0, 0, 352/2 - 224/2, 352)

  menu:run(false)
end

function RunPreferencesMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel("Preferences", 128, 11)

  --[[
  local fog = {}
  fog = menu:addImageCheckBox("Fog of War", 16, 40 + 26 * 0,
    function() SetFogOfWar(fog:isMarked()) end)
  fog:setMarked(GetFogOfWar())
  if (IsReplayGame() or IsNetworkGame()) then
    fog:setEnabled(false)
  end
  --]]

  local ckey = {}
  ckey = menu:addImageCheckBox("Show Hotkey", 16, 40 + 26 * 0,
    function() UI.ButtonPanel.ShowCommandKey = ckey:isMarked() end)
  ckey:setMarked(UI.ButtonPanel.ShowCommandKey)
  
  local mouse_grabbing = {}
  mouse_grabbing = menu:addImageCheckBox("Mouse Grabbing", 16, 40 + 26 * 1,
	function()
		wyr.preferences.GrabMouse = mouse_grabbing:isMarked()
		SetGrabMouse(wyr.preferences.GrabMouse)
		SavePreferences()
	end
  )
  mouse_grabbing:setMarked(GetGrabMouse())

  local reverse_mouse_wheel_scrolling = {}
  reverse_mouse_wheel_scrolling = menu:addImageCheckBox("Reverse Mousewheel Scrolling", 16, 40 + 26 * 2,
	function()
		wyr.preferences.MouseScrollSpeedDefault = wyr.preferences.MouseScrollSpeedDefault * -1
		SetMouseScrollSpeedDefault(wyr.preferences.MouseScrollSpeedDefault)
		SavePreferences()
	end
  )
  reverse_mouse_wheel_scrolling:setMarked(wyr.preferences.MouseScrollSpeedDefault < 0)

  menu:addLabel("Game Speed", 16, 40 + 36 * 2, Fonts["game"], false)

  local gamespeed = {}
  -- slider button to decrease slider value
  gamespeed = menu:addImageLeftSliderButton("", nil, 21, 40 + 36 * 2.5, function() gamespeed:setValue(gamespeed:getValue() - 5); SetGameSpeed(gamespeed:getValue()) end)
		
  -- slider button to decrease slider value
  gamespeed = menu:addImageRightSliderButton("", nil, 213, 40 + 36 * 2.5, function() gamespeed:setValue(gamespeed:getValue() + 5); SetGameSpeed(gamespeed:getValue()) end)
		
  -- slider itself
  gamespeed = menu:addImageSlider(15, 75, 172, 18, 41, 40 + 36 * 2.5, function() SetGameSpeed(gamespeed:getValue()) end)
		
  -- set the value so the game saves it
  gamespeed:setValue(GetGameSpeed())

  menu:addLabel("slow", 22, 40 + (36 * 3) + 6, Fonts["small"], false)
  local l = Label("fast")
  l:setFont(Fonts["small"])
  l:adjustSize()
  menu:add(l, 234 - l:getWidth(), 40 + (36 * 3) + 6)

  menu:addLabel("Mouse Scroll Speed", 16, 40 + (36 * 4), Fonts["game"], false)

  local mousescrollspeed = {}
  -- slider button to decrease slider value
  mousescrollspeed = menu:addImageLeftSliderButton("", nil, 21, 40 + 36 * 4.5, function() mousescrollspeed:setValue(mousescrollspeed:getValue() - .5); SetMouseScrollSpeed(mousescrollspeed:getValue()) end)
		
  -- slider button to decrease slider value		
  mousescrollspeed = menu:addImageRightSliderButton("", nil, 213, 40 + 36 * 4.5, function() mousescrollspeed:setValue(mousescrollspeed:getValue() + .5); SetMouseScrollSpeed(mousescrollspeed:getValue()) end)
		
  -- slider itself
  mousescrollspeed = menu:addImageSlider(1, 10, 172, 18, 41, 40 + 36 * 4.5, function() SetMouseScrollSpeed(mousescrollspeed:getValue()) end)
		
  -- set the value so the game saves it
  mousescrollspeed:setValue(GetMouseScrollSpeed())

  menu:addLabel("slow", 22, 40 + (36 * 5) + 6, Fonts["small"], false)
  local l = Label("fast")
  l:setFont(Fonts["small"])
  l:adjustSize()
  menu:add(l, 234 - l:getWidth(), 40 + (36 * 5) + 6)

  menu:addFullButton("~!OK", "o", 128 - (224 / 2), 288 - 40,
    function()
      wyr.preferences.FogOfWar = GetFogOfWar()
      wyr.preferences.ShowCommandKey = UI.ButtonPanel.ShowCommandKey
      wyr.preferences.GameSpeed = GetGameSpeed()
      wyr.preferences.MouseScrollSpeed = GetMouseScrollSpeed()
      SavePreferences()
      menu:stop()
    end)

  menu:run(false)
end

function SetVideoSize(width, height)
	if (Video:ResizeScreen(width, height) == false) then
		return
	end
	bckground:Resize(Video.Width, Video.Height)
	backgroundWidget = ImageWidget(bckground)
	wyrmsun_logo = CGraphic:New("ui/wyrmsun_logo_" .. Video.Height .. ".png")
	wyrmsun_logo:Load()
	wyrmsun_logo_widget = ImageWidget(wyrmsun_logo)
	Load("scripts/ui.lua")
	wyr.preferences.VideoWidth = Video.Width
	wyr.preferences.VideoHeight = Video.Height
	SavePreferences()
end

function BuildOptionsMenu()
	SetPlayerData(GetThisPlayer(), "RaceName", "gnome")
	wyrmsun.playlist = { "music/battle_theme_a.ogg" }

	if not (IsMusicPlaying()) then
		PlayMusic("music/battle_theme_a.ogg")
	end

	local menu = WarMenu()
	local offx = (Video.Width - 640) / 2
	local offy = (Video.Height - 480) / 2

	menu:addLabel(_("~<Options~>"), offx + 320, offy + 212 - 25 - (36 * 1))
	menu:addFullButton(_("~!Gameplay Options"), "g", offx + 208, offy + 104 + 36*2,
		function()
			RunGameplayOptionsMenu();
		end
	)
	menu:addFullButton(_("~!Video and Audio Options"), "v", offx + 208, offy + 104 + 36*3,
		function()
			RunVideoOptionsMenu()
			menu:stop(1)
		end
	)
	--[[
	menu:addFullButton(_("~!Audio Options"), "a", offx + 208, offy + 104 + 36*4,
		function()
			RunAudioOptionsMenu()
		end
	)
	--]]
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + 36*4,
		function() menu:stop() end
	)
	return menu:run()
end

function RunGameplayOptionsMenu()
	local menu = WarMenu()
	local offx = (Video.Width - 352) / 2
	local offy = (Video.Height - 352) / 2
	local b
	local hotkey_setup_list = {"Default", "Position-Based", "Position-Based (except Commands)"}
	local hotkey_setup_dd

	menu:addLabel(_("~<Options~>"), offx + 176, offy + 1)
	
--[[
	menu:addLabel(_("Language"), offx + 8, offy + 34 + 26*2, Fonts["game"], false)

	language_list = menu:addDropDown({"English", "French", "German", "Portuguese"}, offx + 8, offy + 55 + 26*2,
		function(dd)
			if (language_list:getSelected() == 0) then
				wyr.preferences.Language = "English"
				wyr.preferences.StratagusTranslation = ""
				wyr.preferences.GameTranslation = ""
			elseif (language_list:getSelected() == 1) then
				wyr.preferences.Language = "French"
				wyr.preferences.StratagusTranslation = "translations/wyr-fr.po"
				wyr.preferences.GameTranslation = "translations/wyr-fr.po"
			elseif (language_list:getSelected() == 2) then
				wyr.preferences.Language = "German"
				wyr.preferences.StratagusTranslation = "translations/wyr-de.po"
				wyr.preferences.GameTranslation = "translations/wyr-de.po"
			elseif (language_list:getSelected() == 3) then
				wyr.preferences.Language = "Portuguese"
				wyr.preferences.StratagusTranslation = "translations/wyr-pt.po"
				wyr.preferences.GameTranslation = "translations/wyr-pt.po"
			end
			SetTranslationsFiles(wyr.preferences.StratagusTranslation, wyr.preferences.GameTranslation)
			menu:stop()
			RunGameplayOptionsMenu()
		end
	)
	language_list:setSize(152, 20)
	if (wyr.preferences.Language == "English") then
		language_list:setSelected(0)
	elseif (wyr.preferences.Language == "French") then
		language_list:setSelected(1)
	elseif (wyr.preferences.Language == "German") then
		language_list:setSelected(2)
	elseif (wyr.preferences.Language == "Portuguese") then
		language_list:setSelected(3)
	end
--]]
	menu:addLabel(_("Hotkey Setup:"), offx + 8, offy + 34, Fonts["game"], false)
	hotkey_setup_dd = menu:addDropDown(hotkey_setup_list, offx + 8, offy + 55 + 26*0,
		function(dd)
			wyr.preferences.HotkeySetup = hotkey_setup_dd:getSelected()
			Preference.HotkeySetup = wyr.preferences.HotkeySetup
			menu:stop()
			RunGameplayOptionsMenu()
		end
	)
	hotkey_setup_dd:setSize(266, 20)
	hotkey_setup_dd:setSelected(wyr.preferences.HotkeySetup)
	
	b = menu:addImageCheckBox(_("Mouse Grabbing"), offx + 16, offy + 55 + 26*4 + 14,
		function()
			if (wyr.preferences.GrabMouse == false) then
				wyr.preferences.GrabMouse = true
			elseif (wyr.preferences.GrabMouse == true) then
				wyr.preferences.GrabMouse = false
			end
			SetGrabMouse(wyr.preferences.GrabMouse)
			SavePreferences()
			menu:stop()
			RunGameplayOptionsMenu()
		end
	)
	b:setMarked(wyr.preferences.GrabMouse)

	b = menu:addImageCheckBox(_("Show Tips"), offx + 16, offy + 55 + 26*1 + 14,
		function()
			if (wyr.preferences.ShowTips == false) then
				wyr.preferences.ShowTips = true
			else
				wyr.preferences.ShowTips = false
			end
			menu:stop()
			RunGameplayOptionsMenu()
		end
	)
	b:setMarked(wyr.preferences.ShowTips)

	b = menu:addImageCheckBox(_("Show Resource Bar"), offx + 16, offy + 55 + 26*2 + 14,
		function()
			if (wyr.preferences.ShowResourceBar == false) then -- sort of ugly way to set the preferences for this, fix later please
				wyr.preferences.ShowResourceBar = true
				DefineDecorations({Index = "GiveResource", MinValue = 1000, ShowWhenMax = true, HideNeutral = false, CenterX = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-mana"}}})
			else
				wyr.preferences.ShowResourceBar = false
				DefineDecorations({Index = "GiveResource", MinValue = 1000, ShowWhenMax = true, HideNeutral = true, CenterX = true, OffsetPercent = {50, 100}, Method = {"sprite", {"sprite-mana"}}})
			end
			menu:stop()
			RunGameplayOptionsMenu()
		end
	)
	b:setMarked(wyr.preferences.ShowResourceBar)

	b = menu:addImageCheckBox(_("Larger Popup Text"), offx + 16, offy + 55 + 26*5 + 14,
		function()
			if (wyr.preferences.PopupDescriptionFont == "small") then
				wyr.preferences.PopupDescriptionFont = "game"
			elseif (wyr.preferences.PopupDescriptionFont == "game") then
				wyr.preferences.PopupDescriptionFont = "small"
			end
			Load("scripts/ui.lua")
			menu:stop()
			RunGameplayOptionsMenu()
		end
	)
	b:setMarked(wyr.preferences.PopupDescriptionFont == "game")

	b = menu:addImageCheckBox(_("Show Player Color Circle"), offx + 16, offy + 55 + 26*8 + 14,
		function()
			if (wyr.preferences.PlayerColorCircle == false) then
				wyr.preferences.PlayerColorCircle = true
			else
				wyr.preferences.PlayerColorCircle = false
			end
			Preference.PlayerColorCircle = wyr.preferences.PlayerColorCircle
			menu:stop()
			RunGameplayOptionsMenu()
		end
	)
	b:setMarked(wyr.preferences.PlayerColorCircle)

	b = menu:addImageCheckBox(_("Autosave"), offx + 16, offy + 55 + 26*3 + 14,
		function()
			if (wyr.preferences.Autosave == false) then
				wyr.preferences.Autosave = true
				Preference.Autosave = 5
			else
				wyr.preferences.Autosave = false
				Preference.Autosave = 0
			end
			menu:stop()
			RunGameplayOptionsMenu()
		end
	)
	b:setMarked(wyr.preferences.Autosave)

	b = menu:addImageCheckBox(_("Show Pathlines"), offx + 16, offy + 55 + 26*6 + 14,
		function()
			if (wyr.preferences.ShowPathlines == false) then
				wyr.preferences.ShowPathlines = true
			else
				wyr.preferences.ShowPathlines = false
			end
			Preference.ShowPathlines = wyr.preferences.ShowPathlines
			menu:stop()
			RunGameplayOptionsMenu()
		end
	)
	b:setMarked(wyr.preferences.ShowPathlines)

	b = menu:addImageCheckBox(_("Disable Messages"), offx + 16, offy + 55 + 26*7 + 14,
		function()
			if (wyr.preferences.ShowMessages) then
				wyr.preferences.ShowMessages = false
			else
				wyr.preferences.ShowMessages = true
			end
			Preference.ShowMessages = wyr.preferences.ShowMessages
			menu:stop()
			RunGameplayOptionsMenu()
		end
	)
	if (wyr.preferences.ShowMessages == false) then b:setMarked(true) end

	menu:addHalfButton(_("~!OK"), "o", offx + 123, offy + 55 + 26*12 + 14, function()
		SavePreferences()
		menu:stop()
	end)

	return menu:run()
end

function RunVideoOptionsMenu()
  local menu = WarMenu()
  local offx = (Video.Width - 352) / 2
  local offy = (Video.Height - 352) / 2
  local checkTexture
  local checkOpenGL
  local b
  local resolution_width_list = {"640", "720", "800", "1024", "1280", "1360", "1366", "1400", "1440", "1600", "1680", "1920"}
  local resolution_width_dd
  local resolution_height_list = {"480", "600", "720", "768", "800", "864", "900", "960", "1024", "1050", "1080"}
  local resolution_height_dd
  local resolution_width = Video.Width
  local resolution_height = Video.Height
  local fullscreen_dd
  local fullscreen = Video.FullScreen

  menu:addLabel(_("~<Options~>"), offx + 176, offy + 1)
  menu:addLabel(_("Resolution Width:"), offx + 8, offy + 34, Fonts["game"], false)
  resolution_width_dd = menu:addDropDown(resolution_width_list, offx + 8, offy + 55 + 26*0,
    function(dd)
   		resolution_width = tonumber(resolution_width_list[resolution_width_dd:getSelected() + 1])
    end)
  resolution_width_dd:setSize(152, 20)
  for i = 1,table.getn(resolution_width_list) do
	if (tonumber(resolution_width_list[i]) == Video.Width) then
		resolution_width_dd:setSelected(i - 1)
	end
  end

  menu:addLabel(_("Resolution Height:"), offx + 16 + 152 + 24, offy + 34, Fonts["game"], false)
  resolution_height_dd = menu:addDropDown(resolution_height_list, offx + 16 + 152 + 24, offy + 55 + 26*0,
    function(dd)
   		resolution_height = tonumber(resolution_height_list[resolution_height_dd:getSelected() + 1])
    end)
  resolution_height_dd:setSize(152, 20)
  for i = 1,table.getn(resolution_height_list) do
	if (tonumber(resolution_height_list[i]) == Video.Height) then
		resolution_height_dd:setSelected(i - 1)
	end
  end

  -- sound volume options
  b = Label(_("Sound Effects Volume"))
  b:setFont(CFont:Get("game"))
  b:adjustSize();
  menu:add(b, offx + 16, offy + 36 * 3)

  -- FIXME: disable if effects turned off
  local soundslider = {}
  -- slider button to decrease slider value
  soundslider = menu:addImageLeftSliderButton("", nil, offx + 21, offy + 36 * 3.5, function() soundslider:setValue(soundslider:getValue() - 25.5); SetEffectsVolume(soundslider:getValue()) end)
		
  -- slider button to increase slider value
  soundslider = menu:addImageRightSliderButton("", nil, offx + 213, offy + 36 * 3.5, function() soundslider:setValue(soundslider:getValue() + 25.5); SetEffectsVolume(soundslider:getValue()) end)
		
  -- slider itself
  soundslider = menu:addImageSlider(0, 255, 172, 18, offx + 41, offy + 36 * 3.5, function() SetEffectsVolume(soundslider:getValue()) end)

  soundslider:setValue(GetEffectsVolume())

  b = Label("min")
  b:setFont(CFont:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 32, offy + 36 * 4 + 6)

  b = Label("max")
  b:setFont(CFont:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 224, offy + 36 * 4 + 6)

  local effectscheckbox = {}
  effectscheckbox = menu:addImageCheckBox("Enabled", offx + 240, offy + 36 * 3.5,
    function() SetEffectsEnabled(effectscheckbox:isMarked()) end)
  effectscheckbox:setMarked(IsEffectsEnabled())
  effectscheckbox:adjustSize()

  b = Label("Music Volume")
  b:setFont(CFont:Get("game"))
  b:adjustSize();
  menu:add(b, offx + 16, offy + 36 * 5)

  -- FIXME: disable if music turned off
  local musicslider = {}
  -- slider button to decrease slider value
  musicslider = menu:addImageLeftSliderButton("", nil, offx + 21, offy + 36 * 5.5, function() musicslider:setValue(musicslider:getValue() - 25.5); SetMusicVolume(musicslider:getValue()) end)
		
  -- slider button to decrease slider value
  musicslider = menu:addImageRightSliderButton("", nil, offx + 213, offy + 36 * 5.5, function() musicslider:setValue(musicslider:getValue() + 25.5); SetMusicVolume(musicslider:getValue()) end)
		
  -- slider itself
  musicslider = menu:addImageSlider(0, 255, 172, 18, offx + 41, offy + 36 * 5.5, function() SetMusicVolume(musicslider:getValue()) end)
		
  -- set the value so the game saves it
  musicslider:setValue(GetMusicVolume())

  b = Label("min")
  b:setFont(CFont:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 32, offy + 36 * 6 + 6)

  b = Label("max")
  b:setFont(CFont:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 224, offy + 36 * 6 + 6)

  local musiccheckbox = {}
  musiccheckbox = menu:addImageCheckBox("Enabled", offx + 240, offy + 36 * 5.5,
    function() SetMusicEnabled(musiccheckbox:isMarked()); MusicStopped() end)
  musiccheckbox:setMarked(IsMusicEnabled())
  musiccheckbox:adjustSize();

  full_screen_dd = menu:addImageCheckBox(_("Full Screen"), offx + 16, offy + 55 + 26*8 + 14,
    function()
      fullscreen = full_screen_dd:isMarked()
    end)
  full_screen_dd:setMarked(Video.FullScreen)

  checkTexture = menu:addImageCheckBox(_("Set Maximum OpenGL Texture to 256"), offx + 16, offy + 55 + 26*10 + 14,
    function()
      if (checkTexture:isMarked()) then
        wyr.preferences.MaxOpenGLTexture = 256
      else
        wyr.preferences.MaxOpenGLTexture = 0
      end
      SetMaxOpenGLTexture(wyr.preferences.MaxOpenGLTexture)
      SavePreferences()
    end)
  if (wyr.preferences.MaxOpenGLTexture == 256) then checkTexture:setMarked(true) end

  checkOpenGL = menu:addImageCheckBox(_("Use OpenGL / OpenGL ES 1.1 (restart required)"), offx + 16, offy + 55 + 26*9 + 14,
    function()
--TODO: Add function for immediately change state of OpenGL
      wyr.preferences.UseOpenGL = checkOpenGL:isMarked()
      SavePreferences()
--      menu:stop() --TODO: Enable if we have an OpenGL function
    end)
  checkOpenGL:setMarked(wyr.preferences.UseOpenGL)
--  checkOpenGL:setMarked(UseOpenGL) --TODO: Enable if we have an OpenGL function

  menu:addHalfButton(_("~!OK"), "o", offx + 123, offy + 55 + 26*12 + 14, function()
	wyr.preferences.EffectsVolume = GetEffectsVolume()
	wyr.preferences.EffectsEnabled = IsEffectsEnabled()
	wyr.preferences.MusicVolume = GetMusicVolume()
	wyr.preferences.MusicEnabled = IsMusicEnabled()
	if (resolution_width ~= Video.Width or resolution_height ~= Video.Height) then
		SetVideoSize(resolution_width, resolution_height)
	end

	if (fullscreen ~= Video.FullScreen) then
		ToggleFullScreen()
		wyr.preferences.VideoFullScreen = Video.FullScreen
	end

	SavePreferences()
  	menu:stop()
  end)

  return menu:run()
end

function RunOptionsMenu()
  local continue = 1
  while (continue == 1) do
    continue = BuildOptionsMenu()
  end
end

function RunGameOptionsMenu(previous_menu)
	local menu = WarGameMenu(panel(1))

	menu:addLabel(_("Game Options"), 128, 11)
	menu:addFullButton(_("~!Video"), "v", 16, 40 + 36*0,
		function()
			RunGameVideoOptionsMenu()
			menu:setPosition((Video.Width - menu:getWidth()) / 2, (Video.Height - menu:getHeight()) / 2)
			if (previous_menu ~= nil) then
				previous_menu:setPosition((Video.Width - previous_menu:getWidth()) / 2, (Video.Height - previous_menu:getHeight()) / 2)
			end
		end
	)
	menu:addFullButton(_("Sound (~<F7~>)"), "f7", 16, 40 + 36*1,
		function() RunGameSoundOptionsMenu() end)
	menu:addFullButton(_("Preferences (~<F8~>)"), "f8", 16, 40 + 36*2,
		function() RunPreferencesMenu() end)
	menu:addFullButton(_("Diplomacy (~<F9~>)"), "f9", 16, 40 + 36*3,
		function() RunDiplomacyMenu() end)
	menu:addFullButton(_("Previous Menu (~<Esc~>)"), "escape", 128 - (224 / 2), 288 - 40,
		function() menu:stop() end)

	menu:run(false)
end

