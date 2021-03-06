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
--      (c) Copyright 2006-2021 by Jimmy Salmon, Pali Rohár and Andrettin
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

  b = menu:addLabel(_("Sound Options"), 176 * get_scale_factor(), 11 * get_scale_factor())

  b = Label(_("Sound Effects Volume"))
  b:setFont(font:Get("game"))
  b:adjustSize();
  menu:add(b, offx + 16 * get_scale_factor(), offy + (36 * 1) * get_scale_factor())

  -- FIXME: disable if effects turned off
  local soundslider = {}
  -- slider button to decrease slider value
  soundslider = menu:addImageLeftSliderButton("", nil, 21 * get_scale_factor(), offy + (36 * 1.5) * get_scale_factor(), function() soundslider:setValue(soundslider:getValue() - 25.5); SetEffectsVolume(soundslider:getValue()) end)

  -- slider button to increase slider value
  soundslider = menu:addImageRightSliderButton("", nil, 213 * get_scale_factor(), offy + (36 * 1.5) * get_scale_factor(), function() soundslider:setValue(soundslider:getValue() + 25.5); SetEffectsVolume(soundslider:getValue()) end)

  -- slider itself
  soundslider = menu:addImageSlider(0, 255, 172 * get_scale_factor(), 18 * get_scale_factor(), offx + 41 * get_scale_factor(), offy + (36 * 1.5) * get_scale_factor(), function() SetEffectsVolume(soundslider:getValue()) end)

  soundslider:setValue(GetEffectsVolume())

  b = Label("min")
  b:setFont(font:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 32 * get_scale_factor(), offy + (36 * 2 + 6) * get_scale_factor())

  b = Label("max")
  b:setFont(font:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 224 * get_scale_factor(), offy + (36 * 2 + 6) * get_scale_factor())

  local effectscheckbox = {}
  effectscheckbox = menu:addImageCheckBox(_("Enabled"), offx + 240 * get_scale_factor(), offy + (36 * 1.5) * get_scale_factor(),
    function() SetEffectsEnabled(effectscheckbox:isMarked()) end)
  effectscheckbox:setMarked(IsEffectsEnabled())
  effectscheckbox:adjustSize()

  b = Label(_("Music Volume"))
  b:setFont(font:Get("game"))
  b:adjustSize();
  menu:add(b, offx + 16 * get_scale_factor(), offy + (36 * 3) * get_scale_factor())

  -- FIXME: disable if music turned off
  local musicslider = {}
  -- slider button to decrease slider value
  musicslider = menu:addImageLeftSliderButton("", nil, 21 * get_scale_factor(), offy + (36 * 3.5) * get_scale_factor(), function() musicslider:setValue(musicslider:getValue() - 25.5); SetMusicVolume(musicslider:getValue()) end)

  -- slider button to decrease slider value
  musicslider = menu:addImageRightSliderButton("", nil, 213 * get_scale_factor(), offy + (36 * 3.5) * get_scale_factor(), function() musicslider:setValue(musicslider:getValue() + 25.5); SetMusicVolume(musicslider:getValue()) end)

  -- slider itself
  musicslider = menu:addImageSlider(0, 255, 172 * get_scale_factor(), 18 * get_scale_factor(), offx + 41 * get_scale_factor(), offy + (36 * 3.5) * get_scale_factor(), function() SetMusicVolume(musicslider:getValue()) end)

  -- set the value so the game saves it
  musicslider:setValue(GetMusicVolume())

  b = Label("min")
  b:setFont(font:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 32 * get_scale_factor(), offy + (36 * 4 + 6) * get_scale_factor())

  b = Label("max")
  b:setFont(font:Get("small"))
  b:adjustSize();
  menu:addCentered(b, offx + 224 * get_scale_factor(), offy + (36 * 4 + 6) * get_scale_factor())

	local musiccheckbox = {}
	musiccheckbox = menu:addImageCheckBox(_("Enabled"), offx + 240 * get_scale_factor(), offy + (36 * 3.5) * get_scale_factor(),
		function()
			SetMusicEnabled(musiccheckbox:isMarked());
			if (musiccheckbox:isMarked()) then
				play_map_music()
			end
		end)
	musiccheckbox:setMarked(IsMusicEnabled())
	musiccheckbox:adjustSize();

  b = menu:addFullButton("~!OK", "o", centerx, bottom + (-11 - 27) * get_scale_factor(),
    function()
	  save_preferences()
      SavePreferences()
      menu:stop()
    end)
end

function RunGameSoundOptionsMenu()
  local menu = WarGameMenu(panel(5))
  menu:resize(352 * get_scale_factor(), 352 * get_scale_factor())

  AddSoundOptions(menu, 0, 0, (352/2 - 224/2) * get_scale_factor(), 352 * get_scale_factor())

  menu:run(false)
end

function AddPreferences(menu, offx, offy, centerx, bottom)
	local l

	l = menu:addLabel(_("Preferences"), 176 * get_scale_factor(), 11 * get_scale_factor())

	--[[
	local fog = {}
	fog = menu:addImageCheckBox("Fog of War", offx + 16, offy + 26 * 0,
		function() SetFogOfWar(fog:isMarked()) end)
	fog:setMarked(GetFogOfWar())
	if (IsReplayGame() or IsNetworkGame()) then
		fog:setEnabled(false)
	end
	--]]

	local ckey = {}
	ckey = menu:addImageCheckBox(_("Show Hotkeys"), offx + 16 * get_scale_factor(), offy + (26 * 1) * get_scale_factor(),
		function() CUserInterface:get().ButtonPanel.ShowCommandKey = ckey:isMarked() end)
	ckey:setMarked(CUserInterface:get().ButtonPanel.ShowCommandKey)
	ckey:adjustSize()

	local reverse_mouse_wheel_scrolling = {}
	reverse_mouse_wheel_scrolling = menu:addImageCheckBox(_("Reverse Mousewheel Scrolling"), offx + 16 * get_scale_factor(), offy + (26 * 3) * get_scale_factor(),
		function()
			wyr.preferences.MouseScrollSpeedDefault = wyr.preferences.MouseScrollSpeedDefault * -1
			SetMouseScrollSpeedDefault(wyr.preferences.MouseScrollSpeedDefault)
			SavePreferences()
		end
	)
	reverse_mouse_wheel_scrolling:setMarked(wyr.preferences.MouseScrollSpeedDefault < 0)
	reverse_mouse_wheel_scrolling:adjustSize()

	l = Label(_("Game Speed"))
	l:setFont(font:Get("game"))
	l:adjustSize()
	menu:add(l, offx + 16 * get_scale_factor(), offy + (36 * 3) * get_scale_factor())

	local gamespeed = {}
	-- slider button to decrease slider value
	gamespeed = menu:addImageLeftSliderButton("", nil, 21 * get_scale_factor(), offy + (36 * 3.5) * get_scale_factor(), function() gamespeed:setValue(gamespeed:getValue() - 5); SetGameSpeed(gamespeed:getValue()) end)

	-- slider button to decrease slider value
	gamespeed = menu:addImageRightSliderButton("", nil, 213 * get_scale_factor(), offy + (36 * 3.5) * get_scale_factor(), function() gamespeed:setValue(gamespeed:getValue() + 5); SetGameSpeed(gamespeed:getValue()) end)

	-- slider itself
	gamespeed = menu:addImageSlider(15, 75, 172 * get_scale_factor(), 18 * get_scale_factor(), 41 * get_scale_factor(), offy + (36 * 3.5) * get_scale_factor(), function() SetGameSpeed(gamespeed:getValue()) end)

	-- set the value so the game saves it
	gamespeed:setValue(GetGameSpeed())

	l = Label("slow")
	l:setFont(font:Get("small"))
	l:adjustSize()
	menu:addCentered(l, offx + 32 * get_scale_factor(), offy + (36 * 4 + 6) * get_scale_factor())

	l = Label("fast")
	l:setFont(font:Get("small"))
	l:adjustSize()
	menu:addCentered(l, offx + 224 * get_scale_factor(), offy + (36 * 4 + 6) * get_scale_factor())

	menu:addLabel(_("Mouse Scroll Speed"), offx + 16 * get_scale_factor(), offy + (36 * 5) * get_scale_factor(), font:Get("game"), false)

	local mousescrollspeed = {}
	-- slider button to decrease slider value
	mousescrollspeed = menu:addImageLeftSliderButton("", nil, 21 * get_scale_factor(), offy + (36 * 5.5) * get_scale_factor(), function() mousescrollspeed:setValue(mousescrollspeed:getValue() - .5); SetMouseScrollSpeed(mousescrollspeed:getValue()) end)

	-- slider button to decrease slider value
	mousescrollspeed = menu:addImageRightSliderButton("", nil, 213 * get_scale_factor(), offy + (36 * 5.5) * get_scale_factor(), function() mousescrollspeed:setValue(mousescrollspeed:getValue() + .5); SetMouseScrollSpeed(mousescrollspeed:getValue()) end)

	-- slider itself
	mousescrollspeed = menu:addImageSlider(1, 10, 172 * get_scale_factor(), 18 * get_scale_factor(), 41 * get_scale_factor(), offy + (36 * 5.5) * get_scale_factor(), function() SetMouseScrollSpeed(mousescrollspeed:getValue()) end)

	-- set the value so the game saves it
	mousescrollspeed:setValue(GetMouseScrollSpeed())

	l = Label("slow")
	l:setFont(font:Get("small"))
	l:adjustSize()
	menu:addCentered(l, offx + 32 * get_scale_factor(), offy + (36 * 6 + 6) * get_scale_factor())

	l = Label("fast")
	l:setFont(font:Get("small"))
	l:adjustSize()
	menu:addCentered(l, offx + 224 * get_scale_factor(), offy + (36 * 6 + 6) * get_scale_factor())

	menu:addLabel(_("Key Scroll Speed"), offx + 16 * get_scale_factor(), offy + (36 * 7) * get_scale_factor(), font:Get("game"), false)

	local keyscrollspeed = {}
	-- slider button to decrease slider value
	keyscrollspeed = menu:addImageLeftSliderButton("", nil, offx + 21 * get_scale_factor(), offy + (36 * 7.5) * get_scale_factor(), function() keyscrollspeed:setValue(keyscrollspeed:getValue() - .5); SetKeyScrollSpeed(keyscrollspeed:getValue()) end)

	-- slider button to increase slider value
	keyscrollspeed = menu:addImageRightSliderButton("", nil, offx + 213 * get_scale_factor(), offy + (36 * 7.5) * get_scale_factor(), function() keyscrollspeed:setValue(keyscrollspeed:getValue() + .5); SetKeyScrollSpeed(keyscrollspeed:getValue()) end)

	-- slider itself
	keyscrollspeed = menu:addImageSlider(1, 10, 172 * get_scale_factor(), 18 * get_scale_factor(), offx + 41 * get_scale_factor(), offy + (36 * 7.5) * get_scale_factor(), function() SetKeyScrollSpeed(keyscrollspeed:getValue()) end)

	-- set the value so the game saves it
	keyscrollspeed:setValue(GetKeyScrollSpeed())

	l = Label("slow")
	l:setFont(font:Get("small"))
	l:adjustSize();
	menu:addCentered(l, offx + 32 * get_scale_factor(), offy + (36 * 8 + 6) * get_scale_factor())

	l = Label("fast")
	l:setFont(font:Get("small"))
	l:adjustSize()
	menu:addCentered(l, offx + 224 * get_scale_factor(), offy + (36 * 8 + 6) * get_scale_factor())

	menu:addFullButton("~!OK", "o", centerx, bottom + (-11 - 27) * get_scale_factor(),
		function()
			wyr.preferences.FogOfWar = GetFogOfWar()
			wyr.preferences.ShowCommandKey = CUserInterface:get().ButtonPanel.ShowCommandKey
			wyr.preferences.GameSpeed = GetGameSpeed()
			wyr.preferences.MouseScrollSpeed = GetMouseScrollSpeed()
			wyr.preferences.KeyScrollSpeed = GetKeyScrollSpeed()
			SavePreferences()
			menu:stop()
		end)
end

function RunPreferencesMenu()
  local menu = WarGameMenu(panel(5))
  menu:resize(352 * get_scale_factor(), 352 * get_scale_factor())

  AddPreferences(menu, 0, 4 * get_scale_factor(), (352/2 - 224/2) * get_scale_factor(), 352 * get_scale_factor())

  menu:run(false)
end

function SetVideoSize(width, height)
	CUserInterface:get().MapArea.EndX = width - 1
	CUserInterface:get().MapArea.EndY = height - (176 * get_scale_factor()) - 1
	if (Video:ResizeScreen(width, height) == false) then
		return
	end
	Load("scripts/ui.lua")
	wyr.preferences.VideoWidth = Video.Width
	wyr.preferences.VideoHeight = Video.Height
	SavePreferences()
end

function RunGameOptionsMenu(previous_menu)
	local menu = WarGameMenu(panel(1))

	menu:addLabel(_("Game Options"), 128 * get_scale_factor(), 11 * get_scale_factor())
	menu:addFullButton(_("Sound (~<F7~>)"), "f7", 16 * get_scale_factor(), (40 + 36*0) * get_scale_factor(),
		function() RunGameSoundOptionsMenu() end)
	menu:addFullButton(_("Preferences (~<F8~>)"), "f8", 16 * get_scale_factor(), (40 + 36*1) * get_scale_factor(),
		function() RunPreferencesMenu() end)
	menu:addFullButton(_("Diplomacy (~<F9~>)"), "f9", 16 * get_scale_factor(), (40 + 36*2) * get_scale_factor(),
		function() RunDiplomacyMenu() end)
	menu:addFullButton(_("Previous Menu (~<Esc~>)"), "escape", (128 - (224 / 2)) * get_scale_factor(), (288 - 40) * get_scale_factor(),
		function() menu:stop() end)

	menu:run(false)
end
