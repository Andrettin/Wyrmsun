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
--      (c) Copyright 2006-2011 by Jimmy Salmon and Pali Rohár
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

function AddSoundOptions(menu, offx, offy, centerx, bottom)
  local b

  b = menu:addLabel("Sound Options", 176, 11)

  b = Label("Effects Volume")
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

  local fog = {}
  fog = menu:addImageCheckBox("Fog of War", 16, 40 + 36 * 0,
    function() SetFogOfWar(fog:isMarked()) end)
  fog:setMarked(GetFogOfWar())
  if (IsReplayGame() or IsNetworkGame()) then
    fog:setEnabled(false)
  end

  local ckey = {}
  ckey = menu:addImageCheckBox("Show Command Key", 16, 40 + 36 * 1,
    function() UI.ButtonPanel.ShowCommandKey = ckey:isMarked() end)
  ckey:setMarked(UI.ButtonPanel.ShowCommandKey)

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
  local menu = WarMenu()
  local offx = (Video.Width - 352) / 2
  local offy = (Video.Height - 352) / 2
  local checkTexture
  local b
  local resolution_width_list
  local resolution_height_list
  local resolution_width = Video.Width
  local resolution_height = Video.Height

  menu:addLabel("Global Options", offx + 176, offy + 1)
  menu:addLabel("Resolution Width", offx + 8, offy + 34, Fonts["game"], false)
  resolution_width_list = menu:addDropDown({"640", "800", "1024", "1280", "1360", "1366", "1400", "1600", "1680"}, offx + 8, offy + 55 + 26*0,
    function(dd)
    	if (resolution_width_list:getSelected() == 0) then
    		resolution_width = 640
    	elseif (resolution_width_list:getSelected() == 1) then
    		resolution_width = 800
    	elseif (resolution_width_list:getSelected() == 2) then
    		resolution_width = 1024
    	elseif (resolution_width_list:getSelected() == 3) then
    		resolution_width = 1280
    	elseif (resolution_width_list:getSelected() == 4) then
    		resolution_width = 1360
    	elseif (resolution_width_list:getSelected() == 5) then
    		resolution_width = 1366
    	elseif (resolution_width_list:getSelected() == 6) then
    		resolution_width = 1400
    	elseif (resolution_width_list:getSelected() == 7) then
    		resolution_width = 1600
    	elseif (resolution_width_list:getSelected() == 8) then
    		resolution_width = 1680
    	end
  	SetVideoSize(resolution_width, resolution_height) menu:stop(1)
    end)
  resolution_width_list:setSize(152, 20)
  if (Video.Width == 640) then
  	resolution_width_list:setSelected(0)
  elseif (Video.Width == 800) then
    	resolution_width_list:setSelected(1)
  elseif (Video.Width == 1024) then
    	resolution_width_list:setSelected(2)
  elseif (Video.Width == 1280) then
    	resolution_width_list:setSelected(3)
  elseif (Video.Width == 1360) then
    	resolution_width_list:setSelected(4)
  elseif (Video.Width == 1366) then
    	resolution_width_list:setSelected(5)
  elseif (Video.Width == 1400) then
    	resolution_width_list:setSelected(6)
  elseif (Video.Width == 1600) then
    	resolution_width_list:setSelected(7)
  elseif (Video.Width == 1680) then
    	resolution_width_list:setSelected(8)
  end

  menu:addLabel("Resolution Height", offx + 16 + 152 + 24, offy + 34, Fonts["game"], false)
  resolution_height_list = menu:addDropDown({"480", "600", "768", "800", "960", "1024", "1050"}, offx + 16 + 152 + 24, offy + 55 + 26*0,
    function(dd)
    	if (resolution_height_list:getSelected() == 0) then
    		resolution_height = 480
    	elseif (resolution_height_list:getSelected() == 1) then
    		resolution_height = 600
    	elseif (resolution_height_list:getSelected() == 2) then
    		resolution_height = 768
    	elseif (resolution_height_list:getSelected() == 3) then
    		resolution_height = 800
    	elseif (resolution_height_list:getSelected() == 4) then
    		resolution_height = 960
    	elseif (resolution_height_list:getSelected() == 5) then
    		resolution_height = 1024
    	elseif (resolution_height_list:getSelected() == 6) then
    		resolution_height = 1050
    	end
  	SetVideoSize(resolution_width, resolution_height) menu:stop(1)
    end)
  resolution_height_list:setSize(152, 20)
  if (Video.Height == 480) then
  	resolution_height_list:setSelected(0)
  elseif (Video.Height == 600) then
  	resolution_height_list:setSelected(1)
  elseif (Video.Height == 768) then
  	resolution_height_list:setSelected(2)
  elseif (Video.Height == 800) then
  	resolution_height_list:setSelected(3)
  elseif (Video.Height == 960) then
  	resolution_height_list:setSelected(4)
  elseif (Video.Height == 1024) then
  	resolution_height_list:setSelected(5)
  elseif (Video.Height == 1050) then
  	resolution_height_list:setSelected(6)
  end

--  menu:addLabel("Language", offx + 160, offy + 34, Fonts["game"], false)

--  b = menu:addImageCheckBox("English", offx + 160, offy + 55 + 26*0,
--    function()
--	wyr.preferences.Language = "English"
--	menu:stop(1)
--    end)
--  b:setMarked(wyr.preferences.Language == "English")

--  b = menu:addImageCheckBox("Portuguese", offx + 160, offy + 55 + 26*1,
--    function()
--	wyr.preferences.Language = "Portuguese"
--	menu:stop(1)
--    end)
--  b:setMarked(wyr.preferences.Language == "Portuguese")

  b = menu:addImageCheckBox("Full Screen", offx + 16, offy + 55 + 26*10 + 14,
    function()
      ToggleFullScreen()
      wyr.preferences.VideoFullScreen = Video.FullScreen
      SavePreferences()
      menu:stop(1)
    end)
  b:setMarked(Video.FullScreen)

  b = menu:addImageCheckBox("Disable Pathlines", offx + 16, offy + 55 + 26*9 + 14,
    function()
	if (wyr.preferences.ShowOrders == 2) then
		wyr.preferences.ShowOrders = 0
	else
		wyr.preferences.ShowOrders = 2
	end
	Preference.ShowOrders = wyr.preferences.ShowOrders
	menu:stop(1)
    end)
  if (wyr.preferences.ShowOrders == 0) then b:setMarked(true) end

  b = menu:addImageCheckBox("Disable Messages", offx + 160 + 24, offy + 55 + 26*9 + 14,
    function()
	if (wyr.preferences.ShowMessages) then
		wyr.preferences.ShowMessages = false
	else
		wyr.preferences.ShowMessages = true
	end
	Preference.ShowMessages = wyr.preferences.ShowMessages
	menu:stop(1)
    end)
  if (wyr.preferences.ShowMessages == false) then b:setMarked(true) end

  checkTexture = menu:addImageCheckBox("Set Maximum OpenGL Texture to 256", offx + 160 + 24, offy + 55 + 26*10 + 14,
    function()
      if (checkTexture:isMarked()) then
        wyr.preferences.MaxOpenGLTexture = 256
      else
        wyr.preferences.MaxOpenGLTexture = 0
      end
      SetMaxOpenGLTexture(wyr.preferences.MaxOpenGLTexture)
      SavePreferences()
    end)
  if (wyr.preferences.MaxOpenGLTexture == 128) then checkTexture:setMarked(true) end

  checkOpenGL = menu:addImageCheckBox("Use OpenGL / OpenGL ES 1.1 (restart required)", offx + 16, offy + 55 + 26*11 + 14,
    function()
--TODO: Add function for immediately change state of OpenGL
      wyr.preferences.UseOpenGL = checkOpenGL:isMarked()
      SavePreferences()
--      menu:stop(1) --TODO: Enable if we have an OpenGL function
    end)
  checkOpenGL:setMarked(wyr.preferences.UseOpenGL)
--  checkOpenGL:setMarked(UseOpenGL) --TODO: Enable if we have an OpenGL function

  menu:addHalfButton("~!OK", "o", offx + 123, offy + 55 + 26*12 + 14, function()
	SavePreferences()
	Load("scripts/localization.lua")
	Load("scripts/units.lua")
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

function RunGameOptionsMenu()
  local menu = WarGameMenu(panel(1))

  menu:addLabel("Game Options", 128, 11)
  menu:addFullButton("Sound (~<F7~>)", "f7", 16, 40 + 36*0,
    function() RunGameSoundOptionsMenu() end)
  menu:addFullButton("Preferences (~<F8~>)", "f8", 16, 40 + 36*1,
    function() RunPreferencesMenu() end)
  menu:addFullButton("Diplomacy (~<F9~>)", "f9", 16, 40 + 36*2,
    function() RunDiplomacyMenu() end)
  menu:addFullButton("~!Quests", "q", 16, 40 + 36*3,
    function() RunQuestMenu() end)
  menu:addFullButton("~!Tech Tree", "t", 16, 40 + 36*4,
    function() RunTechTreeMenu(0) end)
  menu:addFullButton("Previous (~<Esc~>)", "escape", 128 - (224 / 2), 288 - 40,
    function() menu:stop() end)

  menu:run(false)
end

