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
  local soundslider = Slider(0, 255)
  soundslider:setValue(GetEffectsVolume())
  soundslider:setActionCallback(function() SetEffectsVolume(soundslider:getValue()) end)
  soundslider:setWidth(198)
  soundslider:setHeight(18)
  soundslider:setBaseColor(dark)
  soundslider:setForegroundColor(clear)
  soundslider:setBackgroundColor(clear)
  menu:add(soundslider, offx + 32, offy + 36 * 1.5)

  b = Label("min")
  b:setFont(CFont:Get("game"))
  b:adjustSize();
  menu:addCentered(b, offx + 44, offy + 36 * 2 + 6)

  b = Label("max")
  b:setFont(CFont:Get("game"))
  b:adjustSize();
  menu:addCentered(b, offx + 218, offy + 36 * 2 + 6)

  local effectscheckbox = {}
  effectscheckbox = menu:addCheckBox("Enabled", offx + 240, offy + 36 * 1.5,
    function() SetEffectsEnabled(effectscheckbox:isMarked()) end)
  effectscheckbox:setMarked(IsEffectsEnabled())
  effectscheckbox:adjustSize()

  b = Label("Music Volume")
  b:setFont(CFont:Get("game"))
  b:adjustSize();
  menu:add(b, offx + 16, offy + 36 * 3)

  -- FIXME: disable if music turned off
  local musicslider = Slider(0, 255)
  musicslider:setValue(GetMusicVolume())
  musicslider:setActionCallback(function() SetMusicVolume(musicslider:getValue()) end)
  musicslider:setWidth(198)
  musicslider:setHeight(18)
  musicslider:setBaseColor(dark)
  musicslider:setForegroundColor(clear)
  musicslider:setBackgroundColor(clear)
  menu:add(musicslider, offx + 32, offy + 36 * 3.5)

  b = Label("min")
  b:setFont(CFont:Get("game"))
  b:adjustSize();
  menu:addCentered(b, offx + 44, offy + 36 * 4 + 6)

  b = Label("max")
  b:setFont(CFont:Get("game"))
  b:adjustSize();
  menu:addCentered(b, offx + 218, offy + 36 * 4 + 6)

  local musiccheckbox = {}
  musiccheckbox = menu:addCheckBox("Enabled", offx + 240, offy + 36 * 3.5,
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
  fog = menu:addCheckBox("Fog of War", 16, 40 + 36 * 0,
    function() SetFogOfWar(fog:isMarked()) end)
  fog:setMarked(GetFogOfWar())
  if (IsReplayGame() or IsNetworkGame()) then
    fog:setEnabled(false)
  end

  local ckey = {}
  ckey = menu:addCheckBox("Show command key", 16, 40 + 36 * 1,
    function() UI.ButtonPanel.ShowCommandKey = ckey:isMarked() end)
  ckey:setMarked(UI.ButtonPanel.ShowCommandKey)

  menu:addLabel("Game Speed", 16, 40 + 36 * 2, Fonts["game"], false)

  local gamespeed = {}
  gamespeed = menu:addSlider(15, 75, 198, 18, 32, 40 + 36 * 2.5,
    function() SetGameSpeed(gamespeed:getValue()) end)
  gamespeed:setValue(GetGameSpeed())

  menu:addLabel("slow", 34, 40 + (36 * 3) + 6, Fonts["small"], false)
  local l = Label("fast")
  l:setFont(Fonts["small"])
  l:adjustSize()
  menu:add(l, 230 - l:getWidth(), 40 + (36 * 3) + 6)

  menu:addLabel("Mouse Scroll Speed", 16, 40 + (36 * 4), Fonts["small"], false)

  local mousescrollspeed = {}
  mousescrollspeed = menu:addSlider(1, 10, 198, 18, 32, 40 + 36 * 4.5,
    function() SetMouseScrollSpeed(mousescrollspeed:getValue()) end)
  mousescrollspeed:setValue(GetMouseScrollSpeed())

  menu:addLabel("slow", 34, 40 + (36 * 4) + 6, Fonts["small"], false)
  local l = Label("fast")
  l:setFont(Fonts["small"])
  l:adjustSize()
  menu:add(l, 230 - l:getWidth(), 40 + (36 * 4) + 6)

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
  menu:addLabel("Video Resolution Width", offx + 8, offy + 34, Fonts["game"], false)
  resolution_width_list = menu:addDropDown({"640", "800", "1024", "1280", "1360", "1400", "1600", "1680"}, offx + 8, offy + 55 + 26*0,
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
    		resolution_width = 1400
    	elseif (resolution_width_list:getSelected() == 6) then
    		resolution_width = 1600
    	elseif (resolution_width_list:getSelected() == 7) then
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
  elseif (Video.Width == 1400) then
    	resolution_width_list:setSelected(5)
  elseif (Video.Width == 1600) then
    	resolution_width_list:setSelected(6)
  elseif (Video.Width == 1680) then
    	resolution_width_list:setSelected(7)
  end

  menu:addLabel("Video Resolution Height", offx + 16 + 152 + 24, offy + 34, Fonts["game"], false)
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

--  b = menu:addCheckBox("English", offx + 160, offy + 55 + 26*0,
--    function()
--	wyr.preferences.Language = "English"
--	menu:stop(1)
--    end)
--  b:setMarked(wyr.preferences.Language == "English")

--  b = menu:addCheckBox("Portuguese", offx + 160, offy + 55 + 26*1,
--    function()
--	wyr.preferences.Language = "Portuguese"
--	menu:stop(1)
--    end)
--  b:setMarked(wyr.preferences.Language == "Portuguese")

  b = menu:addCheckBox("Full Screen", offx + 16, offy + 55 + 26*10 + 14,
    function()
      ToggleFullScreen()
      wyr.preferences.VideoFullScreen = Video.FullScreen
      SavePreferences()
      menu:stop(1)
    end)
  b:setMarked(Video.FullScreen)

  b = menu:addCheckBox("Disable Pathlines", offx + 16, offy + 55 + 26*9 + 14,
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

  b = menu:addCheckBox("Disable Messages", offx + 160 + 24, offy + 55 + 26*9 + 14,
    function()
	if (wyr.preferences.ShowMessages == true) then
		wyr.preferences.ShowMessages = false
	else
		wyr.preferences.ShowMessages = true
	end
	Preference.ShowMessages = wyr.preferences.ShowMessages
	menu:stop(1)
    end)
  if (wyr.preferences.ShowMessages == false) then b:setMarked(true) end

  checkTexture = menu:addCheckBox("Set Maximum OpenGL Texture to 256", offx + 160 + 24, offy + 55 + 26*10 + 14,
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

  checkOpenGL = menu:addCheckBox("Use OpenGL / OpenGL ES 1.1 (restart required)", offx + 16, offy + 55 + 26*11 + 14,
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
  menu:addFullButton("Previous (~<Esc~>)", "escape", 128 - (224 / 2), 288 - 40,
    function() menu:stop() end)

  menu:run(false)
end

